Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@bary_mul_toom3:bb.a
.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.eg, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.dr = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.dt = getelementptr [4 x i8], ptr %.0560, i64 %.490.i.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !7
  %i.du = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = getelementptr [4 x i8], ptr %.0560, i64 %i.du
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !7
  %i.dy = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.eb = getelementptr [4 x i8], ptr %.0560, i64 %i.dy
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !7
  %i.ec = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  %i.ef = getelementptr [4 x i8], ptr %.0560, i64 %i.ec
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !7
  %i.eg = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.eg, %.062.i.i
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !77

bary_add.exit:                                    ; preds = %.preheader70.i.i, %bb.k, %.loopexit71.i.i, %.preheader.i.i, %.lr.ph94.preheader.i.i
  %.not97.i.i = icmp ult i64 %i.f, 3              ; 14 uses
  br i1 %.not97.i.i, label %.loopexit74.i.i, label %.lr.ph.i.i600.preheader

.lr.ph.i.i600.preheader:                          ; preds = %bary_add.exit
  %xtraiter3342.a = and i64 %i.g, 1
  %.off = add i64 %5, -1
  %i.eh = icmp ult i64 %.off, 3
  br i1 %i.eh, label %.lr.ph.i.i600.epil.preheader, label %.lr.ph.i.i600.preheader.new

.lr.ph.i.i600.preheader.new:                      ; preds = %.lr.ph.i.i600.preheader
  %unroll_iter3346 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i600

.lr.ph.i.i600:                                    ; preds = %.lr.ph.i.i600, %.lr.ph.i.i600.preheader.new
  %.078.i.i = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %i.ff, %.lr.ph.i.i600 ] ; 5 uses
  %.06277.i.i = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %i.fe, %.lr.ph.i.i600 ]
  %niter3347 = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %niter3347.next.1, %.lr.ph.i.i600 ]
  %i.ei = getelementptr [4 x i8], ptr %.0560, i64 %.078.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr [4 x i8], ptr %i.as, i64 %.078.i.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = zext i32 %i.em to i64
  %i.eo = sub nsw i64 %i.ek, %i.en
  %i.ep = add nsw i64 %i.eo, %.06277.i.i          ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr [4 x i8], ptr %i.aa, i64 %.078.i.i
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !7
  %i.es = ashr i64 %i.ep, 32
  %i.et = or disjoint i64 %.078.i.i, 1            ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %.0560, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr [4 x i8], ptr %i.as, i64 %i.et
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = zext i32 %i.ey to i64
  %i.fa = sub nsw i64 %i.ew, %i.ez
  %i.fb = add nsw i64 %i.fa, %i.es                ; 2 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr [4 x i8], ptr %i.aa, i64 %i.et
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !7
  %i.fe = ashr i64 %i.fb, 32                      ; 3 uses
  %i.ff = add nuw nsw i64 %.078.i.i, 2            ; 2 uses
  %niter3347.next.1 = add i64 %niter3347, 2       ; 2 uses
  %niter3347.ncmp.1 = icmp eq i64 %niter3347.next.1, %unroll_iter3346
  br i1 %niter3347.ncmp.1, label %._crit_edge.i.i602.unr-lcssa, label %.lr.ph.i.i600, !llvm.loop !48

._crit_edge.i.i602.unr-lcssa:                     ; preds = %.lr.ph.i.i600
  %lcmp.mod3343.not.a = icmp eq i64 %xtraiter3342.a, 0
  br i1 %lcmp.mod3343.not.a, label %._crit_edge.i.i602, label %.lr.ph.i.i600.epil.preheader

.lr.ph.i.i600.epil.preheader:                     ; preds = %._crit_edge.i.i602.unr-lcssa, %.lr.ph.i.i600.preheader
  %.078.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i600.preheader ], [ %i.ff, %._crit_edge.i.i602.unr-lcssa ] ; 3 uses
  %.06277.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i600.preheader ], [ %i.fe, %._crit_edge.i.i602.unr-lcssa ]
  %lcmp.mod3345 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3345)
  %i.fg = getelementptr [4 x i8], ptr %.0560, i64 %.078.i.i.epil.init
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !7
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr [4 x i8], ptr %i.as, i64 %.078.i.i.epil.init
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.fl = zext i32 %i.fk to i64
  %i.fm = sub nsw i64 %i.fi, %i.fl
  %i.fn = add nsw i64 %i.fm, %.06277.i.i.epil.init ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = getelementptr [4 x i8], ptr %i.aa, i64 %.078.i.i.epil.init
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !7
  %i.fq = ashr i64 %i.fn, 32
  br label %._crit_edge.i.i602

._crit_edge.i.i602:                               ; preds = %._crit_edge.i.i602.unr-lcssa, %.lr.ph.i.i600.epil.preheader
  %.lcssa3333 = phi i64 [ %i.fe, %._crit_edge.i.i602.unr-lcssa ], [ %i.fq, %.lr.ph.i.i600.epil.preheader ]
  %i.fr = icmp eq i64 %.lcssa3333, 0
  br i1 %i.fr, label %.loopexit74.i.i, label %.loopexit71.i.i605

.loopexit71.i.i605:                               ; preds = %._crit_edge.i.i602
  %i.fs = getelementptr [4 x i8], ptr %.0560, i64 %i.g
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  %i.fu = zext i32 %i.ft to i64
  %i.fv = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = getelementptr [4 x i8], ptr %i.aa, i64 %i.g
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !7
  %i.fy = icmp ult i64 %i.fv, 4294967296
  br i1 %i.fy, label %.lr.ph.i.i615.preheader, label %.lr.ph.i

.loopexit74.i.i:                                  ; preds = %bary_add.exit, %._crit_edge.i.i602
  %.not2735 = icmp eq i64 %.idx1993, 0
  br i1 %.not2735, label %bary_2comp.exit, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %.loopexit74.i.i
  %i.fz = getelementptr [4 x i8], ptr %.0560, i64 %i.g
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !7
  %i.gb = getelementptr [4 x i8], ptr %i.aa, i64 %i.g
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !7
  br label %bary_2comp.exit

.lr.ph.i:                                         ; preds = %.loopexit71.i.i605, %bb.m
  %.023.i = phi i64 [ %i.ge, %bb.m ], [ 0, %.loopexit71.i.i605 ] ; 9 uses
  %i.gc = getelementptr [4 x i8], ptr %i.aa, i64 %.023.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !7  ; 2 uses
  %.not.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.ge = add nuw nsw i64 %.023.i, 1
  %exitcond.not.i = icmp eq i64 %.023.i, %i.g
  br i1 %exitcond.not.i, label %bary_2comp.exit, label %.lr.ph.i, !llvm.loop !55

bb.n:                                             ; preds = %.lr.ph.i
  %i.gf = getelementptr [4 x i8], ptr %i.aa, i64 %.023.i
  %i.gg = sub i32 0, %i.gd
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !7
  %.not1992.not = icmp samesign ult i64 %.023.i, %i.g
  br i1 %.not1992.not, label %.lr.ph26.i.preheader, label %bary_2comp.exit

.lr.ph26.i.preheader:                             ; preds = %bb.n
  %i.gh = sub nuw nsw i64 %i.g, %.023.i           ; 3 uses
  %min.iters.check2860 = icmp samesign ult i64 %i.gh, 8
  br i1 %min.iters.check2860, label %.lr.ph26.i.preheader3328, label %vector.ph2861

vector.ph2861:                                    ; preds = %.lr.ph26.i.preheader
  %n.vec2862 = and i64 %i.gh, 9223372036854775800 ; 3 uses
  %i.gi = add nuw i64 %.023.i, %n.vec2862
  %i.gj = getelementptr [4 x i8], ptr %i.aa, i64 %.023.i
  br label %vector.body2863

vector.body2863:                                  ; preds = %vector.body2863, %vector.ph2861
  %index2864 = phi i64 [ 0, %vector.ph2861 ], [ %index.next2867, %vector.body2863 ] ; 2 uses
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %index2864 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 4      ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gk, i64 20     ; 2 uses
  %wide.load2865 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !7
  %wide.load2866 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !7
  %i.gn = xor <4 x i32> %wide.load2865, splat (i32 -1)
  %i.go = xor <4 x i32> %wide.load2866, splat (i32 -1)
  store <4 x i32> %i.gn, ptr %i.gl, align 4, !tbaa !7
  store <4 x i32> %i.go, ptr %i.gm, align 4, !tbaa !7
  %index.next2867 = add nuw i64 %index2864, 8     ; 2 uses
  %i.gp = icmp eq i64 %index.next2867, %n.vec2862
  br i1 %i.gp, label %middle.block2868, label %vector.body2863, !llvm.loop !78

middle.block2868:                                 ; preds = %vector.body2863
  %cmp.n2869 = icmp eq i64 %i.gh, %n.vec2862
  br i1 %cmp.n2869, label %bary_2comp.exit, label %.lr.ph26.i.preheader3328

.lr.ph26.i.preheader3328:                         ; preds = %.lr.ph26.i.preheader, %middle.block2868
  %.125.i.in.ph = phi i64 [ %.023.i, %.lr.ph26.i.preheader ], [ %i.gi, %middle.block2868 ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader3328, %.lr.ph26.i
  %.125.i.in = phi i64 [ %.125.i, %.lr.ph26.i ], [ %.125.i.in.ph, %.lr.ph26.i.preheader3328 ]
  %.125.i = add nuw i64 %.125.i.in, 1             ; 3 uses
  %i.gq = getelementptr [4 x i8], ptr %i.aa, i64 %.125.i ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7
  %i.gs = xor i32 %i.gr, -1
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !7
  %exitcond31.not.i = icmp eq i64 %.125.i, %i.g
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !79

bary_2comp.exit:                                  ; preds = %bb.m, %.lr.ph26.i, %middle.block2868, %.lr.ph93.i.i, %.loopexit74.i.i, %bb.n
  %.not.not1947 = phi i1 [ false, %middle.block2868 ], [ true, %.lr.ph93.i.i ], [ false, %bb.n ], [ true, %.loopexit74.i.i ], [ false, %.lr.ph26.i ], [ false, %bb.m ] ; 2 uses
  %.0552 = phi i32 [ 0, %middle.block2868 ], [ 1, %.lr.ph93.i.i ], [ 0, %bb.n ], [ 1, %.loopexit74.i.i ], [ 0, %.lr.ph26.i ], [ 0, %bb.m ] ; 3 uses
  br i1 %.not97.i.i, label %.preheader72.i.i619.thread, label %.lr.ph.i.i615.preheader

.preheader72.i.i619.thread:                       ; preds = %bary_2comp.exit
  br i1 %.not.not1947, label %bb.o, label %bb.s

.lr.ph.i.i615.preheader:                          ; preds = %.loopexit71.i.i605, %bary_2comp.exit
  %.05522452 = phi i32 [ %.0552, %bary_2comp.exit ], [ 1, %.loopexit71.i.i605 ] ; 4 uses
  %.not.not19472450 = phi i1 [ %.not.not1947, %bary_2comp.exit ], [ true, %.loopexit71.i.i605 ] ; 2 uses
  %xtraiter3348 = and i64 %i.g, 1
  %.off3602 = add i64 %5, -1
  %i.gt = icmp ult i64 %.off3602, 3
  br i1 %i.gt, label %.lr.ph.i.i615, label %.lr.ph.i.i615.preheader.new

.lr.ph.i.i615.preheader.new:                      ; preds = %.lr.ph.i.i615.preheader
  %unroll_iter3352 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i615.epil.preheader.a

.lr.ph.i.i615.epil.preheader.a:                   ; preds = %.lr.ph.i.i615.epil.preheader.a, %.lr.ph.i.i615.preheader.new
  %.05779.i.i616 = phi i64 [ 0, %.lr.ph.i.i615.preheader.new ], [ %19, %.lr.ph.i.i615.epil.preheader.a ] ; 4 uses
  %.05779.i.i616.epil.init.a = phi i64 [ 0, %.lr.ph.i.i615.preheader.new ], [ %i.hd, %.lr.ph.i.i615.epil.preheader.a ]
  %.05878.i.i617.epil.init.a = phi i64 [ 0, %.lr.ph.i.i615.preheader.new ], [ %niter3335.next.1, %.lr.ph.i.i615.epil.preheader.a ]
  %8 = getelementptr [4 x i8], ptr %i.as, i64 %.05779.i.i616
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = zext i32 %9 to i64
  %11 = getelementptr [4 x i8], ptr %.0560, i64 %.05779.i.i616 ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %.05779.i.i616.epil.init.a, %10
  %15 = add nuw nsw i64 %14, %13                  ; 2 uses
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %11, align 4, !tbaa !7
  %17 = lshr i64 %15, 32
  %18 = or disjoint i64 %.05779.i.i616, 1         ; 2 uses
  %i.gu = getelementptr [4 x i8], ptr %i.as, i64 %18
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !7
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr [4 x i8], ptr %.0560, i64 %18 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %17, %i.gw
  %i.hb = add nuw nsw i64 %i.ha, %i.gz            ; 2 uses
  %i.hc = trunc i64 %i.hb to i32
  store i32 %i.hc, ptr %i.gx, align 4, !tbaa !7
  %i.hd = lshr i64 %i.hb, 32                      ; 3 uses
  %19 = add nuw nsw i64 %.05779.i.i616, 2         ; 2 uses
  %niter3335.next.1 = add i64 %.05878.i.i617.epil.init.a, 2 ; 2 uses
  %niter3335.ncmp.1 = icmp eq i64 %niter3335.next.1, %unroll_iter3352
  br i1 %niter3335.ncmp.1, label %.preheader72.i.i619, label %.lr.ph.i.i615.epil.preheader.a, !llvm.loop !34

.preheader72.i.i619:                              ; preds = %.lr.ph.i.i615.epil.preheader.a
  %i.he = icmp eq i64 %xtraiter3348, 0
  br i1 %i.he, label %.lr.ph83.i.i640, label %.lr.ph.i.i615

.lr.ph.i.i615:                                    ; preds = %.preheader72.i.i619, %.lr.ph.i.i615.preheader
  %.05878.i.i617 = phi i64 [ 0, %.lr.ph.i.i615.preheader ], [ %19, %.preheader72.i.i619 ] ; 2 uses
  %niter3353 = phi i64 [ 0, %.lr.ph.i.i615.preheader ], [ %i.hd, %.preheader72.i.i619 ]
  %lcmp.mod3333 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3333)
  %i.hf = getelementptr [4 x i8], ptr %i.as, i64 %.05878.i.i617
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !7
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr [4 x i8], ptr %.0560, i64 %.05878.i.i617 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add nuw nsw i64 %niter3353, %i.hh
  %i.hm = add nuw nsw i64 %i.hl, %i.hk            ; 2 uses
  %i.hn = trunc i64 %i.hm to i32
  store i32 %i.hn, ptr %i.hi, align 4, !tbaa !7
  %i.ho = lshr i64 %i.hm, 32
  br label %.lr.ph83.i.i640

.lr.ph83.i.i640:                                  ; preds = %.preheader72.i.i619, %.lr.ph.i.i615
  %.lcssa3309 = phi i64 [ %i.hd, %.preheader72.i.i619 ], [ %i.ho, %.lr.ph.i.i615 ]
  %20 = icmp eq i64 %.lcssa3309, 0
  br i1 %20, label %bary_add.exit644, label %.split

.split:                                           ; preds = %.lr.ph83.i.i640
  %i.hp = getelementptr [4 x i8], ptr %.0560, i64 %i.g ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !7
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !7
  br i1 %.not.not19472450, label %bb.o, label %bb.s

bary_add.exit644:                                 ; preds = %.lr.ph83.i.i640
  br i1 %.not.not19472450, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.split, %.preheader72.i.i619.thread, %bary_add.exit644
  %.0552245324572462 = phi i32 [ %.0552, %.preheader72.i.i619.thread ], [ %.05522452, %bary_add.exit644 ], [ %.05522452, %.split ] ; 9 uses
  %.not1997 = icmp ult i64 %i.g, %i.ar
  br i1 %.not1997, label %.lr.ph.i.i650.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i649 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i649, label %.preheader72.i.i654, label %.lr.ph.i.i650.preheader

.lr.ph.i.i650.preheader:                          ; preds = %bb.o, %bb.p
  %.061.i.i6482474 = phi ptr [ %i.at, %bb.p ], [ %i.aa, %bb.o ] ; 3 uses
  %.062.i.i6472472 = phi i64 [ %i.h, %bb.p ], [ %i.ar, %bb.o ] ; 2 uses
  %.063.i.i6462470 = phi ptr [ %i.aa, %bb.p ], [ %i.at, %bb.o ] ; 5 uses
  %.064.i.i6452468 = phi i64 [ %i.ar, %bb.p ], [ %i.h, %bb.o ] ; 6 uses
  %xtraiter3375 = and i64 %.064.i.i6452468, 1
  %i.hs = icmp eq i64 %.064.i.i6452468, 1
  br i1 %i.hs, label %.lr.ph.i.i650.epil.preheader, label %.lr.ph.i.i650.preheader.new

.lr.ph.i.i650.preheader.new:                      ; preds = %.lr.ph.i.i650.preheader
  %unroll_iter3380 = and i64 %.064.i.i6452468, -2
  br label %.lr.ph.i.i650

.preheader72.i.i654.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i650
  %lcmp.mod3377.not = icmp eq i64 %xtraiter3375, 0
  br i1 %lcmp.mod3377.not, label %.preheader72.i.i654, label %.lr.ph.i.i650.epil.preheader

.lr.ph.i.i650.epil.preheader:                     ; preds = %.preheader72.i.i654.loopexit.unr-lcssa, %.lr.ph.i.i650.preheader
  %.05779.i.i651.epil.init = phi i64 [ 0, %.lr.ph.i.i650.preheader ], [ %i.jc, %.preheader72.i.i654.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i652.epil.init = phi i64 [ 0, %.lr.ph.i.i650.preheader ], [ %i.jb, %.preheader72.i.i654.loopexit.unr-lcssa ]
  %lcmp.mod3379 = trunc i64 %.064.i.i6452468 to i1
  call void @llvm.assume(i1 %lcmp.mod3379)
  %i.ht = getelementptr [4 x i8], ptr %.061.i.i6482474, i64 %.05779.i.i651.epil.init
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !7
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr [4 x i8], ptr %.063.i.i6462470, i64 %.05779.i.i651.epil.init
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !7
  %i.hy = zext i32 %i.hx to i64
  %i.hz = add nuw nsw i64 %.05878.i.i652.epil.init, %i.hv
  %i.ia = add nuw nsw i64 %i.hz, %i.hy            ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i651.epil.init
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !7
  %i.id = lshr i64 %i.ia, 32
  br label %.preheader72.i.i654

.preheader72.i.i654:                              ; preds = %.lr.ph.i.i650.epil.preheader, %.preheader72.i.i654.loopexit.unr-lcssa, %bb.p
  %.062.i.i6472473 = phi i64 [ %i.h, %bb.p ], [ %.062.i.i6472472, %.preheader72.i.i654.loopexit.unr-lcssa ], [ %.062.i.i6472472, %.lr.ph.i.i650.epil.preheader ] ; 8 uses
  %.063.i.i6462471 = phi ptr [ %i.aa, %bb.p ], [ %.063.i.i6462470, %.preheader72.i.i654.loopexit.unr-lcssa ], [ %.063.i.i6462470, %.lr.ph.i.i650.epil.preheader ] ; 9 uses
  %.064.i.i6452469 = phi i64 [ 0, %bb.p ], [ %.064.i.i6452468, %.preheader72.i.i654.loopexit.unr-lcssa ], [ %.064.i.i6452468, %.lr.ph.i.i650.epil.preheader ] ; 7 uses
  %.058.lcssa.i.i655 = phi i64 [ 0, %bb.p ], [ %i.jb, %.preheader72.i.i654.loopexit.unr-lcssa ], [ %i.id, %.lr.ph.i.i650.epil.preheader ] ; 2 uses
  %.063.i.i64624712898 = ptrtoaddr ptr %.063.i.i6462471 to i64
  %i.ie = icmp ult i64 %.064.i.i6452469, %.062.i.i6472473
  br i1 %i.ie, label %.lr.ph83.i.i675, label %.preheader70.i.i656

.lr.ph.i.i650:                                    ; preds = %.lr.ph.i.i650, %.lr.ph.i.i650.preheader.new
  %.05779.i.i651 = phi i64 [ 0, %.lr.ph.i.i650.preheader.new ], [ %i.jc, %.lr.ph.i.i650 ] ; 5 uses
  %.05878.i.i652 = phi i64 [ 0, %.lr.ph.i.i650.preheader.new ], [ %i.jb, %.lr.ph.i.i650 ]
  %niter3381 = phi i64 [ 0, %.lr.ph.i.i650.preheader.new ], [ %niter3381.next.1, %.lr.ph.i.i650 ]
  %i.if = getelementptr [4 x i8], ptr %.061.i.i6482474, i64 %.05779.i.i651
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !7
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr [4 x i8], ptr %.063.i.i6462470, i64 %.05779.i.i651
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !7
  %i.ik = zext i32 %i.ij to i64
  %i.il = add nuw nsw i64 %.05878.i.i652, %i.ih
  %i.im = add nuw nsw i64 %i.il, %i.ik            ; 2 uses
  %i.in = trunc i64 %i.im to i32
  %i.io = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i651
  store i32 %i.in, ptr %i.io, align 4, !tbaa !7
  %i.ip = lshr i64 %i.im, 32
  %i.iq = or disjoint i64 %.05779.i.i651, 1       ; 3 uses
  %i.ir = getelementptr [4 x i8], ptr %.061.i.i6482474, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !7
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr [4 x i8], ptr %.063.i.i6462470, i64 %i.iq
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !7
  %i.iw = zext i32 %i.iv to i64
  %i.ix = add nuw nsw i64 %i.ip, %i.it
  %i.iy = add nuw nsw i64 %i.ix, %i.iw            ; 2 uses
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = getelementptr [4 x i8], ptr %i.ab, i64 %i.iq
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !7
  %i.jb = lshr i64 %i.iy, 32                      ; 3 uses
  %i.jc = add nuw i64 %.05779.i.i651, 2           ; 2 uses
  %niter3381.next.1 = add i64 %niter3381, 2       ; 2 uses
  %niter3381.ncmp.1 = icmp eq i64 %niter3381.next.1, %unroll_iter3380
  br i1 %niter3381.ncmp.1, label %.preheader72.i.i654.loopexit.unr-lcssa, label %.lr.ph.i.i650, !llvm.loop !34

.preheader70.i.i656:                              ; preds = %.preheader72.i.i654
  %.not1998 = icmp ugt i64 %.064.i.i6452469, %i.g
  br i1 %.not1998, label %.critedge597, label %.lr.ph88.preheader.i.i662

.lr.ph88.preheader.i.i662:                        ; preds = %.preheader70.i.i656
  %i.jd = icmp eq i64 %.058.lcssa.i.i655, 0
  br i1 %i.jd, label %.loopexit71.i.i664, label %bb.q

bb.q:                                             ; preds = %.lr.ph88.preheader.i.i662
  %i.je = getelementptr [4 x i8], ptr %i.ab, i64 %.064.i.i6452469
  store i32 1, ptr %i.je, align 4, !tbaa !7
  %i.jf = add nuw nsw i64 %.064.i.i6452469, 1
  %exitcond103.peel.not.i.i663 = icmp eq i64 %.064.i.i6452469, %i.g
  br i1 %exitcond103.peel.not.i.i663, label %.critedge597, label %.loopexit71.i.i664

.lr.ph83.i.i675:                                  ; preds = %.preheader72.i.i654, %bb.r
  %.182.i.i676 = phi i64 [ %i.jo, %bb.r ], [ %.064.i.i6452469, %.preheader72.i.i654 ] ; 4 uses
  %.15981.i.i677 = phi i64 [ %i.jn, %bb.r ], [ %.058.lcssa.i.i655, %.preheader72.i.i654 ]
  %i.jg = icmp eq i64 %.15981.i.i677, 0
  br i1 %i.jg, label %.loopexit71.i.i664, label %bb.r

bb.r:                                             ; preds = %.lr.ph83.i.i675
  %i.jh = getelementptr [4 x i8], ptr %.063.i.i6462471, i64 %.182.i.i676
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !7
  %i.jj = zext i32 %i.ji to i64
  %i.jk = add nuw nsw i64 %i.jj, 1                ; 2 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = getelementptr [4 x i8], ptr %i.ab, i64 %.182.i.i676
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !7
  %i.jn = lshr i64 %i.jk, 32
  %i.jo = add i64 %.182.i.i676, 1                 ; 2 uses
  %exitcond102.not.i.i678 = icmp eq i64 %i.jo, %.062.i.i6472473
  br i1 %exitcond102.not.i.i678, label %.critedge597, label %.lr.ph83.i.i675, !llvm.loop !36

.loopexit71.i.i664:                               ; preds = %.lr.ph83.i.i675, %bb.q, %.lr.ph88.preheader.i.i662
  %.3.i.i665 = phi i64 [ %i.jf, %bb.q ], [ %.064.i.i6452469, %.lr.ph88.preheader.i.i662 ], [ %.182.i.i676, %.lr.ph83.i.i675 ] ; 8 uses
  %i.jp = icmp eq ptr %.063.i.i6462471, %i.ab
  %i.jq = icmp eq i64 %.062.i.i6472473, %i.h
  %or.cond.i.i666 = and i1 %i.jp, %i.jq
  br i1 %or.cond.i.i666, label %.critedge597, label %.preheader69.i.i667

.preheader69.i.i667:                              ; preds = %.loopexit71.i.i664
  %i.jr = icmp ult i64 %.3.i.i665, %.062.i.i6472473
  br i1 %i.jr, label %.lr.ph91.i.i672.preheader, label %.preheader.i.i668

.lr.ph91.i.i672.preheader:                        ; preds = %.preheader69.i.i667
  %i.js = sub nuw i64 %.062.i.i6472473, %.3.i.i665 ; 3 uses
  %min.iters.check2901 = icmp ult i64 %i.js, 16
  br i1 %min.iters.check2901, label %.lr.ph91.i.i672.preheader3311, label %vector.memcheck2897

vector.memcheck2897:                              ; preds = %.lr.ph91.i.i672.preheader
  %i.jt = shl i64 %i.g, 3
  %i.ju = add i64 %i.jt, %.05602856
  %i.jv = sub i64 %i.ju, %.063.i.i64624712898
  %i.jw = add i64 %i.jv, 7
  %diff.check2899 = icmp ult i64 %i.jw, 31
  br i1 %diff.check2899, label %.lr.ph91.i.i672.preheader3311, label %vector.ph2902

vector.ph2902:                                    ; preds = %vector.memcheck2897
  %n.vec2903 = and i64 %i.js, -8                  ; 3 uses
  %i.jx = add i64 %.3.i.i665, %n.vec2903
  br label %vector.body2904

vector.body2904:                                  ; preds = %vector.body2904, %vector.ph2902
  %index2905 = phi i64 [ 0, %vector.ph2902 ], [ %index.next2908, %vector.body2904 ] ; 2 uses
  %i.jy = add nuw i64 %.3.i.i665, %index2905      ; 2 uses
  %i.jz = getelementptr [4 x i8], ptr %.063.i.i6462471, i64 %i.jy ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 16
  %wide.load2906 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !7
  %wide.load2907 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !7
  %i.kb = getelementptr [4 x i8], ptr %i.ab, i64 %i.jy ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  store <4 x i32> %wide.load2906, ptr %i.kb, align 4, !tbaa !7
  store <4 x i32> %wide.load2907, ptr %i.kc, align 4, !tbaa !7
  %index.next2908 = add nuw i64 %index2905, 8     ; 2 uses
  %i.kd = icmp eq i64 %index.next2908, %n.vec2903
  br i1 %i.kd, label %middle.block2909, label %vector.body2904, !llvm.loop !80

middle.block2909:                                 ; preds = %vector.body2904
  %cmp.n2910 = icmp eq i64 %i.js, %n.vec2903
  br i1 %cmp.n2910, label %.critedge597, label %.lr.ph91.i.i672.preheader3311

.lr.ph91.i.i672.preheader3311:                    ; preds = %vector.memcheck2897, %.lr.ph91.i.i672.preheader, %middle.block2909
  %.490.i.i673.ph = phi i64 [ %.3.i.i665, %vector.memcheck2897 ], [ %.3.i.i665, %.lr.ph91.i.i672.preheader ], [ %i.jx, %middle.block2909 ] ; 4 uses
  %i.ke = sub i64 %.062.i.i6472473, %.490.i.i673.ph
  %xtraiter3382 = and i64 %i.ke, 3                ; 2 uses
  %lcmp.mod3383.not = icmp eq i64 %xtraiter3382, 0
  br i1 %lcmp.mod3383.not, label %.lr.ph91.i.i672.prol.loopexit, label %.lr.ph91.i.i672.prol

.lr.ph91.i.i672.prol:                             ; preds = %.lr.ph91.i.i672.preheader3311, %.lr.ph91.i.i672.prol
  %.490.i.i673.prol = phi i64 [ %i.ki, %.lr.ph91.i.i672.prol ], [ %.490.i.i673.ph, %.lr.ph91.i.i672.preheader3311 ] ; 3 uses
  %prol.iter3384 = phi i64 [ %prol.iter3384.next, %.lr.ph91.i.i672.prol ], [ 0, %.lr.ph91.i.i672.preheader3311 ]
  %i.kf = getelementptr [4 x i8], ptr %.063.i.i6462471, i64 %.490.i.i673.prol
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !7
  %i.kh = getelementptr [4 x i8], ptr %i.ab, i64 %.490.i.i673.prol
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !7
  %i.ki = add nuw i64 %.490.i.i673.prol, 1        ; 2 uses
  %prol.iter3384.next = add i64 %prol.iter3384, 1 ; 2 uses
  %prol.iter3384.cmp.not = icmp eq i64 %prol.iter3384.next, %xtraiter3382
  br i1 %prol.iter3384.cmp.not, label %.lr.ph91.i.i672.prol.loopexit, label %.lr.ph91.i.i672.prol, !llvm.loop !81

.lr.ph91.i.i672.prol.loopexit:                    ; preds = %.lr.ph91.i.i672.prol, %.lr.ph91.i.i672.preheader3311
  %.490.i.i673.unr = phi i64 [ %.490.i.i673.ph, %.lr.ph91.i.i672.preheader3311 ], [ %i.ki, %.lr.ph91.i.i672.prol ]
  %i.kj = sub i64 %.490.i.i673.ph, %.062.i.i6472473
  %i.kk = icmp ugt i64 %i.kj, -4
  br i1 %i.kk, label %.critedge597, label %.lr.ph91.i.i672

.preheader.i.i668:                                ; preds = %.preheader69.i.i667
  %.not1999 = icmp ugt i64 %.3.i.i665, %i.g
  br i1 %.not1999, label %.critedge597, label %.critedge597.sink.split
end_hunk_0
begin_hunk_1_@bary_mul_toom3:bb.a
  %i.or = shl i64 %i.oq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i694, i8 -1, i64 %i.or, i1 false), !tbaa !7
  br label %.lr.ph.i711.preheader

.loopexit74.i.i695:                               ; preds = %.lr.ph82.i.i706, %.loopexit71.i.i689
  %.5.i.i696 = phi i64 [ %.3.i.i690, %.loopexit71.i.i689 ], [ %.181.i.i707, %.lr.ph82.i.i706 ] ; 7 uses
  %i.os = icmp eq ptr %i.at, %i.ab
  %i.ot = icmp eq i64 %i.ar, %i.h
  %or.cond.i.i697 = and i1 %i.ot, %i.os
  br i1 %or.cond.i.i697, label %.critedge597, label %.preheader67.i.i698

.preheader67.i.i698:                              ; preds = %.loopexit74.i.i695
  %i.ou = icmp ult i64 %.5.i.i696, %i.ar
  br i1 %i.ou, label %.lr.ph93.i.i703.preheader, label %.preheader.i.i699

.lr.ph93.i.i703.preheader:                        ; preds = %.preheader67.i.i698
  %i.ov = add i64 %.5.i.i696, %i.j
  %i.ow = sub i64 %3, %i.ov                       ; 3 uses
  %min.iters.check2886 = icmp ult i64 %i.ow, 12
  br i1 %min.iters.check2886, label %.lr.ph93.i.i703.preheader3315, label %vector.memcheck2883

vector.memcheck2883:                              ; preds = %.lr.ph93.i.i703.preheader
  %i.ox = sub i64 %.05602856, %i.a
  %i.oy = add i64 %i.ox, 7
  %diff.check2884 = icmp ult i64 %i.oy, 31
  br i1 %diff.check2884, label %.lr.ph93.i.i703.preheader3315, label %vector.ph2887

vector.ph2887:                                    ; preds = %vector.memcheck2883
  %n.vec2888 = and i64 %i.ow, -8                  ; 3 uses
  %i.oz = add i64 %.5.i.i696, %n.vec2888
  br label %vector.body2889

vector.body2889:                                  ; preds = %vector.body2889, %vector.ph2887
  %index2890 = phi i64 [ 0, %vector.ph2887 ], [ %index.next2893, %vector.body2889 ] ; 2 uses
  %i.pa = add nuw i64 %.5.i.i696, %index2890      ; 2 uses
  %i.pb = getelementptr [4 x i8], ptr %i.at, i64 %i.pa ; 2 uses
  %i.pc = getelementptr i8, ptr %i.pb, i64 16
  %wide.load2891 = load <4 x i32>, ptr %i.pb, align 4, !tbaa !7
  %wide.load2892 = load <4 x i32>, ptr %i.pc, align 4, !tbaa !7
  %i.pd = getelementptr [4 x i8], ptr %i.ab, i64 %i.pa ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 16
  store <4 x i32> %wide.load2891, ptr %i.pd, align 4, !tbaa !7
  store <4 x i32> %wide.load2892, ptr %i.pe, align 4, !tbaa !7
  %index.next2893 = add nuw i64 %index2890, 8     ; 2 uses
  %i.pf = icmp eq i64 %index.next2893, %n.vec2888
  br i1 %i.pf, label %middle.block2894, label %vector.body2889, !llvm.loop !84

middle.block2894:                                 ; preds = %vector.body2889
  %cmp.n2895 = icmp eq i64 %i.ow, %n.vec2888
  br i1 %cmp.n2895, label %.preheader.i.i699, label %.lr.ph93.i.i703.preheader3315

.lr.ph93.i.i703.preheader3315:                    ; preds = %vector.memcheck2883, %.lr.ph93.i.i703.preheader, %middle.block2894
  %.692.i.i704.ph = phi i64 [ %.5.i.i696, %vector.memcheck2883 ], [ %.5.i.i696, %.lr.ph93.i.i703.preheader ], [ %i.oz, %middle.block2894 ]
  br label %.lr.ph93.i.i703

.preheader.i.i699:                                ; preds = %.lr.ph93.i.i703, %middle.block2894, %.preheader67.i.i698
  %.6.lcssa.i.i700 = phi i64 [ %.5.i.i696, %.preheader67.i.i698 ], [ %i.ar, %middle.block2894 ], [ %i.ar, %.lr.ph93.i.i703 ] ; 2 uses
  %.not1996 = icmp ugt i64 %.6.lcssa.i.i700, %i.g
  br i1 %.not1996, label %.critedge597, label %.critedge597.sink.split

.lr.ph93.i.i703:                                  ; preds = %.lr.ph93.i.i703.preheader3315, %.lr.ph93.i.i703
  %.692.i.i704 = phi i64 [ %i.pj, %.lr.ph93.i.i703 ], [ %.692.i.i704.ph, %.lr.ph93.i.i703.preheader3315 ] ; 3 uses
  %i.pg = getelementptr [4 x i8], ptr %i.at, i64 %.692.i.i704
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !7
  %i.pi = getelementptr [4 x i8], ptr %i.ab, i64 %.692.i.i704
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !7
  %i.pj = add nuw i64 %.692.i.i704, 1             ; 2 uses
  %exitcond111.not.i.i705 = icmp eq i64 %i.pj, %i.ar
  br i1 %exitcond111.not.i.i705, label %.preheader.i.i699, label %.lr.ph93.i.i703, !llvm.loop !85

