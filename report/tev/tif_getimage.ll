Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_getimage?download=true
inline.NumInlined: 25
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 32
begin_hunk_0_@putcontig8bitYCbCr44tile:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw) #11
  %i.qj = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.qk = getelementptr inbounds nuw i8, ptr %.3252266, i64 13
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !38
  %i.qm = zext i8 %i.ql to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.qj, i32 noundef %i.qm, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw) #11
  %i.qn = load i32, ptr %i.bu, align 4, !tbaa !46
  %i.qo = load i32, ptr %i.bv, align 4, !tbaa !46
  %i.qp = shl i32 %i.qo, 8
  %i.qq = load i32, ptr %i.bw, align 4, !tbaa !46
  %i.qr = shl i32 %i.qq, 16
  %i.qs = or i32 %i.qn, %i.qp
  %i.qt = or i32 %i.qs, %i.qr
  %i.qu = or i32 %i.qt, -16777216
  %i.qv = getelementptr inbounds nuw i8, ptr %.3237269, i64 4
  store i32 %i.qu, ptr %i.qv, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #11
  %i.qw = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.qx = getelementptr inbounds nuw i8, ptr %.3252266, i64 9
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !38
  %i.qz = zext i8 %i.qy to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.qw, i32 noundef %i.qz, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bz) #11
  %i.ra = load i32, ptr %i.bx, align 4, !tbaa !46
  %i.rb = load i32, ptr %i.by, align 4, !tbaa !46
  %i.rc = shl i32 %i.rb, 8
  %i.rd = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.re = shl i32 %i.rd, 16
  %i.rf = or i32 %i.ra, %i.rc
  %i.rg = or i32 %i.rf, %i.re
  %i.rh = or i32 %i.rg, -16777216
  %i.ri = getelementptr inbounds nuw i8, ptr %.3242268, i64 4
  store i32 %i.rh, ptr %i.ri, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc) #11
  %i.rj = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.rk = getelementptr inbounds nuw i8, ptr %.3252266, i64 5
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !38
  %i.rm = zext i8 %i.rl to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.rj, i32 noundef %i.rm, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc) #11
  %i.rn = load i32, ptr %i.ca, align 4, !tbaa !46
  %i.ro = load i32, ptr %i.cb, align 4, !tbaa !46
  %i.rp = shl i32 %i.ro, 8
  %i.rq = load i32, ptr %i.cc, align 4, !tbaa !46
  %i.rr = shl i32 %i.rq, 16
  %i.rs = or i32 %i.rn, %i.rp
  %i.rt = or i32 %i.rs, %i.rr
  %i.ru = or i32 %i.rt, -16777216
  %i.rv = getelementptr inbounds nuw i8, ptr %.3247267, i64 4
  store i32 %i.ru, ptr %i.rv, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #11
  %i.rw = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.rx = getelementptr inbounds nuw i8, ptr %.3252266, i64 1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !38
  %i.rz = zext i8 %i.ry to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.rw, i32 noundef %i.rz, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf) #11
  %i.sa = load i32, ptr %i.cd, align 4, !tbaa !46
  %i.sb = load i32, ptr %i.ce, align 4, !tbaa !46
  %i.sc = shl i32 %i.sb, 8
  %i.sd = load i32, ptr %i.cf, align 4, !tbaa !46
  %i.se = shl i32 %i.sd, 16
  %i.sf = or i32 %i.sa, %i.sc
  %i.sg = or i32 %i.sf, %i.se
  %i.sh = or i32 %i.sg, -16777216
  %i.si = getelementptr inbounds nuw i8, ptr %.3271, i64 4
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.e
  switch i32 %.1254277, label %bb.v [
    i32 3, label %bb.w
    i32 2, label %bb.x
    i32 1, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #11
  %i.sj = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.sk = getelementptr inbounds nuw i8, ptr %.3252266, i64 12
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !38
  %i.sm = zext i8 %i.sl to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.sj, i32 noundef %i.sm, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci) #11
  %i.sn = load i32, ptr %i.cg, align 4, !tbaa !46
  %i.so = load i32, ptr %i.ch, align 4, !tbaa !46
  %i.sp = shl i32 %i.so, 8
  %i.sq = load i32, ptr %i.ci, align 4, !tbaa !46
  %i.sr = shl i32 %i.sq, 16
  %i.ss = or i32 %i.sn, %i.sp
  %i.st = or i32 %i.ss, %i.sr
  %i.su = or i32 %i.st, -16777216
  store i32 %i.su, ptr %.3237269, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #11
  %i.sv = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.sw = getelementptr inbounds nuw i8, ptr %.3252266, i64 8
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !38
  %i.sy = zext i8 %i.sx to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.sv, i32 noundef %i.sy, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cl) #11
  %i.sz = load i32, ptr %i.cj, align 4, !tbaa !46
  %i.ta = load i32, ptr %i.ck, align 4, !tbaa !46
  %i.tb = shl i32 %i.ta, 8
  %i.tc = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.td = shl i32 %i.tc, 16
  %i.te = or i32 %i.sz, %i.tb
  %i.tf = or i32 %i.te, %i.td
  %i.tg = or i32 %i.tf, -16777216
  store i32 %i.tg, ptr %.3242268, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co) #11
  %i.th = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.ti = getelementptr inbounds nuw i8, ptr %.3252266, i64 4
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !38
  %i.tk = zext i8 %i.tj to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.th, i32 noundef %i.tk, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co) #11
  %i.tl = load i32, ptr %i.cm, align 4, !tbaa !46
  %i.tm = load i32, ptr %i.cn, align 4, !tbaa !46
  %i.tn = shl i32 %i.tm, 8
  %i.to = load i32, ptr %i.co, align 4, !tbaa !46
  %i.tp = shl i32 %i.to, 16
  %i.tq = or i32 %i.tl, %i.tn
  %i.tr = or i32 %i.tq, %i.tp
  %i.ts = or i32 %i.tr, -16777216
  store i32 %i.ts, ptr %.3247267, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr) #11
  %i.tt = load ptr, ptr %i.dh, align 8, !tbaa !24
  %i.tu = load i8, ptr %.3252266, align 1, !tbaa !38
  %i.tv = zext i8 %i.tu to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.tt, i32 noundef %i.tv, i32 noundef %i.mf, i32 noundef %i.mi, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr) #11
  %i.tw = load i32, ptr %i.cp, align 4, !tbaa !46
  %i.tx = load i32, ptr %i.cq, align 4, !tbaa !46
  %i.ty = shl i32 %i.tx, 8
  %i.tz = load i32, ptr %i.cr, align 4, !tbaa !46
  %i.ua = shl i32 %i.tz, 16
  %i.ub = or i32 %i.tw, %i.ty
  %i.uc = or i32 %i.ub, %i.ua
  %i.ud = or i32 %i.uc, -16777216
  store i32 %i.ud, ptr %.3271, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp) #11
  %i.ue = icmp ult i32 %.1232270, 4
  br i1 %i.ue, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y
  %i.uf = zext nneg i32 %.1232270 to i64          ; 4 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.3271, i64 %i.uf
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.3247267, i64 %i.uf
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.3242268, i64 %i.uf
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %.3237269, i64 %i.uf
  br label %._crit_edge.a

