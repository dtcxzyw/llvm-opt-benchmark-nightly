inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_build_gamma_table:bb.a
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i103, %i.ep
  br i1 %exitcond.not.i104, label %.preheader37.i, label %bb.x, !llvm.loop !205

.preheader.i105:                                  ; preds = %._crit_edge.i
  %i.fi = icmp ult i32 %.135.lcssa.i, %i.fa
  br i1 %i.fi, label %.lr.ph44.i.preheader, label %png_build_16to8_table.exit

.lr.ph44.i.preheader:                             ; preds = %.preheader.i105
  %i.fj = sub nuw i32 %i.fa, %.135.lcssa.i
  %xtraiter142 = and i32 %i.fj, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i.prol
  %.243.i.prol = phi i32 [ %i.fr, %.lr.ph44.i.prol ], [ %.135.lcssa.i, %.lr.ph44.i.preheader ] ; 3 uses
  %prol.iter144 = phi i32 [ %prol.iter144.next, %.lr.ph44.i.prol ], [ 0, %.lr.ph44.i.preheader ]
  %i.fk = and i32 %.243.i.prol, %i.ff
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !176
  %i.fo = lshr i32 %.243.i.prol, %i.ez
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.fp
  store i16 -1, ptr %i.fq, align 2, !tbaa !48
  %i.fr = add nuw i32 %.243.i.prol, 1             ; 2 uses
  %prol.iter144.next = add i32 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i32 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol, !llvm.loop !206

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.i.preheader
  %.243.i.unr = phi i32 [ %.135.lcssa.i, %.lr.ph44.i.preheader ], [ %i.fr, %.lr.ph44.i.prol ]
  %i.fs = sub i32 %.135.lcssa.i, %i.fa
  %i.ft = icmp ugt i32 %i.fs, -4
  br i1 %i.ft, label %png_build_16to8_table.exit, label %.lr.ph44.i

