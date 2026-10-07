Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/stream_encoder_intrin_avx2?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind sspstrong uwtable
define hidden void @FLAC__precompute_partition_info_sums_intrin_avx2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, %2
  %i.b = lshr i32 %i.a, %5                        ; 6 uses
  %i.c = shl nuw i32 1, %5                        ; 3 uses
  %i.d = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.e = xor i32 %i.d, 31
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = sub nsw i32 0, %3                        ; 2 uses
  %i.h = add i32 %6, 4
  %i.i = icmp ult i32 %i.h, %i.f
  %i.j = sub i32 %i.b, %3                         ; 2 uses
  %wide.trip.count204 = zext i32 %i.c to i64      ; 2 uses
  br i1 %i.i, label %.preheader113, label %.preheader116

.preheader113:                                    ; preds = %bb.a, %._crit_edge151
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %._crit_edge151 ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv197 = phi i32 [ %indvars.iv.next198, %._crit_edge151 ], [ %i.j, %bb.a ] ; 4 uses
  %.0103155 = phi i32 [ %.3.lcssa, %._crit_edge151 ], [ 0, %bb.a ] ; 3 uses
  %.0105154 = phi i32 [ %i.l, %._crit_edge151 ], [ %i.g, %bb.a ]
  %i.k = zext i32 %indvars.iv197 to i64           ; 3 uses
  %i.l = add i32 %.0105154, %i.b                  ; 4 uses
  %i.m = add nsw i32 %i.l, -7                     ; 2 uses
  %i.n = icmp slt i32 %.0103155, %i.m
  br i1 %i.n, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %.preheader113, %.lr.ph139
  %.1104137 = phi i32 [ %i.u, %.lr.ph139 ], [ %.0103155, %.preheader113 ] ; 2 uses
  %i.o = phi <8 x i32> [ %i.t, %.lr.ph139 ], [ zeroinitializer, %.preheader113 ]
  %i.p = zext i32 %.1104137 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = load <8 x i32>, ptr %i.q, align 1, !tbaa !18
  %i.s = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.r, i1 false)
  %i.t = add <8 x i32> %i.s, %i.o                 ; 2 uses
  %i.u = add nsw i32 %.1104137, 8                 ; 3 uses
  %i.v = icmp slt i32 %i.u, %i.m
  br i1 %i.v, label %.lr.ph139, label %._crit_edge140, !llvm.loop !8

._crit_edge140:                                   ; preds = %.lr.ph139, %.preheader113
  %i.w = phi <8 x i32> [ zeroinitializer, %.preheader113 ], [ %i.t, %.lr.ph139 ] ; 2 uses
  %.1104.lcssa = phi i32 [ %.0103155, %.preheader113 ], [ %i.u, %.lr.ph139 ] ; 3 uses
  %i.x = shufflevector <8 x i32> %i.w, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.y = shufflevector <8 x i32> %i.w, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.z = add <4 x i32> %i.x, %i.y                 ; 2 uses
  %i.aa = add nsw i32 %i.l, -3                    ; 2 uses
  %i.ab = icmp slt i32 %.1104.lcssa, %i.aa
  br i1 %i.ab, label %.lr.ph146, label %.preheader

.preheader:                                       ; preds = %.lr.ph146, %._crit_edge140
  %.0108.in.lcssa = phi <4 x i32> [ %i.z, %._crit_edge140 ], [ %i.ap, %.lr.ph146 ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1104.lcssa, %._crit_edge140 ], [ %i.aq, %.lr.ph146 ] ; 3 uses
  %i.ac = icmp ult i32 %.2.lcssa, %i.l
  br i1 %i.ac, label %.lr.ph150.preheader, label %._crit_edge151

.lr.ph150.preheader:                              ; preds = %.preheader
  %i.ad = zext i32 %.2.lcssa to i64               ; 5 uses
  %i.ae = sub nsw i64 %i.k, %i.ad
  %xtraiter257 = and i64 %i.ae, 1
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph150.prol.loopexit, label %.lr.ph150.prol

