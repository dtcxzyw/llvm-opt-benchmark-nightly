Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_build_gamma_table:bb.a
  %i.gl = and i32 %.140.i.prol, %i.ff
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !62
  %i.gp = lshr i32 %.140.i.prol, %i.ez
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.gq
  store i16 %i.fv, ptr %i.gr, align 2, !tbaa !36
  %i.gs = add i32 %.140.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !199

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.140.i.unr = phi i32 [ %.042.i, %.lr.ph.i.preheader ], [ %i.gs, %.lr.ph.i.prol ]
  %i.gt = icmp samesign ult i32 %i.gk, 3
  br i1 %i.gt, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.140.i = phi i32 [ %i.hz, %.lr.ph.i ], [ %.140.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gu = and i32 %.140.i, %i.ff
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !62
  %i.gy = lshr i32 %.140.i, %i.ez
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.gz
  store i16 %i.fv, ptr %i.ha, align 2, !tbaa !36
  %i.hb = add i32 %.140.i, 1                      ; 2 uses
  %i.hc = and i32 %i.hb, %i.ff
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !62
  %i.hg = lshr i32 %i.hb, %i.ez
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %i.hh
  store i16 %i.fv, ptr %i.hi, align 2, !tbaa !36
  %i.hj = add i32 %.140.i, 2                      ; 2 uses
  %i.hk = and i32 %i.hj, %i.ff
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !62
  %i.ho = lshr i32 %i.hj, %i.ez
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hp
  store i16 %i.fv, ptr %i.hq, align 2, !tbaa !36
  %i.hr = add i32 %.140.i, 3                      ; 3 uses
  %i.hs = and i32 %i.hr, %i.ff
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !62
  %i.hw = lshr i32 %i.hr, %i.ez
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.hx
  store i16 %i.fv, ptr %i.hy, align 2, !tbaa !36
  %i.hz = add i32 %.140.i, 4
  %exitcond47.not.i.3 = icmp eq i32 %i.hr, %i.gh
  br i1 %exitcond47.not.i.3, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !200

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ia = add nuw nsw i32 %i.gh, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %png_gamma_16bit_correct.exit.i
  %.1.lcssa.i = phi i32 [ %.042.i, %png_gamma_16bit_correct.exit.i ], [ %i.ia, %._crit_edge.i.loopexit ] ; 6 uses
  %i.ib = add nuw nsw i32 %.13541.i, 1            ; 2 uses
  %exitcond48.not.i = icmp eq i32 %i.ib, 255
  br i1 %exitcond48.not.i, label %.preheader.i105, label %png_gamma_16bit_correct.exit.i, !llvm.loop !201

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %.243.i = phi i32 [ %i.jh, %.lr.ph44.i ], [ %.243.i.unr, %.lr.ph44.i.prol.loopexit ] ; 6 uses
  %i.ic = and i32 %.243.i, %i.ff
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !62
  %i.ig = lshr i32 %.243.i, %i.ez
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.ih
  store i16 -1, ptr %i.ii, align 2, !tbaa !36
  %i.ij = add nuw nsw i32 %.243.i, 1              ; 2 uses
  %i.ik = and i32 %i.ij, %i.ff
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !62
  %i.io = lshr i32 %i.ij, %i.ez
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.ip
  store i16 -1, ptr %i.iq, align 2, !tbaa !36
  %i.ir = add nuw nsw i32 %.243.i, 2              ; 2 uses
  %i.is = and i32 %i.ir, %i.ff
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !62
  %i.iw = lshr i32 %i.ir, %i.ez
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %i.ix
  store i16 -1, ptr %i.iy, align 2, !tbaa !36
  %i.iz = add nuw nsw i32 %.243.i, 3              ; 2 uses
  %i.ja = and i32 %i.iz, %i.ff
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !62
  %i.je = lshr i32 %i.iz, %i.ez
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jf
  store i16 -1, ptr %i.jg, align 2, !tbaa !36
  %i.jh = add nuw nsw i32 %.243.i, 4              ; 2 uses
  %exitcond49.not.i.3 = icmp eq i32 %i.jh, %i.fa
  br i1 %exitcond49.not.i.3, label %png_build_16to8_table.exit, label %.lr.ph44.i, !llvm.loop !202

bb.y:                                             ; preds = %bb.v
  tail call fastcc void @png_build_16bit_table(ptr noundef nonnull %0, ptr noundef nonnull %i.en, i32 noundef %i.el, i32 noundef %.063)
  br label %png_build_16to8_table.exit

png_build_16to8_table.exit:                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %.preheader.i105, %bb.y
  %i.ji = load i32, ptr %i.ei, align 4, !tbaa !206
  %i.jj = and i32 %i.ji, 6291584
  %.not70 = icmp eq i32 %i.jj, 0
  br i1 %.not70, label %png_build_8bit_table.exit99, label %bb.z

bb.z:                                             ; preds = %png_build_16to8_table.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call fastcc void @png_build_16bit_table(ptr noundef nonnull %0, ptr noundef nonnull %i.jk, i32 noundef %i.el, i32 noundef %.0.i)
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call fastcc void @png_build_16bit_table(ptr noundef nonnull %0, ptr noundef nonnull %i.jl, i32 noundef %i.el, i32 noundef %.062)
  br label %png_build_8bit_table.exit99

png_build_8bit_table.exit99:                      ; preds = %png_gamma_8bit_correct.exit.i91, %vector.body131, %png_build_16to8_table.exit, %bb.z, %png_build_8bit_table.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_build_16bit_table(ptr noalias noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef range(i32 0, 16) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 8, %2                        ; 6 uses
  %i.b = shl nuw nsw i32 1, %i.a
  %i.c = lshr exact i32 65536, %2
  %i.d = add nsw i32 %i.c, -1                     ; 3 uses
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = fdiv nnan double 1.000000e+00, %i.e      ; 2 uses
  %i.g = lshr exact i32 32768, %2                 ; 2 uses
  %i.h = zext nneg i32 %i.b to i64                ; 4 uses
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %i.i) #28 ; 4 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !37
  %i.k = add i32 %3, -95000
  %i.l = icmp ult i32 %i.k, 10001
  %i.m = sitofp i32 %3 to double
  %i.n = fmul nnan double %i.m, 1.000000e-05      ; 2 uses
  br i1 %i.l, label %.split.us, label %.preheader40

.split.us:                                        ; preds = %bb.a
  %.not39 = icmp eq i32 %2, 0
  br i1 %.not39, label %.preheader.us.us.preheader, label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.split.us
  %broadcast.splatinsert80 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat81 = shufflevector <8 x i32> %broadcast.splatinsert80, <8 x i32> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.o = shl nuw nsw <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %broadcast.splat81
  %i.p = shl nuw nsw <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %broadcast.splat81
  %i.q = shl nuw nsw <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, %broadcast.splat81
  %i.r = shl nuw nsw <8 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>, %broadcast.splat81
  %i.s = shl nuw nsw <8 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>, %broadcast.splat81
  %i.t = shl nuw nsw <8 x i32> <i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>, %broadcast.splat81
  %i.u = shl nuw nsw <8 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, %broadcast.splat81
  %i.v = shl nuw nsw <8 x i32> <i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>, %broadcast.splat81
  %i.w = shl nuw nsw <8 x i32> <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>, %broadcast.splat81
  %i.x = shl nuw nsw <8 x i32> <i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79>, %broadcast.splat81
  %i.y = shl nuw nsw <8 x i32> <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>, %broadcast.splat81
  %i.z = shl nuw nsw <8 x i32> <i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>, %broadcast.splat81
  %i.aa = shl nuw nsw <8 x i32> <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>, %broadcast.splat81
  %i.ab = shl nuw nsw <8 x i32> <i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111>, %broadcast.splat81
  %i.ac = shl nuw nsw <8 x i32> <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>, %broadcast.splat81
  %i.ad = shl nuw nsw <8 x i32> <i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>, %broadcast.splat81
  %i.ae = shl nuw nsw <8 x i32> <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>, %broadcast.splat81
  %i.af = shl nuw nsw <8 x i32> <i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143>, %broadcast.splat81
  %i.ag = shl nuw nsw <8 x i32> <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>, %broadcast.splat81
  %i.ah = shl nuw nsw <8 x i32> <i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159>, %broadcast.splat81
  %i.ai = shl nuw nsw <8 x i32> <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>, %broadcast.splat81
  %i.aj = shl nuw nsw <8 x i32> <i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175>, %broadcast.splat81
  %i.ak = shl nuw nsw <8 x i32> <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>, %broadcast.splat81
  %i.al = shl nuw nsw <8 x i32> <i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191>, %broadcast.splat81
  %i.am = shl nuw nsw <8 x i32> <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>, %broadcast.splat81
  %i.an = shl nuw nsw <8 x i32> <i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207>, %broadcast.splat81
  %i.ao = shl nuw nsw <8 x i32> <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>, %broadcast.splat81
  %i.ap = shl nuw nsw <8 x i32> <i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223>, %broadcast.splat81
  %i.aq = shl nuw nsw <8 x i32> <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>, %broadcast.splat81
  %i.ar = shl nuw nsw <8 x i32> <i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239>, %broadcast.splat81
  %i.as = shl nuw nsw <8 x i32> <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>, %broadcast.splat81
  %i.at = shl nuw nsw <8 x i32> <i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254, i32 255>, %broadcast.splat81
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %.preheader.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.preheader.us.us ], [ 0, %.preheader.us.us.preheader ] ; 3 uses
  %i.au = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 33 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv71
  store ptr %i.au, ptr %i.av, align 8, !tbaa !62
  %i.aw = trunc nuw nsw i64 %indvars.iv71 to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.ax = add nuw <8 x i32> %i.o, %broadcast.splat
  %i.ay = add nuw <8 x i32> %i.p, %broadcast.splat
  %i.az = trunc <8 x i32> %i.ax to <8 x i16>
  %i.ba = trunc <8 x i32> %i.ay to <8 x i16>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <8 x i16> %i.az, ptr %i.au, align 2, !tbaa !36
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !36
  %i.bc = add nuw <8 x i32> %i.q, %broadcast.splat
  %i.bd = add nuw <8 x i32> %i.r, %broadcast.splat
  %i.be = trunc <8 x i32> %i.bc to <8 x i16>
  %i.bf = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store <8 x i16> %i.be, ptr %i.bg, align 2, !tbaa !36
  store <8 x i16> %i.bf, ptr %i.bh, align 2, !tbaa !36
  %i.bi = add nuw <8 x i32> %i.s, %broadcast.splat
  %i.bj = add nuw <8 x i32> %i.t, %broadcast.splat
  %i.bk = trunc <8 x i32> %i.bi to <8 x i16>
  %i.bl = trunc <8 x i32> %i.bj to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store <8 x i16> %i.bk, ptr %i.bm, align 2, !tbaa !36
  store <8 x i16> %i.bl, ptr %i.bn, align 2, !tbaa !36
  %i.bo = add nuw <8 x i32> %i.u, %broadcast.splat
  %i.bp = add nuw <8 x i32> %i.v, %broadcast.splat
  %i.bq = trunc <8 x i32> %i.bo to <8 x i16>
  %i.br = trunc <8 x i32> %i.bp to <8 x i16>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  store <8 x i16> %i.bq, ptr %i.bs, align 2, !tbaa !36
  store <8 x i16> %i.br, ptr %i.bt, align 2, !tbaa !36
  %i.bu = add nuw <8 x i32> %i.w, %broadcast.splat
  %i.bv = add nuw <8 x i32> %i.x, %broadcast.splat
  %i.bw = trunc <8 x i32> %i.bu to <8 x i16>
  %i.bx = trunc <8 x i32> %i.bv to <8 x i16>
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  store <8 x i16> %i.bw, ptr %i.by, align 2, !tbaa !36
  store <8 x i16> %i.bx, ptr %i.bz, align 2, !tbaa !36
  %i.ca = add nuw <8 x i32> %i.y, %broadcast.splat
  %i.cb = add nuw <8 x i32> %i.z, %broadcast.splat
  %i.cc = trunc <8 x i32> %i.ca to <8 x i16>
  %i.cd = trunc <8 x i32> %i.cb to <8 x i16>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  store <8 x i16> %i.cc, ptr %i.ce, align 2, !tbaa !36
  store <8 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !36
  %i.cg = add nuw <8 x i32> %i.aa, %broadcast.splat
  %i.ch = add nuw <8 x i32> %i.ab, %broadcast.splat
  %i.ci = trunc <8 x i32> %i.cg to <8 x i16>
  %i.cj = trunc <8 x i32> %i.ch to <8 x i16>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  store <8 x i16> %i.ci, ptr %i.ck, align 2, !tbaa !36
  store <8 x i16> %i.cj, ptr %i.cl, align 2, !tbaa !36
  %i.cm = add nuw <8 x i32> %i.ac, %broadcast.splat
  %i.cn = add nuw <8 x i32> %i.ad, %broadcast.splat
  %i.co = trunc <8 x i32> %i.cm to <8 x i16>
  %i.cp = trunc <8 x i32> %i.cn to <8 x i16>
  %i.cq = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.cr = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  store <8 x i16> %i.co, ptr %i.cq, align 2, !tbaa !36
  store <8 x i16> %i.cp, ptr %i.cr, align 2, !tbaa !36
  %i.cs = add nuw <8 x i32> %i.ae, %broadcast.splat
  %i.ct = add nuw <8 x i32> %i.af, %broadcast.splat
  %i.cu = trunc <8 x i32> %i.cs to <8 x i16>
  %i.cv = trunc <8 x i32> %i.ct to <8 x i16>
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  %i.cx = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  store <8 x i16> %i.cu, ptr %i.cw, align 2, !tbaa !36
  store <8 x i16> %i.cv, ptr %i.cx, align 2, !tbaa !36
  %i.cy = add nuw <8 x i32> %i.ag, %broadcast.splat
  %i.cz = add nuw <8 x i32> %i.ah, %broadcast.splat
  %i.da = trunc <8 x i32> %i.cy to <8 x i16>
  %i.db = trunc <8 x i32> %i.cz to <8 x i16>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %i.au, i64 304
  store <8 x i16> %i.da, ptr %i.dc, align 2, !tbaa !36
  store <8 x i16> %i.db, ptr %i.dd, align 2, !tbaa !36
  %i.de = add nuw <8 x i32> %i.ai, %broadcast.splat
  %i.df = add nuw <8 x i32> %i.aj, %broadcast.splat
  %i.dg = trunc <8 x i32> %i.de to <8 x i16>
  %i.dh = trunc <8 x i32> %i.df to <8 x i16>
  %i.di = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  store <8 x i16> %i.dg, ptr %i.di, align 2, !tbaa !36
  store <8 x i16> %i.dh, ptr %i.dj, align 2, !tbaa !36
  %i.dk = add nuw <8 x i32> %i.ak, %broadcast.splat
  %i.dl = add nuw <8 x i32> %i.al, %broadcast.splat
  %i.dm = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dn = trunc <8 x i32> %i.dl to <8 x i16>
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 368
  store <8 x i16> %i.dm, ptr %i.do, align 2, !tbaa !36
  store <8 x i16> %i.dn, ptr %i.dp, align 2, !tbaa !36
  %i.dq = add nuw <8 x i32> %i.am, %broadcast.splat
  %i.dr = add nuw <8 x i32> %i.an, %broadcast.splat
  %i.ds = trunc <8 x i32> %i.dq to <8 x i16>
  %i.dt = trunc <8 x i32> %i.dr to <8 x i16>
  %i.du = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.dv = getelementptr inbounds nuw i8, ptr %i.au, i64 400
  store <8 x i16> %i.ds, ptr %i.du, align 2, !tbaa !36
  store <8 x i16> %i.dt, ptr %i.dv, align 2, !tbaa !36
  %i.dw = add nuw <8 x i32> %i.ao, %broadcast.splat
  %i.dx = add nuw <8 x i32> %i.ap, %broadcast.splat
  %i.dy = trunc <8 x i32> %i.dw to <8 x i16>
  %i.dz = trunc <8 x i32> %i.dx to <8 x i16>
  %i.ea = getelementptr inbounds nuw i8, ptr %i.au, i64 416
  %i.eb = getelementptr inbounds nuw i8, ptr %i.au, i64 432
  store <8 x i16> %i.dy, ptr %i.ea, align 2, !tbaa !36
  store <8 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !36
  %i.ec = add nuw <8 x i32> %i.aq, %broadcast.splat
  %i.ed = add nuw <8 x i32> %i.ar, %broadcast.splat
  %i.ee = trunc <8 x i32> %i.ec to <8 x i16>
  %i.ef = trunc <8 x i32> %i.ed to <8 x i16>
  %i.eg = getelementptr inbounds nuw i8, ptr %i.au, i64 448
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 464
  store <8 x i16> %i.ee, ptr %i.eg, align 2, !tbaa !36
  store <8 x i16> %i.ef, ptr %i.eh, align 2, !tbaa !36
  %i.ei = add nuw <8 x i32> %i.as, %broadcast.splat
  %i.ej = add nuw <8 x i32> %i.at, %broadcast.splat
  %i.ek = trunc <8 x i32> %i.ei to <8 x i16>
  %i.el = trunc <8 x i32> %i.ej to <8 x i16>
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 480
  %i.en = getelementptr inbounds nuw i8, ptr %i.au, i64 496
  store <8 x i16> %i.ek, ptr %i.em, align 2, !tbaa !36
  store <8 x i16> %i.el, ptr %i.en, align 2, !tbaa !36
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.h
  br i1 %exitcond75.not, label %.split50.us, label %.preheader.us.us, !llvm.loop !215

