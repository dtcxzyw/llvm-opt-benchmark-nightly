inline.NumInlined: 28
inline.NumDeleted: 4
begin_hunk_0_@SetupLargerBlocks:bb.a
  %i.atj = add nsw i32 %i.ati, %i.atg
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.ary, i64 %indvars.iv.next601.1
  store i32 %i.atj, ptr %i.atk, align 4, !tbaa !4
  %indvars.iv.next601.2 = add nuw nsw i64 %indvars.iv600, 3 ; 3 uses
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %indvars.iv.next601.2
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !4
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.amo, i64 %indvars.iv.next601.2
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !4
  %i.atp = add nsw i32 %i.ato, %i.atm
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.ary, i64 %indvars.iv.next601.2
  store i32 %i.atp, ptr %i.atq, align 4, !tbaa !4
  %indvars.iv.next601.3 = add nuw nsw i64 %indvars.iv600, 4 ; 2 uses
  %exitcond604.not.3 = icmp eq i64 %indvars.iv.next601.3, %wide.trip.count603
  br i1 %exitcond604.not.3, label %._crit_edge483, label %.lr.ph482, !llvm.loop !125

._crit_edge483:                                   ; preds = %.lr.ph482.prol.loopexit, %.lr.ph482, %middle.block1062, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SetupFastFullPelSearch(i16 noundef signext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i16], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load ptr, ptr @BlockSAD, align 8, !tbaa !15
  %i.c = sext i32 %1 to i64                       ; 8 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = sext i16 %0 to i64                       ; 11 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 6 uses
  %i.k = load ptr, ptr @max_search_range, align 8, !tbaa !36
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.f
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 12 uses
  %i.p = shl nsw i32 %i.o, 1
  %i.q = or disjoint i32 %i.p, 1                  ; 2 uses
  %i.r = mul nsw i32 %i.q, %i.q                   ; 3 uses
  %i.s = load ptr, ptr @img, align 8, !tbaa !8    ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 14224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !127
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [536 x i8], ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 432
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !128
  %i.ab = load ptr, ptr @active_pps, align 8, !tbaa !8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !131
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !133
  switch i32 %i.af, label %bb.c [
    i32 0, label %bb.e
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 196
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !134
  %.not516 = icmp eq i32 %i.ah, 0
  br i1 %.not516, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !133
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.d
  %i.al = load ptr, ptr @input, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2936
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135
  %i.ao = icmp ne i32 %i.an, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ap = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.ao, %bb.e ] ; 3 uses
  %i.aq = load ptr, ptr @input, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5780
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %.not517 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 14232
  %.in = select i1 %.not517, ptr @byte_abs, ptr %i.at
  %i.au = load ptr, ptr %.in, align 8, !tbaa !38  ; 80 uses
  %i.av = add nsw i32 %i.aa, %1
  %i.aw = sext i32 %i.av to i64                   ; 5 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !136
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.f
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !138 ; 8 uses
  store i32 0, ptr @ref_access_method, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 6448
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !140
  store ptr %i.bc, ptr @ref_pic_sub, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 6392
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !150
  %i.bf = add nsw i32 %i.be, -17                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 6396
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !151
  %i.bi = add nsw i32 %i.bh, -17                  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 6408
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !152
  store i32 %i.bk, ptr @width_pad, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 6412
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !153
  store i32 %i.bm, ptr @height_pad, align 4, !tbaa !4
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr @wp_weight, align 8, !tbaa !35
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.aw
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.f
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  store i32 %i.bs, ptr @weight_luma, align 4, !tbaa !4
  %i.bt = load ptr, ptr @wp_offset, align 8, !tbaa !35
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.aw
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.f
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !38
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  store i32 %i.by, ptr @offset_luma, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bz = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not518 = icmp eq i32 %i.bz, 0
  br i1 %.not518, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 6464
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !154 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !155
  store ptr %i.cc, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !155
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !155
  store ptr %i.ce, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !155
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 6416
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !156
  store i32 %i.cg, ptr @width_pad_cr, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 6420
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !157
  store i32 %i.ci, ptr @height_pad_cr, align 4, !tbaa !4
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr @wp_weight, align 8, !tbaa !35
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.aw
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.f
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load <2 x i32>, ptr %i.co, align 4, !tbaa !4
  store <2 x i32> %i.cp, ptr @weight_cr, align 4, !tbaa !4
  %i.cq = load ptr, ptr @wp_offset, align 8, !tbaa !35
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.aw
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !36
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.f
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load <2 x i32>, ptr %i.cv, align 4, !tbaa !4
  store <2 x i32> %i.cw, ptr @offset_cr, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.cx = load ptr, ptr @enc_picture, align 8, !tbaa !138 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6488
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !158
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.c
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !159
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 6512
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.c
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !161
  call void @SetMotionVectorPredictor(ptr noundef nonnull %i.a, ptr noundef %i.db, ptr noundef %i.df, i16 noundef signext %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #12
  %i.dg = load ptr, ptr @search_center_x, align 8, !tbaa !36
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.c
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !38
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.f ; 8 uses
  %i.dk = load <2 x i16>, ptr %i.a, align 4, !tbaa !162
  %i.dl = sdiv <2 x i16> %i.dk, splat (i16 4)     ; 2 uses
  %i.dm = extractelement <2 x i16> %i.dl, i64 0
  %i.dn = sext i16 %i.dm to i32
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !4
  %i.do = load ptr, ptr @search_center_y, align 8, !tbaa !36
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.c
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !38
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.f ; 7 uses
  %i.ds = extractelement <2 x i16> %i.dl, i64 1
  %i.dt = sext i16 %i.ds to i32
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !4
  %i.du = load ptr, ptr @input, align 8, !tbaa !8 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4168
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !163
  %.not519 = icmp eq i32 %i.dw, 0
  br i1 %.not519, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.dx = sub nsw i32 0, %i.o                     ; 2 uses
  %i.dy = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dz = call noundef i32 @llvm.smax.i32(i32 %i.dy, i32 %i.dx)
  %i.ea = call noundef i32 @llvm.smin.i32(i32 %i.dz, i32 %i.o)
  store i32 %i.ea, ptr %i.dj, align 4, !tbaa !4
  %i.eb = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.ec = call noundef i32 @llvm.smax.i32(i32 %i.eb, i32 %i.dx)
  %i.ed = call noundef i32 @llvm.smin.i32(i32 %i.ec, i32 %i.o)
  store i32 %i.ed, ptr %i.dr, align 4, !tbaa !4
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.ee = add nsw i32 %i.o, -2047
  %i.ef = sub nsw i32 2047, %i.o
  %i.eg = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.eh = call noundef i32 @llvm.smax.i32(i32 %i.eg, i32 %i.ee)
  %i.ei = call noundef i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ef)
  store i32 %i.ei, ptr %i.dj, align 4, !tbaa !4
  %i.ej = load ptr, ptr @img, align 8, !tbaa !8   ; 13 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !164
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !4
  %i.ep = add nsw i32 %i.eo, %i.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4
  %i.es = sub nsw i32 %i.er, %i.o
  %i.et = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.eu = call noundef i32 @llvm.smax.i32(i32 %i.et, i32 %i.ep)
  %i.ev = call noundef i32 @llvm.smin.i32(i32 %i.eu, i32 %i.es)
  store i32 %i.ev, ptr %i.dr, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 192 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !165
  %i.ey = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.ez = add nsw i32 %i.ey, %i.ex
  store i32 %i.ez, ptr %i.dj, align 4, !tbaa !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 196 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !166
  %i.fc = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.fd = add nsw i32 %i.fc, %i.fb                ; 5 uses
  store i32 %i.fd, ptr %i.dr, align 4, !tbaa !4
  %i.fe = load i32, ptr %i.dj, align 4, !tbaa !4  ; 4 uses
  %i.ff = load i32, ptr %i.fa, align 4, !tbaa !166
  %i.fg = load ptr, ptr @imgY_org, align 8, !tbaa !167
  %i.fh = sext i32 %i.ff to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.fh, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.0559 = phi ptr [ @SetupFastFullPelSearch.orig_pels, %.lr.ph ], [ %i.fn, %bb.m ] ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !168
  %i.fk = load i32, ptr %i.ew, align 8, !tbaa !165
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fj, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.0559, ptr noundef nonnull align 2 dereferenceable(32) %i.fm, i64 32, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.0559, i64 32 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fo = load i32, ptr %i.fa, align 4, !tbaa !166
  %i.fp = add nsw i32 %i.fo, 15
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv, %i.fq
  br i1 %i.fr, label %bb.m, label %._crit_edge, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.m
  %i.fs = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not520 = icmp eq i32 %i.fs, 0
  br i1 %.not520, label %.loopexit555, label %.preheader554.preheader

.preheader554.preheader:                          ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ej, i64 15548 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !171
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph563, label %.loopexit555

.lr.ph563:                                        ; preds = %.preheader554.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ej, i64 204 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !172
  %i.fy = sext i32 %i.fx to i64
  %.pre = load ptr, ptr @imgUV_org, align 8, !tbaa !161
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ej, i64 15544 ; 2 uses
  %.pre.a = load i32, ptr %.phi.trans.insert, align 8, !tbaa !173
  %2 = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph563, %bb.n
  %i.fz = phi i32 [ %.pre.a, %.lr.ph563 ], [ %i.gi, %bb.n ]
  %indvars.iv758 = phi i64 [ %i.fy, %.lr.ph563 ], [ %indvars.iv.next759, %bb.n ] ; 2 uses
  %.2561 = phi ptr [ %i.fn, %.lr.ph563 ], [ %i.gk, %bb.n ] ; 2 uses
  %i.ga = load ptr, ptr %.pre, align 8, !tbaa !167
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %indvars.iv758
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !168
  %i.gd = load i32, ptr %2, align 8, !tbaa !174
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.ge
  %i.gg = sext i32 %i.fz to i64
  %i.gh = shl nsw i64 %i.gg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2561, ptr align 2 %i.gf, i64 %i.gh, i1 false)
  %i.gi = load i32, ptr %.phi.trans.insert, align 8, !tbaa !173 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %.2561, i64 %i.gj ; 3 uses
  %indvars.iv.next759 = add nsw i64 %indvars.iv758, 1 ; 2 uses
  %i.gl = load i32, ptr %i.fw, align 4, !tbaa !172
  %i.gm = load i32, ptr %i.ft, align 4, !tbaa !171 ; 2 uses
  %i.gn = add nsw i32 %i.gm, %i.gl
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv.next759, %i.go
  br i1 %i.gp, label %bb.n, label %._crit_edge564, !llvm.loop !175

._crit_edge564:                                   ; preds = %bb.n
  %i.gq = icmp sgt i32 %i.gm, 0
  br i1 %i.gq, label %.lr.ph563.1, label %.loopexit555

.lr.ph563.1:                                      ; preds = %._crit_edge564
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ej, i64 204
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !172
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %.phi.trans.insert797 = getelementptr inbounds nuw i8, ptr %i.ej, i64 15544
  %.pre798 = load i32, ptr %.phi.trans.insert797, align 8, !tbaa !173
  %3 = load ptr, ptr @imgUV_org, align 8, !tbaa !161
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %5 = load ptr, ptr @img, align 8, !tbaa !8      ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 15544 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 204 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 15548 ; 2 uses
  %9 = load ptr, ptr %4, align 8, !tbaa !167
  %10 = getelementptr inbounds [8 x i8], ptr %9, i64 %i.gt
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %.phi.trans.insert796 = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  %12 = load i32, ptr %.phi.trans.insert796, align 8, !tbaa !174
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i8], ptr %11, i64 %13
  %15 = sext i32 %.pre798 to i64
  %16 = shl nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gk, ptr align 2 %14, i64 %16, i1 false)
  %17 = load i32, ptr %6, align 8, !tbaa !173     ; 2 uses
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i8], ptr %i.gk, i64 %18
  %indvars.iv.next759.1.peel = add nsw i64 %i.gt, 1 ; 2 uses
  %20 = load i32, ptr %7, align 4, !tbaa !172
  %.pre797 = load i32, ptr %8, align 4, !tbaa !171
  %21 = add nsw i32 %.pre797, %20
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %indvars.iv.next759.1.peel, %22
  br i1 %23, label %.lr.ph563.1.peel.newph, label %._crit_edge564.1

.lr.ph563.1.peel.newph:                           ; preds = %.lr.ph563.1
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 200
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph563.1.peel.newph
  %i.gu = phi i32 [ %17, %.lr.ph563.1.peel.newph ], [ %i.hd, %bb.o ]
  %indvars.iv758.1 = phi i64 [ %indvars.iv.next759.1.peel, %.lr.ph563.1.peel.newph ], [ %indvars.iv.next759.1, %bb.o ] ; 2 uses
  %.2561.1 = phi ptr [ %19, %.lr.ph563.1.peel.newph ], [ %i.hf, %bb.o ] ; 2 uses
  %i.gv = load ptr, ptr %4, align 8, !tbaa !167
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %indvars.iv758.1
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !168
  %i.gy = load i32, ptr %24, align 8, !tbaa !174
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gx, i64 %i.gz
  %i.hb = sext i32 %i.gu to i64
  %i.hc = shl nsw i64 %i.hb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2561.1, ptr align 2 %i.ha, i64 %i.hc, i1 false)
  %i.hd = load i32, ptr %6, align 8, !tbaa !173   ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [2 x i8], ptr %.2561.1, i64 %i.he
  %indvars.iv.next759.1 = add nsw i64 %indvars.iv758.1, 1 ; 2 uses
  %i.hg = load i32, ptr %7, align 4, !tbaa !172
  %i.hh = load i32, ptr %8, align 4, !tbaa !171
  %i.hi = add nsw i32 %i.hh, %i.hg
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next759.1, %i.hj
  br i1 %i.hk, label %bb.o, label %._crit_edge564.1, !llvm.loop !176

._crit_edge564.1:                                 ; preds = %bb.o, %.lr.ph563.1
  %.pre798.a = load ptr, ptr @input, align 8, !tbaa !8
  br label %.loopexit555

.loopexit555:                                     ; preds = %.preheader554.preheader, %._crit_edge564, %._crit_edge564.1, %._crit_edge
  %25 = phi ptr [ %i.ej, %._crit_edge ], [ %5, %._crit_edge564.1 ], [ %i.ej, %._crit_edge564 ], [ %i.ej, %.preheader554.preheader ] ; 2 uses
  %26 = phi ptr [ %i.du, %._crit_edge ], [ %.pre798.a, %._crit_edge564.1 ], [ %i.du, %._crit_edge564 ], [ %i.du, %.preheader554.preheader ]
  %.not521 = icmp sge i32 %i.fe, %i.o
  %i.hl = sub nsw i32 %i.bf, %i.o
  %.not522 = icmp sle i32 %i.fe, %i.hl
  %or.cond530.not535 = select i1 %.not521, i1 %.not522, i1 false
  %.not523 = icmp sge i32 %i.fd, %i.o
  %or.cond531.not534 = select i1 %or.cond530.not535, i1 %.not523, i1 false
  %i.hm = sub nsw i32 %i.bi, %i.o
  %.not524 = icmp sle i32 %i.fd, %i.hm
  %or.cond532.not = select i1 %or.cond531.not534, i1 %.not524, i1 false
  %i.hn = getelementptr inbounds nuw i8, ptr %26, i64 4168
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !163
  %.not525 = icmp eq i32 %i.ho, 0
  br i1 %.not525, label %bb.p, label %.loopexit555..loopexit553_crit_edge

.loopexit555..loopexit553_crit_edge:              ; preds = %.loopexit555
  %.pre799 = zext nneg i32 %i.r to i64
  br label %.loopexit553

bb.p:                                             ; preds = %.loopexit555
  %i.hp = getelementptr inbounds nuw i8, ptr %25, i64 192
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !165
  %i.hr = sub nsw i32 %i.hq, %i.fe
  %i.hs = getelementptr inbounds nuw i8, ptr %25, i64 196
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !166
  %i.hu = sub nsw i32 %i.ht, %i.fd
  %i.hv = load ptr, ptr @spiral_search_x, align 8, !tbaa !168
  %i.hw = load ptr, ptr @spiral_search_y, align 8
  %i.hx = zext nneg i32 %i.r to i64               ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.t
  %indvars.iv764 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next765, %bb.t ] ; 4 uses
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %indvars.iv764
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !162
  %i.ia = sext i16 %i.hz to i32
  %i.ib = icmp eq i32 %i.hr, %i.ia
  br i1 %i.ib, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hw, i64 %indvars.iv764
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !162
  %i.ie = sext i16 %i.id to i32
  %i.if = icmp eq i32 %i.hu, %i.ie
  br i1 %i.if, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ig = trunc nuw nsw i64 %indvars.iv764 to i32
  %i.ih = load ptr, ptr @pos_00, align 8, !tbaa !36
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.c
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !38
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.f
  store i32 %i.ig, ptr %i.ik, align 4, !tbaa !4
  br label %.loopexit553

bb.t:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %i.il = icmp samesign ult i64 %indvars.iv.next765, %i.hx
  br i1 %i.il, label %bb.q, label %.loopexit553, !llvm.loop !178

.loopexit553:                                     ; preds = %bb.t, %.loopexit555..loopexit553_crit_edge, %bb.s
  %.pre-phi = phi i64 [ %.pre799, %.loopexit555..loopexit553_crit_edge ], [ %i.hx, %bb.s ], [ %i.hx, %bb.t ]
  br label %bb.u

bb.u:                                             ; preds = %.loopexit553, %.loopexit
  %indvars.iv793 = phi i64 [ 0, %.loopexit553 ], [ %indvars.iv.next794, %.loopexit ] ; 27 uses
  %i.im = load ptr, ptr @spiral_search_y, align 8, !tbaa !168
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %indvars.iv793
  %i.io = load i16, ptr %i.in, align 2, !tbaa !162
  %i.ip = sext i16 %i.io to i32
  %i.iq = add nsw i32 %i.fd, %i.ip                ; 3 uses
  %i.ir = load ptr, ptr @spiral_search_x, align 8, !tbaa !168
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %indvars.iv793
  %i.it = load i16, ptr %i.is, align 2, !tbaa !162
  %i.iu = sext i16 %i.it to i32
  %i.iv = add nsw i32 %i.fe, %i.iu                ; 3 uses
  %i.iw = shl i32 %i.iq, 2
  %i.ix = add i32 %i.iw, 80                       ; 5 uses
  %i.iy = shl i32 %i.iv, 2
  %i.iz = add i32 %i.iy, 80                       ; 5 uses
  br i1 %or.cond532.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ja = icmp sgt i32 %i.iq, -1
  br i1 %i.ja, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jb = icmp sgt i32 %i.iq, %i.bi
  %i.jc = icmp slt i32 %i.iv, 0
  %or.cond.not538 = select i1 %i.jb, i1 true, i1 %i.jc
  %.not527 = icmp sgt i32 %i.iv, %i.bf
  %or.cond533 = select i1 %or.cond.not538, i1 true, i1 %.not527
  br i1 %or.cond533, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x
  %.sink = phi i32 [ 1, %bb.x ], [ 0, %bb.w ]
  store i32 %.sink, ptr @ref_access_method, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.u
  %i.jd = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr @get_line, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !8
  %i.jh = load ptr, ptr @ref_pic_sub, align 8, !tbaa !148
  %i.ji = call ptr %i.jg(ptr noundef %i.jh, i32 noundef %i.ix, i32 noundef %i.iz) #12 ; 2 uses
  br i1 %i.ap, label %bb.z, label %.preheader549

bb.z:                                             ; preds = %bb.y
  %i.jj = load ptr, ptr @img, align 8, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 15520
  br label %.preheader548

