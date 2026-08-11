inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 7 uses
  %i.a = icmp eq i32 %6, 1                        ; 2 uses
  %i.b = icmp eq i32 %7, 1
  %i.c = icmp eq i32 %8, 1
  %i.d = and i1 %i.b, %i.c
  %i.e = icmp eq i32 %9, 1
  %i.f = and i1 %i.d, %i.e
  %i.g = icmp eq i32 %10, 1                       ; 4 uses
  %i.h = icmp eq i32 %11, 1
  %i.i = and i1 %i.f, %i.h
  %i.j = and i1 %i.a, %i.i
  %or.cond9.i = and i1 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 73 uses
  br i1 %or.cond9.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !15   ; 5 uses
  %i.o = icmp sgt i32 %3, 7
  br i1 %i.o, label %.lr.ph158.i.i, label %.preheader129.i.i

.lr.ph158.i.i:                                    ; preds = %bb.b
  %i.p = sdiv i32 %4, 8
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %12 = sdiv i32 %5, 8
  %i.s = shl i64 %i.l, 3
  %i.t = sext i32 %4 to i64
  %i.u = icmp sgt i32 %5, 3
  %i.v = shl i64 %i.l, 1                          ; 2 uses
  %i.w = mul i64 %i.l, 3
  %i.x = shl i64 %i.l, 2
  %i.y = and i32 %5, -4
  %i.z = zext nneg i32 %3 to i64                  ; 4 uses
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  switch i32 %i.n, label %.loopexit131.i.preheader.i [
    i32 8, label %.lr.ph158.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit390.i.us.i
  ]

.loopexit131.i.preheader.i:                       ; preds = %.lr.ph158.i.i
  %umax201.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 15)
  %i.ab = and i64 %umax201.i, 2147483640
  br label %.preheader129.loopexit.i.i

.lr.ph158.i.split.us.i:                           ; preds = %.lr.ph158.i.i
  %i.ac = icmp sgt i32 %5, 7
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit391.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit391.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit391.i.us.preheader.i:        ; preds = %.lr.ph158.i.split.us.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 15)
  %i.ad = and i64 %umax.i, 2147483640
  br label %.preheader129.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit391.i.us.us.i:               ; preds = %.lr.ph158.i.split.us.i, %.loopexit131.i.loopexit.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit131.i.loopexit.us.us.i ], [ 0, %.lr.ph158.i.split.us.i ] ; 2 uses
  %.0346157.i.us.us.i = phi ptr [ %i.bb, %.loopexit131.i.loopexit.us.us.i ], [ %.val, %.lr.ph158.i.split.us.i ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !16, !noalias !17
  %i.af = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !17
  %i.ag = mul i64 %i.af, %i.q
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !17
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  %i.ak = add nsw i64 %indvars.iv.i.us.us.i, %i.aa
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit391.i.us.us.i
  %.1347136.i.us.us.i = phi ptr [ %i.bb, %.lr.ph.i.us.us.i ], [ %.0346157.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit391.i.us.us.i ] ; 5 uses
  %.0360135.i.us.us.i = phi ptr [ %i.bc, %.lr.ph.i.us.us.i ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit391.i.us.us.i ] ; 5 uses
  %.0361134.i.us.us.i = phi i32 [ %i.bd, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit391.i.us.us.i ]
  %i.an = load <4 x i32>, ptr %.0360135.i.us.us.i, align 1, !tbaa !21 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0360135.i.us.us.i, i64 16
  %i.ap = load <4 x i32>, ptr %i.ao, align 1, !tbaa !21 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0360135.i.us.us.i, i64 32
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0360135.i.us.us.i, i64 48
  %i.at = load <4 x i32>, ptr %i.as, align 1, !tbaa !21 ; 2 uses
  %i.au = shufflevector <4 x i32> %i.an, <4 x i32> %i.ap, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.av = shufflevector <4 x i32> %i.ar, <4 x i32> %i.at, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aw = shufflevector <4 x i32> %i.an, <4 x i32> %i.ap, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ax = shufflevector <4 x i32> %i.ar, <4 x i32> %i.at, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.au, ptr %.1347136.i.us.us.i, align 16, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.1347136.i.us.us.i, i64 16
  store <4 x i32> %i.av, ptr %i.ay, align 16, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.1347136.i.us.us.i, i64 32
  store <4 x i32> %i.aw, ptr %i.az, align 16, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.1347136.i.us.us.i, i64 48
  store <4 x i32> %i.ax, ptr %i.ba, align 16, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.1347136.i.us.us.i, i64 64 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0360135.i.us.us.i, i64 %i.s
  %i.bd = add nuw nsw i32 %.0361134.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.bd, %12
  br i1 %exitcond.not.i.us.us.i, label %.loopexit131.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !22

.loopexit131.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.be = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.bf = icmp samesign ult i64 %i.be, %i.z
  br i1 %i.bf, label %_ZN4ncnn3MatD2Ev.exit391.i.us.us.i, label %.preheader129.loopexit.i.i, !llvm.loop !24

_ZN4ncnn3MatD2Ev.exit390.i.us.i:                  ; preds = %.lr.ph158.i.i, %.loopexit131.i.us90.i
  %indvars.iv.i.us88.i = phi i64 [ %indvars.iv.next.i.us92.i, %.loopexit131.i.us90.i ], [ 0, %.lr.ph158.i.i ] ; 2 uses
  %.0346157.i.us89.i = phi ptr [ %.6.i.us91.i, %.loopexit131.i.us90.i ], [ %.val, %.lr.ph158.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16, !noalias !25
  %i.bh = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !25
  %i.bi = mul i64 %i.bh, %i.t
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !25
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 %indvars.iv.i.us88.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.aa  ; 2 uses
  br i1 %i.u, label %.lr.ph140.i.us.i, label %.preheader132.i.us.i

.lr.ph140.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit390.i.us.i, %.lr.ph140.i.us.i
  %.3139.i.us.i = phi ptr [ %i.ci, %.lr.ph140.i.us.i ], [ %.0346157.i.us89.i, %_ZN4ncnn3MatD2Ev.exit390.i.us.i ] ; 3 uses
  %.0370138.i.us.i = phi ptr [ %i.cj, %.lr.ph140.i.us.i ], [ %i.bn, %_ZN4ncnn3MatD2Ev.exit390.i.us.i ] ; 5 uses
  %.0373137.i.us.i = phi i32 [ %i.ck, %.lr.ph140.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit390.i.us.i ]
  %i.bo = load i64, ptr %.0370138.i.us.i, align 1, !tbaa !21
  %i.bp = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %i.bq = getelementptr inbounds nuw i8, ptr %.0370138.i.us.i, i64 %i.l
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !21
  %i.bs = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %i.bt = getelementptr inbounds nuw i8, ptr %.0370138.i.us.i, i64 %i.v
  %i.bu = load i64, ptr %i.bt, align 1, !tbaa !21
  %i.bv = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %.0370138.i.us.i, i64 %i.w
  %i.bx = load i64, ptr %i.bw, align 1, !tbaa !21
  %i.by = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %i.bz = bitcast <2 x i64> %i.bp to <16 x i8>
  %i.ca = bitcast <2 x i64> %i.bs to <16 x i8>
  %i.cb = shufflevector <16 x i8> %i.bz, <16 x i8> %i.ca, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cc = bitcast <2 x i64> %i.bv to <16 x i8>
  %i.cd = bitcast <2 x i64> %i.by to <16 x i8>
  %i.ce = shufflevector <16 x i8> %i.cc, <16 x i8> %i.cd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cf = shufflevector <16 x i8> %i.cb, <16 x i8> %i.ce, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.cg = shufflevector <16 x i8> %i.cb, <16 x i8> %i.ce, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <16 x i8> %i.cf, ptr %.3139.i.us.i, align 1, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %.3139.i.us.i, i64 16
  store <16 x i8> %i.cg, ptr %i.ch, align 1, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %.3139.i.us.i, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0370138.i.us.i, i64 %i.x ; 2 uses
  %i.ck = add nuw nsw i32 %.0373137.i.us.i, 4     ; 2 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = icmp slt i32 %i.cl, %5
  br i1 %i.cm, label %.lr.ph140.i.us.i, label %.preheader132.i.us.i, !llvm.loop !28

.preheader132.i.us.i:                             ; preds = %.lr.ph140.i.us.i, %_ZN4ncnn3MatD2Ev.exit390.i.us.i
  %.0373.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit390.i.us.i ], [ %i.y, %.lr.ph140.i.us.i ] ; 3 uses
  %.0370.lcssa.i.us.i = phi ptr [ %i.bn, %_ZN4ncnn3MatD2Ev.exit390.i.us.i ], [ %i.cj, %.lr.ph140.i.us.i ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0346157.i.us89.i, %_ZN4ncnn3MatD2Ev.exit390.i.us.i ], [ %i.ci, %.lr.ph140.i.us.i ] ; 2 uses
  %i.cn = or disjoint i32 %.0373.lcssa.i.us.i, 1
  %i.co = icmp slt i32 %i.cn, %5
  br i1 %i.co, label %.lr.ph147.i.us.i, label %.preheader130.i.us.i

.lr.ph147.i.us.i:                                 ; preds = %.preheader132.i.us.i, %.lr.ph147.i.us.i
  %.4146.i.us.i = phi ptr [ %i.cx, %.lr.ph147.i.us.i ], [ %.3.lcssa.i.us.i, %.preheader132.i.us.i ] ; 2 uses
  %.1371145.i.us.i = phi ptr [ %i.cy, %.lr.ph147.i.us.i ], [ %.0370.lcssa.i.us.i, %.preheader132.i.us.i ] ; 3 uses
  %.1374144.i.us.i = phi i32 [ %i.cz, %.lr.ph147.i.us.i ], [ %.0373.lcssa.i.us.i, %.preheader132.i.us.i ]
  %i.cp = load i64, ptr %.1371145.i.us.i, align 1, !tbaa !21
  %i.cq = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.1371145.i.us.i, i64 %i.l
  %i.cs = load i64, ptr %i.cr, align 1, !tbaa !21
  %i.ct = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cu = bitcast <2 x i64> %i.cq to <16 x i8>
  %i.cv = bitcast <2 x i64> %i.ct to <16 x i8>
  %i.cw = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cw, ptr %.4146.i.us.i, align 1, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.4146.i.us.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1371145.i.us.i, i64 %i.v ; 2 uses
  %i.cz = add nuw nsw i32 %.1374144.i.us.i, 2     ; 3 uses
  %i.da = or disjoint i32 %i.cz, 1
  %i.db = icmp slt i32 %i.da, %5
  br i1 %i.db, label %.lr.ph147.i.us.i, label %.preheader130.i.us.i, !llvm.loop !29

.preheader130.i.us.i:                             ; preds = %.lr.ph147.i.us.i, %.preheader132.i.us.i
  %.1374.lcssa.i.us.i = phi i32 [ %.0373.lcssa.i.us.i, %.preheader132.i.us.i ], [ %i.cz, %.lr.ph147.i.us.i ] ; 5 uses
  %.1371.lcssa.i.us.i = phi ptr [ %.0370.lcssa.i.us.i, %.preheader132.i.us.i ], [ %i.cy, %.lr.ph147.i.us.i ] ; 2 uses
  %.4.lcssa.i.us.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader132.i.us.i ], [ %i.cx, %.lr.ph147.i.us.i ] ; 3 uses
  %i.dc = icmp slt i32 %.1374.lcssa.i.us.i, %5
  br i1 %i.dc, label %.lr.ph154.i.us.i.preheader, label %.loopexit131.i.us90.i