.preheader.us:                                    ; preds = %.split.us, %.loopexit.split.us48
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.loopexit.split.us48 ], [ 0, %.split.us ] ; 3 uses
  %i.eo = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv62
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !62
  %i.eq = trunc nuw nsw i64 %indvars.iv62 to i32  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59.1, %bb.b ] ; 4 uses
  %i.er = trunc nuw nsw i64 %indvars.iv58 to i32
  %i.es = shl nuw nsw i32 %i.er, %i.a
  %i.et = add nuw i32 %i.es, %i.eq
  %i.eu = mul i32 %i.et, 65535
  %i.ev = add i32 %i.eu, %i.g
  %i.ew = udiv i32 %i.ev, %i.d
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv58
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !36
  %indvars.iv.next59 = or disjoint i64 %indvars.iv58, 1 ; 2 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv.next59 to i32
  %i.fa = shl nuw nsw i32 %i.ez, %i.a
  %i.fb = add nuw i32 %i.fa, %i.eq
  %i.fc = mul i32 %i.fb, 65535
  %i.fd = add i32 %i.fc, %i.g
  %i.fe = udiv i32 %i.fd, %i.d
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv.next59
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !36
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %exitcond61.not.1 = icmp eq i64 %indvars.iv.next59.1, 256
  br i1 %exitcond61.not.1, label %.loopexit.split.us48, label %bb.b, !llvm.loop !216

