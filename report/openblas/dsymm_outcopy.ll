Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsymm_outcopy?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @dsymm_outcopy(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds [8 x i8], ptr %2, i64 %5 ; 2 uses
  %i.d = mul nsw i64 %5, %3                       ; 2 uses
  %i.e = icmp sgt i64 %0, 0
  br i1 %i.e, label %.lr.ph.us.preheader, label %.lr.ph87.split.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph87
  %xtraiter = and i64 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.f = icmp ult i64 %0, 4
  br label %.lr.ph.us

.lr.ph87.split.preheader:                         ; preds = %.lr.ph87
  %i.g = and i64 %1, -2
  %i.h = add i64 %4, %i.g
  br label %._crit_edge88

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.07185.us = phi i64 [ %i.by, %._crit_edge.us ], [ %i.a, %.lr.ph.us.preheader ] ; 2 uses
  %.07484.us = phi ptr [ %.lcssa, %._crit_edge.us ], [ %6, %.lr.ph.us.preheader ] ; 2 uses
  %.07783.us = phi i64 [ %i.bx, %._crit_edge.us ], [ %4, %.lr.ph.us.preheader ] ; 5 uses
  %i.i = sub nsw i64 %.07783.us, %5               ; 4 uses
  %i.j = icmp sgt i64 %i.i, 0
  %i.k = mul nsw i64 %.07783.us, %3
  %i.l = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %.07783.us ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.d
  %.066.us = select i1 %i.j, ptr %i.l, ptr %i.n   ; 2 uses
  %i.o = add nsw i64 %.07783.us, 1
  %i.p = mul nsw i64 %i.o, %3
  %i.q = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.d
  %i.t = icmp slt i64 %i.i, 0
  %.0.us = select i1 %i.t, ptr %i.s, ptr %i.q     ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.us, %.prol.preheader
  %.182.us.prol = phi ptr [ %.2.us.prol, %.prol.preheader ], [ %.0.us, %.lr.ph.us ] ; 3 uses
  %.16781.us.prol = phi ptr [ %.268.us.prol, %.prol.preheader ], [ %.066.us, %.lr.ph.us ] ; 3 uses
  %.06980.us.prol = phi i64 [ %i.ae, %.prol.preheader ], [ %i.i, %.lr.ph.us ] ; 3 uses
  %.07279.us.prol = phi i64 [ %i.af, %.prol.preheader ], [ %0, %.lr.ph.us ]
  %.17578.us.prol = phi ptr [ %i.ad, %.prol.preheader ], [ %.07484.us, %.lr.ph.us ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.us ]
  %i.u = load double, ptr %.16781.us.prol, align 8, !tbaa !14
  %i.v = load double, ptr %.182.us.prol, align 8, !tbaa !14
  %i.w = icmp sgt i64 %.06980.us.prol, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.16781.us.prol, i64 8
  %i.y = getelementptr inbounds [8 x i8], ptr %.16781.us.prol, i64 %3
  %.268.us.prol = select i1 %i.w, ptr %i.x, ptr %i.y ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.182.us.prol, i64 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %.182.us.prol, i64 %3
  %i.ab = icmp slt i64 %.06980.us.prol, 0
  %.2.us.prol = select i1 %i.ab, ptr %i.aa, ptr %i.z ; 2 uses
  store double %i.u, ptr %.17578.us.prol, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %.17578.us.prol, i64 8
  store double %i.v, ptr %i.ac, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %.17578.us.prol, i64 16 ; 3 uses
  %i.ae = add nsw i64 %.06980.us.prol, -1         ; 2 uses
  %i.af = add nsw i64 %.07279.us.prol, -1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !8

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.us
  %.182.us.unr = phi ptr [ %.0.us, %.lr.ph.us ], [ %.2.us.prol, %.prol.preheader ]
  %.16781.us.unr = phi ptr [ %.066.us, %.lr.ph.us ], [ %.268.us.prol, %.prol.preheader ]
  %.06980.us.unr = phi i64 [ %i.i, %.lr.ph.us ], [ %i.ae, %.prol.preheader ]
  %.07279.us.unr = phi i64 [ %0, %.lr.ph.us ], [ %i.af, %.prol.preheader ]
  %.17578.us.unr = phi ptr [ %.07484.us, %.lr.ph.us ], [ %i.ad, %.prol.preheader ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.us ], [ %i.ad, %.prol.preheader ]
  br i1 %i.f, label %._crit_edge.us, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.prol.loopexit, %.lr.ph.us.new
  %.182.us = phi ptr [ %.2.us.3, %.lr.ph.us.new ], [ %.182.us.unr, %.prol.loopexit ] ; 6 uses
  %.16781.us = phi ptr [ %.268.us.3, %.lr.ph.us.new ], [ %.16781.us.unr, %.prol.loopexit ] ; 6 uses
  %.06980.us = phi i64 [ %i.bu, %.lr.ph.us.new ], [ %.06980.us.unr, %.prol.loopexit ] ; 9 uses
  %.07279.us = phi i64 [ %i.bv, %.lr.ph.us.new ], [ %.07279.us.unr, %.prol.loopexit ] ; 2 uses
  %.17578.us = phi ptr [ %i.bt, %.lr.ph.us.new ], [ %.17578.us.unr, %.prol.loopexit ] ; 9 uses
  %i.ag = load double, ptr %.16781.us, align 8, !tbaa !14
  %i.ah = load double, ptr %.182.us, align 8, !tbaa !14
  %i.ai = icmp sgt i64 %.06980.us, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.16781.us, i64 8
  %i.ak = getelementptr inbounds [8 x i8], ptr %.16781.us, i64 %3
  %.268.us = select i1 %i.ai, ptr %i.aj, ptr %i.ak ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.182.us, i64 8
  %i.am = getelementptr inbounds [8 x i8], ptr %.182.us, i64 %3
  %i.an = icmp slt i64 %.06980.us, 0
  %.2.us = select i1 %i.an, ptr %i.am, ptr %i.al  ; 2 uses
  store double %i.ag, ptr %.17578.us, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %.17578.us, i64 8
  store double %i.ah, ptr %i.ao, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %.17578.us, i64 16
  %i.aq = load double, ptr %.268.us, align 8, !tbaa !14
  %i.ar = load double, ptr %.2.us, align 8, !tbaa !14
  %i.as = icmp sgt i64 %.06980.us, 1
  %i.at = getelementptr inbounds nuw i8, ptr %.16781.us, i64 16
  %i.au = getelementptr inbounds [8 x i8], ptr %.268.us, i64 %3
  %.268.us.1 = select i1 %i.as, ptr %i.at, ptr %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.182.us, i64 16
  %i.aw = getelementptr inbounds [8 x i8], ptr %.2.us, i64 %3
  %i.ax = icmp slt i64 %.06980.us, 1
  %.2.us.1 = select i1 %i.ax, ptr %i.aw, ptr %i.av ; 2 uses
  store double %i.aq, ptr %i.ap, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.17578.us, i64 24
  store double %i.ar, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.17578.us, i64 32
  %i.ba = load double, ptr %.268.us.1, align 8, !tbaa !14
  %i.bb = load double, ptr %.2.us.1, align 8, !tbaa !14
  %i.bc = icmp sgt i64 %.06980.us, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.16781.us, i64 24
  %i.be = getelementptr inbounds [8 x i8], ptr %.268.us.1, i64 %3
  %.268.us.2 = select i1 %i.bc, ptr %i.bd, ptr %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.182.us, i64 24
  %i.bg = getelementptr inbounds [8 x i8], ptr %.2.us.1, i64 %3
  %i.bh = icmp slt i64 %.06980.us, 2
  %.2.us.2 = select i1 %i.bh, ptr %i.bg, ptr %i.bf ; 2 uses
  store double %i.ba, ptr %i.az, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.17578.us, i64 40
  store double %i.bb, ptr %i.bi, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %.17578.us, i64 48
  %i.bk = load double, ptr %.268.us.2, align 8, !tbaa !14
  %i.bl = load double, ptr %.2.us.2, align 8, !tbaa !14
  %i.bm = icmp sgt i64 %.06980.us, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.16781.us, i64 32
  %i.bo = getelementptr inbounds [8 x i8], ptr %.268.us.2, i64 %3
  %.268.us.3 = select i1 %i.bm, ptr %i.bn, ptr %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %.182.us, i64 32
  %i.bq = getelementptr inbounds [8 x i8], ptr %.2.us.2, i64 %3
  %i.br = icmp slt i64 %.06980.us, 3
  %.2.us.3 = select i1 %i.br, ptr %i.bq, ptr %i.bp
  store double %i.bk, ptr %i.bj, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.17578.us, i64 56
  store double %i.bl, ptr %i.bs, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.17578.us, i64 64 ; 2 uses
  %i.bu = add nsw i64 %.06980.us, -4
  %i.bv = add nsw i64 %.07279.us, -4
  %i.bw = icmp sgt i64 %.07279.us, 4
  br i1 %i.bw, label %.lr.ph.us.new, label %._crit_edge.us, !llvm.loop !9

._crit_edge.us:                                   ; preds = %.lr.ph.us.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.bt, %.lr.ph.us.new ] ; 2 uses
  %i.bx = add nsw i64 %.07783.us, 2               ; 2 uses
  %i.by = add nsw i64 %.07185.us, -1
  %i.bz = icmp sgt i64 %.07185.us, 1
  br i1 %i.bz, label %.lr.ph.us, label %._crit_edge88, !llvm.loop !10

