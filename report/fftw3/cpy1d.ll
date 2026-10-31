Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/cpy1d?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fftw_cpy1d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  switch i64 %5, label %.preheader80 [
    i64 1, label %bb.b
    i64 2, label %bb.d
    i64 4, label %bb.f
  ]

.preheader80:                                     ; preds = %bb.a
  %i.a = icmp sgt i64 %2, 0
  %i.b = icmp sgt i64 %5, 0
  %or.cond100 = and i1 %i.a, %i.b
  br i1 %or.cond100, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader80
  %i.c = add nsw i64 %2, -1                       ; 2 uses
  %i.d = mul i64 %3, %i.c
  %i.e = add i64 %i.d, %5
  %i.f = shl i64 %i.e, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.f
  %i.g = mul i64 %4, %i.c
  %i.h = add i64 %i.g, %5
  %i.i = shl i64 %i.h, 3
  %scevgep113 = getelementptr i8, ptr %1, i64 %i.i
  %min.iters.check = icmp ult i64 %5, 8
  %bound0 = icmp ult ptr %1, %scevgep
  %bound1 = icmp ult ptr %0, %scevgep113
  %found.conflict = and i1 %bound0, %bound1
  %i.j = or i64 %3, %4
  %i.k = and i64 %i.j, 1152921504606846976
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %found.conflict, %i.l
  %n.vec = and i64 %5, 9223372036854775804        ; 3 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i64 %2 to i1
  %i.o = icmp ne i64 %3, 1
  %or.cond = or i1 %i.o, %i.n
  %i.p = icmp ne i64 %4, 1
  %or.cond3 = or i1 %or.cond, %i.p
  br i1 %or.cond3, label %.preheader81, label %bb.c

.preheader81:                                     ; preds = %bb.b
  %i.q = icmp sgt i64 %2, 0
  br i1 %i.q, label %.lr.ph96.preheader, label %.loopexit

.lr.ph96.preheader:                               ; preds = %.preheader81
  %xtraiter123 = and i64 %2, 7                    ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph96.prol.loopexit, label %.lr.ph96.prol

.lr.ph96.prol:                                    ; preds = %.lr.ph96.preheader, %.lr.ph96.prol
  %.095.prol = phi ptr [ %i.t, %.lr.ph96.prol ], [ %0, %.lr.ph96.preheader ] ; 2 uses
  %.06894.prol = phi ptr [ %i.u, %.lr.ph96.prol ], [ %1, %.lr.ph96.preheader ] ; 2 uses
  %.07193.prol = phi i64 [ %i.s, %.lr.ph96.prol ], [ %2, %.lr.ph96.preheader ]
  %prol.iter125 = phi i64 [ %prol.iter125.next, %.lr.ph96.prol ], [ 0, %.lr.ph96.preheader ]
  %i.r = load double, ptr %.095.prol, align 8, !tbaa !23
  store double %i.r, ptr %.06894.prol, align 8, !tbaa !23
  %i.s = add nsw i64 %.07193.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.095.prol, i64 %3 ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %.06894.prol, i64 %4 ; 2 uses
  %prol.iter125.next = add i64 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i64 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph96.prol.loopexit, label %.lr.ph96.prol, !llvm.loop !9