png_gamma_16bit_correct.exit.i:                   ; preds = %._crit_edge.i, %.preheader37.i
  %.142.i = phi i32 [ 0, %.preheader37.i ], [ %i.ib, %._crit_edge.i ] ; 2 uses
  %.03441.i = phi i32 [ 0, %.preheader37.i ], [ %.135.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.fu = trunc nuw nsw i32 %.142.i to i16
  %i.fv = mul nuw i16 %i.fu, 257                  ; 6 uses
  %i.fw = zext i16 %i.fv to i32
  %i.fx = add nuw nsw i32 %i.fw, 128
  %i.fy = uitofp nneg i32 %i.fx to double
  %i.fz = fdiv double %i.fy, 6.553500e+04
  %i.ga = tail call double @pow(double noundef %i.fz, double noundef %i.fe) #28, !tbaa !3
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.ga, double 6.553500e+04, double 5.000000e-01)
  %i.gc = tail call double @llvm.floor.f64(double %i.gb)
  %i.gd = fptoui double %i.gc to i16
  %i.ge = zext i16 %i.gd to i32
  %i.gf = mul nuw i32 %i.fb, %i.ge
  %i.gg = add nuw i32 %i.gf, 32768
  %i.gh = udiv i32 %i.gg, 65535                   ; 5 uses
  %.not39.i = icmp ugt i32 %.03441.i, %i.gh
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %png_gamma_16bit_correct.exit.i
  %i.gi = add nuw nsw i32 %i.gh, 1
  %i.gj = sub nuw i32 %i.gi, %.03441.i
  %i.gk = sub nuw i32 %i.gh, %.03441.i
  %xtraiter = and i32 %i.gj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.13540.i.prol = phi i32 [ %i.gs, %.lr.ph.i.prol ], [ %.03441.i, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gl = and i32 %.13540.i.prol, %i.ff
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !176
  %i.gp = lshr i32 %.13540.i.prol, %i.ez
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.gq
  store i16 %i.fv, ptr %i.gr, align 2, !tbaa !48
  %i.gs = add i32 %.13540.i.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !207

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.13540.i.unr = phi i32 [ %.03441.i, %.lr.ph.i.preheader ], [ %i.gs, %.lr.ph.i.prol ]
  %i.gt = icmp samesign ult i32 %i.gk, 3
  br i1 %i.gt, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.13540.i = phi i32 [ %i.hz, %.lr.ph.i ], [ %.13540.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gu = and i32 %.13540.i, %i.ff
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !176
  %i.gy = lshr i32 %.13540.i, %i.ez
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.gz
  store i16 %i.fv, ptr %i.ha, align 2, !tbaa !48
  %i.hb = add i32 %.13540.i, 1                    ; 2 uses
  %i.hc = and i32 %i.hb, %i.ff
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !176
  %i.hg = lshr i32 %i.hb, %i.ez
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %i.hh
  store i16 %i.fv, ptr %i.hi, align 2, !tbaa !48
  %i.hj = add i32 %.13540.i, 2                    ; 2 uses
  %i.hk = and i32 %i.hj, %i.ff
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !176
  %i.ho = lshr i32 %i.hj, %i.ez
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hp
  store i16 %i.fv, ptr %i.hq, align 2, !tbaa !48
  %i.hr = add i32 %.13540.i, 3                    ; 3 uses
  %i.hs = and i32 %i.hr, %i.ff
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !176
  %i.hw = lshr i32 %i.hr, %i.ez
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.hx
  store i16 %i.fv, ptr %i.hy, align 2, !tbaa !48
  %i.hz = add i32 %.13540.i, 4
  %exitcond47.not.i.3 = icmp eq i32 %i.hr, %i.gh
  br i1 %exitcond47.not.i.3, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !208

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ia = add nuw nsw i32 %i.gh, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %png_gamma_16bit_correct.exit.i
  %.135.lcssa.i = phi i32 [ %.03441.i, %png_gamma_16bit_correct.exit.i ], [ %i.ia, %._crit_edge.i.loopexit ] ; 6 uses
  %i.ib = add nuw nsw i32 %.142.i, 1              ; 2 uses
  %exitcond48.not.i = icmp eq i32 %i.ib, 255
  br i1 %exitcond48.not.i, label %.preheader.i105, label %png_gamma_16bit_correct.exit.i, !llvm.loop !209

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %.243.i = phi i32 [ %i.jh, %.lr.ph44.i ], [ %.243.i.unr, %.lr.ph44.i.prol.loopexit ] ; 6 uses
  %i.ic = and i32 %.243.i, %i.ff
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !176
  %i.ig = lshr i32 %.243.i, %i.ez
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.ih
  store i16 -1, ptr %i.ii, align 2, !tbaa !48
  %i.ij = add nuw i32 %.243.i, 1                  ; 2 uses
  %i.ik = and i32 %i.ij, %i.ff
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !176
  %i.io = lshr i32 %i.ij, %i.ez
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.ip
  store i16 -1, ptr %i.iq, align 2, !tbaa !48
  %i.ir = add nuw i32 %.243.i, 2                  ; 2 uses
  %i.is = and i32 %i.ir, %i.ff
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !176
  %i.iw = lshr i32 %i.ir, %i.ez
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %i.ix
  store i16 -1, ptr %i.iy, align 2, !tbaa !48
  %i.iz = add nuw i32 %.243.i, 3                  ; 2 uses
  %i.ja = and i32 %i.iz, %i.ff
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !176
  %i.je = lshr i32 %i.iz, %i.ez
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jf
  store i16 -1, ptr %i.jg, align 2, !tbaa !48
  %i.jh = add nuw i32 %.243.i, 4                  ; 2 uses
  %exitcond49.not.i.3 = icmp eq i32 %i.jh, %i.fa
  br i1 %exitcond49.not.i.3, label %png_build_16to8_table.exit, label %.lr.ph44.i, !llvm.loop !210

bb.y:                                             ; preds = %bb.v
  tail call fastcc void @png_build_16bit_table(ptr noundef nonnull %0, ptr noundef nonnull %i.en, i32 noundef %i.el, i32 noundef %.063)
  br label %png_build_16to8_table.exit

png_build_16to8_table.exit:                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %.preheader.i105, %bb.y
  %i.ji = load i32, ptr %i.ei, align 4, !tbaa !190
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
  %i.a = sub nsw i32 8, %2                        ; 5 uses
  %i.b = shl nuw nsw i32 1, %i.a
  %i.c = lshr exact i32 65536, %2
  %i.d = add nsw i32 %i.c, -1                     ; 3 uses
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = fdiv nnan double 1.000000e+00, %i.e      ; 2 uses
  %i.g = lshr exact i32 32768, %2                 ; 2 uses
  %i.h = zext nneg i32 %i.b to i64                ; 3 uses
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %i.i) #28 ; 4 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !49
  %i.k = add i32 %3, -95000
  %i.l = icmp ult i32 %i.k, 10001
  %i.m = sitofp i32 %3 to double
  %i.n = fmul nnan double %i.m, 1.000000e-05      ; 2 uses
  br i1 %i.l, label %.split.us, label %.preheader40

.split.us:                                        ; preds = %bb.a
  %.not39 = icmp eq i32 %2, 0
  br i1 %.not39, label %.preheader.us.us, label %.preheader.us

.preheader.us.us:                                 ; preds = %.split.us, %.preheader.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.preheader.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.o = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 33 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv71
  store ptr %i.o, ptr %i.p, align 8, !tbaa !176
  %4 = trunc i64 %indvars.iv71 to i16
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %4, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 32 uses
  %5 = add <8 x i16> %broadcast.splat, <i16 0, i16 256, i16 512, i16 768, i16 1024, i16 1280, i16 1536, i16 1792>
  %6 = add <8 x i16> %broadcast.splat, <i16 2048, i16 2304, i16 2560, i16 2816, i16 3072, i16 3328, i16 3584, i16 3840>
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <8 x i16> %5, ptr %i.o, align 2, !tbaa !48
  store <8 x i16> %6, ptr %i.q, align 2, !tbaa !48
  %7 = add <8 x i16> %broadcast.splat, <i16 4096, i16 4352, i16 4608, i16 4864, i16 5120, i16 5376, i16 5632, i16 5888>
  %8 = add <8 x i16> %broadcast.splat, <i16 6144, i16 6400, i16 6656, i16 6912, i16 7168, i16 7424, i16 7680, i16 7936>
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store <8 x i16> %7, ptr %i.r, align 2, !tbaa !48
  store <8 x i16> %8, ptr %i.s, align 2, !tbaa !48
  %9 = add <8 x i16> %broadcast.splat, <i16 8192, i16 8448, i16 8704, i16 8960, i16 9216, i16 9472, i16 9728, i16 9984>
  %10 = add <8 x i16> %broadcast.splat, <i16 10240, i16 10496, i16 10752, i16 11008, i16 11264, i16 11520, i16 11776, i16 12032>
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store <8 x i16> %9, ptr %i.t, align 2, !tbaa !48
  store <8 x i16> %10, ptr %i.u, align 2, !tbaa !48
  %11 = add <8 x i16> %broadcast.splat, <i16 12288, i16 12544, i16 12800, i16 13056, i16 13312, i16 13568, i16 13824, i16 14080>
  %12 = add <8 x i16> %broadcast.splat, <i16 14336, i16 14592, i16 14848, i16 15104, i16 15360, i16 15616, i16 15872, i16 16128>
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store <8 x i16> %11, ptr %i.v, align 2, !tbaa !48
  store <8 x i16> %12, ptr %i.w, align 2, !tbaa !48
  %13 = add <8 x i16> %broadcast.splat, <i16 16384, i16 16640, i16 16896, i16 17152, i16 17408, i16 17664, i16 17920, i16 18176>
  %14 = add <8 x i16> %broadcast.splat, <i16 18432, i16 18688, i16 18944, i16 19200, i16 19456, i16 19712, i16 19968, i16 20224>
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  store <8 x i16> %13, ptr %i.x, align 2, !tbaa !48
  store <8 x i16> %14, ptr %i.y, align 2, !tbaa !48
  %15 = add <8 x i16> %broadcast.splat, <i16 20480, i16 20736, i16 20992, i16 21248, i16 21504, i16 21760, i16 22016, i16 22272>
  %16 = add <8 x i16> %broadcast.splat, <i16 22528, i16 22784, i16 23040, i16 23296, i16 23552, i16 23808, i16 24064, i16 24320>
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  store <8 x i16> %15, ptr %i.z, align 2, !tbaa !48
  store <8 x i16> %16, ptr %i.aa, align 2, !tbaa !48
  %17 = add <8 x i16> %broadcast.splat, <i16 24576, i16 24832, i16 25088, i16 25344, i16 25600, i16 25856, i16 26112, i16 26368>
  %18 = add <8 x i16> %broadcast.splat, <i16 26624, i16 26880, i16 27136, i16 27392, i16 27648, i16 27904, i16 28160, i16 28416>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  store <8 x i16> %17, ptr %i.ab, align 2, !tbaa !48
  store <8 x i16> %18, ptr %i.ac, align 2, !tbaa !48
  %19 = add <8 x i16> %broadcast.splat, <i16 28672, i16 28928, i16 29184, i16 29440, i16 29696, i16 29952, i16 30208, i16 30464>
  %20 = add <8 x i16> %broadcast.splat, <i16 30720, i16 30976, i16 31232, i16 31488, i16 31744, i16 32000, i16 32256, i16 32512>
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  store <8 x i16> %19, ptr %i.ad, align 2, !tbaa !48
  store <8 x i16> %20, ptr %i.ae, align 2, !tbaa !48
  %21 = add <8 x i16> %broadcast.splat, <i16 -32768, i16 -32512, i16 -32256, i16 -32000, i16 -31744, i16 -31488, i16 -31232, i16 -30976>
  %22 = add <8 x i16> %broadcast.splat, <i16 -30720, i16 -30464, i16 -30208, i16 -29952, i16 -29696, i16 -29440, i16 -29184, i16 -28928>
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  store <8 x i16> %21, ptr %i.af, align 2, !tbaa !48
  store <8 x i16> %22, ptr %i.ag, align 2, !tbaa !48
  %23 = add <8 x i16> %broadcast.splat, <i16 -28672, i16 -28416, i16 -28160, i16 -27904, i16 -27648, i16 -27392, i16 -27136, i16 -26880>
  %24 = add <8 x i16> %broadcast.splat, <i16 -26624, i16 -26368, i16 -26112, i16 -25856, i16 -25600, i16 -25344, i16 -25088, i16 -24832>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  store <8 x i16> %23, ptr %i.ah, align 2, !tbaa !48
  store <8 x i16> %24, ptr %i.ai, align 2, !tbaa !48
  %25 = add <8 x i16> %broadcast.splat, <i16 -24576, i16 -24320, i16 -24064, i16 -23808, i16 -23552, i16 -23296, i16 -23040, i16 -22784>
  %26 = add <8 x i16> %broadcast.splat, <i16 -22528, i16 -22272, i16 -22016, i16 -21760, i16 -21504, i16 -21248, i16 -20992, i16 -20736>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 336
  store <8 x i16> %25, ptr %i.aj, align 2, !tbaa !48
  store <8 x i16> %26, ptr %i.ak, align 2, !tbaa !48
  %27 = add <8 x i16> %broadcast.splat, <i16 -20480, i16 -20224, i16 -19968, i16 -19712, i16 -19456, i16 -19200, i16 -18944, i16 -18688>
  %28 = add <8 x i16> %broadcast.splat, <i16 -18432, i16 -18176, i16 -17920, i16 -17664, i16 -17408, i16 -17152, i16 -16896, i16 -16640>
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  store <8 x i16> %27, ptr %i.al, align 2, !tbaa !48
  store <8 x i16> %28, ptr %i.am, align 2, !tbaa !48
  %29 = add <8 x i16> %broadcast.splat, <i16 -16384, i16 -16128, i16 -15872, i16 -15616, i16 -15360, i16 -15104, i16 -14848, i16 -14592>
  %30 = add <8 x i16> %broadcast.splat, <i16 -14336, i16 -14080, i16 -13824, i16 -13568, i16 -13312, i16 -13056, i16 -12800, i16 -12544>
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  store <8 x i16> %29, ptr %i.an, align 2, !tbaa !48
  store <8 x i16> %30, ptr %i.ao, align 2, !tbaa !48
  %31 = add <8 x i16> %broadcast.splat, <i16 -12288, i16 -12032, i16 -11776, i16 -11520, i16 -11264, i16 -11008, i16 -10752, i16 -10496>
  %32 = add <8 x i16> %broadcast.splat, <i16 -10240, i16 -9984, i16 -9728, i16 -9472, i16 -9216, i16 -8960, i16 -8704, i16 -8448>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  store <8 x i16> %31, ptr %i.ap, align 2, !tbaa !48
  store <8 x i16> %32, ptr %i.aq, align 2, !tbaa !48
  %33 = add <8 x i16> %broadcast.splat, <i16 -8192, i16 -7936, i16 -7680, i16 -7424, i16 -7168, i16 -6912, i16 -6656, i16 -6400>
  %34 = add <8 x i16> %broadcast.splat, <i16 -6144, i16 -5888, i16 -5632, i16 -5376, i16 -5120, i16 -4864, i16 -4608, i16 -4352>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  store <8 x i16> %33, ptr %i.ar, align 2, !tbaa !48
  store <8 x i16> %34, ptr %i.as, align 2, !tbaa !48
  %35 = add <8 x i16> %broadcast.splat, <i16 -4096, i16 -3840, i16 -3584, i16 -3328, i16 -3072, i16 -2816, i16 -2560, i16 -2304>
  %36 = add <8 x i16> %broadcast.splat, <i16 -2048, i16 -1792, i16 -1536, i16 -1280, i16 -1024, i16 -768, i16 -512, i16 -256>
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 480
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 496
  store <8 x i16> %35, ptr %i.at, align 2, !tbaa !48
  store <8 x i16> %36, ptr %i.au, align 2, !tbaa !48
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, 256
  br i1 %exitcond75.not, label %.split50.us, label %.preheader.us.us, !llvm.loop !211

.preheader.us:                                    ; preds = %.split.us, %.loopexit.split.us47
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.loopexit.split.us47 ], [ 0, %.split.us ] ; 3 uses
  %i.av = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv62
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !176
  %i.ax = trunc nuw nsw i64 %indvars.iv62 to i32  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59.1, %bb.b ] ; 4 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv58 to i32
  %i.az = shl nuw nsw i32 %i.ay, %i.a
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = mul i32 %i.ba, 65535
  %i.bc = add i32 %i.bb, %i.g
  %i.bd = udiv i32 %i.bc, %i.d
  %i.be = trunc i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv58
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !48
  %indvars.iv.next59 = or disjoint i64 %indvars.iv58, 1 ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.next59 to i32
  %i.bh = shl nuw nsw i32 %i.bg, %i.a
  %i.bi = add i32 %i.bh, %i.ax
  %i.bj = mul i32 %i.bi, 65535
  %i.bk = add i32 %i.bj, %i.g
  %i.bl = udiv i32 %i.bk, %i.d
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.next59
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !48
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %exitcond61.not.1 = icmp eq i64 %indvars.iv.next59.1, 256
  br i1 %exitcond61.not.1, label %.loopexit.split.us47, label %bb.b, !llvm.loop !212