.lr.ph154.i.us.i.preheader:                       ; preds = %.preheader130.i.us.i
  %i.dd = sub i32 %5, %.1374.lcssa.i.us.i
  %xtraiter = and i32 %i.dd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph154.i.us.i.prol.loopexit, label %.lr.ph154.i.us.i.prol

.lr.ph154.i.us.i.prol:                            ; preds = %.lr.ph154.i.us.i.preheader, %.lr.ph154.i.us.i.prol
  %.5153.i.us.i.prol = phi ptr [ %i.df, %.lr.ph154.i.us.i.prol ], [ %.4.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ] ; 2 uses
  %.2372152.i.us.i.prol = phi ptr [ %i.dg, %.lr.ph154.i.us.i.prol ], [ %.1371.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ] ; 2 uses
  %.2375151.i.us.i.prol = phi i32 [ %i.dh, %.lr.ph154.i.us.i.prol ], [ %.1374.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph154.i.us.i.prol ], [ 0, %.lr.ph154.i.us.i.preheader ]
  %i.de = load i64, ptr %.2372152.i.us.i.prol, align 1, !tbaa !21
  store i64 %i.de, ptr %.5153.i.us.i.prol, align 1, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.5153.i.us.i.prol, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2372152.i.us.i.prol, i64 %i.l ; 2 uses
  %i.dh = add nuw nsw i32 %.2375151.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph154.i.us.i.prol.loopexit, label %.lr.ph154.i.us.i.prol, !llvm.loop !30

.lr.ph154.i.us.i.prol.loopexit:                   ; preds = %.lr.ph154.i.us.i.prol, %.lr.ph154.i.us.i.preheader
  %.lcssa425.unr = phi ptr [ poison, %.lr.ph154.i.us.i.preheader ], [ %i.df, %.lr.ph154.i.us.i.prol ]
  %.5153.i.us.i.unr = phi ptr [ %.4.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ], [ %i.df, %.lr.ph154.i.us.i.prol ]
  %.2372152.i.us.i.unr = phi ptr [ %.1371.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ], [ %i.dg, %.lr.ph154.i.us.i.prol ]
  %.2375151.i.us.i.unr = phi i32 [ %.1374.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ], [ %i.dh, %.lr.ph154.i.us.i.prol ]
  %i.di = sub i32 %.1374.lcssa.i.us.i, %5
  %i.dj = icmp ugt i32 %i.di, -8
  br i1 %i.dj, label %.loopexit131.i.us90.i, label %.lr.ph154.i.us.i

.lr.ph154.i.us.i:                                 ; preds = %.lr.ph154.i.us.i.prol.loopexit, %.lr.ph154.i.us.i
  %.5153.i.us.i = phi ptr [ %i.eg, %.lr.ph154.i.us.i ], [ %.5153.i.us.i.unr, %.lr.ph154.i.us.i.prol.loopexit ] ; 9 uses
  %.2372152.i.us.i = phi ptr [ %i.eh, %.lr.ph154.i.us.i ], [ %.2372152.i.us.i.unr, %.lr.ph154.i.us.i.prol.loopexit ] ; 2 uses
  %.2375151.i.us.i = phi i32 [ %i.ei, %.lr.ph154.i.us.i ], [ %.2375151.i.us.i.unr, %.lr.ph154.i.us.i.prol.loopexit ]
  %i.dk = load i64, ptr %.2372152.i.us.i, align 1, !tbaa !21
  store i64 %i.dk, ptr %.5153.i.us.i, align 1, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.2372152.i.us.i, i64 %i.l ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 1, !tbaa !21
  store i64 %i.dn, ptr %i.dl, align 1, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.l ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 1, !tbaa !21
  store i64 %i.dq, ptr %i.do, align 1, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.l ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 1, !tbaa !21
  store i64 %i.dt, ptr %i.dr, align 1, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.l ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 1, !tbaa !21
  store i64 %i.dw, ptr %i.du, align 1, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.l ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 1, !tbaa !21
  store i64 %i.dz, ptr %i.dx, align 1, !tbaa !21
  %i.ea = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.l ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 1, !tbaa !21
  store i64 %i.ec, ptr %i.ea, align 1, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.l ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 1, !tbaa !21
  store i64 %i.ef, ptr %i.ed, align 1, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 64 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.l
  %i.ei = add nuw nsw i32 %.2375151.i.us.i, 8     ; 2 uses
  %exitcond274.not.i.us.i.7 = icmp eq i32 %i.ei, %5
  br i1 %exitcond274.not.i.us.i.7, label %.loopexit131.i.us90.i, label %.lr.ph154.i.us.i, !llvm.loop !32

.loopexit131.i.us90.i:                            ; preds = %.lr.ph154.i.us.i.prol.loopexit, %.lr.ph154.i.us.i, %.preheader130.i.us.i
  %.6.i.us91.i = phi ptr [ %.4.lcssa.i.us.i, %.preheader130.i.us.i ], [ %.lcssa425.unr, %.lr.ph154.i.us.i.prol.loopexit ], [ %i.eg, %.lr.ph154.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us92.i = add nuw nsw i64 %indvars.iv.i.us88.i, 8 ; 3 uses
  %i.ej = or disjoint i64 %indvars.iv.next.i.us92.i, 7
  %i.ek = icmp samesign ult i64 %i.ej, %i.z
  br i1 %i.ek, label %_ZN4ncnn3MatD2Ev.exit390.i.us.i, label %.preheader129.loopexit.i.i, !llvm.loop !24

.preheader129.loopexit.i.i:                       ; preds = %.loopexit131.i.us90.i, %.loopexit131.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit391.i.us.preheader.i, %.loopexit131.i.preheader.i
  %.us-phi.i = phi ptr [ %i.bb, %.loopexit131.i.loopexit.us.us.i ], [ %.val, %.loopexit131.i.preheader.i ], [ %.val, %_ZN4ncnn3MatD2Ev.exit391.i.us.preheader.i ], [ %.6.i.us91.i, %.loopexit131.i.us90.i ]
  %.us-phi86.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit131.i.loopexit.us.us.i ], [ %i.ab, %.loopexit131.i.preheader.i ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit391.i.us.preheader.i ], [ %indvars.iv.next.i.us92.i, %.loopexit131.i.us90.i ]
  %i.el = trunc nuw nsw i64 %.us-phi86.i to i32
  br label %.preheader129.i.i

.preheader129.i.i:                                ; preds = %.preheader129.loopexit.i.i, %bb.b
  %.0356.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.el, %.preheader129.loopexit.i.i ] ; 3 uses
  %.0346.lcssa.i.i = phi ptr [ %.val, %bb.b ], [ %.us-phi.i, %.preheader129.loopexit.i.i ] ; 5 uses
  %i.em = or disjoint i32 %.0356.lcssa.i.i, 3
  %i.en = icmp slt i32 %i.em, %3
  br i1 %i.en, label %.lr.ph187.i.i, label %.preheader124.i.i

.lr.ph187.i.i:                                    ; preds = %.preheader129.i.i
  %i.eo = sdiv i32 %4, 8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %13 = sdiv i32 %5, 8                            ; 3 uses
  %i.er = shl i64 %i.l, 3                         ; 2 uses
  %i.es = sext i32 %4 to i64
  %i.et = icmp sgt i32 %5, 3
  %i.eu = shl i64 %i.l, 1                         ; 2 uses
  %i.ev = mul i64 %i.l, 3
  %i.ew = shl i64 %i.l, 2
  %i.ex = and i32 %5, -4
  %i.ey = zext i32 %.0356.lcssa.i.i to i64        ; 6 uses
  %i.ez = sext i32 %3 to i64
  %i.fa = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.ez, -3       ; 4 uses
  switch i32 %i.n, label %.loopexit126.i.preheader.i [
    i32 8, label %.lr.ph187.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit388.i.us.i
  ]

.loopexit126.i.preheader.i:                       ; preds = %.lr.ph187.i.i
  %i.fb = add nuw nsw i64 %i.ey, 4                ; 2 uses
  %smax202.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fb)
  %i.fc = xor i64 %i.ey, -1
  %i.fd = add nsw i64 %smax202.i, %i.fc
  %i.fe = and i64 %i.fd, -4
  %i.ff = add i64 %i.fb, %i.fe
  br label %.preheader124.loopexit.i.i

.lr.ph187.i.split.us.i:                           ; preds = %.lr.ph187.i.i
  %i.fg = icmp sgt i32 %5, 7
  br i1 %i.fg, label %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit389.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit389.i.us.us.i.preheader:     ; preds = %.lr.ph187.i.split.us.i
  %xtraiter485 = and i32 %13, 1
  %i.fh = and i32 %5, 2147483640
  %14 = icmp eq i32 %i.fh, 8
  %unroll_iter = and i32 %13, 268435454
  %lcmp.mod486.not = icmp eq i32 %xtraiter485, 0
  %lcmp.mod488 = trunc i32 %13 to i1
  br label %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i

_ZN4ncnn3MatD2Ev.exit389.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us.i
  %i.fi = add nuw nsw i64 %i.ey, 4                ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fi)
  %i.fj = xor i64 %i.ey, -1
  %i.fk = add nsw i64 %smax.i, %i.fj
  %i.fl = and i64 %i.fk, -4
  %i.fm = add i64 %i.fi, %i.fl
  br label %.preheader124.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit389.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i.preheader, %.loopexit126.i.loopexit.us.us.i
  %indvars.iv278.i.us.us.i = phi i64 [ %indvars.iv.next279.i.us.us.i, %.loopexit126.i.loopexit.us.us.i ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i.preheader ] ; 2 uses
  %.7186.i.us.us.i = phi ptr [ %.lcssa410, %.loopexit126.i.loopexit.us.us.i ], [ %.0346.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i.preheader ] ; 2 uses
  %i.fn = load ptr, ptr %0, align 8, !tbaa !16, !noalias !33
  %i.fo = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !33
  %i.fp = mul i64 %i.fo, %i.ep
  %i.fq = load i64, ptr %i.eq, align 8, !tbaa !20, !noalias !33
  %i.fr = mul i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fr
  %i.ft = add nsw i64 %indvars.iv278.i.us.us.i, %i.fa
  %i.fu = shl nsw i64 %i.ft, 3
  %i.fv = getelementptr inbounds i8, ptr %i.fs, i64 %i.fu ; 2 uses
  br i1 %14, label %.lr.ph164.i.us.us.i.epil.preheader, label %.lr.ph164.i.us.us.i