.lr.ph96.prol.loopexit:                           ; preds = %.lr.ph96.prol, %.lr.ph96.preheader
  %.095.unr = phi ptr [ %0, %.lr.ph96.preheader ], [ %i.t, %.lr.ph96.prol ]
  %.06894.unr = phi ptr [ %1, %.lr.ph96.preheader ], [ %i.u, %.lr.ph96.prol ]
  %.07193.unr = phi i64 [ %2, %.lr.ph96.preheader ], [ %i.s, %.lr.ph96.prol ]
  %i.v = icmp ult i64 %2, 8
  br i1 %i.v, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.prol.loopexit, %.lr.ph96
  %.095 = phi ptr [ %i.at, %.lr.ph96 ], [ %.095.unr, %.lr.ph96.prol.loopexit ] ; 2 uses
  %.06894 = phi ptr [ %i.au, %.lr.ph96 ], [ %.06894.unr, %.lr.ph96.prol.loopexit ] ; 2 uses
  %.07193 = phi i64 [ %i.as, %.lr.ph96 ], [ %.07193.unr, %.lr.ph96.prol.loopexit ] ; 2 uses
  %i.w = load double, ptr %.095, align 8, !tbaa !23
  store double %i.w, ptr %.06894, align 8, !tbaa !23
  %i.x = getelementptr inbounds [8 x i8], ptr %.095, i64 %3 ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.06894, i64 %4 ; 2 uses
  %i.z = load double, ptr %i.x, align 8, !tbaa !23
  store double %i.z, ptr %i.y, align 8, !tbaa !23
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %3 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %4 ; 2 uses
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !23
  store double %i.ac, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %3 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %4 ; 2 uses
  %i.af = load double, ptr %i.ad, align 8, !tbaa !23
  store double %i.af, ptr %i.ae, align 8, !tbaa !23
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %3 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %4 ; 2 uses
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !23
  store double %i.ai, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %3 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %4 ; 2 uses
  %i.al = load double, ptr %i.aj, align 8, !tbaa !23
  store double %i.al, ptr %i.ak, align 8, !tbaa !23
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %3 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %4 ; 2 uses
  %i.ao = load double, ptr %i.am, align 8, !tbaa !23
  store double %i.ao, ptr %i.an, align 8, !tbaa !23
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %3 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %4 ; 2 uses
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !23
  store double %i.ar, ptr %i.aq, align 8, !tbaa !23
  %i.as = add nsw i64 %.07193, -8
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %3
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %4
  %i.av = icmp sgt i64 %.07193, 8
  br i1 %i.av, label %.lr.ph96, label %.loopexit, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.aw = ashr exact i64 %2, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.076 = phi i64 [ 2, %bb.c ], [ %4, %bb.a ]     ; 10 uses
  %.074 = phi i64 [ 2, %bb.c ], [ %3, %bb.a ]     ; 10 uses
  %.172 = phi i64 [ %i.aw, %bb.c ], [ %2, %bb.a ] ; 7 uses
  %i.ax = trunc i64 %.172 to i1
  %i.ay = icmp ne i64 %.074, 2
  %or.cond5 = or i1 %i.ay, %i.ax
  %i.az = icmp ne i64 %.076, 2
  %or.cond7 = or i1 %i.az, %or.cond5
  br i1 %or.cond7, label %.preheader83, label %bb.e

.preheader83:                                     ; preds = %bb.d
  %i.ba = icmp sgt i64 %.172, 0
  br i1 %i.ba, label %.lr.ph92.preheader, label %.loopexit

