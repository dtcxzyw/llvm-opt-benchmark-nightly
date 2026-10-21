Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_oncopy?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @sgemm_oncopy(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 2                           ; 4 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.preheader205, label %.loopexit206

.preheader205:                                    ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %i.c = ashr i64 %0, 2                           ; 4 uses
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = and i64 %0, 3                            ; 5 uses
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %i.d, label %.preheader203.us.preheader, label %.preheader205.split

.preheader203.us.preheader:                       ; preds = %.preheader205
  %i.f = and i64 %0, 4
  %lcmp.mod.not = icmp eq i64 %i.f, 0
  %i.g = add nsw i64 %i.c, -1
  %i.h = icmp eq i64 %i.c, 1
  %.not309 = icmp eq i64 %i.e, 1
  %i.i = icmp eq i64 %i.e, 3
  br label %.preheader203.us

.preheader203.us:                                 ; preds = %.preheader203.us.preheader, %.loopexit202.us
  %.0173.us = phi ptr [ %.4177.us, %.loopexit202.us ], [ %4, %.preheader203.us.preheader ] ; 6 uses
  %.0152.us = phi ptr [ %i.ce, %.loopexit202.us ], [ %2, %.preheader203.us.preheader ] ; 5 uses
  %.0151.us = phi i64 [ %i.cc, %.loopexit202.us ], [ %i.a, %.preheader203.us.preheader ] ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.0152.us, i64 %3 ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %3 ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %3 ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader203.us
  %i.m = load <4 x float>, ptr %.0152.us, align 1, !tbaa !17 ; 2 uses
  %i.n = load <4 x float>, ptr %i.j, align 1, !tbaa !17 ; 2 uses
  %i.o = load <4 x float>, ptr %i.k, align 1, !tbaa !17 ; 2 uses
  %i.p = load <4 x float>, ptr %i.l, align 1, !tbaa !17 ; 2 uses
  %i.q = shufflevector <4 x float> %i.m, <4 x float> %i.n, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.r = shufflevector <4 x float> %i.o, <4 x float> %i.p, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.s = shufflevector <4 x float> %i.m, <4 x float> %i.n, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.t = shufflevector <4 x float> %i.o, <4 x float> %i.p, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %5 = shufflevector <4 x float> %i.q, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %6 = shufflevector <4 x float> %i.r, <4 x float> %i.q, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %7 = shufflevector <4 x float> %i.s, <4 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %8 = shufflevector <4 x float> %i.t, <4 x float> %i.s, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %5, ptr %.0173.us, align 1, !tbaa !17
  %9 = getelementptr inbounds nuw i8, ptr %.0173.us, i64 16
  store <4 x float> %6, ptr %9, align 1, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %.0173.us, i64 32
  store <4 x float> %7, ptr %i.u, align 1, !tbaa !17
  %10 = getelementptr inbounds nuw i8, ptr %.0173.us, i64 48
  store <4 x float> %8, ptr %10, align 1, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %.0152.us, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0173.us, i64 64 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader203.us
  %.1174.us.unr = phi ptr [ %.0173.us, %.preheader203.us ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  %.0170.us.unr = phi ptr [ %i.l, %.preheader203.us ], [ %i.y, %.prol.loopexit.unr-lcssa ]
  %.0167.us.unr = phi ptr [ %i.k, %.preheader203.us ], [ %i.x, %.prol.loopexit.unr-lcssa ]
  %.0161.us.unr = phi ptr [ %i.j, %.preheader203.us ], [ %i.w, %.prol.loopexit.unr-lcssa ]
  %.0155.us.unr = phi ptr [ %.0152.us, %.preheader203.us ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %.0.us.unr = phi i64 [ %i.c, %.preheader203.us ], [ %i.g, %.prol.loopexit.unr-lcssa ]
  %.lcssa300.unr = phi ptr [ poison, %.preheader203.us ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %.lcssa299.unr = phi ptr [ poison, %.preheader203.us ], [ %i.w, %.prol.loopexit.unr-lcssa ]
  %.lcssa298.unr = phi ptr [ poison, %.preheader203.us ], [ %i.x, %.prol.loopexit.unr-lcssa ]
  %.lcssa297.unr = phi ptr [ poison, %.preheader203.us ], [ %i.y, %.prol.loopexit.unr-lcssa ]
  %.lcssa296.unr = phi ptr [ poison, %.preheader203.us ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  br i1 %i.h, label %.loopexit204.us, label %.preheader203.us.new

.preheader203.us.new:                             ; preds = %.prol.loopexit, %.preheader203.us.new
  %.1174.us = phi ptr [ %i.bb, %.preheader203.us.new ], [ %.1174.us.unr, %.prol.loopexit ] ; 9 uses
  %.0170.us = phi ptr [ %i.ba, %.preheader203.us.new ], [ %.0170.us.unr, %.prol.loopexit ] ; 3 uses
  %.0167.us = phi ptr [ %i.az, %.preheader203.us.new ], [ %.0167.us.unr, %.prol.loopexit ] ; 3 uses
  %.0161.us = phi ptr [ %i.ay, %.preheader203.us.new ], [ %.0161.us.unr, %.prol.loopexit ] ; 3 uses
  %.0155.us = phi ptr [ %i.ax, %.preheader203.us.new ], [ %.0155.us.unr, %.prol.loopexit ] ; 3 uses
  %.0.us = phi i64 [ %i.bc, %.preheader203.us.new ], [ %.0.us.unr, %.prol.loopexit ] ; 2 uses
  %i.aa = load <4 x float>, ptr %.0155.us, align 1, !tbaa !17 ; 2 uses
  %i.ab = load <4 x float>, ptr %.0161.us, align 1, !tbaa !17 ; 2 uses
  %i.ac = load <4 x float>, ptr %.0167.us, align 1, !tbaa !17 ; 2 uses
  %i.ad = load <4 x float>, ptr %.0170.us, align 1, !tbaa !17 ; 2 uses
  %i.ae = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.af = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ah = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %11 = shufflevector <4 x float> %i.ae, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = shufflevector <4 x float> %i.af, <4 x float> %i.ae, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %13 = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %14 = shufflevector <4 x float> %i.ah, <4 x float> %i.ag, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %11, ptr %.1174.us, align 1, !tbaa !17
  %15 = getelementptr inbounds nuw i8, ptr %.1174.us, i64 16
  store <4 x float> %12, ptr %15, align 1, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %.1174.us, i64 32
  store <4 x float> %13, ptr %i.ai, align 1, !tbaa !17
  %16 = getelementptr inbounds nuw i8, ptr %.1174.us, i64 48
  store <4 x float> %14, ptr %16, align 1, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %.0155.us, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0161.us, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0167.us, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0170.us, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.1174.us, i64 64
  %i.ao = load <4 x float>, ptr %i.aj, align 1, !tbaa !17 ; 2 uses
  %i.ap = load <4 x float>, ptr %i.ak, align 1, !tbaa !17 ; 2 uses
  %i.aq = load <4 x float>, ptr %i.al, align 1, !tbaa !17 ; 2 uses
  %i.ar = load <4 x float>, ptr %i.am, align 1, !tbaa !17 ; 2 uses
  %i.as = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.at = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.au = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.av = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %17 = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %18 = shufflevector <4 x float> %i.at, <4 x float> %i.as, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %19 = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %20 = shufflevector <4 x float> %i.av, <4 x float> %i.au, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %17, ptr %i.an, align 1, !tbaa !17
  %21 = getelementptr inbounds nuw i8, ptr %.1174.us, i64 80
  store <4 x float> %18, ptr %21, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.1174.us, i64 96
  store <4 x float> %19, ptr %i.aw, align 1, !tbaa !17
  %22 = getelementptr inbounds nuw i8, ptr %.1174.us, i64 112
  store <4 x float> %20, ptr %22, align 1, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0155.us, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0161.us, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0167.us, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0170.us, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1174.us, i64 128 ; 2 uses
  %i.bc = add nsw i64 %.0.us, -2
  %i.bd = icmp sgt i64 %.0.us, 2
  br i1 %i.bd, label %.preheader203.us.new, label %.loopexit204.us, !llvm.loop !8

.preheader201.us.1:                               ; preds = %.preheader201.us.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa297, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa298, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa299, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa300, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !20
  %i.bj = load float, ptr %i.bg, align 4, !tbaa !20
  %i.bk = load float, ptr %i.bf, align 4, !tbaa !20
  %i.bl = load float, ptr %i.be, align 4, !tbaa !20
  store float %i.bi, ptr %i.cm, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 20
  store float %i.bj, ptr %i.bm, align 4, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 24
  store float %i.bk, ptr %i.bn, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 28
  store float %i.bl, ptr %i.bo, align 4, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 32 ; 2 uses
  br i1 %i.i, label %.preheader201.us.2, label %.loopexit202.us

.preheader201.us.2:                               ; preds = %.preheader201.us.1
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa297, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa298, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa299, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa300, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !20
  %i.bw = load float, ptr %i.br, align 4, !tbaa !20
  %i.bx = load float, ptr %i.bq, align 4, !tbaa !20
  store float %i.bu, ptr %i.bp, align 4, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 36
  store float %i.bv, ptr %i.by, align 4, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 40
  store float %i.bw, ptr %i.bz, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 44
  store float %i.bx, ptr %i.ca, align 4, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 48
  br label %.loopexit202.us

.loopexit202.us:                                  ; preds = %.preheader201.us.preheader, %.preheader201.us.1, %.preheader201.us.2, %.loopexit204.us
  %.4177.us = phi ptr [ %.lcssa296, %.loopexit204.us ], [ %i.cm, %.preheader201.us.preheader ], [ %i.bp, %.preheader201.us.1 ], [ %i.cb, %.preheader201.us.2 ] ; 2 uses
  %i.cc = add nsw i64 %.0151.us, -1
  %i.cd = icmp sgt i64 %.0151.us, 1
  br i1 %i.cd, label %.preheader203.us, label %.loopexit206, !llvm.loop !9

.loopexit204.us:                                  ; preds = %.preheader203.us.new, %.prol.loopexit
  %.lcssa300 = phi ptr [ %.lcssa300.unr, %.prol.loopexit ], [ %i.ax, %.preheader203.us.new ] ; 3 uses
  %.lcssa299 = phi ptr [ %.lcssa299.unr, %.prol.loopexit ], [ %i.ay, %.preheader203.us.new ] ; 3 uses
  %.lcssa298 = phi ptr [ %.lcssa298.unr, %.prol.loopexit ], [ %i.az, %.preheader203.us.new ] ; 3 uses
  %.lcssa297 = phi ptr [ %.lcssa297.unr, %.prol.loopexit ], [ %i.ba, %.preheader203.us.new ] ; 3 uses
  %.lcssa296 = phi ptr [ %.lcssa296.unr, %.prol.loopexit ], [ %i.bb, %.preheader203.us.new ] ; 14 uses
  %i.ce = getelementptr inbounds i8, ptr %.0152.us, i64 %.idx ; 2 uses
  br i1 %.not, label %.loopexit202.us, label %.preheader201.us.preheader

.preheader201.us.preheader:                       ; preds = %.loopexit204.us
  %i.cf = load float, ptr %.lcssa300, align 4, !tbaa !20
  %i.cg = load float, ptr %.lcssa299, align 4, !tbaa !20
  %i.ch = load float, ptr %.lcssa298, align 4, !tbaa !20
  %i.ci = load float, ptr %.lcssa297, align 4, !tbaa !20
  store float %i.cf, ptr %.lcssa296, align 4, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 4
  store float %i.cg, ptr %i.cj, align 4, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 8
  store float %i.ch, ptr %i.ck, align 4, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 12
  store float %i.ci, ptr %i.cl, align 4, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %.lcssa296, i64 16 ; 2 uses
  br i1 %.not309, label %.loopexit202.us, label %.preheader201.us.1

.preheader205.split:                              ; preds = %.preheader205
  br i1 %.not, label %.preheader205.split.split.us.preheader, label %.preheader201.preheader

.preheader201.preheader:                          ; preds = %.preheader205.split
  %.not308 = icmp eq i64 %i.e, 1
  %i.cn = icmp eq i64 %i.e, 3
  br label %.preheader201

.preheader205.split.split.us.preheader:           ; preds = %.preheader205.split
  %i.co = mul i64 %i.a, %3
  %i.cp = shl i64 %i.co, 4
  %scevgep = getelementptr i8, ptr %2, i64 %i.cp
  br label %.loopexit206

.preheader201:                                    ; preds = %.preheader201.preheader, %.loopexit202
  %.0173 = phi ptr [ %.lcssa304, %.loopexit202 ], [ %4, %.preheader201.preheader ] ; 13 uses
  %.0152 = phi ptr [ %i.dz, %.loopexit202 ], [ %2, %.preheader201.preheader ] ; 5 uses
  %.0151 = phi i64 [ %i.ea, %.loopexit202 ], [ %i.a, %.preheader201.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.0152, i64 %3 ; 4 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %3 ; 4 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %3 ; 3 uses
  %i.ct = load float, ptr %.0152, align 4, !tbaa !20
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !20
  %i.cw = load float, ptr %i.cs, align 4, !tbaa !20
  store float %i.ct, ptr %.0173, align 4, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %.0173, i64 4
  store float %i.cu, ptr %i.cx, align 4, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %.0173, i64 8
  store float %i.cv, ptr %i.cy, align 4, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %.0173, i64 12
  store float %i.cw, ptr %i.cz, align 4, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %.0173, i64 16 ; 2 uses
  br i1 %.not308, label %.loopexit202, label %bb.b

bb.b:                                             ; preds = %.preheader201
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.0152, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !20
  %i.dg = load float, ptr %i.dd, align 4, !tbaa !20
  %i.dh = load float, ptr %i.dc, align 4, !tbaa !20
  %i.di = load float, ptr %i.db, align 4, !tbaa !20
  store float %i.df, ptr %i.da, align 4, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %.0173, i64 20
  store float %i.dg, ptr %i.dj, align 4, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %.0173, i64 24
  store float %i.dh, ptr %i.dk, align 4, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %.0173, i64 28
  store float %i.di, ptr %i.dl, align 4, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %.0173, i64 32 ; 2 uses
  br i1 %i.cn, label %bb.c, label %.loopexit202

bb.c:                                             ; preds = %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0152, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !20
  %i.ds = load float, ptr %i.dp, align 4, !tbaa !20
  %i.dt = load float, ptr %i.do, align 4, !tbaa !20
  %i.du = load float, ptr %i.dn, align 4, !tbaa !20
  store float %i.dr, ptr %i.dm, align 4, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %.0173, i64 36
  store float %i.ds, ptr %i.dv, align 4, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %.0173, i64 40
  store float %i.dt, ptr %i.dw, align 4, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %.0173, i64 44
  store float %i.du, ptr %i.dx, align 4, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %.0173, i64 48
  br label %.loopexit202

.loopexit202:                                     ; preds = %bb.c, %bb.b, %.preheader201
  %.lcssa304 = phi ptr [ %i.da, %.preheader201 ], [ %i.dm, %bb.b ], [ %i.dy, %bb.c ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.0152, i64 %.idx ; 2 uses
  %i.ea = add nsw i64 %.0151, -1
  %i.eb = icmp sgt i64 %.0151, 1
  br i1 %i.eb, label %.preheader201, label %.loopexit206, !llvm.loop !9

.loopexit206:                                     ; preds = %.loopexit202, %.loopexit202.us, %.preheader205.split.split.us.preheader, %bb.a
  %.5178 = phi ptr [ %4, %bb.a ], [ %4, %.preheader205.split.split.us.preheader ], [ %.4177.us, %.loopexit202.us ], [ %.lcssa304, %.loopexit202 ] ; 4 uses
  %.1153 = phi ptr [ %2, %bb.a ], [ %scevgep, %.preheader205.split.split.us.preheader ], [ %i.ce, %.loopexit202.us ], [ %i.dz, %.loopexit202 ] ; 6 uses
  %i.ec = and i64 %1, 2
  %.not190 = icmp eq i64 %i.ec, 0
  br i1 %.not190, label %.loopexit198, label %bb.d

bb.d:                                             ; preds = %.loopexit206
  %i.ed = getelementptr inbounds [4 x i8], ptr %.1153, i64 %3 ; 3 uses
  %.idx191 = shl nsw i64 %3, 3
  %i.ee = getelementptr inbounds i8, ptr %.1153, i64 %.idx191 ; 4 uses
  %i.ef = ashr i64 %0, 2                          ; 5 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.preheader199.preheader, label %.loopexit200

.preheader199.preheader:                          ; preds = %bb.d
  %xtraiter306 = and i64 %i.ef, 7                 ; 2 uses
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.preheader199.prol.loopexit, label %.preheader199.prol

.preheader199.prol:                               ; preds = %.preheader199.preheader, %.preheader199.prol
  %.6179.prol = phi ptr [ %i.em, %.preheader199.prol ], [ %.5178, %.preheader199.preheader ] ; 2 uses
  %.3164.prol = phi ptr [ %i.el, %.preheader199.prol ], [ %i.ed, %.preheader199.preheader ] ; 2 uses
  %.3158.prol = phi ptr [ %i.ek, %.preheader199.prol ], [ %.1153, %.preheader199.preheader ] ; 2 uses
  %.2.prol = phi i64 [ %i.en, %.preheader199.prol ], [ %i.ef, %.preheader199.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader199.prol ], [ 0, %.preheader199.preheader ]
  %i.eh = load <4 x float>, ptr %.3158.prol, align 4, !tbaa !20
  %i.ei = load <4 x float>, ptr %.3164.prol, align 4, !tbaa !20
  %i.ej = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.ej, ptr %.6179.prol, align 4, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %.3158.prol, i64 16 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.3164.prol, i64 16 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.6179.prol, i64 32 ; 3 uses
  %i.en = add nsw i64 %.2.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter306
  br i1 %prol.iter.cmp.not, label %.preheader199.prol.loopexit, label %.preheader199.prol, !llvm.loop !10

.preheader199.prol.loopexit:                      ; preds = %.preheader199.prol, %.preheader199.preheader
  %.6179.unr = phi ptr [ %.5178, %.preheader199.preheader ], [ %i.em, %.preheader199.prol ]
  %.3164.unr = phi ptr [ %i.ed, %.preheader199.preheader ], [ %i.el, %.preheader199.prol ]
  %.3158.unr = phi ptr [ %.1153, %.preheader199.preheader ], [ %i.ek, %.preheader199.prol ]
  %.2.unr = phi i64 [ %i.ef, %.preheader199.preheader ], [ %i.en, %.preheader199.prol ]
end_hunk_0