.lr.ph164.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i, %.lr.ph164.i.us.us.i
  %.8163.i.us.us.i = phi ptr [ %i.gk, %.lr.ph164.i.us.us.i ], [ %.7186.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i ] ; 5 uses
  %.0376162.i.us.us.i = phi ptr [ %i.gl, %.lr.ph164.i.us.us.i ], [ %i.fv, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph164.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i ]
  %i.fw = load <4 x i32>, ptr %.0376162.i.us.us.i, align 1, !tbaa !21 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0376162.i.us.us.i, i64 16
  %i.fy = load <4 x i32>, ptr %i.fx, align 1, !tbaa !21 ; 2 uses
  %i.fz = shufflevector <4 x i32> %i.fw, <4 x i32> %i.fy, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ga = shufflevector <4 x i32> %i.fw, <4 x i32> %i.fy, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.fz, ptr %.8163.i.us.us.i, align 16, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 16
  store <4 x i32> %i.ga, ptr %i.gb, align 16, !tbaa !21
  %i.gc = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.0376162.i.us.us.i, i64 %i.er ; 3 uses
  %i.ge = load <4 x i32>, ptr %i.gd, align 1, !tbaa !21 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gg = load <4 x i32>, ptr %i.gf, align 1, !tbaa !21 ; 2 uses
  %i.gh = shufflevector <4 x i32> %i.ge, <4 x i32> %i.gg, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gi = shufflevector <4 x i32> %i.ge, <4 x i32> %i.gg, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.gh, ptr %i.gc, align 16, !tbaa !21
  %i.gj = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 48
  store <4 x i32> %i.gi, ptr %i.gj, align 16, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 64 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.er ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit126.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph164.i.us.us.i, !llvm.loop !36

.loopexit126.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph164.i.us.us.i
  br i1 %lcmp.mod486.not, label %.loopexit126.i.loopexit.us.us.i, label %.lr.ph164.i.us.us.i.epil.preheader