.lr.ph92.preheader:                               ; preds = %.preheader83
  %xtraiter120 = and i64 %.172, 7                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader, %.lr.ph92.prol
  %.191.prol = phi ptr [ %i.bd, %.lr.ph92.prol ], [ %0, %.lr.ph92.preheader ] ; 2 uses
  %.16990.prol = phi ptr [ %i.be, %.lr.ph92.prol ], [ %1, %.lr.ph92.preheader ] ; 2 uses
  %.27389.prol = phi i64 [ %i.bc, %.lr.ph92.prol ], [ %.172, %.lr.ph92.preheader ]
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader ]
  %i.bb = load <2 x double>, ptr %.191.prol, align 8, !tbaa !23
  store <2 x double> %i.bb, ptr %.16990.prol, align 8, !tbaa !23
  %i.bc = add nsw i64 %.27389.prol, -1            ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.191.prol, i64 %.074 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.16990.prol, i64 %.076 ; 2 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !11

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader
  %.191.unr = phi ptr [ %0, %.lr.ph92.preheader ], [ %i.bd, %.lr.ph92.prol ]
  %.16990.unr = phi ptr [ %1, %.lr.ph92.preheader ], [ %i.be, %.lr.ph92.prol ]
  %.27389.unr = phi i64 [ %.172, %.lr.ph92.preheader ], [ %i.bc, %.lr.ph92.prol ]
  %i.bf = icmp ult i64 %.172, 8
  br i1 %i.bf, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.191 = phi ptr [ %i.cd, %.lr.ph92 ], [ %.191.unr, %.lr.ph92.prol.loopexit ] ; 2 uses
  %.16990 = phi ptr [ %i.ce, %.lr.ph92 ], [ %.16990.unr, %.lr.ph92.prol.loopexit ] ; 2 uses
  %.27389 = phi i64 [ %i.cc, %.lr.ph92 ], [ %.27389.unr, %.lr.ph92.prol.loopexit ] ; 2 uses
  %i.bg = load <2 x double>, ptr %.191, align 8, !tbaa !23
  store <2 x double> %i.bg, ptr %.16990, align 8, !tbaa !23
  %i.bh = getelementptr inbounds [8 x i8], ptr %.191, i64 %.074 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.16990, i64 %.076 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bh, align 8, !tbaa !23
  store <2 x double> %i.bj, ptr %i.bi, align 8, !tbaa !23
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.074 ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.076 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bk, align 8, !tbaa !23
  store <2 x double> %i.bm, ptr %i.bl, align 8, !tbaa !23
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.074 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.076 ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bn, align 8, !tbaa !23
  store <2 x double> %i.bp, ptr %i.bo, align 8, !tbaa !23
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.074 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.076 ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bq, align 8, !tbaa !23
  store <2 x double> %i.bs, ptr %i.br, align 8, !tbaa !23
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %.074 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %.076 ; 2 uses
  %i.bv = load <2 x double>, ptr %i.bt, align 8, !tbaa !23
  store <2 x double> %i.bv, ptr %i.bu, align 8, !tbaa !23
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %.074 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %.076 ; 2 uses
  %i.by = load <2 x double>, ptr %i.bw, align 8, !tbaa !23
  store <2 x double> %i.by, ptr %i.bx, align 8, !tbaa !23
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.074 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.076 ; 2 uses
  %i.cb = load <2 x double>, ptr %i.bz, align 8, !tbaa !23
  store <2 x double> %i.cb, ptr %i.ca, align 8, !tbaa !23
  %i.cc = add nsw i64 %.27389, -8
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.074
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %.076
  %i.cf = icmp sgt i64 %.27389, 8
  br i1 %i.cf, label %.lr.ph92, label %.loopexit, !llvm.loop !12

bb.e:                                             ; preds = %bb.d
  %i.cg = ashr exact i64 %.172, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.177 = phi i64 [ 4, %bb.e ], [ %4, %bb.a ]     ; 9 uses
  %.175 = phi i64 [ 4, %bb.e ], [ %3, %bb.a ]     ; 9 uses
  %.3 = phi i64 [ %i.cg, %bb.e ], [ %2, %bb.a ]   ; 5 uses
  %i.ch = icmp sgt i64 %.3, 0
  br i1 %i.ch, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.3, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.288.prol = phi ptr [ %i.cn, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.27087.prol = phi ptr [ %i.co, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.486.prol = phi i64 [ %i.cm, %.lr.ph.prol ], [ %.3, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.288.prol, i64 16
  %i.cj = load <2 x double>, ptr %.288.prol, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.27087.prol, i64 16
  %i.cl = load <2 x double>, ptr %i.ci, align 8, !tbaa !23
  store <2 x double> %i.cj, ptr %.27087.prol, align 8, !tbaa !23
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !23
  %i.cm = add nsw i64 %.486.prol, -1              ; 2 uses
end_hunk_0