.lr.ph.i711:                                      ; preds = %.lr.ph.i711.preheader, %bb.u
  %.023.i712 = phi i64 [ %i.pm, %bb.u ], [ 0, %.lr.ph.i711.preheader ] ; 9 uses
  %i.pk = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !7  ; 2 uses
  %.not.i713 = icmp eq i32 %i.pl, 0
  br i1 %.not.i713, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i711
  %i.pm = add nuw nsw i64 %.023.i712, 1
  %exitcond.not.i720 = icmp eq i64 %.023.i712, %i.g
  br i1 %exitcond.not.i720, label %bary_2comp.exit721.preheader, label %.lr.ph.i711, !llvm.loop !55

bb.v:                                             ; preds = %.lr.ph.i711
  %i.pn = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  %i.po = sub i32 0, %i.pl
  store i32 %i.po, ptr %i.pn, align 4, !tbaa !7
  %.not1995.not = icmp samesign ult i64 %.023.i712, %i.g
  br i1 %.not1995.not, label %.lr.ph26.i716.preheader, label %bary_2comp.exit721.preheader

.lr.ph26.i716.preheader:                          ; preds = %bb.v
  %i.pp = sub nuw nsw i64 %i.g, %.023.i712        ; 3 uses
  %min.iters.check2872 = icmp samesign ult i64 %i.pp, 8
  br i1 %min.iters.check2872, label %.lr.ph26.i716.preheader3317, label %vector.ph2873

vector.ph2873:                                    ; preds = %.lr.ph26.i716.preheader
  %n.vec2874 = and i64 %i.pp, 9223372036854775800 ; 3 uses
  %i.pq = add nuw i64 %.023.i712, %n.vec2874
  %i.pr = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i712
  br label %vector.body2875

vector.body2875:                                  ; preds = %vector.body2875, %vector.ph2873
  %index2876 = phi i64 [ 0, %vector.ph2873 ], [ %index.next2879, %vector.body2875 ] ; 2 uses
  %i.ps = getelementptr [4 x i8], ptr %i.pr, i64 %index2876 ; 2 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 4      ; 2 uses
  %i.pu = getelementptr i8, ptr %i.ps, i64 20     ; 2 uses
  %wide.load2877 = load <4 x i32>, ptr %i.pt, align 4, !tbaa !7
  %wide.load2878 = load <4 x i32>, ptr %i.pu, align 4, !tbaa !7
  %i.pv = xor <4 x i32> %wide.load2877, splat (i32 -1)
  %i.pw = xor <4 x i32> %wide.load2878, splat (i32 -1)
  store <4 x i32> %i.pv, ptr %i.pt, align 4, !tbaa !7
  store <4 x i32> %i.pw, ptr %i.pu, align 4, !tbaa !7
  %index.next2879 = add nuw i64 %index2876, 8     ; 2 uses
  %i.px = icmp eq i64 %index.next2879, %n.vec2874
  br i1 %i.px, label %middle.block2880, label %vector.body2875, !llvm.loop !86

middle.block2880:                                 ; preds = %vector.body2875
  %cmp.n2881 = icmp eq i64 %i.pp, %n.vec2874
  br i1 %cmp.n2881, label %bary_2comp.exit721.preheader, label %.lr.ph26.i716.preheader3317

.lr.ph26.i716.preheader3317:                      ; preds = %.lr.ph26.i716.preheader, %middle.block2880
  %.125.i717.in.ph = phi i64 [ %.023.i712, %.lr.ph26.i716.preheader ], [ %i.pq, %middle.block2880 ]
  br label %.lr.ph26.i716

.lr.ph26.i716:                                    ; preds = %.lr.ph26.i716.preheader3317, %.lr.ph26.i716
  %.125.i717.in = phi i64 [ %.125.i717, %.lr.ph26.i716 ], [ %.125.i717.in.ph, %.lr.ph26.i716.preheader3317 ]
  %.125.i717 = add nuw i64 %.125.i717.in, 1       ; 3 uses
  %i.py = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i717 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !7
  %i.qa = xor i32 %i.pz, -1
  store i32 %i.qa, ptr %i.py, align 4, !tbaa !7
  %exitcond31.not.i719 = icmp eq i64 %.125.i717, %i.g
  br i1 %exitcond31.not.i719, label %bary_2comp.exit721.preheader, label %.lr.ph26.i716, !llvm.loop !87

bary_2comp.exit721.preheader:                     ; preds = %bb.u, %.lr.ph26.i716, %middle.block2880, %bb.v
  %xtraiter3363 = and i64 %i.h, 3                 ; 3 uses
  %i.qb = icmp ult i64 %i.f, 9
  br i1 %i.qb, label %bary_2comp.exit721.epil.preheader, label %bary_2comp.exit721.preheader.new

bary_2comp.exit721.preheader.new:                 ; preds = %bary_2comp.exit721.preheader
  %unroll_iter3366 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit721

bary_2comp.exit721:                               ; preds = %bary_2comp.exit721, %bary_2comp.exit721.preheader.new
  %.015.i = phi i32 [ 0, %bary_2comp.exit721.preheader.new ], [ %i.qp, %bary_2comp.exit721 ]
  %.01013.i = phi ptr [ %i.ab, %bary_2comp.exit721.preheader.new ], [ %i.qm, %bary_2comp.exit721 ] ; 6 uses
  %niter3367 = phi i64 [ 0, %bary_2comp.exit721.preheader.new ], [ %niter3367.next.3, %bary_2comp.exit721 ]
  %i.qc = getelementptr i8, ptr %.01013.i, i64 4  ; 2 uses
  %i.qd = load i32, ptr %.01013.i, align 4, !tbaa !7 ; 2 uses
  %i.qe = shl i32 %i.qd, 1
  %i.qf = or disjoint i32 %i.qe, %.015.i
  store i32 %i.qf, ptr %.01013.i, align 4, !tbaa !7
  %i.qg = getelementptr i8, ptr %.01013.i, i64 8  ; 2 uses
  %i.qh = load i32, ptr %i.qc, align 4, !tbaa !7  ; 2 uses
  %i.qi = call i32 @llvm.fshl.i32(i32 %i.qh, i32 %i.qd, i32 1)
  store i32 %i.qi, ptr %i.qc, align 4, !tbaa !7
  %i.qj = getelementptr i8, ptr %.01013.i, i64 12 ; 2 uses
  %i.qk = load i32, ptr %i.qg, align 4, !tbaa !7  ; 2 uses
  %i.ql = call i32 @llvm.fshl.i32(i32 %i.qk, i32 %i.qh, i32 1)
  store i32 %i.ql, ptr %i.qg, align 4, !tbaa !7
  %i.qm = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  %i.qn = load i32, ptr %i.qj, align 4, !tbaa !7  ; 2 uses
  %i.qo = call i32 @llvm.fshl.i32(i32 %i.qn, i32 %i.qk, i32 1)
  store i32 %i.qo, ptr %i.qj, align 4, !tbaa !7
  %i.qp = lshr i32 %i.qn, 31                      ; 2 uses
  %niter3367.next.3 = add i64 %niter3367, 4       ; 2 uses
  %niter3367.ncmp.3 = icmp eq i64 %niter3367.next.3, %unroll_iter3366
  br i1 %niter3367.ncmp.3, label %bary_small_lshift.exit.unr-lcssa, label %bary_2comp.exit721, !llvm.loop !88

bary_small_lshift.exit.unr-lcssa:                 ; preds = %bary_2comp.exit721
  %lcmp.mod3364.not = icmp eq i64 %xtraiter3363, 0
  br i1 %lcmp.mod3364.not, label %bary_small_lshift.exit, label %bary_2comp.exit721.epil.preheader

bary_2comp.exit721.epil.preheader:                ; preds = %bary_small_lshift.exit.unr-lcssa, %bary_2comp.exit721.preheader
  %.015.i.epil.init = phi i32 [ 0, %bary_2comp.exit721.preheader ], [ %i.qp, %bary_small_lshift.exit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ab, %bary_2comp.exit721.preheader ], [ %i.qm, %bary_small_lshift.exit.unr-lcssa ]
  %lcmp.mod3365 = icmp ne i64 %xtraiter3363, 0
  call void @llvm.assume(i1 %lcmp.mod3365)
  br label %bary_2comp.exit721.epil

bary_2comp.exit721.epil:                          ; preds = %bary_2comp.exit721.epil, %bary_2comp.exit721.epil.preheader
  %.015.i.epil = phi i32 [ %i.qu, %bary_2comp.exit721.epil ], [ %.015.i.epil.init, %bary_2comp.exit721.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.qq, %bary_2comp.exit721.epil ], [ %.01013.i.epil.init, %bary_2comp.exit721.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bary_2comp.exit721.epil ], [ 0, %bary_2comp.exit721.epil.preheader ]
  %i.qq = getelementptr i8, ptr %.01013.i.epil, i64 4
  %i.qr = load i32, ptr %.01013.i.epil, align 4, !tbaa !7 ; 2 uses
  %i.qs = shl i32 %i.qr, 1
  %i.qt = or disjoint i32 %i.qs, %.015.i.epil
  store i32 %i.qt, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.qu = lshr i32 %i.qr, 31
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3363
  br i1 %epil.iter.cmp.not, label %bary_small_lshift.exit, label %bary_2comp.exit721.epil, !llvm.loop !89

bary_small_lshift.exit:                           ; preds = %bary_2comp.exit721.epil, %bary_small_lshift.exit.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit759, label %.lr.ph.i.i730.preheader

.lr.ph.i.i730.preheader:                          ; preds = %bary_small_lshift.exit
  %xtraiter3368 = and i64 %i.g, 1
  %.off3603 = add i64 %5, -1
  %i.qv = icmp ult i64 %.off3603, 3
  br i1 %i.qv, label %.lr.ph.i.i730, label %.lr.ph.i.i730.preheader.new

.lr.ph.i.i730.preheader.new:                      ; preds = %.lr.ph.i.i730.preheader
  %unroll_iter3373 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i730.epil.preheader.a

.lr.ph.i.i730.epil.preheader.a:                   ; preds = %.lr.ph.i.i730.epil.preheader.a, %.lr.ph.i.i730.preheader.new
  %.05779.i.i731 = phi i64 [ 0, %.lr.ph.i.i730.preheader.new ], [ %32, %.lr.ph.i.i730.epil.preheader.a ] ; 4 uses
  %.05779.i.i731.epil.init.a = phi i64 [ 0, %.lr.ph.i.i730.preheader.new ], [ %i.rf, %.lr.ph.i.i730.epil.preheader.a ]
  %.05878.i.i732.epil.init.a = phi i64 [ 0, %.lr.ph.i.i730.preheader.new ], [ %niter3356.next.1, %.lr.ph.i.i730.epil.preheader.a ]
  %21 = getelementptr [4 x i8], ptr %2, i64 %.05779.i.i731
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = zext i32 %22 to i64
  %24 = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i731 ; 2 uses
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %.05779.i.i731.epil.init.a, %23
  %28 = add nuw nsw i64 %27, %26                  ; 2 uses
  %29 = trunc i64 %28 to i32
  store i32 %29, ptr %24, align 4, !tbaa !7
  %30 = lshr i64 %28, 32
  %31 = or disjoint i64 %.05779.i.i731, 1         ; 2 uses
  %i.qw = getelementptr [4 x i8], ptr %2, i64 %31
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !7
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr [4 x i8], ptr %i.ab, i64 %31 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !7
  %i.rb = zext i32 %i.ra to i64
  %i.rc = add nuw nsw i64 %30, %i.qy
  %i.rd = add nuw nsw i64 %i.rc, %i.rb            ; 2 uses
  %i.re = trunc i64 %i.rd to i32
  store i32 %i.re, ptr %i.qz, align 4, !tbaa !7
  %i.rf = lshr i64 %i.rd, 32                      ; 3 uses
  %32 = add nuw nsw i64 %.05779.i.i731, 2         ; 2 uses
  %niter3356.next.1 = add i64 %.05878.i.i732.epil.init.a, 2 ; 2 uses
  %niter3356.ncmp.1 = icmp eq i64 %niter3356.next.1, %unroll_iter3373
  br i1 %niter3356.ncmp.1, label %.preheader72.i.i734, label %.lr.ph.i.i730.epil.preheader.a, !llvm.loop !34

.preheader72.i.i734:                              ; preds = %.lr.ph.i.i730.epil.preheader.a
  %i.rg = icmp eq i64 %xtraiter3368, 0
  br i1 %i.rg, label %.lr.ph83.i.i755, label %.lr.ph.i.i730

.lr.ph.i.i730:                                    ; preds = %.preheader72.i.i734, %.lr.ph.i.i730.preheader
  %.05878.i.i732 = phi i64 [ 0, %.lr.ph.i.i730.preheader ], [ %32, %.preheader72.i.i734 ] ; 2 uses
  %niter3374 = phi i64 [ 0, %.lr.ph.i.i730.preheader ], [ %i.rf, %.preheader72.i.i734 ]
  %lcmp.mod3354 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3354)
  %i.rh = getelementptr [4 x i8], ptr %2, i64 %.05878.i.i732
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !7
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr [4 x i8], ptr %i.ab, i64 %.05878.i.i732 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !7
  %i.rm = zext i32 %i.rl to i64
  %i.rn = add nuw nsw i64 %niter3374, %i.rj
  %i.ro = add nuw nsw i64 %i.rn, %i.rm            ; 2 uses
  %i.rp = trunc i64 %i.ro to i32
  store i32 %i.rp, ptr %i.rk, align 4, !tbaa !7
  %i.rq = lshr i64 %i.ro, 32
  br label %.lr.ph83.i.i755

.lr.ph83.i.i755:                                  ; preds = %.preheader72.i.i734, %.lr.ph.i.i730
  %.lcssa3298 = phi i64 [ %i.rf, %.preheader72.i.i734 ], [ %i.rq, %.lr.ph.i.i730 ]
  %33 = icmp eq i64 %.lcssa3298, 0
  br i1 %33, label %bary_add.exit759, label %bb.w

bb.w:                                             ; preds = %.lr.ph83.i.i755
  %i.rr = getelementptr [4 x i8], ptr %i.ab, i64 %i.g ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !7
  %i.rt = add i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !7
  br label %bary_add.exit759, !llvm.loop !36

.critedge597.sink.split:                          ; preds = %.preheader.i.i699, %.preheader.i.i668
  %.6.lcssa.i.i700.sink2731 = phi i64 [ %.3.i.i665, %.preheader.i.i668 ], [ %.6.lcssa.i.i700, %.preheader.i.i699 ] ; 2 uses
  %.0552245324572460.ph = phi i32 [ %.0552245324572462, %.preheader.i.i668 ], [ %.0552245324572461, %.preheader.i.i699 ]
  %i.ru = shl i64 %.6.lcssa.i.i700.sink2731, 2
  %scevgep112.i.i702 = getelementptr i8, ptr %i.ab, i64 %i.ru
  %i.rv = sub nuw nsw i64 %i.h, %.6.lcssa.i.i700.sink2731
  %i.rw = shl i64 %i.rv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep112.i.i702, i8 0, i64 %i.rw, i1 false), !tbaa !7
  br label %.critedge597

.critedge597:                                     ; preds = %bb.r, %.lr.ph91.i.i672.prol.loopexit, %.lr.ph91.i.i672, %middle.block2909, %.critedge597.sink.split, %.preheader70.i.i656, %bb.q, %.loopexit74.i.i695, %.preheader.i.i699, %.preheader.i.i668, %.loopexit71.i.i664
  %.0552245324572460 = phi i32 [ %.0552245324572462, %.preheader70.i.i656 ], [ %.0552245324572462, %bb.q ], [ %.0552245324572460.ph, %.critedge597.sink.split ], [ %.0552245324572461, %.loopexit74.i.i695 ], [ %.0552245324572461, %.preheader.i.i699 ], [ %.0552245324572462, %middle.block2909 ], [ %.0552245324572462, %.preheader.i.i668 ], [ %.0552245324572462, %.loopexit71.i.i664 ], [ %.0552245324572462, %.lr.ph91.i.i672.prol.loopexit ], [ %.0552245324572462, %.lr.ph91.i.i672 ], [ %.0552245324572462, %bb.r ] ; 7 uses
  %xtraiter3385 = and i64 %i.h, 3                 ; 3 uses
  %i.rx = icmp ult i64 %i.f, 9
  br i1 %i.rx, label %.epil.preheader, label %.critedge597.new

.critedge597.new:                                 ; preds = %.critedge597
  %unroll_iter3389 = and i64 %i.h, 9223372036854775804
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.critedge597.new
  %.015.i762 = phi i32 [ 0, %.critedge597.new ], [ %i.sl, %bb.x ]
  %.01013.i764 = phi ptr [ %i.ab, %.critedge597.new ], [ %i.si, %bb.x ] ; 6 uses
  %niter3390 = phi i64 [ 0, %.critedge597.new ], [ %niter3390.next.3, %bb.x ]
  %i.ry = getelementptr i8, ptr %.01013.i764, i64 4 ; 2 uses
  %i.rz = load i32, ptr %.01013.i764, align 4, !tbaa !7 ; 2 uses
  %i.sa = shl i32 %i.rz, 1
  %i.sb = or disjoint i32 %i.sa, %.015.i762
  store i32 %i.sb, ptr %.01013.i764, align 4, !tbaa !7
  %i.sc = getelementptr i8, ptr %.01013.i764, i64 8 ; 2 uses
  %i.sd = load i32, ptr %i.ry, align 4, !tbaa !7  ; 2 uses
  %i.se = call i32 @llvm.fshl.i32(i32 %i.sd, i32 %i.rz, i32 1)
  store i32 %i.se, ptr %i.ry, align 4, !tbaa !7
  %i.sf = getelementptr i8, ptr %.01013.i764, i64 12 ; 2 uses
  %i.sg = load i32, ptr %i.sc, align 4, !tbaa !7  ; 2 uses
  %i.sh = call i32 @llvm.fshl.i32(i32 %i.sg, i32 %i.sd, i32 1)
  store i32 %i.sh, ptr %i.sc, align 4, !tbaa !7
  %i.si = getelementptr i8, ptr %.01013.i764, i64 16 ; 2 uses
  %i.sj = load i32, ptr %i.sf, align 4, !tbaa !7  ; 2 uses
  %i.sk = call i32 @llvm.fshl.i32(i32 %i.sj, i32 %i.sg, i32 1)
  store i32 %i.sk, ptr %i.sf, align 4, !tbaa !7
  %i.sl = lshr i32 %i.sj, 31                      ; 2 uses
  %niter3390.next.3 = add i64 %niter3390, 4       ; 2 uses
  %niter3390.ncmp.3 = icmp eq i64 %niter3390.next.3, %unroll_iter3389
  br i1 %niter3390.ncmp.3, label %bary_small_lshift.exit767.unr-lcssa, label %bb.x, !llvm.loop !88

bary_small_lshift.exit767.unr-lcssa:              ; preds = %bb.x
  %lcmp.mod3387.not = icmp eq i64 %xtraiter3385, 0
  br i1 %lcmp.mod3387.not, label %bary_small_lshift.exit767, label %.epil.preheader

.epil.preheader:                                  ; preds = %bary_small_lshift.exit767.unr-lcssa, %.critedge597
  %.015.i762.epil.init = phi i32 [ 0, %.critedge597 ], [ %i.sl, %bary_small_lshift.exit767.unr-lcssa ]
  %.01013.i764.epil.init = phi ptr [ %i.ab, %.critedge597 ], [ %i.si, %bary_small_lshift.exit767.unr-lcssa ]
  %lcmp.mod3388 = icmp ne i64 %xtraiter3385, 0
  call void @llvm.assume(i1 %lcmp.mod3388)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.015.i762.epil = phi i32 [ %.015.i762.epil.init, %.epil.preheader ], [ %i.sq, %bb.y ]
  %.01013.i764.epil = phi ptr [ %.01013.i764.epil.init, %.epil.preheader ], [ %i.sm, %bb.y ] ; 3 uses
  %epil.iter3386 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter3386.next, %bb.y ]
  %i.sm = getelementptr i8, ptr %.01013.i764.epil, i64 4
  %i.sn = load i32, ptr %.01013.i764.epil, align 4, !tbaa !7 ; 2 uses
  %i.so = shl i32 %i.sn, 1
  %i.sp = or disjoint i32 %i.so, %.015.i762.epil
  store i32 %i.sp, ptr %.01013.i764.epil, align 4, !tbaa !7
  %i.sq = lshr i32 %i.sn, 31
  %epil.iter3386.next = add i64 %epil.iter3386, 1 ; 2 uses
  %epil.iter3386.cmp.not = icmp eq i64 %epil.iter3386.next, %xtraiter3385
  br i1 %epil.iter3386.cmp.not, label %bary_small_lshift.exit767, label %bb.y, !llvm.loop !90

bary_small_lshift.exit767:                        ; preds = %bb.y, %bary_small_lshift.exit767.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit759, label %.lr.ph.i.i769.preheader

.lr.ph.i.i769.preheader:                          ; preds = %bary_small_lshift.exit767
  %xtraiter3391 = and i64 %i.g, 1
  %.off3604 = add i64 %5, -1
  %i.sr = icmp ult i64 %.off3604, 3
  br i1 %i.sr, label %.lr.ph.i.i769.epil.preheader, label %.lr.ph.i.i769.preheader.new

.lr.ph.i.i769.preheader.new:                      ; preds = %.lr.ph.i.i769.preheader
  %unroll_iter3396 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i769

.lr.ph.i.i769:                                    ; preds = %.lr.ph.i.i769, %.lr.ph.i.i769.preheader.new
  %.078.i.i770 = phi i64 [ 0, %.lr.ph.i.i769.preheader.new ], [ %i.tn, %.lr.ph.i.i769 ] ; 4 uses
  %.06277.i.i771 = phi i64 [ 0, %.lr.ph.i.i769.preheader.new ], [ %i.tm, %.lr.ph.i.i769 ]
  %niter3397 = phi i64 [ 0, %.lr.ph.i.i769.preheader.new ], [ %niter3397.next.1, %.lr.ph.i.i769 ]
  %i.ss = getelementptr [4 x i8], ptr %i.ab, i64 %.078.i.i770 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !7
  %i.su = zext i32 %i.st to i64
  %i.sv = getelementptr [4 x i8], ptr %2, i64 %.078.i.i770
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !7
  %i.sx = zext i32 %i.sw to i64
  %i.sy = sub nsw i64 %i.su, %i.sx
  %i.sz = add nsw i64 %i.sy, %.06277.i.i771       ; 2 uses
  %i.ta = trunc i64 %i.sz to i32
  store i32 %i.ta, ptr %i.ss, align 4, !tbaa !7
  %i.tb = ashr i64 %i.sz, 32
  %i.tc = or disjoint i64 %.078.i.i770, 1         ; 2 uses
  %i.td = getelementptr [4 x i8], ptr %i.ab, i64 %i.tc ; 2 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !7
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr [4 x i8], ptr %2, i64 %i.tc
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !7
  %i.ti = zext i32 %i.th to i64
  %i.tj = sub nsw i64 %i.tf, %i.ti
  %i.tk = add nsw i64 %i.tj, %i.tb                ; 2 uses
  %i.tl = trunc i64 %i.tk to i32
  store i32 %i.tl, ptr %i.td, align 4, !tbaa !7
  %i.tm = ashr i64 %i.tk, 32                      ; 3 uses
  %i.tn = add nuw nsw i64 %.078.i.i770, 2         ; 2 uses
  %niter3397.next.1 = add i64 %niter3397, 2       ; 2 uses
  %niter3397.ncmp.1 = icmp eq i64 %niter3397.next.1, %unroll_iter3396
  br i1 %niter3397.ncmp.1, label %._crit_edge.i.i773.unr-lcssa, label %.lr.ph.i.i769, !llvm.loop !48

._crit_edge.i.i773.unr-lcssa:                     ; preds = %.lr.ph.i.i769
  %lcmp.mod3393.not = icmp eq i64 %xtraiter3391, 0
  br i1 %lcmp.mod3393.not, label %._crit_edge.i.i773, label %.lr.ph.i.i769.epil.preheader

.lr.ph.i.i769.epil.preheader:                     ; preds = %._crit_edge.i.i773.unr-lcssa, %.lr.ph.i.i769.preheader
  %.078.i.i770.epil.init = phi i64 [ 0, %.lr.ph.i.i769.preheader ], [ %i.tn, %._crit_edge.i.i773.unr-lcssa ] ; 2 uses
  %.06277.i.i771.epil.init = phi i64 [ 0, %.lr.ph.i.i769.preheader ], [ %i.tm, %._crit_edge.i.i773.unr-lcssa ]
  %lcmp.mod3395 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3395)
  %i.to = getelementptr [4 x i8], ptr %i.ab, i64 %.078.i.i770.epil.init ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !7
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr [4 x i8], ptr %2, i64 %.078.i.i770.epil.init
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !7
  %i.tt = zext i32 %i.ts to i64
  %i.tu = sub nsw i64 %i.tq, %i.tt
  %i.tv = add nsw i64 %i.tu, %.06277.i.i771.epil.init ; 2 uses
  %i.tw = trunc i64 %i.tv to i32
  store i32 %i.tw, ptr %i.to, align 4, !tbaa !7
  %i.tx = ashr i64 %i.tv, 32
  br label %._crit_edge.i.i773

._crit_edge.i.i773:                               ; preds = %._crit_edge.i.i773.unr-lcssa, %.lr.ph.i.i769.epil.preheader
  %.lcssa3310 = phi i64 [ %i.tm, %._crit_edge.i.i773.unr-lcssa ], [ %i.tx, %.lr.ph.i.i769.epil.preheader ]
  %i.ty = icmp eq i64 %.lcssa3310, 0
  br i1 %i.ty, label %bary_add.exit759, label %.loopexit71.i.i777

.loopexit71.i.i777:                               ; preds = %._crit_edge.i.i773
  %i.tz = getelementptr [4 x i8], ptr %i.ab, i64 %i.g ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !7
  %i.ub = zext i32 %i.ua to i64
  %i.uc = add nsw i64 %i.ub, -1                   ; 2 uses
  %i.ud = trunc i64 %i.uc to i32
  store i32 %i.ud, ptr %i.tz, align 4, !tbaa !7
  %i.ue = icmp ult i64 %i.uc, 4294967296
  br i1 %i.ue, label %bary_add.exit759, label %.lr.ph.i804

.lr.ph.i804:                                      ; preds = %.loopexit71.i.i777, %bb.z
  %.023.i805 = phi i64 [ %i.uh, %bb.z ], [ 0, %.loopexit71.i.i777 ] ; 9 uses
  %i.uf = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i805
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !7  ; 2 uses
  %.not.i806 = icmp eq i32 %i.ug, 0
  br i1 %.not.i806, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i804
  %i.uh = add nuw nsw i64 %.023.i805, 1
  %exitcond.not.i813 = icmp eq i64 %.023.i805, %i.g
  br i1 %exitcond.not.i813, label %bary_add.exit759, label %.lr.ph.i804, !llvm.loop !55

bb.aa:                                            ; preds = %.lr.ph.i804
  %i.ui = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i805
  %i.uj = sub i32 0, %i.ug
  store i32 %i.uj, ptr %i.ui, align 4, !tbaa !7
  %.not2000.not = icmp samesign ult i64 %.023.i805, %i.g
  br i1 %.not2000.not, label %.lr.ph26.i809.preheader, label %bary_add.exit759

.lr.ph26.i809.preheader:                          ; preds = %bb.aa
  %i.uk = sub nuw nsw i64 %i.g, %.023.i805        ; 3 uses
  %min.iters.check2913 = icmp samesign ult i64 %i.uk, 8
  br i1 %min.iters.check2913, label %.lr.ph26.i809.preheader3305, label %vector.ph2914

vector.ph2914:                                    ; preds = %.lr.ph26.i809.preheader
  %n.vec2915 = and i64 %i.uk, 9223372036854775800 ; 3 uses
  %i.ul = add nuw i64 %.023.i805, %n.vec2915
  %i.um = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i805
  br label %vector.body2916

vector.body2916:                                  ; preds = %vector.body2916, %vector.ph2914
  %index2917 = phi i64 [ 0, %vector.ph2914 ], [ %index.next2920, %vector.body2916 ] ; 2 uses
  %i.un = getelementptr [4 x i8], ptr %i.um, i64 %index2917 ; 2 uses
  %i.uo = getelementptr i8, ptr %i.un, i64 4      ; 2 uses
  %i.up = getelementptr i8, ptr %i.un, i64 20     ; 2 uses
  %wide.load2918 = load <4 x i32>, ptr %i.uo, align 4, !tbaa !7
  %wide.load2919 = load <4 x i32>, ptr %i.up, align 4, !tbaa !7
  %i.uq = xor <4 x i32> %wide.load2918, splat (i32 -1)
  %i.ur = xor <4 x i32> %wide.load2919, splat (i32 -1)
  store <4 x i32> %i.uq, ptr %i.uo, align 4, !tbaa !7
  store <4 x i32> %i.ur, ptr %i.up, align 4, !tbaa !7
  %index.next2920 = add nuw i64 %index2917, 8     ; 2 uses
  %i.us = icmp eq i64 %index.next2920, %n.vec2915
  br i1 %i.us, label %middle.block2921, label %vector.body2916, !llvm.loop !91

middle.block2921:                                 ; preds = %vector.body2916
  %cmp.n2922 = icmp eq i64 %i.uk, %n.vec2915
  br i1 %cmp.n2922, label %bary_add.exit759, label %.lr.ph26.i809.preheader3305

.lr.ph26.i809.preheader3305:                      ; preds = %.lr.ph26.i809.preheader, %middle.block2921
  %.125.i810.in.ph = phi i64 [ %.023.i805, %.lr.ph26.i809.preheader ], [ %i.ul, %middle.block2921 ]
  br label %.lr.ph26.i809

.lr.ph26.i809:                                    ; preds = %.lr.ph26.i809.preheader3305, %.lr.ph26.i809
  %.125.i810.in = phi i64 [ %.125.i810, %.lr.ph26.i809 ], [ %.125.i810.in.ph, %.lr.ph26.i809.preheader3305 ]
  %.125.i810 = add nuw i64 %.125.i810.in, 1       ; 3 uses
  %i.ut = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i810 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !7
  %i.uv = xor i32 %i.uu, -1
  store i32 %i.uv, ptr %i.ut, align 4, !tbaa !7
  %exitcond31.not.i812 = icmp eq i64 %.125.i810, %i.g
  br i1 %exitcond31.not.i812, label %bary_add.exit759, label %.lr.ph26.i809, !llvm.loop !92

bary_add.exit759:                                 ; preds = %bb.z, %.lr.ph26.i809, %middle.block2921, %bary_small_lshift.exit767, %bary_small_lshift.exit, %.lr.ph83.i.i755, %bb.w, %._crit_edge.i.i773, %.loopexit71.i.i777, %bb.aa
  %.0552245324572459 = phi i32 [ %.0552245324572461, %.lr.ph83.i.i755 ], [ %.0552245324572460, %._crit_edge.i.i773 ], [ %.0552245324572461, %bary_small_lshift.exit ], [ %.0552245324572460, %bb.aa ], [ %.0552245324572460, %.loopexit71.i.i777 ], [ %.0552245324572461, %bb.w ], [ %.0552245324572460, %bary_small_lshift.exit767 ], [ %.0552245324572460, %middle.block2921 ], [ %.0552245324572460, %.lr.ph26.i809 ], [ %.0552245324572460, %bb.z ] ; 2 uses
  %.1551 = phi i32 [ 0, %.lr.ph83.i.i755 ], [ 1, %._crit_edge.i.i773 ], [ 0, %bary_small_lshift.exit ], [ 0, %bb.aa ], [ 1, %.loopexit71.i.i777 ], [ 0, %bb.w ], [ 1, %bary_small_lshift.exit767 ], [ 0, %middle.block2921 ], [ 0, %.lr.ph26.i809 ], [ 0, %bb.z ] ; 2 uses
  br i1 %i.e, label %bary_add.exit1056, label %bb.ab

bb.ab:                                            ; preds = %bary_add.exit759
  %i.uw = icmp ugt i64 %i.g, %.0554
  br i1 %i.uw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.064.i.i815 = phi i64 [ %.0554, %bb.ac ], [ %i.g, %bb.ab ] ; 8 uses
  %.063.i.i816 = phi ptr [ %.0557, %bb.ac ], [ %.0553, %bb.ab ] ; 12 uses
  %.062.i.i817 = phi i64 [ %i.g, %bb.ac ], [ %.0554, %bb.ab ] ; 13 uses
  %.061.i.i818 = phi ptr [ %.0553, %bb.ac ], [ %.0557, %bb.ab ] ; 3 uses
  %.063.i.i8162925 = ptrtoaddr ptr %.063.i.i816 to i64
  %.not.i.i819 = icmp eq i64 %.064.i.i815, 0
  br i1 %.not.i.i819, label %.preheader72.i.i824, label %.lr.ph.i.i820.preheader

.lr.ph.i.i820.preheader:                          ; preds = %bb.ad
  %xtraiter3398 = and i64 %.064.i.i815, 1
  %i.ux = icmp eq i64 %.064.i.i815, 1
  br i1 %i.ux, label %.lr.ph.i.i820.epil.preheader, label %.lr.ph.i.i820.preheader.new

.lr.ph.i.i820.preheader.new:                      ; preds = %.lr.ph.i.i820.preheader
  %unroll_iter3403 = and i64 %.064.i.i815, -2
  br label %.lr.ph.i.i820

.preheader72.i.i824.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i820
  %lcmp.mod3400.not = icmp eq i64 %xtraiter3398, 0
  br i1 %lcmp.mod3400.not, label %.preheader72.i.i824, label %.lr.ph.i.i820.epil.preheader

