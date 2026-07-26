inline.NumInlined: 20
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN5folly6detail16crc32_hw_alignedEjPKDv2_xm(i32 noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2 ; 2 uses
  %i.c = shl i64 %2, 4                            ; 2 uses
  %.idx = and i64 %i.c, -64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %.idx106 = and i64 %i.c, -128                   ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 %.idx106   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load <2 x i64>, ptr %1, align 16, !tbaa !11
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %0, i64 0
  %i.i = bitcast <4 x i32> %i.h to <2 x i64>
  %i.j = xor <2 x i64> %i.g, %i.i                 ; 4 uses
  %i.k = icmp eq i64 %.idx, 0
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load <2 x i64>, ptr %i.f, align 16, !tbaa !11 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load <2 x i64>, ptr %i.l, align 16, !tbaa !11 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.n, align 16, !tbaa !11 ; 3 uses
  %i.r = icmp eq i64 %.idx106, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = load <2 x i64>, ptr %i.p, align 16, !tbaa !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = load <2 x i64>, ptr %i.s, align 16, !tbaa !11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load <2 x i64>, ptr %i.u, align 16, !tbaa !11 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.w, align 16, !tbaa !11 ; 2 uses
  %.094109 = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.not110 = icmp samesign eq i64 %.idx106, 128
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.094120 = phi ptr [ %.094, %.lr.ph ], [ %.094109, %bb.d ] ; 3 uses
  %.0119 = phi <2 x i64> [ %i.bt, %.lr.ph ], [ %i.y, %bb.d ] ; 2 uses
  %.080118 = phi <2 x i64> [ %i.bn, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  %.081117 = phi <2 x i64> [ %i.bh, %.lr.ph ], [ %i.v, %bb.d ] ; 2 uses
  %.082116 = phi <2 x i64> [ %i.bb, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.083115 = phi <2 x i64> [ %i.av, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.084114 = phi <2 x i64> [ %i.ap, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.087113 = phi <2 x i64> [ %i.aj, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.090112 = phi <2 x i64> [ %i.ad, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %.pn111 = phi ptr [ %.094120, %.lr.ph ], [ %1, %bb.d ] ; 7 uses
  %i.z = load <2 x i64>, ptr %.094120, align 16, !tbaa !11
  %i.aa = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.090112, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.ab = xor <2 x i64> %i.aa, %i.z
  %i.ac = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.090112, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.ad = xor <2 x i64> %i.ab, %i.ac              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn111, i64 144
  %i.af = load <2 x i64>, ptr %i.ae, align 16, !tbaa !11
  %i.ag = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.087113, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.ah = xor <2 x i64> %i.ag, %i.af
  %i.ai = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.087113, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.aj = xor <2 x i64> %i.ah, %i.ai              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn111, i64 160
  %i.al = load <2 x i64>, ptr %i.ak, align 16, !tbaa !11
  %i.am = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.084114, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.an = xor <2 x i64> %i.am, %i.al
  %i.ao = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.084114, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.ap = xor <2 x i64> %i.an, %i.ao              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn111, i64 176
  %i.ar = load <2 x i64>, ptr %i.aq, align 16, !tbaa !11
  %i.as = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.083115, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.at = xor <2 x i64> %i.as, %i.ar
  %i.au = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.083115, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.av = xor <2 x i64> %i.at, %i.au              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn111, i64 192
  %i.ax = load <2 x i64>, ptr %i.aw, align 16, !tbaa !11
  %i.ay = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.082116, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.az = xor <2 x i64> %i.ay, %i.ax
  %i.ba = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.082116, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.bb = xor <2 x i64> %i.az, %i.ba              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn111, i64 208
  %i.bd = load <2 x i64>, ptr %i.bc, align 16, !tbaa !11
  %i.be = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.081117, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.bf = xor <2 x i64> %i.be, %i.bd
  %i.bg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.081117, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.bh = xor <2 x i64> %i.bf, %i.bg              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn111, i64 224
  %i.bj = load <2 x i64>, ptr %i.bi, align 16, !tbaa !11
  %i.bk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.080118, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.bl = xor <2 x i64> %i.bk, %i.bj
  %i.bm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.080118, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.bn = xor <2 x i64> %i.bl, %i.bm              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn111, i64 240
  %i.bp = load <2 x i64>, ptr %i.bo, align 16, !tbaa !11
  %i.bq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0119, <2 x i64> <i64 872412467, i64 poison>, i8 0)
  %i.br = xor <2 x i64> %i.bq, %i.bp
  %i.bs = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0119, <2 x i64> <i64 poison, i64 2433674945>, i8 17)
  %i.bt = xor <2 x i64> %i.br, %i.bs              ; 2 uses
  %.094 = getelementptr inbounds nuw i8, ptr %.094120, i64 128 ; 2 uses
  %.not = icmp eq ptr %.094, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.090.lcssa = phi <2 x i64> [ %i.j, %bb.d ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.087.lcssa = phi <2 x i64> [ %i.m, %bb.d ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.084.lcssa = phi <2 x i64> [ %i.o, %bb.d ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.083.lcssa = phi <2 x i64> [ %i.q, %bb.d ], [ %i.av, %.lr.ph ] ; 2 uses
  %.082.lcssa = phi <2 x i64> [ %i.t, %bb.d ], [ %i.bb, %.lr.ph ]
  %.081.lcssa = phi <2 x i64> [ %i.v, %bb.d ], [ %i.bh, %.lr.ph ]
  %.080.lcssa = phi <2 x i64> [ %i.x, %bb.d ], [ %i.bn, %.lr.ph ]
  %.0.lcssa = phi <2 x i64> [ %i.y, %bb.d ], [ %i.bt, %.lr.ph ]
  %.094.lcssa = phi ptr [ %.094109, %bb.d ], [ %i.e, %.lr.ph ]
  %i.bu = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.090.lcssa, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.bv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.090.lcssa, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.bw = xor <2 x i64> %i.bu, %.082.lcssa
  %i.bx = xor <2 x i64> %i.bw, %i.bv
  %i.by = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.087.lcssa, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.bz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.087.lcssa, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.ca = xor <2 x i64> %i.by, %.081.lcssa
  %i.cb = xor <2 x i64> %i.ca, %i.bz
  %i.cc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.084.lcssa, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.cd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.084.lcssa, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.ce = xor <2 x i64> %i.cc, %.080.lcssa
  %i.cf = xor <2 x i64> %i.ce, %i.cd
  %i.cg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.083.lcssa, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.ch = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.083.lcssa, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.ci = xor <2 x i64> %i.cg, %.0.lcssa
  %i.cj = xor <2 x i64> %i.ci, %i.ch
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge
  %.195 = phi ptr [ %i.p, %bb.c ], [ %.094.lcssa, %._crit_edge ] ; 2 uses
  %.191 = phi <2 x i64> [ %i.j, %bb.c ], [ %i.bx, %._crit_edge ] ; 2 uses
  %.188 = phi <2 x i64> [ %i.m, %bb.c ], [ %i.cb, %._crit_edge ] ; 2 uses
  %.185 = phi <2 x i64> [ %i.o, %bb.c ], [ %i.cf, %._crit_edge ] ; 2 uses
  %.1 = phi <2 x i64> [ %i.q, %bb.c ], [ %i.cj, %._crit_edge ] ; 2 uses
  %.not107129 = icmp eq ptr %.195, %i.d
  br i1 %.not107129, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.e, %.lr.ph136
  %.2134 = phi <2 x i64> [ %i.dg, %.lr.ph136 ], [ %.1, %bb.e ] ; 2 uses
  %.286133 = phi <2 x i64> [ %i.da, %.lr.ph136 ], [ %.185, %bb.e ] ; 2 uses
  %.289132 = phi <2 x i64> [ %i.cu, %.lr.ph136 ], [ %.188, %bb.e ] ; 2 uses
  %.292131 = phi <2 x i64> [ %i.co, %.lr.ph136 ], [ %.191, %bb.e ] ; 2 uses
  %.296130 = phi ptr [ %i.dh, %.lr.ph136 ], [ %.195, %bb.e ] ; 5 uses
  %i.ck = load <2 x i64>, ptr %.296130, align 16, !tbaa !11
  %i.cl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.292131, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.cm = xor <2 x i64> %i.cl, %i.ck
  %i.cn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.292131, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.co = xor <2 x i64> %i.cm, %i.cn              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.296130, i64 16
  %i.cq = load <2 x i64>, ptr %i.cp, align 16, !tbaa !11
  %i.cr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.289132, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.cs = xor <2 x i64> %i.cr, %i.cq
  %i.ct = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.289132, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.cu = xor <2 x i64> %i.cs, %i.ct              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.296130, i64 32
  %i.cw = load <2 x i64>, ptr %i.cv, align 16, !tbaa !11
  %i.cx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.286133, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.cy = xor <2 x i64> %i.cx, %i.cw
  %i.cz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.286133, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.da = xor <2 x i64> %i.cy, %i.cz              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.296130, i64 48
  %i.dc = load <2 x i64>, ptr %i.db, align 16, !tbaa !11
  %i.dd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2134, <2 x i64> <i64 2402626965, i64 poison>, i8 0)
  %i.de = xor <2 x i64> %i.dd, %i.dc
  %i.df = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2134, <2 x i64> <i64 poison, i64 496309207>, i8 17)
  %i.dg = xor <2 x i64> %i.de, %i.df              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.296130, i64 64 ; 2 uses
  %.not107 = icmp eq ptr %i.dh, %i.d
  br i1 %.not107, label %._crit_edge137, label %.lr.ph136, !llvm.loop !14

._crit_edge137:                                   ; preds = %.lr.ph136, %bb.e
  %.292.lcssa = phi <2 x i64> [ %.191, %bb.e ], [ %i.co, %.lr.ph136 ] ; 2 uses
  %.289.lcssa = phi <2 x i64> [ %.188, %bb.e ], [ %i.cu, %.lr.ph136 ] ; 2 uses
  %.286.lcssa = phi <2 x i64> [ %.185, %bb.e ], [ %i.da, %.lr.ph136 ]
  %.2.lcssa = phi <2 x i64> [ %.1, %bb.e ], [ %i.dg, %.lr.ph136 ]
  %i.di = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.292.lcssa, <2 x i64> <i64 4057597354, i64 poison>, i8 0)
  %i.dj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.292.lcssa, <2 x i64> <i64 poison, i64 2166711591>, i8 17)
  %i.dk = xor <2 x i64> %i.di, %.286.lcssa
  %i.dl = xor <2 x i64> %i.dk, %i.dj              ; 2 uses
  %i.dm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.289.lcssa, <2 x i64> <i64 4057597354, i64 poison>, i8 0)
  %i.dn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.289.lcssa, <2 x i64> <i64 poison, i64 2166711591>, i8 17)
  %i.do = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.dl, <2 x i64> <i64 2926088593, i64 poison>, i8 0)
  %i.dp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.dl, <2 x i64> <i64 poison, i64 3433693342>, i8 17)
  %i.dq = xor <2 x i64> %i.dm, %.2.lcssa
  %i.dr = xor <2 x i64> %i.dq, %i.dn
  %i.ds = xor <2 x i64> %i.dr, %i.do
  %i.dt = xor <2 x i64> %i.ds, %i.dp
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge137
  %.397 = phi ptr [ %i.f, %bb.b ], [ %i.d, %._crit_edge137 ] ; 2 uses
  %.3 = phi <2 x i64> [ %i.j, %bb.b ], [ %i.dt, %._crit_edge137 ] ; 2 uses
  %.not108143 = icmp eq ptr %.397, %i.b
  br i1 %.not108143, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.f, %.lr.ph147
  %.4145 = phi <2 x i64> [ %i.dz, %.lr.ph147 ], [ %.3, %bb.f ] ; 2 uses
  %.498144 = phi ptr [ %i.du, %.lr.ph147 ], [ %.397, %bb.f ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.498144, i64 16 ; 2 uses
  %i.dv = load <2 x i64>, ptr %.498144, align 16, !tbaa !11
  %i.dw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4145, <2 x i64> <i64 2926088593, i64 poison>, i8 0)
  %i.dx = xor <2 x i64> %i.dw, %i.dv
  %i.dy = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4145, <2 x i64> <i64 poison, i64 3433693342>, i8 17)
  %i.dz = xor <2 x i64> %i.dx, %i.dy              ; 2 uses
  %.not108 = icmp eq ptr %i.du, %i.b
  br i1 %.not108, label %._crit_edge148, label %.lr.ph147, !llvm.loop !15