.lr.ph164.i.us.us.i.epil.preheader:               ; preds = %.loopexit126.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i
  %.8163.i.us.us.i.epil.init = phi ptr [ %.7186.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i ], [ %i.gk, %.loopexit126.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0376162.i.us.us.i.epil.init = phi ptr [ %i.fv, %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i ], [ %i.gl, %.loopexit126.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod488)
  %i.gm = load <4 x i32>, ptr %.0376162.i.us.us.i.epil.init, align 1, !tbaa !21 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0376162.i.us.us.i.epil.init, i64 16
  %i.go = load <4 x i32>, ptr %i.gn, align 1, !tbaa !21 ; 2 uses
  %i.gp = shufflevector <4 x i32> %i.gm, <4 x i32> %i.go, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gq = shufflevector <4 x i32> %i.gm, <4 x i32> %i.go, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.gp, ptr %.8163.i.us.us.i.epil.init, align 16, !tbaa !21
  %i.gr = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i.epil.init, i64 16
  store <4 x i32> %i.gq, ptr %i.gr, align 16, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i.epil.init, i64 32
  br label %.loopexit126.i.loopexit.us.us.i

.loopexit126.i.loopexit.us.us.i:                  ; preds = %.loopexit126.i.loopexit.us.us.i.unr-lcssa, %.lr.ph164.i.us.us.i.epil.preheader
  %.lcssa410 = phi ptr [ %i.gk, %.loopexit126.i.loopexit.us.us.i.unr-lcssa ], [ %i.gs, %.lr.ph164.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next279.i.us.us.i = add nuw nsw i64 %indvars.iv278.i.us.us.i, 4 ; 3 uses
  %i.gt = icmp slt i64 %indvars.iv.next279.i.us.us.i, %invariant.op.i.i
  br i1 %i.gt, label %_ZN4ncnn3MatD2Ev.exit389.i.us.us.i, label %.preheader124.loopexit.i.i, !llvm.loop !37

_ZN4ncnn3MatD2Ev.exit388.i.us.i:                  ; preds = %.lr.ph187.i.i, %.loopexit126.i.us104.i
  %indvars.iv278.i.us102.i = phi i64 [ %indvars.iv.next279.i.us106.i, %.loopexit126.i.us104.i ], [ %i.ey, %.lr.ph187.i.i ] ; 2 uses
  %.7186.i.us103.i = phi ptr [ %.13.i.us105.i, %.loopexit126.i.us104.i ], [ %.0346.lcssa.i.i, %.lr.ph187.i.i ] ; 2 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !16, !noalias !38
  %i.gv = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !38
  %i.gw = mul i64 %i.gv, %i.es
  %i.gx = load i64, ptr %i.eq, align 8, !tbaa !20, !noalias !38
  %i.gy = mul i64 %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 %indvars.iv278.i.us102.i
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.fa  ; 2 uses
  br i1 %i.et, label %.lr.ph169.i.us.i, label %.preheader127.i.us.i

.lr.ph169.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit388.i.us.i, %.lr.ph169.i.us.i
  %.10168.i.us.i = phi ptr [ %i.iw, %.lr.ph169.i.us.i ], [ %.7186.i.us103.i, %_ZN4ncnn3MatD2Ev.exit388.i.us.i ] ; 17 uses
  %.0364167.i.us.i = phi i32 [ %i.iy, %.lr.ph169.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit388.i.us.i ]
  %.0367166.i.us.i = phi ptr [ %i.ix, %.lr.ph169.i.us.i ], [ %i.hb, %_ZN4ncnn3MatD2Ev.exit388.i.us.i ] ; 8 uses
  %i.hc = load i8, ptr %.0367166.i.us.i, align 1, !tbaa !21
  store i8 %i.hc, ptr %.10168.i.us.i, align 1, !tbaa !21
  %i.hd = getelementptr inbounds nuw i8, ptr %.0367166.i.us.i, i64 %i.l ; 4 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !21
  %i.hf = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 1
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %.0367166.i.us.i, i64 %i.eu ; 4 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 2
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !21
  %i.hj = getelementptr inbounds nuw i8, ptr %.0367166.i.us.i, i64 %i.ev ; 4 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !21
  %i.hl = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 3
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !21
  %i.hm = getelementptr inbounds nuw i8, ptr %.0367166.i.us.i, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !21
  %i.ho = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 4
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !21
  %i.hp = getelementptr i8, ptr %i.hd, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 5
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !21
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !21
  %i.hu = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 6
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !21
  %i.hv = getelementptr i8, ptr %i.hj, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !21
  %i.hx = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 7
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !21
  %i.hy = getelementptr inbounds nuw i8, ptr %.0367166.i.us.i, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !21
  %i.ia = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 8
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !21
  %i.ib = getelementptr i8, ptr %i.hd, i64 2
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !21
  %i.id = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 9
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !21
  %i.ie = getelementptr i8, ptr %i.hg, i64 2
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !21
  %i.ig = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 10
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !21
  %i.ih = getelementptr i8, ptr %i.hj, i64 2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !21
  %i.ij = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 11
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !21
  %i.ik = getelementptr inbounds nuw i8, ptr %.0367166.i.us.i, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 12
  store i8 %i.il, ptr %i.im, align 1, !tbaa !21
  %i.in = getelementptr i8, ptr %i.hd, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !21
  %i.ip = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 13
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !21
  %i.iq = getelementptr i8, ptr %i.hg, i64 3
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !21
  %i.is = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 14
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !21
  %i.it = getelementptr i8, ptr %i.hj, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 15
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !21
  %i.iw = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0367166.i.us.i, i64 %i.ew ; 2 uses
  %i.iy = add nuw nsw i32 %.0364167.i.us.i, 4     ; 2 uses
  %i.iz = or disjoint i32 %i.iy, 3
  %i.ja = icmp slt i32 %i.iz, %5
  br i1 %i.ja, label %.lr.ph169.i.us.i, label %.preheader127.i.us.i, !llvm.loop !41

.preheader127.i.us.i:                             ; preds = %.lr.ph169.i.us.i, %_ZN4ncnn3MatD2Ev.exit388.i.us.i
  %.0367.lcssa.i.us.i = phi ptr [ %i.hb, %_ZN4ncnn3MatD2Ev.exit388.i.us.i ], [ %i.ix, %.lr.ph169.i.us.i ] ; 2 uses
  %.0364.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit388.i.us.i ], [ %i.ex, %.lr.ph169.i.us.i ] ; 3 uses
  %.10.lcssa.i.us.i = phi ptr [ %.7186.i.us103.i, %_ZN4ncnn3MatD2Ev.exit388.i.us.i ], [ %i.iw, %.lr.ph169.i.us.i ] ; 2 uses
  %i.jb = or disjoint i32 %.0364.lcssa.i.us.i, 1
  %i.jc = icmp slt i32 %i.jb, %5
  br i1 %i.jc, label %.lr.ph176.i.us.i, label %.preheader125.i.us.i

.lr.ph176.i.us.i:                                 ; preds = %.preheader127.i.us.i, %.lr.ph176.i.us.i
  %.11175.i.us.i = phi ptr [ %i.jz, %.lr.ph176.i.us.i ], [ %.10.lcssa.i.us.i, %.preheader127.i.us.i ] ; 9 uses
  %.1365174.i.us.i = phi i32 [ %i.kb, %.lr.ph176.i.us.i ], [ %.0364.lcssa.i.us.i, %.preheader127.i.us.i ]
  %.1368173.i.us.i = phi ptr [ %i.ka, %.lr.ph176.i.us.i ], [ %.0367.lcssa.i.us.i, %.preheader127.i.us.i ] ; 6 uses
  %i.jd = load i8, ptr %.1368173.i.us.i, align 1, !tbaa !21
  store i8 %i.jd, ptr %.11175.i.us.i, align 1, !tbaa !21
  %i.je = getelementptr inbounds nuw i8, ptr %.1368173.i.us.i, i64 %i.l ; 4 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !21
  %i.jg = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 1
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %.1368173.i.us.i, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !21
  %i.jj = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 2
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !21
  %i.jk = getelementptr i8, ptr %i.je, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !21
  %i.jm = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 3
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !21
  %i.jn = getelementptr inbounds nuw i8, ptr %.1368173.i.us.i, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !21
  %i.jp = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 4
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !21
  %i.jq = getelementptr i8, ptr %i.je, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !21
  %i.js = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 5
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !21
  %i.jt = getelementptr inbounds nuw i8, ptr %.1368173.i.us.i, i64 3
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !21
  %i.jv = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 6
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !21
  %i.jw = getelementptr i8, ptr %i.je, i64 3
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !21
  %i.jy = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 7
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !21
  %i.jz = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1368173.i.us.i, i64 %i.eu ; 2 uses
  %i.kb = add nuw nsw i32 %.1365174.i.us.i, 2     ; 3 uses
  %i.kc = or disjoint i32 %i.kb, 1
  %i.kd = icmp slt i32 %i.kc, %5
  br i1 %i.kd, label %.lr.ph176.i.us.i, label %.preheader125.i.us.i, !llvm.loop !42

.preheader125.i.us.i:                             ; preds = %.lr.ph176.i.us.i, %.preheader127.i.us.i
  %.1368.lcssa.i.us.i = phi ptr [ %.0367.lcssa.i.us.i, %.preheader127.i.us.i ], [ %i.ka, %.lr.ph176.i.us.i ] ; 6 uses
  %.1365.lcssa.i.us.i = phi i32 [ %.0364.lcssa.i.us.i, %.preheader127.i.us.i ], [ %i.kb, %.lr.ph176.i.us.i ] ; 5 uses
  %.11.lcssa.i.us.i = phi ptr [ %.10.lcssa.i.us.i, %.preheader127.i.us.i ], [ %i.jz, %.lr.ph176.i.us.i ] ; 7 uses
  %i.ke = icmp slt i32 %.1365.lcssa.i.us.i, %5
  br i1 %i.ke, label %.lr.ph183.i.us.i.preheader, label %.loopexit126.i.us104.i

.lr.ph183.i.us.i.preheader:                       ; preds = %.preheader125.i.us.i
  %i.kf = sub i32 %5, %.1365.lcssa.i.us.i
  %.neg = add i32 %.1365.lcssa.i.us.i, 1
  %xtraiter482 = and i32 %i.kf, 1
  %lcmp.mod483.not = icmp eq i32 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %.lr.ph183.i.us.i.prol.loopexit, label %.lr.ph183.i.us.i.prol

.lr.ph183.i.us.i.prol:                            ; preds = %.lr.ph183.i.us.i.preheader
  %i.kg = load i8, ptr %.1368.lcssa.i.us.i, align 1, !tbaa !21
  store i8 %i.kg, ptr %.11.lcssa.i.us.i, align 1, !tbaa !21
  %i.kh = getelementptr inbounds nuw i8, ptr %.1368.lcssa.i.us.i, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !21
  %i.kk = getelementptr inbounds nuw i8, ptr %.1368.lcssa.i.us.i, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !21
  %i.km = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !21
  %i.kn = getelementptr inbounds nuw i8, ptr %.1368.lcssa.i.us.i, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !21
  %i.kp = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 3
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !21
  %i.kq = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 4 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.1368.lcssa.i.us.i, i64 %i.l
  %i.ks = add nuw nsw i32 %.1365.lcssa.i.us.i, 1
  br label %.lr.ph183.i.us.i.prol.loopexit

.lr.ph183.i.us.i.prol.loopexit:                   ; preds = %.lr.ph183.i.us.i.prol, %.lr.ph183.i.us.i.preheader
  %.lcssa417.unr = phi ptr [ poison, %.lr.ph183.i.us.i.preheader ], [ %i.kq, %.lr.ph183.i.us.i.prol ]
  %.12182.i.us.i.unr = phi ptr [ %.11.lcssa.i.us.i, %.lr.ph183.i.us.i.preheader ], [ %i.kq, %.lr.ph183.i.us.i.prol ]
  %.2366181.i.us.i.unr = phi i32 [ %.1365.lcssa.i.us.i, %.lr.ph183.i.us.i.preheader ], [ %i.ks, %.lr.ph183.i.us.i.prol ]
  %.2369180.i.us.i.unr = phi ptr [ %.1368.lcssa.i.us.i, %.lr.ph183.i.us.i.preheader ], [ %i.kr, %.lr.ph183.i.us.i.prol ]
  %i.kt = icmp eq i32 %5, %.neg
  br i1 %i.kt, label %.loopexit126.i.us104.i, label %.lr.ph183.i.us.i

.lr.ph183.i.us.i:                                 ; preds = %.lr.ph183.i.us.i.prol.loopexit, %.lr.ph183.i.us.i
  %.12182.i.us.i = phi ptr [ %i.lq, %.lr.ph183.i.us.i ], [ %.12182.i.us.i.unr, %.lr.ph183.i.us.i.prol.loopexit ] ; 9 uses
  %.2366181.i.us.i = phi i32 [ %i.ls, %.lr.ph183.i.us.i ], [ %.2366181.i.us.i.unr, %.lr.ph183.i.us.i.prol.loopexit ]
  %.2369180.i.us.i = phi ptr [ %i.lr, %.lr.ph183.i.us.i ], [ %.2369180.i.us.i.unr, %.lr.ph183.i.us.i.prol.loopexit ] ; 5 uses
  %i.ku = load i8, ptr %.2369180.i.us.i, align 1, !tbaa !21
  store i8 %i.ku, ptr %.12182.i.us.i, align 1, !tbaa !21
  %i.kv = getelementptr inbounds nuw i8, ptr %.2369180.i.us.i, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !21
  %i.kx = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 1
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !21
  %i.ky = getelementptr inbounds nuw i8, ptr %.2369180.i.us.i, i64 2
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 2
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !21
  %i.lb = getelementptr inbounds nuw i8, ptr %.2369180.i.us.i, i64 3
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 3
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !21
  %i.le = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.2369180.i.us.i, i64 %i.l ; 5 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !21
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !21
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !21
  %i.lj = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 5
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !21
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !21
  %i.lm = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 6
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !21
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !21
  %i.lp = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 7
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !21
  %i.lq = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.l
  %i.ls = add nuw nsw i32 %.2366181.i.us.i, 2     ; 2 uses
  %exitcond277.not.i.us.i.1 = icmp eq i32 %i.ls, %5
  br i1 %exitcond277.not.i.us.i.1, label %.loopexit126.i.us104.i, label %.lr.ph183.i.us.i, !llvm.loop !43

.loopexit126.i.us104.i:                           ; preds = %.lr.ph183.i.us.i.prol.loopexit, %.lr.ph183.i.us.i, %.preheader125.i.us.i
  %.13.i.us105.i = phi ptr [ %.11.lcssa.i.us.i, %.preheader125.i.us.i ], [ %.lcssa417.unr, %.lr.ph183.i.us.i.prol.loopexit ], [ %i.lq, %.lr.ph183.i.us.i ] ; 2 uses
  %indvars.iv.next279.i.us106.i = add nuw nsw i64 %indvars.iv278.i.us102.i, 4 ; 3 uses
  %i.lt = icmp slt i64 %indvars.iv.next279.i.us106.i, %invariant.op.i.i
  br i1 %i.lt, label %_ZN4ncnn3MatD2Ev.exit388.i.us.i, label %.preheader124.loopexit.i.i, !llvm.loop !37

.preheader124.loopexit.i.i:                       ; preds = %.loopexit126.i.us104.i, %.loopexit126.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit389.i.us.preheader.i, %.loopexit126.i.preheader.i
  %.us-phi99.i = phi ptr [ %.lcssa410, %.loopexit126.i.loopexit.us.us.i ], [ %.0346.lcssa.i.i, %.loopexit126.i.preheader.i ], [ %.0346.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit389.i.us.preheader.i ], [ %.13.i.us105.i, %.loopexit126.i.us104.i ]
  %.us-phi100.i = phi i64 [ %indvars.iv.next279.i.us.us.i, %.loopexit126.i.loopexit.us.us.i ], [ %i.ff, %.loopexit126.i.preheader.i ], [ %i.fm, %_ZN4ncnn3MatD2Ev.exit389.i.us.preheader.i ], [ %indvars.iv.next279.i.us106.i, %.loopexit126.i.us104.i ]
  %i.lu = trunc nuw nsw i64 %.us-phi100.i to i32
  br label %.preheader124.i.i

.preheader124.i.i:                                ; preds = %.preheader124.loopexit.i.i, %.preheader129.i.i
  %.1357.lcssa.i.i = phi i32 [ %.0356.lcssa.i.i, %.preheader129.i.i ], [ %i.lu, %.preheader124.loopexit.i.i ] ; 3 uses
  %.7.lcssa.i.i = phi ptr [ %.0346.lcssa.i.i, %.preheader129.i.i ], [ %.us-phi99.i, %.preheader124.loopexit.i.i ] ; 5 uses
  %i.lv = or disjoint i32 %.1357.lcssa.i.i, 1
  %i.lw = icmp slt i32 %i.lv, %3
  br i1 %i.lw, label %.lr.ph216.i.i, label %.preheader119.i.i

.lr.ph216.i.i:                                    ; preds = %.preheader124.i.i
  %i.lx = sdiv i32 %4, 8
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %15 = sdiv i32 %5, 8                            ; 3 uses
  %i.ma = shl i64 %i.l, 3                         ; 5 uses
  %i.mb = sext i32 %4 to i64
  %i.mc = icmp sgt i32 %5, 3
  %i.md = shl i64 %i.l, 1                         ; 2 uses
  %i.me = mul i64 %i.l, 3
  %i.mf = shl i64 %i.l, 2
  %i.mg = and i32 %5, -4
  %i.mh = zext i32 %.1357.lcssa.i.i to i64        ; 8 uses
  %i.mi = sext i32 %3 to i64
  %i.mj = sext i32 %2 to i64                      ; 2 uses
  %invariant.op346.i.i = add nsw i64 %i.mi, -1    ; 4 uses
  switch i32 %i.n, label %.loopexit121.i.i.preheader [
    i32 8, label %.lr.ph216.i.i.split.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit386.i.i.us
  ]

.loopexit121.i.i.preheader:                       ; preds = %.lr.ph216.i.i
  %i.mk = add nuw nsw i64 %i.mh, 2
  %smax194 = tail call i64 @llvm.smax.i64(i64 %invariant.op346.i.i, i64 %i.mk)
  %i.ml = xor i64 %i.mh, -1
  %i.mm = add nsw i64 %smax194, %i.ml
  %i.mn = and i64 %i.mm, -2
  %i.mo = add i64 %i.mn, %i.mh
  %i.mp = add i64 %i.mo, 2
  br label %.preheader119.loopexit.i.i

.lr.ph216.i.i.split.us:                           ; preds = %.lr.ph216.i.i
  %i.mq = icmp sgt i32 %5, 7
  br i1 %i.mq, label %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us.preheader, label %_ZN4ncnn3MatD2Ev.exit387.i.i.us.preheader

_ZN4ncnn3MatD2Ev.exit387.i.i.us.us.preheader:     ; preds = %.lr.ph216.i.i.split.us
  %i.mr = add nsw i32 %15, -1
  %xtraiter492 = and i32 %15, 3                   ; 3 uses
  %i.ms = icmp ult i32 %i.mr, 3
  %unroll_iter496 = and i32 %15, 268435452
  %lcmp.mod493.not = icmp eq i32 %xtraiter492, 0
  %lcmp.mod495 = icmp ne i32 %xtraiter492, 0
  br label %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us

_ZN4ncnn3MatD2Ev.exit387.i.i.us.preheader:        ; preds = %.lr.ph216.i.i.split.us
  %i.mt = add nuw nsw i64 %i.mh, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op346.i.i, i64 %i.mt)
  %i.mu = xor i64 %i.mh, -1
  %i.mv = add nsw i64 %smax, %i.mu
  %i.mw = and i64 %i.mv, -2
  %i.mx = add i64 %i.mw, %i.mh
  %i.my = add i64 %i.mx, 2
  br label %.preheader119.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit387.i.i.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us.preheader, %.loopexit121.i.i.loopexit.us.us
  %indvars.iv283.i.i.us.us = phi i64 [ %indvars.iv.next284.i.i.us.us, %.loopexit121.i.i.loopexit.us.us ], [ %i.mh, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us.preheader ] ; 2 uses
  %.14215.i.i.us.us = phi ptr [ %.lcssa402, %.loopexit121.i.i.loopexit.us.us ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us.preheader ] ; 2 uses
  %i.mz = load ptr, ptr %0, align 8, !tbaa !16, !noalias !44
  %i.na = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !44
  %i.nb = mul i64 %i.na, %i.ly
  %i.nc = load i64, ptr %i.lz, align 8, !tbaa !20, !noalias !44
  %i.nd = mul i64 %i.nb, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nd
  %i.nf = add nsw i64 %indvars.iv283.i.i.us.us, %i.mj
  %i.ng = shl nsw i64 %i.nf, 3
  %i.nh = getelementptr inbounds i8, ptr %i.ne, i64 %i.ng ; 2 uses
  br i1 %i.ms, label %.lr.ph193.i.i.us.us.epil.preheader, label %.lr.ph193.i.i.us.us