.lr.ph.i.i820.epil.preheader:                     ; preds = %.preheader72.i.i824.loopexit.unr-lcssa, %.lr.ph.i.i820.preheader
  %.05779.i.i821.epil.init = phi i64 [ 0, %.lr.ph.i.i820.preheader ], [ %i.wh, %.preheader72.i.i824.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i822.epil.init = phi i64 [ 0, %.lr.ph.i.i820.preheader ], [ %i.wg, %.preheader72.i.i824.loopexit.unr-lcssa ]
  %lcmp.mod3402 = trunc i64 %.064.i.i815 to i1
  call void @llvm.assume(i1 %lcmp.mod3402)
  %i.uy = getelementptr [4 x i8], ptr %.061.i.i818, i64 %.05779.i.i821.epil.init
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !7
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr [4 x i8], ptr %.063.i.i816, i64 %.05779.i.i821.epil.init
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !7
  %i.vd = zext i32 %i.vc to i64
  %i.ve = add nuw nsw i64 %.05878.i.i822.epil.init, %i.va
  %i.vf = add nuw nsw i64 %i.ve, %i.vd            ; 2 uses
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i821.epil.init
  store i32 %i.vg, ptr %i.vh, align 4, !tbaa !7
  %i.vi = lshr i64 %i.vf, 32
  br label %.preheader72.i.i824

.preheader72.i.i824:                              ; preds = %.lr.ph.i.i820.epil.preheader, %.preheader72.i.i824.loopexit.unr-lcssa, %bb.ad
  %.058.lcssa.i.i825 = phi i64 [ 0, %bb.ad ], [ %i.wg, %.preheader72.i.i824.loopexit.unr-lcssa ], [ %i.vi, %.lr.ph.i.i820.epil.preheader ] ; 2 uses
  %i.vj = icmp ult i64 %.064.i.i815, %.062.i.i817
  br i1 %i.vj, label %.lr.ph83.i.i845, label %.lr.ph88.preheader.i.i832

.lr.ph.i.i820:                                    ; preds = %.lr.ph.i.i820, %.lr.ph.i.i820.preheader.new
  %.05779.i.i821 = phi i64 [ 0, %.lr.ph.i.i820.preheader.new ], [ %i.wh, %.lr.ph.i.i820 ] ; 5 uses
  %.05878.i.i822 = phi i64 [ 0, %.lr.ph.i.i820.preheader.new ], [ %i.wg, %.lr.ph.i.i820 ]
  %niter3404 = phi i64 [ 0, %.lr.ph.i.i820.preheader.new ], [ %niter3404.next.1, %.lr.ph.i.i820 ]
  %i.vk = getelementptr [4 x i8], ptr %.061.i.i818, i64 %.05779.i.i821
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !7
  %i.vm = zext i32 %i.vl to i64
  %i.vn = getelementptr [4 x i8], ptr %.063.i.i816, i64 %.05779.i.i821
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !7
  %i.vp = zext i32 %i.vo to i64
  %i.vq = add nuw nsw i64 %.05878.i.i822, %i.vm
  %i.vr = add nuw nsw i64 %i.vq, %i.vp            ; 2 uses
  %i.vs = trunc i64 %i.vr to i32
  %i.vt = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i821
  store i32 %i.vs, ptr %i.vt, align 4, !tbaa !7
  %i.vu = lshr i64 %i.vr, 32
  %i.vv = or disjoint i64 %.05779.i.i821, 1       ; 3 uses
  %i.vw = getelementptr [4 x i8], ptr %.061.i.i818, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !7
  %i.vy = zext i32 %i.vx to i64
  %i.vz = getelementptr [4 x i8], ptr %.063.i.i816, i64 %i.vv
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !7
  %i.wb = zext i32 %i.wa to i64
  %i.wc = add nuw nsw i64 %i.vu, %i.vy
  %i.wd = add nuw nsw i64 %i.wc, %i.wb            ; 2 uses
  %i.we = trunc i64 %i.wd to i32
  %i.wf = getelementptr [4 x i8], ptr %i.ac, i64 %i.vv
  store i32 %i.we, ptr %i.wf, align 4, !tbaa !7
  %i.wg = lshr i64 %i.wd, 32                      ; 3 uses
  %i.wh = add nuw nsw i64 %.05779.i.i821, 2       ; 2 uses
  %niter3404.next.1 = add i64 %niter3404, 2       ; 2 uses
  %niter3404.ncmp.1 = icmp eq i64 %niter3404.next.1, %unroll_iter3403
  br i1 %niter3404.ncmp.1, label %.preheader72.i.i824.loopexit.unr-lcssa, label %.lr.ph.i.i820, !llvm.loop !34

.preheader70.i.i826:                              ; preds = %bb.af
  %.not2001 = icmp ugt i64 %.062.i.i817, %i.g
  br i1 %.not2001, label %bary_add.exit849, label %.lr.ph88.preheader.i.i832

.lr.ph88.preheader.i.i832:                        ; preds = %.preheader72.i.i824, %.preheader70.i.i826
  %.1.lcssa.i.i8281955 = phi i64 [ %.062.i.i817, %.preheader70.i.i826 ], [ %.064.i.i815, %.preheader72.i.i824 ] ; 4 uses
  %.159.lcssa.i.i8271954 = phi i64 [ %i.ws, %.preheader70.i.i826 ], [ %.058.lcssa.i.i825, %.preheader72.i.i824 ]
  %i.wi = icmp eq i64 %.159.lcssa.i.i8271954, 0
  br i1 %i.wi, label %.loopexit71.i.i834, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph88.preheader.i.i832
  %i.wj = getelementptr [4 x i8], ptr %i.ac, i64 %.1.lcssa.i.i8281955
  store i32 1, ptr %i.wj, align 4, !tbaa !7
  %i.wk = add nuw nsw i64 %.1.lcssa.i.i8281955, 1
  %exitcond103.peel.not.i.i833 = icmp eq i64 %.1.lcssa.i.i8281955, %i.g
  br i1 %exitcond103.peel.not.i.i833, label %bary_add.exit849, label %.loopexit71.i.i834

.lr.ph83.i.i845:                                  ; preds = %.preheader72.i.i824, %bb.af
  %.182.i.i846 = phi i64 [ %i.wt, %bb.af ], [ %.064.i.i815, %.preheader72.i.i824 ] ; 4 uses
  %.15981.i.i847 = phi i64 [ %i.ws, %bb.af ], [ %.058.lcssa.i.i825, %.preheader72.i.i824 ]
  %i.wl = icmp eq i64 %.15981.i.i847, 0
  br i1 %i.wl, label %.loopexit71.i.i834, label %bb.af

bb.af:                                            ; preds = %.lr.ph83.i.i845
  %i.wm = getelementptr [4 x i8], ptr %.063.i.i816, i64 %.182.i.i846
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !7
  %i.wo = zext i32 %i.wn to i64
  %i.wp = add nuw nsw i64 %i.wo, 1                ; 2 uses
  %i.wq = trunc i64 %i.wp to i32
  %i.wr = getelementptr [4 x i8], ptr %i.ac, i64 %.182.i.i846
  store i32 %i.wq, ptr %i.wr, align 4, !tbaa !7
  %i.ws = lshr i64 %i.wp, 32                      ; 2 uses
  %i.wt = add i64 %.182.i.i846, 1                 ; 2 uses
  %exitcond102.not.i.i848 = icmp eq i64 %i.wt, %.062.i.i817
  br i1 %exitcond102.not.i.i848, label %.preheader70.i.i826, label %.lr.ph83.i.i845, !llvm.loop !36

.loopexit71.i.i834:                               ; preds = %.lr.ph83.i.i845, %bb.ae, %.lr.ph88.preheader.i.i832
  %.3.i.i835 = phi i64 [ %i.wk, %bb.ae ], [ %.1.lcssa.i.i8281955, %.lr.ph88.preheader.i.i832 ], [ %.182.i.i846, %.lr.ph83.i.i845 ] ; 7 uses
  %i.wu = icmp eq ptr %.063.i.i816, %i.ac
  %i.wv = icmp eq i64 %.062.i.i817, %i.h
  %or.cond.i.i836 = and i1 %i.wu, %i.wv
  br i1 %or.cond.i.i836, label %bary_add.exit849, label %.preheader69.i.i837

.preheader69.i.i837:                              ; preds = %.loopexit71.i.i834
  %i.ww = icmp ult i64 %.3.i.i835, %.062.i.i817
  br i1 %i.ww, label %.lr.ph91.i.i842.preheader, label %.preheader.i.i838

.lr.ph91.i.i842.preheader:                        ; preds = %.preheader69.i.i837
  %i.wx = sub nuw i64 %.062.i.i817, %.3.i.i835    ; 3 uses
  %min.iters.check2928 = icmp ult i64 %i.wx, 20
  br i1 %min.iters.check2928, label %.lr.ph91.i.i842.preheader3301, label %vector.memcheck2924

vector.memcheck2924:                              ; preds = %.lr.ph91.i.i842.preheader
  %i.wy = mul i64 %i.g, 12
  %i.wz = add i64 %i.wy, %.05602856
  %i.xa = sub i64 %i.wz, %.063.i.i8162925
  %i.xb = add i64 %i.xa, 11
  %diff.check2926 = icmp ult i64 %i.xb, 31
  br i1 %diff.check2926, label %.lr.ph91.i.i842.preheader3301, label %vector.ph2929

vector.ph2929:                                    ; preds = %vector.memcheck2924
  %n.vec2930 = and i64 %i.wx, -8                  ; 3 uses
  %i.xc = add i64 %.3.i.i835, %n.vec2930
  br label %vector.body2931

vector.body2931:                                  ; preds = %vector.body2931, %vector.ph2929
  %index2932 = phi i64 [ 0, %vector.ph2929 ], [ %index.next2935, %vector.body2931 ] ; 2 uses
  %i.xd = add nuw i64 %.3.i.i835, %index2932      ; 2 uses
  %i.xe = getelementptr [4 x i8], ptr %.063.i.i816, i64 %i.xd ; 2 uses
  %i.xf = getelementptr i8, ptr %i.xe, i64 16
  %wide.load2933 = load <4 x i32>, ptr %i.xe, align 4, !tbaa !7
  %wide.load2934 = load <4 x i32>, ptr %i.xf, align 4, !tbaa !7
  %i.xg = getelementptr [4 x i8], ptr %i.ac, i64 %i.xd ; 2 uses
  %i.xh = getelementptr i8, ptr %i.xg, i64 16
  store <4 x i32> %wide.load2933, ptr %i.xg, align 4, !tbaa !7
  store <4 x i32> %wide.load2934, ptr %i.xh, align 4, !tbaa !7
  %index.next2935 = add nuw i64 %index2932, 8     ; 2 uses
  %i.xi = icmp eq i64 %index.next2935, %n.vec2930
  br i1 %i.xi, label %middle.block2936, label %vector.body2931, !llvm.loop !93

middle.block2936:                                 ; preds = %vector.body2931
  %cmp.n2937 = icmp eq i64 %i.wx, %n.vec2930
  br i1 %cmp.n2937, label %.preheader.i.i838, label %.lr.ph91.i.i842.preheader3301

.lr.ph91.i.i842.preheader3301:                    ; preds = %vector.memcheck2924, %.lr.ph91.i.i842.preheader, %middle.block2936
  %.490.i.i843.ph = phi i64 [ %.3.i.i835, %vector.memcheck2924 ], [ %.3.i.i835, %.lr.ph91.i.i842.preheader ], [ %i.xc, %middle.block2936 ] ; 4 uses
  %i.xj = sub i64 %.062.i.i817, %.490.i.i843.ph
  %xtraiter3405 = and i64 %i.xj, 3                ; 2 uses
  %lcmp.mod3406.not.a = icmp eq i64 %xtraiter3405, 0
  br i1 %lcmp.mod3406.not.a, label %.lr.ph91.i.i842.prol.loopexit, label %.lr.ph91.i.i842.prol

.lr.ph91.i.i842.prol:                             ; preds = %.lr.ph91.i.i842.preheader3301, %.lr.ph91.i.i842.prol
  %.490.i.i843.prol = phi i64 [ %i.xn, %.lr.ph91.i.i842.prol ], [ %.490.i.i843.ph, %.lr.ph91.i.i842.preheader3301 ] ; 3 uses
  %prol.iter3407 = phi i64 [ %prol.iter3407.next, %.lr.ph91.i.i842.prol ], [ 0, %.lr.ph91.i.i842.preheader3301 ]
  %i.xk = getelementptr [4 x i8], ptr %.063.i.i816, i64 %.490.i.i843.prol
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !7
  %i.xm = getelementptr [4 x i8], ptr %i.ac, i64 %.490.i.i843.prol
  store i32 %i.xl, ptr %i.xm, align 4, !tbaa !7
  %i.xn = add nuw i64 %.490.i.i843.prol, 1        ; 2 uses
  %prol.iter3407.next = add i64 %prol.iter3407, 1 ; 2 uses
  %prol.iter3407.cmp.not = icmp eq i64 %prol.iter3407.next, %xtraiter3405
  br i1 %prol.iter3407.cmp.not, label %.lr.ph91.i.i842.prol.loopexit, label %.lr.ph91.i.i842.prol, !llvm.loop !94

.lr.ph91.i.i842.prol.loopexit:                    ; preds = %.lr.ph91.i.i842.prol, %.lr.ph91.i.i842.preheader3301
  %.490.i.i843.unr = phi i64 [ %.490.i.i843.ph, %.lr.ph91.i.i842.preheader3301 ], [ %i.xn, %.lr.ph91.i.i842.prol ]
  %i.xo = sub i64 %.490.i.i843.ph, %.062.i.i817
  %i.xp = icmp ugt i64 %i.xo, -4
  br i1 %i.xp, label %.preheader.i.i838, label %.lr.ph91.i.i842

.preheader.i.i838:                                ; preds = %.lr.ph91.i.i842.prol.loopexit, %.lr.ph91.i.i842, %middle.block2936, %.preheader69.i.i837
  %.4.lcssa.i.i839 = phi i64 [ %.3.i.i835, %.preheader69.i.i837 ], [ %.062.i.i817, %middle.block2936 ], [ %.062.i.i817, %.lr.ph91.i.i842 ], [ %.062.i.i817, %.lr.ph91.i.i842.prol.loopexit ] ; 3 uses
end_hunk_1
begin_hunk_2_@bary_mul_toom3:bb.a

.lr.ph91.i.i842:                                  ; preds = %.lr.ph91.i.i842.prol.loopexit, %.lr.ph91.i.i842
  %.490.i.i843 = phi i64 [ %i.yi, %.lr.ph91.i.i842 ], [ %.490.i.i843.unr, %.lr.ph91.i.i842.prol.loopexit ] ; 6 uses
  %i.xt = getelementptr [4 x i8], ptr %.063.i.i816, i64 %.490.i.i843
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !7
  %i.xv = getelementptr [4 x i8], ptr %i.ac, i64 %.490.i.i843
  store i32 %i.xu, ptr %i.xv, align 4, !tbaa !7
  %i.xw = add nuw i64 %.490.i.i843, 1             ; 2 uses
  %i.xx = getelementptr [4 x i8], ptr %.063.i.i816, i64 %i.xw
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !7
  %i.xz = getelementptr [4 x i8], ptr %i.ac, i64 %i.xw
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !7
  %i.ya = add nuw i64 %.490.i.i843, 2             ; 2 uses
  %i.yb = getelementptr [4 x i8], ptr %.063.i.i816, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !7
  %i.yd = getelementptr [4 x i8], ptr %i.ac, i64 %i.ya
  store i32 %i.yc, ptr %i.yd, align 4, !tbaa !7
  %i.ye = add nuw i64 %.490.i.i843, 3             ; 2 uses
  %i.yf = getelementptr [4 x i8], ptr %.063.i.i816, i64 %i.ye
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !7
  %i.yh = getelementptr [4 x i8], ptr %i.ac, i64 %i.ye
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !7
  %i.yi = add nuw i64 %.490.i.i843, 4             ; 2 uses
  %exitcond106.not.i.i844.3 = icmp eq i64 %i.yi, %.062.i.i817
  br i1 %exitcond106.not.i.i844.3, label %.preheader.i.i838, label %.lr.ph91.i.i842, !llvm.loop !95

bary_add.exit849:                                 ; preds = %.preheader70.i.i826, %bb.ae, %.loopexit71.i.i834, %.preheader.i.i838, %.lr.ph94.preheader.i.i840
  br i1 %.not97.i.i, label %.loopexit74.i.i866, label %.lr.ph.i.i851.preheader

.lr.ph.i.i851.preheader:                          ; preds = %bary_add.exit849
  %xtraiter3408 = and i64 %i.g, 1
  %.off3605 = add i64 %5, -1
  %i.yj = icmp ult i64 %.off3605, 3
  br i1 %i.yj, label %.lr.ph.i.i851.epil.preheader, label %.lr.ph.i.i851.preheader.new

.lr.ph.i.i851.preheader.new:                      ; preds = %.lr.ph.i.i851.preheader
  %unroll_iter3413 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i851

.lr.ph.i.i851:                                    ; preds = %.lr.ph.i.i851, %.lr.ph.i.i851.preheader.new
  %.078.i.i852 = phi i64 [ 0, %.lr.ph.i.i851.preheader.new ], [ %i.zh, %.lr.ph.i.i851 ] ; 5 uses
  %.06277.i.i853 = phi i64 [ 0, %.lr.ph.i.i851.preheader.new ], [ %i.zg, %.lr.ph.i.i851 ]
  %niter3414 = phi i64 [ 0, %.lr.ph.i.i851.preheader.new ], [ %niter3414.next.1, %.lr.ph.i.i851 ]
  %i.yk = getelementptr [4 x i8], ptr %i.ac, i64 %.078.i.i852
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !7
  %i.ym = zext i32 %i.yl to i64
  %i.yn = getelementptr [4 x i8], ptr %.0555, i64 %.078.i.i852
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !7
  %i.yp = zext i32 %i.yo to i64
  %i.yq = sub nsw i64 %i.ym, %i.yp
  %i.yr = add nsw i64 %i.yq, %.06277.i.i853       ; 2 uses
  %i.ys = trunc i64 %i.yr to i32
  %i.yt = getelementptr [4 x i8], ptr %i.ad, i64 %.078.i.i852
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !7
  %i.yu = ashr i64 %i.yr, 32
  %i.yv = or disjoint i64 %.078.i.i852, 1         ; 3 uses
  %i.yw = getelementptr [4 x i8], ptr %i.ac, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !7
  %i.yy = zext i32 %i.yx to i64
  %i.yz = getelementptr [4 x i8], ptr %.0555, i64 %i.yv
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !7
  %i.zb = zext i32 %i.za to i64
  %i.zc = sub nsw i64 %i.yy, %i.zb
  %i.zd = add nsw i64 %i.zc, %i.yu                ; 2 uses
  %i.ze = trunc i64 %i.zd to i32
  %i.zf = getelementptr [4 x i8], ptr %i.ad, i64 %i.yv
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !7
  %i.zg = ashr i64 %i.zd, 32                      ; 3 uses
  %i.zh = add nuw nsw i64 %.078.i.i852, 2         ; 2 uses
  %niter3414.next.1 = add i64 %niter3414, 2       ; 2 uses
  %niter3414.ncmp.1 = icmp eq i64 %niter3414.next.1, %unroll_iter3413
  br i1 %niter3414.ncmp.1, label %._crit_edge.i.i855.unr-lcssa, label %.lr.ph.i.i851, !llvm.loop !48

._crit_edge.i.i855.unr-lcssa:                     ; preds = %.lr.ph.i.i851
  %lcmp.mod3410.not = icmp eq i64 %xtraiter3408, 0
  br i1 %lcmp.mod3410.not, label %._crit_edge.i.i855, label %.lr.ph.i.i851.epil.preheader

.lr.ph.i.i851.epil.preheader:                     ; preds = %._crit_edge.i.i855.unr-lcssa, %.lr.ph.i.i851.preheader
  %.078.i.i852.epil.init = phi i64 [ 0, %.lr.ph.i.i851.preheader ], [ %i.zh, %._crit_edge.i.i855.unr-lcssa ] ; 3 uses
  %.06277.i.i853.epil.init = phi i64 [ 0, %.lr.ph.i.i851.preheader ], [ %i.zg, %._crit_edge.i.i855.unr-lcssa ]
  %lcmp.mod3412 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3412)
  %i.zi = getelementptr [4 x i8], ptr %i.ac, i64 %.078.i.i852.epil.init
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !7
  %i.zk = zext i32 %i.zj to i64
  %i.zl = getelementptr [4 x i8], ptr %.0555, i64 %.078.i.i852.epil.init
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !7
  %i.zn = zext i32 %i.zm to i64
  %i.zo = sub nsw i64 %i.zk, %i.zn
  %i.zp = add nsw i64 %i.zo, %.06277.i.i853.epil.init ; 2 uses
  %i.zq = trunc i64 %i.zp to i32
  %i.zr = getelementptr [4 x i8], ptr %i.ad, i64 %.078.i.i852.epil.init
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !7
  %i.zs = ashr i64 %i.zp, 32
  br label %._crit_edge.i.i855

._crit_edge.i.i855:                               ; preds = %._crit_edge.i.i855.unr-lcssa, %.lr.ph.i.i851.epil.preheader
  %.lcssa3300 = phi i64 [ %i.zg, %._crit_edge.i.i855.unr-lcssa ], [ %i.zs, %.lr.ph.i.i851.epil.preheader ]
  %i.zt = icmp eq i64 %.lcssa3300, 0
  br i1 %i.zt, label %.loopexit74.i.i866, label %.loopexit71.i.i859

