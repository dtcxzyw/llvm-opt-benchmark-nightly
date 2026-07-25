inline.NumInlined: 310
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Assimp19ComputeMaterialHashEPK10aiMaterialb:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %._crit_edge.i30
  %.1.i33 = phi i32 [ %.055.lcssa.i31, %._crit_edge.i30 ], [ %i.fn, %bb.n ], [ %i.fu, %bb.o ], [ %i.gb, %bb.p ] ; 2 uses
  %i.gc = shl i32 %.1.i33, 3
  %i.gd = xor i32 %i.gc, %.1.i33                  ; 2 uses
  %i.ge = lshr i32 %i.gd, 5
  %i.gf = add i32 %i.ge, %i.gd                    ; 2 uses
  %i.gg = shl i32 %i.gf, 4
  %i.gh = xor i32 %i.gg, %i.gf                    ; 2 uses
  %i.gi = lshr i32 %i.gh, 17
  %i.gj = add i32 %i.gi, %i.gh                    ; 2 uses
  %i.gk = shl i32 %i.gj, 25
  %i.gl = xor i32 %i.gk, %i.gj                    ; 2 uses
  %i.gm = lshr i32 %i.gl, 6
  %i.gn = add i32 %i.gm, %i.gl
  br label %_Z13SuperFastHashPKcjj.exit35