.lr.ph150.prol:                                   ; preds = %.lr.ph150.preheader
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  %.scalar.prol = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 false)
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar.prol, i64 0
  %i.ai = add <4 x i32> %i.ah, %.0108.in.lcssa    ; 2 uses
  %indvars.iv.next196.prol = add nuw nsw i64 %i.ad, 1
  br label %.lr.ph150.prol.loopexit

.lr.ph150.prol.loopexit:                          ; preds = %.lr.ph150.prol, %.lr.ph150.preheader
  %.lcssa250.unr = phi <4 x i32> [ poison, %.lr.ph150.preheader ], [ %i.ai, %.lr.ph150.prol ]
  %indvars.iv195.unr = phi i64 [ %i.ad, %.lr.ph150.preheader ], [ %indvars.iv.next196.prol, %.lr.ph150.prol ]
  %.unr = phi <4 x i32> [ %.0108.in.lcssa, %.lr.ph150.preheader ], [ %i.ai, %.lr.ph150.prol ]
  %i.aj = add nsw i64 %i.k, -1
  %i.ak = icmp eq i64 %i.aj, %i.ad
  br i1 %i.ak, label %._crit_edge151, label %.lr.ph150

.lr.ph146:                                        ; preds = %._crit_edge140, %.lr.ph146
  %.2144 = phi i32 [ %i.aq, %.lr.ph146 ], [ %.1104.lcssa, %._crit_edge140 ] ; 2 uses
  %.0108.in143 = phi <4 x i32> [ %i.ap, %.lr.ph146 ], [ %i.z, %._crit_edge140 ]
  %i.al = zext i32 %.2144 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  %i.an = load <4 x i32>, ptr %i.am, align 1, !tbaa !18
  %i.ao = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.an, i1 false)
  %i.ap = add <4 x i32> %i.ao, %.0108.in143       ; 2 uses
  %i.aq = add nsw i32 %.2144, 4                   ; 3 uses
  %i.ar = icmp slt i32 %i.aq, %i.aa
  br i1 %i.ar, label %.lr.ph146, label %.preheader, !llvm.loop !9

.lr.ph150:                                        ; preds = %.lr.ph150.prol.loopexit, %.lr.ph150
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph150 ], [ %indvars.iv195.unr, %.lr.ph150.prol.loopexit ] ; 3 uses
  %i.as = phi <4 x i32> [ %i.bb, %.lr.ph150 ], [ %.unr, %.lr.ph150.prol.loopexit ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv195
  %i.au = load i32, ptr %i.at, align 4, !tbaa !20
  %.scalar = tail call i32 @llvm.abs.i32(i32 %i.au, i1 false)
  %i.av = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar, i64 0
  %i.aw = add <4 x i32> %i.av, %i.as
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv195
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !20
  %.scalar.1 = tail call i32 @llvm.abs.i32(i32 %i.az, i1 false)
  %i.ba = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar.1, i64 0
  %i.bb = add <4 x i32> %i.ba, %i.aw              ; 2 uses
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond200.not.1 = icmp eq i64 %indvars.iv.next196.1, %i.k
  br i1 %exitcond200.not.1, label %._crit_edge151, label %.lr.ph150, !llvm.loop !10

._crit_edge151:                                   ; preds = %.lr.ph150.prol.loopexit, %.lr.ph150, %.preheader
  %.lcssa = phi <4 x i32> [ %.0108.in.lcssa, %.preheader ], [ %.lcssa250.unr, %.lr.ph150.prol.loopexit ], [ %i.bb, %.lr.ph150 ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader ], [ %indvars.iv197, %.lr.ph150 ], [ %indvars.iv197, %.lr.ph150.prol.loopexit ]
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa)
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv201
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !22
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %indvars.iv.next198 = add i32 %indvars.iv197, %i.b
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %.loopexit114, label %.preheader113, !llvm.loop !11