.loopexit.split.us47:                             ; preds = %bb.b
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %i.h
  br i1 %exitcond66.not, label %.split50.us, label %.preheader.us, !llvm.loop !211

.preheader40:                                     ; preds = %bb.a, %.loopexit41
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.loopexit41 ], [ 0, %bb.a ] ; 3 uses
  %i.bo = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv54
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !176
  %i.bq = trunc nuw nsw i64 %indvars.iv54 to i32  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader40
  %indvars.iv = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = shl nuw nsw i32 %i.br, %i.a
  %i.bt = add i32 %i.bs, %i.bq
  %i.bu = uitofp i32 %i.bt to double
  %i.bv = fmul double %i.f, %i.bu
  %i.bw = tail call double @pow(double noundef %i.bv, double noundef %i.n) #28, !tbaa !3
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double 6.553500e+04, double 5.000000e-01)
  %i.by = tail call double @llvm.floor.f64(double %i.bx)
  %i.bz = fptoui double %i.by to i16
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !48
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cc = shl nuw nsw i32 %i.cb, %i.a
  %i.cd = add i32 %i.cc, %i.bq
  %i.ce = uitofp i32 %i.cd to double
  %i.cf = fmul double %i.f, %i.ce
  %i.cg = tail call double @pow(double noundef %i.cf, double noundef %i.n) #28, !tbaa !3
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double 6.553500e+04, double 5.000000e-01)
  %i.ci = tail call double @llvm.floor.f64(double %i.ch)
  %i.cj = fptoui double %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv.next
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit41, label %bb.c, !llvm.loop !213

.loopexit41:                                      ; preds = %bb.c
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, %i.h
  br i1 %exitcond57.not, label %.split50.us, label %.preheader40, !llvm.loop !211

.split50.us:                                      ; preds = %.loopexit41, %.loopexit.split.us47, %.preheader.us.us
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !214  ; 2 uses
  %i.i = xor i32 %i.d, -1
  %i.j = and i32 %i.h, %i.i
  %i.k = or i32 %i.j, %i.f
  store i32 %i.k, ptr %i.g, align 8, !tbaa !214
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 6 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %i.l = and i8 %i.h, -3
  store i8 %i.l, ptr %i.g, align 8
  %.not14.i = icmp eq ptr %i.k, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.j, align 8, !tbaa !96
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !tbaa.struct !222
  store ptr %1, ptr %0, align 8, !tbaa !215
  %i.n = load ptr, ptr %1, align 8, !tbaa !221
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
  store ptr null, ptr %0, align 8, !tbaa !215
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !224
  %i.e = or i32 %i.d, 2
  store i32 %i.e, ptr %i.c, align 8, !tbaa !224
  tail call void @png_image_free(ptr noundef %0)
  ret i32 0
}
end_hunk_0