.loopexit71.i.i859:                               ; preds = %._crit_edge.i.i855
  %i.zu = getelementptr [4 x i8], ptr %i.ac, i64 %i.g
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !7
  %i.zw = zext i32 %i.zv to i64
  %i.zx = add nsw i64 %i.zw, -1                   ; 2 uses
  %i.zy = trunc i64 %i.zx to i32
  %i.zz = getelementptr [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.zy, ptr %i.zz, align 4, !tbaa !7
  %i.aaa = icmp ult i64 %i.zx, 4294967296
  br i1 %i.aaa, label %.lr.ph.i.i902.preheader, label %.lr.ph.i886

.loopexit74.i.i866:                               ; preds = %bary_add.exit849, %._crit_edge.i.i855
  %.not2736 = icmp eq i64 %.idx1993, 0
  br i1 %.not2736, label %bary_2comp.exit896, label %.lr.ph93.i.i874

.lr.ph93.i.i874:                                  ; preds = %.loopexit74.i.i866
  %i.aab = getelementptr [4 x i8], ptr %i.ac, i64 %i.g
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !7
  %i.aad = getelementptr [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.aac, ptr %i.aad, align 4, !tbaa !7
  br label %bary_2comp.exit896

.lr.ph.i886:                                      ; preds = %.loopexit71.i.i859, %bb.ag
  %.023.i887 = phi i64 [ %i.aag, %bb.ag ], [ 0, %.loopexit71.i.i859 ] ; 9 uses
  %i.aae = getelementptr [4 x i8], ptr %i.ad, i64 %.023.i887
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !7 ; 2 uses
  %.not.i888 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i888, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i886
  %i.aag = add nuw nsw i64 %.023.i887, 1
  %exitcond.not.i895 = icmp eq i64 %.023.i887, %i.g
  br i1 %exitcond.not.i895, label %bary_2comp.exit896, label %.lr.ph.i886, !llvm.loop !55

bb.ah:                                            ; preds = %.lr.ph.i886
  %i.aah = getelementptr [4 x i8], ptr %i.ad, i64 %.023.i887
  %i.aai = sub i32 0, %i.aaf
  store i32 %i.aai, ptr %i.aah, align 4, !tbaa !7
  %.not2003.not = icmp samesign ult i64 %.023.i887, %i.g
  br i1 %.not2003.not, label %.lr.ph26.i891.preheader, label %bary_2comp.exit896

.lr.ph26.i891.preheader:                          ; preds = %bb.ah
  %i.aaj = sub nuw nsw i64 %i.g, %.023.i887       ; 3 uses
  %min.iters.check2940 = icmp samesign ult i64 %i.aaj, 8
  br i1 %min.iters.check2940, label %.lr.ph26.i891.preheader3295, label %vector.ph2941

vector.ph2941:                                    ; preds = %.lr.ph26.i891.preheader
  %n.vec2942 = and i64 %i.aaj, 9223372036854775800 ; 3 uses
  %i.aak = add nuw i64 %.023.i887, %n.vec2942
  %i.aal = getelementptr [4 x i8], ptr %i.ad, i64 %.023.i887
  br label %vector.body2943

vector.body2943:                                  ; preds = %vector.body2943, %vector.ph2941
  %index2944 = phi i64 [ 0, %vector.ph2941 ], [ %index.next2947, %vector.body2943 ] ; 2 uses
  %i.aam = getelementptr [4 x i8], ptr %i.aal, i64 %index2944 ; 2 uses
  %i.aan = getelementptr i8, ptr %i.aam, i64 4    ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aam, i64 20   ; 2 uses
  %wide.load2945 = load <4 x i32>, ptr %i.aan, align 4, !tbaa !7
  %wide.load2946 = load <4 x i32>, ptr %i.aao, align 4, !tbaa !7
  %i.aap = xor <4 x i32> %wide.load2945, splat (i32 -1)
  %i.aaq = xor <4 x i32> %wide.load2946, splat (i32 -1)
  store <4 x i32> %i.aap, ptr %i.aan, align 4, !tbaa !7
  store <4 x i32> %i.aaq, ptr %i.aao, align 4, !tbaa !7
  %index.next2947 = add nuw i64 %index2944, 8     ; 2 uses
  %i.aar = icmp eq i64 %index.next2947, %n.vec2942
  br i1 %i.aar, label %middle.block2948, label %vector.body2943, !llvm.loop !96

middle.block2948:                                 ; preds = %vector.body2943
  %cmp.n2949 = icmp eq i64 %i.aaj, %n.vec2942
  br i1 %cmp.n2949, label %bary_2comp.exit896, label %.lr.ph26.i891.preheader3295

.lr.ph26.i891.preheader3295:                      ; preds = %.lr.ph26.i891.preheader, %middle.block2948
  %.125.i892.in.ph = phi i64 [ %.023.i887, %.lr.ph26.i891.preheader ], [ %i.aak, %middle.block2948 ]
  br label %.lr.ph26.i891

.lr.ph26.i891:                                    ; preds = %.lr.ph26.i891.preheader3295, %.lr.ph26.i891
  %.125.i892.in = phi i64 [ %.125.i892, %.lr.ph26.i891 ], [ %.125.i892.in.ph, %.lr.ph26.i891.preheader3295 ]
  %.125.i892 = add nuw i64 %.125.i892.in, 1       ; 3 uses
  %i.aas = getelementptr [4 x i8], ptr %i.ad, i64 %.125.i892 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !7
  %i.aau = xor i32 %i.aat, -1
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !7
  %exitcond31.not.i894 = icmp eq i64 %.125.i892, %i.g
  br i1 %exitcond31.not.i894, label %bary_2comp.exit896, label %.lr.ph26.i891, !llvm.loop !97

bary_2comp.exit896:                               ; preds = %bb.ag, %.lr.ph26.i891, %middle.block2948, %.lr.ph93.i.i874, %.loopexit74.i.i866, %bb.ah
  %.not572.not1959 = phi i1 [ false, %middle.block2948 ], [ true, %.lr.ph93.i.i874 ], [ false, %bb.ah ], [ true, %.loopexit74.i.i866 ], [ false, %.lr.ph26.i891 ], [ false, %bb.ag ] ; 2 uses
  %.0543 = phi i32 [ 0, %middle.block2948 ], [ 1, %.lr.ph93.i.i874 ], [ 0, %bb.ah ], [ 1, %.loopexit74.i.i866 ], [ 0, %.lr.ph26.i891 ], [ 0, %bb.ag ] ; 3 uses
  br i1 %.not97.i.i, label %.preheader72.i.i906.thread, label %.lr.ph.i.i902.preheader

.preheader72.i.i906.thread:                       ; preds = %bary_2comp.exit896
  br i1 %.not572.not1959, label %bb.ai, label %bb.am

.lr.ph.i.i902.preheader:                          ; preds = %.loopexit71.i.i859, %bary_2comp.exit896
  %.05432489 = phi i32 [ %.0543, %bary_2comp.exit896 ], [ 1, %.loopexit71.i.i859 ] ; 4 uses
  %.not572.not19592487 = phi i1 [ %.not572.not1959, %bary_2comp.exit896 ], [ true, %.loopexit71.i.i859 ] ; 2 uses
  %xtraiter3415 = and i64 %i.g, 1
  %.off3606 = add i64 %5, -1
  %i.aav = icmp ult i64 %.off3606, 3
  br i1 %i.aav, label %.lr.ph.i.i902, label %.lr.ph.i.i902.preheader.new

.lr.ph.i.i902.preheader.new:                      ; preds = %.lr.ph.i.i902.preheader
  %unroll_iter3420 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i902.epil.preheader.a

.lr.ph.i.i902.epil.preheader.a:                   ; preds = %.lr.ph.i.i902.epil.preheader.a, %.lr.ph.i.i902.preheader.new
  %.05779.i.i903 = phi i64 [ 0, %.lr.ph.i.i902.preheader.new ], [ %45, %.lr.ph.i.i902.epil.preheader.a ] ; 4 uses
  %.05779.i.i903.epil.init.a = phi i64 [ 0, %.lr.ph.i.i902.preheader.new ], [ %i.abf, %.lr.ph.i.i902.epil.preheader.a ]
  %.05878.i.i904.epil.init.a = phi i64 [ 0, %.lr.ph.i.i902.preheader.new ], [ %niter3403.next.1, %.lr.ph.i.i902.epil.preheader.a ]
  %34 = getelementptr [4 x i8], ptr %.0555, i64 %.05779.i.i903
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = zext i32 %35 to i64
  %37 = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i903 ; 2 uses
  %38 = load i32, ptr %37, align 4, !tbaa !7
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %.05779.i.i903.epil.init.a, %36
  %41 = add nuw nsw i64 %40, %39                  ; 2 uses
  %42 = trunc i64 %41 to i32
  store i32 %42, ptr %37, align 4, !tbaa !7
  %43 = lshr i64 %41, 32
  %44 = or disjoint i64 %.05779.i.i903, 1         ; 2 uses
  %i.aaw = getelementptr [4 x i8], ptr %.0555, i64 %44
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !7
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = getelementptr [4 x i8], ptr %i.ac, i64 %44 ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !7
  %i.abb = zext i32 %i.aba to i64
  %i.abc = add nuw nsw i64 %43, %i.aay
  %i.abd = add nuw nsw i64 %i.abc, %i.abb         ; 2 uses
  %i.abe = trunc i64 %i.abd to i32
  store i32 %i.abe, ptr %i.aaz, align 4, !tbaa !7
  %i.abf = lshr i64 %i.abd, 32                    ; 3 uses
  %45 = add nuw nsw i64 %.05779.i.i903, 2         ; 2 uses
  %niter3403.next.1 = add i64 %.05878.i.i904.epil.init.a, 2 ; 2 uses
  %niter3403.ncmp.1 = icmp eq i64 %niter3403.next.1, %unroll_iter3420
  br i1 %niter3403.ncmp.1, label %.preheader72.i.i906, label %.lr.ph.i.i902.epil.preheader.a, !llvm.loop !34

.preheader72.i.i906:                              ; preds = %.lr.ph.i.i902.epil.preheader.a
  %i.abg = icmp eq i64 %xtraiter3415, 0
  br i1 %i.abg, label %.lr.ph83.i.i927, label %.lr.ph.i.i902

.lr.ph.i.i902:                                    ; preds = %.preheader72.i.i906, %.lr.ph.i.i902.preheader
  %.05878.i.i904 = phi i64 [ 0, %.lr.ph.i.i902.preheader ], [ %45, %.preheader72.i.i906 ] ; 2 uses
  %niter3421 = phi i64 [ 0, %.lr.ph.i.i902.preheader ], [ %i.abf, %.preheader72.i.i906 ]
  %lcmp.mod3401 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3401)
  %i.abh = getelementptr [4 x i8], ptr %.0555, i64 %.05878.i.i904
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !7
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr [4 x i8], ptr %i.ac, i64 %.05878.i.i904 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !7
  %i.abm = zext i32 %i.abl to i64
  %i.abn = add nuw nsw i64 %niter3421, %i.abj
  %i.abo = add nuw nsw i64 %i.abn, %i.abm         ; 2 uses
  %i.abp = trunc i64 %i.abo to i32
  store i32 %i.abp, ptr %i.abk, align 4, !tbaa !7
  %i.abq = lshr i64 %i.abo, 32
  br label %.lr.ph83.i.i927

.lr.ph83.i.i927:                                  ; preds = %.preheader72.i.i906, %.lr.ph.i.i902
  %.lcssa3276 = phi i64 [ %i.abf, %.preheader72.i.i906 ], [ %i.abq, %.lr.ph.i.i902 ]
  %46 = icmp eq i64 %.lcssa3276, 0
  br i1 %46, label %bary_add.exit931, label %.split2499

.split2499:                                       ; preds = %.lr.ph83.i.i927
  %i.abr = getelementptr [4 x i8], ptr %i.ac, i64 %i.g ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !7
  %i.abt = add i32 %i.abs, 1
  store i32 %i.abt, ptr %i.abr, align 4, !tbaa !7
  br i1 %.not572.not19592487, label %bb.ai, label %bb.am

bary_add.exit931:                                 ; preds = %.lr.ph83.i.i927
  br i1 %.not572.not19592487, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %.split2499, %.preheader72.i.i906.thread, %bary_add.exit931
  %.0543249024942498 = phi i32 [ %.0543, %.preheader72.i.i906.thread ], [ %.05432489, %bary_add.exit931 ], [ %.05432489, %.split2499 ] ; 9 uses
  %.not2008 = icmp ult i64 %i.g, %.0554
  br i1 %.not2008, label %.lr.ph.i.i937.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i936 = icmp eq i64 %.0554, 0
  br i1 %.not.i.i936, label %.preheader72.i.i941, label %.lr.ph.i.i937.preheader

.lr.ph.i.i937.preheader:                          ; preds = %bb.ai, %bb.aj
  %.061.i.i9352512 = phi ptr [ %.0553, %bb.aj ], [ %i.ad, %bb.ai ] ; 3 uses
  %.062.i.i9342510 = phi i64 [ %i.h, %bb.aj ], [ %.0554, %bb.ai ] ; 2 uses
  %.063.i.i9332508 = phi ptr [ %i.ad, %bb.aj ], [ %.0553, %bb.ai ] ; 5 uses
  %.064.i.i9322506 = phi i64 [ %.0554, %bb.aj ], [ %i.h, %bb.ai ] ; 6 uses
  %xtraiter3448 = and i64 %.064.i.i9322506, 1
  %i.abu = icmp eq i64 %.064.i.i9322506, 1
  br i1 %i.abu, label %.lr.ph.i.i937.epil.preheader, label %.lr.ph.i.i937.preheader.new

.lr.ph.i.i937.preheader.new:                      ; preds = %.lr.ph.i.i937.preheader
  %unroll_iter3453 = and i64 %.064.i.i9322506, -2
  br label %.lr.ph.i.i937

.preheader72.i.i941.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i937
  %lcmp.mod3450.not = icmp eq i64 %xtraiter3448, 0
  br i1 %lcmp.mod3450.not, label %.preheader72.i.i941, label %.lr.ph.i.i937.epil.preheader

.lr.ph.i.i937.epil.preheader:                     ; preds = %.preheader72.i.i941.loopexit.unr-lcssa, %.lr.ph.i.i937.preheader
  %.05779.i.i938.epil.init = phi i64 [ 0, %.lr.ph.i.i937.preheader ], [ %i.ade, %.preheader72.i.i941.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i939.epil.init = phi i64 [ 0, %.lr.ph.i.i937.preheader ], [ %i.add, %.preheader72.i.i941.loopexit.unr-lcssa ]
  %lcmp.mod3452 = trunc i64 %.064.i.i9322506 to i1
  call void @llvm.assume(i1 %lcmp.mod3452)
  %i.abv = getelementptr [4 x i8], ptr %.061.i.i9352512, i64 %.05779.i.i938.epil.init
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !7
  %i.abx = zext i32 %i.abw to i64
  %i.aby = getelementptr [4 x i8], ptr %.063.i.i9332508, i64 %.05779.i.i938.epil.init
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !7
  %i.aca = zext i32 %i.abz to i64
  %i.acb = add nuw nsw i64 %.05878.i.i939.epil.init, %i.abx
  %i.acc = add nuw nsw i64 %i.acb, %i.aca         ; 2 uses
  %i.acd = trunc i64 %i.acc to i32
  %i.ace = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i938.epil.init
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !7
  %i.acf = lshr i64 %i.acc, 32
  br label %.preheader72.i.i941

.preheader72.i.i941:                              ; preds = %.lr.ph.i.i937.epil.preheader, %.preheader72.i.i941.loopexit.unr-lcssa, %bb.aj
  %.062.i.i9342511 = phi i64 [ %i.h, %bb.aj ], [ %.062.i.i9342510, %.preheader72.i.i941.loopexit.unr-lcssa ], [ %.062.i.i9342510, %.lr.ph.i.i937.epil.preheader ] ; 8 uses
  %.063.i.i9332509 = phi ptr [ %i.ad, %bb.aj ], [ %.063.i.i9332508, %.preheader72.i.i941.loopexit.unr-lcssa ], [ %.063.i.i9332508, %.lr.ph.i.i937.epil.preheader ] ; 9 uses
  %.064.i.i9322507 = phi i64 [ 0, %bb.aj ], [ %.064.i.i9322506, %.preheader72.i.i941.loopexit.unr-lcssa ], [ %.064.i.i9322506, %.lr.ph.i.i937.epil.preheader ] ; 7 uses
  %.058.lcssa.i.i942 = phi i64 [ 0, %bb.aj ], [ %i.add, %.preheader72.i.i941.loopexit.unr-lcssa ], [ %i.acf, %.lr.ph.i.i937.epil.preheader ] ; 2 uses
  %.063.i.i93325092979 = ptrtoaddr ptr %.063.i.i9332509 to i64
  %i.acg = icmp ult i64 %.064.i.i9322507, %.062.i.i9342511
  br i1 %i.acg, label %.lr.ph83.i.i962, label %.preheader70.i.i943

.lr.ph.i.i937:                                    ; preds = %.lr.ph.i.i937, %.lr.ph.i.i937.preheader.new
  %.05779.i.i938 = phi i64 [ 0, %.lr.ph.i.i937.preheader.new ], [ %i.ade, %.lr.ph.i.i937 ] ; 5 uses
  %.05878.i.i939 = phi i64 [ 0, %.lr.ph.i.i937.preheader.new ], [ %i.add, %.lr.ph.i.i937 ]
  %niter3454 = phi i64 [ 0, %.lr.ph.i.i937.preheader.new ], [ %niter3454.next.1, %.lr.ph.i.i937 ]
  %i.ach = getelementptr [4 x i8], ptr %.061.i.i9352512, i64 %.05779.i.i938
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !7
  %i.acj = zext i32 %i.aci to i64
  %i.ack = getelementptr [4 x i8], ptr %.063.i.i9332508, i64 %.05779.i.i938
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !7
  %i.acm = zext i32 %i.acl to i64
  %i.acn = add nuw nsw i64 %.05878.i.i939, %i.acj
  %i.aco = add nuw nsw i64 %i.acn, %i.acm         ; 2 uses
  %i.acp = trunc i64 %i.aco to i32
  %i.acq = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i938
  store i32 %i.acp, ptr %i.acq, align 4, !tbaa !7
  %i.acr = lshr i64 %i.aco, 32
  %i.acs = or disjoint i64 %.05779.i.i938, 1      ; 3 uses
  %i.act = getelementptr [4 x i8], ptr %.061.i.i9352512, i64 %i.acs
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !7
  %i.acv = zext i32 %i.acu to i64
  %i.acw = getelementptr [4 x i8], ptr %.063.i.i9332508, i64 %i.acs
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !7
  %i.acy = zext i32 %i.acx to i64
  %i.acz = add nuw nsw i64 %i.acr, %i.acv
  %i.ada = add nuw nsw i64 %i.acz, %i.acy         ; 2 uses
  %i.adb = trunc i64 %i.ada to i32
  %i.adc = getelementptr [4 x i8], ptr %i.ae, i64 %i.acs
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !7
  %i.add = lshr i64 %i.ada, 32                    ; 3 uses
  %i.ade = add nuw i64 %.05779.i.i938, 2          ; 2 uses
  %niter3454.next.1 = add i64 %niter3454, 2       ; 2 uses
  %niter3454.ncmp.1 = icmp eq i64 %niter3454.next.1, %unroll_iter3453
  br i1 %niter3454.ncmp.1, label %.preheader72.i.i941.loopexit.unr-lcssa, label %.lr.ph.i.i937, !llvm.loop !34

.preheader70.i.i943:                              ; preds = %.preheader72.i.i941
  %.not2009 = icmp ugt i64 %.064.i.i9322507, %i.g
  br i1 %.not2009, label %.critedge599, label %.lr.ph88.preheader.i.i949

.lr.ph88.preheader.i.i949:                        ; preds = %.preheader70.i.i943
  %i.adf = icmp eq i64 %.058.lcssa.i.i942, 0
  br i1 %i.adf, label %.loopexit71.i.i951, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph88.preheader.i.i949
  %i.adg = getelementptr [4 x i8], ptr %i.ae, i64 %.064.i.i9322507
  store i32 1, ptr %i.adg, align 4, !tbaa !7
  %i.adh = add nuw nsw i64 %.064.i.i9322507, 1
  %exitcond103.peel.not.i.i950 = icmp eq i64 %.064.i.i9322507, %i.g
  br i1 %exitcond103.peel.not.i.i950, label %.critedge599, label %.loopexit71.i.i951

.lr.ph83.i.i962:                                  ; preds = %.preheader72.i.i941, %bb.al
  %.182.i.i963 = phi i64 [ %i.adq, %bb.al ], [ %.064.i.i9322507, %.preheader72.i.i941 ] ; 4 uses
  %.15981.i.i964 = phi i64 [ %i.adp, %bb.al ], [ %.058.lcssa.i.i942, %.preheader72.i.i941 ]
  %i.adi = icmp eq i64 %.15981.i.i964, 0
  br i1 %i.adi, label %.loopexit71.i.i951, label %bb.al

bb.al:                                            ; preds = %.lr.ph83.i.i962
  %i.adj = getelementptr [4 x i8], ptr %.063.i.i9332509, i64 %.182.i.i963
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !7
  %i.adl = zext i32 %i.adk to i64
  %i.adm = add nuw nsw i64 %i.adl, 1              ; 2 uses
  %i.adn = trunc i64 %i.adm to i32
  %i.ado = getelementptr [4 x i8], ptr %i.ae, i64 %.182.i.i963
  store i32 %i.adn, ptr %i.ado, align 4, !tbaa !7
  %i.adp = lshr i64 %i.adm, 32
  %i.adq = add i64 %.182.i.i963, 1                ; 2 uses
  %exitcond102.not.i.i965 = icmp eq i64 %i.adq, %.062.i.i9342511
  br i1 %exitcond102.not.i.i965, label %.critedge599, label %.lr.ph83.i.i962, !llvm.loop !36

.loopexit71.i.i951:                               ; preds = %.lr.ph83.i.i962, %bb.ak, %.lr.ph88.preheader.i.i949
  %.3.i.i952 = phi i64 [ %i.adh, %bb.ak ], [ %.064.i.i9322507, %.lr.ph88.preheader.i.i949 ], [ %.182.i.i963, %.lr.ph83.i.i962 ] ; 8 uses
  %i.adr = icmp eq ptr %.063.i.i9332509, %i.ae
  %i.ads = icmp eq i64 %.062.i.i9342511, %i.h
  %or.cond.i.i953 = and i1 %i.adr, %i.ads
  br i1 %or.cond.i.i953, label %.critedge599, label %.preheader69.i.i954

.preheader69.i.i954:                              ; preds = %.loopexit71.i.i951
  %i.adt = icmp ult i64 %.3.i.i952, %.062.i.i9342511
  br i1 %i.adt, label %.lr.ph91.i.i959.preheader, label %.preheader.i.i955

.lr.ph91.i.i959.preheader:                        ; preds = %.preheader69.i.i954
  %i.adu = sub nuw i64 %.062.i.i9342511, %.3.i.i952 ; 3 uses
  %min.iters.check2982 = icmp ult i64 %i.adu, 20
  br i1 %min.iters.check2982, label %.lr.ph91.i.i959.preheader3278, label %vector.memcheck2978

vector.memcheck2978:                              ; preds = %.lr.ph91.i.i959.preheader
  %i.adv = mul i64 %i.g, 20
  %i.adw = add i64 %i.adv, %.05602856
  %i.adx = sub i64 %i.adw, %.063.i.i93325092979
  %i.ady = add i64 %i.adx, 19
  %diff.check2980 = icmp ult i64 %i.ady, 31
  br i1 %diff.check2980, label %.lr.ph91.i.i959.preheader3278, label %vector.ph2983

vector.ph2983:                                    ; preds = %vector.memcheck2978
  %n.vec2984 = and i64 %i.adu, -8                 ; 3 uses
  %i.adz = add i64 %.3.i.i952, %n.vec2984
  br label %vector.body2985

vector.body2985:                                  ; preds = %vector.body2985, %vector.ph2983
  %index2986 = phi i64 [ 0, %vector.ph2983 ], [ %index.next2989, %vector.body2985 ] ; 2 uses
  %i.aea = add nuw i64 %.3.i.i952, %index2986     ; 2 uses
  %i.aeb = getelementptr [4 x i8], ptr %.063.i.i9332509, i64 %i.aea ; 2 uses
  %i.aec = getelementptr i8, ptr %i.aeb, i64 16
  %wide.load2987 = load <4 x i32>, ptr %i.aeb, align 4, !tbaa !7
  %wide.load2988 = load <4 x i32>, ptr %i.aec, align 4, !tbaa !7
  %i.aed = getelementptr [4 x i8], ptr %i.ae, i64 %i.aea ; 2 uses
  %i.aee = getelementptr i8, ptr %i.aed, i64 16
  store <4 x i32> %wide.load2987, ptr %i.aed, align 4, !tbaa !7
  store <4 x i32> %wide.load2988, ptr %i.aee, align 4, !tbaa !7
  %index.next2989 = add nuw i64 %index2986, 8     ; 2 uses
  %i.aef = icmp eq i64 %index.next2989, %n.vec2984
  br i1 %i.aef, label %middle.block2990, label %vector.body2985, !llvm.loop !98

middle.block2990:                                 ; preds = %vector.body2985
  %cmp.n2991 = icmp eq i64 %i.adu, %n.vec2984
  br i1 %cmp.n2991, label %.critedge599, label %.lr.ph91.i.i959.preheader3278

.lr.ph91.i.i959.preheader3278:                    ; preds = %vector.memcheck2978, %.lr.ph91.i.i959.preheader, %middle.block2990
  %.490.i.i960.ph = phi i64 [ %.3.i.i952, %vector.memcheck2978 ], [ %.3.i.i952, %.lr.ph91.i.i959.preheader ], [ %i.adz, %middle.block2990 ] ; 4 uses
  %i.aeg = sub i64 %.062.i.i9342511, %.490.i.i960.ph
  %xtraiter3455 = and i64 %i.aeg, 3               ; 2 uses
  %lcmp.mod3456.not = icmp eq i64 %xtraiter3455, 0
  br i1 %lcmp.mod3456.not, label %.lr.ph91.i.i959.prol.loopexit, label %.lr.ph91.i.i959.prol

.lr.ph91.i.i959.prol:                             ; preds = %.lr.ph91.i.i959.preheader3278, %.lr.ph91.i.i959.prol
  %.490.i.i960.prol = phi i64 [ %i.aek, %.lr.ph91.i.i959.prol ], [ %.490.i.i960.ph, %.lr.ph91.i.i959.preheader3278 ] ; 3 uses
  %prol.iter3457 = phi i64 [ %prol.iter3457.next, %.lr.ph91.i.i959.prol ], [ 0, %.lr.ph91.i.i959.preheader3278 ]
  %i.aeh = getelementptr [4 x i8], ptr %.063.i.i9332509, i64 %.490.i.i960.prol
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !7
  %i.aej = getelementptr [4 x i8], ptr %i.ae, i64 %.490.i.i960.prol
  store i32 %i.aei, ptr %i.aej, align 4, !tbaa !7
  %i.aek = add nuw i64 %.490.i.i960.prol, 1       ; 2 uses
  %prol.iter3457.next = add i64 %prol.iter3457, 1 ; 2 uses
  %prol.iter3457.cmp.not = icmp eq i64 %prol.iter3457.next, %xtraiter3455
  br i1 %prol.iter3457.cmp.not, label %.lr.ph91.i.i959.prol.loopexit, label %.lr.ph91.i.i959.prol, !llvm.loop !99

.lr.ph91.i.i959.prol.loopexit:                    ; preds = %.lr.ph91.i.i959.prol, %.lr.ph91.i.i959.preheader3278
  %.490.i.i960.unr = phi i64 [ %.490.i.i960.ph, %.lr.ph91.i.i959.preheader3278 ], [ %i.aek, %.lr.ph91.i.i959.prol ]
  %i.ael = sub i64 %.490.i.i960.ph, %.062.i.i9342511
  %i.aem = icmp ugt i64 %i.ael, -4
  br i1 %i.aem, label %.critedge599, label %.lr.ph91.i.i959

.preheader.i.i955:                                ; preds = %.preheader69.i.i954
  %.not2010 = icmp ugt i64 %.3.i.i952, %i.g
  br i1 %.not2010, label %.critedge599, label %.critedge599.sink.split
end_hunk_2
begin_hunk_3_@bary_mul_toom3:bb.a
  %i.ajf = getelementptr i8, ptr %i.aje, i64 16
  %wide.load2972 = load <4 x i32>, ptr %i.aje, align 4, !tbaa !7
  %wide.load2973 = load <4 x i32>, ptr %i.ajf, align 4, !tbaa !7
  %i.ajg = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajd ; 2 uses
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 16
  store <4 x i32> %wide.load2972, ptr %i.ajg, align 4, !tbaa !7
  store <4 x i32> %wide.load2973, ptr %i.ajh, align 4, !tbaa !7
  %index.next2974 = add nuw i64 %index2971, 8     ; 2 uses
  %i.aji = icmp eq i64 %index.next2974, %n.vec2969
  br i1 %i.aji, label %middle.block2975, label %vector.body2970, !llvm.loop !102

middle.block2975:                                 ; preds = %vector.body2970
  %cmp.n2976 = icmp eq i64 %i.aix, %n.vec2969
  br i1 %cmp.n2976, label %.preheader.i.i987, label %.lr.ph93.i.i991.preheader3282

.lr.ph93.i.i991.preheader3282:                    ; preds = %vector.memcheck2963, %.lr.ph93.i.i991.preheader, %middle.block2975
  %.692.i.i992.ph = phi i64 [ %.5.i.i984, %vector.memcheck2963 ], [ %.5.i.i984, %.lr.ph93.i.i991.preheader ], [ %i.ajc, %middle.block2975 ] ; 4 uses
  %i.ajj = sub i64 %.0554, %.692.i.i992.ph
  %xtraiter3445 = and i64 %i.ajj, 3               ; 2 uses
  %lcmp.mod3446.not = icmp eq i64 %xtraiter3445, 0
  br i1 %lcmp.mod3446.not, label %.lr.ph93.i.i991.prol.loopexit, label %.lr.ph93.i.i991.prol

.lr.ph93.i.i991.prol:                             ; preds = %.lr.ph93.i.i991.preheader3282, %.lr.ph93.i.i991.prol
  %.692.i.i992.prol = phi i64 [ %i.ajn, %.lr.ph93.i.i991.prol ], [ %.692.i.i992.ph, %.lr.ph93.i.i991.preheader3282 ] ; 3 uses
  %prol.iter3447 = phi i64 [ %prol.iter3447.next, %.lr.ph93.i.i991.prol ], [ 0, %.lr.ph93.i.i991.preheader3282 ]
  %i.ajk = getelementptr [4 x i8], ptr %.0553, i64 %.692.i.i992.prol
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !7
  %i.ajm = getelementptr [4 x i8], ptr %i.ae, i64 %.692.i.i992.prol
  store i32 %i.ajl, ptr %i.ajm, align 4, !tbaa !7
  %i.ajn = add nuw i64 %.692.i.i992.prol, 1       ; 2 uses
  %prol.iter3447.next = add i64 %prol.iter3447, 1 ; 2 uses
  %prol.iter3447.cmp.not = icmp eq i64 %prol.iter3447.next, %xtraiter3445
  br i1 %prol.iter3447.cmp.not, label %.lr.ph93.i.i991.prol.loopexit, label %.lr.ph93.i.i991.prol, !llvm.loop !103

.lr.ph93.i.i991.prol.loopexit:                    ; preds = %.lr.ph93.i.i991.prol, %.lr.ph93.i.i991.preheader3282
  %.692.i.i992.unr = phi i64 [ %.692.i.i992.ph, %.lr.ph93.i.i991.preheader3282 ], [ %i.ajn, %.lr.ph93.i.i991.prol ]
  %i.ajo = sub i64 %.692.i.i992.ph, %.0554
  %i.ajp = icmp ugt i64 %i.ajo, -4
  br i1 %i.ajp, label %.preheader.i.i987, label %.lr.ph93.i.i991

.preheader.i.i987:                                ; preds = %.lr.ph93.i.i991.prol.loopexit, %.lr.ph93.i.i991, %middle.block2975, %.preheader67.i.i986
  %.6.lcssa.i.i988 = phi i64 [ %.5.i.i984, %.preheader67.i.i986 ], [ %.0554, %middle.block2975 ], [ %.0554, %.lr.ph93.i.i991 ], [ %.0554, %.lr.ph93.i.i991.prol.loopexit ] ; 2 uses
  %.not2007 = icmp ugt i64 %.6.lcssa.i.i988, %i.g
  br i1 %.not2007, label %.critedge599, label %.critedge599.sink.split

.lr.ph93.i.i991:                                  ; preds = %.lr.ph93.i.i991.prol.loopexit, %.lr.ph93.i.i991
  %.692.i.i992 = phi i64 [ %i.akf, %.lr.ph93.i.i991 ], [ %.692.i.i992.unr, %.lr.ph93.i.i991.prol.loopexit ] ; 6 uses
  %i.ajq = getelementptr [4 x i8], ptr %.0553, i64 %.692.i.i992
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !7
  %i.ajs = getelementptr [4 x i8], ptr %i.ae, i64 %.692.i.i992
  store i32 %i.ajr, ptr %i.ajs, align 4, !tbaa !7
  %i.ajt = add nuw i64 %.692.i.i992, 1            ; 2 uses
  %i.aju = getelementptr [4 x i8], ptr %.0553, i64 %i.ajt
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !7
  %i.ajw = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajt
  store i32 %i.ajv, ptr %i.ajw, align 4, !tbaa !7
  %i.ajx = add nuw i64 %.692.i.i992, 2            ; 2 uses
  %i.ajy = getelementptr [4 x i8], ptr %.0553, i64 %i.ajx
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !7
  %i.aka = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajx
  store i32 %i.ajz, ptr %i.aka, align 4, !tbaa !7
  %i.akb = add nuw i64 %.692.i.i992, 3            ; 2 uses
  %i.akc = getelementptr [4 x i8], ptr %.0553, i64 %i.akb
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !7
  %i.ake = getelementptr [4 x i8], ptr %i.ae, i64 %i.akb
  store i32 %i.akd, ptr %i.ake, align 4, !tbaa !7
  %i.akf = add nuw i64 %.692.i.i992, 4            ; 2 uses
  %exitcond111.not.i.i993.3 = icmp eq i64 %i.akf, %.0554
  br i1 %exitcond111.not.i.i993.3, label %.preheader.i.i987, label %.lr.ph93.i.i991, !llvm.loop !104

.lr.ph.i1003:                                     ; preds = %.lr.ph.i1003.preheader, %bb.ao
  %.023.i1004 = phi i64 [ %i.aki, %bb.ao ], [ 0, %.lr.ph.i1003.preheader ] ; 9 uses
  %i.akg = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1004
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !7 ; 2 uses
  %.not.i1005 = icmp eq i32 %i.akh, 0
  br i1 %.not.i1005, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i1003
  %i.aki = add nuw nsw i64 %.023.i1004, 1
  %exitcond.not.i1012 = icmp eq i64 %.023.i1004, %i.g
  br i1 %exitcond.not.i1012, label %bary_2comp.exit1013.preheader, label %.lr.ph.i1003, !llvm.loop !55

bb.ap:                                            ; preds = %.lr.ph.i1003
  %i.akj = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1004
  %i.akk = sub i32 0, %i.akh
  store i32 %i.akk, ptr %i.akj, align 4, !tbaa !7
  %.not2006.not = icmp samesign ult i64 %.023.i1004, %i.g
  br i1 %.not2006.not, label %.lr.ph26.i1008.preheader, label %bary_2comp.exit1013.preheader

.lr.ph26.i1008.preheader:                         ; preds = %bb.ap
  %i.akl = sub nuw nsw i64 %i.g, %.023.i1004      ; 3 uses
  %min.iters.check2952 = icmp samesign ult i64 %i.akl, 8
  br i1 %min.iters.check2952, label %.lr.ph26.i1008.preheader3284, label %vector.ph2953

vector.ph2953:                                    ; preds = %.lr.ph26.i1008.preheader
  %n.vec2954 = and i64 %i.akl, 9223372036854775800 ; 3 uses
  %i.akm = add nuw i64 %.023.i1004, %n.vec2954
  %i.akn = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1004
  br label %vector.body2955

vector.body2955:                                  ; preds = %vector.body2955, %vector.ph2953
  %index2956 = phi i64 [ 0, %vector.ph2953 ], [ %index.next2959, %vector.body2955 ] ; 2 uses
  %i.ako = getelementptr [4 x i8], ptr %i.akn, i64 %index2956 ; 2 uses
  %i.akp = getelementptr i8, ptr %i.ako, i64 4    ; 2 uses
  %i.akq = getelementptr i8, ptr %i.ako, i64 20   ; 2 uses
  %wide.load2957 = load <4 x i32>, ptr %i.akp, align 4, !tbaa !7
  %wide.load2958 = load <4 x i32>, ptr %i.akq, align 4, !tbaa !7
  %i.akr = xor <4 x i32> %wide.load2957, splat (i32 -1)
  %i.aks = xor <4 x i32> %wide.load2958, splat (i32 -1)
  store <4 x i32> %i.akr, ptr %i.akp, align 4, !tbaa !7
  store <4 x i32> %i.aks, ptr %i.akq, align 4, !tbaa !7
  %index.next2959 = add nuw i64 %index2956, 8     ; 2 uses
  %i.akt = icmp eq i64 %index.next2959, %n.vec2954
  br i1 %i.akt, label %middle.block2960, label %vector.body2955, !llvm.loop !105

middle.block2960:                                 ; preds = %vector.body2955
  %cmp.n2961 = icmp eq i64 %i.akl, %n.vec2954
  br i1 %cmp.n2961, label %bary_2comp.exit1013.preheader, label %.lr.ph26.i1008.preheader3284

.lr.ph26.i1008.preheader3284:                     ; preds = %.lr.ph26.i1008.preheader, %middle.block2960
  %.125.i1009.in.ph = phi i64 [ %.023.i1004, %.lr.ph26.i1008.preheader ], [ %i.akm, %middle.block2960 ]
  br label %.lr.ph26.i1008

.lr.ph26.i1008:                                   ; preds = %.lr.ph26.i1008.preheader3284, %.lr.ph26.i1008
  %.125.i1009.in = phi i64 [ %.125.i1009, %.lr.ph26.i1008 ], [ %.125.i1009.in.ph, %.lr.ph26.i1008.preheader3284 ]
  %.125.i1009 = add nuw i64 %.125.i1009.in, 1     ; 3 uses
  %i.aku = getelementptr [4 x i8], ptr %i.ae, i64 %.125.i1009 ; 2 uses
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !7
  %i.akw = xor i32 %i.akv, -1
  store i32 %i.akw, ptr %i.aku, align 4, !tbaa !7
  %exitcond31.not.i1011 = icmp eq i64 %.125.i1009, %i.g
  br i1 %exitcond31.not.i1011, label %bary_2comp.exit1013.preheader, label %.lr.ph26.i1008, !llvm.loop !106

bary_2comp.exit1013.preheader:                    ; preds = %bb.ao, %.lr.ph26.i1008, %middle.block2960, %bb.ap
  %xtraiter3432 = and i64 %i.h, 3                 ; 3 uses
  %i.akx = icmp ult i64 %i.f, 9
  br i1 %i.akx, label %bary_2comp.exit1013.epil.preheader, label %bary_2comp.exit1013.preheader.new

bary_2comp.exit1013.preheader.new:                ; preds = %bary_2comp.exit1013.preheader
  %unroll_iter3436 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit1013

bary_2comp.exit1013:                              ; preds = %bary_2comp.exit1013, %bary_2comp.exit1013.preheader.new
  %.015.i1016 = phi i32 [ 0, %bary_2comp.exit1013.preheader.new ], [ %i.all, %bary_2comp.exit1013 ]
  %.01013.i1018 = phi ptr [ %i.ae, %bary_2comp.exit1013.preheader.new ], [ %i.ali, %bary_2comp.exit1013 ] ; 6 uses
  %niter3437 = phi i64 [ 0, %bary_2comp.exit1013.preheader.new ], [ %niter3437.next.3, %bary_2comp.exit1013 ]
  %i.aky = getelementptr i8, ptr %.01013.i1018, i64 4 ; 2 uses
  %i.akz = load i32, ptr %.01013.i1018, align 4, !tbaa !7 ; 2 uses
  %i.ala = shl i32 %i.akz, 1
  %i.alb = or disjoint i32 %i.ala, %.015.i1016
  store i32 %i.alb, ptr %.01013.i1018, align 4, !tbaa !7
  %i.alc = getelementptr i8, ptr %.01013.i1018, i64 8 ; 2 uses
  %i.ald = load i32, ptr %i.aky, align 4, !tbaa !7 ; 2 uses
  %i.ale = call i32 @llvm.fshl.i32(i32 %i.ald, i32 %i.akz, i32 1)
  store i32 %i.ale, ptr %i.aky, align 4, !tbaa !7
  %i.alf = getelementptr i8, ptr %.01013.i1018, i64 12 ; 2 uses
  %i.alg = load i32, ptr %i.alc, align 4, !tbaa !7 ; 2 uses
  %i.alh = call i32 @llvm.fshl.i32(i32 %i.alg, i32 %i.ald, i32 1)
  store i32 %i.alh, ptr %i.alc, align 4, !tbaa !7
  %i.ali = getelementptr i8, ptr %.01013.i1018, i64 16 ; 2 uses
  %i.alj = load i32, ptr %i.alf, align 4, !tbaa !7 ; 2 uses
  %i.alk = call i32 @llvm.fshl.i32(i32 %i.alj, i32 %i.alg, i32 1)
  store i32 %i.alk, ptr %i.alf, align 4, !tbaa !7
  %i.all = lshr i32 %i.alj, 31                    ; 2 uses
  %niter3437.next.3 = add i64 %niter3437, 4       ; 2 uses
  %niter3437.ncmp.3 = icmp eq i64 %niter3437.next.3, %unroll_iter3436
  br i1 %niter3437.ncmp.3, label %bary_small_lshift.exit1021.unr-lcssa, label %bary_2comp.exit1013, !llvm.loop !88

bary_small_lshift.exit1021.unr-lcssa:             ; preds = %bary_2comp.exit1013
  %lcmp.mod3434.not = icmp eq i64 %xtraiter3432, 0
  br i1 %lcmp.mod3434.not, label %bary_small_lshift.exit1021, label %bary_2comp.exit1013.epil.preheader

bary_2comp.exit1013.epil.preheader:               ; preds = %bary_small_lshift.exit1021.unr-lcssa, %bary_2comp.exit1013.preheader
  %.015.i1016.epil.init = phi i32 [ 0, %bary_2comp.exit1013.preheader ], [ %i.all, %bary_small_lshift.exit1021.unr-lcssa ]
  %.01013.i1018.epil.init = phi ptr [ %i.ae, %bary_2comp.exit1013.preheader ], [ %i.ali, %bary_small_lshift.exit1021.unr-lcssa ]
  %lcmp.mod3435 = icmp ne i64 %xtraiter3432, 0
  call void @llvm.assume(i1 %lcmp.mod3435)
  br label %bary_2comp.exit1013.epil

bary_2comp.exit1013.epil:                         ; preds = %bary_2comp.exit1013.epil, %bary_2comp.exit1013.epil.preheader
  %.015.i1016.epil = phi i32 [ %i.alq, %bary_2comp.exit1013.epil ], [ %.015.i1016.epil.init, %bary_2comp.exit1013.epil.preheader ]
  %.01013.i1018.epil = phi ptr [ %i.alm, %bary_2comp.exit1013.epil ], [ %.01013.i1018.epil.init, %bary_2comp.exit1013.epil.preheader ] ; 3 uses
  %epil.iter3433 = phi i64 [ %epil.iter3433.next, %bary_2comp.exit1013.epil ], [ 0, %bary_2comp.exit1013.epil.preheader ]
  %i.alm = getelementptr i8, ptr %.01013.i1018.epil, i64 4
  %i.aln = load i32, ptr %.01013.i1018.epil, align 4, !tbaa !7 ; 2 uses
  %i.alo = shl i32 %i.aln, 1
  %i.alp = or disjoint i32 %i.alo, %.015.i1016.epil
  store i32 %i.alp, ptr %.01013.i1018.epil, align 4, !tbaa !7
  %i.alq = lshr i32 %i.aln, 31
  %epil.iter3433.next = add i64 %epil.iter3433, 1 ; 2 uses
  %epil.iter3433.cmp.not = icmp eq i64 %epil.iter3433.next, %xtraiter3432
  br i1 %epil.iter3433.cmp.not, label %bary_small_lshift.exit1021, label %bary_2comp.exit1013.epil, !llvm.loop !107

bary_small_lshift.exit1021:                       ; preds = %bary_2comp.exit1013.epil, %bary_small_lshift.exit1021.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit1056, label %.lr.ph.i.i1027.preheader

.lr.ph.i.i1027.preheader:                         ; preds = %bary_small_lshift.exit1021
  %xtraiter3438 = and i64 %i.g, 1
  %.off3607 = add i64 %5, -1
  %i.alr = icmp ult i64 %.off3607, 3
  br i1 %i.alr, label %.lr.ph.i.i1027, label %.lr.ph.i.i1027.preheader.new

.lr.ph.i.i1027.preheader.new:                     ; preds = %.lr.ph.i.i1027.preheader
  %unroll_iter3443 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i1027.epil.preheader.a

.lr.ph.i.i1027.epil.preheader.a:                  ; preds = %.lr.ph.i.i1027.epil.preheader.a, %.lr.ph.i.i1027.preheader.new
  %.05779.i.i1028 = phi i64 [ 0, %.lr.ph.i.i1027.preheader.new ], [ %58, %.lr.ph.i.i1027.epil.preheader.a ] ; 4 uses
  %.05779.i.i1028.epil.init.a = phi i64 [ 0, %.lr.ph.i.i1027.preheader.new ], [ %i.amb, %.lr.ph.i.i1027.epil.preheader.a ]
  %.05878.i.i1029.epil.init.a = phi i64 [ 0, %.lr.ph.i.i1027.preheader.new ], [ %niter3426.next.1, %.lr.ph.i.i1027.epil.preheader.a ]
  %47 = getelementptr [4 x i8], ptr %.0557, i64 %.05779.i.i1028
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = zext i32 %48 to i64
  %50 = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i1028 ; 2 uses
  %51 = load i32, ptr %50, align 4, !tbaa !7
  %52 = zext i32 %51 to i64
  %53 = add nuw nsw i64 %.05779.i.i1028.epil.init.a, %49
  %54 = add nuw nsw i64 %53, %52                  ; 2 uses
  %55 = trunc i64 %54 to i32
  store i32 %55, ptr %50, align 4, !tbaa !7
  %56 = lshr i64 %54, 32
  %57 = or disjoint i64 %.05779.i.i1028, 1        ; 2 uses
  %i.als = getelementptr [4 x i8], ptr %.0557, i64 %57
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !7
  %i.alu = zext i32 %i.alt to i64
  %i.alv = getelementptr [4 x i8], ptr %i.ae, i64 %57 ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !7
  %i.alx = zext i32 %i.alw to i64
  %i.aly = add nuw nsw i64 %56, %i.alu
  %i.alz = add nuw nsw i64 %i.aly, %i.alx         ; 2 uses
  %i.ama = trunc i64 %i.alz to i32
  store i32 %i.ama, ptr %i.alv, align 4, !tbaa !7
  %i.amb = lshr i64 %i.alz, 32                    ; 3 uses
  %58 = add nuw nsw i64 %.05779.i.i1028, 2        ; 2 uses
  %niter3426.next.1 = add i64 %.05878.i.i1029.epil.init.a, 2 ; 2 uses
  %niter3426.ncmp.1 = icmp eq i64 %niter3426.next.1, %unroll_iter3443
  br i1 %niter3426.ncmp.1, label %.preheader72.i.i1031, label %.lr.ph.i.i1027.epil.preheader.a, !llvm.loop !34

.preheader72.i.i1031:                             ; preds = %.lr.ph.i.i1027.epil.preheader.a
  %i.amc = icmp eq i64 %xtraiter3438, 0
  br i1 %i.amc, label %.lr.ph83.i.i1052, label %.lr.ph.i.i1027

.lr.ph.i.i1027:                                   ; preds = %.preheader72.i.i1031, %.lr.ph.i.i1027.preheader
  %.05878.i.i1029 = phi i64 [ 0, %.lr.ph.i.i1027.preheader ], [ %58, %.preheader72.i.i1031 ] ; 2 uses
  %niter3444 = phi i64 [ 0, %.lr.ph.i.i1027.preheader ], [ %i.amb, %.preheader72.i.i1031 ]
  %lcmp.mod3424 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3424)
  %i.amd = getelementptr [4 x i8], ptr %.0557, i64 %.05878.i.i1029
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !7
  %i.amf = zext i32 %i.ame to i64
  %i.amg = getelementptr [4 x i8], ptr %i.ae, i64 %.05878.i.i1029 ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !7
  %i.ami = zext i32 %i.amh to i64
  %i.amj = add nuw nsw i64 %niter3444, %i.amf
  %i.amk = add nuw nsw i64 %i.amj, %i.ami         ; 2 uses
  %i.aml = trunc i64 %i.amk to i32
  store i32 %i.aml, ptr %i.amg, align 4, !tbaa !7
  %i.amm = lshr i64 %i.amk, 32
  br label %.lr.ph83.i.i1052

.lr.ph83.i.i1052:                                 ; preds = %.preheader72.i.i1031, %.lr.ph.i.i1027
  %.lcssa3265 = phi i64 [ %i.amb, %.preheader72.i.i1031 ], [ %i.amm, %.lr.ph.i.i1027 ]
  %59 = icmp eq i64 %.lcssa3265, 0
  br i1 %59, label %bary_add.exit1056, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph83.i.i1052
  %i.amn = getelementptr [4 x i8], ptr %i.ae, i64 %i.g ; 2 uses
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !7
  %i.amp = add i32 %i.amo, 1
  store i32 %i.amp, ptr %i.amn, align 4, !tbaa !7
  br label %bary_add.exit1056, !llvm.loop !36

.critedge599.sink.split:                          ; preds = %.preheader.i.i987, %.preheader.i.i955
  %.6.lcssa.i.i988.sink2733 = phi i64 [ %.3.i.i952, %.preheader.i.i955 ], [ %.6.lcssa.i.i988, %.preheader.i.i987 ] ; 2 uses
  %.0543249024942496.ph = phi i32 [ %.0543249024942498, %.preheader.i.i955 ], [ %.0543249024942497, %.preheader.i.i987 ]
  %i.amq = shl i64 %.6.lcssa.i.i988.sink2733, 2
  %scevgep112.i.i990 = getelementptr i8, ptr %i.ae, i64 %i.amq
  %i.amr = sub nuw nsw i64 %i.h, %.6.lcssa.i.i988.sink2733
  %i.ams = shl i64 %i.amr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep112.i.i990, i8 0, i64 %i.ams, i1 false), !tbaa !7
  br label %.critedge599

.critedge599:                                     ; preds = %bb.al, %.lr.ph91.i.i959.prol.loopexit, %.lr.ph91.i.i959, %middle.block2990, %.critedge599.sink.split, %.preheader70.i.i943, %bb.ak, %.loopexit74.i.i983, %.preheader.i.i987, %.preheader.i.i955, %.loopexit71.i.i951
  %.0543249024942496 = phi i32 [ %.0543249024942498, %.preheader70.i.i943 ], [ %.0543249024942498, %bb.ak ], [ %.0543249024942496.ph, %.critedge599.sink.split ], [ %.0543249024942497, %.loopexit74.i.i983 ], [ %.0543249024942497, %.preheader.i.i987 ], [ %.0543249024942498, %middle.block2990 ], [ %.0543249024942498, %.preheader.i.i955 ], [ %.0543249024942498, %.loopexit71.i.i951 ], [ %.0543249024942498, %.lr.ph91.i.i959.prol.loopexit ], [ %.0543249024942498, %.lr.ph91.i.i959 ], [ %.0543249024942498, %bb.al ] ; 7 uses
  %xtraiter3459 = and i64 %i.h, 3                 ; 3 uses
  %i.amt = icmp ult i64 %i.f, 9
  br i1 %i.amt, label %.epil.preheader3458, label %.critedge599.new