.preheader116:                                    ; preds = %bb.a, %._crit_edge130
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %._crit_edge130 ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv188 = phi i32 [ %indvars.iv.next189, %._crit_edge130 ], [ %i.j, %bb.a ] ; 4 uses
  %.4134 = phi i32 [ %.7.lcssa, %._crit_edge130 ], [ 0, %bb.a ] ; 3 uses
  %.1106133 = phi i32 [ %i.bg, %._crit_edge130 ], [ %i.g, %bb.a ]
  %i.bf = zext i32 %indvars.iv188 to i64          ; 3 uses
  %i.bg = add i32 %.1106133, %i.b                 ; 4 uses
  %i.bh = add nsw i32 %i.bg, -3                   ; 2 uses
  %i.bi = icmp slt i32 %.4134, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader116, %.lr.ph
  %.0102119 = phi <4 x i64> [ %i.bo, %.lr.ph ], [ zeroinitializer, %.preheader116 ]
  %.5118 = phi i32 [ %i.bp, %.lr.ph ], [ %.4134, %.preheader116 ] ; 2 uses
  %i.bj = zext i32 %.5118 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !18
  %i.bm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bl, i1 false)
  %i.bn = zext <4 x i32> %i.bm to <4 x i64>
  %i.bo = add <4 x i64> %.0102119, %i.bn          ; 2 uses
  %i.bp = add nsw i32 %.5118, 4                   ; 3 uses
  %i.bq = icmp slt i32 %i.bp, %i.bh
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %.preheader116
  %.5.lcssa = phi i32 [ %.4134, %.preheader116 ], [ %i.bp, %.lr.ph ] ; 3 uses
  %.0102.lcssa = phi <4 x i64> [ zeroinitializer, %.preheader116 ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.br = shufflevector <4 x i64> %.0102.lcssa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.bs = shufflevector <4 x i64> %.0102.lcssa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bt = add <2 x i64> %i.br, %i.bs              ; 2 uses
  %i.bu = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bv = icmp slt i32 %.5.lcssa, %i.bu
  br i1 %i.bv, label %.lr.ph124, label %.preheader115

.preheader115:                                    ; preds = %.lr.ph124, %._crit_edge
  %.6.lcssa = phi i32 [ %.5.lcssa, %._crit_edge ], [ %i.cm, %.lr.ph124 ] ; 3 uses
  %.0100.lcssa = phi <2 x i64> [ %i.bt, %._crit_edge ], [ %i.cl, %.lr.ph124 ] ; 3 uses
  %i.bw = icmp ult i32 %.6.lcssa, %i.bg
  br i1 %i.bw, label %.lr.ph129.preheader, label %._crit_edge130

.lr.ph129.preheader:                              ; preds = %.preheader115
  %i.bx = zext i32 %.6.lcssa to i64               ; 5 uses
  %i.by = sub nsw i64 %i.bf, %i.bx
  %xtraiter = and i64 %i.by, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph129.prol.loopexit, label %.lr.ph129.prol

.lr.ph129.prol:                                   ; preds = %.lr.ph129.preheader
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !20
  %.scalar207.prol = tail call i32 @llvm.abs.i32(i32 %i.ca, i1 false)
  %i.cb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar207.prol, i64 0
  %i.cc = bitcast <4 x i32> %i.cb to <2 x i64>
  %i.cd = add <2 x i64> %.0100.lcssa, %i.cc       ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %i.bx, 1
  br label %.lr.ph129.prol.loopexit

.lr.ph129.prol.loopexit:                          ; preds = %.lr.ph129.prol, %.lr.ph129.preheader
  %.lcssa256.unr = phi <2 x i64> [ poison, %.lr.ph129.preheader ], [ %i.cd, %.lr.ph129.prol ]
  %indvars.iv.unr = phi i64 [ %i.bx, %.lr.ph129.preheader ], [ %indvars.iv.next.prol, %.lr.ph129.prol ]
  %.1101128.unr = phi <2 x i64> [ %.0100.lcssa, %.lr.ph129.preheader ], [ %i.cd, %.lr.ph129.prol ]
  %i.ce = add nsw i64 %i.bf, -1
  %i.cf = icmp eq i64 %i.ce, %i.bx
  br i1 %i.cf, label %._crit_edge130, label %.lr.ph129

.lr.ph124:                                        ; preds = %._crit_edge, %.lr.ph124
  %.0100122 = phi <2 x i64> [ %i.cl, %.lr.ph124 ], [ %i.bt, %._crit_edge ]
  %.6121 = phi i32 [ %i.cm, %.lr.ph124 ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  %i.cg = zext i32 %.6121 to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load <2 x i32>, ptr %i.ch, align 1, !tbaa !18
  %i.cj = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ci, i1 false)
  %i.ck = zext <2 x i32> %i.cj to <2 x i64>
  %i.cl = add <2 x i64> %.0100122, %i.ck          ; 2 uses
  %i.cm = add nsw i32 %.6121, 2                   ; 3 uses
  %i.cn = icmp slt i32 %i.cm, %i.bu
  br i1 %i.cn, label %.lr.ph124, label %.preheader115, !llvm.loop !13

.lr.ph129:                                        ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph129 ], [ %indvars.iv.unr, %.lr.ph129.prol.loopexit ] ; 3 uses
  %.1101128 = phi <2 x i64> [ %i.cy, %.lr.ph129 ], [ %.1101128.unr, %.lr.ph129.prol.loopexit ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !20
  %.scalar207 = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 false)
  %i.cq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar207, i64 0
  %i.cr = bitcast <4 x i32> %i.cq to <2 x i64>
  %i.cs = add <2 x i64> %.1101128, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !20
  %.scalar207.1 = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 false)
  %i.cw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.scalar207.1, i64 0
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = add <2 x i64> %i.cs, %i.cx              ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bf
  br i1 %exitcond.not.1, label %._crit_edge130, label %.lr.ph129, !llvm.loop !14