.preheader548:                                    ; preds = %bb.z, %bb.ab
  %indvars.iv782 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next783, %bb.ab ] ; 2 uses
  %.3649 = phi ptr [ @SetupFastFullPelSearch.orig_pels, %bb.z ], [ %scevgep779, %bb.ab ] ; 2 uses
  %.0439648 = phi ptr [ %i.ji, %bb.z ], [ %scevgep780, %bb.ab ] ; 2 uses
  %.0479646 = phi i32 [ 0, %bb.z ], [ %i.os, %bb.ab ]
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !179
  %i.jm = load i32, ptr @weight_luma, align 4, !tbaa !4
  %i.jn = load i32, ptr @wp_luma_round, align 4, !tbaa !4
  %i.jo = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !4
  %i.jp = load i32, ptr @offset_luma, align 4, !tbaa !4
  %i.jq = load i32, ptr @img_padded_size_x, align 4, !tbaa !4
  %i.jr = sext i32 %i.jq to i64                   ; 2 uses
  %i.js = insertelement <8 x i32> poison, i32 %i.jm, i64 0
  %i.jt = shufflevector <8 x i32> %i.js, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ju = insertelement <8 x i32> poison, i32 %i.jn, i64 0
  %i.jv = shufflevector <8 x i32> %i.ju, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.jw = insertelement <8 x i32> poison, i32 %i.jo, i64 0
  %i.jx = shufflevector <8 x i32> %i.jw, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.jy = insertelement <8 x i32> poison, i32 %i.jp, i64 0
  %i.jz = shufflevector <8 x i32> %i.jy, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ka = insertelement <8 x i32> poison, i32 %i.jl, i64 0
  %i.kb = shufflevector <8 x i32> %i.ka, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader548, %bb.aa
  %.4645 = phi ptr [ %.3649, %.preheader548 ], [ %i.md, %bb.aa ] ; 3 uses
  %.1440644 = phi ptr [ %.0439648, %.preheader548 ], [ %i.od, %bb.aa ] ; 3 uses
  %.2468643 = phi i32 [ 0, %.preheader548 ], [ %i.oe, %bb.aa ]
  %.0483642 = phi i32 [ 0, %.preheader548 ], [ %i.li, %bb.aa ]
  %.0489641 = phi i32 [ 0, %.preheader548 ], [ %i.mc, %bb.aa ]
  %.0495640 = phi i32 [ 0, %.preheader548 ], [ %i.oc, %bb.aa ]
  %.0501639 = phi i32 [ 0, %.preheader548 ], [ %i.ni, %bb.aa ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.1440644, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %.4645, i64 16
  %i.ke = load <8 x i16>, ptr %.1440644, align 2, !tbaa !162
  %i.kf = zext <8 x i16> %i.ke to <8 x i32>
  %i.kg = mul nsw <8 x i32> %i.jt, %i.kf
  %i.kh = add nsw <8 x i32> %i.kg, %i.jv
  %i.ki = ashr <8 x i32> %i.kh, %i.jx
  %i.kj = add nsw <8 x i32> %i.ki, %i.jz
  %i.kk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.kj, <8 x i32> zeroinitializer)
  %i.kl = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.kk, <8 x i32> %i.kb)
  %i.km = load <8 x i16>, ptr %.4645, align 2, !tbaa !162
  %i.kn = zext <8 x i16> %i.km to <8 x i32>
  %i.ko = sub nsw <8 x i32> %i.kl, %i.kn          ; 8 uses
  %i.kp = extractelement <8 x i32> %i.ko, i64 0
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4
  %i.kt = add nsw i32 %i.ks, %.0483642
  %i.ku = extractelement <8 x i32> %i.ko, i64 1
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !4
  %i.ky = add nsw i32 %i.kt, %i.kx
  %i.kz = extractelement <8 x i32> %i.ko, i64 2
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !4
  %i.ld = add nsw i32 %i.ky, %i.lc
  %i.le = extractelement <8 x i32> %i.ko, i64 3
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !4
  %i.li = add nsw i32 %i.ld, %i.lh                ; 2 uses
  %i.lj = extractelement <8 x i32> %i.ko, i64 4
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4
  %i.ln = add nsw i32 %i.lm, %.0489641
  %i.lo = extractelement <8 x i32> %i.ko, i64 5
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !4
  %i.ls = add nsw i32 %i.ln, %i.lr
  %i.lt = extractelement <8 x i32> %i.ko, i64 6
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !4
  %i.lx = add nsw i32 %i.ls, %i.lw
  %i.ly = extractelement <8 x i32> %i.ko, i64 7
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !4
  %i.mc = add nsw i32 %i.lx, %i.mb                ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.4645, i64 32
  %i.me = load <8 x i16>, ptr %i.kc, align 2, !tbaa !162
  %i.mf = zext <8 x i16> %i.me to <8 x i32>
  %i.mg = mul nsw <8 x i32> %i.jt, %i.mf
  %i.mh = add nsw <8 x i32> %i.mg, %i.jv
  %i.mi = ashr <8 x i32> %i.mh, %i.jx
  %i.mj = add nsw <8 x i32> %i.mi, %i.jz
  %i.mk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mj, <8 x i32> zeroinitializer)
  %i.ml = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.mk, <8 x i32> %i.kb)
  %i.mm = load <8 x i16>, ptr %i.kd, align 2, !tbaa !162
  %i.mn = zext <8 x i16> %i.mm to <8 x i32>
  %i.mo = sub nsw <8 x i32> %i.ml, %i.mn          ; 8 uses
  %i.mp = extractelement <8 x i32> %i.mo, i64 0
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !4
  %i.mt = add nsw i32 %i.ms, %.0501639
  %i.mu = extractelement <8 x i32> %i.mo, i64 1
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.my = add nsw i32 %i.mt, %i.mx
  %i.mz = extractelement <8 x i32> %i.mo, i64 2
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !4
  %i.nd = add nsw i32 %i.my, %i.nc
  %i.ne = extractelement <8 x i32> %i.mo, i64 3
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !4
  %i.ni = add nsw i32 %i.nd, %i.nh                ; 2 uses
  %i.nj = extractelement <8 x i32> %i.mo, i64 4
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !4
  %i.nn = add nsw i32 %i.nm, %.0495640
  %i.no = extractelement <8 x i32> %i.mo, i64 5
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !4
  %i.ns = add nsw i32 %i.nn, %i.nr
  %i.nt = extractelement <8 x i32> %i.mo, i64 6
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.nx = add nsw i32 %i.ns, %i.nw
  %i.ny = extractelement <8 x i32> %i.mo, i64 7
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !4
  %i.oc = add nsw i32 %i.nx, %i.ob                ; 2 uses
  %i.od = getelementptr [2 x i8], ptr %.1440644, i64 %i.jr
  %i.oe = add nuw nsw i32 %.2468643, 1            ; 2 uses
  %exitcond781.not = icmp eq i32 %i.oe, 4
  br i1 %exitcond781.not, label %bb.ab, label %bb.aa, !llvm.loop !180

bb.ab:                                            ; preds = %bb.aa
  %scevgep779 = getelementptr i8, ptr %.3649, i64 128 ; 2 uses
  %i.of = shl nsw i64 %i.jr, 3
  %scevgep780 = getelementptr i8, ptr %.0439648, i64 %i.of
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv782 ; 4 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !38
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv793
  store i32 %i.li, ptr %i.oi, align 4, !tbaa !4
  %i.oj = getelementptr i8, ptr %i.og, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !38
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv793
  store i32 %i.mc, ptr %i.ol, align 4, !tbaa !4
  %i.om = getelementptr i8, ptr %i.og, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !38
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv793
  store i32 %i.ni, ptr %i.oo, align 4, !tbaa !4
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !38
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv793
  store i32 %i.oc, ptr %i.or, align 4, !tbaa !4
  %i.os = add nuw nsw i32 %.0479646, 1            ; 2 uses
  %exitcond785.not = icmp eq i32 %i.os, 4
  br i1 %exitcond785.not, label %bb.ac, label %.preheader548, !llvm.loop !181

bb.ac:                                            ; preds = %bb.ab
  %i.ot = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not529 = icmp eq i32 %i.ot, 0
  br i1 %.not529, label %.loopexit, label %.preheader550

.preheader550:                                    ; preds = %bb.ac
  %i.ou = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.ov
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !8
  %i.oy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !155
  %i.oz = call ptr %i.ox(ptr noundef %i.oy, i32 noundef %i.ix, i32 noundef %i.iz) #12
  %i.pa = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 15548
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 15544
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 15524 ; 4 uses
  br label %.preheader546

.preheader546:                                    ; preds = %.preheader550, %._crit_edge691
  %indvars.iv786 = phi i64 [ 0, %.preheader550 ], [ %indvars.iv.next787, %._crit_edge691 ] ; 2 uses
  %.6701 = phi ptr [ %scevgep779, %.preheader550 ], [ %.7.lcssa, %._crit_edge691 ] ; 2 uses
  %.2441700 = phi ptr [ %i.oz, %.preheader550 ], [ %.3442.lcssa, %._crit_edge691 ] ; 2 uses
  %.1480698 = phi i32 [ 0, %.preheader550 ], [ %i.tu, %._crit_edge691 ]
  %i.pe = load i32, ptr %i.pb, align 4, !tbaa !171 ; 2 uses
  %i.pf = icmp sgt i32 %i.pe, 0
  br i1 %i.pf, label %.preheader541.lr.ph, label %._crit_edge691

.preheader541.lr.ph:                              ; preds = %.preheader546
  %i.pg = load i32, ptr %i.pc, align 8, !tbaa !173 ; 6 uses
  %i.ph = icmp sgt i32 %i.pg, 0
  %i.pi = load i32, ptr @wp_chroma_round, align 4 ; 4 uses
  %i.pj = load i32, ptr @chroma_log_weight_denom, align 4 ; 4 uses
  %i.pk = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4
  %i.pl = sub nsw i32 %i.pk, %i.pg
  %i.pm = sext i32 %i.pl to i64
  %i.pn = load i32, ptr @weight_cr, align 4
  %i.po = load i32, ptr @offset_cr, align 4
  %i.pp = load i32, ptr @weight_cr, align 4
  %i.pq = load i32, ptr @offset_cr, align 4
  %i.pr = load i32, ptr @weight_cr, align 4
  %i.ps = load i32, ptr @offset_cr, align 4
  %i.pt = load i32, ptr @weight_cr, align 4
  %i.pu = load i32, ptr @offset_cr, align 4
  br label %.preheader541

.preheader541:                                    ; preds = %.preheader541.lr.ph, %._crit_edge680
  %.7690 = phi ptr [ %.6701, %.preheader541.lr.ph ], [ %.11.lcssa, %._crit_edge680 ] ; 2 uses
  %.3442689 = phi ptr [ %.2441700, %.preheader541.lr.ph ], [ %i.sx, %._crit_edge680 ] ; 2 uses
  %.3469688 = phi i32 [ 0, %.preheader541.lr.ph ], [ %i.sy, %._crit_edge680 ]
  %.1484687 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2485.lcssa822830843, %._crit_edge680 ] ; 2 uses
  %.1490686 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2491.lcssa832841, %._crit_edge680 ] ; 2 uses
  %.1496685 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2497.lcssa, %._crit_edge680 ] ; 2 uses
  %.1502684 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2503.lcssa845, %._crit_edge680 ] ; 2 uses
  br i1 %i.ph, label %.lr.ph654, label %._crit_edge680

.lr.ph654:                                        ; preds = %.preheader541
  %i.pv = load i32, ptr %i.pd, align 4, !tbaa !182
  br label %bb.ad

.lr.ph663:                                        ; preds = %bb.ad
  %i.pw = load i32, ptr %i.pd, align 4, !tbaa !182
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph654, %bb.ad
  %.8653 = phi ptr [ %.7690, %.lr.ph654 ], [ %i.qg, %bb.ad ] ; 2 uses
  %.4443652 = phi ptr [ %.3442689, %.lr.ph654 ], [ %i.px, %bb.ad ] ; 2 uses
  %.0458651 = phi i32 [ 0, %.lr.ph654 ], [ %i.qo, %bb.ad ]
  %.2485650 = phi i32 [ %.1484687, %.lr.ph654 ], [ %i.qn, %bb.ad ]
  %i.px = getelementptr inbounds nuw i8, ptr %.4443652, i64 2 ; 2 uses
  %i.py = load i16, ptr %.4443652, align 2, !tbaa !162
  %i.pz = zext i16 %i.py to i32
  %i.qa = mul nsw i32 %i.pn, %i.pz
  %i.qb = add nsw i32 %i.qa, %i.pi
  %i.qc = ashr i32 %i.qb, %i.pj
  %i.qd = add nsw i32 %i.qc, %i.po
  %i.qe = call noundef i32 @llvm.smax.i32(i32 %i.qd, i32 0)
  %i.qf = call noundef i32 @llvm.smin.i32(i32 %i.qe, i32 %i.pv)
  %i.qg = getelementptr inbounds nuw i8, ptr %.8653, i64 2 ; 2 uses
  %i.qh = load i16, ptr %.8653, align 2, !tbaa !162
  %i.qi = zext i16 %i.qh to i32
  %i.qj = sub nsw i32 %i.qf, %i.qi
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !4
  %i.qn = add nsw i32 %i.qm, %.2485650            ; 2 uses
  %i.qo = add nuw nsw i32 %.0458651, 4            ; 2 uses
  %i.qp = icmp slt i32 %i.qo, %i.pg
  br i1 %i.qp, label %bb.ad, label %.lr.ph663, !llvm.loop !183

.lr.ph671:                                        ; preds = %bb.ae
  %i.qq = load i32, ptr %i.pd, align 4, !tbaa !182
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph663, %bb.ae
  %.9662 = phi ptr [ %i.qg, %.lr.ph663 ], [ %i.ra, %bb.ae ] ; 2 uses
  %.5444661 = phi ptr [ %i.px, %.lr.ph663 ], [ %i.qr, %bb.ae ] ; 2 uses
  %.1459660 = phi i32 [ 0, %.lr.ph663 ], [ %i.ri, %bb.ae ]
  %.2491659 = phi i32 [ %.1490686, %.lr.ph663 ], [ %i.rh, %bb.ae ]
  %i.qr = getelementptr inbounds nuw i8, ptr %.5444661, i64 2 ; 2 uses
  %i.qs = load i16, ptr %.5444661, align 2, !tbaa !162
  %i.qt = zext i16 %i.qs to i32
  %i.qu = mul nsw i32 %i.pp, %i.qt
  %i.qv = add nsw i32 %i.qu, %i.pi
  %i.qw = ashr i32 %i.qv, %i.pj
  %i.qx = add nsw i32 %i.qw, %i.pq
  %i.qy = call noundef i32 @llvm.smax.i32(i32 %i.qx, i32 0)
  %i.qz = call noundef i32 @llvm.smin.i32(i32 %i.qy, i32 %i.pw)
  %i.ra = getelementptr inbounds nuw i8, ptr %.9662, i64 2 ; 2 uses
  %i.rb = load i16, ptr %.9662, align 2, !tbaa !162
  %i.rc = zext i16 %i.rb to i32
  %i.rd = sub nsw i32 %i.qz, %i.rc
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !4
  %i.rh = add nsw i32 %i.rg, %.2491659            ; 2 uses
  %i.ri = add nuw nsw i32 %.1459660, 4            ; 2 uses
  %i.rj = icmp slt i32 %i.ri, %i.pg
  br i1 %i.rj, label %bb.ae, label %.lr.ph671, !llvm.loop !184

.lr.ph679:                                        ; preds = %bb.af
  %i.rk = load i32, ptr %i.pd, align 4, !tbaa !182
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph671, %bb.af
  %.10670 = phi ptr [ %i.ra, %.lr.ph671 ], [ %i.ru, %bb.af ] ; 2 uses
  %.6445669 = phi ptr [ %i.qr, %.lr.ph671 ], [ %i.rl, %bb.af ] ; 2 uses
  %.2460668 = phi i32 [ 0, %.lr.ph671 ], [ %i.sc, %bb.af ]
  %.2503667 = phi i32 [ %.1502684, %.lr.ph671 ], [ %i.sb, %bb.af ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.6445669, i64 2 ; 2 uses
  %i.rm = load i16, ptr %.6445669, align 2, !tbaa !162
  %i.rn = zext i16 %i.rm to i32
  %i.ro = mul nsw i32 %i.pr, %i.rn
  %i.rp = add nsw i32 %i.ro, %i.pi
  %i.rq = ashr i32 %i.rp, %i.pj
  %i.rr = add nsw i32 %i.rq, %i.ps
  %i.rs = call noundef i32 @llvm.smax.i32(i32 %i.rr, i32 0)
  %i.rt = call noundef i32 @llvm.smin.i32(i32 %i.rs, i32 %i.qq)
  %i.ru = getelementptr inbounds nuw i8, ptr %.10670, i64 2 ; 2 uses
  %i.rv = load i16, ptr %.10670, align 2, !tbaa !162
  %i.rw = zext i16 %i.rv to i32
  %i.rx = sub nsw i32 %i.rt, %i.rw
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !4
  %i.sb = add nsw i32 %i.sa, %.2503667            ; 2 uses
  %i.sc = add nuw nsw i32 %.2460668, 4            ; 2 uses
  %i.sd = icmp slt i32 %i.sc, %i.pg
  br i1 %i.sd, label %bb.af, label %.lr.ph679, !llvm.loop !185

bb.ag:                                            ; preds = %.lr.ph679, %bb.ag
  %.11678 = phi ptr [ %i.ru, %.lr.ph679 ], [ %i.sn, %bb.ag ] ; 2 uses
  %.7446677 = phi ptr [ %i.rl, %.lr.ph679 ], [ %i.se, %bb.ag ] ; 2 uses
  %.3461676 = phi i32 [ 0, %.lr.ph679 ], [ %i.sv, %bb.ag ]
  %.2497675 = phi i32 [ %.1496685, %.lr.ph679 ], [ %i.su, %bb.ag ]
  %i.se = getelementptr inbounds nuw i8, ptr %.7446677, i64 2 ; 2 uses
  %i.sf = load i16, ptr %.7446677, align 2, !tbaa !162
  %i.sg = zext i16 %i.sf to i32
  %i.sh = mul nsw i32 %i.pt, %i.sg
  %i.si = add nsw i32 %i.sh, %i.pi
  %i.sj = ashr i32 %i.si, %i.pj
  %i.sk = add nsw i32 %i.sj, %i.pu
  %i.sl = call noundef i32 @llvm.smax.i32(i32 %i.sk, i32 0)
  %i.sm = call noundef i32 @llvm.smin.i32(i32 %i.sl, i32 %i.rk)
  %i.sn = getelementptr inbounds nuw i8, ptr %.11678, i64 2 ; 2 uses
  %i.so = load i16, ptr %.11678, align 2, !tbaa !162
  %i.sp = zext i16 %i.so to i32
  %i.sq = sub nsw i32 %i.sm, %i.sp
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.sr
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !4
  %i.su = add nsw i32 %i.st, %.2497675            ; 2 uses
  %i.sv = add nuw nsw i32 %.3461676, 4            ; 2 uses
  %i.sw = icmp slt i32 %i.sv, %i.pg
  br i1 %i.sw, label %bb.ag, label %._crit_edge680, !llvm.loop !186

._crit_edge680:                                   ; preds = %bb.ag, %.preheader541
  %.2503.lcssa845 = phi i32 [ %.1502684, %.preheader541 ], [ %i.sb, %bb.ag ] ; 2 uses
  %.2485.lcssa822830843 = phi i32 [ %.1484687, %.preheader541 ], [ %i.qn, %bb.ag ] ; 2 uses
  %.2491.lcssa832841 = phi i32 [ %.1490686, %.preheader541 ], [ %i.rh, %bb.ag ] ; 2 uses
  %.2497.lcssa = phi i32 [ %.1496685, %.preheader541 ], [ %i.su, %bb.ag ] ; 2 uses
  %.7446.lcssa = phi ptr [ %.3442689, %.preheader541 ], [ %i.se, %bb.ag ]
  %.11.lcssa = phi ptr [ %.7690, %.preheader541 ], [ %i.sn, %bb.ag ] ; 2 uses
  %i.sx = getelementptr inbounds [2 x i8], ptr %.7446.lcssa, i64 %i.pm ; 2 uses
  %i.sy = add nuw nsw i32 %.3469688, 4            ; 2 uses
  %i.sz = icmp slt i32 %i.sy, %i.pe
  br i1 %i.sz, label %.preheader541, label %._crit_edge691, !llvm.loop !187

._crit_edge691:                                   ; preds = %._crit_edge680, %.preheader546
  %.1502.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2503.lcssa845, %._crit_edge680 ]
  %.1496.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2497.lcssa, %._crit_edge680 ]
  %.1490.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2491.lcssa832841, %._crit_edge680 ]
  %.1484.lcssa = phi i32 [ 0, %.preheader546 ], [ %.2485.lcssa822830843, %._crit_edge680 ]
  %.3442.lcssa = phi ptr [ %.2441700, %.preheader546 ], [ %i.sx, %._crit_edge680 ]
  %.7.lcssa = phi ptr [ %.6701, %.preheader546 ], [ %.11.lcssa, %._crit_edge680 ] ; 2 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv786 ; 4 uses
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !38
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv793 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !4
  %i.te = add nsw i32 %i.td, %.1484.lcssa
  store i32 %i.te, ptr %i.tc, align 4, !tbaa !4
  %i.tf = getelementptr i8, ptr %i.ta, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !38
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv793 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4
  %i.tj = add nsw i32 %i.ti, %.1490.lcssa
  store i32 %i.tj, ptr %i.th, align 4, !tbaa !4
  %i.tk = getelementptr i8, ptr %i.ta, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !38
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %indvars.iv793 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !4
  %i.to = add nsw i32 %i.tn, %.1502.lcssa
  store i32 %i.to, ptr %i.tm, align 4, !tbaa !4
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !38
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %indvars.iv793 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !4
  %i.tt = add nsw i32 %i.ts, %.1496.lcssa
  store i32 %i.tt, ptr %i.tr, align 4, !tbaa !4
  %i.tu = add nuw nsw i32 %.1480698, 1            ; 2 uses
  %exitcond789.not = icmp eq i32 %i.tu, 4
  br i1 %exitcond789.not, label %.preheader550.1, label %.preheader546, !llvm.loop !188