.loopexit.split.us48:                             ; preds = %bb.b
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %i.h
  br i1 %exitcond66.not, label %.split50.us, label %.preheader.us, !llvm.loop !215

.preheader40:                                     ; preds = %bb.a, %.loopexit41
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.loopexit41 ], [ 0, %bb.a ] ; 3 uses
  %i.fh = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv54
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !62
  %i.fj = trunc nuw nsw i64 %indvars.iv54 to i32  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader40
  %indvars.iv = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32
  %i.fl = shl nuw nsw i32 %i.fk, %i.a
  %i.fm = add nuw i32 %i.fl, %i.fj
  %i.fn = uitofp i32 %i.fm to double
  %i.fo = fmul double %i.f, %i.fn
  %i.fp = tail call double @pow(double noundef %i.fo, double noundef %i.n) #28
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 6.553500e+04, double 5.000000e-01)
  %i.fr = tail call double @llvm.floor.f64(double %i.fq)
  %i.fs = fptoui double %i.fr to i16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.fv = shl nuw nsw i32 %i.fu, %i.a
  %i.fw = add nuw i32 %i.fv, %i.fj
  %i.fx = uitofp i32 %i.fw to double
  %i.fy = fmul double %i.f, %i.fx
  %i.fz = tail call double @pow(double noundef %i.fy, double noundef %i.n) #28
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double 6.553500e+04, double 5.000000e-01)
  %i.gb = tail call double @llvm.floor.f64(double %i.ga)
  %i.gc = fptoui double %i.gb to i16
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv.next
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit41, label %bb.c, !llvm.loop !217