._crit_edge130:                                   ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129, %.preheader115
  %.7.lcssa = phi i32 [ %.6.lcssa, %.preheader115 ], [ %indvars.iv188, %.lr.ph129 ], [ %indvars.iv188, %.lr.ph129.prol.loopexit ]
  %.1101.lcssa = phi <2 x i64> [ %.0100.lcssa, %.preheader115 ], [ %.lcssa256.unr, %.lr.ph129.prol.loopexit ], [ %i.cy, %.lr.ph129 ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv191
  %i.da = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %.1101.lcssa)
  store i64 %i.da, ptr %i.cz, align 1, !tbaa !18
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %indvars.iv.next189 = add i32 %indvars.iv188, %i.b
  %exitcond194.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count204
  br i1 %exitcond194.not, label %.loopexit114, label %.preheader116, !llvm.loop !15

.loopexit114:                                     ; preds = %._crit_edge130, %._crit_edge151
  %.not.not165 = icmp sgt i32 %5, %4
  br i1 %.not.not165, label %.lr.ph171, label %._crit_edge172

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph161
  %7 = and i32 %.097166, 2
  %lcmp.mod260.not = icmp eq i32 %7, 0
  br i1 %lcmp.mod260.not, label %.loopexit, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %.lr.ph171, %.loopexit.loopexit.unr-lcssa
  %.1158.epil.init = phi i32 [ %.094168, %.lr.ph171 ], [ %i.ei, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.196157.epil.init = phi i32 [ %.095167, %.lr.ph171 ], [ %i.el, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod263 = trunc i32 %i.dn to i1
  tail call void @llvm.assume(i1 %lcmp.mod263)
  %i.db = zext i32 %.196157.epil.init to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.de = add i32 %.196157.epil.init, 1
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !22
  %i.di = add i64 %i.dh, %i.dd
  %i.dj = add i32 %.1158.epil.init, 1
  %i.dk = zext i32 %.1158.epil.init to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dk
  store i64 %i.di, ptr %i.dl, align 8, !tbaa !22
  %i.dm = add i32 %.196157.epil.init, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph171, %.lr.ph161.epil.preheader, %.loopexit.loopexit.unr-lcssa
  %.196.lcssa = phi i32 [ %.095167, %.lr.ph171 ], [ %i.el, %.loopexit.loopexit.unr-lcssa ], [ %i.dm, %.lr.ph161.epil.preheader ]
  %.1.lcssa = phi i32 [ %.094168, %.lr.ph171 ], [ %i.ei, %.loopexit.loopexit.unr-lcssa ], [ %i.dj, %.lr.ph161.epil.preheader ]
  %.not.not = icmp sgt i32 %.093169, %4
  br i1 %.not.not, label %.lr.ph171, label %._crit_edge172, !llvm.loop !16

.lr.ph171:                                        ; preds = %.loopexit114, %.loopexit
  %.093169.in = phi i32 [ %.093169, %.loopexit ], [ %5, %.loopexit114 ]
  %.094168 = phi i32 [ %.1.lcssa, %.loopexit ], [ %i.c, %.loopexit114 ] ; 3 uses
  %.095167 = phi i32 [ %.196.lcssa, %.loopexit ], [ 0, %.loopexit114 ] ; 3 uses
  %.097166 = phi i32 [ %i.dn, %.loopexit ], [ %i.c, %.loopexit114 ] ; 2 uses
  %.093169 = add nsw i32 %.093169.in, -1          ; 2 uses
  %i.dn = lshr i32 %.097166, 1                    ; 4 uses
  switch i32 %i.dn, label %.lr.ph161.preheader.new [
    i32 0, label %.loopexit
    i32 1, label %.lr.ph161.epil.preheader
  ]

.lr.ph161.preheader.new:                          ; preds = %.lr.ph171
  %unroll_iter = and i32 %i.dn, 2147483646
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %.1158 = phi i32 [ %.094168, %.lr.ph161.preheader.new ], [ %i.ei, %.lr.ph161 ] ; 3 uses
  %.196157 = phi i32 [ %.095167, %.lr.ph161.preheader.new ], [ %i.el, %.lr.ph161 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph161.preheader.new ], [ %niter.next.1, %.lr.ph161 ]
  %i.do = zext i32 %.196157 to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !22
  %i.dr = add i32 %.196157, 1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !22
  %i.dv = add i64 %i.du, %i.dq
  %i.dw = add i32 %.1158, 1
  %i.dx = zext i32 %.1158 to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dx
  store i64 %i.dv, ptr %i.dy, align 8, !tbaa !22
  %i.dz = add i32 %.196157, 2
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !22
  %i.ed = add i32 %.196157, 3
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !22
  %i.eh = add i64 %i.eg, %i.ec
  %i.ei = add i32 %.1158, 2                       ; 3 uses
  %i.ej = zext i32 %i.dw to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ej
  store i64 %i.eh, ptr %i.ek, align 8, !tbaa !22
  %i.el = add i32 %.196157, 4                     ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !17

._crit_edge172:                                   ; preds = %.loopexit, %.loopexit114
  tail call void @llvm.x86.avx.vzeroupper()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #1

; Function Attrs: nounwind
declare void @llvm.x86.avx.vzeroupper() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !19}
!11 = distinct !{!11, !19}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !19}
!15 = distinct !{!15, !19}
!16 = distinct !{!16, !19}
!17 = distinct !{!17, !19}
!18 = !{!4, !4, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!5, !5, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!21, !21, i64 0}
end_hunk_0