.preheader550.1:                                  ; preds = %._crit_edge691
  %i.tv = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.tw
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !8
  %i.tz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !155
  %i.ua = call ptr %i.ty(ptr noundef %i.tz, i32 noundef %i.ix, i32 noundef %i.iz) #12
  %i.ub = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 15548
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 15544
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 15524 ; 4 uses
  br label %.preheader546.1

.preheader546.1:                                  ; preds = %._crit_edge691.1, %.preheader550.1
  %indvars.iv786.1 = phi i64 [ 0, %.preheader550.1 ], [ %indvars.iv.next787.1, %._crit_edge691.1 ] ; 2 uses
  %.6701.1 = phi ptr [ %.7.lcssa, %.preheader550.1 ], [ %.7.lcssa.1, %._crit_edge691.1 ] ; 2 uses
  %.2441700.1 = phi ptr [ %i.ua, %.preheader550.1 ], [ %.3442.lcssa.1, %._crit_edge691.1 ] ; 2 uses
  %.1480698.1 = phi i32 [ 0, %.preheader550.1 ], [ %i.yv, %._crit_edge691.1 ]
  %i.uf = load i32, ptr %i.uc, align 4, !tbaa !171 ; 2 uses
  %i.ug = icmp sgt i32 %i.uf, 0
  br i1 %i.ug, label %.preheader541.lr.ph.1, label %._crit_edge691.1

.preheader541.lr.ph.1:                            ; preds = %.preheader546.1
  %i.uh = load i32, ptr %i.ud, align 8, !tbaa !173 ; 6 uses
  %i.ui = icmp sgt i32 %i.uh, 0
  %i.uj = load i32, ptr @wp_chroma_round, align 4 ; 4 uses
  %i.uk = load i32, ptr @chroma_log_weight_denom, align 4 ; 4 uses
  %i.ul = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4
  %i.um = sub nsw i32 %i.ul, %i.uh
  %i.un = sext i32 %i.um to i64
  %i.uo = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.up = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  %i.uq = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.ur = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  %i.us = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.ut = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  %i.uu = load i32, ptr getelementptr inbounds nuw (i8, ptr @weight_cr, i64 4), align 4
  %i.uv = load i32, ptr getelementptr inbounds nuw (i8, ptr @offset_cr, i64 4), align 4
  br label %.preheader541.1

.preheader541.1:                                  ; preds = %._crit_edge680.1, %.preheader541.lr.ph.1
  %.7690.1 = phi ptr [ %.6701.1, %.preheader541.lr.ph.1 ], [ %.11.lcssa.1, %._crit_edge680.1 ] ; 2 uses
  %.3442689.1 = phi ptr [ %.2441700.1, %.preheader541.lr.ph.1 ], [ %i.xy, %._crit_edge680.1 ] ; 2 uses
  %.3469688.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %i.xz, %._crit_edge680.1 ]
  %.1484687.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2485.lcssa822830843.1, %._crit_edge680.1 ] ; 2 uses
  %.1490686.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2491.lcssa832841.1, %._crit_edge680.1 ] ; 2 uses
  %.1496685.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2497.lcssa.1, %._crit_edge680.1 ] ; 2 uses
  %.1502684.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2503.lcssa845.1, %._crit_edge680.1 ] ; 2 uses
  br i1 %i.ui, label %.lr.ph654.1, label %._crit_edge680.1

.lr.ph654.1:                                      ; preds = %.preheader541.1
  %i.uw = load i32, ptr %i.ue, align 4, !tbaa !182
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph654.1
  %.8653.1 = phi ptr [ %.7690.1, %.lr.ph654.1 ], [ %i.vg, %bb.ah ] ; 2 uses
  %.4443652.1 = phi ptr [ %.3442689.1, %.lr.ph654.1 ], [ %i.ux, %bb.ah ] ; 2 uses
  %.0458651.1 = phi i32 [ 0, %.lr.ph654.1 ], [ %i.vo, %bb.ah ]
  %.2485650.1 = phi i32 [ %.1484687.1, %.lr.ph654.1 ], [ %i.vn, %bb.ah ]
  %i.ux = getelementptr inbounds nuw i8, ptr %.4443652.1, i64 2 ; 2 uses
  %i.uy = load i16, ptr %.4443652.1, align 2, !tbaa !162
  %i.uz = zext i16 %i.uy to i32
  %i.va = mul nsw i32 %i.uo, %i.uz
  %i.vb = add nsw i32 %i.va, %i.uj
  %i.vc = ashr i32 %i.vb, %i.uk
  %i.vd = add nsw i32 %i.vc, %i.up
  %i.ve = call noundef i32 @llvm.smax.i32(i32 %i.vd, i32 0)
  %i.vf = call noundef i32 @llvm.smin.i32(i32 %i.ve, i32 %i.uw)
  %i.vg = getelementptr inbounds nuw i8, ptr %.8653.1, i64 2 ; 2 uses
  %i.vh = load i16, ptr %.8653.1, align 2, !tbaa !162
  %i.vi = zext i16 %i.vh to i32
  %i.vj = sub nsw i32 %i.vf, %i.vi
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !4
  %i.vn = add nsw i32 %i.vm, %.2485650.1          ; 2 uses
  %i.vo = add nuw nsw i32 %.0458651.1, 4          ; 2 uses
  %i.vp = icmp slt i32 %i.vo, %i.uh
  br i1 %i.vp, label %bb.ah, label %.lr.ph663.1, !llvm.loop !183

.lr.ph663.1:                                      ; preds = %bb.ah
  %i.vq = load i32, ptr %i.ue, align 4, !tbaa !182
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph663.1
  %.9662.1 = phi ptr [ %i.vg, %.lr.ph663.1 ], [ %i.wa, %bb.ai ] ; 2 uses
  %.5444661.1 = phi ptr [ %i.ux, %.lr.ph663.1 ], [ %i.vr, %bb.ai ] ; 2 uses
  %.1459660.1 = phi i32 [ 0, %.lr.ph663.1 ], [ %i.wi, %bb.ai ]
  %.2491659.1 = phi i32 [ %.1490686.1, %.lr.ph663.1 ], [ %i.wh, %bb.ai ]
  %i.vr = getelementptr inbounds nuw i8, ptr %.5444661.1, i64 2 ; 2 uses
  %i.vs = load i16, ptr %.5444661.1, align 2, !tbaa !162
  %i.vt = zext i16 %i.vs to i32
  %i.vu = mul nsw i32 %i.uq, %i.vt
  %i.vv = add nsw i32 %i.vu, %i.uj
  %i.vw = ashr i32 %i.vv, %i.uk
  %i.vx = add nsw i32 %i.vw, %i.ur
  %i.vy = call noundef i32 @llvm.smax.i32(i32 %i.vx, i32 0)
  %i.vz = call noundef i32 @llvm.smin.i32(i32 %i.vy, i32 %i.vq)
  %i.wa = getelementptr inbounds nuw i8, ptr %.9662.1, i64 2 ; 2 uses
  %i.wb = load i16, ptr %.9662.1, align 2, !tbaa !162
  %i.wc = zext i16 %i.wb to i32
  %i.wd = sub nsw i32 %i.vz, %i.wc
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !4
  %i.wh = add nsw i32 %i.wg, %.2491659.1          ; 2 uses
  %i.wi = add nuw nsw i32 %.1459660.1, 4          ; 2 uses
  %i.wj = icmp slt i32 %i.wi, %i.uh
  br i1 %i.wj, label %bb.ai, label %.lr.ph671.1, !llvm.loop !184

.lr.ph671.1:                                      ; preds = %bb.ai
  %i.wk = load i32, ptr %i.ue, align 4, !tbaa !182
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph671.1
  %.10670.1 = phi ptr [ %i.wa, %.lr.ph671.1 ], [ %i.wu, %bb.aj ] ; 2 uses
  %.6445669.1 = phi ptr [ %i.vr, %.lr.ph671.1 ], [ %i.wl, %bb.aj ] ; 2 uses
  %.2460668.1 = phi i32 [ 0, %.lr.ph671.1 ], [ %i.xc, %bb.aj ]
  %.2503667.1 = phi i32 [ %.1502684.1, %.lr.ph671.1 ], [ %i.xb, %bb.aj ]
  %i.wl = getelementptr inbounds nuw i8, ptr %.6445669.1, i64 2 ; 2 uses
  %i.wm = load i16, ptr %.6445669.1, align 2, !tbaa !162
  %i.wn = zext i16 %i.wm to i32
  %i.wo = mul nsw i32 %i.us, %i.wn
  %i.wp = add nsw i32 %i.wo, %i.uj
  %i.wq = ashr i32 %i.wp, %i.uk
  %i.wr = add nsw i32 %i.wq, %i.ut
  %i.ws = call noundef i32 @llvm.smax.i32(i32 %i.wr, i32 0)
  %i.wt = call noundef i32 @llvm.smin.i32(i32 %i.ws, i32 %i.wk)
  %i.wu = getelementptr inbounds nuw i8, ptr %.10670.1, i64 2 ; 2 uses
  %i.wv = load i16, ptr %.10670.1, align 2, !tbaa !162
  %i.ww = zext i16 %i.wv to i32
  %i.wx = sub nsw i32 %i.wt, %i.ww
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !4
  %i.xb = add nsw i32 %i.xa, %.2503667.1          ; 2 uses
  %i.xc = add nuw nsw i32 %.2460668.1, 4          ; 2 uses
  %i.xd = icmp slt i32 %i.xc, %i.uh
  br i1 %i.xd, label %bb.aj, label %.lr.ph679.1, !llvm.loop !185

.lr.ph679.1:                                      ; preds = %bb.aj
  %i.xe = load i32, ptr %i.ue, align 4, !tbaa !182
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph679.1
  %.11678.1 = phi ptr [ %i.wu, %.lr.ph679.1 ], [ %i.xo, %bb.ak ] ; 2 uses
  %.7446677.1 = phi ptr [ %i.wl, %.lr.ph679.1 ], [ %i.xf, %bb.ak ] ; 2 uses
  %.3461676.1 = phi i32 [ 0, %.lr.ph679.1 ], [ %i.xw, %bb.ak ]
  %.2497675.1 = phi i32 [ %.1496685.1, %.lr.ph679.1 ], [ %i.xv, %bb.ak ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.7446677.1, i64 2 ; 2 uses
  %i.xg = load i16, ptr %.7446677.1, align 2, !tbaa !162
  %i.xh = zext i16 %i.xg to i32
  %i.xi = mul nsw i32 %i.uu, %i.xh
  %i.xj = add nsw i32 %i.xi, %i.uj
  %i.xk = ashr i32 %i.xj, %i.uk
  %i.xl = add nsw i32 %i.xk, %i.uv
  %i.xm = call noundef i32 @llvm.smax.i32(i32 %i.xl, i32 0)
  %i.xn = call noundef i32 @llvm.smin.i32(i32 %i.xm, i32 %i.xe)
  %i.xo = getelementptr inbounds nuw i8, ptr %.11678.1, i64 2 ; 2 uses
  %i.xp = load i16, ptr %.11678.1, align 2, !tbaa !162
  %i.xq = zext i16 %i.xp to i32
  %i.xr = sub nsw i32 %i.xn, %i.xq
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !4
  %i.xv = add nsw i32 %i.xu, %.2497675.1          ; 2 uses
  %i.xw = add nuw nsw i32 %.3461676.1, 4          ; 2 uses
  %i.xx = icmp slt i32 %i.xw, %i.uh
  br i1 %i.xx, label %bb.ak, label %._crit_edge680.1, !llvm.loop !186

._crit_edge680.1:                                 ; preds = %bb.ak, %.preheader541.1
  %.2503.lcssa845.1 = phi i32 [ %.1502684.1, %.preheader541.1 ], [ %i.xb, %bb.ak ] ; 2 uses
  %.2485.lcssa822830843.1 = phi i32 [ %.1484687.1, %.preheader541.1 ], [ %i.vn, %bb.ak ] ; 2 uses
  %.2491.lcssa832841.1 = phi i32 [ %.1490686.1, %.preheader541.1 ], [ %i.wh, %bb.ak ] ; 2 uses
  %.2497.lcssa.1 = phi i32 [ %.1496685.1, %.preheader541.1 ], [ %i.xv, %bb.ak ] ; 2 uses
  %.7446.lcssa.1 = phi ptr [ %.3442689.1, %.preheader541.1 ], [ %i.xf, %bb.ak ]
  %.11.lcssa.1 = phi ptr [ %.7690.1, %.preheader541.1 ], [ %i.xo, %bb.ak ] ; 2 uses
  %i.xy = getelementptr inbounds [2 x i8], ptr %.7446.lcssa.1, i64 %i.un ; 2 uses
  %i.xz = add nuw nsw i32 %.3469688.1, 4          ; 2 uses
  %i.ya = icmp slt i32 %i.xz, %i.uf
  br i1 %i.ya, label %.preheader541.1, label %._crit_edge691.1, !llvm.loop !187

._crit_edge691.1:                                 ; preds = %._crit_edge680.1, %.preheader546.1
  %.1502.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2503.lcssa845.1, %._crit_edge680.1 ]
  %.1496.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2497.lcssa.1, %._crit_edge680.1 ]
  %.1490.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2491.lcssa832841.1, %._crit_edge680.1 ]
  %.1484.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2485.lcssa822830843.1, %._crit_edge680.1 ]
  %.3442.lcssa.1 = phi ptr [ %.2441700.1, %.preheader546.1 ], [ %i.xy, %._crit_edge680.1 ]
  %.7.lcssa.1 = phi ptr [ %.6701.1, %.preheader546.1 ], [ %.11.lcssa.1, %._crit_edge680.1 ]
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv786.1 ; 4 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !38
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv793 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !4
  %i.yf = add nsw i32 %i.ye, %.1484.lcssa.1
  store i32 %i.yf, ptr %i.yd, align 4, !tbaa !4
  %i.yg = getelementptr i8, ptr %i.yb, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !38
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv793 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !4
  %i.yk = add nsw i32 %i.yj, %.1490.lcssa.1
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !4
  %i.yl = getelementptr i8, ptr %i.yb, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !38
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv793 ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !4
  %i.yp = add nsw i32 %i.yo, %.1502.lcssa.1
  store i32 %i.yp, ptr %i.yn, align 4, !tbaa !4
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv786.1, 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !38
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv793 ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !4
  %i.yu = add nsw i32 %i.yt, %.1496.lcssa.1
  store i32 %i.yu, ptr %i.ys, align 4, !tbaa !4
  %i.yv = add nuw nsw i32 %.1480698.1, 1          ; 2 uses
  %exitcond789.not.1 = icmp eq i32 %i.yv, 4
  br i1 %exitcond789.not.1, label %.loopexit, label %.preheader546.1, !llvm.loop !188