.lr.ph193.i.i.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us, %.lr.ph193.i.i.us.us
  %.15192.i.i.us.us = phi ptr [ %i.ou, %.lr.ph193.i.i.us.us ], [ %.14215.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us ] ; 5 uses
  %.0363190.i.i.us.us = phi ptr [ %i.ov, %.lr.ph193.i.i.us.us ], [ %i.nh, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us ] ; 3 uses
  %niter497 = phi i32 [ %niter497.next.3, %.lr.ph193.i.i.us.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us ]
  %i.ni = load i64, ptr %.0363190.i.i.us.us, align 1, !tbaa !21
  %i.nj = insertelement <2 x i64> poison, i64 %i.ni, i64 0
  %i.nk = getelementptr inbounds nuw i8, ptr %.0363190.i.i.us.us, i64 8
  %i.nl = load i64, ptr %i.nk, align 1, !tbaa !21
  %i.nm = insertelement <2 x i64> poison, i64 %i.nl, i64 0
  %i.nn = bitcast <2 x i64> %i.nj to <4 x i32>
  %i.no = bitcast <2 x i64> %i.nm to <4 x i32>
  %i.np = shufflevector <4 x i32> %i.nn, <4 x i32> %i.no, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.np, ptr %.15192.i.i.us.us, align 1, !tbaa !21
  %i.nq = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %.0363190.i.i.us.us, i64 %i.ma ; 3 uses
  %i.ns = load i64, ptr %i.nr, align 1, !tbaa !21
  %i.nt = insertelement <2 x i64> poison, i64 %i.ns, i64 0
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nv = load i64, ptr %i.nu, align 1, !tbaa !21
  %i.nw = insertelement <2 x i64> poison, i64 %i.nv, i64 0
  %i.nx = bitcast <2 x i64> %i.nt to <4 x i32>
  %i.ny = bitcast <2 x i64> %i.nw to <4 x i32>
  %i.nz = shufflevector <4 x i32> %i.nx, <4 x i32> %i.ny, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.nz, ptr %i.nq, align 1, !tbaa !21
  %i.oa = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us, i64 32
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ma ; 3 uses
  %i.oc = load i64, ptr %i.ob, align 1, !tbaa !21
  %i.od = insertelement <2 x i64> poison, i64 %i.oc, i64 0
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.of = load i64, ptr %i.oe, align 1, !tbaa !21
  %i.og = insertelement <2 x i64> poison, i64 %i.of, i64 0
  %i.oh = bitcast <2 x i64> %i.od to <4 x i32>
  %i.oi = bitcast <2 x i64> %i.og to <4 x i32>
  %i.oj = shufflevector <4 x i32> %i.oh, <4 x i32> %i.oi, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.oj, ptr %i.oa, align 1, !tbaa !21
  %i.ok = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us, i64 48
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.ma ; 3 uses
  %i.om = load i64, ptr %i.ol, align 1, !tbaa !21
  %i.on = insertelement <2 x i64> poison, i64 %i.om, i64 0
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.op = load i64, ptr %i.oo, align 1, !tbaa !21
  %i.oq = insertelement <2 x i64> poison, i64 %i.op, i64 0
  %i.or = bitcast <2 x i64> %i.on to <4 x i32>
  %i.os = bitcast <2 x i64> %i.oq to <4 x i32>
  %i.ot = shufflevector <4 x i32> %i.or, <4 x i32> %i.os, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.ot, ptr %i.ok, align 1, !tbaa !21
  %i.ou = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us, i64 64 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ma ; 2 uses
  %niter497.next.3 = add i32 %niter497, 4         ; 2 uses
  %niter497.ncmp.3 = icmp eq i32 %niter497.next.3, %unroll_iter496
  br i1 %niter497.ncmp.3, label %.loopexit121.i.i.loopexit.us.us.unr-lcssa, label %.lr.ph193.i.i.us.us, !llvm.loop !47

.loopexit121.i.i.loopexit.us.us.unr-lcssa:        ; preds = %.lr.ph193.i.i.us.us
  br i1 %lcmp.mod493.not, label %.loopexit121.i.i.loopexit.us.us, label %.lr.ph193.i.i.us.us.epil.preheader

.lr.ph193.i.i.us.us.epil.preheader:               ; preds = %.loopexit121.i.i.loopexit.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us
  %.15192.i.i.us.us.epil.init = phi ptr [ %.14215.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us ], [ %i.ou, %.loopexit121.i.i.loopexit.us.us.unr-lcssa ]
  %.0363190.i.i.us.us.epil.init = phi ptr [ %i.nh, %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us ], [ %i.ov, %.loopexit121.i.i.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod495)
  br label %.lr.ph193.i.i.us.us.epil

.lr.ph193.i.i.us.us.epil:                         ; preds = %.lr.ph193.i.i.us.us.epil, %.lr.ph193.i.i.us.us.epil.preheader
  %.15192.i.i.us.us.epil = phi ptr [ %i.pe, %.lr.ph193.i.i.us.us.epil ], [ %.15192.i.i.us.us.epil.init, %.lr.ph193.i.i.us.us.epil.preheader ] ; 2 uses
  %.0363190.i.i.us.us.epil = phi ptr [ %i.pf, %.lr.ph193.i.i.us.us.epil ], [ %.0363190.i.i.us.us.epil.init, %.lr.ph193.i.i.us.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph193.i.i.us.us.epil ], [ 0, %.lr.ph193.i.i.us.us.epil.preheader ]
  %i.ow = load i64, ptr %.0363190.i.i.us.us.epil, align 1, !tbaa !21
  %i.ox = insertelement <2 x i64> poison, i64 %i.ow, i64 0
  %i.oy = getelementptr inbounds nuw i8, ptr %.0363190.i.i.us.us.epil, i64 8
  %i.oz = load i64, ptr %i.oy, align 1, !tbaa !21
  %i.pa = insertelement <2 x i64> poison, i64 %i.oz, i64 0
  %i.pb = bitcast <2 x i64> %i.ox to <4 x i32>
  %i.pc = bitcast <2 x i64> %i.pa to <4 x i32>
  %i.pd = shufflevector <4 x i32> %i.pb, <4 x i32> %i.pc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.pd, ptr %.15192.i.i.us.us.epil, align 1, !tbaa !21
  %i.pe = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us.epil, i64 16 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.0363190.i.i.us.us.epil, i64 %i.ma
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter492
  br i1 %epil.iter.cmp.not, label %.loopexit121.i.i.loopexit.us.us, label %.lr.ph193.i.i.us.us.epil, !llvm.loop !48

.loopexit121.i.i.loopexit.us.us:                  ; preds = %.lr.ph193.i.i.us.us.epil, %.loopexit121.i.i.loopexit.us.us.unr-lcssa
  %.lcssa402 = phi ptr [ %i.ou, %.loopexit121.i.i.loopexit.us.us.unr-lcssa ], [ %i.pe, %.lr.ph193.i.i.us.us.epil ] ; 2 uses
  %indvars.iv.next284.i.i.us.us = add nuw nsw i64 %indvars.iv283.i.i.us.us, 2 ; 3 uses
  %i.pg = icmp slt i64 %indvars.iv.next284.i.i.us.us, %invariant.op346.i.i
  br i1 %i.pg, label %_ZN4ncnn3MatD2Ev.exit387.i.i.us.us, label %.preheader119.loopexit.i.i, !llvm.loop !49

_ZN4ncnn3MatD2Ev.exit386.i.i.us:                  ; preds = %.lr.ph216.i.i, %.loopexit121.i.i.us99
  %indvars.iv283.i.i.us97 = phi i64 [ %indvars.iv.next284.i.i.us101, %.loopexit121.i.i.us99 ], [ %i.mh, %.lr.ph216.i.i ] ; 2 uses
  %.14215.i.i.us98 = phi ptr [ %.20.i.i.us100, %.loopexit121.i.i.us99 ], [ %.7.lcssa.i.i, %.lr.ph216.i.i ] ; 2 uses
  %i.ph = load ptr, ptr %0, align 8, !tbaa !16, !noalias !50
  %i.pi = load i64, ptr %i.k, align 8, !tbaa !9, !noalias !50
  %i.pj = mul i64 %i.pi, %i.mb
  %i.pk = load i64, ptr %i.lz, align 8, !tbaa !20, !noalias !50
  %i.pl = mul i64 %i.pj, %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 %indvars.iv283.i.i.us97
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.mj  ; 2 uses
  br i1 %i.mc, label %.lr.ph198.i.i.us, label %.preheader122.i.i.us