.critedge599.new:                                 ; preds = %.critedge599
  %unroll_iter3463 = and i64 %i.h, 9223372036854775804
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.critedge599.new
  %.015.i1059 = phi i32 [ 0, %.critedge599.new ], [ %i.anh, %bb.ar ]
  %.01013.i1061 = phi ptr [ %i.ae, %.critedge599.new ], [ %i.ane, %bb.ar ] ; 6 uses
  %niter3464 = phi i64 [ 0, %.critedge599.new ], [ %niter3464.next.3, %bb.ar ]
  %i.amu = getelementptr i8, ptr %.01013.i1061, i64 4 ; 2 uses
  %i.amv = load i32, ptr %.01013.i1061, align 4, !tbaa !7 ; 2 uses
  %i.amw = shl i32 %i.amv, 1
  %i.amx = or disjoint i32 %i.amw, %.015.i1059
  store i32 %i.amx, ptr %.01013.i1061, align 4, !tbaa !7
  %i.amy = getelementptr i8, ptr %.01013.i1061, i64 8 ; 2 uses
  %i.amz = load i32, ptr %i.amu, align 4, !tbaa !7 ; 2 uses
  %i.ana = call i32 @llvm.fshl.i32(i32 %i.amz, i32 %i.amv, i32 1)
  store i32 %i.ana, ptr %i.amu, align 4, !tbaa !7
  %i.anb = getelementptr i8, ptr %.01013.i1061, i64 12 ; 2 uses
  %i.anc = load i32, ptr %i.amy, align 4, !tbaa !7 ; 2 uses
  %i.and = call i32 @llvm.fshl.i32(i32 %i.anc, i32 %i.amz, i32 1)
  store i32 %i.and, ptr %i.amy, align 4, !tbaa !7
  %i.ane = getelementptr i8, ptr %.01013.i1061, i64 16 ; 2 uses
  %i.anf = load i32, ptr %i.anb, align 4, !tbaa !7 ; 2 uses
  %i.ang = call i32 @llvm.fshl.i32(i32 %i.anf, i32 %i.anc, i32 1)
  store i32 %i.ang, ptr %i.anb, align 4, !tbaa !7
  %i.anh = lshr i32 %i.anf, 31                    ; 2 uses
  %niter3464.next.3 = add i64 %niter3464, 4       ; 2 uses
  %niter3464.ncmp.3 = icmp eq i64 %niter3464.next.3, %unroll_iter3463
  br i1 %niter3464.ncmp.3, label %bary_small_lshift.exit1064.unr-lcssa, label %bb.ar, !llvm.loop !88

bary_small_lshift.exit1064.unr-lcssa:             ; preds = %bb.ar
  %lcmp.mod3461.not = icmp eq i64 %xtraiter3459, 0
  br i1 %lcmp.mod3461.not, label %bary_small_lshift.exit1064, label %.epil.preheader3458

.epil.preheader3458:                              ; preds = %bary_small_lshift.exit1064.unr-lcssa, %.critedge599
  %.015.i1059.epil.init = phi i32 [ 0, %.critedge599 ], [ %i.anh, %bary_small_lshift.exit1064.unr-lcssa ]
  %.01013.i1061.epil.init = phi ptr [ %i.ae, %.critedge599 ], [ %i.ane, %bary_small_lshift.exit1064.unr-lcssa ]
  %lcmp.mod3462 = icmp ne i64 %xtraiter3459, 0
  call void @llvm.assume(i1 %lcmp.mod3462)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader3458
  %.015.i1059.epil = phi i32 [ %.015.i1059.epil.init, %.epil.preheader3458 ], [ %i.anm, %bb.as ]
  %.01013.i1061.epil = phi ptr [ %.01013.i1061.epil.init, %.epil.preheader3458 ], [ %i.ani, %bb.as ] ; 3 uses
  %epil.iter3460 = phi i64 [ 0, %.epil.preheader3458 ], [ %epil.iter3460.next, %bb.as ]
  %i.ani = getelementptr i8, ptr %.01013.i1061.epil, i64 4
  %i.anj = load i32, ptr %.01013.i1061.epil, align 4, !tbaa !7 ; 2 uses
  %i.ank = shl i32 %i.anj, 1
  %i.anl = or disjoint i32 %i.ank, %.015.i1059.epil
  store i32 %i.anl, ptr %.01013.i1061.epil, align 4, !tbaa !7
  %i.anm = lshr i32 %i.anj, 31
  %epil.iter3460.next = add i64 %epil.iter3460, 1 ; 2 uses
  %epil.iter3460.cmp.not = icmp eq i64 %epil.iter3460.next, %xtraiter3459
  br i1 %epil.iter3460.cmp.not, label %bary_small_lshift.exit1064, label %bb.as, !llvm.loop !108

bary_small_lshift.exit1064:                       ; preds = %bb.as, %bary_small_lshift.exit1064.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit1056, label %.lr.ph.i.i1066.preheader

.lr.ph.i.i1066.preheader:                         ; preds = %bary_small_lshift.exit1064
  %xtraiter3465 = and i64 %i.g, 1
  %.off3608 = add i64 %5, -1
  %i.ann = icmp ult i64 %.off3608, 3
  br i1 %i.ann, label %.lr.ph.i.i1066.epil.preheader, label %.lr.ph.i.i1066.preheader.new

.lr.ph.i.i1066.preheader.new:                     ; preds = %.lr.ph.i.i1066.preheader
  %unroll_iter3470 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i1066

.lr.ph.i.i1066:                                   ; preds = %.lr.ph.i.i1066, %.lr.ph.i.i1066.preheader.new
  %.078.i.i1067 = phi i64 [ 0, %.lr.ph.i.i1066.preheader.new ], [ %i.aoj, %.lr.ph.i.i1066 ] ; 4 uses
  %.06277.i.i1068 = phi i64 [ 0, %.lr.ph.i.i1066.preheader.new ], [ %i.aoi, %.lr.ph.i.i1066 ]
  %niter3471 = phi i64 [ 0, %.lr.ph.i.i1066.preheader.new ], [ %niter3471.next.1, %.lr.ph.i.i1066 ]
  %i.ano = getelementptr [4 x i8], ptr %i.ae, i64 %.078.i.i1067 ; 2 uses
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !7
  %i.anq = zext i32 %i.anp to i64
  %i.anr = getelementptr [4 x i8], ptr %.0557, i64 %.078.i.i1067
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !7
  %i.ant = zext i32 %i.ans to i64
  %i.anu = sub nsw i64 %i.anq, %i.ant
  %i.anv = add nsw i64 %i.anu, %.06277.i.i1068    ; 2 uses
  %i.anw = trunc i64 %i.anv to i32
  store i32 %i.anw, ptr %i.ano, align 4, !tbaa !7
  %i.anx = ashr i64 %i.anv, 32
  %i.any = or disjoint i64 %.078.i.i1067, 1       ; 2 uses
  %i.anz = getelementptr [4 x i8], ptr %i.ae, i64 %i.any ; 2 uses
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !7
  %i.aob = zext i32 %i.aoa to i64
  %i.aoc = getelementptr [4 x i8], ptr %.0557, i64 %i.any
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !7
  %i.aoe = zext i32 %i.aod to i64
  %i.aof = sub nsw i64 %i.aob, %i.aoe
  %i.aog = add nsw i64 %i.aof, %i.anx             ; 2 uses
  %i.aoh = trunc i64 %i.aog to i32
  store i32 %i.aoh, ptr %i.anz, align 4, !tbaa !7
  %i.aoi = ashr i64 %i.aog, 32                    ; 3 uses
  %i.aoj = add nuw nsw i64 %.078.i.i1067, 2       ; 2 uses
  %niter3471.next.1 = add i64 %niter3471, 2       ; 2 uses
  %niter3471.ncmp.1 = icmp eq i64 %niter3471.next.1, %unroll_iter3470
  br i1 %niter3471.ncmp.1, label %._crit_edge.i.i1070.unr-lcssa, label %.lr.ph.i.i1066, !llvm.loop !48

._crit_edge.i.i1070.unr-lcssa:                    ; preds = %.lr.ph.i.i1066
  %lcmp.mod3467.not = icmp eq i64 %xtraiter3465, 0
  br i1 %lcmp.mod3467.not, label %._crit_edge.i.i1070, label %.lr.ph.i.i1066.epil.preheader

.lr.ph.i.i1066.epil.preheader:                    ; preds = %._crit_edge.i.i1070.unr-lcssa, %.lr.ph.i.i1066.preheader
  %.078.i.i1067.epil.init = phi i64 [ 0, %.lr.ph.i.i1066.preheader ], [ %i.aoj, %._crit_edge.i.i1070.unr-lcssa ] ; 2 uses
  %.06277.i.i1068.epil.init = phi i64 [ 0, %.lr.ph.i.i1066.preheader ], [ %i.aoi, %._crit_edge.i.i1070.unr-lcssa ]
  %lcmp.mod3469 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3469)
  %i.aok = getelementptr [4 x i8], ptr %i.ae, i64 %.078.i.i1067.epil.init ; 2 uses
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !7
  %i.aom = zext i32 %i.aol to i64
  %i.aon = getelementptr [4 x i8], ptr %.0557, i64 %.078.i.i1067.epil.init
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !7
  %i.aop = zext i32 %i.aoo to i64
  %i.aoq = sub nsw i64 %i.aom, %i.aop
  %i.aor = add nsw i64 %i.aoq, %.06277.i.i1068.epil.init ; 2 uses
  %i.aos = trunc i64 %i.aor to i32
  store i32 %i.aos, ptr %i.aok, align 4, !tbaa !7
  %i.aot = ashr i64 %i.aor, 32
  br label %._crit_edge.i.i1070

._crit_edge.i.i1070:                              ; preds = %._crit_edge.i.i1070.unr-lcssa, %.lr.ph.i.i1066.epil.preheader
  %.lcssa3277 = phi i64 [ %i.aoi, %._crit_edge.i.i1070.unr-lcssa ], [ %i.aot, %.lr.ph.i.i1066.epil.preheader ]
  %i.aou = icmp eq i64 %.lcssa3277, 0
  br i1 %i.aou, label %bary_add.exit1056, label %.loopexit71.i.i1074

.loopexit71.i.i1074:                              ; preds = %._crit_edge.i.i1070
  %i.aov = getelementptr [4 x i8], ptr %i.ae, i64 %i.g ; 2 uses
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !7
  %i.aox = zext i32 %i.aow to i64
  %i.aoy = add nsw i64 %i.aox, -1                 ; 2 uses
  %i.aoz = trunc i64 %i.aoy to i32
  store i32 %i.aoz, ptr %i.aov, align 4, !tbaa !7
  %i.apa = icmp ult i64 %i.aoy, 4294967296
  br i1 %i.apa, label %bary_add.exit1056, label %.lr.ph.i1101

.lr.ph.i1101:                                     ; preds = %.loopexit71.i.i1074, %bb.at
  %.023.i1102 = phi i64 [ %i.apd, %bb.at ], [ 0, %.loopexit71.i.i1074 ] ; 9 uses
  %i.apb = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1102
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !7 ; 2 uses
  %.not.i1103 = icmp eq i32 %i.apc, 0
  br i1 %.not.i1103, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i1101
  %i.apd = add nuw nsw i64 %.023.i1102, 1
  %exitcond.not.i1110 = icmp eq i64 %.023.i1102, %i.g
  br i1 %exitcond.not.i1110, label %bary_add.exit1056, label %.lr.ph.i1101, !llvm.loop !55

bb.au:                                            ; preds = %.lr.ph.i1101
  %i.ape = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1102
  %i.apf = sub i32 0, %i.apc
  store i32 %i.apf, ptr %i.ape, align 4, !tbaa !7
  %.not2011.not = icmp samesign ult i64 %.023.i1102, %i.g
  br i1 %.not2011.not, label %.lr.ph26.i1106.preheader, label %bary_add.exit1056

.lr.ph26.i1106.preheader:                         ; preds = %bb.au
  %i.apg = sub nuw nsw i64 %i.g, %.023.i1102      ; 3 uses
  %min.iters.check2994 = icmp samesign ult i64 %i.apg, 8
  br i1 %min.iters.check2994, label %.lr.ph26.i1106.preheader3272, label %vector.ph2995

vector.ph2995:                                    ; preds = %.lr.ph26.i1106.preheader
  %n.vec2996 = and i64 %i.apg, 9223372036854775800 ; 3 uses
  %i.aph = add nuw i64 %.023.i1102, %n.vec2996
  %i.api = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1102
  br label %vector.body2997

vector.body2997:                                  ; preds = %vector.body2997, %vector.ph2995
  %index2998 = phi i64 [ 0, %vector.ph2995 ], [ %index.next3001, %vector.body2997 ] ; 2 uses
  %i.apj = getelementptr [4 x i8], ptr %i.api, i64 %index2998 ; 2 uses
  %i.apk = getelementptr i8, ptr %i.apj, i64 4    ; 2 uses
  %i.apl = getelementptr i8, ptr %i.apj, i64 20   ; 2 uses
  %wide.load2999 = load <4 x i32>, ptr %i.apk, align 4, !tbaa !7
  %wide.load3000 = load <4 x i32>, ptr %i.apl, align 4, !tbaa !7
  %i.apm = xor <4 x i32> %wide.load2999, splat (i32 -1)
  %i.apn = xor <4 x i32> %wide.load3000, splat (i32 -1)
  store <4 x i32> %i.apm, ptr %i.apk, align 4, !tbaa !7
  store <4 x i32> %i.apn, ptr %i.apl, align 4, !tbaa !7
  %index.next3001 = add nuw i64 %index2998, 8     ; 2 uses
  %i.apo = icmp eq i64 %index.next3001, %n.vec2996
  br i1 %i.apo, label %middle.block3002, label %vector.body2997, !llvm.loop !109

middle.block3002:                                 ; preds = %vector.body2997
  %cmp.n3003 = icmp eq i64 %i.apg, %n.vec2996
  br i1 %cmp.n3003, label %bary_add.exit1056, label %.lr.ph26.i1106.preheader3272

.lr.ph26.i1106.preheader3272:                     ; preds = %.lr.ph26.i1106.preheader, %middle.block3002
  %.125.i1107.in.ph = phi i64 [ %.023.i1102, %.lr.ph26.i1106.preheader ], [ %i.aph, %middle.block3002 ]
  br label %.lr.ph26.i1106

.lr.ph26.i1106:                                   ; preds = %.lr.ph26.i1106.preheader3272, %.lr.ph26.i1106
  %.125.i1107.in = phi i64 [ %.125.i1107, %.lr.ph26.i1106 ], [ %.125.i1107.in.ph, %.lr.ph26.i1106.preheader3272 ]
  %.125.i1107 = add nuw i64 %.125.i1107.in, 1     ; 3 uses
  %i.app = getelementptr [4 x i8], ptr %i.ae, i64 %.125.i1107 ; 2 uses
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !7
  %i.apr = xor i32 %i.apq, -1
  store i32 %i.apr, ptr %i.app, align 4, !tbaa !7
  %exitcond31.not.i1109 = icmp eq i64 %.125.i1107, %i.g
  br i1 %exitcond31.not.i1109, label %bary_add.exit1056, label %.lr.ph26.i1106, !llvm.loop !110

bary_add.exit1056:                                ; preds = %bb.at, %.lr.ph26.i1106, %middle.block3002, %bary_small_lshift.exit1064, %bary_small_lshift.exit1021, %.lr.ph83.i.i1052, %bb.aq, %._crit_edge.i.i1070, %.loopexit71.i.i1074, %bb.au, %bary_add.exit759
  %.0548 = phi ptr [ %.0560, %bary_add.exit759 ], [ %i.ac, %.lr.ph83.i.i1052 ], [ %i.ac, %._crit_edge.i.i1070 ], [ %i.ac, %bary_small_lshift.exit1021 ], [ %i.ac, %bb.au ], [ %i.ac, %.loopexit71.i.i1074 ], [ %i.ac, %bb.aq ], [ %i.ac, %bary_small_lshift.exit1064 ], [ %i.ac, %middle.block3002 ], [ %i.ac, %.lr.ph26.i1106 ], [ %i.ac, %bb.at ]
  %.0545 = phi ptr [ %i.aa, %bary_add.exit759 ], [ %i.ad, %.lr.ph83.i.i1052 ], [ %i.ad, %._crit_edge.i.i1070 ], [ %i.ad, %bary_small_lshift.exit1021 ], [ %i.ad, %bb.au ], [ %i.ad, %.loopexit71.i.i1074 ], [ %i.ad, %bb.aq ], [ %i.ad, %bary_small_lshift.exit1064 ], [ %i.ad, %middle.block3002 ], [ %i.ad, %.lr.ph26.i1106 ], [ %i.ad, %bb.at ]
  %.1544 = phi i32 [ %.0552245324572459, %bary_add.exit759 ], [ %.0543249024942497, %.lr.ph83.i.i1052 ], [ %.0543249024942496, %._crit_edge.i.i1070 ], [ %.0543249024942497, %bary_small_lshift.exit1021 ], [ %.0543249024942496, %bb.au ], [ %.0543249024942496, %.loopexit71.i.i1074 ], [ %.0543249024942497, %bb.aq ], [ %.0543249024942496, %bary_small_lshift.exit1064 ], [ %.0543249024942496, %middle.block3002 ], [ %.0543249024942496, %.lr.ph26.i1106 ], [ %.0543249024942496, %bb.at ]
  %.0541 = phi ptr [ %i.ab, %bary_add.exit759 ], [ %i.ae, %.lr.ph83.i.i1052 ], [ %i.ae, %._crit_edge.i.i1070 ], [ %i.ae, %bary_small_lshift.exit1021 ], [ %i.ae, %bb.au ], [ %i.ae, %.loopexit71.i.i1074 ], [ %i.ae, %bb.aq ], [ %i.ae, %bary_small_lshift.exit1064 ], [ %i.ae, %middle.block3002 ], [ %i.ae, %.lr.ph26.i1106 ], [ %i.ae, %bb.at ]
  %.1540 = phi i32 [ %.1551, %bary_add.exit759 ], [ 0, %.lr.ph83.i.i1052 ], [ 1, %._crit_edge.i.i1070 ], [ 0, %bary_small_lshift.exit1021 ], [ 0, %bb.au ], [ 1, %.loopexit71.i.i1074 ], [ 0, %bb.aq ], [ 1, %bary_small_lshift.exit1064 ], [ 0, %middle.block3002 ], [ 0, %.lr.ph26.i1106 ], [ 0, %bb.at ]
  call void @bary_mul_toom3_start(ptr noundef %i.af, i64 noundef %i.j, ptr noundef %2, i64 noundef %i.g, ptr noundef %.0557, i64 noundef %i.g, ptr noundef %i.an, i64 noundef %i.ao)
  call void @bary_mul_toom3_start(ptr noundef %i.ag, i64 noundef %i.k, ptr noundef %.0560, i64 noundef %i.h, ptr noundef %.0548, i64 noundef %i.h, ptr noundef %i.an, i64 noundef %i.ao)
  call void @bary_mul_toom3_start(ptr noundef %i.ah, i64 noundef %i.k, ptr noundef %i.aa, i64 noundef %i.h, ptr noundef %.0545, i64 noundef %i.h, ptr noundef %i.an, i64 noundef %i.ao)
  %i.aps = icmp eq i32 %.0552245324572459, %.1544 ; 2 uses
  call void @bary_mul_toom3_start(ptr noundef %i.ai, i64 noundef %i.k, ptr noundef %i.ab, i64 noundef %i.h, ptr noundef %.0541, i64 noundef %i.h, ptr noundef %i.an, i64 noundef %i.ao)
  %i.apt = icmp eq i32 %.1551, %.1540
  call void @bary_mul_toom3_start(ptr noundef %i.aj, i64 noundef %i.j, ptr noundef %i.at, i64 noundef %i.ar, ptr noundef %.0553, i64 noundef %.0554, ptr noundef %i.an, i64 noundef %i.ao)
  br i1 %i.apt, label %.lr.ph.i.i1113.preheader, label %.lr.ph.i.i1164.preheader

.lr.ph.i.i1164.preheader:                         ; preds = %bary_add.exit1056
  %i.apu = icmp ult i64 %i.f, 3
  br i1 %i.apu, label %.lr.ph.i.i1164.epil, label %.lr.ph.i.i1164

.lr.ph.i.i1113.preheader:                         ; preds = %bary_add.exit1056
  %i.apv = icmp ult i64 %i.f, 3
  br i1 %i.apv, label %.lr.ph.i.i1113.epil, label %.lr.ph.i.i1113

.lr.ph.i.i1113:                                   ; preds = %.lr.ph.i.i1113.preheader, %.lr.ph.i.i1113
  %.078.i.i1114 = phi i64 [ %i.aqt, %.lr.ph.i.i1113 ], [ 0, %.lr.ph.i.i1113.preheader ] ; 5 uses
  %.06277.i.i1115 = phi i64 [ %i.aqs, %.lr.ph.i.i1113 ], [ 0, %.lr.ph.i.i1113.preheader ]
  %niter3484 = phi i64 [ %niter3484.next.1, %.lr.ph.i.i1113 ], [ 0, %.lr.ph.i.i1113.preheader ]
  %i.apw = getelementptr [4 x i8], ptr %i.ai, i64 %.078.i.i1114
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !7
  %i.apy = zext i32 %i.apx to i64
  %i.apz = getelementptr [4 x i8], ptr %i.ag, i64 %.078.i.i1114
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !7
  %i.aqb = zext i32 %i.aqa to i64
  %i.aqc = sub nsw i64 %i.apy, %i.aqb
  %i.aqd = add nsw i64 %i.aqc, %.06277.i.i1115    ; 2 uses
  %i.aqe = trunc i64 %i.aqd to i32
  %i.aqf = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1114
  store i32 %i.aqe, ptr %i.aqf, align 4, !tbaa !7
  %i.aqg = ashr i64 %i.aqd, 32
  %i.aqh = or disjoint i64 %.078.i.i1114, 1       ; 3 uses
  %i.aqi = getelementptr [4 x i8], ptr %i.ai, i64 %i.aqh
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !7
  %i.aqk = zext i32 %i.aqj to i64
  %i.aql = getelementptr [4 x i8], ptr %i.ag, i64 %i.aqh
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !7
  %i.aqn = zext i32 %i.aqm to i64
  %i.aqo = sub nsw i64 %i.aqk, %i.aqn
  %i.aqp = add nsw i64 %i.aqo, %i.aqg             ; 2 uses
  %i.aqq = trunc i64 %i.aqp to i32
  %i.aqr = getelementptr [4 x i8], ptr %i.am, i64 %i.aqh
  store i32 %i.aqq, ptr %i.aqr, align 4, !tbaa !7
  %i.aqs = ashr i64 %i.aqp, 32                    ; 2 uses
  %i.aqt = add nuw i64 %.078.i.i1114, 2           ; 2 uses
  %niter3484.next.1 = add i64 %niter3484, 2       ; 2 uses
  %niter3484.ncmp.1 = icmp eq i64 %niter3484.next.1, %i.j
  br i1 %niter3484.ncmp.1, label %.lr.ph.i.i1113.epil, label %.lr.ph.i.i1113, !llvm.loop !48

.lr.ph.i.i1113.epil:                              ; preds = %.lr.ph.i.i1113.preheader, %.lr.ph.i.i1113
  %.078.i.i1114.epil.init = phi i64 [ 0, %.lr.ph.i.i1113.preheader ], [ %i.aqt, %.lr.ph.i.i1113 ] ; 3 uses
  %.06277.i.i1115.epil.init = phi i64 [ 0, %.lr.ph.i.i1113.preheader ], [ %i.aqs, %.lr.ph.i.i1113 ]
  %i.aqu = getelementptr [4 x i8], ptr %i.ai, i64 %.078.i.i1114.epil.init
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !7
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = getelementptr [4 x i8], ptr %i.ag, i64 %.078.i.i1114.epil.init
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !7
  %i.aqz = zext i32 %i.aqy to i64
  %i.ara = sub nsw i64 %i.aqw, %i.aqz
  %i.arb = add nsw i64 %i.ara, %.06277.i.i1115.epil.init ; 2 uses
  %i.arc = trunc i64 %i.arb to i32
  %i.ard = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1114.epil.init
  store i32 %i.arc, ptr %i.ard, align 4, !tbaa !7
  %i.are = icmp ult i64 %i.arb, 4294967296
  br i1 %i.are, label %bary_2comp.exit1158, label %.lr.ph.i1148

.lr.ph.i1148:                                     ; preds = %.lr.ph.i.i1113.epil, %bb.av
  %.023.i1149 = phi i64 [ %i.arh, %bb.av ], [ 0, %.lr.ph.i.i1113.epil ] ; 6 uses
  %i.arf = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1149
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !7 ; 2 uses
  %.not.i1150 = icmp eq i32 %i.arg, 0
  br i1 %.not.i1150, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i1148
  %i.arh = add nuw i64 %.023.i1149, 1
  %exitcond.not.i1157 = icmp eq i64 %.023.i1149, %i.j
  br i1 %exitcond.not.i1157, label %bary_2comp.exit1158, label %.lr.ph.i1148, !llvm.loop !55

bb.aw:                                            ; preds = %.lr.ph.i1148
  %i.ari = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1149
  %i.arj = sub i32 0, %i.arg
  store i32 %i.arj, ptr %i.ari, align 4, !tbaa !7
  %.124.i1151 = add i64 %.023.i1149, 1            ; 4 uses
  %.not2012 = icmp ugt i64 %.124.i1151, %i.j
  br i1 %.not2012, label %bary_2comp.exit1158, label %.lr.ph26.i1153.preheader

.lr.ph26.i1153.preheader:                         ; preds = %bb.aw
  %i.ark = sub i64 %i.j, %.023.i1149              ; 3 uses
  %min.iters.check3006 = icmp ult i64 %i.ark, 8
  br i1 %min.iters.check3006, label %.lr.ph26.i1153.preheader3265, label %vector.ph3007

vector.ph3007:                                    ; preds = %.lr.ph26.i1153.preheader
  %n.vec3008 = and i64 %i.ark, -8                 ; 3 uses
  %i.arl = add i64 %.124.i1151, %n.vec3008
  %i.arm = getelementptr [4 x i8], ptr %i.am, i64 %.124.i1151
  br label %vector.body3009

vector.body3009:                                  ; preds = %vector.body3009, %vector.ph3007
  %index3010 = phi i64 [ 0, %vector.ph3007 ], [ %index.next3013, %vector.body3009 ] ; 2 uses
  %i.arn = getelementptr [4 x i8], ptr %i.arm, i64 %index3010 ; 3 uses
  %i.aro = getelementptr i8, ptr %i.arn, i64 16   ; 2 uses
  %wide.load3011 = load <4 x i32>, ptr %i.arn, align 4, !tbaa !7
  %wide.load3012 = load <4 x i32>, ptr %i.aro, align 4, !tbaa !7
  %i.arp = xor <4 x i32> %wide.load3011, splat (i32 -1)
  %i.arq = xor <4 x i32> %wide.load3012, splat (i32 -1)
  store <4 x i32> %i.arp, ptr %i.arn, align 4, !tbaa !7
  store <4 x i32> %i.arq, ptr %i.aro, align 4, !tbaa !7
  %index.next3013 = add nuw i64 %index3010, 8     ; 2 uses
  %i.arr = icmp eq i64 %index.next3013, %n.vec3008
  br i1 %i.arr, label %middle.block3014, label %vector.body3009, !llvm.loop !111

middle.block3014:                                 ; preds = %vector.body3009
  %cmp.n3015 = icmp eq i64 %i.ark, %n.vec3008
  br i1 %cmp.n3015, label %bary_2comp.exit1158, label %.lr.ph26.i1153.preheader3265

.lr.ph26.i1153.preheader3265:                     ; preds = %.lr.ph26.i1153.preheader, %middle.block3014
  %.125.i1154.ph = phi i64 [ %.124.i1151, %.lr.ph26.i1153.preheader ], [ %i.arl, %middle.block3014 ]
  br label %.lr.ph26.i1153

.lr.ph26.i1153:                                   ; preds = %.lr.ph26.i1153.preheader3265, %.lr.ph26.i1153
  %.125.i1154 = phi i64 [ %.1.i1155, %.lr.ph26.i1153 ], [ %.125.i1154.ph, %.lr.ph26.i1153.preheader3265 ] ; 3 uses
  %i.ars = getelementptr [4 x i8], ptr %i.am, i64 %.125.i1154 ; 2 uses
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !7
  %i.aru = xor i32 %i.art, -1
  store i32 %i.aru, ptr %i.ars, align 4, !tbaa !7
  %.1.i1155 = add nuw i64 %.125.i1154, 1
  %exitcond31.not.i1156 = icmp eq i64 %.125.i1154, %i.j
  br i1 %exitcond31.not.i1156, label %bary_2comp.exit1158, label %.lr.ph26.i1153, !llvm.loop !112

.lr.ph.i.i1164:                                   ; preds = %.lr.ph.i.i1164.preheader, %.lr.ph.i.i1164
  %.05779.i.i1165 = phi i64 [ %i.ass, %.lr.ph.i.i1164 ], [ 0, %.lr.ph.i.i1164.preheader ] ; 5 uses
  %.05878.i.i1166 = phi i64 [ %i.asr, %.lr.ph.i.i1164 ], [ 0, %.lr.ph.i.i1164.preheader ]
  %niter3477 = phi i64 [ %niter3477.next.1, %.lr.ph.i.i1164 ], [ 0, %.lr.ph.i.i1164.preheader ]
  %i.arv = getelementptr [4 x i8], ptr %i.ai, i64 %.05779.i.i1165
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !7
  %i.arx = zext i32 %i.arw to i64
  %i.ary = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1165
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !7
  %i.asa = zext i32 %i.arz to i64
  %i.asb = add nuw nsw i64 %.05878.i.i1166, %i.arx
  %i.asc = add nuw nsw i64 %i.asb, %i.asa         ; 2 uses
  %i.asd = trunc i64 %i.asc to i32
  %i.ase = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1165
  store i32 %i.asd, ptr %i.ase, align 4, !tbaa !7
  %i.asf = lshr i64 %i.asc, 32
  %i.asg = or disjoint i64 %.05779.i.i1165, 1     ; 3 uses
  %i.ash = getelementptr [4 x i8], ptr %i.ai, i64 %i.asg
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !7
  %i.asj = zext i32 %i.asi to i64
  %i.ask = getelementptr [4 x i8], ptr %i.ag, i64 %i.asg
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !7
  %i.asm = zext i32 %i.asl to i64
  %i.asn = add nuw nsw i64 %i.asf, %i.asj
  %i.aso = add nuw nsw i64 %i.asn, %i.asm         ; 2 uses
  %i.asp = trunc i64 %i.aso to i32
  %i.asq = getelementptr [4 x i8], ptr %i.am, i64 %i.asg
  store i32 %i.asp, ptr %i.asq, align 4, !tbaa !7
  %i.asr = lshr i64 %i.aso, 32                    ; 2 uses
  %i.ass = add nuw i64 %.05779.i.i1165, 2         ; 2 uses
  %niter3477.next.1 = add i64 %niter3477, 2       ; 2 uses
  %niter3477.ncmp.1 = icmp eq i64 %niter3477.next.1, %i.j
  br i1 %niter3477.ncmp.1, label %.lr.ph.i.i1164.epil, label %.lr.ph.i.i1164, !llvm.loop !34

.lr.ph.i.i1164.epil:                              ; preds = %.lr.ph.i.i1164.preheader, %.lr.ph.i.i1164
  %.05779.i.i1165.epil.init = phi i64 [ 0, %.lr.ph.i.i1164.preheader ], [ %i.ass, %.lr.ph.i.i1164 ] ; 3 uses
  %.05878.i.i1166.epil.init = phi i64 [ 0, %.lr.ph.i.i1164.preheader ], [ %i.asr, %.lr.ph.i.i1164 ]
  %i.ast = getelementptr [4 x i8], ptr %i.ai, i64 %.05779.i.i1165.epil.init
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !7
  %i.asv = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1165.epil.init
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !7
  %i.asx = trunc nuw nsw i64 %.05878.i.i1166.epil.init to i32
  %i.asy = add i32 %i.asu, %i.asx
  %i.asz = add i32 %i.asy, %i.asw
  %i.ata = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1165.epil.init
  store i32 %i.asz, ptr %i.ata, align 4, !tbaa !7
  br label %bary_2comp.exit1158

bary_2comp.exit1158:                              ; preds = %bb.av, %.lr.ph26.i1153, %.lr.ph.i.i1164.epil, %middle.block3014, %.lr.ph.i.i1113.epil, %bb.aw
  %.0533.shrunk = phi i1 [ true, %.lr.ph.i.i1113.epil ], [ false, %middle.block3014 ], [ false, %.lr.ph.i.i1164.epil ], [ false, %bb.aw ], [ false, %.lr.ph26.i1153 ], [ false, %bb.av ] ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bary_2comp.exit1158
  %.030.i.i = phi i64 [ 0, %bary_2comp.exit1158 ], [ %i.atj, %bb.ax ]
  %.02629.i.i = phi i64 [ 0, %bary_2comp.exit1158 ], [ %i.atk, %bb.ax ] ; 3 uses
  %i.atb = shl nuw nsw i64 %.030.i.i, 32
  %i.atc = xor i64 %.02629.i.i, -1
  %i.atd = getelementptr [4 x i8], ptr %i.an, i64 %i.atc ; 2 uses
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !7
  %i.atf = zext i32 %i.ate to i64
  %i.atg = or disjoint i64 %i.atb, %i.atf         ; 2 uses
  %i.ath = udiv i64 %i.atg, 3
  %i.ati = trunc nuw i64 %i.ath to i32
  store i32 %i.ati, ptr %i.atd, align 4, !tbaa !7
  %i.atj = urem i64 %i.atg, 3
  %i.atk = add nuw i64 %.02629.i.i, 1
  %exitcond.not.i.i1196 = icmp eq i64 %.02629.i.i, %i.j
  br i1 %exitcond.not.i.i1196, label %bigdivrem_single.exit, label %bb.ax, !llvm.loop !113

end_hunk_3
begin_hunk_4_@bary_mul_toom3:bb.a
  %i.auk = add nuw i64 %.078.i.i1199, 2           ; 2 uses
  %niter3497.next.1 = add i64 %niter3497, 2       ; 2 uses
  %niter3497.ncmp.1 = icmp eq i64 %niter3497.next.1, %i.j
  br i1 %niter3497.ncmp.1, label %.lr.ph.i.i1198.epil, label %.lr.ph.i.i1198, !llvm.loop !48

.lr.ph.i.i1198.epil:                              ; preds = %.lr.ph.i.i1198.preheader, %.lr.ph.i.i1198
  %.078.i.i1199.epil.init = phi i64 [ 0, %.lr.ph.i.i1198.preheader ], [ %i.auk, %.lr.ph.i.i1198 ] ; 3 uses
  %.06277.i.i1200.epil.init = phi i64 [ 0, %.lr.ph.i.i1198.preheader ], [ %i.auj, %.lr.ph.i.i1198 ]
  %i.aul = getelementptr [4 x i8], ptr %i.ag, i64 %.078.i.i1199.epil.init
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !7
  %i.aun = zext i32 %i.aum to i64
  %i.auo = getelementptr [4 x i8], ptr %i.ah, i64 %.078.i.i1199.epil.init
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !7
  %i.auq = zext i32 %i.aup to i64
  %i.aur = sub nsw i64 %i.aun, %i.auq
  %i.aus = add nsw i64 %i.aur, %.06277.i.i1200.epil.init ; 2 uses
  %i.aut = trunc i64 %i.aus to i32
  %i.auu = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1199.epil.init
  store i32 %i.aut, ptr %i.auu, align 4, !tbaa !7
  %i.auv = icmp ult i64 %i.aus, 4294967296
  br i1 %i.auv, label %bary_2comp.exit1243, label %.lr.ph.i1233

.lr.ph.i1233:                                     ; preds = %.lr.ph.i.i1198.epil, %bb.ay
  %.023.i1234 = phi i64 [ %i.auy, %bb.ay ], [ 0, %.lr.ph.i.i1198.epil ] ; 6 uses
  %i.auw = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1234
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !7 ; 2 uses
  %.not.i1235 = icmp eq i32 %i.aux, 0
  br i1 %.not.i1235, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i1233
  %i.auy = add nuw i64 %.023.i1234, 1
  %exitcond.not.i1242 = icmp eq i64 %.023.i1234, %i.j
  br i1 %exitcond.not.i1242, label %bary_2comp.exit1243, label %.lr.ph.i1233, !llvm.loop !55

bb.az:                                            ; preds = %.lr.ph.i1233
  %i.auz = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1234
  %i.ava = sub i32 0, %i.aux
  store i32 %i.ava, ptr %i.auz, align 4, !tbaa !7
  %.124.i1236 = add i64 %.023.i1234, 1            ; 4 uses
  %.not2013 = icmp ugt i64 %.124.i1236, %i.j
  br i1 %.not2013, label %bary_2comp.exit1243, label %.lr.ph26.i1238.preheader