bb.z:                                             ; preds = %bb.y
  %i.uk = getelementptr inbounds nuw i8, ptr %.3271, i64 16 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.3247267, i64 16 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.3242268, i64 16 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.3237269, i64 16 ; 2 uses
  %i.uo = add i32 %.1232270, -4                   ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.3252266, i64 18
  %.not255 = icmp eq i32 %i.uo, 0
  br i1 %.not255, label %._crit_edge.a, label %bb.e

._crit_edge.a:                                    ; preds = %bb.z, %.thread
  %.4321 = phi ptr [ %i.ug, %.thread ], [ %i.uk, %bb.z ]
  %.4238320 = phi ptr [ %i.uj, %.thread ], [ %i.un, %bb.z ]
  %.4243319 = phi ptr [ %i.ui, %.thread ], [ %i.um, %bb.z ]
  %.4248318 = phi ptr [ %i.uh, %.thread ], [ %i.ul, %bb.z ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.3252266, i64 18
  %i.ur = add i32 %.1254277, -4
  %i.us = getelementptr inbounds [4 x i8], ptr %.4321, i64 %i.di
  %i.ut = getelementptr inbounds [4 x i8], ptr %.4248318, i64 %i.di
  %i.uu = getelementptr inbounds [4 x i8], ptr %.4243319, i64 %i.di
  %i.uv = getelementptr inbounds [4 x i8], ptr %.4238320, i64 %i.di
  %i.uw = getelementptr inbounds i8, ptr %i.uq, i64 %i.dj
  %or.cond301 = icmp ult i32 %.1254277, 5
  br i1 %or.cond301, label %.loopexit, label %.preheader258

.loopexit:                                        ; preds = %._crit_edge.a, %bb.d, %.preheader258.lr.ph, %.preheader259, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @putcontig8bitYCbCr42tile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca i32, align 4                     ; 4 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %i.aj = alloca i32, align 4                     ; 4 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i32, align 4                     ; 4 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 4 uses
  %i.as = alloca i32, align 4                     ; 4 uses
  %i.at = alloca i32, align 4                     ; 4 uses
  %i.au = alloca i32, align 4                     ; 4 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %i.aw = zext i32 %4 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.ay = sext i32 %7 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = shl nsw i32 %7, 1
  %i.bb = add i32 %i.ba, %4                       ; 2 uses
  %i.bc = sdiv i32 %6, 4
  %i.bd = mul nsw i32 %i.bc, 10                   ; 2 uses
  %i.be = and i32 %4, 3
  %i.bf = and i32 %5, 1
  %i.bg = or i32 %i.bf, %i.be
  %or.cond = icmp eq i32 %i.bg, 0
  br i1 %or.cond, label %.preheader, label %.preheader150

.preheader150:                                    ; preds = %bb.a
  %.not161 = icmp eq i32 %5, 0
  br i1 %.not161, label %.loopexit, label %.preheader149.lr.ph

.preheader149.lr.ph:                              ; preds = %.preheader150
  %.not146154 = icmp eq i32 %4, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.bi = sext i32 %i.bb to i64                   ; 2 uses
  %i.bj = sext i32 %i.bd to i64
  br i1 %.not146154, label %.loopexit, label %.preheader149

.preheader:                                       ; preds = %bb.a
  %i.bk = icmp ugt i32 %5, 1
  br i1 %i.bk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bl = lshr exact i32 %4, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.bn = sext i32 %i.bb to i64                   ; 2 uses
  %i.bo = sext i32 %i.bd to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0170 = phi ptr [ %1, %.lr.ph ], [ %i.fw, %bb.d ]
  %.0135169 = phi ptr [ %i.az, %.lr.ph ], [ %i.fx, %bb.d ]
  %.0140168 = phi ptr [ %8, %.lr.ph ], [ %i.fy, %bb.d ]
  %.0144167 = phi i32 [ %5, %.lr.ph ], [ %i.fz, %bb.d ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1141 = phi ptr [ %.0140168, %bb.b ], [ %i.fu, %bb.c ] ; 11 uses
  %.1136 = phi ptr [ %.0135169, %bb.b ], [ %i.ft, %bb.c ] ; 5 uses
  %.0132 = phi i32 [ %i.bl, %bb.b ], [ %i.fv, %bb.c ]
  %.1 = phi ptr [ %.0170, %bb.b ], [ %i.fs, %bb.c ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1141, i64 8
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.br = zext i8 %i.bq to i32                    ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1141, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !38
  %i.bu = zext i8 %i.bt to i32                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.bw = load i8, ptr %.1141, align 1, !tbaa !38
  %i.bx = zext i8 %i.bw to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.br, i32 noundef %i.bu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.by = load i32, ptr %i.a, align 4, !tbaa !46
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !46
  %i.ca = shl i32 %i.bz, 8
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !46
  %i.cc = shl i32 %i.cb, 16
  %i.cd = or i32 %i.by, %i.ca
  %i.ce = or i32 %i.cd, %i.cc
  %i.cf = or i32 %i.ce, -16777216
  store i32 %i.cf, ptr %.1, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.cg = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %.1141, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !38
  %i.cj = zext i8 %i.ci to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.cg, i32 noundef %i.cj, i32 noundef %i.br, i32 noundef %i.bu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !46
  %i.cl = load i32, ptr %i.e, align 4, !tbaa !46
  %i.cm = shl i32 %i.cl, 8
  %i.cn = load i32, ptr %i.f, align 4, !tbaa !46
  %i.co = shl i32 %i.cn, 16
  %i.cp = or i32 %i.ck, %i.cm
  %i.cq = or i32 %i.cp, %i.co
  %i.cr = or i32 %i.cq, -16777216
  %i.cs = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.ct = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %.1141, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !38
  %i.cw = zext i8 %i.cv to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.ct, i32 noundef %i.cw, i32 noundef %i.br, i32 noundef %i.bu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #11
  %i.cx = load i32, ptr %i.g, align 4, !tbaa !46
  %i.cy = load i32, ptr %i.h, align 4, !tbaa !46
  %i.cz = shl i32 %i.cy, 8
  %i.da = load i32, ptr %i.i, align 4, !tbaa !46
  %i.db = shl i32 %i.da, 16
  %i.dc = or i32 %i.cx, %i.cz
  %i.dd = or i32 %i.dc, %i.db
  %i.de = or i32 %i.dd, -16777216
  %i.df = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 %i.de, ptr %i.df, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %i.dg = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %.1141, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38
  %i.dj = zext i8 %i.di to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.dg, i32 noundef %i.dj, i32 noundef %i.br, i32 noundef %i.bu, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #11
  %i.dk = load i32, ptr %i.j, align 4, !tbaa !46
  %i.dl = load i32, ptr %i.k, align 4, !tbaa !46
  %i.dm = shl i32 %i.dl, 8
  %i.dn = load i32, ptr %i.l, align 4, !tbaa !46
  %i.do = shl i32 %i.dn, 16
  %i.dp = or i32 %i.dk, %i.dm
  %i.dq = or i32 %i.dp, %i.do
  %i.dr = or i32 %i.dq, -16777216
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  %i.dt = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %.1141, i64 4
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !38
  %i.dw = zext i8 %i.dv to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.dt, i32 noundef %i.dw, i32 noundef %i.br, i32 noundef %i.bu, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #11
  %i.dx = load i32, ptr %i.m, align 4, !tbaa !46
  %i.dy = load i32, ptr %i.n, align 4, !tbaa !46
end_hunk_0
begin_hunk_1_@putcontig8bitYCbCr42tile:bb.a
  %i.gk = zext i8 %i.gj to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.gh, i32 noundef %i.gk, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #11
  %i.gl = load i32, ptr %i.y, align 4, !tbaa !46
  %i.gm = load i32, ptr %i.z, align 4, !tbaa !46
  %i.gn = shl i32 %i.gm, 8
  %i.go = load i32, ptr %i.aa, align 4, !tbaa !46
  %i.gp = shl i32 %i.go, 16
  %i.gq = or i32 %i.gl, %i.gn
  %i.gr = or i32 %i.gq, %i.gp
  %i.gs = or i32 %i.gr, -16777216
  %i.gt = getelementptr inbounds nuw i8, ptr %.3138156, i64 12
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #11
  %i.gu = load ptr, ptr %i.bh, align 8, !tbaa !24
  %i.gv = getelementptr inbounds nuw i8, ptr %.3143155, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !38
  %i.gx = zext i8 %i.gw to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.gu, i32 noundef %i.gx, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #11
  %i.gy = load i32, ptr %i.ab, align 4, !tbaa !46
  %i.gz = load i32, ptr %i.ac, align 4, !tbaa !46
  %i.ha = shl i32 %i.gz, 8
  %i.hb = load i32, ptr %i.ad, align 4, !tbaa !46
  %i.hc = shl i32 %i.hb, 16
  %i.hd = or i32 %i.gy, %i.ha
  %i.he = or i32 %i.hd, %i.hc
  %i.hf = or i32 %i.he, -16777216
  %i.hg = getelementptr inbounds nuw i8, ptr %.3158, i64 12
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  br i1 %cond3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #11
  %i.hh = load ptr, ptr %i.bh, align 8, !tbaa !24
  %i.hi = getelementptr inbounds nuw i8, ptr %.3143155, i64 6
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !38
  %i.hk = zext i8 %i.hj to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.hh, i32 noundef %i.hk, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag) #11
  %i.hl = load i32, ptr %i.ae, align 4, !tbaa !46
  %i.hm = load i32, ptr %i.af, align 4, !tbaa !46
  %i.hn = shl i32 %i.hm, 8
  %i.ho = load i32, ptr %i.ag, align 4, !tbaa !46
  %i.hp = shl i32 %i.ho, 16
  %i.hq = or i32 %i.hl, %i.hn
  %i.hr = or i32 %i.hq, %i.hp
  %i.hs = or i32 %i.hr, -16777216
  %i.ht = getelementptr inbounds nuw i8, ptr %.3138156, i64 8
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #11
  %i.hu = load ptr, ptr %i.bh, align 8, !tbaa !24
  %i.hv = getelementptr inbounds nuw i8, ptr %.3143155, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !38
  %i.hx = zext i8 %i.hw to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.hu, i32 noundef %i.hx, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #11
  %i.hy = load i32, ptr %i.ah, align 4, !tbaa !46
  %i.hz = load i32, ptr %i.ai, align 4, !tbaa !46
  %i.ia = shl i32 %i.hz, 8
  %i.ib = load i32, ptr %i.aj, align 4, !tbaa !46
  %i.ic = shl i32 %i.ib, 16
  %i.id = or i32 %i.hy, %i.ia
  %i.ie = or i32 %i.id, %i.ic
  %i.if = or i32 %i.ie, -16777216
  %i.ig = getelementptr inbounds nuw i8, ptr %.3158, i64 8
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  br i1 %cond3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #11
  %i.ih = load ptr, ptr %i.bh, align 8, !tbaa !24
  %i.ii = getelementptr inbounds nuw i8, ptr %.3143155, i64 5
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !38
  %i.ik = zext i8 %i.ij to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.ih, i32 noundef %i.ik, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am) #11
  %i.il = load i32, ptr %i.ak, align 4, !tbaa !46
  %i.im = load i32, ptr %i.al, align 4, !tbaa !46
  %i.in = shl i32 %i.im, 8
  %i.io = load i32, ptr %i.am, align 4, !tbaa !46
  %i.ip = shl i32 %i.io, 16
  %i.iq = or i32 %i.il, %i.in
  %i.ir = or i32 %i.iq, %i.ip
  %i.is = or i32 %i.ir, -16777216
  %i.it = getelementptr inbounds nuw i8, ptr %.3138156, i64 4
  store i32 %i.is, ptr %i.it, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #11
  %i.iu = load ptr, ptr %i.bh, align 8, !tbaa !24
  %i.iv = getelementptr inbounds nuw i8, ptr %.3143155, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !38
  %i.ix = zext i8 %i.iw to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.iu, i32 noundef %i.ix, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap) #11
  %i.iy = load i32, ptr %i.an, align 4, !tbaa !46
  %i.iz = load i32, ptr %i.ao, align 4, !tbaa !46
  %i.ja = shl i32 %i.iz, 8
  %i.jb = load i32, ptr %i.ap, align 4, !tbaa !46
  %i.jc = shl i32 %i.jb, 16
  %i.jd = or i32 %i.iy, %i.ja
  %i.je = or i32 %i.jd, %i.jc
  %i.jf = or i32 %i.je, -16777216
  %i.jg = getelementptr inbounds nuw i8, ptr %.3158, i64 4
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  br i1 %cond3, label %.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #11
  %i.jh = load ptr, ptr %i.bh, align 8, !tbaa !24
  %i.ji = getelementptr inbounds nuw i8, ptr %.3143155, i64 4
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !38
  %i.jk = zext i8 %i.jj to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.jh, i32 noundef %i.jk, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as) #11
  %i.jl = load i32, ptr %i.aq, align 4, !tbaa !46
  %i.jm = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.jn = shl i32 %i.jm, 8
  %i.jo = load i32, ptr %i.as, align 4, !tbaa !46
  %i.jp = shl i32 %i.jo, 16
  %i.jq = or i32 %i.jl, %i.jn
  %i.jr = or i32 %i.jq, %i.jp
  %i.js = or i32 %i.jr, -16777216
  store i32 %i.js, ptr %.3138156, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #11
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #11
  %i.jt = load ptr, ptr %i.bh, align 8, !tbaa !24
  %i.ju = load i8, ptr %.3143155, align 1, !tbaa !38
  %i.jv = zext i8 %i.ju to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.jt, i32 noundef %i.jv, i32 noundef %i.gd, i32 noundef %i.gg, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av) #11
  %i.jw = load i32, ptr %i.at, align 4, !tbaa !46
  %i.jx = load i32, ptr %i.au, align 4, !tbaa !46
  %i.jy = shl i32 %i.jx, 8
  %i.jz = load i32, ptr %i.av, align 4, !tbaa !46
  %i.ka = shl i32 %i.jz, 16
  %i.kb = or i32 %i.jw, %i.jy
  %i.kc = or i32 %i.kb, %i.ka
  %i.kd = or i32 %i.kc, -16777216
  store i32 %i.kd, ptr %.3158, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #11
  %i.ke = icmp ult i32 %.1133157, 4               ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.3158, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %.3138156, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %.3143155, i64 10 ; 2 uses
  %i.ki = zext nneg i32 %.1133157 to i64          ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.3138156, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.3158, i64 %i.ki
  %.3138.be = select i1 %i.ke, ptr %i.kj, ptr %i.kg ; 2 uses
  %.1133.be187 = add i32 %.1133157, -4
  %.3.be = select i1 %i.ke, ptr %i.kk, ptr %i.kf  ; 2 uses
  %.not146 = icmp ult i32 %.1133157, 5
  br i1 %.not146, label %._crit_edge.a, label %bb.e