.lr.ph198.i.i.us:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit386.i.i.us, %.lr.ph198.i.i.us
  %.17197.i.i.us = phi ptr [ %i.ql, %.lr.ph198.i.i.us ], [ %.14215.i.i.us98, %_ZN4ncnn3MatD2Ev.exit386.i.i.us ] ; 9 uses
  %.0350196.i.i.us = phi i32 [ %i.qn, %.lr.ph198.i.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit386.i.i.us ]
  %.0353195.i.i.us = phi ptr [ %i.qm, %.lr.ph198.i.i.us ], [ %i.po, %_ZN4ncnn3MatD2Ev.exit386.i.i.us ] ; 6 uses
  %i.pp = load i8, ptr %.0353195.i.i.us, align 1, !tbaa !21
  store i8 %i.pp, ptr %.17197.i.i.us, align 1, !tbaa !21
  %i.pq = getelementptr inbounds nuw i8, ptr %.0353195.i.i.us, i64 %i.l ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !21
  %i.ps = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 1
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !21
  %i.pt = getelementptr inbounds nuw i8, ptr %.0353195.i.i.us, i64 %i.md ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !21
  %i.pv = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 2
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !21
  %i.pw = getelementptr inbounds nuw i8, ptr %.0353195.i.i.us, i64 %i.me ; 2 uses
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !21
  %i.py = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 3
  store i8 %i.px, ptr %i.py, align 1, !tbaa !21
  %i.pz = getelementptr inbounds nuw i8, ptr %.0353195.i.i.us, i64 1
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !21
  %i.qb = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 4
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !21
  %i.qc = getelementptr i8, ptr %i.pq, i64 1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !21
  %i.qe = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 5
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !21
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !21
  %i.qh = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 6
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !21
  %i.qi = getelementptr i8, ptr %i.pw, i64 1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !21
  %i.qk = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 7
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !21
  %i.ql = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 8 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0353195.i.i.us, i64 %i.mf ; 2 uses
  %i.qn = add nuw nsw i32 %.0350196.i.i.us, 4     ; 2 uses
  %i.qo = or disjoint i32 %i.qn, 3
end_hunk_0
begin_hunk_1_@_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.baa = lshr <4 x i32> %i.azz, %i.ack
  %i.bab = add <4 x i32> %i.baa, %i.azy
  %i.bac = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bab, <4 x i32> %i.zv) ; 2 uses
  %i.bad = mul <4 x i32> %i.bac, %i.acm
  %i.bae = sub <4 x i32> %i.azn, %i.bad           ; 4 uses
  %i.baf = bitcast <4 x i32> %i.bae to <2 x i64>
  %i.bag = bitcast <4 x i32> %i.bae to <2 x i64>
  %i.bah = and <2 x i64> %i.bag, splat (i64 4294967295)
  %i.bai = mul nuw <2 x i64> %i.bah, %i.aco
  %i.baj = lshr <2 x i64> %i.bai, splat (i64 32)
  %i.bak = lshr <2 x i64> %i.baf, splat (i64 32)
  %i.bal = mul nuw <2 x i64> %i.bak, %i.aco
  %i.bam = bitcast <2 x i64> %i.baj to <8 x i16>
  %i.ban = bitcast <2 x i64> %i.bal to <8 x i16>
  %i.bao = shufflevector <8 x i16> %i.bam, <8 x i16> %i.ban, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bap = bitcast <8 x i16> %i.bao to <4 x i32>  ; 2 uses
  %i.baq = sub <4 x i32> %i.bae, %i.bap
  %i.bar = lshr <4 x i32> %i.baq, %i.acp
  %i.bas = add <4 x i32> %i.bar, %i.bap
  %i.bat = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bas, <4 x i32> %i.aan) ; 2 uses
  %i.bau = mul <4 x i32> %i.bat, %i.acr
  %i.bav = sub <4 x i32> %i.bae, %i.bau
  %i.baw = mul <4 x i32> %i.bac, %i.acu
  %i.bax = mul <4 x i32> %i.bav, %i.acw
  %i.bay = mul <4 x i32> %i.bat, %i.acy
  %i.baz = add <4 x i32> %i.bay, %i.baw
  %i.bba = add <4 x i32> %i.baz, %i.bax           ; 4 uses
  %i.bbb = shufflevector <4 x i32> %i.bba, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bbc = add <4 x i32> %i.bbb, %i.atc
  %i.bbd = shufflevector <4 x i32> %i.bba, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bbe = add <4 x i32> %i.bbd, %i.atc
  %i.bbf = shufflevector <4 x i32> %i.bba, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bbg = add <4 x i32> %i.bbf, %i.atc
  %i.bbh = shufflevector <4 x i32> %i.bba, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bbi = add <4 x i32> %i.bbh, %i.atc
  %i.bbj = load ptr, ptr %0, align 8, !tbaa !16   ; 4 uses
  %i.bbk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bbj, <4 x i32> %i.bbc, <4 x i32> splat (i32 -1), i8 1)
  %i.bbl = bitcast <4 x i32> %i.bbk to <16 x i8>
  %i.bbm = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bbj, <4 x i32> %i.bbe, <4 x i32> splat (i32 -1), i8 1)
  %i.bbn = bitcast <4 x i32> %i.bbm to <16 x i8>
  %i.bbo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bbj, <4 x i32> %i.bbg, <4 x i32> splat (i32 -1), i8 1)
  %i.bbp = bitcast <4 x i32> %i.bbo to <16 x i8>
  %i.bbq = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bbj, <4 x i32> %i.bbi, <4 x i32> splat (i32 -1), i8 1)
  %i.bbr = bitcast <4 x i32> %i.bbq to <16 x i8>
  %i.bbs = shufflevector <16 x i8> %i.bbl, <16 x i8> %i.bbn, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbt = shufflevector <16 x i8> %i.bbp, <16 x i8> %i.bbr, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbu = shufflevector <16 x i8> %i.bbs, <16 x i8> %i.bbt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  store <16 x i8> %i.bbu, ptr %.20329.i.i, align 1, !tbaa !21
  %i.bbv = getelementptr inbounds nuw i8, ptr %.20329.i.i, i64 16 ; 2 uses
  %i.bbw = add nuw nsw i32 %.01238328.i.i, 4      ; 3 uses
  %i.bbx = or disjoint i32 %i.bbw, 3
  %i.bby = icmp slt i32 %i.bbx, %5
  br i1 %i.bby, label %.lr.ph330.i.i, label %.preheader274.i.i, !llvm.loop !81

.preheader272.i.i:                                ; preds = %.lr.ph335.i.i, %.preheader274.i.i
  %.11239.lcssa.i.i = phi i32 [ %.01238.lcssa.i.i, %.preheader274.i.i ], [ %i.bdj, %.lr.ph335.i.i ] ; 2 uses
  %.21.lcssa.i.i = phi ptr [ %.20.lcssa.i.i, %.preheader274.i.i ], [ %i.bdi, %.lr.ph335.i.i ] ; 2 uses
  %i.bbz = icmp slt i32 %.11239.lcssa.i.i, %5
  br i1 %i.bbz, label %.lr.ph340.i.i, label %.loopexit265.i.i

.lr.ph335.i.i:                                    ; preds = %.preheader274.i.i, %.lr.ph335.i.i
  %.21334.i.i = phi ptr [ %i.bdi, %.lr.ph335.i.i ], [ %.20.lcssa.i.i, %.preheader274.i.i ] ; 2 uses
  %.11239333.i.i = phi i32 [ %i.bdj, %.lr.ph335.i.i ], [ %.01238.lcssa.i.i, %.preheader274.i.i ] ; 2 uses
  %i.bca = add nsw i32 %.11239333.i.i, %4         ; 3 uses
  %i.bcb = sdiv i32 %i.bca, %i.yi
  %i.bcc = add nsw i32 %i.bca, 1                  ; 2 uses
  %i.bcd = sdiv i32 %i.bcc, %i.yi
  %i.bce = srem i32 %i.bca, %i.yi                 ; 2 uses
  %i.bcf = srem i32 %i.bcc, %i.yi                 ; 2 uses
  %i.bcg = sdiv i32 %i.bce, %6
  %i.bch = sdiv i32 %i.bcf, %6
  %i.bci = srem i32 %i.bce, %6
  %i.bcj = srem i32 %i.bcf, %6
  %i.bck = mul i32 %i.bcg, %.scalar514.i.i
  %i.bcl = mul nsw i32 %i.bci, %8
  %i.bcm = mul i32 %i.bch, %.scalar514.i.i
  %i.bcn = mul nsw i32 %i.bcj, %8
  %i.bco = mul i32 %i.bcb, %i.acs
  %i.bcp = add i32 %i.bck, %i.bco
  %i.bcq = add i32 %i.bcp, %i.bcl
  %i.bcr = insertelement <4 x i32> poison, i32 %i.bcq, i64 0
  %i.bcs = shufflevector <4 x i32> %i.bcr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bct = add <4 x i32> %i.bcs, %i.atc
  %i.bcu = mul i32 %i.bcd, %i.acs
  %i.bcv = add i32 %i.bcm, %i.bcu
  %i.bcw = add i32 %i.bcv, %i.bcn
  %i.bcx = insertelement <4 x i32> poison, i32 %i.bcw, i64 0
  %i.bcy = shufflevector <4 x i32> %i.bcx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bcz = add <4 x i32> %i.bcy, %i.atc
  %i.bda = load ptr, ptr %0, align 8, !tbaa !16   ; 2 uses
  %i.bdb = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bda, <4 x i32> %i.bct, <4 x i32> splat (i32 -1), i8 1)
  %i.bdc = bitcast <4 x i32> %i.bdb to <16 x i8>
  %i.bdd = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bda, <4 x i32> %i.bcz, <4 x i32> splat (i32 -1), i8 1)
  %i.bde = bitcast <4 x i32> %i.bdd to <16 x i8>
  %i.bdf = shufflevector <16 x i8> %i.bdc, <16 x i8> %i.bde, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdg = bitcast <16 x i8> %i.bdf to <2 x i64>
  %i.bdh = extractelement <2 x i64> %i.bdg, i64 0
  store i64 %i.bdh, ptr %.21334.i.i, align 1, !tbaa !21
  %i.bdi = getelementptr inbounds nuw i8, ptr %.21334.i.i, i64 8 ; 2 uses
  %i.bdj = add nuw nsw i32 %.11239333.i.i, 2      ; 3 uses
  %i.bdk = or disjoint i32 %i.bdj, 1
  %i.bdl = icmp slt i32 %i.bdk, %5
  br i1 %i.bdl, label %.lr.ph335.i.i, label %.preheader272.i.i, !llvm.loop !82