._crit_edge88:                                    ; preds = %._crit_edge.us, %.lr.ph87.split.preheader, %bb.a
  %.077.lcssa = phi i64 [ %4, %bb.a ], [ %i.h, %.lr.ph87.split.preheader ], [ %i.bx, %._crit_edge.us ] ; 3 uses
  %.074.lcssa = phi ptr [ %6, %bb.a ], [ %6, %.lr.ph87.split.preheader ], [ %.lcssa, %._crit_edge.us ] ; 2 uses
  %.not = trunc i64 %1 to i1
  %i.ca = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.ca, %.not
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %._crit_edge88
  %i.cb = sub nsw i64 %.077.lcssa, %5             ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  %i.cd = getelementptr inbounds [8 x i8], ptr %2, i64 %5
  %i.ce = mul nsw i64 %.077.lcssa, %3
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %2, i64 %.077.lcssa
  %i.ch = mul nsw i64 %5, %3
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ch
  %.3 = select i1 %i.cc, ptr %i.cf, ptr %i.ci     ; 2 uses
  %xtraiter103 = and i64 %0, 7                    ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.495.prol = phi ptr [ %.5.prol, %.lr.ph.prol ], [ %.3, %.lr.ph.preheader ] ; 3 uses
  %.17094.prol = phi i64 [ %i.co, %.lr.ph.prol ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %.17393.prol = phi i64 [ %i.cp, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ]
  %.27692.prol = phi ptr [ %i.cn, %.lr.ph.prol ], [ %.074.lcssa, %.lr.ph.preheader ] ; 2 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cj = load double, ptr %.495.prol, align 8, !tbaa !14
  %i.ck = icmp sgt i64 %.17094.prol, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.495.prol, i64 8
  %i.cm = getelementptr inbounds [8 x i8], ptr %.495.prol, i64 %3
  %.5.prol = select i1 %i.ck, ptr %i.cl, ptr %i.cm ; 2 uses
  store double %i.cj, ptr %.27692.prol, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %.27692.prol, i64 8 ; 2 uses
  %i.co = add nsw i64 %.17094.prol, -1            ; 2 uses
  %i.cp = add nsw i64 %.17393.prol, -1            ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !11

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.495.unr = phi ptr [ %.3, %.lr.ph.preheader ], [ %.5.prol, %.lr.ph.prol ]
  %.17094.unr = phi i64 [ %i.cb, %.lr.ph.preheader ], [ %i.co, %.lr.ph.prol ]
  %.17393.unr = phi i64 [ %0, %.lr.ph.preheader ], [ %i.cp, %.lr.ph.prol ]
  %.27692.unr = phi ptr [ %.074.lcssa, %.lr.ph.preheader ], [ %i.cn, %.lr.ph.prol ]
  %i.cq = icmp ult i64 %0, 8
  br i1 %i.cq, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.495 = phi ptr [ %.5.7, %.lr.ph ], [ %.495.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %.17094 = phi i64 [ %i.ef, %.lr.ph ], [ %.17094.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.17393 = phi i64 [ %i.eg, %.lr.ph ], [ %.17393.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.27692 = phi ptr [ %i.ee, %.lr.ph ], [ %.27692.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.cr = load double, ptr %.495, align 8, !tbaa !14
  %i.cs = icmp sgt i64 %.17094, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.495, i64 8
  %i.cu = getelementptr inbounds [8 x i8], ptr %.495, i64 %3
  %.5 = select i1 %i.cs, ptr %i.ct, ptr %i.cu     ; 2 uses
  store double %i.cr, ptr %.27692, align 8, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %.27692, i64 8
  %i.cw = load double, ptr %.5, align 8, !tbaa !14
  %i.cx = icmp sgt i64 %.17094, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.495, i64 16
  %i.cz = getelementptr inbounds [8 x i8], ptr %.5, i64 %3
  %.5.1 = select i1 %i.cx, ptr %i.cy, ptr %i.cz   ; 2 uses
  store double %i.cw, ptr %i.cv, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %.27692, i64 16
  %i.db = load double, ptr %.5.1, align 8, !tbaa !14
  %i.dc = icmp sgt i64 %.17094, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.495, i64 24
  %i.de = getelementptr inbounds [8 x i8], ptr %.5.1, i64 %3
  %.5.2 = select i1 %i.dc, ptr %i.dd, ptr %i.de   ; 2 uses
  store double %i.db, ptr %i.da, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %.27692, i64 24
  %i.dg = load double, ptr %.5.2, align 8, !tbaa !14
  %i.dh = icmp sgt i64 %.17094, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.495, i64 32
  %i.dj = getelementptr inbounds [8 x i8], ptr %.5.2, i64 %3
  %.5.3 = select i1 %i.dh, ptr %i.di, ptr %i.dj   ; 2 uses
  store double %i.dg, ptr %i.df, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %.27692, i64 32
  %i.dl = load double, ptr %.5.3, align 8, !tbaa !14
  %i.dm = icmp sgt i64 %.17094, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.495, i64 40
  %i.do = getelementptr inbounds [8 x i8], ptr %.5.3, i64 %3
  %.5.4 = select i1 %i.dm, ptr %i.dn, ptr %i.do   ; 2 uses
  store double %i.dl, ptr %i.dk, align 8, !tbaa !14
  %i.dp = getelementptr inbounds nuw i8, ptr %.27692, i64 40
  %i.dq = load double, ptr %.5.4, align 8, !tbaa !14
  %i.dr = icmp sgt i64 %.17094, 5
  %i.ds = getelementptr inbounds nuw i8, ptr %.495, i64 48
  %i.dt = getelementptr inbounds [8 x i8], ptr %.5.4, i64 %3
  %.5.5 = select i1 %i.dr, ptr %i.ds, ptr %i.dt   ; 2 uses
  store double %i.dq, ptr %i.dp, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %.27692, i64 48
  %i.dv = load double, ptr %.5.5, align 8, !tbaa !14
  %i.dw = icmp sgt i64 %.17094, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %.495, i64 56
  %i.dy = getelementptr inbounds [8 x i8], ptr %.5.5, i64 %3
  %.5.6 = select i1 %i.dw, ptr %i.dx, ptr %i.dy   ; 2 uses
  store double %i.dv, ptr %i.du, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %.27692, i64 56
  %i.ea = load double, ptr %.5.6, align 8, !tbaa !14
  %i.eb = icmp sgt i64 %.17094, 7
  %i.ec = getelementptr inbounds nuw i8, ptr %.495, i64 64
  %i.ed = getelementptr inbounds [8 x i8], ptr %.5.6, i64 %3
  %.5.7 = select i1 %i.eb, ptr %i.ec, ptr %i.ed
  store double %i.ea, ptr %i.dz, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %.27692, i64 64
  %i.ef = add nsw i64 %.17094, -8
  %i.eg = add nsw i64 %.17393, -8
  %i.eh = icmp sgt i64 %.17393, 8
  br i1 %i.eh, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %._crit_edge88
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !15}
!9 = distinct !{!9, !16}
!10 = distinct !{!10, !16}
!11 = distinct !{!11, !15}
!12 = distinct !{!12, !16}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