_Z13SuperFastHashPKcjj.exit35:                    ; preds = %_Z13SuperFastHashPKcjj.exit, %bb.q
  %.0.i = phi i32 [ %i.gn, %bb.q ], [ 0, %_Z13SuperFastHashPKcjj.exit ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 1028
  %i.gp = load i16, ptr %i.go, align 4
  %i.gq = zext i16 %i.gp to i32
  %i.gr = add i32 %.0.i, %i.gq                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 1030
  %i.gt = load i16, ptr %i.gs, align 2
  %i.gu = zext i16 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 11
  %i.gw = shl i32 %i.gr, 16
  %i.gx = xor i32 %i.gv, %i.gw
  %i.gy = xor i32 %i.gx, %i.gr                    ; 2 uses
  %i.gz = lshr i32 %i.gy, 11
  %i.ha = add i32 %i.gz, %i.gy                    ; 2 uses
  %i.hb = shl i32 %i.ha, 3
  %i.hc = xor i32 %i.hb, %i.ha                    ; 2 uses
  %i.hd = lshr i32 %i.hc, 5
  %i.he = add i32 %i.hd, %i.hc                    ; 2 uses
  %i.hf = shl i32 %i.he, 4
  %i.hg = xor i32 %i.hf, %i.he                    ; 2 uses
  %i.hh = lshr i32 %i.hg, 17
  %i.hi = add i32 %i.hh, %i.hg                    ; 2 uses
  %i.hj = shl i32 %i.hi, 25
  %i.hk = xor i32 %i.hj, %i.hi                    ; 2 uses
  %i.hl = lshr i32 %i.hk, 6
  %i.hm = add i32 %i.hl, %i.hk
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 1032
  %i.ho = load i16, ptr %i.hn, align 8
  %i.hp = zext i16 %i.ho to i32
  %i.hq = add i32 %i.hm, %i.hp                    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 1034
  %i.hs = load i16, ptr %i.hr, align 2
  %i.ht = zext i16 %i.hs to i32
  %i.hu = shl nuw nsw i32 %i.ht, 11
  %i.hv = shl i32 %i.hq, 16
  %i.hw = xor i32 %i.hu, %i.hv
  %i.hx = xor i32 %i.hw, %i.hq                    ; 2 uses
  %i.hy = lshr i32 %i.hx, 11
  %i.hz = add i32 %i.hy, %i.hx                    ; 2 uses
  %i.ia = shl i32 %i.hz, 3
  %i.ib = xor i32 %i.ia, %i.hz                    ; 2 uses
  %i.ic = lshr i32 %i.ib, 5
  %i.id = add i32 %i.ic, %i.ib                    ; 2 uses
  %i.ie = shl i32 %i.id, 4
  %i.if = xor i32 %i.ie, %i.id                    ; 2 uses
  %i.ig = lshr i32 %i.if, 17
  %i.ih = add i32 %i.ig, %i.if                    ; 2 uses
  %i.ii = shl i32 %i.ih, 25
  %i.ij = xor i32 %i.ii, %i.ih                    ; 2 uses
  %i.ik = lshr i32 %i.ij, 6
  %i.il = add i32 %i.ik, %i.ij
  br label %bb.r

bb.r:                                             ; preds = %_Z13SuperFastHashPKcjj.exit35, %bb.d, %bb.b
  %.1 = phi i32 [ %i.il, %_Z13SuperFastHashPKcjj.exit35 ], [ %.074, %bb.d ], [ %.074, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !25
}

; Function Attrs: mustprogress uwtable
define void @_ZN10aiMaterial16CopyPropertyListEPS_PKS_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, %i.d                       ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, %i.b                       ; 2 uses
  store i32 %i.j, ptr %i.a, align 8
  %i.k = load ptr, ptr %0, align 8                ; 7 uses
  %i.l = zext i32 %i.g to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #28
  store ptr %i.n, ptr %0, align 8
  %i.o = icmp ne i32 %i.b, 0
  %i.p = icmp ne ptr %i.k, null                   ; 2 uses
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.b, 4
  br i1 %i.q, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.3, %.preheader ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.s, ptr %i.u, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  store ptr %i.w, ptr %i.y, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.1
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  store ptr %i.aa, ptr %i.ac, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.2
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.2
  store ptr %i.ae, ptr %i.ag, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.loopexit.unr-lcssa, label %.preheader, !llvm.loop !26

bb.b:                                             ; preds = %bb.a
  br i1 %i.p, label %.thread, label %bb.c

.thread.loopexit.unr-lcssa:                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.thread.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.3, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.epil
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.epil
  store ptr %i.ai, ptr %i.ak, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread, label %.preheader.epil, !llvm.loop !27

.thread:                                          ; preds = %.thread.loopexit.unr-lcssa, %.preheader.epil, %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #27
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.al = phi i32 [ %.pre, %.thread ], [ %i.j, %bb.b ]
  %i.am = icmp ult i32 %i.b, %i.al
  br i1 %i.am, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %bb.c
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.lr.ph76.split, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph76
  %wide.trip.count83 = zext i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %_ZN8aiStringaSERKS_.exit.us
  %.06574.us = phi i32 [ %22, %_ZN8aiStringaSERKS_.exit.us ], [ %i.b, %.lr.ph.us.preheader ] ; 2 uses
  %i.an = load ptr, ptr %1, align 8
  %i.ao = zext i32 %.06574.us to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1028 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1032 ; 2 uses
  br label %bb.d

2:                                                ; preds = %._crit_edge.us
  %3 = load i32, ptr %i.aq, align 4
  %spec.select.i.us = tail call i32 @llvm.umin.i32(i32 %3, i32 1023) ; 2 uses
  store i32 %spec.select.i.us, ptr %i.by, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %5 = zext nneg i32 %spec.select.i.us to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr nonnull align 4 %i.ar, i64 %5, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 %5
  store i8 0, ptr %6, align 1
  br label %_ZN8aiStringaSERKS_.exit.us

_ZN8aiStringaSERKS_.exit.us:                      ; preds = %2, %._crit_edge.us
  %7 = getelementptr inbounds nuw i8, ptr %i.aq, i64 1036 ; 2 uses
  %8 = load i32, ptr %7, align 4                  ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.by, i64 1036
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %i.aq, i64 1040
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %i.bz, align 8
  %12 = load i32, ptr %i.as, align 4
  %13 = getelementptr inbounds nuw i8, ptr %i.by, i64 1028
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %i.at, align 8
  %15 = getelementptr inbounds nuw i8, ptr %i.by, i64 1032
  store i32 %14, ptr %15, align 8
  %16 = load i32, ptr %7, align 4
  %17 = zext i32 %16 to i64
  %18 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %17) #28 ; 2 uses
  store ptr %18, ptr %i.ca, align 8
  %19 = getelementptr inbounds nuw i8, ptr %i.aq, i64 1048
  %20 = load ptr, ptr %19, align 8
  %21 = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr align 1 %20, i64 %21, i1 false)
  %22 = add i32 %.2.us, 1                         ; 2 uses
  %23 = load i32, ptr %i.a, align 8
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %.lr.ph.us, label %._crit_edge77, !llvm.loop !28

bb.d:                                             ; preds = %.lr.ph.us, %_ZNK8aiStringeqERKS_.exit.thread.us
  %indvars.iv80 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next81, %_ZNK8aiStringeqERKS_.exit.thread.us ] ; 5 uses
  %.172.us = phi i32 [ %.06574.us, %.lr.ph.us ], [ %.2.us, %_ZNK8aiStringeqERKS_.exit.thread.us ] ; 7 uses
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv80
  %i.aw = load ptr, ptr %i.av, align 8            ; 7 uses
  %.not.us = icmp eq ptr %i.aw, null
  br i1 %.not.us, label %_ZNK8aiStringeqERKS_.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = load i32, ptr %i.aq, align 4
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %_ZNK8aiStringeqERKS_.exit.us, label %_ZNK8aiStringeqERKS_.exit.thread.us