.loopexit41:                                      ; preds = %bb.c
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, %i.h
  br i1 %exitcond57.not, label %.split50.us, label %.preheader40, !llvm.loop !215

.split50.us:                                      ; preds = %.loopexit41, %.loopexit.split.us48, %.preheader.us.us
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @png_set_option(ptr noalias nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = and i32 %1, -15
  %i.c = icmp eq i32 %i.b, 0
  %or.cond = and i1 %i.a, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 3, %1
  %.not = icmp eq i32 %2, 0
  %i.e = select i1 %.not, i32 2, i32 3
  %i.f = shl nuw nsw i32 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !218  ; 2 uses
  %i.i = xor i32 %i.d, -1
  %i.j = and i32 %i.h, %i.i
  %i.k = or i32 %i.j, %i.f
  store i32 %i.k, ptr %i.g, align 8, !tbaa !218
  %i.l = lshr i32 %i.h, %1
  %i.m = and i32 %i.l, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @png_image_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.png_control, align 8        ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 6 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %png_image_free_function.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = and i8 %i.h, -3
  store i8 %i.l, ptr %i.g, align 8
  %.not14.i = icmp eq ptr %i.k, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.j, align 8, !tbaa !48
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !tbaa.struct !225
  store ptr %1, ptr %0, align 8, !tbaa !219
  %i.n = load ptr, ptr %1, align 8, !tbaa !223
  call void @png_free(ptr noundef %i.n, ptr noundef nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 1
  %.not15.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @png_destroy_write_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r) #28
  br label %png_image_free_function.exit

bb.j:                                             ; preds = %bb.h
  call void @png_destroy_read_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r, ptr noundef null) #28
  br label %png_image_free_function.exit

png_image_free_function.exit:                     ; preds = %bb.d, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr null, ptr %0, align 8, !tbaa !219
  br label %bb.k

bb.k:                                             ; preds = %png_image_free_function.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @png_image_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = tail call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 0, ptr noundef %1) #28 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !226
  %i.e = or i32 %i.d, 2
  store i32 %i.e, ptr %i.c, align 8, !tbaa !226
  tail call void @png_image_free(ptr noundef %0)
  ret i32 0
}

declare void @png_chunk_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #23

declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