.preheader549:                                    ; preds = %bb.y, %bb.am
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %bb.am ], [ 0, %bb.y ] ; 2 uses
  %.12579 = phi ptr [ %scevgep, %bb.am ], [ @SetupFastFullPelSearch.orig_pels, %bb.y ] ; 2 uses
  %.8447578 = phi ptr [ %scevgep767, %bb.am ], [ %i.ji, %bb.y ] ; 2 uses
  %.2481576 = phi i32 [ %i.afq, %bb.am ], [ 0, %bb.y ]
  %i.yw = load i32, ptr @img_padded_size_x, align 4, !tbaa !4
  %i.yx = sext i32 %i.yw to i64                   ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.preheader549, %bb.al
  %.13575 = phi ptr [ %.12579, %.preheader549 ], [ %i.aeu, %bb.al ] ; 17 uses
  %.9448574 = phi ptr [ %.8447578, %.preheader549 ], [ %i.afb, %bb.al ] ; 17 uses
  %.4470573 = phi i32 [ 0, %.preheader549 ], [ %i.afc, %bb.al ]
  %.3486572 = phi i32 [ 0, %.preheader549 ], [ %i.aal, %bb.al ]
  %.3492571 = phi i32 [ 0, %.preheader549 ], [ %i.abz, %bb.al ]
  %.3498570 = phi i32 [ 0, %.preheader549 ], [ %i.afa, %bb.al ]
  %.3504569 = phi i32 [ 0, %.preheader549 ], [ %i.adn, %bb.al ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.9448574, i64 2
  %i.yz = load i16, ptr %.9448574, align 2, !tbaa !162
  %i.za = zext i16 %i.yz to i64
  %i.zb = getelementptr inbounds nuw i8, ptr %.13575, i64 2
  %i.zc = load i16, ptr %.13575, align 2, !tbaa !162
  %i.zd = zext i16 %i.zc to i64
  %i.ze = sub nsw i64 %i.za, %i.zd
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !4
  %i.zh = add nsw i32 %i.zg, %.3486572
  %i.zi = getelementptr inbounds nuw i8, ptr %.9448574, i64 4
  %i.zj = load i16, ptr %i.yy, align 2, !tbaa !162
  %i.zk = zext i16 %i.zj to i64
  %i.zl = getelementptr inbounds nuw i8, ptr %.13575, i64 4
  %i.zm = load i16, ptr %i.zb, align 2, !tbaa !162
  %i.zn = zext i16 %i.zm to i64
  %i.zo = sub nsw i64 %i.zk, %i.zn
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !4
  %i.zr = add nsw i32 %i.zh, %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %.9448574, i64 6
  %i.zt = load i16, ptr %i.zi, align 2, !tbaa !162
  %i.zu = zext i16 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr %.13575, i64 6
  %i.zw = load i16, ptr %i.zl, align 2, !tbaa !162
  %i.zx = zext i16 %i.zw to i64
  %i.zy = sub nsw i64 %i.zu, %i.zx
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !4
  %i.aab = add nsw i32 %i.zr, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %.9448574, i64 8
  %i.aad = load i16, ptr %i.zs, align 2, !tbaa !162
  %i.aae = zext i16 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %.13575, i64 8
  %i.aag = load i16, ptr %i.zv, align 2, !tbaa !162
  %i.aah = zext i16 %i.aag to i64
  %i.aai = sub nsw i64 %i.aae, %i.aah
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !4
  %i.aal = add nsw i32 %i.aab, %i.aak             ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.9448574, i64 10
  %i.aan = load i16, ptr %i.aac, align 2, !tbaa !162
  %i.aao = zext i16 %i.aan to i64
  %i.aap = getelementptr inbounds nuw i8, ptr %.13575, i64 10
  %i.aaq = load i16, ptr %i.aaf, align 2, !tbaa !162
  %i.aar = zext i16 %i.aaq to i64
  %i.aas = sub nsw i64 %i.aao, %i.aar
  %i.aat = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !4
  %i.aav = add nsw i32 %i.aau, %.3492571
  %i.aaw = getelementptr inbounds nuw i8, ptr %.9448574, i64 12
  %i.aax = load i16, ptr %i.aam, align 2, !tbaa !162
  %i.aay = zext i16 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %.13575, i64 12
  %i.aba = load i16, ptr %i.aap, align 2, !tbaa !162
  %i.abb = zext i16 %i.aba to i64
  %i.abc = sub nsw i64 %i.aay, %i.abb
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abc
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !4
  %i.abf = add nsw i32 %i.aav, %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %.9448574, i64 14
  %i.abh = load i16, ptr %i.aaw, align 2, !tbaa !162
  %i.abi = zext i16 %i.abh to i64
  %i.abj = getelementptr inbounds nuw i8, ptr %.13575, i64 14
  %i.abk = load i16, ptr %i.aaz, align 2, !tbaa !162
  %i.abl = zext i16 %i.abk to i64
  %i.abm = sub nsw i64 %i.abi, %i.abl
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !4
  %i.abp = add nsw i32 %i.abf, %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %.9448574, i64 16
  %i.abr = load i16, ptr %i.abg, align 2, !tbaa !162
  %i.abs = zext i16 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %.13575, i64 16
  %i.abu = load i16, ptr %i.abj, align 2, !tbaa !162
  %i.abv = zext i16 %i.abu to i64
  %i.abw = sub nsw i64 %i.abs, %i.abv
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abw
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !4
  %i.abz = add nsw i32 %i.abp, %i.aby             ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.9448574, i64 18
  %i.acb = load i16, ptr %i.abq, align 2, !tbaa !162
  %i.acc = zext i16 %i.acb to i64
  %i.acd = getelementptr inbounds nuw i8, ptr %.13575, i64 18
  %i.ace = load i16, ptr %i.abt, align 2, !tbaa !162
  %i.acf = zext i16 %i.ace to i64
  %i.acg = sub nsw i64 %i.acc, %i.acf
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !4
  %i.acj = add nsw i32 %i.aci, %.3504569
  %i.ack = getelementptr inbounds nuw i8, ptr %.9448574, i64 20
  %i.acl = load i16, ptr %i.aca, align 2, !tbaa !162
  %i.acm = zext i16 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr %.13575, i64 20
  %i.aco = load i16, ptr %i.acd, align 2, !tbaa !162
  %i.acp = zext i16 %i.aco to i64
  %i.acq = sub nsw i64 %i.acm, %i.acp
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acq
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !4
  %i.act = add nsw i32 %i.acj, %i.acs
  %i.acu = getelementptr inbounds nuw i8, ptr %.9448574, i64 22
  %i.acv = load i16, ptr %i.ack, align 2, !tbaa !162
  %i.acw = zext i16 %i.acv to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %.13575, i64 22
  %i.acy = load i16, ptr %i.acn, align 2, !tbaa !162
  %i.acz = zext i16 %i.acy to i64
  %i.ada = sub nsw i64 %i.acw, %i.acz
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !4
  %i.add = add nsw i32 %i.act, %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %.9448574, i64 24
  %i.adf = load i16, ptr %i.acu, align 2, !tbaa !162
  %i.adg = zext i16 %i.adf to i64
  %i.adh = getelementptr inbounds nuw i8, ptr %.13575, i64 24
  %i.adi = load i16, ptr %i.acx, align 2, !tbaa !162
  %i.adj = zext i16 %i.adi to i64
  %i.adk = sub nsw i64 %i.adg, %i.adj
  %i.adl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adk
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !4
  %i.adn = add nsw i32 %i.add, %i.adm             ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.9448574, i64 26
  %i.adp = load i16, ptr %i.ade, align 2, !tbaa !162
  %i.adq = zext i16 %i.adp to i64
  %i.adr = getelementptr inbounds nuw i8, ptr %.13575, i64 26
  %i.ads = load i16, ptr %i.adh, align 2, !tbaa !162
  %i.adt = zext i16 %i.ads to i64
  %i.adu = sub nsw i64 %i.adq, %i.adt
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adu
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !4
  %i.adx = add nsw i32 %i.adw, %.3498570
  %i.ady = getelementptr inbounds nuw i8, ptr %.9448574, i64 28
  %i.adz = load i16, ptr %i.ado, align 2, !tbaa !162
  %i.aea = zext i16 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw i8, ptr %.13575, i64 28
  %i.aec = load i16, ptr %i.adr, align 2, !tbaa !162
  %i.aed = zext i16 %i.aec to i64
  %i.aee = sub nsw i64 %i.aea, %i.aed
  %i.aef = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aee
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !4
  %i.aeh = add nsw i32 %i.adx, %i.aeg
  %i.aei = getelementptr inbounds nuw i8, ptr %.9448574, i64 30
  %i.aej = load i16, ptr %i.ady, align 2, !tbaa !162
  %i.aek = zext i16 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr %.13575, i64 30
  %i.aem = load i16, ptr %i.aeb, align 2, !tbaa !162
  %i.aen = zext i16 %i.aem to i64
  %i.aeo = sub nsw i64 %i.aek, %i.aen
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aeo
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !4
  %i.aer = add nsw i32 %i.aeh, %i.aeq
  %i.aes = load i16, ptr %i.aei, align 2, !tbaa !162
  %i.aet = zext i16 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %.13575, i64 32
  %i.aev = load i16, ptr %i.ael, align 2, !tbaa !162
  %i.aew = zext i16 %i.aev to i64
  %i.aex = sub nsw i64 %i.aet, %i.aew
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !4
  %i.afa = add nsw i32 %i.aer, %i.aez             ; 2 uses
  %i.afb = getelementptr [2 x i8], ptr %.9448574, i64 %i.yx
  %i.afc = add nuw nsw i32 %.4470573, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.afc, 4
  br i1 %exitcond.not, label %bb.am, label %bb.al, !llvm.loop !189

bb.am:                                            ; preds = %bb.al
  %scevgep = getelementptr i8, ptr %.12579, i64 128 ; 2 uses
  %i.afd = shl nsw i64 %i.yx, 3
  %scevgep767 = getelementptr i8, ptr %.8447578, i64 %i.afd
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv768 ; 4 uses
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !38
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv793
  store i32 %i.aal, ptr %i.afg, align 4, !tbaa !4
  %i.afh = getelementptr i8, ptr %i.afe, i64 8
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !38
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %indvars.iv793
  store i32 %i.abz, ptr %i.afj, align 4, !tbaa !4
  %i.afk = getelementptr i8, ptr %i.afe, i64 16
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !38
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %indvars.iv793
  store i32 %i.adn, ptr %i.afm, align 4, !tbaa !4
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 4
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afe, i64 24
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !38
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv793
  store i32 %i.afa, ptr %i.afp, align 4, !tbaa !4
  %i.afq = add nuw nsw i32 %.2481576, 1           ; 2 uses
  %exitcond771.not = icmp eq i32 %i.afq, 4
  br i1 %exitcond771.not, label %bb.an, label %.preheader549, !llvm.loop !190

bb.an:                                            ; preds = %bb.am
  %i.afr = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not528 = icmp eq i32 %i.afr, 0
  br i1 %.not528, label %.loopexit, label %.preheader551.preheader

.preheader551.preheader:                          ; preds = %bb.an
  %i.afs = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.aft = sext i32 %i.afs to i64
  %i.afu = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.aft
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !8
  %i.afw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !155
  %i.afx = call ptr %i.afv(ptr noundef %i.afw, i32 noundef %i.ix, i32 noundef %i.iz) #12
  %i.afy = load ptr, ptr @img, align 8, !tbaa !8  ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 15548
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 15544
  br label %.preheader547

.preheader547:                                    ; preds = %.preheader551.preheader, %._crit_edge621
  %indvars.iv772 = phi i64 [ 0, %.preheader551.preheader ], [ %indvars.iv.next773, %._crit_edge621 ] ; 2 uses
  %.15636 = phi ptr [ %scevgep, %.preheader551.preheader ], [ %.16.lcssa, %._crit_edge621 ] ; 4 uses
  %.10449635 = phi ptr [ %i.afx, %.preheader551.preheader ], [ %.11450.lcssa, %._crit_edge621 ] ; 4 uses
  %.3482633 = phi i32 [ 0, %.preheader551.preheader ], [ %i.apr, %._crit_edge621 ]
  %i.agb = load i32, ptr %i.afz, align 4, !tbaa !171 ; 4 uses
  %i.agc = icmp sgt i32 %i.agb, 0
  br i1 %i.agc, label %.preheader545.lr.ph, label %._crit_edge621

.preheader545.lr.ph:                              ; preds = %.preheader547
  %i.agd = load i32, ptr %i.aga, align 8, !tbaa !173 ; 7 uses
  %i.age = icmp sgt i32 %i.agd, 0
  %i.agf = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4
  %i.agg = sub nsw i32 %i.agf, %i.agd
  %i.agh = sext i32 %i.agg to i64                 ; 10 uses
  br i1 %i.age, label %.preheader545.us.preheader, label %._crit_edge610.preheader

._crit_edge610.preheader:                         ; preds = %.preheader545.lr.ph
  %i.agi = add nsw i32 %i.agb, -1
  %i.agj = lshr i32 %i.agi, 2
  %i.agk = add nuw nsw i32 %i.agj, 1              ; 2 uses
  %xtraiter = and i32 %i.agk, 7                   ; 3 uses
  %i.agl = icmp ult i32 %i.agb, 29
  br i1 %i.agl, label %._crit_edge610.epil.preheader, label %._crit_edge610.preheader.new

._crit_edge610.preheader.new:                     ; preds = %._crit_edge610.preheader
  %unroll_iter = and i32 %i.agk, 2147483640
  br label %._crit_edge610

.preheader545.us.preheader:                       ; preds = %.preheader545.lr.ph
  %i.agm = add nsw i32 %i.agd, -1
  %i.agn = lshr i32 %i.agm, 2
  %i.ago = add nuw nsw i32 %i.agn, 1              ; 8 uses
  %xtraiter1025 = and i32 %i.ago, 3               ; 3 uses
  %i.agp = icmp ult i32 %i.agd, 13
  %unroll_iter1032 = and i32 %i.ago, 2147483644
  %lcmp.mod1027.not = icmp eq i32 %xtraiter1025, 0
  %lcmp.mod1031 = icmp ne i32 %xtraiter1025, 0
  %xtraiter1038 = and i32 %i.ago, 3               ; 3 uses
  %i.agq = icmp ult i32 %i.agd, 13
  %unroll_iter1045 = and i32 %i.ago, 2147483644
  %lcmp.mod1040.not = icmp eq i32 %xtraiter1038, 0
  %lcmp.mod1044 = icmp ne i32 %xtraiter1038, 0
  %xtraiter1052 = and i32 %i.ago, 3               ; 3 uses
  %i.agr = icmp ult i32 %i.agd, 13
  %unroll_iter1059 = and i32 %i.ago, 2147483644
  %lcmp.mod1054.not = icmp eq i32 %xtraiter1052, 0
  %lcmp.mod1058 = icmp ne i32 %xtraiter1052, 0
  %xtraiter1066 = and i32 %i.ago, 3               ; 3 uses
  %i.ags = icmp ult i32 %i.agd, 13
  %unroll_iter1073 = and i32 %i.ago, 2147483644
  %lcmp.mod1068.not = icmp eq i32 %xtraiter1066, 0
  %lcmp.mod1072 = icmp ne i32 %xtraiter1066, 0
  br label %.preheader545.us

.preheader545.us:                                 ; preds = %.preheader545.us.preheader, %._crit_edge610.us
  %.16620.us = phi ptr [ %.lcssa980, %._crit_edge610.us ], [ %.15636, %.preheader545.us.preheader ] ; 2 uses
  %.11450619.us = phi ptr [ %i.ahd, %._crit_edge610.us ], [ %.10449635, %.preheader545.us.preheader ] ; 2 uses
  %.5471618.us = phi i32 [ %i.ahe, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ]
  %.4487617.us = phi i32 [ %.lcssa970, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4493616.us = phi i32 [ %.lcssa973, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4499615.us = phi i32 [ %.lcssa979, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4505614.us = phi i32 [ %.lcssa976, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  br i1 %i.agp, label %.epil.preheader, label %.preheader545.us.new

._crit_edge610.us.unr-lcssa:                      ; preds = %.lr.ph609.us
  br i1 %lcmp.mod1068.not, label %._crit_edge610.us, label %.lr.ph609.us.epil.preheader

.lr.ph609.us.epil.preheader:                      ; preds = %._crit_edge610.us.unr-lcssa, %.lr.ph609.us.preheader
  %.20608.us.epil.init = phi ptr [ %.lcssa977, %.lr.ph609.us.preheader ], [ %i.ain, %._crit_edge610.us.unr-lcssa ]
  %.15454607.us.epil.init = phi ptr [ %.lcssa978, %.lr.ph609.us.preheader ], [ %i.aik, %._crit_edge610.us.unr-lcssa ]
  %.5500605.us.epil.init = phi i32 [ %.4499615.us, %.lr.ph609.us.preheader ], [ %i.ait, %._crit_edge610.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1072)
  br label %.lr.ph609.us.epil

.lr.ph609.us.epil:                                ; preds = %.lr.ph609.us.epil, %.lr.ph609.us.epil.preheader
  %.20608.us.epil = phi ptr [ %i.agw, %.lr.ph609.us.epil ], [ %.20608.us.epil.init, %.lr.ph609.us.epil.preheader ] ; 2 uses
  %.15454607.us.epil = phi ptr [ %i.agt, %.lr.ph609.us.epil ], [ %.15454607.us.epil.init, %.lr.ph609.us.epil.preheader ] ; 2 uses
  %.5500605.us.epil = phi i32 [ %i.ahc, %.lr.ph609.us.epil ], [ %.5500605.us.epil.init, %.lr.ph609.us.epil.preheader ]
  %epil.iter1067 = phi i32 [ %epil.iter1067.next, %.lr.ph609.us.epil ], [ 0, %.lr.ph609.us.epil.preheader ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.15454607.us.epil, i64 2 ; 2 uses
  %i.agu = load i16, ptr %.15454607.us.epil, align 2, !tbaa !162
  %i.agv = zext i16 %i.agu to i64
  %i.agw = getelementptr inbounds nuw i8, ptr %.20608.us.epil, i64 2 ; 2 uses
  %i.agx = load i16, ptr %.20608.us.epil, align 2, !tbaa !162
  %i.agy = zext i16 %i.agx to i64
  %i.agz = sub nsw i64 %i.agv, %i.agy
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !4
  %i.ahc = add nsw i32 %i.ahb, %.5500605.us.epil  ; 2 uses
  %epil.iter1067.next = add i32 %epil.iter1067, 1 ; 2 uses
  %epil.iter1067.cmp.not = icmp eq i32 %epil.iter1067.next, %xtraiter1066
  br i1 %epil.iter1067.cmp.not, label %._crit_edge610.us, label %.lr.ph609.us.epil, !llvm.loop !191

._crit_edge610.us:                                ; preds = %.lr.ph609.us.epil, %._crit_edge610.us.unr-lcssa
  %.lcssa981 = phi ptr [ %i.aik, %._crit_edge610.us.unr-lcssa ], [ %i.agt, %.lr.ph609.us.epil ]
  %.lcssa980 = phi ptr [ %i.ain, %._crit_edge610.us.unr-lcssa ], [ %i.agw, %.lr.ph609.us.epil ] ; 2 uses
  %.lcssa979 = phi i32 [ %i.ait, %._crit_edge610.us.unr-lcssa ], [ %i.ahc, %.lr.ph609.us.epil ] ; 2 uses
  %i.ahd = getelementptr inbounds [2 x i8], ptr %.lcssa981, i64 %i.agh ; 2 uses
  %i.ahe = add nuw nsw i32 %.5471618.us, 4        ; 2 uses
  %i.ahf = icmp slt i32 %i.ahe, %i.agb
  br i1 %i.ahf, label %.preheader545.us, label %._crit_edge621, !llvm.loop !192

.lr.ph609.us:                                     ; preds = %.lr.ph609.us.preheader, %.lr.ph609.us
  %.20608.us = phi ptr [ %i.ain, %.lr.ph609.us ], [ %.lcssa977, %.lr.ph609.us.preheader ] ; 5 uses
  %.15454607.us = phi ptr [ %i.aik, %.lr.ph609.us ], [ %.lcssa978, %.lr.ph609.us.preheader ] ; 5 uses
  %.5500605.us = phi i32 [ %i.ait, %.lr.ph609.us ], [ %.4499615.us, %.lr.ph609.us.preheader ]
  %niter1074 = phi i32 [ %niter1074.next.3, %.lr.ph609.us ], [ 0, %.lr.ph609.us.preheader ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 2
  %i.ahh = load i16, ptr %.15454607.us, align 2, !tbaa !162
  %i.ahi = zext i16 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %.20608.us, i64 2
  %i.ahk = load i16, ptr %.20608.us, align 2, !tbaa !162
  %i.ahl = zext i16 %i.ahk to i64
  %i.ahm = sub nsw i64 %i.ahi, %i.ahl
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ahm
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !4
  %i.ahp = add nsw i32 %i.aho, %.5500605.us
  %i.ahq = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 4
  %i.ahr = load i16, ptr %i.ahg, align 2, !tbaa !162
  %i.ahs = zext i16 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw i8, ptr %.20608.us, i64 4
  %i.ahu = load i16, ptr %i.ahj, align 2, !tbaa !162
  %i.ahv = zext i16 %i.ahu to i64
  %i.ahw = sub nsw i64 %i.ahs, %i.ahv
  %i.ahx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ahw
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !4
  %i.ahz = add nsw i32 %i.ahy, %i.ahp
  %i.aia = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 6
  %i.aib = load i16, ptr %i.ahq, align 2, !tbaa !162
  %i.aic = zext i16 %i.aib to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %.20608.us, i64 6
  %i.aie = load i16, ptr %i.aht, align 2, !tbaa !162
  %i.aif = zext i16 %i.aie to i64
  %i.aig = sub nsw i64 %i.aic, %i.aif
  %i.aih = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aig
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !4
  %i.aij = add nsw i32 %i.aii, %i.ahz
  %i.aik = getelementptr inbounds nuw i8, ptr %.15454607.us, i64 8 ; 3 uses
  %i.ail = load i16, ptr %i.aia, align 2, !tbaa !162
  %i.aim = zext i16 %i.ail to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %.20608.us, i64 8 ; 3 uses
  %i.aio = load i16, ptr %i.aid, align 2, !tbaa !162
  %i.aip = zext i16 %i.aio to i64
  %i.aiq = sub nsw i64 %i.aim, %i.aip
  %i.air = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aiq
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !4
  %i.ait = add nsw i32 %i.ais, %i.aij             ; 3 uses
  %niter1074.next.3 = add nuw nsw i32 %niter1074, 4 ; 2 uses
  %niter1074.ncmp.3.not = icmp eq i32 %niter1074.next.3, %unroll_iter1073
  br i1 %niter1074.ncmp.3.not, label %._crit_edge610.us.unr-lcssa, label %.lr.ph609.us, !llvm.loop !193

.lr.ph601.us:                                     ; preds = %.lr.ph601.us.preheader, %.lr.ph601.us
  %.19600.us = phi ptr [ %i.akb, %.lr.ph601.us ], [ %.lcssa974, %.lr.ph601.us.preheader ] ; 5 uses
  %.14453599.us = phi ptr [ %i.ajy, %.lr.ph601.us ], [ %.lcssa975, %.lr.ph601.us.preheader ] ; 5 uses
  %.5506597.us = phi i32 [ %i.akh, %.lr.ph601.us ], [ %.4505614.us, %.lr.ph601.us.preheader ]
  %niter1060 = phi i32 [ %niter1060.next.3, %.lr.ph601.us ], [ 0, %.lr.ph601.us.preheader ]
  %i.aiu = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 2
  %i.aiv = load i16, ptr %.14453599.us, align 2, !tbaa !162
  %i.aiw = zext i16 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw i8, ptr %.19600.us, i64 2
  %i.aiy = load i16, ptr %.19600.us, align 2, !tbaa !162
  %i.aiz = zext i16 %i.aiy to i64
  %i.aja = sub nsw i64 %i.aiw, %i.aiz
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aja
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !4
  %i.ajd = add nsw i32 %i.ajc, %.5506597.us
  %i.aje = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 4
  %i.ajf = load i16, ptr %i.aiu, align 2, !tbaa !162
  %i.ajg = zext i16 %i.ajf to i64
  %i.ajh = getelementptr inbounds nuw i8, ptr %.19600.us, i64 4
  %i.aji = load i16, ptr %i.aix, align 2, !tbaa !162
  %i.ajj = zext i16 %i.aji to i64
  %i.ajk = sub nsw i64 %i.ajg, %i.ajj
  %i.ajl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !4
  %i.ajn = add nsw i32 %i.ajm, %i.ajd
  %i.ajo = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 6
  %i.ajp = load i16, ptr %i.aje, align 2, !tbaa !162
  %i.ajq = zext i16 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw i8, ptr %.19600.us, i64 6
  %i.ajs = load i16, ptr %i.ajh, align 2, !tbaa !162
  %i.ajt = zext i16 %i.ajs to i64
  %i.aju = sub nsw i64 %i.ajq, %i.ajt
  %i.ajv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aju
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !4
  %i.ajx = add nsw i32 %i.ajw, %i.ajn
  %i.ajy = getelementptr inbounds nuw i8, ptr %.14453599.us, i64 8 ; 3 uses
  %i.ajz = load i16, ptr %i.ajo, align 2, !tbaa !162
  %i.aka = zext i16 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw i8, ptr %.19600.us, i64 8 ; 3 uses
  %i.akc = load i16, ptr %i.ajr, align 2, !tbaa !162
  %i.akd = zext i16 %i.akc to i64
  %i.ake = sub nsw i64 %i.aka, %i.akd
  %i.akf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ake
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !4
  %i.akh = add nsw i32 %i.akg, %i.ajx             ; 3 uses
  %niter1060.next.3 = add nuw nsw i32 %niter1060, 4 ; 2 uses
  %niter1060.ncmp.3.not = icmp eq i32 %niter1060.next.3, %unroll_iter1059
  br i1 %niter1060.ncmp.3.not, label %.lr.ph609.us.preheader.unr-lcssa, label %.lr.ph601.us, !llvm.loop !194

.lr.ph609.us.preheader.unr-lcssa:                 ; preds = %.lr.ph601.us
  br i1 %lcmp.mod1054.not, label %.lr.ph609.us.preheader, label %.lr.ph601.us.epil.preheader

.lr.ph601.us.epil.preheader:                      ; preds = %.lr.ph609.us.preheader.unr-lcssa, %.lr.ph601.us.preheader
  %.19600.us.epil.init = phi ptr [ %.lcssa974, %.lr.ph601.us.preheader ], [ %i.akb, %.lr.ph609.us.preheader.unr-lcssa ]
  %.14453599.us.epil.init = phi ptr [ %.lcssa975, %.lr.ph601.us.preheader ], [ %i.ajy, %.lr.ph609.us.preheader.unr-lcssa ]
  %.5506597.us.epil.init = phi i32 [ %.4505614.us, %.lr.ph601.us.preheader ], [ %i.akh, %.lr.ph609.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1058)
  br label %.lr.ph601.us.epil

.lr.ph601.us.epil:                                ; preds = %.lr.ph601.us.epil, %.lr.ph601.us.epil.preheader
  %.19600.us.epil = phi ptr [ %i.akl, %.lr.ph601.us.epil ], [ %.19600.us.epil.init, %.lr.ph601.us.epil.preheader ] ; 2 uses
  %.14453599.us.epil = phi ptr [ %i.aki, %.lr.ph601.us.epil ], [ %.14453599.us.epil.init, %.lr.ph601.us.epil.preheader ] ; 2 uses
  %.5506597.us.epil = phi i32 [ %i.akr, %.lr.ph601.us.epil ], [ %.5506597.us.epil.init, %.lr.ph601.us.epil.preheader ]
  %epil.iter1053 = phi i32 [ %epil.iter1053.next, %.lr.ph601.us.epil ], [ 0, %.lr.ph601.us.epil.preheader ]
  %i.aki = getelementptr inbounds nuw i8, ptr %.14453599.us.epil, i64 2 ; 2 uses
  %i.akj = load i16, ptr %.14453599.us.epil, align 2, !tbaa !162
  %i.akk = zext i16 %i.akj to i64
  %i.akl = getelementptr inbounds nuw i8, ptr %.19600.us.epil, i64 2 ; 2 uses
  %i.akm = load i16, ptr %.19600.us.epil, align 2, !tbaa !162
  %i.akn = zext i16 %i.akm to i64
  %i.ako = sub nsw i64 %i.akk, %i.akn
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ako
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !4
  %i.akr = add nsw i32 %i.akq, %.5506597.us.epil  ; 2 uses
  %epil.iter1053.next = add i32 %epil.iter1053, 1 ; 2 uses
  %epil.iter1053.cmp.not = icmp eq i32 %epil.iter1053.next, %xtraiter1052
  br i1 %epil.iter1053.cmp.not, label %.lr.ph609.us.preheader, label %.lr.ph601.us.epil, !llvm.loop !195

.lr.ph609.us.preheader:                           ; preds = %.lr.ph601.us.epil, %.lr.ph609.us.preheader.unr-lcssa
  %.lcssa978 = phi ptr [ %i.ajy, %.lr.ph609.us.preheader.unr-lcssa ], [ %i.aki, %.lr.ph601.us.epil ] ; 2 uses
  %.lcssa977 = phi ptr [ %i.akb, %.lr.ph609.us.preheader.unr-lcssa ], [ %i.akl, %.lr.ph601.us.epil ] ; 2 uses
  %.lcssa976 = phi i32 [ %i.akh, %.lr.ph609.us.preheader.unr-lcssa ], [ %i.akr, %.lr.ph601.us.epil ] ; 2 uses
  br i1 %i.ags, label %.lr.ph609.us.epil.preheader, label %.lr.ph609.us

.lr.ph593.us:                                     ; preds = %.lr.ph593.us.preheader, %.lr.ph593.us
  %.18592.us = phi ptr [ %i.alz, %.lr.ph593.us ], [ %.lcssa971, %.lr.ph593.us.preheader ] ; 5 uses
  %.13452591.us = phi ptr [ %i.alw, %.lr.ph593.us ], [ %.lcssa972, %.lr.ph593.us.preheader ] ; 5 uses
  %.5494589.us = phi i32 [ %i.amf, %.lr.ph593.us ], [ %.4493616.us, %.lr.ph593.us.preheader ]
  %niter1046 = phi i32 [ %niter1046.next.3, %.lr.ph593.us ], [ 0, %.lr.ph593.us.preheader ]
  %i.aks = getelementptr inbounds nuw i8, ptr %.13452591.us, i64 2
  %i.akt = load i16, ptr %.13452591.us, align 2, !tbaa !162
  %i.aku = zext i16 %i.akt to i64
  %i.akv = getelementptr inbounds nuw i8, ptr %.18592.us, i64 2
  %i.akw = load i16, ptr %.18592.us, align 2, !tbaa !162
  %i.akx = zext i16 %i.akw to i64
  %i.aky = sub nsw i64 %i.aku, %i.akx
  %i.akz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aky
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !4
  %i.alb = add nsw i32 %i.ala, %.5494589.us
  %i.alc = getelementptr inbounds nuw i8, ptr %.13452591.us, i64 4
  %i.ald = load i16, ptr %i.aks, align 2, !tbaa !162
  %i.ale = zext i16 %i.ald to i64
  %i.alf = getelementptr inbounds nuw i8, ptr %.18592.us, i64 4
  %i.alg = load i16, ptr %i.akv, align 2, !tbaa !162
  %i.alh = zext i16 %i.alg to i64
  %i.ali = sub nsw i64 %i.ale, %i.alh
  %i.alj = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ali
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !4
  %i.all = add nsw i32 %i.alk, %i.alb
  %i.alm = getelementptr inbounds nuw i8, ptr %.13452591.us, i64 6
  %i.aln = load i16, ptr %i.alc, align 2, !tbaa !162
  %i.alo = zext i16 %i.aln to i64
  %i.alp = getelementptr inbounds nuw i8, ptr %.18592.us, i64 6
  %i.alq = load i16, ptr %i.alf, align 2, !tbaa !162
  %i.alr = zext i16 %i.alq to i64
  %i.als = sub nsw i64 %i.alo, %i.alr
  %i.alt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.als
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !4
  %i.alv = add nsw i32 %i.alu, %i.all
  %i.alw = getelementptr inbounds nuw i8, ptr %.13452591.us, i64 8 ; 3 uses
  %i.alx = load i16, ptr %i.alm, align 2, !tbaa !162
  %i.aly = zext i16 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %.18592.us, i64 8 ; 3 uses
  %i.ama = load i16, ptr %i.alp, align 2, !tbaa !162
  %i.amb = zext i16 %i.ama to i64
  %i.amc = sub nsw i64 %i.aly, %i.amb
  %i.amd = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.amc
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !4
  %i.amf = add nsw i32 %i.ame, %i.alv             ; 3 uses
  %niter1046.next.3 = add nuw nsw i32 %niter1046, 4 ; 2 uses
  %niter1046.ncmp.3.not = icmp eq i32 %niter1046.next.3, %unroll_iter1045
  br i1 %niter1046.ncmp.3.not, label %.lr.ph601.us.preheader.unr-lcssa, label %.lr.ph593.us, !llvm.loop !196

.lr.ph601.us.preheader.unr-lcssa:                 ; preds = %.lr.ph593.us
  br i1 %lcmp.mod1040.not, label %.lr.ph601.us.preheader, label %.lr.ph593.us.epil.preheader

.lr.ph593.us.epil.preheader:                      ; preds = %.lr.ph601.us.preheader.unr-lcssa, %.lr.ph593.us.preheader
  %.18592.us.epil.init = phi ptr [ %.lcssa971, %.lr.ph593.us.preheader ], [ %i.alz, %.lr.ph601.us.preheader.unr-lcssa ]
  %.13452591.us.epil.init = phi ptr [ %.lcssa972, %.lr.ph593.us.preheader ], [ %i.alw, %.lr.ph601.us.preheader.unr-lcssa ]
  %.5494589.us.epil.init = phi i32 [ %.4493616.us, %.lr.ph593.us.preheader ], [ %i.amf, %.lr.ph601.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1044)
  br label %.lr.ph593.us.epil

.lr.ph593.us.epil:                                ; preds = %.lr.ph593.us.epil, %.lr.ph593.us.epil.preheader
  %.18592.us.epil = phi ptr [ %i.amj, %.lr.ph593.us.epil ], [ %.18592.us.epil.init, %.lr.ph593.us.epil.preheader ] ; 2 uses
  %.13452591.us.epil = phi ptr [ %i.amg, %.lr.ph593.us.epil ], [ %.13452591.us.epil.init, %.lr.ph593.us.epil.preheader ] ; 2 uses
  %.5494589.us.epil = phi i32 [ %i.amp, %.lr.ph593.us.epil ], [ %.5494589.us.epil.init, %.lr.ph593.us.epil.preheader ]
  %epil.iter1039 = phi i32 [ %epil.iter1039.next, %.lr.ph593.us.epil ], [ 0, %.lr.ph593.us.epil.preheader ]
  %i.amg = getelementptr inbounds nuw i8, ptr %.13452591.us.epil, i64 2 ; 2 uses
  %i.amh = load i16, ptr %.13452591.us.epil, align 2, !tbaa !162
  %i.ami = zext i16 %i.amh to i64
  %i.amj = getelementptr inbounds nuw i8, ptr %.18592.us.epil, i64 2 ; 2 uses
  %i.amk = load i16, ptr %.18592.us.epil, align 2, !tbaa !162
  %i.aml = zext i16 %i.amk to i64
  %i.amm = sub nsw i64 %i.ami, %i.aml
  %i.amn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.amm
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !4
  %i.amp = add nsw i32 %i.amo, %.5494589.us.epil  ; 2 uses
  %epil.iter1039.next = add i32 %epil.iter1039, 1 ; 2 uses
  %epil.iter1039.cmp.not = icmp eq i32 %epil.iter1039.next, %xtraiter1038
  br i1 %epil.iter1039.cmp.not, label %.lr.ph601.us.preheader, label %.lr.ph593.us.epil, !llvm.loop !197

.lr.ph601.us.preheader:                           ; preds = %.lr.ph593.us.epil, %.lr.ph601.us.preheader.unr-lcssa
  %.lcssa975 = phi ptr [ %i.alw, %.lr.ph601.us.preheader.unr-lcssa ], [ %i.amg, %.lr.ph593.us.epil ] ; 2 uses
  %.lcssa974 = phi ptr [ %i.alz, %.lr.ph601.us.preheader.unr-lcssa ], [ %i.amj, %.lr.ph593.us.epil ] ; 2 uses
  %.lcssa973 = phi i32 [ %i.amf, %.lr.ph601.us.preheader.unr-lcssa ], [ %i.amp, %.lr.ph593.us.epil ] ; 2 uses
  br i1 %i.agr, label %.lr.ph601.us.epil.preheader, label %.lr.ph601.us

.preheader545.us.new:                             ; preds = %.preheader545.us, %.preheader545.us.new
  %.17583.us = phi ptr [ %i.anx, %.preheader545.us.new ], [ %.16620.us, %.preheader545.us ] ; 5 uses
  %.12451582.us = phi ptr [ %i.anu, %.preheader545.us.new ], [ %.11450619.us, %.preheader545.us ] ; 5 uses
  %.5488580.us = phi i32 [ %i.aod, %.preheader545.us.new ], [ %.4487617.us, %.preheader545.us ]
  %niter1033 = phi i32 [ %niter1033.next.3, %.preheader545.us.new ], [ 0, %.preheader545.us ]
  %i.amq = getelementptr inbounds nuw i8, ptr %.12451582.us, i64 2
  %i.amr = load i16, ptr %.12451582.us, align 2, !tbaa !162
  %i.ams = zext i16 %i.amr to i64
  %i.amt = getelementptr inbounds nuw i8, ptr %.17583.us, i64 2
  %i.amu = load i16, ptr %.17583.us, align 2, !tbaa !162
  %i.amv = zext i16 %i.amu to i64
  %i.amw = sub nsw i64 %i.ams, %i.amv
  %i.amx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.amw
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !4
  %i.amz = add nsw i32 %i.amy, %.5488580.us
  %i.ana = getelementptr inbounds nuw i8, ptr %.12451582.us, i64 4
  %i.anb = load i16, ptr %i.amq, align 2, !tbaa !162
  %i.anc = zext i16 %i.anb to i64
  %i.and = getelementptr inbounds nuw i8, ptr %.17583.us, i64 4
  %i.ane = load i16, ptr %i.amt, align 2, !tbaa !162
  %i.anf = zext i16 %i.ane to i64
  %i.ang = sub nsw i64 %i.anc, %i.anf
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ang
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !4
  %i.anj = add nsw i32 %i.ani, %i.amz
  %i.ank = getelementptr inbounds nuw i8, ptr %.12451582.us, i64 6
  %i.anl = load i16, ptr %i.ana, align 2, !tbaa !162
  %i.anm = zext i16 %i.anl to i64
  %i.ann = getelementptr inbounds nuw i8, ptr %.17583.us, i64 6
  %i.ano = load i16, ptr %i.and, align 2, !tbaa !162
  %i.anp = zext i16 %i.ano to i64
  %i.anq = sub nsw i64 %i.anm, %i.anp
  %i.anr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.anq
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !4
  %i.ant = add nsw i32 %i.ans, %i.anj
  %i.anu = getelementptr inbounds nuw i8, ptr %.12451582.us, i64 8 ; 3 uses
  %i.anv = load i16, ptr %i.ank, align 2, !tbaa !162
  %i.anw = zext i16 %i.anv to i64
  %i.anx = getelementptr inbounds nuw i8, ptr %.17583.us, i64 8 ; 3 uses
  %i.any = load i16, ptr %i.ann, align 2, !tbaa !162
  %i.anz = zext i16 %i.any to i64
  %i.aoa = sub nsw i64 %i.anw, %i.anz
  %i.aob = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aoa
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !4
  %i.aod = add nsw i32 %i.aoc, %i.ant             ; 3 uses
  %niter1033.next.3 = add nuw nsw i32 %niter1033, 4 ; 2 uses
  %niter1033.ncmp.3.not = icmp eq i32 %niter1033.next.3, %unroll_iter1032
  br i1 %niter1033.ncmp.3.not, label %.lr.ph593.us.preheader.unr-lcssa, label %.preheader545.us.new, !llvm.loop !198

.lr.ph593.us.preheader.unr-lcssa:                 ; preds = %.preheader545.us.new
  br i1 %lcmp.mod1027.not, label %.lr.ph593.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph593.us.preheader.unr-lcssa, %.preheader545.us
  %.17583.us.epil.init = phi ptr [ %.16620.us, %.preheader545.us ], [ %i.anx, %.lr.ph593.us.preheader.unr-lcssa ]
  %.12451582.us.epil.init = phi ptr [ %.11450619.us, %.preheader545.us ], [ %i.anu, %.lr.ph593.us.preheader.unr-lcssa ]
  %.5488580.us.epil.init = phi i32 [ %.4487617.us, %.preheader545.us ], [ %i.aod, %.lr.ph593.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1031)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %.17583.us.epil = phi ptr [ %.17583.us.epil.init, %.epil.preheader ], [ %i.aoh, %bb.ao ] ; 2 uses
  %.12451582.us.epil = phi ptr [ %.12451582.us.epil.init, %.epil.preheader ], [ %i.aoe, %bb.ao ] ; 2 uses
  %.5488580.us.epil = phi i32 [ %.5488580.us.epil.init, %.epil.preheader ], [ %i.aon, %bb.ao ]
  %epil.iter1026 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter1026.next, %bb.ao ]
  %i.aoe = getelementptr inbounds nuw i8, ptr %.12451582.us.epil, i64 2 ; 2 uses
  %i.aof = load i16, ptr %.12451582.us.epil, align 2, !tbaa !162
  %i.aog = zext i16 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw i8, ptr %.17583.us.epil, i64 2 ; 2 uses
  %i.aoi = load i16, ptr %.17583.us.epil, align 2, !tbaa !162
  %i.aoj = zext i16 %i.aoi to i64
  %i.aok = sub nsw i64 %i.aog, %i.aoj
  %i.aol = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aok
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !4
  %i.aon = add nsw i32 %i.aom, %.5488580.us.epil  ; 2 uses
  %epil.iter1026.next = add i32 %epil.iter1026, 1 ; 2 uses
  %epil.iter1026.cmp.not = icmp eq i32 %epil.iter1026.next, %xtraiter1025
  br i1 %epil.iter1026.cmp.not, label %.lr.ph593.us.preheader, label %bb.ao, !llvm.loop !199

.lr.ph593.us.preheader:                           ; preds = %bb.ao, %.lr.ph593.us.preheader.unr-lcssa
  %.lcssa972 = phi ptr [ %i.anu, %.lr.ph593.us.preheader.unr-lcssa ], [ %i.aoe, %bb.ao ] ; 2 uses
  %.lcssa971 = phi ptr [ %i.anx, %.lr.ph593.us.preheader.unr-lcssa ], [ %i.aoh, %bb.ao ] ; 2 uses
  %.lcssa970 = phi i32 [ %i.aod, %.lr.ph593.us.preheader.unr-lcssa ], [ %i.aon, %bb.ao ] ; 2 uses
  br i1 %i.agq, label %.lr.ph593.us.epil.preheader, label %.lr.ph593.us

._crit_edge610:                                   ; preds = %._crit_edge610, %._crit_edge610.preheader.new
  %.11450619 = phi ptr [ %.10449635, %._crit_edge610.preheader.new ], [ %i.aov, %._crit_edge610 ]
  %niter = phi i32 [ 0, %._crit_edge610.preheader.new ], [ %niter.next.7, %._crit_edge610 ]
  %i.aoo = getelementptr inbounds [2 x i8], ptr %.11450619, i64 %i.agh
  %i.aop = getelementptr inbounds [2 x i8], ptr %i.aoo, i64 %i.agh
  %i.aoq = getelementptr inbounds [2 x i8], ptr %i.aop, i64 %i.agh
  %i.aor = getelementptr inbounds [2 x i8], ptr %i.aoq, i64 %i.agh
  %i.aos = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.agh
  %i.aot = getelementptr inbounds [2 x i8], ptr %i.aos, i64 %i.agh
  %i.aou = getelementptr inbounds [2 x i8], ptr %i.aot, i64 %i.agh
  %i.aov = getelementptr inbounds [2 x i8], ptr %i.aou, i64 %i.agh ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge621.loopexit964.unr-lcssa, label %._crit_edge610, !llvm.loop !192

._crit_edge621.loopexit964.unr-lcssa:             ; preds = %._crit_edge610
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge621, label %._crit_edge610.epil.preheader

._crit_edge610.epil.preheader:                    ; preds = %._crit_edge621.loopexit964.unr-lcssa, %._crit_edge610.preheader
  %.11450619.epil.init = phi ptr [ %.10449635, %._crit_edge610.preheader ], [ %i.aov, %._crit_edge621.loopexit964.unr-lcssa ]
  %lcmp.mod1021 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1021)
  br label %._crit_edge610.epil

._crit_edge610.epil:                              ; preds = %._crit_edge610.epil, %._crit_edge610.epil.preheader
  %.11450619.epil = phi ptr [ %i.aow, %._crit_edge610.epil ], [ %.11450619.epil.init, %._crit_edge610.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %._crit_edge610.epil ], [ 0, %._crit_edge610.epil.preheader ]
  %i.aow = getelementptr inbounds [2 x i8], ptr %.11450619.epil, i64 %i.agh ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge621, label %._crit_edge610.epil, !llvm.loop !200

._crit_edge621:                                   ; preds = %._crit_edge621.loopexit964.unr-lcssa, %._crit_edge610.epil, %._crit_edge610.us, %.preheader547
  %.4505.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa976, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit964.unr-lcssa ]
  %.4499.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa979, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit964.unr-lcssa ]
  %.4493.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa973, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit964.unr-lcssa ]
  %.4487.lcssa = phi i32 [ 0, %.preheader547 ], [ %.lcssa970, %._crit_edge610.us ], [ 0, %._crit_edge610.epil ], [ 0, %._crit_edge621.loopexit964.unr-lcssa ]
  %.11450.lcssa = phi ptr [ %.10449635, %.preheader547 ], [ %i.ahd, %._crit_edge610.us ], [ %i.aov, %._crit_edge621.loopexit964.unr-lcssa ], [ %i.aow, %._crit_edge610.epil ]
  %.16.lcssa = phi ptr [ %.15636, %.preheader547 ], [ %.lcssa980, %._crit_edge610.us ], [ %.15636, %._crit_edge610.epil ], [ %.15636, %._crit_edge621.loopexit964.unr-lcssa ] ; 2 uses
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv772 ; 4 uses
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !38
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv793 ; 2 uses
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !4
  %i.apb = add nsw i32 %i.apa, %.4487.lcssa
  store i32 %i.apb, ptr %i.aoz, align 4, !tbaa !4
  %i.apc = getelementptr i8, ptr %i.aox, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !38
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %indvars.iv793 ; 2 uses
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !4
  %i.apg = add nsw i32 %i.apf, %.4493.lcssa
  store i32 %i.apg, ptr %i.ape, align 4, !tbaa !4
  %i.aph = getelementptr i8, ptr %i.aox, i64 16
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !38
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.api, i64 %indvars.iv793 ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !4
  %i.apl = add nsw i32 %i.apk, %.4505.lcssa
  store i32 %i.apl, ptr %i.apj, align 4, !tbaa !4
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 4
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aox, i64 24
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !38
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.apn, i64 %indvars.iv793 ; 2 uses
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !4
  %i.apq = add nsw i32 %i.app, %.4499.lcssa
  store i32 %i.apq, ptr %i.apo, align 4, !tbaa !4
  %i.apr = add nuw nsw i32 %.3482633, 1           ; 2 uses
  %exitcond775.not = icmp eq i32 %i.apr, 4
  br i1 %exitcond775.not, label %.preheader551.1, label %.preheader547, !llvm.loop !201

.preheader551.1:                                  ; preds = %._crit_edge621
  %i.aps = load i32, ptr @ref_access_method, align 4, !tbaa !4
  %i.apt = sext i32 %i.aps to i64
  %i.apu = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.apt
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !8
  %i.apw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !155
  %i.apx = call ptr %i.apv(ptr noundef %i.apw, i32 noundef %i.ix, i32 noundef %i.iz) #12
  %i.apy = load ptr, ptr @img, align 8, !tbaa !8  ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 15548
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 15544
  br label %.preheader547.1

.preheader547.1:                                  ; preds = %._crit_edge621.1, %.preheader551.1
  %indvars.iv772.1 = phi i64 [ 0, %.preheader551.1 ], [ %indvars.iv.next773.1, %._crit_edge621.1 ] ; 2 uses
  %.15636.1 = phi ptr [ %.16.lcssa, %.preheader551.1 ], [ %.16.lcssa.1, %._crit_edge621.1 ] ; 4 uses
  %.10449635.1 = phi ptr [ %i.apx, %.preheader551.1 ], [ %.11450.lcssa.1, %._crit_edge621.1 ] ; 4 uses
  %.3482633.1 = phi i32 [ 0, %.preheader551.1 ], [ %i.azr, %._crit_edge621.1 ]
  %i.aqb = load i32, ptr %i.apz, align 4, !tbaa !171 ; 4 uses
  %i.aqc = icmp sgt i32 %i.aqb, 0
  br i1 %i.aqc, label %.preheader545.lr.ph.1, label %._crit_edge621.1

.preheader545.lr.ph.1:                            ; preds = %.preheader547.1
  %i.aqd = load i32, ptr %i.aqa, align 8, !tbaa !173 ; 7 uses
  %i.aqe = icmp sgt i32 %i.aqd, 0
  %i.aqf = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4
  %i.aqg = sub nsw i32 %i.aqf, %i.aqd
  %i.aqh = sext i32 %i.aqg to i64                 ; 10 uses
  br i1 %i.aqe, label %.preheader545.us.1.preheader, label %._crit_edge610.1.preheader

._crit_edge610.1.preheader:                       ; preds = %.preheader545.lr.ph.1
  %i.aqi = add nsw i32 %i.aqb, -1
  %i.aqj = lshr i32 %i.aqi, 2
  %i.aqk = add nuw nsw i32 %i.aqj, 1              ; 2 uses
  %xtraiter1080 = and i32 %i.aqk, 7               ; 3 uses
  %i.aql = icmp ult i32 %i.aqb, 29
  br i1 %i.aql, label %._crit_edge610.1.epil.preheader, label %._crit_edge610.1.preheader.new

._crit_edge610.1.preheader.new:                   ; preds = %._crit_edge610.1.preheader
  %unroll_iter1085 = and i32 %i.aqk, 2147483640
  br label %._crit_edge610.1

.preheader545.us.1.preheader:                     ; preds = %.preheader545.lr.ph.1
  %i.aqm = add nsw i32 %i.aqd, -1
  %i.aqn = lshr i32 %i.aqm, 2
  %i.aqo = add nuw nsw i32 %i.aqn, 1              ; 8 uses
  %xtraiter1088 = and i32 %i.aqo, 3               ; 3 uses
  %i.aqp = icmp ult i32 %i.aqd, 13
  %unroll_iter1095 = and i32 %i.aqo, 2147483644
  %lcmp.mod1090.not = icmp eq i32 %xtraiter1088, 0
  %lcmp.mod1094 = icmp ne i32 %xtraiter1088, 0
  %xtraiter1097 = and i32 %i.aqo, 3               ; 3 uses
  %i.aqq = icmp ult i32 %i.aqd, 13
  %unroll_iter1104 = and i32 %i.aqo, 2147483644
  %lcmp.mod1099.not = icmp eq i32 %xtraiter1097, 0
  %lcmp.mod1103 = icmp ne i32 %xtraiter1097, 0
  %xtraiter1106 = and i32 %i.aqo, 3               ; 3 uses
  %i.aqr = icmp ult i32 %i.aqd, 13
  %unroll_iter1113 = and i32 %i.aqo, 2147483644
  %lcmp.mod1108.not = icmp eq i32 %xtraiter1106, 0
  %lcmp.mod1112 = icmp ne i32 %xtraiter1106, 0
  %xtraiter1115 = and i32 %i.aqo, 3               ; 3 uses
  %i.aqs = icmp ult i32 %i.aqd, 13
  %unroll_iter1122 = and i32 %i.aqo, 2147483644
  %lcmp.mod1117.not = icmp eq i32 %xtraiter1115, 0
  %lcmp.mod1121 = icmp ne i32 %xtraiter1115, 0
  br label %.preheader545.us.1

._crit_edge610.1:                                 ; preds = %._crit_edge610.1, %._crit_edge610.1.preheader.new
  %.11450619.1 = phi ptr [ %.10449635.1, %._crit_edge610.1.preheader.new ], [ %i.ara, %._crit_edge610.1 ]
  %niter1086 = phi i32 [ 0, %._crit_edge610.1.preheader.new ], [ %niter1086.next.7, %._crit_edge610.1 ]
  %i.aqt = getelementptr inbounds [2 x i8], ptr %.11450619.1, i64 %i.aqh
  %i.aqu = getelementptr inbounds [2 x i8], ptr %i.aqt, i64 %i.aqh
  %i.aqv = getelementptr inbounds [2 x i8], ptr %i.aqu, i64 %i.aqh
  %i.aqw = getelementptr inbounds [2 x i8], ptr %i.aqv, i64 %i.aqh
  %i.aqx = getelementptr inbounds [2 x i8], ptr %i.aqw, i64 %i.aqh
  %i.aqy = getelementptr inbounds [2 x i8], ptr %i.aqx, i64 %i.aqh
  %i.aqz = getelementptr inbounds [2 x i8], ptr %i.aqy, i64 %i.aqh
  %i.ara = getelementptr inbounds [2 x i8], ptr %i.aqz, i64 %i.aqh ; 3 uses
  %niter1086.next.7 = add i32 %niter1086, 8       ; 2 uses
  %niter1086.ncmp.7.not = icmp eq i32 %niter1086.next.7, %unroll_iter1085
  br i1 %niter1086.ncmp.7.not, label %._crit_edge621.1.loopexit963.unr-lcssa, label %._crit_edge610.1, !llvm.loop !192

.preheader545.us.1:                               ; preds = %.preheader545.us.1.preheader, %._crit_edge610.us.1
  %.16620.us.1 = phi ptr [ %.lcssa994, %._crit_edge610.us.1 ], [ %.15636.1, %.preheader545.us.1.preheader ] ; 2 uses
  %.11450619.us.1 = phi ptr [ %i.ayt, %._crit_edge610.us.1 ], [ %.10449635.1, %.preheader545.us.1.preheader ] ; 2 uses
  %.5471618.us.1 = phi i32 [ %i.ayu, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ]
  %.4487617.us.1 = phi i32 [ %.lcssa984, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  %.4493616.us.1 = phi i32 [ %.lcssa987, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  %.4499615.us.1 = phi i32 [ %.lcssa993, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  %.4505614.us.1 = phi i32 [ %.lcssa990, %._crit_edge610.us.1 ], [ 0, %.preheader545.us.1.preheader ] ; 2 uses
  br i1 %i.aqp, label %.epil.preheader1087, label %.preheader545.us.1.new

.preheader545.us.1.new:                           ; preds = %.preheader545.us.1, %.preheader545.us.1.new
  %.17583.us.1 = phi ptr [ %i.asi, %.preheader545.us.1.new ], [ %.16620.us.1, %.preheader545.us.1 ] ; 5 uses
  %.12451582.us.1 = phi ptr [ %i.asf, %.preheader545.us.1.new ], [ %.11450619.us.1, %.preheader545.us.1 ] ; 5 uses
  %.5488580.us.1 = phi i32 [ %i.aso, %.preheader545.us.1.new ], [ %.4487617.us.1, %.preheader545.us.1 ]
  %niter1096 = phi i32 [ %niter1096.next.3, %.preheader545.us.1.new ], [ 0, %.preheader545.us.1 ]
  %i.arb = getelementptr inbounds nuw i8, ptr %.12451582.us.1, i64 2
  %i.arc = load i16, ptr %.12451582.us.1, align 2, !tbaa !162
  %i.ard = zext i16 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %.17583.us.1, i64 2
  %i.arf = load i16, ptr %.17583.us.1, align 2, !tbaa !162
  %i.arg = zext i16 %i.arf to i64
  %i.arh = sub nsw i64 %i.ard, %i.arg
  %i.ari = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.arh
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !4
  %i.ark = add nsw i32 %i.arj, %.5488580.us.1
  %i.arl = getelementptr inbounds nuw i8, ptr %.12451582.us.1, i64 4
  %i.arm = load i16, ptr %i.arb, align 2, !tbaa !162
  %i.arn = zext i16 %i.arm to i64
  %i.aro = getelementptr inbounds nuw i8, ptr %.17583.us.1, i64 4
  %i.arp = load i16, ptr %i.are, align 2, !tbaa !162
  %i.arq = zext i16 %i.arp to i64
  %i.arr = sub nsw i64 %i.arn, %i.arq
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.arr
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !4
  %i.aru = add nsw i32 %i.art, %i.ark
  %i.arv = getelementptr inbounds nuw i8, ptr %.12451582.us.1, i64 6
  %i.arw = load i16, ptr %i.arl, align 2, !tbaa !162
  %i.arx = zext i16 %i.arw to i64
  %i.ary = getelementptr inbounds nuw i8, ptr %.17583.us.1, i64 6
  %i.arz = load i16, ptr %i.aro, align 2, !tbaa !162
  %i.asa = zext i16 %i.arz to i64
  %i.asb = sub nsw i64 %i.arx, %i.asa
  %i.asc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.asb
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !4
  %i.ase = add nsw i32 %i.asd, %i.aru
  %i.asf = getelementptr inbounds nuw i8, ptr %.12451582.us.1, i64 8 ; 3 uses
  %i.asg = load i16, ptr %i.arv, align 2, !tbaa !162
  %i.ash = zext i16 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr %.17583.us.1, i64 8 ; 3 uses
  %i.asj = load i16, ptr %i.ary, align 2, !tbaa !162
  %i.ask = zext i16 %i.asj to i64
  %i.asl = sub nsw i64 %i.ash, %i.ask
  %i.asm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.asl
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !4
  %i.aso = add nsw i32 %i.asn, %i.ase             ; 3 uses
  %niter1096.next.3 = add nuw nsw i32 %niter1096, 4 ; 2 uses
  %niter1096.ncmp.3.not = icmp eq i32 %niter1096.next.3, %unroll_iter1095
  br i1 %niter1096.ncmp.3.not, label %.lr.ph593.us.1.preheader.unr-lcssa, label %.preheader545.us.1.new, !llvm.loop !198

.lr.ph593.us.1.preheader.unr-lcssa:               ; preds = %.preheader545.us.1.new
  br i1 %lcmp.mod1090.not, label %.lr.ph593.us.1.preheader, label %.epil.preheader1087

.epil.preheader1087:                              ; preds = %.lr.ph593.us.1.preheader.unr-lcssa, %.preheader545.us.1
  %.17583.us.1.epil.init = phi ptr [ %.16620.us.1, %.preheader545.us.1 ], [ %i.asi, %.lr.ph593.us.1.preheader.unr-lcssa ]
  %.12451582.us.1.epil.init = phi ptr [ %.11450619.us.1, %.preheader545.us.1 ], [ %i.asf, %.lr.ph593.us.1.preheader.unr-lcssa ]
  %.5488580.us.1.epil.init = phi i32 [ %.4487617.us.1, %.preheader545.us.1 ], [ %i.aso, %.lr.ph593.us.1.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1094)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader1087
  %.17583.us.1.epil = phi ptr [ %.17583.us.1.epil.init, %.epil.preheader1087 ], [ %i.ass, %bb.ap ] ; 2 uses
  %.12451582.us.1.epil = phi ptr [ %.12451582.us.1.epil.init, %.epil.preheader1087 ], [ %i.asp, %bb.ap ] ; 2 uses
  %.5488580.us.1.epil = phi i32 [ %.5488580.us.1.epil.init, %.epil.preheader1087 ], [ %i.asy, %bb.ap ]
  %epil.iter1089 = phi i32 [ 0, %.epil.preheader1087 ], [ %epil.iter1089.next, %bb.ap ]
  %i.asp = getelementptr inbounds nuw i8, ptr %.12451582.us.1.epil, i64 2 ; 2 uses
  %i.asq = load i16, ptr %.12451582.us.1.epil, align 2, !tbaa !162
  %i.asr = zext i16 %i.asq to i64
  %i.ass = getelementptr inbounds nuw i8, ptr %.17583.us.1.epil, i64 2 ; 2 uses
  %i.ast = load i16, ptr %.17583.us.1.epil, align 2, !tbaa !162
  %i.asu = zext i16 %i.ast to i64
  %i.asv = sub nsw i64 %i.asr, %i.asu
  %i.asw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !4
  %i.asy = add nsw i32 %i.asx, %.5488580.us.1.epil ; 2 uses
  %epil.iter1089.next = add i32 %epil.iter1089, 1 ; 2 uses
  %epil.iter1089.cmp.not = icmp eq i32 %epil.iter1089.next, %xtraiter1088
  br i1 %epil.iter1089.cmp.not, label %.lr.ph593.us.1.preheader, label %bb.ap, !llvm.loop !202

.lr.ph593.us.1.preheader:                         ; preds = %bb.ap, %.lr.ph593.us.1.preheader.unr-lcssa
  %.lcssa986.a = phi ptr [ %i.asf, %.lr.ph593.us.1.preheader.unr-lcssa ], [ %i.asp, %bb.ap ] ; 2 uses
  %.lcssa985 = phi ptr [ %i.asi, %.lr.ph593.us.1.preheader.unr-lcssa ], [ %i.ass, %bb.ap ] ; 2 uses
  %.lcssa984 = phi i32 [ %i.aso, %.lr.ph593.us.1.preheader.unr-lcssa ], [ %i.asy, %bb.ap ] ; 2 uses
  br i1 %i.aqq, label %.lr.ph593.us.1.epil.preheader, label %.lr.ph593.us.1

.lr.ph593.us.1:                                   ; preds = %.lr.ph593.us.1.preheader, %.lr.ph593.us.1
  %.18592.us.1 = phi ptr [ %i.aug, %.lr.ph593.us.1 ], [ %.lcssa985, %.lr.ph593.us.1.preheader ] ; 5 uses
  %.13452591.us.1 = phi ptr [ %i.aud, %.lr.ph593.us.1 ], [ %.lcssa986.a, %.lr.ph593.us.1.preheader ] ; 5 uses
  %.5494589.us.1 = phi i32 [ %i.aum, %.lr.ph593.us.1 ], [ %.4493616.us.1, %.lr.ph593.us.1.preheader ]
  %niter1105 = phi i32 [ %niter1105.next.3, %.lr.ph593.us.1 ], [ 0, %.lr.ph593.us.1.preheader ]
  %i.asz = getelementptr inbounds nuw i8, ptr %.13452591.us.1, i64 2
  %i.ata = load i16, ptr %.13452591.us.1, align 2, !tbaa !162
  %i.atb = zext i16 %i.ata to i64
  %i.atc = getelementptr inbounds nuw i8, ptr %.18592.us.1, i64 2
  %i.atd = load i16, ptr %.18592.us.1, align 2, !tbaa !162
  %i.ate = zext i16 %i.atd to i64
  %i.atf = sub nsw i64 %i.atb, %i.ate
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.atf
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !4
  %i.ati = add nsw i32 %i.ath, %.5494589.us.1
  %i.atj = getelementptr inbounds nuw i8, ptr %.13452591.us.1, i64 4
  %i.atk = load i16, ptr %i.asz, align 2, !tbaa !162
  %i.atl = zext i16 %i.atk to i64
  %i.atm = getelementptr inbounds nuw i8, ptr %.18592.us.1, i64 4
  %i.atn = load i16, ptr %i.atc, align 2, !tbaa !162
  %i.ato = zext i16 %i.atn to i64
  %i.atp = sub nsw i64 %i.atl, %i.ato
  %i.atq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.atp
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !4
  %i.ats = add nsw i32 %i.atr, %i.ati
  %i.att = getelementptr inbounds nuw i8, ptr %.13452591.us.1, i64 6
  %i.atu = load i16, ptr %i.atj, align 2, !tbaa !162
  %i.atv = zext i16 %i.atu to i64
  %i.atw = getelementptr inbounds nuw i8, ptr %.18592.us.1, i64 6
  %i.atx = load i16, ptr %i.atm, align 2, !tbaa !162
  %i.aty = zext i16 %i.atx to i64
  %i.atz = sub nsw i64 %i.atv, %i.aty
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.atz
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !4
  %i.auc = add nsw i32 %i.aub, %i.ats
  %i.aud = getelementptr inbounds nuw i8, ptr %.13452591.us.1, i64 8 ; 3 uses
  %i.aue = load i16, ptr %i.att, align 2, !tbaa !162
  %i.auf = zext i16 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr %.18592.us.1, i64 8 ; 3 uses
  %i.auh = load i16, ptr %i.atw, align 2, !tbaa !162
  %i.aui = zext i16 %i.auh to i64
  %i.auj = sub nsw i64 %i.auf, %i.aui
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.auj
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !4
  %i.aum = add nsw i32 %i.aul, %i.auc             ; 3 uses
  %niter1105.next.3 = add nuw nsw i32 %niter1105, 4 ; 2 uses
  %niter1105.ncmp.3.not = icmp eq i32 %niter1105.next.3, %unroll_iter1104
  br i1 %niter1105.ncmp.3.not, label %.lr.ph601.us.1.preheader.unr-lcssa, label %.lr.ph593.us.1, !llvm.loop !196

.lr.ph601.us.1.preheader.unr-lcssa:               ; preds = %.lr.ph593.us.1
  br i1 %lcmp.mod1099.not, label %.lr.ph601.us.1.preheader, label %.lr.ph593.us.1.epil.preheader

.lr.ph593.us.1.epil.preheader:                    ; preds = %.lr.ph601.us.1.preheader.unr-lcssa, %.lr.ph593.us.1.preheader
  %.18592.us.1.epil.init = phi ptr [ %.lcssa985, %.lr.ph593.us.1.preheader ], [ %i.aug, %.lr.ph601.us.1.preheader.unr-lcssa ]
  %.13452591.us.1.epil.init = phi ptr [ %.lcssa986.a, %.lr.ph593.us.1.preheader ], [ %i.aud, %.lr.ph601.us.1.preheader.unr-lcssa ]
  %.5494589.us.1.epil.init = phi i32 [ %.4493616.us.1, %.lr.ph593.us.1.preheader ], [ %i.aum, %.lr.ph601.us.1.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1103)
  br label %.lr.ph593.us.1.epil

.lr.ph593.us.1.epil:                              ; preds = %.lr.ph593.us.1.epil, %.lr.ph593.us.1.epil.preheader
  %.18592.us.1.epil = phi ptr [ %i.auq, %.lr.ph593.us.1.epil ], [ %.18592.us.1.epil.init, %.lr.ph593.us.1.epil.preheader ] ; 2 uses
  %.13452591.us.1.epil = phi ptr [ %i.aun, %.lr.ph593.us.1.epil ], [ %.13452591.us.1.epil.init, %.lr.ph593.us.1.epil.preheader ] ; 2 uses
  %.5494589.us.1.epil = phi i32 [ %i.auw, %.lr.ph593.us.1.epil ], [ %.5494589.us.1.epil.init, %.lr.ph593.us.1.epil.preheader ]
  %epil.iter1098 = phi i32 [ %epil.iter1098.next, %.lr.ph593.us.1.epil ], [ 0, %.lr.ph593.us.1.epil.preheader ]
  %i.aun = getelementptr inbounds nuw i8, ptr %.13452591.us.1.epil, i64 2 ; 2 uses
  %i.auo = load i16, ptr %.13452591.us.1.epil, align 2, !tbaa !162
  %i.aup = zext i16 %i.auo to i64
  %i.auq = getelementptr inbounds nuw i8, ptr %.18592.us.1.epil, i64 2 ; 2 uses
  %i.aur = load i16, ptr %.18592.us.1.epil, align 2, !tbaa !162
  %i.aus = zext i16 %i.aur to i64
  %i.aut = sub nsw i64 %i.aup, %i.aus
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aut
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !4
  %i.auw = add nsw i32 %i.auv, %.5494589.us.1.epil ; 2 uses
  %epil.iter1098.next = add i32 %epil.iter1098, 1 ; 2 uses
  %epil.iter1098.cmp.not = icmp eq i32 %epil.iter1098.next, %xtraiter1097
  br i1 %epil.iter1098.cmp.not, label %.lr.ph601.us.1.preheader, label %.lr.ph593.us.1.epil, !llvm.loop !203

.lr.ph601.us.1.preheader:                         ; preds = %.lr.ph593.us.1.epil, %.lr.ph601.us.1.preheader.unr-lcssa
  %.lcssa989.a = phi ptr [ %i.aud, %.lr.ph601.us.1.preheader.unr-lcssa ], [ %i.aun, %.lr.ph593.us.1.epil ] ; 2 uses
  %.lcssa988 = phi ptr [ %i.aug, %.lr.ph601.us.1.preheader.unr-lcssa ], [ %i.auq, %.lr.ph593.us.1.epil ] ; 2 uses
  %.lcssa987 = phi i32 [ %i.aum, %.lr.ph601.us.1.preheader.unr-lcssa ], [ %i.auw, %.lr.ph593.us.1.epil ] ; 2 uses
  br i1 %i.aqr, label %.lr.ph601.us.1.epil.preheader, label %.lr.ph601.us.1

.lr.ph601.us.1:                                   ; preds = %.lr.ph601.us.1.preheader, %.lr.ph601.us.1
  %.19600.us.1 = phi ptr [ %i.awe, %.lr.ph601.us.1 ], [ %.lcssa988, %.lr.ph601.us.1.preheader ] ; 5 uses
  %.14453599.us.1 = phi ptr [ %i.awb, %.lr.ph601.us.1 ], [ %.lcssa989.a, %.lr.ph601.us.1.preheader ] ; 5 uses
  %.5506597.us.1 = phi i32 [ %i.awk, %.lr.ph601.us.1 ], [ %.4505614.us.1, %.lr.ph601.us.1.preheader ]
  %niter1114 = phi i32 [ %niter1114.next.3, %.lr.ph601.us.1 ], [ 0, %.lr.ph601.us.1.preheader ]
  %i.aux = getelementptr inbounds nuw i8, ptr %.14453599.us.1, i64 2
  %i.auy = load i16, ptr %.14453599.us.1, align 2, !tbaa !162
  %i.auz = zext i16 %i.auy to i64
  %i.ava = getelementptr inbounds nuw i8, ptr %.19600.us.1, i64 2
  %i.avb = load i16, ptr %.19600.us.1, align 2, !tbaa !162
  %i.avc = zext i16 %i.avb to i64
  %i.avd = sub nsw i64 %i.auz, %i.avc
  %i.ave = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.avd
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !4
  %i.avg = add nsw i32 %i.avf, %.5506597.us.1
  %i.avh = getelementptr inbounds nuw i8, ptr %.14453599.us.1, i64 4
  %i.avi = load i16, ptr %i.aux, align 2, !tbaa !162
  %i.avj = zext i16 %i.avi to i64
  %i.avk = getelementptr inbounds nuw i8, ptr %.19600.us.1, i64 4
  %i.avl = load i16, ptr %i.ava, align 2, !tbaa !162
  %i.avm = zext i16 %i.avl to i64
  %i.avn = sub nsw i64 %i.avj, %i.avm
  %i.avo = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.avn
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !4
  %i.avq = add nsw i32 %i.avp, %i.avg
  %i.avr = getelementptr inbounds nuw i8, ptr %.14453599.us.1, i64 6
  %i.avs = load i16, ptr %i.avh, align 2, !tbaa !162
  %i.avt = zext i16 %i.avs to i64
  %i.avu = getelementptr inbounds nuw i8, ptr %.19600.us.1, i64 6
  %i.avv = load i16, ptr %i.avk, align 2, !tbaa !162
  %i.avw = zext i16 %i.avv to i64
  %i.avx = sub nsw i64 %i.avt, %i.avw
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.avx
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !4
  %i.awa = add nsw i32 %i.avz, %i.avq
  %i.awb = getelementptr inbounds nuw i8, ptr %.14453599.us.1, i64 8 ; 3 uses
  %i.awc = load i16, ptr %i.avr, align 2, !tbaa !162
  %i.awd = zext i16 %i.awc to i64
  %i.awe = getelementptr inbounds nuw i8, ptr %.19600.us.1, i64 8 ; 3 uses
  %i.awf = load i16, ptr %i.avu, align 2, !tbaa !162
  %i.awg = zext i16 %i.awf to i64
  %i.awh = sub nsw i64 %i.awd, %i.awg
  %i.awi = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.awh
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !4
  %i.awk = add nsw i32 %i.awj, %i.awa             ; 3 uses
  %niter1114.next.3 = add nuw nsw i32 %niter1114, 4 ; 2 uses
  %niter1114.ncmp.3.not = icmp eq i32 %niter1114.next.3, %unroll_iter1113
  br i1 %niter1114.ncmp.3.not, label %.lr.ph609.us.1.preheader.unr-lcssa, label %.lr.ph601.us.1, !llvm.loop !194

.lr.ph609.us.1.preheader.unr-lcssa:               ; preds = %.lr.ph601.us.1
  br i1 %lcmp.mod1108.not, label %.lr.ph609.us.1.preheader, label %.lr.ph601.us.1.epil.preheader

.lr.ph601.us.1.epil.preheader:                    ; preds = %.lr.ph609.us.1.preheader.unr-lcssa, %.lr.ph601.us.1.preheader
  %.19600.us.1.epil.init = phi ptr [ %.lcssa988, %.lr.ph601.us.1.preheader ], [ %i.awe, %.lr.ph609.us.1.preheader.unr-lcssa ]
  %.14453599.us.1.epil.init = phi ptr [ %.lcssa989.a, %.lr.ph601.us.1.preheader ], [ %i.awb, %.lr.ph609.us.1.preheader.unr-lcssa ]
  %.5506597.us.1.epil.init = phi i32 [ %.4505614.us.1, %.lr.ph601.us.1.preheader ], [ %i.awk, %.lr.ph609.us.1.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1112)
  br label %.lr.ph601.us.1.epil

.lr.ph601.us.1.epil:                              ; preds = %.lr.ph601.us.1.epil, %.lr.ph601.us.1.epil.preheader
  %.19600.us.1.epil = phi ptr [ %i.awo, %.lr.ph601.us.1.epil ], [ %.19600.us.1.epil.init, %.lr.ph601.us.1.epil.preheader ] ; 2 uses
  %.14453599.us.1.epil = phi ptr [ %i.awl, %.lr.ph601.us.1.epil ], [ %.14453599.us.1.epil.init, %.lr.ph601.us.1.epil.preheader ] ; 2 uses
  %.5506597.us.1.epil = phi i32 [ %i.awu, %.lr.ph601.us.1.epil ], [ %.5506597.us.1.epil.init, %.lr.ph601.us.1.epil.preheader ]
  %epil.iter1107 = phi i32 [ %epil.iter1107.next, %.lr.ph601.us.1.epil ], [ 0, %.lr.ph601.us.1.epil.preheader ]
  %i.awl = getelementptr inbounds nuw i8, ptr %.14453599.us.1.epil, i64 2 ; 2 uses
  %i.awm = load i16, ptr %.14453599.us.1.epil, align 2, !tbaa !162
  %i.awn = zext i16 %i.awm to i64
  %i.awo = getelementptr inbounds nuw i8, ptr %.19600.us.1.epil, i64 2 ; 2 uses
  %i.awp = load i16, ptr %.19600.us.1.epil, align 2, !tbaa !162
  %i.awq = zext i16 %i.awp to i64
  %i.awr = sub nsw i64 %i.awn, %i.awq
  %i.aws = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.awr
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !4
  %i.awu = add nsw i32 %i.awt, %.5506597.us.1.epil ; 2 uses
  %epil.iter1107.next = add i32 %epil.iter1107, 1 ; 2 uses
  %epil.iter1107.cmp.not = icmp eq i32 %epil.iter1107.next, %xtraiter1106
  br i1 %epil.iter1107.cmp.not, label %.lr.ph609.us.1.preheader, label %.lr.ph601.us.1.epil, !llvm.loop !204

.lr.ph609.us.1.preheader:                         ; preds = %.lr.ph601.us.1.epil, %.lr.ph609.us.1.preheader.unr-lcssa
  %.lcssa992.a = phi ptr [ %i.awb, %.lr.ph609.us.1.preheader.unr-lcssa ], [ %i.awl, %.lr.ph601.us.1.epil ] ; 2 uses
  %.lcssa991 = phi ptr [ %i.awe, %.lr.ph609.us.1.preheader.unr-lcssa ], [ %i.awo, %.lr.ph601.us.1.epil ] ; 2 uses
  %.lcssa990 = phi i32 [ %i.awk, %.lr.ph609.us.1.preheader.unr-lcssa ], [ %i.awu, %.lr.ph601.us.1.epil ] ; 2 uses
  br i1 %i.aqs, label %.lr.ph609.us.1.epil.preheader, label %.lr.ph609.us.1

.lr.ph609.us.1:                                   ; preds = %.lr.ph609.us.1.preheader, %.lr.ph609.us.1
  %.20608.us.1 = phi ptr [ %i.ayc, %.lr.ph609.us.1 ], [ %.lcssa991, %.lr.ph609.us.1.preheader ] ; 5 uses
  %.15454607.us.1 = phi ptr [ %i.axz, %.lr.ph609.us.1 ], [ %.lcssa992.a, %.lr.ph609.us.1.preheader ] ; 5 uses
  %.5500605.us.1 = phi i32 [ %i.ayi, %.lr.ph609.us.1 ], [ %.4499615.us.1, %.lr.ph609.us.1.preheader ]
  %niter1123 = phi i32 [ %niter1123.next.3, %.lr.ph609.us.1 ], [ 0, %.lr.ph609.us.1.preheader ]
  %i.awv = getelementptr inbounds nuw i8, ptr %.15454607.us.1, i64 2
  %i.aww = load i16, ptr %.15454607.us.1, align 2, !tbaa !162
  %i.awx = zext i16 %i.aww to i64
  %i.awy = getelementptr inbounds nuw i8, ptr %.20608.us.1, i64 2
  %i.awz = load i16, ptr %.20608.us.1, align 2, !tbaa !162
  %i.axa = zext i16 %i.awz to i64
  %i.axb = sub nsw i64 %i.awx, %i.axa
  %i.axc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.axb
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !4
  %i.axe = add nsw i32 %i.axd, %.5500605.us.1
  %i.axf = getelementptr inbounds nuw i8, ptr %.15454607.us.1, i64 4
  %i.axg = load i16, ptr %i.awv, align 2, !tbaa !162
  %i.axh = zext i16 %i.axg to i64
  %i.axi = getelementptr inbounds nuw i8, ptr %.20608.us.1, i64 4
  %i.axj = load i16, ptr %i.awy, align 2, !tbaa !162
  %i.axk = zext i16 %i.axj to i64
  %i.axl = sub nsw i64 %i.axh, %i.axk
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.axl
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !4
  %i.axo = add nsw i32 %i.axn, %i.axe
  %i.axp = getelementptr inbounds nuw i8, ptr %.15454607.us.1, i64 6
  %i.axq = load i16, ptr %i.axf, align 2, !tbaa !162
  %i.axr = zext i16 %i.axq to i64
  %i.axs = getelementptr inbounds nuw i8, ptr %.20608.us.1, i64 6
  %i.axt = load i16, ptr %i.axi, align 2, !tbaa !162
  %i.axu = zext i16 %i.axt to i64
  %i.axv = sub nsw i64 %i.axr, %i.axu
  %i.axw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.axv
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !4
  %i.axy = add nsw i32 %i.axx, %i.axo
  %i.axz = getelementptr inbounds nuw i8, ptr %.15454607.us.1, i64 8 ; 3 uses
  %i.aya = load i16, ptr %i.axp, align 2, !tbaa !162
  %i.ayb = zext i16 %i.aya to i64
  %i.ayc = getelementptr inbounds nuw i8, ptr %.20608.us.1, i64 8 ; 3 uses
  %i.ayd = load i16, ptr %i.axs, align 2, !tbaa !162
  %i.aye = zext i16 %i.ayd to i64
  %i.ayf = sub nsw i64 %i.ayb, %i.aye
  %i.ayg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ayf
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !4
  %i.ayi = add nsw i32 %i.ayh, %i.axy             ; 3 uses
  %niter1123.next.3 = add nuw nsw i32 %niter1123, 4 ; 2 uses
  %niter1123.ncmp.3.not = icmp eq i32 %niter1123.next.3, %unroll_iter1122
  br i1 %niter1123.ncmp.3.not, label %._crit_edge610.us.1.unr-lcssa, label %.lr.ph609.us.1, !llvm.loop !193

._crit_edge610.us.1.unr-lcssa:                    ; preds = %.lr.ph609.us.1
  br i1 %lcmp.mod1117.not, label %._crit_edge610.us.1, label %.lr.ph609.us.1.epil.preheader

.lr.ph609.us.1.epil.preheader:                    ; preds = %._crit_edge610.us.1.unr-lcssa, %.lr.ph609.us.1.preheader
  %.20608.us.1.epil.init = phi ptr [ %.lcssa991, %.lr.ph609.us.1.preheader ], [ %i.ayc, %._crit_edge610.us.1.unr-lcssa ]
  %.15454607.us.1.epil.init = phi ptr [ %.lcssa992.a, %.lr.ph609.us.1.preheader ], [ %i.axz, %._crit_edge610.us.1.unr-lcssa ]
  %.5500605.us.1.epil.init = phi i32 [ %.4499615.us.1, %.lr.ph609.us.1.preheader ], [ %i.ayi, %._crit_edge610.us.1.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1121)
  br label %.lr.ph609.us.1.epil

.lr.ph609.us.1.epil:                              ; preds = %.lr.ph609.us.1.epil, %.lr.ph609.us.1.epil.preheader
  %.20608.us.1.epil = phi ptr [ %i.aym, %.lr.ph609.us.1.epil ], [ %.20608.us.1.epil.init, %.lr.ph609.us.1.epil.preheader ] ; 2 uses
  %.15454607.us.1.epil = phi ptr [ %i.ayj, %.lr.ph609.us.1.epil ], [ %.15454607.us.1.epil.init, %.lr.ph609.us.1.epil.preheader ] ; 2 uses
  %.5500605.us.1.epil = phi i32 [ %i.ays, %.lr.ph609.us.1.epil ], [ %.5500605.us.1.epil.init, %.lr.ph609.us.1.epil.preheader ]
  %epil.iter1116 = phi i32 [ %epil.iter1116.next, %.lr.ph609.us.1.epil ], [ 0, %.lr.ph609.us.1.epil.preheader ]
  %i.ayj = getelementptr inbounds nuw i8, ptr %.15454607.us.1.epil, i64 2 ; 2 uses
  %i.ayk = load i16, ptr %.15454607.us.1.epil, align 2, !tbaa !162
  %i.ayl = zext i16 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw i8, ptr %.20608.us.1.epil, i64 2 ; 2 uses
  %i.ayn = load i16, ptr %.20608.us.1.epil, align 2, !tbaa !162
  %i.ayo = zext i16 %i.ayn to i64
  %i.ayp = sub nsw i64 %i.ayl, %i.ayo
  %i.ayq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ayp
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !4
  %i.ays = add nsw i32 %i.ayr, %.5500605.us.1.epil ; 2 uses
  %epil.iter1116.next = add i32 %epil.iter1116, 1 ; 2 uses
  %epil.iter1116.cmp.not = icmp eq i32 %epil.iter1116.next, %xtraiter1115
  br i1 %epil.iter1116.cmp.not, label %._crit_edge610.us.1, label %.lr.ph609.us.1.epil, !llvm.loop !205

._crit_edge610.us.1:                              ; preds = %.lr.ph609.us.1.epil, %._crit_edge610.us.1.unr-lcssa
  %.lcssa995 = phi ptr [ %i.axz, %._crit_edge610.us.1.unr-lcssa ], [ %i.ayj, %.lr.ph609.us.1.epil ]
  %.lcssa994 = phi ptr [ %i.ayc, %._crit_edge610.us.1.unr-lcssa ], [ %i.aym, %.lr.ph609.us.1.epil ] ; 2 uses
  %.lcssa993 = phi i32 [ %i.ayi, %._crit_edge610.us.1.unr-lcssa ], [ %i.ays, %.lr.ph609.us.1.epil ] ; 2 uses
  %i.ayt = getelementptr inbounds [2 x i8], ptr %.lcssa995, i64 %i.aqh ; 2 uses
  %i.ayu = add nuw nsw i32 %.5471618.us.1, 4      ; 2 uses
  %i.ayv = icmp slt i32 %i.ayu, %i.aqb
  br i1 %i.ayv, label %.preheader545.us.1, label %._crit_edge621.1, !llvm.loop !192

._crit_edge621.1.loopexit963.unr-lcssa:           ; preds = %._crit_edge610.1
  %lcmp.mod1082.not = icmp eq i32 %xtraiter1080, 0
  br i1 %lcmp.mod1082.not, label %._crit_edge621.1, label %._crit_edge610.1.epil.preheader

._crit_edge610.1.epil.preheader:                  ; preds = %._crit_edge621.1.loopexit963.unr-lcssa, %._crit_edge610.1.preheader
  %.11450619.1.epil.init = phi ptr [ %.10449635.1, %._crit_edge610.1.preheader ], [ %i.ara, %._crit_edge621.1.loopexit963.unr-lcssa ]
  %lcmp.mod1084 = icmp ne i32 %xtraiter1080, 0
  call void @llvm.assume(i1 %lcmp.mod1084)
  br label %._crit_edge610.1.epil

._crit_edge610.1.epil:                            ; preds = %._crit_edge610.1.epil, %._crit_edge610.1.epil.preheader
  %.11450619.1.epil = phi ptr [ %i.ayw, %._crit_edge610.1.epil ], [ %.11450619.1.epil.init, %._crit_edge610.1.epil.preheader ]
  %epil.iter1081 = phi i32 [ %epil.iter1081.next, %._crit_edge610.1.epil ], [ 0, %._crit_edge610.1.epil.preheader ]
  %i.ayw = getelementptr inbounds [2 x i8], ptr %.11450619.1.epil, i64 %i.aqh ; 2 uses
  %epil.iter1081.next = add i32 %epil.iter1081, 1 ; 2 uses
  %epil.iter1081.cmp.not = icmp eq i32 %epil.iter1081.next, %xtraiter1080
  br i1 %epil.iter1081.cmp.not, label %._crit_edge621.1, label %._crit_edge610.1.epil, !llvm.loop !206

._crit_edge621.1:                                 ; preds = %._crit_edge621.1.loopexit963.unr-lcssa, %._crit_edge610.1.epil, %._crit_edge610.us.1, %.preheader547.1
  %.4505.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa990, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit963.unr-lcssa ]
  %.4499.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa993, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit963.unr-lcssa ]
  %.4493.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa987, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit963.unr-lcssa ]
  %.4487.lcssa.1 = phi i32 [ 0, %.preheader547.1 ], [ %.lcssa984, %._crit_edge610.us.1 ], [ 0, %._crit_edge610.1.epil ], [ 0, %._crit_edge621.1.loopexit963.unr-lcssa ]
  %.11450.lcssa.1 = phi ptr [ %.10449635.1, %.preheader547.1 ], [ %i.ayt, %._crit_edge610.us.1 ], [ %i.ara, %._crit_edge621.1.loopexit963.unr-lcssa ], [ %i.ayw, %._crit_edge610.1.epil ]
  %.16.lcssa.1 = phi ptr [ %.15636.1, %.preheader547.1 ], [ %.lcssa994, %._crit_edge610.us.1 ], [ %.15636.1, %._crit_edge610.1.epil ], [ %.15636.1, %._crit_edge621.1.loopexit963.unr-lcssa ]
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv772.1 ; 4 uses
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !38
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %indvars.iv793 ; 2 uses
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !4
  %i.azb = add nsw i32 %i.aza, %.4487.lcssa.1
  store i32 %i.azb, ptr %i.ayz, align 4, !tbaa !4
  %i.azc = getelementptr i8, ptr %i.ayx, i64 8
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !38
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %indvars.iv793 ; 2 uses
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !4
  %i.azg = add nsw i32 %i.azf, %.4493.lcssa.1
  store i32 %i.azg, ptr %i.aze, align 4, !tbaa !4
  %i.azh = getelementptr i8, ptr %i.ayx, i64 16
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !38
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %indvars.iv793 ; 2 uses
  %i.azk = load i32, ptr %i.azj, align 4, !tbaa !4
  %i.azl = add nsw i32 %i.azk, %.4505.lcssa.1
  store i32 %i.azl, ptr %i.azj, align 4, !tbaa !4
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772.1, 4
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayx, i64 24
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !38
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %indvars.iv793 ; 2 uses
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !4
  %i.azq = add nsw i32 %i.azp, %.4499.lcssa.1
  store i32 %i.azq, ptr %i.azo, align 4, !tbaa !4
  %i.azr = add nuw nsw i32 %.3482633.1, 1         ; 2 uses
  %exitcond775.1.not = icmp eq i32 %i.azr, 4
  br i1 %exitcond775.1.not, label %.loopexit, label %.preheader547.1, !llvm.loop !201

.loopexit:                                        ; preds = %._crit_edge621.1, %._crit_edge691.1, %bb.ac, %bb.an
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1 ; 2 uses
  %i.azs = icmp samesign ult i64 %indvars.iv.next794, %.pre-phi
  br i1 %i.azs, label %bb.u, label %bb.aq, !llvm.loop !207

bb.aq:                                            ; preds = %.loopexit
  %i.azt = sext i16 %0 to i32
  call void @SetupLargerBlocks(i32 noundef %1, i32 noundef %i.azt, i32 noundef %i.r)
  %i.azu = load ptr, ptr @search_setup_done, align 8, !tbaa !36
  %i.azv = getelementptr inbounds [8 x i8], ptr %i.azu, i64 %i.c
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !38
  %i.azx = getelementptr inbounds [4 x i8], ptr %i.azw, i64 %i.f
  store i32 1, ptr %i.azx, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @SetMotionVectorPredictor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @FastFullPelBlockMotionSearch(ptr nofree noundef readnone captures(none) %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %10, 1
  %i.b = or disjoint i32 %i.a, 1                  ; 2 uses
  %i.c = mul nsw i32 %i.b, %i.b
  %i.d = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.f = load i32, ptr %i.e, align 4, !tbaa !166  ; 2 uses
  %i.g = sub i32 %4, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.i = load i32, ptr %i.h, align 8, !tbaa !165  ; 2 uses
  %i.j = sub nsw i32 %3, %i.i
  %i.k = ashr i32 %i.j, 2
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = load ptr, ptr @BlockSAD, align 8, !tbaa !15
  %i.n = sext i32 %2 to i64                       ; 5 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = sext i16 %1 to i64                       ; 5 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.t = sext i32 %5 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %i.z = load ptr, ptr @search_setup_done, align 8, !tbaa !36
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.n
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.q
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @SetupFastFullPelSearch(i16 noundef signext %1, i32 noundef %2)
  %.pre = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre72 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !165
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %.pre, i64 196
  %.pre74 = load i32, ptr %.phi.trans.insert73, align 4, !tbaa !166
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi i32 [ %.pre74, %bb.b ], [ %i.f, %bb.a ]
  %i.af = phi i32 [ %.pre72, %bb.b ], [ %i.i, %bb.a ]
  %i.ag = load ptr, ptr @search_center_x, align 8, !tbaa !36
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.n
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.q
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = sub nsw i32 %i.ak, %i.af                ; 2 uses
  %i.am = load ptr, ptr @search_center_y, align 8, !tbaa !36
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.n
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.q
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = sub nsw i32 %i.aq, %i.ae                ; 2 uses
  %i.as = load ptr, ptr @input, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4168
  %i.au = load i32, ptr %i.at, align 8, !tbaa !163
  %.not63 = icmp eq i32 %i.au, 0
  %.pre75 = load ptr, ptr @mvbits, align 8        ; 4 uses
  br i1 %.not63, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = load ptr, ptr @pos_00, align 8, !tbaa !36
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.n
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.q
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sext i16 %6 to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = sext i16 %7 to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = add nsw i32 %i.bk, %i.bg
  %i.bm = mul nsw i32 %i.bl, %12
  %i.bn = ashr i32 %i.bm, 16
  %i.bo = add nsw i32 %i.bn, %i.bc                ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %11
  %spec.select = select i1 %i.bp, i32 %i.az, i32 0
  %spec.select64 = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %11)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.055 = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.d ]
  %.054 = phi i32 [ %11, %bb.c ], [ %spec.select64, %bb.d ]
  %i.bq = load ptr, ptr @spiral_search_x, align 8 ; 2 uses
  %i.br = load ptr, ptr @spiral_search_y, align 8 ; 2 uses
  %i.bs = sext i16 %6 to i32
  %i.bt = sext i16 %7 to i32
  %i.bu = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.070 = phi ptr [ %i.y, %bb.e ], [ %i.cv, %bb.h ] ; 2 uses
  %.169 = phi i32 [ %.054, %bb.e ], [ %.2, %bb.h ] ; 4 uses
  %.15668 = phi i32 [ %.055, %bb.e ], [ %.257, %bb.h ] ; 2 uses
  %i.bv = load i32, ptr %.070, align 4, !tbaa !4  ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %.169
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !162
  %i.bz = sext i16 %i.by to i32
  %i.ca = add nsw i32 %i.al, %i.bz
  %i.cb = shl i32 %i.ca, 2
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !162
  %i.ce = sext i16 %i.cd to i32
  %i.cf = add nsw i32 %i.ar, %i.ce
  %i.cg = shl i32 %i.cf, 2
  %i.ch = sub nsw i32 %i.cb, %i.bs
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = sub nsw i32 %i.cg, %i.bt
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %.pre75, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = add nsw i32 %i.co, %i.ck
  %i.cq = mul nsw i32 %i.cp, %12
  %i.cr = ashr i32 %i.cq, 16
  %i.cs = add nsw i32 %i.cr, %i.bv                ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %.169
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select65 = select i1 %i.ct, i32 %i.cu, i32 %.15668
  %spec.select66 = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 %.169)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.257 = phi i32 [ %.15668, %bb.f ], [ %spec.select65, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.169, %bb.f ], [ %spec.select66, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.070, i64 4
  %i.cw = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.cw, label %bb.f, label %bb.i, !llvm.loop !208

bb.i:                                             ; preds = %bb.h
  %i.cx = sext i32 %.257 to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !162
  %i.da = trunc i32 %i.al to i16
  %i.db = add i16 %i.cz, %i.da
  store i16 %i.db, ptr %8, align 2, !tbaa !162
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.cx
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !162
  %i.de = trunc i32 %i.ar to i16
  %i.df = add i16 %i.dd, %i.de
  store i16 %i.df, ptr %9, align 2, !tbaa !162
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 28}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !12, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !13, i64 5040, !13, i64 5048, !14, i64 5056, !13, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !12, i64 5144, !12, i64 5152, !12, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p5 int", !17, i64 0}
!17 = !{!"any p5 pointer", !18, i64 0}
!18 = !{!"any p4 pointer", !19, i64 0}
!19 = !{!"any p3 pointer", !20, i64 0}
!20 = !{!"any p2 pointer", !9, i64 0}
!21 = !{!22, !5, i64 32}
!22 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !23, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !24, i64 128, !24, i64 136, !5, i64 144, !25, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !26, i64 14160, !25, i64 14168, !25, i64 14176, !25, i64 14184, !26, i64 14192, !26, i64 14200, !9, i64 14208, !9, i64 14216, !27, i64 14224, !13, i64 14232, !13, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !12, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !28, i64 14376, !28, i64 14384, !28, i64 14392, !28, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !30, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !31, i64 15480, !32, i64 15488, !25, i64 15496, !31, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !33, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!23 = !{!"float", !6, i64 0}
!24 = !{!"p2 omnipotent char", !20, i64 0}
!25 = !{!"p3 int", !19, i64 0}
!26 = !{!"p4 int", !18, i64 0}
!27 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!28 = !{!"p6 short", !29, i64 0}
!29 = !{!"any p6 pointer", !17, i64 0}
!30 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!31 = !{!"p2 double", !20, i64 0}
!32 = !{!"p3 double", !19, i64 0}
!33 = !{!"short", !6, i64 0}
!34 = !{!26, !26, i64 0}
!35 = !{!25, !25, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"p2 int", !20, i64 0}
!38 = !{!13, !13, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = !{!11, !5, i64 4140}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !40}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !40, !49, !50}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !40, !49}
!54 = distinct !{!54, !40, !49, !50}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !40, !49}
!57 = distinct !{!57, !40, !49, !50}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !40, !49}
!60 = distinct !{!60, !40, !49, !50}
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !40, !49}
!63 = distinct !{!63, !40, !49, !50}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !40, !49}
!66 = distinct !{!66, !40, !49, !50}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !40, !49}
!69 = distinct !{!69, !40, !49, !50}
!70 = distinct !{!70, !52}
!71 = distinct !{!71, !40, !49}
!72 = distinct !{!72, !40, !49, !50}
!73 = distinct !{!73, !52}
!74 = distinct !{!74, !40, !49}
!75 = distinct !{!75, !40, !49, !50}
!76 = distinct !{!76, !52}
!77 = distinct !{!77, !40, !49}
!78 = distinct !{!78, !40, !49, !50}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !40, !49}
!81 = distinct !{!81, !40, !49, !50}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !40, !49}
!84 = distinct !{!84, !40, !49, !50}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !40, !49}
!87 = distinct !{!87, !40, !49, !50}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !40, !49}
!90 = distinct !{!90, !40, !49, !50}
!91 = distinct !{!91, !52}
!92 = distinct !{!92, !40, !49}
!93 = distinct !{!93, !40, !49, !50}
!94 = distinct !{!94, !52}
!95 = distinct !{!95, !40, !49}
!96 = distinct !{!96, !40, !49, !50}
!97 = distinct !{!97, !52}
!98 = distinct !{!98, !40, !49}
!99 = distinct !{!99, !40, !49, !50}
!100 = distinct !{!100, !52}
!101 = distinct !{!101, !40, !49}
!102 = distinct !{!102, !40, !49, !50}
!103 = distinct !{!103, !52}
!104 = distinct !{!104, !40, !49}
!105 = distinct !{!105, !40, !49, !50}
!106 = distinct !{!106, !52}
!107 = distinct !{!107, !40, !49}
!108 = distinct !{!108, !40, !49, !50}
!109 = distinct !{!109, !52}
!110 = distinct !{!110, !40, !49}
!111 = distinct !{!111, !40, !49, !50}
!112 = distinct !{!112, !52}
!113 = distinct !{!113, !40, !49}
!114 = distinct !{!114, !40, !49, !50}
!115 = distinct !{!115, !52}
!116 = distinct !{!116, !40, !49}
!117 = distinct !{!117, !40, !49, !50}
!118 = distinct !{!118, !52}
!119 = distinct !{!119, !40, !49}
!120 = distinct !{!120, !40, !49, !50}
!121 = distinct !{!121, !52}
!122 = distinct !{!122, !40, !49}
!123 = distinct !{!123, !40, !49, !50}
!124 = distinct !{!124, !52}
!125 = distinct !{!125, !40, !49}
!126 = !{!22, !27, i64 14224}
!127 = !{!22, !5, i64 12}
!128 = !{!129, !5, i64 432}
!129 = !{!"macroblock", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !5, i64 20, !6, i64 24, !27, i64 56, !27, i64 64, !5, i64 72, !6, i64 76, !6, i64 332, !6, i64 348, !5, i64 364, !130, i64 368, !6, i64 376, !6, i64 392, !130, i64 408, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !33, i64 480, !12, i64 488, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528}
!130 = !{!"long long", !6, i64 0}
!131 = !{!132, !5, i64 192}
!132 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !5, i64 56, !5, i64 60, !5, i64 64, !6, i64 68, !6, i64 100, !6, i64 132, !5, i64 164, !5, i64 168, !5, i64 172, !14, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232}
!133 = !{!22, !5, i64 20}
!134 = !{!132, !5, i64 196}
!135 = !{!11, !5, i64 2936}
!136 = !{!137, !137, i64 0}
!137 = !{!"p2 _ZTS16storable_picture", !20, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"p1 _ZTS16storable_picture", !9, i64 0}
!140 = !{!141, !143, i64 6448}
!141 = !{!"storable_picture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 1608, !6, i64 3192, !6, i64 4776, !5, i64 6360, !5, i64 6364, !5, i64 6368, !5, i64 6372, !5, i64 6376, !5, i64 6380, !5, i64 6384, !5, i64 6388, !5, i64 6392, !5, i64 6396, !5, i64 6400, !5, i64 6404, !5, i64 6408, !5, i64 6412, !5, i64 6416, !5, i64 6420, !5, i64 6424, !5, i64 6428, !5, i64 6432, !142, i64 6440, !143, i64 6448, !143, i64 6456, !144, i64 6464, !145, i64 6472, !14, i64 6480, !146, i64 6488, !147, i64 6496, !147, i64 6504, !143, i64 6512, !24, i64 6520, !24, i64 6528, !139, i64 6536, !139, i64 6544, !139, i64 6552, !5, i64 6560, !5, i64 6564, !5, i64 6568, !5, i64 6572, !5, i64 6576, !5, i64 6580, !5, i64 6584}
!142 = !{!"p2 short", !20, i64 0}
!143 = !{!"p4 short", !18, i64 0}
!144 = !{!"p5 short", !17, i64 0}
!145 = !{!"p3 short", !19, i64 0}
!146 = !{!"p3 omnipotent char", !19, i64 0}
!147 = !{!"p3 long long", !19, i64 0}
!148 = !{!149, !143, i64 0}
!149 = !{!"", !143, i64 0, !6, i64 8}
!150 = !{!141, !5, i64 6392}
!151 = !{!141, !5, i64 6396}
!152 = !{!141, !5, i64 6408}
!153 = !{!141, !5, i64 6412}
!154 = !{!141, !144, i64 6464}
!155 = !{!143, !143, i64 0}
!156 = !{!141, !5, i64 6416}
!157 = !{!141, !5, i64 6420}
!158 = !{!141, !146, i64 6488}
!159 = !{!24, !24, i64 0}
!160 = !{!141, !143, i64 6512}
!161 = !{!145, !145, i64 0}
!162 = !{!33, !33, i64 0}
!163 = !{!11, !5, i64 4168}
!164 = !{!22, !5, i64 8}
!165 = !{!22, !5, i64 192}
!166 = !{!22, !5, i64 196}
!167 = !{!142, !142, i64 0}
!168 = !{!169, !169, i64 0}
!169 = !{!"p1 short", !9, i64 0}
!170 = distinct !{!170, !40}
!171 = !{!22, !5, i64 15548}
!172 = !{!22, !5, i64 204}
!173 = !{!22, !5, i64 15544}
!174 = !{!22, !5, i64 200}
!175 = distinct !{!175, !40}
!176 = distinct !{!176, !40, !177}
!177 = !{!"llvm.loop.peeled.count", i32 1}
!178 = distinct !{!178, !40}
!179 = !{!22, !5, i64 15520}
!180 = distinct !{!180, !40}
!181 = distinct !{!181, !40}
!182 = !{!22, !5, i64 15524}
!183 = distinct !{!183, !40}
!184 = distinct !{!184, !40}
!185 = distinct !{!185, !40}
!186 = distinct !{!186, !40}
!187 = distinct !{!187, !40}
!188 = distinct !{!188, !40}
!189 = distinct !{!189, !40}
!190 = distinct !{!190, !40}
!191 = distinct !{!191, !52}
!192 = distinct !{!192, !40}
!193 = distinct !{!193, !40}
!194 = distinct !{!194, !40}
!195 = distinct !{!195, !52}
!196 = distinct !{!196, !40}
!197 = distinct !{!197, !52}
!198 = distinct !{!198, !40}
!199 = distinct !{!199, !52}
!200 = distinct !{!200, !52}
!201 = distinct !{!201, !40}
!202 = distinct !{!202, !52}
!203 = distinct !{!203, !52}
!204 = distinct !{!204, !52}
!205 = distinct !{!205, !52}
!206 = distinct !{!206, !52}
!207 = distinct !{!207, !40}
!208 = distinct !{!208, !40}
end_hunk_0