.lr.ph26.i1238.preheader:                         ; preds = %bb.az
  %i.avb = sub i64 %i.j, %.023.i1234              ; 3 uses
  %min.iters.check3018 = icmp ult i64 %i.avb, 8
  br i1 %min.iters.check3018, label %.lr.ph26.i1238.preheader3258, label %vector.ph3019

vector.ph3019:                                    ; preds = %.lr.ph26.i1238.preheader
  %n.vec3020 = and i64 %i.avb, -8                 ; 3 uses
  %i.avc = add i64 %.124.i1236, %n.vec3020
  %i.avd = getelementptr [4 x i8], ptr %i.ak, i64 %.124.i1236
  br label %vector.body3021

vector.body3021:                                  ; preds = %vector.body3021, %vector.ph3019
  %index3022 = phi i64 [ 0, %vector.ph3019 ], [ %index.next3025, %vector.body3021 ] ; 2 uses
  %i.ave = getelementptr [4 x i8], ptr %i.avd, i64 %index3022 ; 3 uses
  %i.avf = getelementptr i8, ptr %i.ave, i64 16   ; 2 uses
  %wide.load3023 = load <4 x i32>, ptr %i.ave, align 4, !tbaa !7
  %wide.load3024 = load <4 x i32>, ptr %i.avf, align 4, !tbaa !7
  %i.avg = xor <4 x i32> %wide.load3023, splat (i32 -1)
  %i.avh = xor <4 x i32> %wide.load3024, splat (i32 -1)
  store <4 x i32> %i.avg, ptr %i.ave, align 4, !tbaa !7
  store <4 x i32> %i.avh, ptr %i.avf, align 4, !tbaa !7
  %index.next3025 = add nuw i64 %index3022, 8     ; 2 uses
  %i.avi = icmp eq i64 %index.next3025, %n.vec3020
  br i1 %i.avi, label %middle.block3026, label %vector.body3021, !llvm.loop !114

middle.block3026:                                 ; preds = %vector.body3021
  %cmp.n3027 = icmp eq i64 %i.avb, %n.vec3020
  br i1 %cmp.n3027, label %bary_2comp.exit1243, label %.lr.ph26.i1238.preheader3258

.lr.ph26.i1238.preheader3258:                     ; preds = %.lr.ph26.i1238.preheader, %middle.block3026
  %.125.i1239.ph = phi i64 [ %.124.i1236, %.lr.ph26.i1238.preheader ], [ %i.avc, %middle.block3026 ]
  br label %.lr.ph26.i1238

.lr.ph26.i1238:                                   ; preds = %.lr.ph26.i1238.preheader3258, %.lr.ph26.i1238
  %.125.i1239 = phi i64 [ %.1.i1240, %.lr.ph26.i1238 ], [ %.125.i1239.ph, %.lr.ph26.i1238.preheader3258 ] ; 3 uses
  %i.avj = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1239 ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !7
  %i.avl = xor i32 %i.avk, -1
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !7
  %.1.i1240 = add nuw i64 %.125.i1239, 1
  %exitcond31.not.i1241 = icmp eq i64 %.125.i1239, %i.j
  br i1 %exitcond31.not.i1241, label %bary_2comp.exit1243, label %.lr.ph26.i1238, !llvm.loop !115

.lr.ph.i.i1249:                                   ; preds = %.lr.ph.i.i1249.preheader, %.lr.ph.i.i1249
  %.05779.i.i1250 = phi i64 [ %i.awj, %.lr.ph.i.i1249 ], [ 0, %.lr.ph.i.i1249.preheader ] ; 5 uses
  %.05878.i.i1251 = phi i64 [ %i.awi, %.lr.ph.i.i1249 ], [ 0, %.lr.ph.i.i1249.preheader ]
  %niter3490 = phi i64 [ %niter3490.next.1, %.lr.ph.i.i1249 ], [ 0, %.lr.ph.i.i1249.preheader ]
  %i.avm = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1250
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !7
  %i.avo = zext i32 %i.avn to i64
  %i.avp = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1250
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !7
  %i.avr = zext i32 %i.avq to i64
  %i.avs = add nuw nsw i64 %.05878.i.i1251, %i.avo
  %i.avt = add nuw nsw i64 %i.avs, %i.avr         ; 2 uses
  %i.avu = trunc i64 %i.avt to i32
  %i.avv = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1250
  store i32 %i.avu, ptr %i.avv, align 4, !tbaa !7
  %i.avw = lshr i64 %i.avt, 32
  %i.avx = or disjoint i64 %.05779.i.i1250, 1     ; 3 uses
  %i.avy = getelementptr [4 x i8], ptr %i.ag, i64 %i.avx
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !7
  %i.awa = zext i32 %i.avz to i64
  %i.awb = getelementptr [4 x i8], ptr %i.ah, i64 %i.avx
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !7
  %i.awd = zext i32 %i.awc to i64
  %i.awe = add nuw nsw i64 %i.avw, %i.awa
  %i.awf = add nuw nsw i64 %i.awe, %i.awd         ; 2 uses
  %i.awg = trunc i64 %i.awf to i32
  %i.awh = getelementptr [4 x i8], ptr %i.ak, i64 %i.avx
  store i32 %i.awg, ptr %i.awh, align 4, !tbaa !7
  %i.awi = lshr i64 %i.awf, 32                    ; 2 uses
  %i.awj = add nuw i64 %.05779.i.i1250, 2         ; 2 uses
  %niter3490.next.1 = add i64 %niter3490, 2       ; 2 uses
  %niter3490.ncmp.1 = icmp eq i64 %niter3490.next.1, %i.j
  br i1 %niter3490.ncmp.1, label %.lr.ph.i.i1249.epil, label %.lr.ph.i.i1249, !llvm.loop !34

.lr.ph.i.i1249.epil:                              ; preds = %.lr.ph.i.i1249.preheader, %.lr.ph.i.i1249
  %.05779.i.i1250.epil.init = phi i64 [ 0, %.lr.ph.i.i1249.preheader ], [ %i.awj, %.lr.ph.i.i1249 ] ; 3 uses
  %.05878.i.i1251.epil.init = phi i64 [ 0, %.lr.ph.i.i1249.preheader ], [ %i.awi, %.lr.ph.i.i1249 ]
  %i.awk = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1250.epil.init
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !7
  %i.awm = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1250.epil.init
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !7
  %i.awo = trunc nuw nsw i64 %.05878.i.i1251.epil.init to i32
  %i.awp = add i32 %i.awl, %i.awo
  %i.awq = add i32 %i.awp, %i.awn
  %i.awr = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1250.epil.init
  store i32 %i.awq, ptr %i.awr, align 4, !tbaa !7
  br label %bary_2comp.exit1243

bary_2comp.exit1243:                              ; preds = %bb.ay, %.lr.ph26.i1238, %.lr.ph.i.i1249.epil, %middle.block3026, %.lr.ph.i.i1198.epil, %bb.az
  %.not587 = phi i32 [ 0, %.lr.ph.i.i1198.epil ], [ 1, %middle.block3026 ], [ 0, %.lr.ph.i.i1249.epil ], [ 1, %bb.az ], [ 1, %.lr.ph26.i1238 ], [ 1, %bb.ay ] ; 4 uses
  %.0537 = phi i32 [ 1, %.lr.ph.i.i1198.epil ], [ 0, %middle.block3026 ], [ 1, %.lr.ph.i.i1249.epil ], [ 0, %bb.az ], [ 0, %.lr.ph26.i1238 ], [ 0, %bb.ay ] ; 5 uses
  %min.iters.check3030 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check3030, label %scalar.ph3029.preheader, label %vector.ph3031

vector.ph3031:                                    ; preds = %bary_2comp.exit1243
  %n.vec3032 = and i64 %i.j, -8                   ; 2 uses
  br label %vector.body3033

vector.body3033:                                  ; preds = %vector.body3033, %vector.ph3031
  %index3034 = phi i64 [ 0, %vector.ph3031 ], [ %index.next3040, %vector.body3033 ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph3031 ], [ %i.awx, %vector.body3033 ]
  %i.aws = xor i64 %index3034, -1
  %i.awt = getelementptr [4 x i8], ptr %i.al, i64 %i.aws ; 2 uses
  %i.awu = getelementptr i8, ptr %i.awt, i64 -12  ; 2 uses
  %i.awv = getelementptr i8, ptr %i.awt, i64 -28  ; 2 uses
  %wide.load3035 = load <4 x i32>, ptr %i.awu, align 4, !tbaa !7
  %wide.load3036 = load <4 x i32>, ptr %i.awv, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load3035, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3037 = shufflevector <4 x i32> %wide.load3036, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aww = zext <4 x i32> %reverse to <4 x i64>   ; 3 uses
  %i.awx = zext <4 x i32> %reverse3037 to <4 x i64> ; 4 uses
  %i.awy = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.aww, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.awz = shufflevector <4 x i64> %i.aww, <4 x i64> %i.awx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.axa = shl nuw <4 x i64> %i.awy, splat (i64 32)
  %i.axb = shl nuw <4 x i64> %i.awz, splat (i64 32)
  %i.axc = or disjoint <4 x i64> %i.axa, %i.aww
  %i.axd = or disjoint <4 x i64> %i.axb, %i.awx
  %i.axe = lshr <4 x i64> %i.axc, splat (i64 1)
  %i.axf = lshr <4 x i64> %i.axd, splat (i64 1)
  %i.axg = trunc <4 x i64> %i.axe to <4 x i32>
  %i.axh = trunc <4 x i64> %i.axf to <4 x i32>
  %reverse3038 = shufflevector <4 x i32> %i.axg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3039 = shufflevector <4 x i32> %i.axh, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse3038, ptr %i.awu, align 4, !tbaa !7
  store <4 x i32> %reverse3039, ptr %i.awv, align 4, !tbaa !7
  %index.next3040 = add nuw i64 %index3034, 8     ; 2 uses
  %i.axi = icmp eq i64 %index.next3040, %n.vec3032
  br i1 %i.axi, label %middle.block3041, label %vector.body3033, !llvm.loop !116

middle.block3041:                                 ; preds = %vector.body3033
  %vector.recur.extract = extractelement <4 x i64> %i.awx, i64 3
  br label %scalar.ph3029.preheader

scalar.ph3029.preheader:                          ; preds = %middle.block3041, %bary_2comp.exit1243
  %.017.i1281.ph = phi i64 [ 0, %bary_2comp.exit1243 ], [ %n.vec3032, %middle.block3041 ]
  %.014.in16.i.ph = phi i64 [ 0, %bary_2comp.exit1243 ], [ %vector.recur.extract, %middle.block3041 ]
  br label %scalar.ph3029

