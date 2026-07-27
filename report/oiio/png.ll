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
  store ptr %i.j, ptr %1, align 8, !tbaa !49
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
  %4 = shl nuw nsw <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %broadcast.splat81
  %5 = shl nuw nsw <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %broadcast.splat81
  %6 = shl nuw nsw <8 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, %broadcast.splat81
  %7 = shl nuw nsw <8 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>, %broadcast.splat81
  %8 = shl nuw nsw <8 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>, %broadcast.splat81
  %9 = shl nuw nsw <8 x i32> <i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>, %broadcast.splat81
  %10 = shl nuw nsw <8 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, %broadcast.splat81
  %11 = shl nuw nsw <8 x i32> <i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>, %broadcast.splat81
  %12 = shl nuw nsw <8 x i32> <i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71>, %broadcast.splat81
  %13 = shl nuw nsw <8 x i32> <i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79>, %broadcast.splat81
  %14 = shl nuw nsw <8 x i32> <i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87>, %broadcast.splat81
  %15 = shl nuw nsw <8 x i32> <i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>, %broadcast.splat81
  %16 = shl nuw nsw <8 x i32> <i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103>, %broadcast.splat81
  %17 = shl nuw nsw <8 x i32> <i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111>, %broadcast.splat81
  %18 = shl nuw nsw <8 x i32> <i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119>, %broadcast.splat81
  %19 = shl nuw nsw <8 x i32> <i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>, %broadcast.splat81
  %20 = shl nuw nsw <8 x i32> <i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135>, %broadcast.splat81
  %21 = shl nuw nsw <8 x i32> <i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143>, %broadcast.splat81
  %22 = shl nuw nsw <8 x i32> <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151>, %broadcast.splat81
  %23 = shl nuw nsw <8 x i32> <i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159>, %broadcast.splat81
  %24 = shl nuw nsw <8 x i32> <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167>, %broadcast.splat81
  %25 = shl nuw nsw <8 x i32> <i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175>, %broadcast.splat81
  %26 = shl nuw nsw <8 x i32> <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183>, %broadcast.splat81
  %27 = shl nuw nsw <8 x i32> <i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191>, %broadcast.splat81
  %28 = shl nuw nsw <8 x i32> <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199>, %broadcast.splat81
  %29 = shl nuw nsw <8 x i32> <i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207>, %broadcast.splat81
  %30 = shl nuw nsw <8 x i32> <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215>, %broadcast.splat81
  %31 = shl nuw nsw <8 x i32> <i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223>, %broadcast.splat81
  %32 = shl nuw nsw <8 x i32> <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231>, %broadcast.splat81
  %33 = shl nuw nsw <8 x i32> <i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239>, %broadcast.splat81
  %34 = shl nuw nsw <8 x i32> <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>, %broadcast.splat81
  %35 = shl nuw nsw <8 x i32> <i32 248, i32 249, i32 250, i32 251, i32 252, i32 253, i32 254, i32 255>, %broadcast.splat81
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %.preheader.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.preheader.us.us ], [ 0, %.preheader.us.us.preheader ] ; 3 uses
  %i.o = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 33 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv71
  store ptr %i.o, ptr %i.p, align 8, !tbaa !176
  %36 = trunc nuw nsw i64 %indvars.iv71 to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %36, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 32 uses
  %37 = add <8 x i32> %4, %broadcast.splat
  %38 = add <8 x i32> %5, %broadcast.splat
  %39 = trunc <8 x i32> %37 to <8 x i16>
  %40 = trunc <8 x i32> %38 to <8 x i16>
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <8 x i16> %39, ptr %i.o, align 2, !tbaa !48
  store <8 x i16> %40, ptr %i.q, align 2, !tbaa !48
  %41 = add <8 x i32> %6, %broadcast.splat
  %42 = add <8 x i32> %7, %broadcast.splat
  %43 = trunc <8 x i32> %41 to <8 x i16>
  %44 = trunc <8 x i32> %42 to <8 x i16>
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store <8 x i16> %43, ptr %i.r, align 2, !tbaa !48
  store <8 x i16> %44, ptr %i.s, align 2, !tbaa !48
  %45 = add <8 x i32> %8, %broadcast.splat
  %46 = add <8 x i32> %9, %broadcast.splat
  %47 = trunc <8 x i32> %45 to <8 x i16>
  %48 = trunc <8 x i32> %46 to <8 x i16>
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store <8 x i16> %47, ptr %i.t, align 2, !tbaa !48
  store <8 x i16> %48, ptr %i.u, align 2, !tbaa !48
  %49 = add <8 x i32> %10, %broadcast.splat
  %50 = add <8 x i32> %11, %broadcast.splat
  %51 = trunc <8 x i32> %49 to <8 x i16>
  %52 = trunc <8 x i32> %50 to <8 x i16>
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store <8 x i16> %51, ptr %i.v, align 2, !tbaa !48
  store <8 x i16> %52, ptr %i.w, align 2, !tbaa !48
  %53 = add <8 x i32> %12, %broadcast.splat
  %54 = add <8 x i32> %13, %broadcast.splat
  %55 = trunc <8 x i32> %53 to <8 x i16>
  %56 = trunc <8 x i32> %54 to <8 x i16>
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  store <8 x i16> %55, ptr %i.x, align 2, !tbaa !48
  store <8 x i16> %56, ptr %i.y, align 2, !tbaa !48
  %57 = add <8 x i32> %14, %broadcast.splat
  %58 = add <8 x i32> %15, %broadcast.splat
  %59 = trunc <8 x i32> %57 to <8 x i16>
  %60 = trunc <8 x i32> %58 to <8 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  store <8 x i16> %59, ptr %i.z, align 2, !tbaa !48
  store <8 x i16> %60, ptr %i.aa, align 2, !tbaa !48
  %61 = add <8 x i32> %16, %broadcast.splat
  %62 = add <8 x i32> %17, %broadcast.splat
  %63 = trunc <8 x i32> %61 to <8 x i16>
  %64 = trunc <8 x i32> %62 to <8 x i16>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  store <8 x i16> %63, ptr %i.ab, align 2, !tbaa !48
  store <8 x i16> %64, ptr %i.ac, align 2, !tbaa !48
  %65 = add <8 x i32> %18, %broadcast.splat
  %66 = add <8 x i32> %19, %broadcast.splat
  %67 = trunc <8 x i32> %65 to <8 x i16>
  %68 = trunc <8 x i32> %66 to <8 x i16>
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  store <8 x i16> %67, ptr %i.ad, align 2, !tbaa !48
  store <8 x i16> %68, ptr %i.ae, align 2, !tbaa !48
  %69 = add <8 x i32> %20, %broadcast.splat
  %70 = add <8 x i32> %21, %broadcast.splat
  %71 = trunc <8 x i32> %69 to <8 x i16>
  %72 = trunc <8 x i32> %70 to <8 x i16>
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  store <8 x i16> %71, ptr %i.af, align 2, !tbaa !48
  store <8 x i16> %72, ptr %i.ag, align 2, !tbaa !48
  %73 = add <8 x i32> %22, %broadcast.splat
  %74 = add <8 x i32> %23, %broadcast.splat
  %75 = trunc <8 x i32> %73 to <8 x i16>
  %76 = trunc <8 x i32> %74 to <8 x i16>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  store <8 x i16> %75, ptr %i.ah, align 2, !tbaa !48
  store <8 x i16> %76, ptr %i.ai, align 2, !tbaa !48
  %77 = add <8 x i32> %24, %broadcast.splat
  %78 = add <8 x i32> %25, %broadcast.splat
  %79 = trunc <8 x i32> %77 to <8 x i16>
  %80 = trunc <8 x i32> %78 to <8 x i16>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 336
  store <8 x i16> %79, ptr %i.aj, align 2, !tbaa !48
  store <8 x i16> %80, ptr %i.ak, align 2, !tbaa !48
  %81 = add <8 x i32> %26, %broadcast.splat
  %82 = add <8 x i32> %27, %broadcast.splat
  %83 = trunc <8 x i32> %81 to <8 x i16>
  %84 = trunc <8 x i32> %82 to <8 x i16>
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  store <8 x i16> %83, ptr %i.al, align 2, !tbaa !48
  store <8 x i16> %84, ptr %i.am, align 2, !tbaa !48
  %85 = add <8 x i32> %28, %broadcast.splat
  %86 = add <8 x i32> %29, %broadcast.splat
  %87 = trunc <8 x i32> %85 to <8 x i16>
  %88 = trunc <8 x i32> %86 to <8 x i16>
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  store <8 x i16> %87, ptr %i.an, align 2, !tbaa !48
  store <8 x i16> %88, ptr %i.ao, align 2, !tbaa !48
  %89 = add <8 x i32> %30, %broadcast.splat
  %90 = add <8 x i32> %31, %broadcast.splat
  %91 = trunc <8 x i32> %89 to <8 x i16>
  %92 = trunc <8 x i32> %90 to <8 x i16>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  store <8 x i16> %91, ptr %i.ap, align 2, !tbaa !48
  store <8 x i16> %92, ptr %i.aq, align 2, !tbaa !48
  %93 = add <8 x i32> %32, %broadcast.splat
  %94 = add <8 x i32> %33, %broadcast.splat
  %95 = trunc <8 x i32> %93 to <8 x i16>
  %96 = trunc <8 x i32> %94 to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  store <8 x i16> %95, ptr %i.ar, align 2, !tbaa !48
  store <8 x i16> %96, ptr %i.as, align 2, !tbaa !48
  %97 = add <8 x i32> %34, %broadcast.splat
  %98 = add <8 x i32> %35, %broadcast.splat
  %99 = trunc <8 x i32> %97 to <8 x i16>
  %100 = trunc <8 x i32> %98 to <8 x i16>
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 480
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 496
  store <8 x i16> %99, ptr %i.at, align 2, !tbaa !48
  store <8 x i16> %100, ptr %i.au, align 2, !tbaa !48
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.h
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