.lr.ph340.i.i:                                    ; preds = %.preheader272.i.i, %.lr.ph340.i.i
  %.22339.i.i = phi ptr [ %i.bef, %.lr.ph340.i.i ], [ %.21.lcssa.i.i, %.preheader272.i.i ] ; 2 uses
  %.21240338.i.i = phi i32 [ %i.beg, %.lr.ph340.i.i ], [ %.11239.lcssa.i.i, %.preheader272.i.i ] ; 2 uses
  %i.bdm = add nsw i32 %.21240338.i.i, %4         ; 2 uses
  %i.bdn = sdiv i32 %i.bdm, %i.yi
  %i.bdo = srem i32 %i.bdm, %i.yi                 ; 2 uses
  %i.bdp = sdiv i32 %i.bdo, %6
  %i.bdq = srem i32 %i.bdo, %6
  %i.bdr = mul i32 %i.bdp, %.scalar514.i.i
  %i.bds = mul nsw i32 %i.bdq, %8
  %i.bdt = mul i32 %i.bdn, %i.acs
  %i.bdu = add i32 %i.bdr, %i.bdt
  %i.bdv = add i32 %i.bdu, %i.bds
  %i.bdw = insertelement <4 x i32> poison, i32 %i.bdv, i64 0
  %i.bdx = shufflevector <4 x i32> %i.bdw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdy = add <4 x i32> %i.bdx, %i.atc
  %i.bdz = load ptr, ptr %0, align 8, !tbaa !16
  %i.bea = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bdz, <4 x i32> %i.bdy, <4 x i32> splat (i32 -1), i8 1)
  %i.beb = bitcast <4 x i32> %i.bea to <16 x i8>
  %i.bec = shufflevector <16 x i8> %i.beb, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bed = bitcast <16 x i8> %i.bec to <4 x float>
  %i.bee = extractelement <4 x float> %i.bed, i64 0
  store float %i.bee, ptr %.22339.i.i, align 1, !tbaa !21
  %i.bef = getelementptr inbounds nuw i8, ptr %.22339.i.i, i64 4 ; 2 uses
  %i.beg = add nuw nsw i32 %.21240338.i.i, 1      ; 2 uses
  %exitcond500.not.i.i = icmp eq i32 %i.beg, %5
  br i1 %exitcond500.not.i.i, label %.loopexit265.i.i, label %.lr.ph340.i.i, !llvm.loop !83

.loopexit273.i.i:                                 ; preds = %bb.u
  br i1 %brmerge441.i.i, label %.loopexit265.i.i, label %.lr.ph344.i.i

.lr.ph344.i.i:                                    ; preds = %.loopexit273.i.i, %.lr.ph344.i.i
  %.24343.i.i = phi ptr [ %i.bfb, %.lr.ph344.i.i ], [ %.13365.i.i, %.loopexit273.i.i ] ; 2 uses
  %.01241342.i.i = phi i32 [ %i.bfc, %.lr.ph344.i.i ], [ 0, %.loopexit273.i.i ] ; 2 uses
  %i.beh = add nsw i32 %.01241342.i.i, %i.adc     ; 2 uses
  %i.bei = sdiv i32 %i.beh, %i.yi
  %i.bej = srem i32 %i.beh, %i.yi                 ; 2 uses
  %i.bek = sdiv i32 %i.bej, %6
  %i.bel = srem i32 %i.bej, %6
  %i.bem = mul i32 %i.bek, %.scalar514.i.i
  %i.ben = mul nsw i32 %i.bel, %8
  %i.beo = mul i32 %i.bei, %i.acs
  %i.bep = add i32 %i.bem, %i.beo
  %i.beq = add i32 %i.bep, %i.ben
  %i.ber = insertelement <4 x i32> poison, i32 %i.beq, i64 0
  %i.bes = shufflevector <4 x i32> %i.ber, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bet = add <4 x i32> %i.bes, %i.atc
  %i.beu = shl <4 x i32> %i.bet, splat (i32 3)
  %i.bev = load ptr, ptr %0, align 8, !tbaa !16
  %i.bew = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bev, <4 x i32> %i.beu, <4 x i64> splat (i64 -1), i8 1)
  %i.bex = bitcast <4 x i64> %i.bew to <8 x i32>
  %i.bey = shufflevector <8 x i32> %i.bex, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.bez = bitcast <8 x i32> %i.bey to <4 x i64>
  %i.bfa = shufflevector <4 x i64> %i.bez, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bfa, ptr %.24343.i.i, align 1, !tbaa !21
  %i.bfb = getelementptr inbounds nuw i8, ptr %.24343.i.i, i64 32 ; 2 uses
  %i.bfc = add nuw nsw i32 %.01241342.i.i, 1      ; 2 uses
  %exitcond501.not.i.i = icmp eq i32 %i.bfc, %i.ada
  br i1 %exitcond501.not.i.i, label %.loopexit265.i.i, label %.lr.ph344.i.i, !llvm.loop !84

.loopexit265.i.i:                                 ; preds = %.lr.ph344.i.i, %.lr.ph340.i.i, %bb.t, %bb.s, %.loopexit273.i.i, %.preheader272.i.i, %.loopexit267.i.i, %.preheader266.i.i
  %.25.i.i = phi ptr [ %.13365.i.i, %.loopexit273.i.i ], [ %.15.lcssa.i.i, %.preheader266.i.i ], [ %.13365.i.i, %.loopexit267.i.i ], [ %i.azg, %bb.t ], [ %i.ayh, %bb.s ], [ %.21.lcssa.i.i, %.preheader272.i.i ], [ %i.bef, %.lr.ph340.i.i ], [ %i.bfb, %.lr.ph344.i.i ] ; 2 uses
  %i.bfd = add nuw nsw i32 %.11222364.i.i, 4      ; 3 uses
  %i.bfe = or disjoint i32 %i.bfd, 3
  %i.bff = icmp slt i32 %i.bfe, %3
  br i1 %i.bff, label %bb.o, label %.preheader263.i.i, !llvm.loop !85

.preheader250.i.i:                                ; preds = %.loopexit252.i.i, %.preheader263.i.i
  %.21223.lcssa.i.i = phi i32 [ %.11222.lcssa.i.i, %.preheader263.i.i ], [ %i.btm, %.loopexit252.i.i ] ; 2 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader263.i.i ], [ %.39.i.i, %.loopexit252.i.i ]
  %i.bfg = icmp slt i32 %.21223.lcssa.i.i, %3
  br i1 %i.bfg, label %.lr.ph431.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph431.i.i:                                    ; preds = %.preheader250.i.i
  %i.bfh = mul i32 %i.ya, %11
  %i.bfi = icmp eq i32 %i.yc, 1
  %i.bfj = icmp sgt i32 %5, 3
  %i.bfk = shufflevector <4 x i64> %i.zt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bfl = and <2 x i64> %i.bfk, splat (i64 4294967295) ; 2 uses
  %i.bfm = shufflevector <4 x i32> %i.zu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfn = insertelement <4 x i32> poison, i32 %i.yi, i64 0
  %i.bfo = shufflevector <4 x i32> %i.bfn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfp = shufflevector <4 x i64> %i.aal, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bfq = and <2 x i64> %i.bfp, splat (i64 4294967295) ; 2 uses
  %i.bfr = shufflevector <4 x i32> %i.aam, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfs = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.bft = shufflevector <4 x i32> %i.bfs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfu = trunc i64 %i.l to i32
  %i.bfv = insertelement <4 x i32> poison, i32 %i.bfu, i64 0
  %i.bfw = shufflevector <4 x i32> %i.bfv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfx = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bfy = shufflevector <4 x i32> %i.bfx, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar518.i.i = mul i32 %i.ya, %9             ; 5 uses
  %i.bfz = insertelement <4 x i32> poison, i32 %.scalar518.i.i, i64 0
  %i.bga = shufflevector <4 x i32> %i.bfz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgb = icmp ne i32 %i.yc, 8
  %16 = sdiv i32 %5, 8
  %i.bgc = icmp slt i32 %5, 8
  %i.bgd = sdiv i32 %4, 8
  %brmerge448.i.i = or i1 %i.bgc, %i.bgb
  br label %bb.ae

bb.v:                                             ; preds = %.loopexit252.i.i, %.lr.ph408.i.i
  %.26407.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph408.i.i ], [ %.39.i.i, %.loopexit252.i.i ] ; 8 uses
  %.21223406.i.i = phi i32 [ %.11222.lcssa.i.i, %.lr.ph408.i.i ], [ %i.btm, %.loopexit252.i.i ] ; 2 uses
  %i.bge = add nsw i32 %.21223406.i.i, %2         ; 3 uses
  %i.bgf = sdiv i32 %i.bge, %i.yh
  %i.bgg = add nsw i32 %i.bge, 1                  ; 2 uses
  %i.bgh = sdiv i32 %i.bgg, %i.yh
  %i.bgi = srem i32 %i.bge, %i.yh
  %i.bgj = srem i32 %i.bgg, %i.yh
  %i.bgk = mul nsw i32 %i.bgi, %10
  %i.bgl = mul nsw i32 %i.bgj, %10
  %i.bgm = mul i32 %i.bgf, %i.arf                 ; 2 uses
  %i.bgn = mul i32 %i.bgh, %i.arf                 ; 2 uses
  %i.bgo = add nsw i32 %i.bgk, %i.bgm             ; 12 uses
  %i.bgp = add nsw i32 %i.bgl, %i.bgn             ; 8 uses
  %i.bgq = icmp eq i32 %i.bgm, %i.bgn
  %or.cond5.i.i = and i1 %i.g, %i.bgq
  br i1 %or.cond5.i.i, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  br i1 %i.arg, label %.preheader256.i.i, label %.loopexit254.i.i

.preheader256.i.i:                                ; preds = %bb.w
  br i1 %i.arh, label %.lr.ph390.i.i, label %.preheader255.i.i

.lr.ph390.i.i:                                    ; preds = %.preheader256.i.i
  %i.bgr = insertelement <4 x i32> poison, i32 %i.bgo, i64 0
  %i.bgs = shufflevector <4 x i32> %i.bgr, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.x

.preheader255.i.i:                                ; preds = %bb.x, %.preheader256.i.i
  %.01242.lcssa.i.i = phi i32 [ 0, %.preheader256.i.i ], [ %i.biv, %bb.x ] ; 3 uses
  %.27.lcssa.i.i = phi ptr [ %.26407.i.i, %.preheader256.i.i ], [ %i.biu, %bb.x ] ; 2 uses
  %i.bgt = or disjoint i32 %.01242.lcssa.i.i, 1
  %i.bgu = icmp slt i32 %i.bgt, %5
  br i1 %i.bgu, label %.lr.ph395.i.i, label %.preheader253.i.i