scalar.ph3029:                                    ; preds = %scalar.ph3029.preheader, %scalar.ph3029
  %.017.i1281 = phi i64 [ %i.axq, %scalar.ph3029 ], [ %.017.i1281.ph, %scalar.ph3029.preheader ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.axm, %scalar.ph3029 ], [ %.014.in16.i.ph, %scalar.ph3029.preheader ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.axj = xor i64 %.017.i1281, -1
  %i.axk = getelementptr [4 x i8], ptr %i.al, i64 %i.axj ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !7
  %i.axm = zext i32 %i.axl to i64                 ; 2 uses
  %i.axn = or disjoint i64 %.014.i, %i.axm
  %i.axo = lshr i64 %i.axn, 1
  %i.axp = trunc i64 %i.axo to i32
  store i32 %i.axp, ptr %i.axk, align 4, !tbaa !7
  %i.axq = add nuw i64 %.017.i1281, 1
  %exitcond.not.i1282 = icmp eq i64 %.017.i1281, %i.j
  br i1 %exitcond.not.i1282, label %bary_small_rshift.exit, label %scalar.ph3029, !llvm.loop !117

bary_small_rshift.exit:                           ; preds = %scalar.ph3029
  br i1 %i.aps, label %bb.ba, label %.preheader72.i.i1339

bb.ba:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit74.i.i1299, label %.lr.ph.i.i1284

.lr.ph.i.i1284:                                   ; preds = %bb.ba, %.lr.ph.i.i1284
  %.078.i.i1285 = phi i64 [ %i.ayo, %.lr.ph.i.i1284 ], [ 0, %bb.ba ] ; 5 uses
  %.06277.i.i1286 = phi i64 [ %i.ayn, %.lr.ph.i.i1284 ], [ 0, %bb.ba ]
  %i.axr = getelementptr [4 x i8], ptr %i.ah, i64 %.078.i.i1285
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !7
  %i.axt = zext i32 %i.axs to i64
  %i.axu = getelementptr [4 x i8], ptr %i.af, i64 %.078.i.i1285
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !7
  %i.axw = zext i32 %i.axv to i64
  %i.axx = sub nsw i64 %i.axt, %i.axw
  %i.axy = add nsw i64 %i.axx, %.06277.i.i1286    ; 2 uses
  %i.axz = trunc i64 %i.axy to i32
  %i.aya = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1285
  store i32 %i.axz, ptr %i.aya, align 4, !tbaa !7
  %i.ayb = ashr i64 %i.axy, 32
  %i.ayc = or disjoint i64 %.078.i.i1285, 1       ; 3 uses
  %i.ayd = getelementptr [4 x i8], ptr %i.ah, i64 %i.ayc
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !7
  %i.ayf = zext i32 %i.aye to i64
  %i.ayg = getelementptr [4 x i8], ptr %i.af, i64 %i.ayc
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !7
  %i.ayi = zext i32 %i.ayh to i64
  %i.ayj = sub nsw i64 %i.ayf, %i.ayi
  %i.ayk = add nsw i64 %i.ayj, %i.ayb             ; 2 uses
  %i.ayl = trunc i64 %i.ayk to i32
  %i.aym = getelementptr [4 x i8], ptr %i.al, i64 %i.ayc
  store i32 %i.ayl, ptr %i.aym, align 4, !tbaa !7
  %i.ayn = ashr i64 %i.ayk, 32                    ; 2 uses
  %i.ayo = add nuw i64 %.078.i.i1285, 2           ; 2 uses
  %exitcond.not.i.i1287.1 = icmp eq i64 %i.ayo, %i.j
  br i1 %exitcond.not.i.i1287.1, label %._crit_edge.i.i1288, label %.lr.ph.i.i1284, !llvm.loop !48

._crit_edge.i.i1288:                              ; preds = %.lr.ph.i.i1284
  %i.ayp = icmp eq i64 %i.ayn, 0
  br i1 %i.ayp, label %.loopexit74.i.i1299, label %.loopexit71.i.i1292

.loopexit71.i.i1292:                              ; preds = %._crit_edge.i.i1288
  %i.ayq = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !7
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = add nsw i64 %i.ays, -1                 ; 2 uses
  %i.ayu = trunc i64 %i.ayt to i32
  %i.ayv = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %i.ayu, ptr %i.ayv, align 4, !tbaa !7
  %i.ayw = icmp ult i64 %i.ayt, 4294967296
  br i1 %i.ayw, label %.loopexit74.i.i1299, label %.lr.ph.i1319

.loopexit74.i.i1299:                              ; preds = %bb.ba, %._crit_edge.i.i1288, %.loopexit71.i.i1292
  %.5.i.i1300 = phi i64 [ %i.l, %.loopexit71.i.i1292 ], [ %i.j, %._crit_edge.i.i1288 ], [ %i.j, %bb.ba ] ; 6 uses
  %i.ayx = icmp ne ptr %i.ah, %i.al
  %i.ayy = icmp ule i64 %.5.i.i1300, %i.j
  %or.cond1990 = and i1 %i.ayx, %i.ayy
  br i1 %or.cond1990, label %.lr.ph93.i.i1307.preheader, label %bary_2comp.exit1329

.lr.ph93.i.i1307.preheader:                       ; preds = %.loopexit74.i.i1299
  %i.ayz = or disjoint i64 %i.j, 1
  %i.aza = sub nuw i64 %i.ayz, %.5.i.i1300        ; 3 uses
  %min.iters.check3059 = icmp ult i64 %i.aza, 12
  br i1 %min.iters.check3059, label %.lr.ph93.i.i1307.preheader3249, label %vector.memcheck3056

vector.memcheck3056:                              ; preds = %.lr.ph93.i.i1307.preheader
  %i.azb = shl i64 %i.g, 5
  %i.azc = or disjoint i64 %i.azb, 19
  %diff.check3057 = icmp ult i64 %i.azc, 31
  br i1 %diff.check3057, label %.lr.ph93.i.i1307.preheader3249, label %vector.ph3060

vector.ph3060:                                    ; preds = %vector.memcheck3056
  %n.vec3061 = and i64 %i.aza, -8                 ; 3 uses
  %i.azd = add i64 %.5.i.i1300, %n.vec3061
  br label %vector.body3062

vector.body3062:                                  ; preds = %vector.body3062, %vector.ph3060
  %index3063 = phi i64 [ 0, %vector.ph3060 ], [ %index.next3066, %vector.body3062 ] ; 2 uses
  %i.aze = add nuw i64 %.5.i.i1300, %index3063    ; 2 uses
  %i.azf = getelementptr [4 x i8], ptr %i.ah, i64 %i.aze ; 2 uses
  %i.azg = getelementptr i8, ptr %i.azf, i64 16
  %wide.load3064 = load <4 x i32>, ptr %i.azf, align 4, !tbaa !7
  %wide.load3065 = load <4 x i32>, ptr %i.azg, align 4, !tbaa !7
  %i.azh = getelementptr [4 x i8], ptr %i.al, i64 %i.aze ; 2 uses
  %i.azi = getelementptr i8, ptr %i.azh, i64 16
  store <4 x i32> %wide.load3064, ptr %i.azh, align 4, !tbaa !7
  store <4 x i32> %wide.load3065, ptr %i.azi, align 4, !tbaa !7
  %index.next3066 = add nuw i64 %index3063, 8     ; 2 uses
  %i.azj = icmp eq i64 %index.next3066, %n.vec3061
  br i1 %i.azj, label %middle.block3067, label %vector.body3062, !llvm.loop !118

middle.block3067:                                 ; preds = %vector.body3062
  %cmp.n3068 = icmp eq i64 %i.aza, %n.vec3061
  br i1 %cmp.n3068, label %bary_2comp.exit1329, label %.lr.ph93.i.i1307.preheader3249

.lr.ph93.i.i1307.preheader3249:                   ; preds = %vector.memcheck3056, %.lr.ph93.i.i1307.preheader, %middle.block3067
  %.692.i.i1308.ph = phi i64 [ %.5.i.i1300, %vector.memcheck3056 ], [ %.5.i.i1300, %.lr.ph93.i.i1307.preheader ], [ %i.azd, %middle.block3067 ] ; 4 uses
  %i.azk = or disjoint i64 %i.j, 1
  %i.azl = sub i64 %i.azk, %.692.i.i1308.ph
  %i.azm = sub i64 %i.j, %.692.i.i1308.ph
  %xtraiter3498 = and i64 %i.azl, 3               ; 2 uses
  %lcmp.mod3499.not = icmp eq i64 %xtraiter3498, 0
  br i1 %lcmp.mod3499.not, label %.lr.ph93.i.i1307.prol.loopexit, label %.lr.ph93.i.i1307.prol

.lr.ph93.i.i1307.prol:                            ; preds = %.lr.ph93.i.i1307.preheader3249, %.lr.ph93.i.i1307.prol
  %.692.i.i1308.prol = phi i64 [ %i.azq, %.lr.ph93.i.i1307.prol ], [ %.692.i.i1308.ph, %.lr.ph93.i.i1307.preheader3249 ] ; 3 uses
  %prol.iter3500 = phi i64 [ %prol.iter3500.next, %.lr.ph93.i.i1307.prol ], [ 0, %.lr.ph93.i.i1307.preheader3249 ]
  %i.azn = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1308.prol
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !7
  %i.azp = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1308.prol
  store i32 %i.azo, ptr %i.azp, align 4, !tbaa !7
  %i.azq = add nuw i64 %.692.i.i1308.prol, 1      ; 2 uses
  %prol.iter3500.next = add i64 %prol.iter3500, 1 ; 2 uses
  %prol.iter3500.cmp.not = icmp eq i64 %prol.iter3500.next, %xtraiter3498
  br i1 %prol.iter3500.cmp.not, label %.lr.ph93.i.i1307.prol.loopexit, label %.lr.ph93.i.i1307.prol, !llvm.loop !119

.lr.ph93.i.i1307.prol.loopexit:                   ; preds = %.lr.ph93.i.i1307.prol, %.lr.ph93.i.i1307.preheader3249
  %.692.i.i1308.unr = phi i64 [ %.692.i.i1308.ph, %.lr.ph93.i.i1307.preheader3249 ], [ %i.azq, %.lr.ph93.i.i1307.prol ]
  %i.azr = icmp ult i64 %i.azm, 3
  br i1 %i.azr, label %bary_2comp.exit1329, label %.lr.ph93.i.i1307

.lr.ph93.i.i1307:                                 ; preds = %.lr.ph93.i.i1307.prol.loopexit, %.lr.ph93.i.i1307
  %.692.i.i1308 = phi i64 [ %i.bah, %.lr.ph93.i.i1307 ], [ %.692.i.i1308.unr, %.lr.ph93.i.i1307.prol.loopexit ] ; 6 uses
  %i.azs = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1308
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !7
  %i.azu = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1308
  store i32 %i.azt, ptr %i.azu, align 4, !tbaa !7
  %i.azv = add nuw i64 %.692.i.i1308, 1           ; 2 uses
  %i.azw = getelementptr [4 x i8], ptr %i.ah, i64 %i.azv
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !7
  %i.azy = getelementptr [4 x i8], ptr %i.al, i64 %i.azv
  store i32 %i.azx, ptr %i.azy, align 4, !tbaa !7
  %i.azz = add nuw i64 %.692.i.i1308, 2           ; 2 uses
  %i.baa = getelementptr [4 x i8], ptr %i.ah, i64 %i.azz
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !7
  %i.bac = getelementptr [4 x i8], ptr %i.al, i64 %i.azz
  store i32 %i.bab, ptr %i.bac, align 4, !tbaa !7
  %i.bad = add nuw i64 %.692.i.i1308, 3           ; 3 uses
  %i.bae = getelementptr [4 x i8], ptr %i.ah, i64 %i.bad
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !7
  %i.bag = getelementptr [4 x i8], ptr %i.al, i64 %i.bad
  store i32 %i.baf, ptr %i.bag, align 4, !tbaa !7
  %i.bah = add nuw i64 %.692.i.i1308, 4
  %exitcond111.not.i.i1309.3 = icmp eq i64 %i.bad, %i.j
  br i1 %exitcond111.not.i.i1309.3, label %bary_2comp.exit1329, label %.lr.ph93.i.i1307, !llvm.loop !120

.lr.ph.i1319:                                     ; preds = %.loopexit71.i.i1292, %bb.bb
  %.023.i1320 = phi i64 [ %i.bak, %bb.bb ], [ 0, %.loopexit71.i.i1292 ] ; 6 uses
  %i.bai = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1320
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !7 ; 2 uses
  %.not.i1321 = icmp eq i32 %i.baj, 0
  br i1 %.not.i1321, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i1319
  %i.bak = add nuw i64 %.023.i1320, 1
  %exitcond.not.i1328 = icmp eq i64 %.023.i1320, %i.j
  br i1 %exitcond.not.i1328, label %bary_2comp.exit1329.thr_comm, label %.lr.ph.i1319, !llvm.loop !55

bb.bc:                                            ; preds = %.lr.ph.i1319
  %i.bal = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1320
  %i.bam = sub i32 0, %i.baj
  store i32 %i.bam, ptr %i.bal, align 4, !tbaa !7
  %.124.i1322 = add i64 %.023.i1320, 1            ; 4 uses
  %.not2016 = icmp ugt i64 %.124.i1322, %i.j
  br i1 %.not2016, label %bary_2comp.exit1329.thr_comm, label %.lr.ph26.i1324.preheader

.lr.ph26.i1324.preheader:                         ; preds = %bb.bc
  %i.ban = sub i64 %i.j, %.023.i1320              ; 3 uses
  %min.iters.check3045 = icmp ult i64 %i.ban, 8
  br i1 %min.iters.check3045, label %.lr.ph26.i1324.preheader3250, label %vector.ph3046

vector.ph3046:                                    ; preds = %.lr.ph26.i1324.preheader
  %n.vec3047 = and i64 %i.ban, -8                 ; 3 uses
  %i.bao = add i64 %.124.i1322, %n.vec3047
  %i.bap = getelementptr [4 x i8], ptr %i.al, i64 %.124.i1322
  br label %vector.body3048

vector.body3048:                                  ; preds = %vector.body3048, %vector.ph3046
  %index3049 = phi i64 [ 0, %vector.ph3046 ], [ %index.next3052, %vector.body3048 ] ; 2 uses
  %i.baq = getelementptr [4 x i8], ptr %i.bap, i64 %index3049 ; 3 uses
  %i.bar = getelementptr i8, ptr %i.baq, i64 16   ; 2 uses
  %wide.load3050 = load <4 x i32>, ptr %i.baq, align 4, !tbaa !7
  %wide.load3051 = load <4 x i32>, ptr %i.bar, align 4, !tbaa !7
  %i.bas = xor <4 x i32> %wide.load3050, splat (i32 -1)
  %i.bat = xor <4 x i32> %wide.load3051, splat (i32 -1)
  store <4 x i32> %i.bas, ptr %i.baq, align 4, !tbaa !7
  store <4 x i32> %i.bat, ptr %i.bar, align 4, !tbaa !7
  %index.next3052 = add nuw i64 %index3049, 8     ; 2 uses
  %i.bau = icmp eq i64 %index.next3052, %n.vec3047
  br i1 %i.bau, label %middle.block3053, label %vector.body3048, !llvm.loop !121

middle.block3053:                                 ; preds = %vector.body3048
  %cmp.n3054 = icmp eq i64 %i.ban, %n.vec3047
  br i1 %cmp.n3054, label %bary_2comp.exit1329.thr_comm, label %.lr.ph26.i1324.preheader3250

.lr.ph26.i1324.preheader3250:                     ; preds = %.lr.ph26.i1324.preheader, %middle.block3053
  %.125.i1325.ph = phi i64 [ %.124.i1322, %.lr.ph26.i1324.preheader ], [ %i.bao, %middle.block3053 ]
  br label %.lr.ph26.i1324

.lr.ph26.i1324:                                   ; preds = %.lr.ph26.i1324.preheader3250, %.lr.ph26.i1324
  %.125.i1325 = phi i64 [ %.1.i1326, %.lr.ph26.i1324 ], [ %.125.i1325.ph, %.lr.ph26.i1324.preheader3250 ] ; 3 uses
  %i.bav = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1325 ; 2 uses
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !7
  %i.bax = xor i32 %i.baw, -1
  store i32 %i.bax, ptr %i.bav, align 4, !tbaa !7
  %.1.i1326 = add nuw i64 %.125.i1325, 1
  %exitcond31.not.i1327 = icmp eq i64 %.125.i1325, %i.j
  br i1 %exitcond31.not.i1327, label %bary_2comp.exit1329.thr_comm, label %.lr.ph26.i1324, !llvm.loop !122

.preheader72.i.i1339:                             ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit71.i.i1349, label %.lr.ph.i.i1335

.lr.ph.i.i1335:                                   ; preds = %.preheader72.i.i1339, %.lr.ph.i.i1335
  %.05779.i.i1336 = phi i64 [ %i.bbv, %.lr.ph.i.i1335 ], [ 0, %.preheader72.i.i1339 ] ; 5 uses
  %.05878.i.i1337 = phi i64 [ %i.bbu, %.lr.ph.i.i1335 ], [ 0, %.preheader72.i.i1339 ]
  %i.bay = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i1336
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !7
  %i.bba = zext i32 %i.baz to i64
  %i.bbb = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1336
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !7
  %i.bbd = zext i32 %i.bbc to i64
  %i.bbe = add nuw nsw i64 %.05878.i.i1337, %i.bba
  %i.bbf = add nuw nsw i64 %i.bbe, %i.bbd         ; 2 uses
  %i.bbg = trunc i64 %i.bbf to i32
  %i.bbh = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1336
  store i32 %i.bbg, ptr %i.bbh, align 4, !tbaa !7
  %i.bbi = lshr i64 %i.bbf, 32
  %i.bbj = or disjoint i64 %.05779.i.i1336, 1     ; 3 uses
  %i.bbk = getelementptr [4 x i8], ptr %i.af, i64 %i.bbj
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !7
  %i.bbm = zext i32 %i.bbl to i64
  %i.bbn = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbj
  %i.bbo = load i32, ptr %i.bbn, align 4, !tbaa !7
  %i.bbp = zext i32 %i.bbo to i64
  %i.bbq = add nuw nsw i64 %i.bbi, %i.bbm
  %i.bbr = add nuw nsw i64 %i.bbq, %i.bbp         ; 2 uses
  %i.bbs = trunc i64 %i.bbr to i32
  %i.bbt = getelementptr [4 x i8], ptr %i.al, i64 %i.bbj
  store i32 %i.bbs, ptr %i.bbt, align 4, !tbaa !7
  %i.bbu = lshr i64 %i.bbr, 32                    ; 2 uses
  %i.bbv = add nuw i64 %.05779.i.i1336, 2         ; 2 uses
  %exitcond.not.i.i1338.1 = icmp eq i64 %i.bbv, %i.j
  br i1 %exitcond.not.i.i1338.1, label %.lr.ph83.i.i1360, label %.lr.ph.i.i1335, !llvm.loop !34

.lr.ph83.i.i1360:                                 ; preds = %.lr.ph.i.i1335
  %60 = icmp eq i64 %i.bbu, 0
  br i1 %60, label %.loopexit71.i.i1349, label %bary_2comp.exit1329.thr_comm.loopexit2228

bary_2comp.exit1329.thr_comm.loopexit2228:        ; preds = %.lr.ph83.i.i1360
  %i.bbw = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !7
  %i.bby = add i32 %i.bbx, 1
  br label %bary_2comp.exit1329.thr_comm.sink.split

.loopexit71.i.i1349:                              ; preds = %.preheader72.i.i1339, %.lr.ph83.i.i1360
  %i.bbz = icmp eq ptr %i.ah, %i.al
  br i1 %i.bbz, label %bary_2comp.exit1329.thr_comm, label %.preheader.i.i1353

.preheader.i.i1353:                               ; preds = %.loopexit71.i.i1349
  %i.bca = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !7
  br label %bary_2comp.exit1329.thr_comm.sink.split

bary_2comp.exit1329.thr_comm.sink.split:          ; preds = %bary_2comp.exit1329.thr_comm.loopexit2228, %.preheader.i.i1353
  %.sink = phi i32 [ %i.bcb, %.preheader.i.i1353 ], [ %i.bby, %bary_2comp.exit1329.thr_comm.loopexit2228 ]
  %i.bcc = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %.sink, ptr %i.bcc, align 4, !tbaa !7
  br label %bary_2comp.exit1329.thr_comm

bary_2comp.exit1329.thr_comm:                     ; preds = %bb.bb, %.lr.ph26.i1324, %middle.block3053, %bary_2comp.exit1329.thr_comm.sink.split, %.loopexit71.i.i1349, %bb.bc
  br i1 %.0533.shrunk, label %bb.bg, label %bb.bd

bary_2comp.exit1329:                              ; preds = %.lr.ph93.i.i1307.prol.loopexit, %.lr.ph93.i.i1307, %middle.block3067, %.loopexit74.i.i1299
  br i1 %.0533.shrunk, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bary_2comp.exit1329.thr_comm, %bary_2comp.exit1329
  %.05341976 = phi i32 [ 0, %bary_2comp.exit1329.thr_comm ], [ 1, %bary_2comp.exit1329 ] ; 3 uses
  %.0534.shrunk1972 = phi i1 [ false, %bary_2comp.exit1329.thr_comm ], [ true, %bary_2comp.exit1329 ] ; 3 uses
  %i.bcd = icmp ult i64 %i.f, 3
  br i1 %i.bcd, label %.lr.ph.i.i1366.epil, label %.lr.ph.i.i1366

.lr.ph.i.i1366:                                   ; preds = %bb.bd, %.lr.ph.i.i1366
  %.078.i.i1367 = phi i64 [ %i.bcz, %.lr.ph.i.i1366 ], [ 0, %bb.bd ] ; 4 uses
  %.06277.i.i1368 = phi i64 [ %i.bcy, %.lr.ph.i.i1366 ], [ 0, %bb.bd ]
  %niter3516 = phi i64 [ %niter3516.next.1, %.lr.ph.i.i1366 ], [ 0, %bb.bd ]
  %i.bce = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1367
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !7
  %i.bcg = zext i32 %i.bcf to i64
  %i.bch = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1367 ; 2 uses
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !7
  %i.bcj = zext i32 %i.bci to i64
  %i.bck = sub nsw i64 %i.bcg, %i.bcj
  %i.bcl = add nsw i64 %i.bck, %.06277.i.i1368    ; 2 uses
  %i.bcm = trunc i64 %i.bcl to i32
  store i32 %i.bcm, ptr %i.bch, align 4, !tbaa !7
  %i.bcn = ashr i64 %i.bcl, 32
  %i.bco = or disjoint i64 %.078.i.i1367, 1       ; 2 uses
  %i.bcp = getelementptr [4 x i8], ptr %i.al, i64 %i.bco
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !7
  %i.bcr = zext i32 %i.bcq to i64
  %i.bcs = getelementptr [4 x i8], ptr %i.am, i64 %i.bco ; 2 uses
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !7
  %i.bcu = zext i32 %i.bct to i64
  %i.bcv = sub nsw i64 %i.bcr, %i.bcu
  %i.bcw = add nsw i64 %i.bcv, %i.bcn             ; 2 uses
  %i.bcx = trunc i64 %i.bcw to i32
  store i32 %i.bcx, ptr %i.bcs, align 4, !tbaa !7
  %i.bcy = ashr i64 %i.bcw, 32                    ; 2 uses
  %i.bcz = add nuw i64 %.078.i.i1367, 2           ; 2 uses
  %niter3516.next.1 = add i64 %niter3516, 2       ; 2 uses
  %niter3516.ncmp.1 = icmp eq i64 %niter3516.next.1, %i.j
  br i1 %niter3516.ncmp.1, label %.lr.ph.i.i1366.epil, label %.lr.ph.i.i1366, !llvm.loop !48

.lr.ph.i.i1366.epil:                              ; preds = %bb.bd, %.lr.ph.i.i1366
  %.078.i.i1367.epil.init = phi i64 [ 0, %bb.bd ], [ %i.bcz, %.lr.ph.i.i1366 ] ; 2 uses
  %.06277.i.i1368.epil.init = phi i64 [ 0, %bb.bd ], [ %i.bcy, %.lr.ph.i.i1366 ]
  %i.bda = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1367.epil.init
  %i.bdb = load i32, ptr %i.bda, align 4, !tbaa !7
  %i.bdc = zext i32 %i.bdb to i64
  %i.bdd = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1367.epil.init ; 2 uses
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !7
  %i.bdf = zext i32 %i.bde to i64
  %i.bdg = sub nsw i64 %i.bdc, %i.bdf
  %i.bdh = add nsw i64 %i.bdg, %.06277.i.i1368.epil.init ; 2 uses
  %i.bdi = trunc i64 %i.bdh to i32
  store i32 %i.bdi, ptr %i.bdd, align 4, !tbaa !7
  %i.bdj = icmp ult i64 %i.bdh, 4294967296
  br i1 %i.bdj, label %bary_sub.exit1400.thread, label %.lr.ph.i1401

.lr.ph.i1401:                                     ; preds = %.lr.ph.i.i1366.epil, %bb.be
  %.023.i1402 = phi i64 [ %i.bdm, %bb.be ], [ 0, %.lr.ph.i.i1366.epil ] ; 6 uses
  %i.bdk = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1402
  %i.bdl = load i32, ptr %i.bdk, align 4, !tbaa !7 ; 2 uses
  %.not.i1403 = icmp eq i32 %i.bdl, 0
  br i1 %.not.i1403, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i1401
  %i.bdm = add nuw i64 %.023.i1402, 1
  %exitcond.not.i1410 = icmp eq i64 %.023.i1402, %i.j
  br i1 %exitcond.not.i1410, label %bary_2comp.exit1411, label %.lr.ph.i1401, !llvm.loop !55

bb.bf:                                            ; preds = %.lr.ph.i1401
  %i.bdn = getelementptr [4 x i8], ptr %i.am, i64 %.023.i1402
  %i.bdo = sub i32 0, %i.bdl
  store i32 %i.bdo, ptr %i.bdn, align 4, !tbaa !7
  %.124.i1404 = add i64 %.023.i1402, 1            ; 4 uses
  %.not2017 = icmp ugt i64 %.124.i1404, %i.j
  br i1 %.not2017, label %bary_2comp.exit1411, label %.lr.ph26.i1406.preheader

.lr.ph26.i1406.preheader:                         ; preds = %bb.bf
  %i.bdp = sub i64 %i.j, %.023.i1402              ; 3 uses
  %min.iters.check3071 = icmp ult i64 %i.bdp, 8
  br i1 %min.iters.check3071, label %.lr.ph26.i1406.preheader3243, label %vector.ph3072

vector.ph3072:                                    ; preds = %.lr.ph26.i1406.preheader
  %n.vec3073 = and i64 %i.bdp, -8                 ; 3 uses
  %i.bdq = add i64 %.124.i1404, %n.vec3073
  %i.bdr = getelementptr [4 x i8], ptr %i.am, i64 %.124.i1404
  br label %vector.body3074

vector.body3074:                                  ; preds = %vector.body3074, %vector.ph3072
  %index3075 = phi i64 [ 0, %vector.ph3072 ], [ %index.next3078, %vector.body3074 ] ; 2 uses
  %i.bds = getelementptr [4 x i8], ptr %i.bdr, i64 %index3075 ; 3 uses
  %i.bdt = getelementptr i8, ptr %i.bds, i64 16   ; 2 uses
  %wide.load3076 = load <4 x i32>, ptr %i.bds, align 4, !tbaa !7
  %wide.load3077 = load <4 x i32>, ptr %i.bdt, align 4, !tbaa !7
  %i.bdu = xor <4 x i32> %wide.load3076, splat (i32 -1)
  %i.bdv = xor <4 x i32> %wide.load3077, splat (i32 -1)
  store <4 x i32> %i.bdu, ptr %i.bds, align 4, !tbaa !7
  store <4 x i32> %i.bdv, ptr %i.bdt, align 4, !tbaa !7
  %index.next3078 = add nuw i64 %index3075, 8     ; 2 uses
  %i.bdw = icmp eq i64 %index.next3078, %n.vec3073
  br i1 %i.bdw, label %middle.block3079, label %vector.body3074, !llvm.loop !123

middle.block3079:                                 ; preds = %vector.body3074
  %cmp.n3080 = icmp eq i64 %i.bdp, %n.vec3073
  br i1 %cmp.n3080, label %bary_2comp.exit1411, label %.lr.ph26.i1406.preheader3243

.lr.ph26.i1406.preheader3243:                     ; preds = %.lr.ph26.i1406.preheader, %middle.block3079
  %.125.i1407.ph = phi i64 [ %.124.i1404, %.lr.ph26.i1406.preheader ], [ %i.bdq, %middle.block3079 ]
  br label %.lr.ph26.i1406

.lr.ph26.i1406:                                   ; preds = %.lr.ph26.i1406.preheader3243, %.lr.ph26.i1406
  %.125.i1407 = phi i64 [ %.1.i1408, %.lr.ph26.i1406 ], [ %.125.i1407.ph, %.lr.ph26.i1406.preheader3243 ] ; 3 uses
  %i.bdx = getelementptr [4 x i8], ptr %i.am, i64 %.125.i1407 ; 2 uses
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !7
  %i.bdz = xor i32 %i.bdy, -1
  store i32 %i.bdz, ptr %i.bdx, align 4, !tbaa !7
  %.1.i1408 = add nuw i64 %.125.i1407, 1
  %exitcond31.not.i1409 = icmp eq i64 %.125.i1407, %i.j
  br i1 %exitcond31.not.i1409, label %bary_2comp.exit1411, label %.lr.ph26.i1406, !llvm.loop !124

bary_2comp.exit1411:                              ; preds = %bb.be, %.lr.ph26.i1406, %middle.block3079, %bb.bf
  %i.bea = xor i1 %.0534.shrunk1972, true
  %i.beb = zext i1 %i.bea to i32
  br label %bary_sub.exit1400.thread

bb.bg:                                            ; preds = %bary_2comp.exit1329.thr_comm, %bary_2comp.exit1329
  %.05341977 = phi i32 [ 0, %bary_2comp.exit1329.thr_comm ], [ 1, %bary_2comp.exit1329 ] ; 2 uses
  %.0534.shrunk1974 = phi i1 [ false, %bary_2comp.exit1329.thr_comm ], [ true, %bary_2comp.exit1329 ]
  %i.bec = icmp ult i64 %i.f, 3
  br i1 %i.bec, label %.lr.ph.i.i1417.epil, label %.lr.ph.i.i1417

.lr.ph.i.i1417:                                   ; preds = %bb.bg, %.lr.ph.i.i1417
  %.05779.i.i1418 = phi i64 [ %i.bey, %.lr.ph.i.i1417 ], [ 0, %bb.bg ] ; 4 uses
  %.05878.i.i1419 = phi i64 [ %i.bex, %.lr.ph.i.i1417 ], [ 0, %bb.bg ]
  %niter3507 = phi i64 [ %niter3507.next.1, %.lr.ph.i.i1417 ], [ 0, %bb.bg ]
  %i.bed = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1418
  %i.bee = load i32, ptr %i.bed, align 4, !tbaa !7
  %i.bef = zext i32 %i.bee to i64
  %i.beg = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1418 ; 2 uses
  %i.beh = load i32, ptr %i.beg, align 4, !tbaa !7
  %i.bei = zext i32 %i.beh to i64
  %i.bej = add nuw nsw i64 %.05878.i.i1419, %i.bef
  %i.bek = add nuw nsw i64 %i.bej, %i.bei         ; 2 uses
  %i.bel = trunc i64 %i.bek to i32
  store i32 %i.bel, ptr %i.beg, align 4, !tbaa !7
  %i.bem = lshr i64 %i.bek, 32
  %i.ben = or disjoint i64 %.05779.i.i1418, 1     ; 2 uses
  %i.beo = getelementptr [4 x i8], ptr %i.al, i64 %i.ben
  %i.bep = load i32, ptr %i.beo, align 4, !tbaa !7
  %i.beq = zext i32 %i.bep to i64
  %i.ber = getelementptr [4 x i8], ptr %i.am, i64 %i.ben ; 2 uses
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !7
  %i.bet = zext i32 %i.bes to i64
  %i.beu = add nuw nsw i64 %i.bem, %i.beq
  %i.bev = add nuw nsw i64 %i.beu, %i.bet         ; 2 uses
  %i.bew = trunc i64 %i.bev to i32
  store i32 %i.bew, ptr %i.ber, align 4, !tbaa !7
  %i.bex = lshr i64 %i.bev, 32                    ; 2 uses
  %i.bey = add nuw i64 %.05779.i.i1418, 2         ; 2 uses
  %niter3507.next.1 = add i64 %niter3507, 2       ; 2 uses
  %niter3507.ncmp.1 = icmp eq i64 %niter3507.next.1, %i.j
  br i1 %niter3507.ncmp.1, label %.lr.ph.i.i1417.epil, label %.lr.ph.i.i1417, !llvm.loop !34

.lr.ph.i.i1417.epil:                              ; preds = %bb.bg, %.lr.ph.i.i1417
  %.05779.i.i1418.epil.init = phi i64 [ 0, %bb.bg ], [ %i.bey, %.lr.ph.i.i1417 ] ; 2 uses
  %.05878.i.i1419.epil.init = phi i64 [ 0, %bb.bg ], [ %i.bex, %.lr.ph.i.i1417 ]
  %i.bez = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1418.epil.init
  %i.bfa = load i32, ptr %i.bez, align 4, !tbaa !7
  %i.bfb = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1418.epil.init ; 2 uses
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !7
  %i.bfd = trunc nuw nsw i64 %.05878.i.i1419.epil.init to i32
  %i.bfe = add i32 %i.bfa, %i.bfd
  %i.bff = add i32 %i.bfe, %i.bfc
  store i32 %i.bff, ptr %i.bfb, align 4, !tbaa !7
  br label %bary_sub.exit1400.thread

bary_sub.exit1400.thread:                         ; preds = %.lr.ph.i.i1417.epil, %.lr.ph.i.i1366.epil, %bary_2comp.exit1411
  %.05341975 = phi i32 [ %.05341976, %bary_2comp.exit1411 ], [ %.05341976, %.lr.ph.i.i1366.epil ], [ %.05341977, %.lr.ph.i.i1417.epil ] ; 2 uses
  %.0534.shrunk1973 = phi i1 [ %.0534.shrunk1972, %bary_2comp.exit1411 ], [ %.0534.shrunk1972, %.lr.ph.i.i1366.epil ], [ %.0534.shrunk1974, %.lr.ph.i.i1417.epil ]
  %.1 = phi i32 [ %i.beb, %bary_2comp.exit1411 ], [ %.05341976, %.lr.ph.i.i1366.epil ], [ %.05341977, %.lr.ph.i.i1417.epil ]
  %min.iters.check3083 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check3083, label %scalar.ph3082.preheader, label %vector.ph3084

end_hunk_4
begin_hunk_5_@bary_mul_toom3:bb.a
  %index.next3109 = add nuw i64 %index3106, 8     ; 2 uses
  %i.bie = icmp eq i64 %index.next3109, %n.vec3104
  br i1 %i.bie, label %middle.block3110, label %vector.body3105, !llvm.loop !128

middle.block3110:                                 ; preds = %vector.body3105
  %cmp.n3111 = icmp eq i64 %i.bhx, %n.vec3104
  br i1 %cmp.n3111, label %bary_2comp.exit1471, label %.lr.ph26.i1466.preheader3233

.lr.ph26.i1466.preheader3233:                     ; preds = %.lr.ph26.i1466.preheader, %middle.block3110
  %.125.i1467.ph = phi i64 [ %.124.i1464, %.lr.ph26.i1466.preheader ], [ %i.bhy, %middle.block3110 ]
  br label %.lr.ph26.i1466

.lr.ph26.i1466:                                   ; preds = %.lr.ph26.i1466.preheader3233, %.lr.ph26.i1466
  %.125.i1467 = phi i64 [ %.1.i1468, %.lr.ph26.i1466 ], [ %.125.i1467.ph, %.lr.ph26.i1466.preheader3233 ] ; 3 uses
  %i.bif = getelementptr [4 x i8], ptr %i.am, i64 %.125.i1467 ; 2 uses
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !7
  %i.bih = xor i32 %i.big, -1
  store i32 %i.bih, ptr %i.bif, align 4, !tbaa !7
  %.1.i1468 = add nuw i64 %.125.i1467, 1
  %exitcond31.not.i1469 = icmp eq i64 %.125.i1467, %i.j
  br i1 %exitcond31.not.i1469, label %bary_2comp.exit1471, label %.lr.ph26.i1466, !llvm.loop !129

bary_2comp.exit1471:                              ; preds = %.thread2522, %bb.bn, %.lr.ph26.i1466, %middle.block3110, %.lr.ph41.i, %.preheader.i, %bb.bh, %bb.bo, %bary_mulsub_1xN.exit
  %.not592 = phi i1 [ false, %middle.block3110 ], [ true, %bary_mulsub_1xN.exit ], [ false, %.lr.ph41.i ], [ false, %bb.bo ], [ false, %bb.bh ], [ false, %.preheader.i ], [ false, %bb.bn ], [ false, %.lr.ph26.i1466 ], [ false, %.thread2522 ]
  %.2 = phi i32 [ 1, %middle.block3110 ], [ 0, %bary_mulsub_1xN.exit ], [ 1, %.lr.ph41.i ], [ 1, %bb.bo ], [ 1, %bb.bh ], [ 1, %.preheader.i ], [ 1, %bb.bn ], [ 1, %.lr.ph26.i1466 ], [ 1, %.thread2522 ]
  %i.bii = icmp eq i32 %.0537, %.05341975
  br i1 %i.bii, label %.lr.ph.i.i1477.preheader, label %.lr.ph.i.i1508.preheader

.lr.ph.i.i1508.preheader:                         ; preds = %bary_2comp.exit1471
  %i.bij = icmp ult i64 %i.f, 3
  br i1 %i.bij, label %.lr.ph.i.i1508.epil, label %.lr.ph.i.i1508

.lr.ph.i.i1477.preheader:                         ; preds = %bary_2comp.exit1471
  %i.bik = icmp ult i64 %i.f, 3
  br i1 %i.bik, label %.lr.ph.i.i1477.epil, label %.lr.ph.i.i1477

.lr.ph.i.i1477:                                   ; preds = %.lr.ph.i.i1477.preheader, %.lr.ph.i.i1477
  %.05779.i.i1478 = phi i64 [ %i.bjg, %.lr.ph.i.i1477 ], [ 0, %.lr.ph.i.i1477.preheader ] ; 4 uses
  %.05878.i.i1479 = phi i64 [ %i.bjf, %.lr.ph.i.i1477 ], [ 0, %.lr.ph.i.i1477.preheader ]
  %niter3529 = phi i64 [ %niter3529.next.1, %.lr.ph.i.i1477 ], [ 0, %.lr.ph.i.i1477.preheader ]
  %i.bil = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1478 ; 2 uses
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !7
  %i.bin = zext i32 %i.bim to i64
  %i.bio = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1478
  %i.bip = load i32, ptr %i.bio, align 4, !tbaa !7
  %i.biq = zext i32 %i.bip to i64
  %i.bir = add nuw nsw i64 %.05878.i.i1479, %i.bin
  %i.bis = add nuw nsw i64 %i.bir, %i.biq         ; 2 uses
  %i.bit = trunc i64 %i.bis to i32
  store i32 %i.bit, ptr %i.bil, align 4, !tbaa !7
  %i.biu = lshr i64 %i.bis, 32
  %i.biv = or disjoint i64 %.05779.i.i1478, 1     ; 2 uses
  %i.biw = getelementptr [4 x i8], ptr %i.al, i64 %i.biv ; 2 uses
  %i.bix = load i32, ptr %i.biw, align 4, !tbaa !7
  %i.biy = zext i32 %i.bix to i64
  %i.biz = getelementptr [4 x i8], ptr %i.ak, i64 %i.biv
  %i.bja = load i32, ptr %i.biz, align 4, !tbaa !7
  %i.bjb = zext i32 %i.bja to i64
  %i.bjc = add nuw nsw i64 %i.biu, %i.biy
  %i.bjd = add nuw nsw i64 %i.bjc, %i.bjb         ; 2 uses
  %i.bje = trunc i64 %i.bjd to i32
  store i32 %i.bje, ptr %i.biw, align 4, !tbaa !7
  %i.bjf = lshr i64 %i.bjd, 32                    ; 2 uses
  %i.bjg = add nuw i64 %.05779.i.i1478, 2         ; 2 uses
  %niter3529.next.1 = add i64 %niter3529, 2       ; 2 uses
  %niter3529.ncmp.1 = icmp eq i64 %niter3529.next.1, %i.j
  br i1 %niter3529.ncmp.1, label %.lr.ph.i.i1477.epil, label %.lr.ph.i.i1477, !llvm.loop !34

.lr.ph.i.i1508:                                   ; preds = %.lr.ph.i.i1508.preheader, %.lr.ph.i.i1508
  %.078.i.i1509 = phi i64 [ %i.bkc, %.lr.ph.i.i1508 ], [ 0, %.lr.ph.i.i1508.preheader ] ; 4 uses
  %.06277.i.i1510 = phi i64 [ %i.bkb, %.lr.ph.i.i1508 ], [ 0, %.lr.ph.i.i1508.preheader ]
  %niter3523 = phi i64 [ %niter3523.next.1, %.lr.ph.i.i1508 ], [ 0, %.lr.ph.i.i1508.preheader ]
  %i.bjh = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1509 ; 2 uses
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !7
  %i.bjj = zext i32 %i.bji to i64
  %i.bjk = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1509
  %i.bjl = load i32, ptr %i.bjk, align 4, !tbaa !7
  %i.bjm = zext i32 %i.bjl to i64
  %i.bjn = sub nsw i64 %i.bjj, %i.bjm
  %i.bjo = add nsw i64 %i.bjn, %.06277.i.i1510    ; 2 uses
  %i.bjp = trunc i64 %i.bjo to i32
  store i32 %i.bjp, ptr %i.bjh, align 4, !tbaa !7
  %i.bjq = ashr i64 %i.bjo, 32
  %i.bjr = or disjoint i64 %.078.i.i1509, 1       ; 2 uses
  %i.bjs = getelementptr [4 x i8], ptr %i.al, i64 %i.bjr ; 2 uses
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !7
  %i.bju = zext i32 %i.bjt to i64
  %i.bjv = getelementptr [4 x i8], ptr %i.ak, i64 %i.bjr
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !7
  %i.bjx = zext i32 %i.bjw to i64
  %i.bjy = sub nsw i64 %i.bju, %i.bjx
  %i.bjz = add nsw i64 %i.bjy, %i.bjq             ; 2 uses
  %i.bka = trunc i64 %i.bjz to i32
  store i32 %i.bka, ptr %i.bjs, align 4, !tbaa !7
  %i.bkb = ashr i64 %i.bjz, 32                    ; 2 uses
  %i.bkc = add nuw i64 %.078.i.i1509, 2           ; 2 uses
  %niter3523.next.1 = add i64 %niter3523, 2       ; 2 uses
  %niter3523.ncmp.1 = icmp eq i64 %niter3523.next.1, %i.j
  br i1 %niter3523.ncmp.1, label %.lr.ph.i.i1508.epil, label %.lr.ph.i.i1508, !llvm.loop !48

.lr.ph.i.i1508.epil:                              ; preds = %.lr.ph.i.i1508.preheader, %.lr.ph.i.i1508
  %.078.i.i1509.epil.init = phi i64 [ 0, %.lr.ph.i.i1508.preheader ], [ %i.bkc, %.lr.ph.i.i1508 ] ; 2 uses
  %.06277.i.i1510.epil.init = phi i64 [ 0, %.lr.ph.i.i1508.preheader ], [ %i.bkb, %.lr.ph.i.i1508 ]
  %i.bkd = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1509.epil.init ; 2 uses
  %i.bke = load i32, ptr %i.bkd, align 4, !tbaa !7
  %i.bkf = zext i32 %i.bke to i64
  %i.bkg = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1509.epil.init
  %i.bkh = load i32, ptr %i.bkg, align 4, !tbaa !7
  %i.bki = zext i32 %i.bkh to i64
  %i.bkj = sub nsw i64 %i.bkf, %i.bki
  %i.bkk = add nsw i64 %i.bkj, %.06277.i.i1510.epil.init ; 2 uses
  %i.bkl = trunc i64 %i.bkk to i32
  store i32 %i.bkl, ptr %i.bkd, align 4, !tbaa !7
  %i.bkm = icmp ult i64 %i.bkk, 4294967296
  br i1 %i.bkm, label %bary_sub.exit1542.thread, label %.lr.ph.i1543

.lr.ph.i1543:                                     ; preds = %.lr.ph.i.i1508.epil, %bb.bp
  %.023.i1544 = phi i64 [ %i.bkp, %bb.bp ], [ 0, %.lr.ph.i.i1508.epil ] ; 6 uses
  %i.bkn = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1544
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !7 ; 2 uses
  %.not.i1545 = icmp eq i32 %i.bko, 0
  br i1 %.not.i1545, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i1543
  %i.bkp = add nuw i64 %.023.i1544, 1
  %exitcond.not.i1552 = icmp eq i64 %.023.i1544, %i.j
  br i1 %exitcond.not.i1552, label %bary_2comp.exit1553, label %.lr.ph.i1543, !llvm.loop !55

bb.bq:                                            ; preds = %.lr.ph.i1543
  %i.bkq = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1544
  %i.bkr = sub i32 0, %i.bko
  store i32 %i.bkr, ptr %i.bkq, align 4, !tbaa !7
  %.124.i1546 = add i64 %.023.i1544, 1            ; 4 uses
  %.not2019 = icmp ugt i64 %.124.i1546, %i.j
  br i1 %.not2019, label %bary_2comp.exit1553, label %.lr.ph26.i1548.preheader

.lr.ph26.i1548.preheader:                         ; preds = %bb.bq
  %i.bks = sub i64 %i.j, %.023.i1544              ; 3 uses
  %min.iters.check3114 = icmp ult i64 %i.bks, 8
  br i1 %min.iters.check3114, label %.lr.ph26.i1548.preheader3227, label %vector.ph3115

vector.ph3115:                                    ; preds = %.lr.ph26.i1548.preheader
  %n.vec3116 = and i64 %i.bks, -8                 ; 3 uses
  %i.bkt = add i64 %.124.i1546, %n.vec3116
  %i.bku = getelementptr [4 x i8], ptr %i.al, i64 %.124.i1546
  br label %vector.body3117

vector.body3117:                                  ; preds = %vector.body3117, %vector.ph3115
  %index3118 = phi i64 [ 0, %vector.ph3115 ], [ %index.next3121, %vector.body3117 ] ; 2 uses
  %i.bkv = getelementptr [4 x i8], ptr %i.bku, i64 %index3118 ; 3 uses
  %i.bkw = getelementptr i8, ptr %i.bkv, i64 16   ; 2 uses
  %wide.load3119 = load <4 x i32>, ptr %i.bkv, align 4, !tbaa !7
  %wide.load3120 = load <4 x i32>, ptr %i.bkw, align 4, !tbaa !7
  %i.bkx = xor <4 x i32> %wide.load3119, splat (i32 -1)
  %i.bky = xor <4 x i32> %wide.load3120, splat (i32 -1)
  store <4 x i32> %i.bkx, ptr %i.bkv, align 4, !tbaa !7
  store <4 x i32> %i.bky, ptr %i.bkw, align 4, !tbaa !7
  %index.next3121 = add nuw i64 %index3118, 8     ; 2 uses
  %i.bkz = icmp eq i64 %index.next3121, %n.vec3116
  br i1 %i.bkz, label %middle.block3122, label %vector.body3117, !llvm.loop !130

middle.block3122:                                 ; preds = %vector.body3117
  %cmp.n3123 = icmp eq i64 %i.bks, %n.vec3116
  br i1 %cmp.n3123, label %bary_2comp.exit1553, label %.lr.ph26.i1548.preheader3227

.lr.ph26.i1548.preheader3227:                     ; preds = %.lr.ph26.i1548.preheader, %middle.block3122
  %.125.i1549.ph = phi i64 [ %.124.i1546, %.lr.ph26.i1548.preheader ], [ %i.bkt, %middle.block3122 ]
  br label %.lr.ph26.i1548

.lr.ph26.i1548:                                   ; preds = %.lr.ph26.i1548.preheader3227, %.lr.ph26.i1548
  %.125.i1549 = phi i64 [ %.1.i1550, %.lr.ph26.i1548 ], [ %.125.i1549.ph, %.lr.ph26.i1548.preheader3227 ] ; 3 uses
  %i.bla = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1549 ; 2 uses
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !7
  %i.blc = xor i32 %i.blb, -1
  store i32 %i.blc, ptr %i.bla, align 4, !tbaa !7
  %.1.i1550 = add nuw i64 %.125.i1549, 1
  %exitcond31.not.i1551 = icmp eq i64 %.125.i1549, %i.j
  br i1 %exitcond31.not.i1551, label %bary_2comp.exit1553, label %.lr.ph26.i1548, !llvm.loop !131

bary_2comp.exit1553:                              ; preds = %bb.bp, %.lr.ph26.i1548, %middle.block3122, %bb.bq
  %i.bld = xor i1 %.0534.shrunk1973, true
  %i.ble = zext i1 %i.bld to i32
  br label %bary_sub.exit1542.thread

.lr.ph.i.i1477.epil:                              ; preds = %.lr.ph.i.i1477.preheader, %.lr.ph.i.i1477
  %.05779.i.i1478.epil.init = phi i64 [ 0, %.lr.ph.i.i1477.preheader ], [ %i.bjg, %.lr.ph.i.i1477 ] ; 2 uses
  %.05878.i.i1479.epil.init = phi i64 [ 0, %.lr.ph.i.i1477.preheader ], [ %i.bjf, %.lr.ph.i.i1477 ]
  %i.blf = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1478.epil.init ; 2 uses
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !7
  %i.blh = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1478.epil.init
  %i.bli = load i32, ptr %i.blh, align 4, !tbaa !7
  %i.blj = trunc nuw nsw i64 %.05878.i.i1479.epil.init to i32
  %i.blk = add i32 %i.blg, %i.blj
  %i.bll = add i32 %i.blk, %i.bli
  store i32 %i.bll, ptr %i.blf, align 4, !tbaa !7
  br label %bary_sub.exit1542.thread

bary_sub.exit1542.thread:                         ; preds = %.lr.ph.i.i1477.epil, %.lr.ph.i.i1508.epil, %bary_2comp.exit1553
  %.1535 = phi i32 [ %.05341975, %.lr.ph.i.i1508.epil ], [ %i.ble, %bary_2comp.exit1553 ], [ %.0537, %.lr.ph.i.i1477.epil ]
  %.not584 = icmp eq i32 %.1535, 0
  br i1 %.not584, label %.preheader72.i.i1610, label %bb.br

bb.br:                                            ; preds = %bary_sub.exit1542.thread
  br i1 %.not97.i.i, label %bary_2comp.exit1600, label %.lr.ph.i.i1555

.lr.ph.i.i1555:                                   ; preds = %bb.br, %.lr.ph.i.i1555
  %.078.i.i1556 = phi i64 [ %i.bmh, %.lr.ph.i.i1555 ], [ 0, %bb.br ] ; 4 uses
  %.06277.i.i1557 = phi i64 [ %i.bmg, %.lr.ph.i.i1555 ], [ 0, %bb.br ]
  %i.blm = getelementptr [4 x i8], ptr %i.al, i64 %.078.i.i1556 ; 2 uses
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !7
  %i.blo = zext i32 %i.bln to i64
  %i.blp = getelementptr [4 x i8], ptr %i.aj, i64 %.078.i.i1556
  %i.blq = load i32, ptr %i.blp, align 4, !tbaa !7
  %i.blr = zext i32 %i.blq to i64
  %i.bls = sub nsw i64 %i.blo, %i.blr
  %i.blt = add nsw i64 %i.bls, %.06277.i.i1557    ; 2 uses
  %i.blu = trunc i64 %i.blt to i32
  store i32 %i.blu, ptr %i.blm, align 4, !tbaa !7
  %i.blv = ashr i64 %i.blt, 32
  %i.blw = or disjoint i64 %.078.i.i1556, 1       ; 2 uses
  %i.blx = getelementptr [4 x i8], ptr %i.al, i64 %i.blw ; 2 uses
  %i.bly = load i32, ptr %i.blx, align 4, !tbaa !7
  %i.blz = zext i32 %i.bly to i64
  %i.bma = getelementptr [4 x i8], ptr %i.aj, i64 %i.blw
  %i.bmb = load i32, ptr %i.bma, align 4, !tbaa !7
  %i.bmc = zext i32 %i.bmb to i64
  %i.bmd = sub nsw i64 %i.blz, %i.bmc
  %i.bme = add nsw i64 %i.bmd, %i.blv             ; 2 uses
  %i.bmf = trunc i64 %i.bme to i32
  store i32 %i.bmf, ptr %i.blx, align 4, !tbaa !7
  %i.bmg = ashr i64 %i.bme, 32                    ; 2 uses
  %i.bmh = add nuw i64 %.078.i.i1556, 2           ; 2 uses
  %exitcond.not.i.i1558.1 = icmp eq i64 %i.bmh, %i.j
  br i1 %exitcond.not.i.i1558.1, label %._crit_edge.i.i1559, label %.lr.ph.i.i1555, !llvm.loop !48

._crit_edge.i.i1559:                              ; preds = %.lr.ph.i.i1555
  %i.bmi = icmp eq i64 %i.bmg, 0
  br i1 %i.bmi, label %bary_2comp.exit1600, label %.loopexit71.i.i1563

.loopexit71.i.i1563:                              ; preds = %._crit_edge.i.i1559
  %i.bmj = getelementptr [4 x i8], ptr %i.al, i64 %i.j ; 2 uses
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !7
  %i.bml = zext i32 %i.bmk to i64
  %i.bmm = add nsw i64 %i.bml, -1                 ; 2 uses
  %i.bmn = trunc i64 %i.bmm to i32
  store i32 %i.bmn, ptr %i.bmj, align 4, !tbaa !7
  %i.bmo = icmp ult i64 %i.bmm, 4294967296
  br i1 %i.bmo, label %bary_2comp.exit1600, label %.lr.ph.i1590

.lr.ph.i1590:                                     ; preds = %.loopexit71.i.i1563, %bb.bs
  %.023.i1591 = phi i64 [ %i.bmr, %bb.bs ], [ 0, %.loopexit71.i.i1563 ] ; 6 uses
  %i.bmp = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1591
  %i.bmq = load i32, ptr %i.bmp, align 4, !tbaa !7 ; 2 uses
  %.not.i1592 = icmp eq i32 %i.bmq, 0
  br i1 %.not.i1592, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.i1590
  %i.bmr = add nuw i64 %.023.i1591, 1
  %exitcond.not.i1599 = icmp eq i64 %.023.i1591, %i.j
  br i1 %exitcond.not.i1599, label %bary_2comp.exit1600, label %.lr.ph.i1590, !llvm.loop !55

bb.bt:                                            ; preds = %.lr.ph.i1590
  %i.bms = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1591
  %i.bmt = sub i32 0, %i.bmq
  store i32 %i.bmt, ptr %i.bms, align 4, !tbaa !7
  %.124.i1593 = add i64 %.023.i1591, 1            ; 4 uses
  %.not2020 = icmp ugt i64 %.124.i1593, %i.j
  br i1 %.not2020, label %bary_2comp.exit1600, label %.lr.ph26.i1595.preheader

.lr.ph26.i1595.preheader:                         ; preds = %bb.bt
  %i.bmu = sub i64 %i.j, %.023.i1591              ; 3 uses
  %min.iters.check3126 = icmp ult i64 %i.bmu, 8
  br i1 %min.iters.check3126, label %.lr.ph26.i1595.preheader3221, label %vector.ph3127

vector.ph3127:                                    ; preds = %.lr.ph26.i1595.preheader
  %n.vec3128 = and i64 %i.bmu, -8                 ; 3 uses
  %i.bmv = add i64 %.124.i1593, %n.vec3128
  %i.bmw = getelementptr [4 x i8], ptr %i.al, i64 %.124.i1593
  br label %vector.body3129

vector.body3129:                                  ; preds = %vector.body3129, %vector.ph3127
  %index3130 = phi i64 [ 0, %vector.ph3127 ], [ %index.next3133, %vector.body3129 ] ; 2 uses
  %i.bmx = getelementptr [4 x i8], ptr %i.bmw, i64 %index3130 ; 3 uses
  %i.bmy = getelementptr i8, ptr %i.bmx, i64 16   ; 2 uses
  %wide.load3131 = load <4 x i32>, ptr %i.bmx, align 4, !tbaa !7
  %wide.load3132 = load <4 x i32>, ptr %i.bmy, align 4, !tbaa !7
  %i.bmz = xor <4 x i32> %wide.load3131, splat (i32 -1)
  %i.bna = xor <4 x i32> %wide.load3132, splat (i32 -1)
  store <4 x i32> %i.bmz, ptr %i.bmx, align 4, !tbaa !7
  store <4 x i32> %i.bna, ptr %i.bmy, align 4, !tbaa !7
  %index.next3133 = add nuw i64 %index3130, 8     ; 2 uses
  %i.bnb = icmp eq i64 %index.next3133, %n.vec3128
  br i1 %i.bnb, label %middle.block3134, label %vector.body3129, !llvm.loop !132

middle.block3134:                                 ; preds = %vector.body3129
  %cmp.n3135 = icmp eq i64 %i.bmu, %n.vec3128
  br i1 %cmp.n3135, label %bary_2comp.exit1600, label %.lr.ph26.i1595.preheader3221

.lr.ph26.i1595.preheader3221:                     ; preds = %.lr.ph26.i1595.preheader, %middle.block3134
  %.125.i1596.ph = phi i64 [ %.124.i1593, %.lr.ph26.i1595.preheader ], [ %i.bmv, %middle.block3134 ]
  br label %.lr.ph26.i1595

.lr.ph26.i1595:                                   ; preds = %.lr.ph26.i1595.preheader3221, %.lr.ph26.i1595
  %.125.i1596 = phi i64 [ %.1.i1597, %.lr.ph26.i1595 ], [ %.125.i1596.ph, %.lr.ph26.i1595.preheader3221 ] ; 3 uses
  %i.bnc = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1596 ; 2 uses
  %i.bnd = load i32, ptr %i.bnc, align 4, !tbaa !7
  %i.bne = xor i32 %i.bnd, -1
  store i32 %i.bne, ptr %i.bnc, align 4, !tbaa !7
  %.1.i1597 = add nuw i64 %.125.i1596, 1
  %exitcond31.not.i1598 = icmp eq i64 %.125.i1596, %i.j
  br i1 %exitcond31.not.i1598, label %bary_2comp.exit1600, label %.lr.ph26.i1595, !llvm.loop !133

.preheader72.i.i1610:                             ; preds = %bary_sub.exit1542.thread
  br i1 %.not97.i.i, label %bary_2comp.exit1600, label %.lr.ph.i.i1606

.lr.ph.i.i1606:                                   ; preds = %.preheader72.i.i1610, %.lr.ph.i.i1606
  %.05779.i.i1607 = phi i64 [ %i.boa, %.lr.ph.i.i1606 ], [ 0, %.preheader72.i.i1610 ] ; 4 uses
  %.05878.i.i1608 = phi i64 [ %i.bnz, %.lr.ph.i.i1606 ], [ 0, %.preheader72.i.i1610 ]
  %i.bnf = getelementptr [4 x i8], ptr %i.aj, i64 %.05779.i.i1607
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !7
  %i.bnh = zext i32 %i.bng to i64
  %i.bni = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1607 ; 2 uses
  %i.bnj = load i32, ptr %i.bni, align 4, !tbaa !7
  %i.bnk = zext i32 %i.bnj to i64
  %i.bnl = add nuw nsw i64 %.05878.i.i1608, %i.bnh
  %i.bnm = add nuw nsw i64 %i.bnl, %i.bnk         ; 2 uses
  %i.bnn = trunc i64 %i.bnm to i32
  store i32 %i.bnn, ptr %i.bni, align 4, !tbaa !7
  %i.bno = lshr i64 %i.bnm, 32
  %i.bnp = or disjoint i64 %.05779.i.i1607, 1     ; 2 uses
  %i.bnq = getelementptr [4 x i8], ptr %i.aj, i64 %i.bnp
  %i.bnr = load i32, ptr %i.bnq, align 4, !tbaa !7
  %i.bns = zext i32 %i.bnr to i64
  %i.bnt = getelementptr [4 x i8], ptr %i.al, i64 %i.bnp ; 2 uses
  %i.bnu = load i32, ptr %i.bnt, align 4, !tbaa !7
  %i.bnv = zext i32 %i.bnu to i64
  %i.bnw = add nuw nsw i64 %i.bno, %i.bns
  %i.bnx = add nuw nsw i64 %i.bnw, %i.bnv         ; 2 uses
  %i.bny = trunc i64 %i.bnx to i32
  store i32 %i.bny, ptr %i.bnt, align 4, !tbaa !7
  %i.bnz = lshr i64 %i.bnx, 32                    ; 2 uses
  %i.boa = add nuw i64 %.05779.i.i1607, 2         ; 2 uses
  %exitcond.not.i.i1609.1 = icmp eq i64 %i.boa, %i.j
  br i1 %exitcond.not.i.i1609.1, label %.lr.ph83.i.i1631, label %.lr.ph.i.i1606, !llvm.loop !34

.lr.ph83.i.i1631:                                 ; preds = %.lr.ph.i.i1606
  %61 = icmp eq i64 %i.bnz, 0
  br i1 %61, label %bary_2comp.exit1600, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph83.i.i1631
  %i.bob = getelementptr [4 x i8], ptr %i.al, i64 %i.j ; 2 uses
  %i.boc = load i32, ptr %i.bob, align 4, !tbaa !7
  %i.bod = add i32 %i.boc, 1
  store i32 %i.bod, ptr %i.bob, align 4, !tbaa !7
  br label %bary_2comp.exit1600, !llvm.loop !36

bary_2comp.exit1600:                              ; preds = %bb.bs, %.lr.ph26.i1595, %middle.block3134, %.preheader72.i.i1610, %bb.br, %._crit_edge.i.i1559, %.lr.ph83.i.i1631, %bb.bu, %.loopexit71.i.i1563, %bb.bt
  %.not591 = phi i1 [ false, %bb.br ], [ false, %.loopexit71.i.i1563 ], [ true, %.lr.ph83.i.i1631 ], [ true, %bb.bt ], [ false, %._crit_edge.i.i1559 ], [ true, %bb.bu ], [ true, %.preheader72.i.i1610 ], [ true, %middle.block3134 ], [ true, %.lr.ph26.i1595 ], [ true, %bb.bs ]
  %i.boe = icmp eq i32 %.0537, %.2
  br i1 %i.boe, label %.lr.ph.i.i1637.preheader, label %.lr.ph.i.i1688.preheader

.lr.ph.i.i1688.preheader:                         ; preds = %bary_2comp.exit1600
  %i.bof = icmp ult i64 %i.f, 3
  br i1 %i.bof, label %.lr.ph.i.i1688.epil, label %.lr.ph.i.i1688

.lr.ph.i.i1637.preheader:                         ; preds = %bary_2comp.exit1600
  %i.bog = icmp ult i64 %i.f, 3
  br i1 %i.bog, label %.lr.ph.i.i1637.epil, label %.lr.ph.i.i1637

.lr.ph.i.i1637:                                   ; preds = %.lr.ph.i.i1637.preheader, %.lr.ph.i.i1637
  %.078.i.i1638 = phi i64 [ %i.bpc, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ] ; 4 uses
  %.06277.i.i1639 = phi i64 [ %i.bpb, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ]
  %niter3542 = phi i64 [ %niter3542.next.1, %.lr.ph.i.i1637 ], [ 0, %.lr.ph.i.i1637.preheader ]
  %i.boh = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1638 ; 2 uses
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !7
  %i.boj = zext i32 %i.boi to i64
  %i.bok = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1638
  %i.bol = load i32, ptr %i.bok, align 4, !tbaa !7
  %i.bom = zext i32 %i.bol to i64
  %i.bon = sub nsw i64 %i.boj, %i.bom
  %i.boo = add nsw i64 %i.bon, %.06277.i.i1639    ; 2 uses
  %i.bop = trunc i64 %i.boo to i32
  store i32 %i.bop, ptr %i.boh, align 4, !tbaa !7
  %i.boq = ashr i64 %i.boo, 32
  %i.bor = or disjoint i64 %.078.i.i1638, 1       ; 2 uses
  %i.bos = getelementptr [4 x i8], ptr %i.ak, i64 %i.bor ; 2 uses
  %i.bot = load i32, ptr %i.bos, align 4, !tbaa !7
  %i.bou = zext i32 %i.bot to i64
  %i.bov = getelementptr [4 x i8], ptr %i.am, i64 %i.bor
  %i.bow = load i32, ptr %i.bov, align 4, !tbaa !7
  %i.box = zext i32 %i.bow to i64
  %i.boy = sub nsw i64 %i.bou, %i.box
  %i.boz = add nsw i64 %i.boy, %i.boq             ; 2 uses
  %i.bpa = trunc i64 %i.boz to i32
  store i32 %i.bpa, ptr %i.bos, align 4, !tbaa !7
  %i.bpb = ashr i64 %i.boz, 32                    ; 2 uses
  %i.bpc = add nuw i64 %.078.i.i1638, 2           ; 2 uses
  %niter3542.next.1 = add i64 %niter3542, 2       ; 2 uses
  %niter3542.ncmp.1 = icmp eq i64 %niter3542.next.1, %i.j
  br i1 %niter3542.ncmp.1, label %.lr.ph.i.i1637.epil, label %.lr.ph.i.i1637, !llvm.loop !48

.lr.ph.i.i1637.epil:                              ; preds = %.lr.ph.i.i1637.preheader, %.lr.ph.i.i1637
  %.078.i.i1638.epil.init = phi i64 [ 0, %.lr.ph.i.i1637.preheader ], [ %i.bpc, %.lr.ph.i.i1637 ] ; 2 uses
  %.06277.i.i1639.epil.init = phi i64 [ 0, %.lr.ph.i.i1637.preheader ], [ %i.bpb, %.lr.ph.i.i1637 ]
  %i.bpd = getelementptr [4 x i8], ptr %i.ak, i64 %.078.i.i1638.epil.init ; 2 uses
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !7
  %i.bpf = zext i32 %i.bpe to i64
  %i.bpg = getelementptr [4 x i8], ptr %i.am, i64 %.078.i.i1638.epil.init
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !7
  %i.bpi = zext i32 %i.bph to i64
  %i.bpj = sub nsw i64 %i.bpf, %i.bpi
  %i.bpk = add nsw i64 %i.bpj, %.06277.i.i1639.epil.init ; 2 uses
  %i.bpl = trunc i64 %i.bpk to i32
  store i32 %i.bpl, ptr %i.bpd, align 4, !tbaa !7
  %i.bpm = icmp ult i64 %i.bpk, 4294967296
  br i1 %i.bpm, label %bary_2comp.exit1682, label %.lr.ph.i1672

.lr.ph.i1672:                                     ; preds = %.lr.ph.i.i1637.epil, %bb.bv
  %.023.i1673 = phi i64 [ %i.bpp, %bb.bv ], [ 0, %.lr.ph.i.i1637.epil ] ; 6 uses
  %i.bpn = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1673
  %i.bpo = load i32, ptr %i.bpn, align 4, !tbaa !7 ; 2 uses
  %.not.i1674 = icmp eq i32 %i.bpo, 0
  br i1 %.not.i1674, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.lr.ph.i1672
  %i.bpp = add nuw i64 %.023.i1673, 1
  %exitcond.not.i1681 = icmp eq i64 %.023.i1673, %i.j
  br i1 %exitcond.not.i1681, label %bary_2comp.exit1682, label %.lr.ph.i1672, !llvm.loop !55

bb.bw:                                            ; preds = %.lr.ph.i1672
  %i.bpq = getelementptr [4 x i8], ptr %i.ak, i64 %.023.i1673
  %i.bpr = sub i32 0, %i.bpo
  store i32 %i.bpr, ptr %i.bpq, align 4, !tbaa !7
  %.124.i1675 = add i64 %.023.i1673, 1            ; 4 uses
  %.not2021 = icmp ugt i64 %.124.i1675, %i.j
  br i1 %.not2021, label %bary_2comp.exit1682, label %.lr.ph26.i1677.preheader

.lr.ph26.i1677.preheader:                         ; preds = %bb.bw
  %i.bps = sub i64 %i.j, %.023.i1673              ; 3 uses
  %min.iters.check3138 = icmp ult i64 %i.bps, 8
  br i1 %min.iters.check3138, label %.lr.ph26.i1677.preheader3213, label %vector.ph3139

vector.ph3139:                                    ; preds = %.lr.ph26.i1677.preheader
  %n.vec3140 = and i64 %i.bps, -8                 ; 3 uses
  %i.bpt = add i64 %.124.i1675, %n.vec3140
  %i.bpu = getelementptr [4 x i8], ptr %i.ak, i64 %.124.i1675
  br label %vector.body3141

vector.body3141:                                  ; preds = %vector.body3141, %vector.ph3139
  %index3142 = phi i64 [ 0, %vector.ph3139 ], [ %index.next3145, %vector.body3141 ] ; 2 uses
  %i.bpv = getelementptr [4 x i8], ptr %i.bpu, i64 %index3142 ; 3 uses
  %i.bpw = getelementptr i8, ptr %i.bpv, i64 16   ; 2 uses
  %wide.load3143 = load <4 x i32>, ptr %i.bpv, align 4, !tbaa !7
  %wide.load3144 = load <4 x i32>, ptr %i.bpw, align 4, !tbaa !7
  %i.bpx = xor <4 x i32> %wide.load3143, splat (i32 -1)
  %i.bpy = xor <4 x i32> %wide.load3144, splat (i32 -1)
  store <4 x i32> %i.bpx, ptr %i.bpv, align 4, !tbaa !7
  store <4 x i32> %i.bpy, ptr %i.bpw, align 4, !tbaa !7
  %index.next3145 = add nuw i64 %index3142, 8     ; 2 uses
  %i.bpz = icmp eq i64 %index.next3145, %n.vec3140
  br i1 %i.bpz, label %middle.block3146, label %vector.body3141, !llvm.loop !134

middle.block3146:                                 ; preds = %vector.body3141
  %cmp.n3147 = icmp eq i64 %i.bps, %n.vec3140
  br i1 %cmp.n3147, label %bary_2comp.exit1682, label %.lr.ph26.i1677.preheader3213

.lr.ph26.i1677.preheader3213:                     ; preds = %.lr.ph26.i1677.preheader, %middle.block3146
  %.125.i1678.ph = phi i64 [ %.124.i1675, %.lr.ph26.i1677.preheader ], [ %i.bpt, %middle.block3146 ]
  br label %.lr.ph26.i1677

.lr.ph26.i1677:                                   ; preds = %.lr.ph26.i1677.preheader3213, %.lr.ph26.i1677
  %.125.i1678 = phi i64 [ %.1.i1679, %.lr.ph26.i1677 ], [ %.125.i1678.ph, %.lr.ph26.i1677.preheader3213 ] ; 3 uses
  %i.bqa = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1678 ; 2 uses
  %i.bqb = load i32, ptr %i.bqa, align 4, !tbaa !7
  %i.bqc = xor i32 %i.bqb, -1
  store i32 %i.bqc, ptr %i.bqa, align 4, !tbaa !7
  %.1.i1679 = add nuw i64 %.125.i1678, 1
  %exitcond31.not.i1680 = icmp eq i64 %.125.i1678, %i.j
  br i1 %exitcond31.not.i1680, label %bary_2comp.exit1682, label %.lr.ph26.i1677, !llvm.loop !135

.lr.ph.i.i1688:                                   ; preds = %.lr.ph.i.i1688.preheader, %.lr.ph.i.i1688
  %.05779.i.i1689 = phi i64 [ %i.bqy, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ] ; 4 uses
  %.05878.i.i1690 = phi i64 [ %i.bqx, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ]
  %niter3535 = phi i64 [ %niter3535.next.1, %.lr.ph.i.i1688 ], [ 0, %.lr.ph.i.i1688.preheader ]
  %i.bqd = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1689 ; 2 uses
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !7
  %i.bqf = zext i32 %i.bqe to i64
  %i.bqg = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1689
  %i.bqh = load i32, ptr %i.bqg, align 4, !tbaa !7
  %i.bqi = zext i32 %i.bqh to i64
  %i.bqj = add nuw nsw i64 %.05878.i.i1690, %i.bqf
  %i.bqk = add nuw nsw i64 %i.bqj, %i.bqi         ; 2 uses
  %i.bql = trunc i64 %i.bqk to i32
  store i32 %i.bql, ptr %i.bqd, align 4, !tbaa !7
  %i.bqm = lshr i64 %i.bqk, 32
  %i.bqn = or disjoint i64 %.05779.i.i1689, 1     ; 2 uses
  %i.bqo = getelementptr [4 x i8], ptr %i.ak, i64 %i.bqn ; 2 uses
  %i.bqp = load i32, ptr %i.bqo, align 4, !tbaa !7
  %i.bqq = zext i32 %i.bqp to i64
  %i.bqr = getelementptr [4 x i8], ptr %i.am, i64 %i.bqn
  %i.bqs = load i32, ptr %i.bqr, align 4, !tbaa !7
  %i.bqt = zext i32 %i.bqs to i64
  %i.bqu = add nuw nsw i64 %i.bqm, %i.bqq
  %i.bqv = add nuw nsw i64 %i.bqu, %i.bqt         ; 2 uses
  %i.bqw = trunc i64 %i.bqv to i32
  store i32 %i.bqw, ptr %i.bqo, align 4, !tbaa !7
  %i.bqx = lshr i64 %i.bqv, 32                    ; 2 uses
  %i.bqy = add nuw i64 %.05779.i.i1689, 2         ; 2 uses
  %niter3535.next.1 = add i64 %niter3535, 2       ; 2 uses
  %niter3535.ncmp.1 = icmp eq i64 %niter3535.next.1, %i.j
  br i1 %niter3535.ncmp.1, label %.lr.ph.i.i1688.epil, label %.lr.ph.i.i1688, !llvm.loop !34

.lr.ph.i.i1688.epil:                              ; preds = %.lr.ph.i.i1688.preheader, %.lr.ph.i.i1688
  %.05779.i.i1689.epil.init = phi i64 [ 0, %.lr.ph.i.i1688.preheader ], [ %i.bqy, %.lr.ph.i.i1688 ] ; 2 uses
  %.05878.i.i1690.epil.init = phi i64 [ 0, %.lr.ph.i.i1688.preheader ], [ %i.bqx, %.lr.ph.i.i1688 ]
  %i.bqz = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1689.epil.init ; 2 uses
  %i.bra = load i32, ptr %i.bqz, align 4, !tbaa !7
  %i.brb = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1689.epil.init
  %i.brc = load i32, ptr %i.brb, align 4, !tbaa !7
  %i.brd = trunc nuw nsw i64 %.05878.i.i1690.epil.init to i32
  %i.bre = add i32 %i.bra, %i.brd
  %i.brf = add i32 %i.bre, %i.brc
  store i32 %i.brf, ptr %i.bqz, align 4, !tbaa !7
  br label %bary_2comp.exit1682

bary_2comp.exit1682:                              ; preds = %bb.bv, %.lr.ph26.i1677, %.lr.ph.i.i1688.epil, %middle.block3146, %.lr.ph.i.i1637.epil, %bb.bw
  %.1538 = phi i32 [ %.0537, %.lr.ph.i.i1637.epil ], [ %.not587, %middle.block3146 ], [ %.0537, %.lr.ph.i.i1688.epil ], [ %.not587, %bb.bw ], [ %.not587, %.lr.ph26.i1677 ], [ %.not587, %bb.bv ]
  %i.brg = icmp ugt i64 %i.f, 6917529027641081855
  br i1 %i.brg, label %bb.bx, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.bx:                                            ; preds = %bary_2comp.exit1682
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.j) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bary_2comp.exit1682
  %i.brh = shl i64 %i.g, 3                        ; 4 uses
  %.not.i1718 = icmp eq i64 %i.brh, 0             ; 2 uses
  br i1 %.not.i1718, label %ruby_nonempty_memcpy.exit, label %bb.by