_ZNK8aiStringeqERKS_.exit.us:                     ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = zext i32 %i.ax to i64
  %bcmp.i.us = tail call i32 @bcmp(ptr nonnull %i.ba, ptr nonnull %i.ar, i64 %i.bb)
  %i.bc = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.bc, label %bb.f, label %_ZNK8aiStringeqERKS_.exit.thread.us

bb.f:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.us
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 1028
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = load i32, ptr %i.as, align 4
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZNK8aiStringeqERKS_.exit.thread.us

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 1032
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load i32, ptr %i.at, align 8
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZNK8aiStringeqERKS_.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 1048
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN18aiMaterialPropertyD2Ev.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.bm) #27
  br label %_ZN18aiMaterialPropertyD2Ev.exit.us

_ZN18aiMaterialPropertyD2Ev.exit.us:              ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 1056) #27
  %i.bo = load ptr, ptr %0, align 8               ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv80
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = trunc nuw i64 %indvars.iv80 to i32
  %i.bt = sub i32 %.172.us, %i.bs
  %i.bu = zext i32 %i.bt to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bp, ptr nonnull align 8 %i.br, i64 %i.bu, i1 false)
  %i.bv = add i32 %.172.us, -1
  %i.bw = load i32, ptr %i.a, align 8
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr %i.a, align 8
  br label %_ZNK8aiStringeqERKS_.exit.thread.us

_ZNK8aiStringeqERKS_.exit.thread.us:              ; preds = %_ZN18aiMaterialPropertyD2Ev.exit.us, %bb.g, %bb.f, %_ZNK8aiStringeqERKS_.exit.us, %bb.e, %bb.d
  %.2.us = phi i32 [ %i.bv, %_ZN18aiMaterialPropertyD2Ev.exit.us ], [ %.172.us, %bb.g ], [ %.172.us, %bb.f ], [ %.172.us, %_ZNK8aiStringeqERKS_.exit.us ], [ %.172.us, %bb.d ], [ %.172.us, %bb.e ] ; 3 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge.us, label %bb.d, !llvm.loop !29

._crit_edge.us:                                   ; preds = %_ZNK8aiStringeqERKS_.exit.thread.us
  %i.by = tail call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #28 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1040 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.by, i8 0, i64 1040, i1 false)
  store i32 1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1048 ; 2 uses
  store ptr null, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = zext i32 %.2.us to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  store ptr %i.by, ptr %i.cd, align 8
  %i.ce = icmp eq ptr %i.by, %i.aq
  br i1 %i.ce, label %_ZN8aiStringaSERKS_.exit.us, label %2

._crit_edge77:                                    ; preds = %_ZN8aiStringaSERKS_.exit.us, %_ZN8aiStringaSERKS_.exit, %bb.c
  ret void

.lr.ph76.split:                                   ; preds = %.lr.ph76, %_ZN8aiStringaSERKS_.exit
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %_ZN8aiStringaSERKS_.exit ], [ 0, %.lr.ph76 ] ; 3 uses
  %i.cf = load ptr, ptr %1, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv85
  %i.ch = load ptr, ptr %i.cg, align 8            ; 8 uses
  %i.ci = tail call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #28 ; 10 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1040 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.ci, i8 0, i64 1040, i1 false)
  store i32 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 1048 ; 2 uses
  store ptr null, ptr %i.ck, align 8
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv85
  store ptr %i.ci, ptr %i.cm, align 8
  %i.cn = icmp eq ptr %i.ci, %i.ch
  br i1 %i.cn, label %_ZN8aiStringaSERKS_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph76.split
  %i.co = load i32, ptr %i.ch, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.co, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.ci, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cr = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr nonnull align 4 %i.cq, i64 %i.cr, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  store i8 0, ptr %i.cs, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph76.split, %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 1036 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 1036
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 1040
  %i.cx = load i32, ptr %i.cw, align 8
  store i32 %i.cx, ptr %i.cj, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 1028
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 1028
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 1032
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 1032
  store i32 %i.dc, ptr %i.dd, align 8
  %i.de = load i32, ptr %i.ct, align 4
  %i.df = zext i32 %i.de to i64
  %i.dg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.df) #28 ; 2 uses
  store ptr %i.dg, ptr %i.ck, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 1048
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = zext i32 %i.cu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr align 1 %i.di, i64 %i.dj, i1 false)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.dk = load i32, ptr %i.a, align 8
  %i.dl = zext i32 %i.dk to i64
  %i.dm = icmp samesign ult i64 %indvars.iv.next86, %i.dl
  br i1 %i.dm, label %.lr.ph76.split, label %._crit_edge77, !llvm.loop !28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(47) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA47_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(47) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #26
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA47_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(47) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA47_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(47) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #26
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #26
end_hunk_0