._crit_edge148:                                   ; preds = %.lr.ph147, %bb.f
  %.4.lcssa = phi <2 x i64> [ %.3, %bb.f ], [ %i.dz, %.lr.ph147 ] ; 2 uses
  %i.ea = shufflevector <2 x i64> %.4.lcssa, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.eb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4.lcssa, <2 x i64> <i64 poison, i64 3433693342>, i8 16)
  %i.ec = xor <2 x i64> %i.eb, %i.ea              ; 2 uses
  %i.ed = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.ef = bitcast <16 x i8> %i.ee to <2 x i64>
  %i.eg = and <2 x i64> %i.ec, <i64 4294967295, i64 poison>
  %i.eh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.eg, <2 x i64> <i64 3099354981, i64 poison>, i8 0)
  %i.ei = xor <2 x i64> %i.eh, %i.ef              ; 2 uses
  %i.ej = and <2 x i64> %i.ei, <i64 4294967295, i64 poison>
  %i.ek = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ej, <2 x i64> <i64 8439010881, i64 poison>, i8 0)
  %i.el = and <2 x i64> %i.ek, <i64 4294967295, i64 poison>
  %i.em = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.el, <2 x i64> <i64 poison, i64 7976584769>, i8 16)
  %i.en = xor <2 x i64> %i.ei, %i.em
  %i.eo = bitcast <2 x i64> %i.en to <4 x i32>
  %i.ep = extractelement <4 x i32> %i.eo, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge148
  %.093 = phi i32 [ %i.ep, %._crit_edge148 ], [ %0, %bb.a ]
  ret i32 %.093
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
end_hunk_0