bb.by:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0560, ptr noundef nonnull readonly align 1 %i.af, i64 noundef range(i64 1, 0) %i.brh, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.by
  %i.bri = getelementptr [4 x i8], ptr %.0560, i64 %i.j ; 26 uses
  br i1 %.not97.i.i, label %rbimpl_size_mul_or_raise.exit1719, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memset.p0.i64(ptr align 4 %i.bri, i8 0, i64 %i.brh, i1 false), !tbaa !7
  br label %rbimpl_size_mul_or_raise.exit1719

rbimpl_size_mul_or_raise.exit1719:                ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %.idx = shl i64 %i.g, 4
  %i.brj = getelementptr i8, ptr %.0560, i64 %.idx ; 2 uses
  br i1 %.not.i1718, label %ruby_nonempty_memcpy.exit1722, label %bb.bz

bb.bz:                                            ; preds = %rbimpl_size_mul_or_raise.exit1719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.brj, ptr noundef nonnull readonly align 1 %i.aj, i64 noundef range(i64 1, 0) %i.brh, i1 noundef false) #23
end_hunk_5
begin_hunk_6_@bary_mul_precheck:bb.a
  %i.ak = icmp ugt i64 %.3116, 4611686018427387903
  br i1 %i.ak, label %bb.l, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.l:                                             ; preds = %bb.k
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.3116) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.k
  %.not.i = icmp eq i64 %.3116, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.m

bb.m:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.al = shl nuw i64 %.3116, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0128, ptr noundef nonnull readonly align 1 %.2119, i64 noundef range(i64 1, 0) %i.al, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.m
  %.not144176 = icmp eq i64 %.0127, %.3116
  br i1 %.not144176, label %bary_mul_normal.exit, label %.lr.ph179.preheader

.lr.ph179.preheader:                              ; preds = %ruby_nonempty_memcpy.exit
  %i.am = getelementptr [4 x i8], ptr %.0128, i64 %.3116
  %i.an = sub i64 %.0127, %.3116
  %i.ao = shl i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %i.ao, i1 false), !tbaa !7
  br label %bary_mul_normal.exit

bb.n:                                             ; preds = %bb.j
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ai)
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not.i146 = icmp eq i64 %.3116, 0
  br i1 %.not.i146, label %bary_small_lshift.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.ar = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 false)
  %i.as = sub nsw i32 31, %i.ar
  %i.at = zext nneg i32 %i.as to i64              ; 5 uses
  %xtraiter237 = and i64 %.3116, 3                ; 3 uses
  %i.au = icmp ult i64 %.3116, 4
  br i1 %i.au, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter241 = and i64 %.3116, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %.015.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ca, %bb.p ]
  %.01013.i = phi ptr [ %.0128, %.lr.ph.i.new ], [ %i.bz, %bb.p ] ; 5 uses
  %.01112.i = phi ptr [ %.2119, %.lr.ph.i.new ], [ %i.bt, %bb.p ] ; 5 uses
  %niter242 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter242.next.3, %bb.p ]
  %i.av = getelementptr i8, ptr %.01112.i, i64 4
  %i.aw = load i32, ptr %.01112.i, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl i64 %i.ax, %i.at                    ; 2 uses
  %i.az = or i64 %i.ay, %.015.i
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr i8, ptr %.01013.i, i64 4
  store i32 %i.ba, ptr %.01013.i, align 4, !tbaa !7
  %i.bc = lshr i64 %i.ay, 32
  %i.bd = getelementptr i8, ptr %.01112.i, i64 8
  %i.be = load i32, ptr %i.av, align 4, !tbaa !7
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl i64 %i.bf, %i.at                    ; 2 uses
  %i.bh = or i64 %i.bg, %i.bc
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !7
  %i.bk = lshr i64 %i.bg, 32
  %i.bl = getelementptr i8, ptr %.01112.i, i64 12
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl i64 %i.bn, %i.at                    ; 2 uses
  %i.bp = or i64 %i.bo, %i.bk
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.bq, ptr %i.bj, align 4, !tbaa !7
  %i.bs = lshr i64 %i.bo, 32
  %i.bt = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl i64 %i.bv, %i.at                    ; 2 uses
  %i.bx = or i64 %i.bw, %i.bs
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.by, ptr %i.br, align 4, !tbaa !7
  %i.ca = lshr i64 %i.bw, 32                      ; 3 uses
  %niter242.next.3 = add i64 %niter242, 4         ; 2 uses
  %niter242.ncmp.3 = icmp eq i64 %niter242.next.3, %unroll_iter241
  br i1 %niter242.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.p, !llvm.loop !88

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.p
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ca, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %.0128, %.lr.ph.i ], [ %i.bz, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %.2119, %.lr.ph.i ], [ %i.bt, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod240 = icmp ne i64 %xtraiter237, 0
  tail call void @llvm.assume(i1 %lcmp.mod240)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %.015.i.epil = phi i64 [ %.015.i.epil.init, %.epil.preheader ], [ %i.ci, %bb.q ]
  %.01013.i.epil = phi ptr [ %.01013.i.epil.init, %.epil.preheader ], [ %i.ch, %bb.q ] ; 2 uses
  %.01112.i.epil = phi ptr [ %.01112.i.epil.init, %.epil.preheader ], [ %i.cb, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.cb = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.cc = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl i64 %i.cd, %i.at                    ; 2 uses
  %i.cf = or i64 %i.ce, %.015.i.epil
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.cg, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.ci = lshr i64 %i.ce, 32                      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter237
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.q, !llvm.loop !414

._crit_edge.loopexit.i:                           ; preds = %bb.q, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ca, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ci, %bb.q ]
  %i.cj = trunc nuw i64 %.lcssa to i32
  br label %bary_small_lshift.exit

bary_small_lshift.exit:                           ; preds = %bb.o, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.o ], [ %i.cj, %._crit_edge.loopexit.i ]
  %i.ck = getelementptr [4 x i8], ptr %.0128, i64 %.3116
  store i32 %.0.lcssa.i, ptr %i.ck, align 4, !tbaa !7
  %i.cl = xor i64 %.3116, -1
  %i.cm = add i64 %.0127, %i.cl                   ; 2 uses
  %.not143172 = icmp eq i64 %i.cm, 0
  br i1 %.not143172, label %bary_mul_normal.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %bary_small_lshift.exit
  %i.cn = shl i64 %.3116, 2
  %i.co = getelementptr i8, ptr %.0128, i64 %i.cn
  %scevgep203 = getelementptr i8, ptr %i.co, i64 4
  %i.cp = shl nuw i64 %i.cm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep203, i8 0, i64 %i.cp, i1 false), !tbaa !7
  br label %bary_mul_normal.exit

bb.r:                                             ; preds = %bb.n
  %i.cq = icmp eq i64 %.3116, 1
  br i1 %i.cq, label %bb.w, label %.split

.split:                                           ; preds = %bb.r
  %.not17.i = icmp eq i64 %.0127, 0
  br i1 %.not17.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.cr = shl nuw i64 %.0127, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0128, i8 0, i64 %i.cr, i1 false), !tbaa !7
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %.split
  %.not43.i.i = icmp eq i64 %.3116, 0
  br i1 %.not43.i.i, label %bary_mul_normal.exit, label %.lr.ph21.split.i.preheader

.lr.ph21.split.i.preheader:                       ; preds = %.preheader.i
  %i.cs = load i32, ptr %.2126, align 4, !tbaa !7 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bary_mul_normal.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph21.split.i.preheader
  %i.cu = zext i32 %i.cs to i64                   ; 3 uses
  %xtraiter = and i64 %.3116, 1
  %unroll_iter = and i64 %.3116, -2
  br label %.lr.ph.i.i

.preheader.i.i.unr-lcssa:                         ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.unr-lcssa
  %lcmp.mod236 = trunc i64 %.3116 to i1
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.cv = getelementptr [4 x i8], ptr %.2119, i64 %i.ee
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cu
  %i.cz = add nuw i64 %i.cy, %.131.i.i.1          ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.epil, label %.preheader.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.da = getelementptr [4 x i8], ptr %.0128, i64 %i.ee ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw i64 %i.cz, %i.dc                ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %i.da, align 4, !tbaa !7
  %i.df = lshr i64 %i.dd, 32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i.epil.preheader, %bb.s, %.preheader.i.i.unr-lcssa
  %.131.i.i.lcssa = phi i64 [ %.131.i.i.1, %.preheader.i.i.unr-lcssa ], [ %i.df, %bb.s ], [ 0, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %6 = icmp uge i64 %.3116, %.0127
  %i.dg = icmp eq i64 %.131.i.i.lcssa, 0
  %or.cond38.i.i = select i1 %6, i1 true, i1 %i.dg
  br i1 %or.cond38.i.i, label %bary_mul_normal.exit, label %.lr.ph41.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.preheader.i
  %.036.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.ee, %bb.v ] ; 4 uses
  %.03035.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %.131.i.i.1, %bb.v ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %niter.next.1, %bb.v ]
  %i.dh = getelementptr [4 x i8], ptr %.2119, i64 %.036.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw i64 %i.dj, %i.cu
  %i.dl = add nuw i64 %i.dk, %.03035.i.i          ; 2 uses
  %.not.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.dm = getelementptr [4 x i8], ptr %.0128, i64 %.036.i.i ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw i64 %i.dl, %i.do                ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !7
  %i.dr = lshr i64 %i.dp, 32
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.t, %.lr.ph.i.i
  %.131.i.i = phi i64 [ %i.dr, %bb.t ], [ 0, %.lr.ph.i.i ]
  %i.ds = or disjoint i64 %.036.i.i, 1            ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %.2119, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.cu
  %i.dx = add nuw i64 %i.dw, %.131.i.i            ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.1
  %i.dy = getelementptr [4 x i8], ptr %.0128, i64 %i.ds ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add nuw i64 %i.dx, %i.ea                ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !7
  %i.ed = lshr i64 %i.eb, 32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.1
  %.131.i.i.1 = phi i64 [ %i.ed, %bb.u ], [ 0, %.lr.ph.i.i.1 ] ; 3 uses
  %i.ee = add nuw i64 %.036.i.i, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !16

.lr.ph41.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph41.i.i
  %.140.i.i = phi i64 [ %i.el, %.lr.ph41.i.i ], [ %.3116, %.preheader.i.i ] ; 2 uses
  %.239.i.i = phi i64 [ %i.ek, %.lr.ph41.i.i ], [ %.131.i.i.lcssa, %.preheader.i.i ]
  %i.ef = getelementptr [4 x i8], ptr %.0128, i64 %.140.i.i ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %.239.i.i, %i.eh        ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !7
  %i.ek = lshr i64 %i.ei, 32                      ; 2 uses
  %i.el = add nuw i64 %.140.i.i, 1                ; 2 uses
  %i.em = icmp uge i64 %i.el, %.0127
  %i.en = icmp eq i64 %i.ek, 0
  %or.cond.i.i = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond.i.i, label %bary_mul_normal.exit, label %.lr.ph41.i.i, !llvm.loop !18

bb.w:                                             ; preds = %bb.r
  %i.eo = load i32, ptr %.2119, align 4, !tbaa !7
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %bb.x, label %.split129

.split129:                                        ; preds = %bb.w
  tail call fastcc void @bary_mul_normal(ptr noundef %.0128, i64 noundef %.0127, ptr noundef nonnull %.2126, i64 noundef 1, ptr noundef nonnull %.2119, i64 noundef 1)
  br label %bary_mul_normal.exit

bb.x:                                             ; preds = %bb.w
  store i32 %i.ai, ptr %.0128, align 4, !tbaa !7
  %.not142168 = icmp eq i64 %.0127, 1
  br i1 %.not142168, label %bary_mul_normal.exit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.x
  %scevgep202 = getelementptr i8, ptr %.0128, i64 4
  %i.eq = shl i64 %.0127, 2
  %i.er = add i64 %i.eq, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep202, i8 0, i64 %i.er, i1 false), !tbaa !7
  br label %bary_mul_normal.exit

bb.y:                                             ; preds = %bb.h
  store ptr %.0128, ptr %0, align 8, !tbaa !43
  store i64 %.0127, ptr %1, align 8, !tbaa !11
  store ptr %.2126, ptr %2, align 8, !tbaa !43
  store i64 %.3123, ptr %3, align 8, !tbaa !11
  store ptr %.2119, ptr %4, align 8, !tbaa !43
  store i64 %.3116, ptr %5, align 8, !tbaa !11
  br label %bary_mul_normal.exit

bary_mul_normal.exit:                             ; preds = %.lr.ph41.i.i, %.lr.ph21.split.i.preheader, %.preheader.i.i, %.lr.ph171.preheader, %.lr.ph175.preheader, %.lr.ph179.preheader, %.lr.ph183.preheader, %bb.x, %bary_small_lshift.exit, %ruby_nonempty_memcpy.exit, %.preheader, %.preheader.i, %.split129, %bb.y
  %.0109 = phi i32 [ 0, %bb.y ], [ 1, %bary_small_lshift.exit ], [ 1, %.lr.ph171.preheader ], [ 1, %.preheader ], [ 1, %ruby_nonempty_memcpy.exit ], [ 1, %.split129 ], [ 1, %.preheader.i ], [ 1, %bb.x ], [ 1, %.lr.ph183.preheader ], [ 1, %.lr.ph179.preheader ], [ 1, %.lr.ph175.preheader ], [ 1, %.lr.ph21.split.i.preheader ], [ 1, %.preheader.i.i ], [ 1, %.lr.ph41.i.i ]
  ret i32 %.0109
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bary_mul_karatsuba_branch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %3, 70
  br i1 %i.a, label %bary_sparse_p.exit.thread81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %3, 1
  %i.c = udiv i64 %i.b, 5
  %i.d = getelementptr [4 x i8], ptr %2, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %.not.i = icmp ne i32 %i.e, 0                   ; 2 uses
  %spec.select.i = zext i1 %.not.i to i64
  %i.f = lshr i64 %3, 1
  %i.g = getelementptr [4 x i8], ptr %2, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %.not11.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i, i64 2, i64 1
  %.1.i = select i1 %.not11.i, i64 %spec.select.i, i64 %i.i ; 2 uses
  %i.j = icmp samesign ult i64 %.1.i, 2
  br i1 %i.j, label %bb.c, label %bary_sparse_p.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = mul i64 %3, 3
  %i.l = udiv i64 %i.k, 5
  %i.m = getelementptr [4 x i8], ptr %2, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %.not12.i = icmp ne i32 %i.n, 0
  %.not89 = icmp eq i64 %.1.i, 1
  %or.cond90 = and i1 %.not89, %.not12.i
  br i1 %or.cond90, label %bary_sparse_p.exit.thread, label %bary_sparse_p.exit.thread81

bary_sparse_p.exit.thread:                        ; preds = %bb.c, %bb.b
  %i.o = shl i64 %5, 1
  %i.p = udiv i64 %i.o, 5
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %.not.i44 = icmp ne i32 %i.r, 0                 ; 2 uses
  %spec.select.i45 = zext i1 %.not.i44 to i64
  %i.s = lshr i64 %5, 1                           ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %4, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not11.i46 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not.i44, i64 2, i64 1
  %.1.i47 = select i1 %.not11.i46, i64 %spec.select.i45, i64 %i.v ; 2 uses
  %i.w = icmp samesign ult i64 %.1.i47, 2
  br i1 %i.w, label %bb.d, label %bary_sparse_p.exit50.thread

bb.d:                                             ; preds = %bary_sparse_p.exit.thread
  %i.x = mul i64 %5, 3
  %i.y = udiv i64 %i.x, 5
  %i.z = getelementptr [4 x i8], ptr %4, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %.not12.i49 = icmp ne i32 %i.aa, 0
  %.not = icmp eq i64 %.1.i47, 1
  %or.cond91 = and i1 %.not, %.not12.i49
  br i1 %or.cond91, label %bary_sparse_p.exit50.thread, label %bary_sparse_p.exit50.thread86

bary_sparse_p.exit50.thread86:                    ; preds = %bb.d
  %.not17.i.i = icmp eq i64 %1, 0
  br i1 %.not17.i.i, label %.preheader.i.i, label %.lr.ph.preheader.i12.i

.lr.ph.preheader.i12.i:                           ; preds = %bary_sparse_p.exit50.thread86
  %i.ab = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.ab, i1 false), !tbaa !7
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.preheader.i12.i, %bary_sparse_p.exit50.thread86
  %.not22.i.i = icmp eq i64 %5, 0
  br i1 %.not22.i.i, label %bary_short_mul.exit, label %.lr.ph21.split.i.i.preheader

.lr.ph21.split.i.i.preheader:                     ; preds = %.preheader.i.i
  %xtraiter = and i64 %3, 1
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i64 %3 to i1
  br label %.lr.ph21.split.i.i

.lr.ph21.split.i.i:                               ; preds = %.lr.ph21.split.i.i.preheader, %bary_muladd_1xN.exit.i.i
  %.01620.i.i = phi i64 [ %i.cc, %bary_muladd_1xN.exit.i.i ], [ 0, %.lr.ph21.split.i.i.preheader ] ; 4 uses
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %.01620.i.i ; 4 uses
  %i.ad = sub i64 %1, %.01620.i.i                 ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %4, i64 %.01620.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bary_muladd_1xN.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph21.split.i.i
  %i.ah = zext i32 %i.af to i64                   ; 3 uses
  br label %.lr.ph.i.i.i

.preheader.i.i.i.unr-lcssa:                       ; preds = %bb.h
  br i1 %lcmp.mod.not, label %.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader.i.i.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ai = getelementptr [4 x i8], ptr %2, i64 %i.bs
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw i64 %i.ak, %i.ah
  %i.am = add nuw i64 %i.al, %.131.i.i.i.1        ; 2 uses
  %.not.i.i.i.epil = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.epil, label %.preheader.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.an = getelementptr [4 x i8], ptr %i.ac, i64 %i.bs ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nuw i64 %i.am, %i.ap                ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !7
  %i.as = lshr i64 %i.aq, 32
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i.epil.preheader, %bb.e, %.preheader.i.i.i.unr-lcssa
  %.131.i.i.i.lcssa = phi i64 [ %.131.i.i.i.1, %.preheader.i.i.i.unr-lcssa ], [ %i.as, %bb.e ], [ 0, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.at = icmp uge i64 %3, %i.ad
  %i.au = icmp eq i64 %.131.i.i.i.lcssa, 0
  %or.cond38.i.i.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond38.i.i.i, label %bary_muladd_1xN.exit.i.i, label %.lr.ph41.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.preheader.i.i
  %.036.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i ], [ %i.bs, %bb.h ] ; 4 uses
  %.03035.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i ], [ %.131.i.i.i.1, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.i ], [ %niter.next.1, %bb.h ]
  %i.av = getelementptr [4 x i8], ptr %2, i64 %.036.i.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %i.ax, %i.ah
  %i.az = add nuw i64 %i.ay, %.03035.i.i.i        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr [4 x i8], ptr %i.ac, i64 %.036.i.i.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add nuw i64 %i.az, %i.bc                ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !7
  %i.bf = lshr i64 %i.bd, 32
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.f, %.lr.ph.i.i.i
  %.131.i.i.i = phi i64 [ %i.bf, %bb.f ], [ 0, %.lr.ph.i.i.i ]
  %i.bg = or disjoint i64 %.036.i.i.i, 1          ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %2, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul nuw i64 %i.bj, %i.ah
  %i.bl = add nuw i64 %i.bk, %.131.i.i.i          ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.1
  %i.bm = getelementptr [4 x i8], ptr %i.ac, i64 %i.bg ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw i64 %i.bl, %i.bo                ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !7
  %i.br = lshr i64 %i.bp, 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.1
  %.131.i.i.i.1 = phi i64 [ %i.br, %bb.g ], [ 0, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.bs = add nuw i64 %.036.i.i.i, 2              ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !16

.lr.ph41.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph41.i.i.i
  %.140.i.i.i = phi i64 [ %i.bz, %.lr.ph41.i.i.i ], [ %3, %.preheader.i.i.i ] ; 2 uses
  %.239.i.i.i = phi i64 [ %i.by, %.lr.ph41.i.i.i ], [ %.131.i.i.i.lcssa, %.preheader.i.i.i ]
  %i.bt = getelementptr [4 x i8], ptr %i.ac, i64 %.140.i.i.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %.239.i.i.i, %i.bv      ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !7
  %i.by = lshr i64 %i.bw, 32                      ; 2 uses
  %i.bz = add nuw i64 %.140.i.i.i, 1              ; 2 uses
  %i.ca = icmp uge i64 %i.bz, %i.ad
  %i.cb = icmp eq i64 %i.by, 0
  %or.cond.i.i.i = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond.i.i.i, label %bary_muladd_1xN.exit.i.i, label %.lr.ph41.i.i.i, !llvm.loop !18

bary_muladd_1xN.exit.i.i:                         ; preds = %.lr.ph41.i.i.i, %.preheader.i.i.i, %.lr.ph21.split.i.i
  %i.cc = add nuw i64 %.01620.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond.not.i.i, label %bary_short_mul.exit, label %.lr.ph21.split.i.i, !llvm.loop !19

bary_short_mul.exit:                              ; preds = %bary_muladd_1xN.exit.i.i, %.preheader.i.i
  tail call void @rb_thread_check_ints() #23
  br label %bary_short_mul.exit78

bary_sparse_p.exit50.thread:                      ; preds = %bb.d, %bary_sparse_p.exit.thread
end_hunk_6