._crit_edge.a:                                    ; preds = %.backedge
  %i.kl = add i32 %.1145162, -2
  %i.km = getelementptr inbounds [4 x i8], ptr %.3.be, i64 %i.bi
  %i.kn = getelementptr inbounds [4 x i8], ptr %.3138.be, i64 %i.bi
  %i.ko = getelementptr inbounds i8, ptr %i.kh, i64 %i.bj
  %or.cond178 = icmp ult i32 %.1145162, 3
  br i1 %or.cond178, label %.loopexit, label %.preheader149

.loopexit:                                        ; preds = %._crit_edge.a, %bb.d, %.preheader149.lr.ph, %.preheader150, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @putcontig8bitYCbCr41tile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = sdiv i32 %6, 4
  %i.w = mul nsw i32 %i.v, 6
  %i.x = lshr i32 %4, 2                           ; 2 uses
  %.not63 = icmp eq i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.z = and i32 %4, 3                            ; 3 uses
  %.not61 = icmp eq i32 %i.z, 0
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = sext i32 %7 to i64
  %i.ac = sext i32 %i.w to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.058 = phi i32 [ %5, %bb.a ], [ %i.ef, %bb.g ]
  %.055 = phi ptr [ %8, %bb.a ], [ %i.ee, %bb.g ] ; 2 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.ed, %bb.g ]   ; 2 uses
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.166 = phi ptr [ %i.ch, %.lr.ph ], [ %.0, %bb.b ] ; 5 uses
  %.05465 = phi i32 [ %i.cj, %.lr.ph ], [ %i.x, %bb.b ]
  %.15664 = phi ptr [ %i.ci, %.lr.ph ], [ %.055, %bb.b ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.15664, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %i.af = zext i8 %i.ae to i32                    ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.15664, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !38
  %i.ai = zext i8 %i.ah to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.ak = load i8, ptr %.15664, align 1, !tbaa !38
  %i.al = zext i8 %i.ak to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.aj, i32 noundef %i.al, i32 noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.am = load i32, ptr %i.a, align 4, !tbaa !46
  %i.an = load i32, ptr %i.b, align 4, !tbaa !46
  %i.ao = shl i32 %i.an, 8
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !46
  %i.aq = shl i32 %i.ap, 16
  %i.ar = or i32 %i.am, %i.ao
  %i.as = or i32 %i.ar, %i.aq
  %i.at = or i32 %i.as, -16777216
  store i32 %i.at, ptr %.166, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.15664, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !38
  %i.ax = zext i8 %i.aw to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.au, i32 noundef %i.ax, i32 noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %i.ay = load i32, ptr %i.d, align 4, !tbaa !46
  %i.az = load i32, ptr %i.e, align 4, !tbaa !46
  %i.ba = shl i32 %i.az, 8
  %i.bb = load i32, ptr %i.f, align 4, !tbaa !46
  %i.bc = shl i32 %i.bb, 16
  %i.bd = or i32 %i.ay, %i.ba
  %i.be = or i32 %i.bd, %i.bc
  %i.bf = or i32 %i.be, -16777216
  %i.bg = getelementptr inbounds nuw i8, ptr %.166, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.15664, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !38
  %i.bk = zext i8 %i.bj to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.bh, i32 noundef %i.bk, i32 noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #11
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !46
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !46
  %i.bn = shl i32 %i.bm, 8
  %i.bo = load i32, ptr %i.i, align 4, !tbaa !46
  %i.bp = shl i32 %i.bo, 16
  %i.bq = or i32 %i.bl, %i.bn
  %i.br = or i32 %i.bq, %i.bp
  %i.bs = or i32 %i.br, -16777216
  %i.bt = getelementptr inbounds nuw i8, ptr %.166, i64 8
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %.15664, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !38
  %i.bx = zext i8 %i.bw to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.bu, i32 noundef %i.bx, i32 noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #11
  %i.by = load i32, ptr %i.j, align 4, !tbaa !46
  %i.bz = load i32, ptr %i.k, align 4, !tbaa !46
  %i.ca = shl i32 %i.bz, 8
  %i.cb = load i32, ptr %i.l, align 4, !tbaa !46
  %i.cc = shl i32 %i.cb, 16
  %i.cd = or i32 %i.by, %i.ca
  %i.ce = or i32 %i.cd, %i.cc
  %i.cf = or i32 %i.ce, -16777216
  %i.cg = getelementptr inbounds nuw i8, ptr %.166, i64 12
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  %i.ch = getelementptr inbounds nuw i8, ptr %.166, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.15664, i64 6 ; 2 uses
  %i.cj = add nsw i32 %.05465, -1                 ; 2 uses
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.156.lcssa = phi ptr [ %.055, %bb.b ], [ %i.ci, %.lr.ph ] ; 7 uses
  %.1.lcssa = phi ptr [ %.0, %bb.b ], [ %i.ch, %.lr.ph ] ; 5 uses
  br i1 %.not61, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %.156.lcssa, i64 4
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !38
  %i.cm = zext i8 %i.cl to i32                    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.156.lcssa, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !38
  %i.cp = zext i8 %i.co to i32                    ; 3 uses
  switch i32 %i.z, label %default.unreachable72 [
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  %i.cq = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %.156.lcssa, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !38
  %i.ct = zext i8 %i.cs to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.cq, i32 noundef %i.ct, i32 noundef %i.cm, i32 noundef %i.cp, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #11
  %i.cu = load i32, ptr %i.m, align 4, !tbaa !46
  %i.cv = load i32, ptr %i.n, align 4, !tbaa !46
  %i.cw = shl i32 %i.cv, 8
  %i.cx = load i32, ptr %i.o, align 4, !tbaa !46
  %i.cy = shl i32 %i.cx, 16
  %i.cz = or i32 %i.cu, %i.cw
  %i.da = or i32 %i.cz, %i.cy
  %i.db = or i32 %i.da, -16777216
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #11
  %i.dd = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %.156.lcssa, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !38
  %i.dg = zext i8 %i.df to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.dd, i32 noundef %i.dg, i32 noundef %i.cm, i32 noundef %i.cp, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #11
  %i.dh = load i32, ptr %i.p, align 4, !tbaa !46
  %i.di = load i32, ptr %i.q, align 4, !tbaa !46
  %i.dj = shl i32 %i.di, 8
  %i.dk = load i32, ptr %i.r, align 4, !tbaa !46
  %i.dl = shl i32 %i.dk, 16
  %i.dm = or i32 %i.dh, %i.dj
end_hunk_1
