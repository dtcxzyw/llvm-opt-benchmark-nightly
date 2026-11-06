Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/adler32_simd?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @adler32_simd_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 !guid !14 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = lshr i64 %2, 5                           ; 2 uses
  %i.d = and i64 %2, 31                           ; 4 uses
  %.not135 = icmp eq i64 %i.c, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0139 = phi ptr [ %scevgep159, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %.0112138 = phi i32 [ %i.al, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.0116137 = phi i32 [ %i.am, %bb.c ], [ %i.b, %bb.a ]
  %.0125136 = phi i64 [ %i.aa, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %spec.select131 = tail call i64 @llvm.umin.i64(i64 %.0125136, i64 173) ; 3 uses
  %spec.select = trunc nuw nsw i64 %spec.select131 to i32 ; 2 uses
  %i.e = mul nuw nsw i32 %.0112138, %spec.select
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.e, i64 0
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0116137, i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.1124 = phi i32 [ %spec.select, %.lr.ph ], [ %i.z, %bb.b ]
  %.0122.in = phi <4 x i32> [ %i.f, %.lr.ph ], [ %i.l, %bb.b ]
  %.0121.in = phi <4 x i32> [ %i.g, %.lr.ph ], [ %i.x, %bb.b ]
  %i.h = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.0139, %.lr.ph ], [ %i.y, %bb.b ] ; 3 uses
  %i.i = load <16 x i8>, ptr %.1, align 1, !tbaa !15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !15 ; 2 uses
  %i.l = add <4 x i32> %i.h, %.0122.in            ; 2 uses
  %i.m = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.i, <16 x i8> zeroinitializer)
  %i.n = bitcast <2 x i64> %i.m to <4 x i32>
  %i.o = add <4 x i32> %i.h, %i.n
  %i.p = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.i, <16 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17>)
  %i.q = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.p, <8 x i16> splat (i16 1))
  %i.r = add <4 x i32> %i.q, %.0121.in
  %i.s = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.k, <16 x i8> zeroinitializer)
  %i.t = bitcast <2 x i64> %i.s to <4 x i32>
  %i.u = add <4 x i32> %i.o, %i.t                 ; 2 uses
  %i.v = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.k, <16 x i8> <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.w = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.v, <8 x i16> splat (i16 1))
  %i.x = add <4 x i32> %i.r, %i.w                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.z = add i32 %.1124, -1                       ; 2 uses
  %.not129 = icmp eq i32 %i.z, 0
  br i1 %.not129, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.aa = sub nuw nsw i64 %.0125136, %spec.select131 ; 2 uses
  %i.ab = shl nuw nsw i64 %spec.select131, 5
  %scevgep159 = getelementptr i8, ptr %.0139, i64 %i.ab ; 2 uses
  %i.ac = shl <4 x i32> %i.l, splat (i32 5)
  %i.ad = add <4 x i32> %i.x, %i.ac               ; 2 uses
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.u)
  %i.af = add i32 %i.ae, %.0112138
  %i.ag = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ah = add <4 x i32> %i.ag, %i.ad              ; 2 uses
  %3 = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <2 x i32> <i32 poison, i32 2>
  %4 = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = add <2 x i32> %3, %4
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.af, i64 0
  %i.ak = urem <2 x i32> %i.aj, splat (i32 65521) ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  %i.al = extractelement <2 x i32> %i.ak, i64 0   ; 2 uses
  %i.am = extractelement <2 x i32> %i.ak, i64 1   ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0116.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.am, %bb.c ] ; 3 uses
  %.0112.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.al, %bb.c ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep159, %bb.c ] ; 18 uses
  %.not127 = icmp eq i64 %i.d, 0
  br i1 %.not127, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.an = icmp samesign ugt i64 %i.d, 15
  br i1 %i.an, label %bb.e, label %.lr.ph148.preheader

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ap = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.0112.lcssa, %i.aq     ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, %.0116.lcssa
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !15
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.ar, %i.av            ; 2 uses
  %i.ax = add nuw nsw i32 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.az = load i8, ptr %i.at, align 1, !tbaa !15
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %i.aw, %i.ba            ; 2 uses
  %i.bc = add nuw nsw i32 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %i.bb, %i.bf            ; 2 uses
  %i.bh = add nuw nsw i32 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 5
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bg, %i.bk            ; 2 uses
  %i.bm = add nuw nsw i32 %i.bh, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 6
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bl, %i.bp            ; 2 uses
  %i.br = add nuw nsw i32 %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 7
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !15
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bq, %i.bu            ; 2 uses
  %i.bw = add nuw nsw i32 %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !15
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bv, %i.bz            ; 2 uses
  %i.cb = add nuw nsw i32 %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 9
  %i.cd = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ca, %i.ce            ; 2 uses
  %i.cg = add nuw nsw i32 %i.cb, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 10
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !15
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nuw nsw i32 %i.cf, %i.cj            ; 2 uses
  %i.cl = add nuw nsw i32 %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 11
  %i.cn = load i8, ptr %i.ch, align 1, !tbaa !15
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nuw nsw i32 %i.ck, %i.co            ; 2 uses
  %i.cq = add nuw nsw i32 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12
  %i.cs = load i8, ptr %i.cm, align 1, !tbaa !15
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.cp, %i.ct            ; 2 uses
  %i.cv = add nuw nsw i32 %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 13
  %i.cx = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cu, %i.cy            ; 2 uses
  %i.da = add nuw nsw i32 %i.cv, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 14
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nuw nsw i32 %i.cz, %i.dd            ; 2 uses
  %i.df = add nuw nsw i32 %i.da, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 15
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !15
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nuw nsw i32 %i.de, %i.di            ; 2 uses
  %i.dk = add nuw nsw i32 %i.df, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dj, %i.dn            ; 3 uses
  %i.dp = add nuw nsw i32 %i.dk, %i.do            ; 2 uses
  %i.dq = add nsw i64 %i.d, -16                   ; 2 uses
  %.not128142 = icmp eq i64 %i.dq, 0
  br i1 %.not128142, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.d, %bb.e
  %.3146.ph = phi ptr [ %.0.lcssa, %bb.d ], [ %i.dl, %bb.e ] ; 2 uses
  %.1111145.ph = phi i64 [ %i.d, %bb.d ], [ %i.dq, %bb.e ] ; 4 uses
  %.2114144.ph = phi i32 [ %.0112.lcssa, %bb.d ], [ %i.do, %bb.e ] ; 2 uses
  %.2118143.ph = phi i32 [ %.0116.lcssa, %bb.d ], [ %i.dp, %bb.e ] ; 2 uses
  %xtraiter = and i64 %.1111145.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader, %.lr.ph148.prol
  %.3146.prol = phi ptr [ %i.ds, %.lr.ph148.prol ], [ %.3146.ph, %.lr.ph148.preheader ] ; 2 uses
  %.1111145.prol = phi i64 [ %i.dr, %.lr.ph148.prol ], [ %.1111145.ph, %.lr.ph148.preheader ]
  %.2114144.prol = phi i32 [ %i.dv, %.lr.ph148.prol ], [ %.2114144.ph, %.lr.ph148.preheader ]
  %.2118143.prol = phi i32 [ %i.dw, %.lr.ph148.prol ], [ %.2118143.ph, %.lr.ph148.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph148.prol ], [ 0, %.lr.ph148.preheader ]
  %i.dr = add i64 %.1111145.prol, -1              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.3146.prol, i64 1 ; 2 uses
  %i.dt = load i8, ptr %.3146.prol, align 1, !tbaa !15
  %i.du = zext i8 %i.dt to i32
  %i.dv = add i32 %.2114144.prol, %i.du           ; 4 uses
  %i.dw = add i32 %i.dv, %.2118143.prol           ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol, !llvm.loop !12

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader
  %.lcssa183.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.dv, %.lr.ph148.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.preheader ], [ %i.dw, %.lr.ph148.prol ]
  %.3146.unr = phi ptr [ %.3146.ph, %.lr.ph148.preheader ], [ %i.ds, %.lr.ph148.prol ]
  %.1111145.unr = phi i64 [ %.1111145.ph, %.lr.ph148.preheader ], [ %i.dr, %.lr.ph148.prol ]
  %.2114144.unr = phi i32 [ %.2114144.ph, %.lr.ph148.preheader ], [ %i.dv, %.lr.ph148.prol ]
  %.2118143.unr = phi i32 [ %.2118143.ph, %.lr.ph148.preheader ], [ %i.dw, %.lr.ph148.prol ]
  %i.dx = icmp ult i64 %.1111145.ph, 4
  br i1 %i.dx, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.3146 = phi ptr [ %i.eo, %.lr.ph148 ], [ %.3146.unr, %.lr.ph148.prol.loopexit ] ; 5 uses
  %.1111145 = phi i64 [ %i.en, %.lr.ph148 ], [ %.1111145.unr, %.lr.ph148.prol.loopexit ]
  %.2114144 = phi i32 [ %i.er, %.lr.ph148 ], [ %.2114144.unr, %.lr.ph148.prol.loopexit ]
  %.2118143 = phi i32 [ %i.es, %.lr.ph148 ], [ %.2118143.unr, %.lr.ph148.prol.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.3146, i64 1
  %i.dz = load i8, ptr %.3146, align 1, !tbaa !15
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add i32 %.2114144, %i.ea                ; 2 uses
  %i.ec = add i32 %i.eb, %.2118143
  %i.ed = getelementptr inbounds nuw i8, ptr %.3146, i64 2
  %i.ee = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add i32 %i.eb, %i.ef                    ; 2 uses
  %i.eh = add i32 %i.eg, %i.ec
  %i.ei = getelementptr inbounds nuw i8, ptr %.3146, i64 3
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !15
  %i.ek = zext i8 %i.ej to i32
  %i.el = add i32 %i.eg, %i.ek                    ; 2 uses
  %i.em = add i32 %i.el, %i.eh
  %i.en = add i64 %.1111145, -4                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.3146, i64 4
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.eq = zext i8 %i.ep to i32
  %i.er = add i32 %i.el, %i.eq                    ; 3 uses
  %i.es = add i32 %i.er, %i.em                    ; 2 uses
  %.not128.3 = icmp eq i64 %i.en, 0
  br i1 %.not128.3, label %._crit_edge149, label %.lr.ph148, !llvm.loop !13

._crit_edge149:                                   ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %bb.e
  %.2118.lcssa = phi i32 [ %i.dp, %bb.e ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.es, %.lr.ph148 ]
  %.2114.lcssa = phi i32 [ %i.do, %bb.e ], [ %.lcssa183.unr, %.lr.ph148.prol.loopexit ], [ %i.er, %.lr.ph148 ] ; 3 uses
  %i.et = icmp ugt i32 %.2114.lcssa, 65520
  %i.eu = add i32 %.2114.lcssa, -65521
  %spec.select130 = select i1 %i.et, i32 %i.eu, i32 %.2114.lcssa
  %i.ev = urem i32 %.2118.lcssa, 65521
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge149, %._crit_edge
  %.3119 = phi i32 [ %i.ev, %._crit_edge149 ], [ %.0116.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %spec.select130, %._crit_edge149 ], [ %.0112.lcssa, %._crit_edge ]
  %i.ew = shl nuw i32 %.3119, 16
  %i.ex = or i32 %.4, %i.ew
  ret i32 %i.ex
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

end_hunk_0