.lr.ph395.i.i:                                    ; preds = %.preheader255.i.i
  %i.bgv = sext i32 %i.bgo to i64                 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph390.i.i
  %.27389.i.i = phi ptr [ %.26407.i.i, %.lr.ph390.i.i ], [ %i.biu, %bb.x ] ; 2 uses
  %.01242388.i.i = phi i32 [ 0, %.lr.ph390.i.i ], [ %i.biv, %bb.x ] ; 2 uses
  %i.bgw = add nsw i32 %.01242388.i.i, %4
  %i.bgx = insertelement <4 x i32> poison, i32 %i.bgw, i64 0
  %i.bgy = shufflevector <4 x i32> %i.bgx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgz = add <4 x i32> %i.bgy, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bha = bitcast <4 x i32> %i.bgz to <2 x i64>
  %i.bhb = bitcast <4 x i32> %i.bgz to <2 x i64>
  %i.bhc = and <2 x i64> %i.bhb, splat (i64 4294967295)
  %i.bhd = mul nuw <2 x i64> %i.bhc, %i.arj
  %i.bhe = lshr <2 x i64> %i.bhd, splat (i64 32)
  %i.bhf = lshr <2 x i64> %i.bha, splat (i64 32)
  %i.bhg = mul nuw <2 x i64> %i.bhf, %i.arj
  %i.bhh = bitcast <2 x i64> %i.bhe to <8 x i16>
  %i.bhi = bitcast <2 x i64> %i.bhg to <8 x i16>
  %i.bhj = shufflevector <8 x i16> %i.bhh, <8 x i16> %i.bhi, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bhk = bitcast <8 x i16> %i.bhj to <4 x i32>  ; 2 uses
  %i.bhl = sub <4 x i32> %i.bgz, %i.bhk
  %i.bhm = lshr <4 x i32> %i.bhl, %i.ark
  %i.bhn = add <4 x i32> %i.bhm, %i.bhk
  %i.bho = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bhn, <4 x i32> %i.zv) ; 2 uses
  %i.bhp = mul <4 x i32> %i.bho, %i.arm
  %i.bhq = sub <4 x i32> %i.bgz, %i.bhp           ; 4 uses
  %i.bhr = bitcast <4 x i32> %i.bhq to <2 x i64>
  %i.bhs = bitcast <4 x i32> %i.bhq to <2 x i64>
  %i.bht = and <2 x i64> %i.bhs, splat (i64 4294967295)
  %i.bhu = mul nuw <2 x i64> %i.bht, %i.aro
  %i.bhv = lshr <2 x i64> %i.bhu, splat (i64 32)
  %i.bhw = lshr <2 x i64> %i.bhr, splat (i64 32)
  %i.bhx = mul nuw <2 x i64> %i.bhw, %i.aro
  %i.bhy = bitcast <2 x i64> %i.bhv to <8 x i16>
  %i.bhz = bitcast <2 x i64> %i.bhx to <8 x i16>
  %i.bia = shufflevector <8 x i16> %i.bhy, <8 x i16> %i.bhz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bib = bitcast <8 x i16> %i.bia to <4 x i32>  ; 2 uses
  %i.bic = sub <4 x i32> %i.bhq, %i.bib
  %i.bid = lshr <4 x i32> %i.bic, %i.arp
  %i.bie = add <4 x i32> %i.bid, %i.bib
  %i.bif = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bie, <4 x i32> %i.aan) ; 2 uses
  %i.big = mul <4 x i32> %i.bif, %i.arr
  %i.bih = sub <4 x i32> %i.bhq, %i.big
  %i.bii = mul <4 x i32> %i.bho, %i.aru
  %i.bij = mul <4 x i32> %i.bih, %i.arw
  %i.bik = mul <4 x i32> %i.bif, %i.ary
  %i.bil = add <4 x i32> %i.bii, %i.bgs
  %i.bim = add <4 x i32> %i.bil, %i.bik
  %i.bin = add <4 x i32> %i.bim, %i.bij
  %i.bio = load ptr, ptr %0, align 8, !tbaa !16
  %i.bip = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bio, <4 x i32> %i.bin, <4 x i32> splat (i32 -1), i8 1)
  %i.biq = bitcast <4 x i32> %i.bip to <16 x i8>
  %i.bir = shufflevector <16 x i8> %i.biq, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bis = bitcast <16 x i8> %i.bir to <2 x i64>
  %i.bit = extractelement <2 x i64> %i.bis, i64 0
  store i64 %i.bit, ptr %.27389.i.i, align 1, !tbaa !21
  %i.biu = getelementptr inbounds nuw i8, ptr %.27389.i.i, i64 8 ; 2 uses
  %i.biv = add nuw nsw i32 %.01242388.i.i, 4      ; 3 uses
  %i.biw = or disjoint i32 %i.biv, 3
  %i.bix = icmp slt i32 %i.biw, %5
  br i1 %i.bix, label %bb.x, label %.preheader255.i.i, !llvm.loop !86

.preheader253.i.i:                                ; preds = %bb.y, %.preheader255.i.i
  %.11243.lcssa.i.i = phi i32 [ %.01242.lcssa.i.i, %.preheader255.i.i ], [ %i.bkn, %bb.y ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.27.lcssa.i.i, %.preheader255.i.i ], [ %i.bkm, %bb.y ] ; 2 uses
  %i.biy = icmp slt i32 %.11243.lcssa.i.i, %5
  br i1 %i.biy, label %.lr.ph400.i.i, label %.loopexit252.i.i

.lr.ph400.i.i:                                    ; preds = %.preheader253.i.i
  %i.biz = sext i32 %i.bgo to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph395.i.i
  %.28394.i.i = phi ptr [ %.27.lcssa.i.i, %.lr.ph395.i.i ], [ %i.bkm, %bb.y ] ; 5 uses
  %.11243393.i.i = phi i32 [ %.01242.lcssa.i.i, %.lr.ph395.i.i ], [ %i.bkn, %bb.y ] ; 2 uses
  %i.bja = add nsw i32 %.11243393.i.i, %4         ; 3 uses
  %i.bjb = sdiv i32 %i.bja, %i.yi
  %i.bjc = add nsw i32 %i.bja, 1                  ; 2 uses
  %i.bjd = sdiv i32 %i.bjc, %i.yi
  %i.bje = srem i32 %i.bja, %i.yi                 ; 2 uses
  %i.bjf = srem i32 %i.bjc, %i.yi                 ; 2 uses
  %i.bjg = sdiv i32 %i.bje, %6
  %i.bjh = sdiv i32 %i.bjf, %6
  %i.bji = srem i32 %i.bje, %6
  %i.bjj = srem i32 %i.bjf, %6
  %i.bjk = sext i32 %i.bjb to i64
  %i.bjl = mul i64 %i.l, %i.bjk
  %i.bjm = mul i32 %i.bjg, %.scalar516.i.i
  %i.bjn = mul nsw i32 %i.bji, %8
  %i.bjo = add nsw i32 %i.bjn, %i.bjm
  %i.bjp = sext i32 %i.bjo to i64
  %i.bjq = sext i32 %i.bjd to i64
  %i.bjr = mul i64 %i.l, %i.bjq
  %i.bjs = mul i32 %i.bjh, %.scalar516.i.i
  %i.bjt = mul nsw i32 %i.bjj, %8
  %i.bju = add nsw i32 %i.bjt, %i.bjs
  %i.bjv = sext i32 %i.bju to i64
  %i.bjw = load ptr, ptr %0, align 8, !tbaa !16   ; 2 uses
  %i.bjx = getelementptr i8, ptr %i.bjw, i64 %i.bjl
  %i.bjy = getelementptr i8, ptr %i.bjx, i64 %i.bgv
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 %i.bjp ; 2 uses
  %i.bka = getelementptr i8, ptr %i.bjw, i64 %i.bjr
  %i.bkb = getelementptr i8, ptr %i.bka, i64 %i.bgv
  %i.bkc = getelementptr i8, ptr %i.bkb, i64 %i.bjv ; 2 uses
  %i.bkd = load i8, ptr %i.bjz, align 1, !tbaa !21
  store i8 %i.bkd, ptr %.28394.i.i, align 1, !tbaa !21
  %i.bke = load i8, ptr %i.bkc, align 1, !tbaa !21
  %i.bkf = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 1
  store i8 %i.bke, ptr %i.bkf, align 1, !tbaa !21
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjz, i64 1
  %i.bkh = load i8, ptr %i.bkg, align 1, !tbaa !21
  %i.bki = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 2
  store i8 %i.bkh, ptr %i.bki, align 1, !tbaa !21
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkc, i64 1
  %i.bkk = load i8, ptr %i.bkj, align 1, !tbaa !21
  %i.bkl = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 3
  store i8 %i.bkk, ptr %i.bkl, align 1, !tbaa !21
  %i.bkm = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 4 ; 2 uses
  %i.bkn = add nuw nsw i32 %.11243393.i.i, 2      ; 3 uses
  %i.bko = or disjoint i32 %i.bkn, 1
  %i.bkp = icmp slt i32 %i.bko, %5
  br i1 %i.bkp, label %bb.y, label %.preheader253.i.i, !llvm.loop !87

bb.z:                                             ; preds = %bb.z, %.lr.ph400.i.i
  %.29399.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph400.i.i ], [ %i.blj, %bb.z ] ; 3 uses
  %.21244398.i.i = phi i32 [ %.11243.lcssa.i.i, %.lr.ph400.i.i ], [ %i.blk, %bb.z ] ; 2 uses
  %i.bkq = add nsw i32 %.21244398.i.i, %4         ; 2 uses
  %i.bkr = sdiv i32 %i.bkq, %i.yi
  %i.bks = srem i32 %i.bkq, %i.yi                 ; 2 uses
  %i.bkt = sdiv i32 %i.bks, %6
  %i.bku = srem i32 %i.bks, %6
  %i.bkv = sext i32 %i.bkr to i64
  %i.bkw = mul i64 %i.l, %i.bkv
  %i.bkx = mul i32 %i.bkt, %.scalar516.i.i
  %i.bky = mul nsw i32 %i.bku, %8
  %i.bkz = add nsw i32 %i.bky, %i.bkx
  %i.bla = sext i32 %i.bkz to i64
  %i.blb = load ptr, ptr %0, align 8, !tbaa !16
  %i.blc = getelementptr i8, ptr %i.blb, i64 %i.bkw
  %i.bld = getelementptr i8, ptr %i.blc, i64 %i.biz
  %i.ble = getelementptr i8, ptr %i.bld, i64 %i.bla ; 2 uses
  %i.blf = load i8, ptr %i.ble, align 1, !tbaa !21
  store i8 %i.blf, ptr %.29399.i.i, align 1, !tbaa !21
  %i.blg = getelementptr inbounds nuw i8, ptr %i.ble, i64 1
  %i.blh = load i8, ptr %i.blg, align 1, !tbaa !21
  %i.bli = getelementptr inbounds nuw i8, ptr %.29399.i.i, i64 1
  store i8 %i.blh, ptr %i.bli, align 1, !tbaa !21
  %i.blj = getelementptr inbounds nuw i8, ptr %.29399.i.i, i64 2 ; 2 uses
  %i.blk = add nuw nsw i32 %.21244398.i.i, 1      ; 2 uses
  %exitcond506.not.i.i = icmp eq i32 %i.blk, %5
  br i1 %exitcond506.not.i.i, label %.loopexit252.i.i, label %bb.z, !llvm.loop !88

.loopexit254.i.i:                                 ; preds = %bb.w
  br i1 %brmerge444.i.i, label %.loopexit252.i.i, label %.lr.ph404.i.i

.lr.ph404.i.i:                                    ; preds = %.loopexit254.i.i
end_hunk_1
