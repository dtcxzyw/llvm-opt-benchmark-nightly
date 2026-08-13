inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lv_memcpy:bb.a
  %i.fq = load i8, ptr %i.fl, align 1, !tbaa !8
  store volatile i8 %i.fq, ptr %i.fk, align 1, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ft = add i64 %2, -2                          ; 2 uses
  %i.fu = icmp ne i64 %i.ag, 6
  %i.fv = icmp ne i64 %i.ft, 0
  %i.fw = and i1 %i.fu, %i.fv
  br i1 %i.fw, label %bb.f, label %.loopexit231

bb.f:                                             ; preds = %bb.e
  %i.fx = load i8, ptr %i.fs, align 1, !tbaa !8
  store volatile i8 %i.fx, ptr %i.fr, align 1, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.ga = add i64 %2, -3                          ; 2 uses
  %i.gb = icmp ne i64 %i.ag, 5
  %i.gc = icmp ne i64 %i.ga, 0
  %i.gd = and i1 %i.gb, %i.gc
  br i1 %i.gd, label %bb.g, label %.loopexit231

bb.g:                                             ; preds = %bb.f
  %i.ge = load i8, ptr %i.fz, align 1, !tbaa !8
  store volatile i8 %i.ge, ptr %i.fy, align 1, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gh = add i64 %2, -4                          ; 2 uses
  %i.gi = icmp ne i64 %i.ag, 4
  %i.gj = icmp ne i64 %i.gh, 0
  %i.gk = and i1 %i.gi, %i.gj
  br i1 %i.gk, label %bb.h, label %.loopexit231

bb.h:                                             ; preds = %bb.g
  %i.gl = load i8, ptr %i.gg, align 1, !tbaa !8
  store volatile i8 %i.gl, ptr %i.gf, align 1, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.go = add i64 %2, -5                          ; 2 uses
  %i.gp = icmp ne i64 %i.ag, 3
  %i.gq = icmp ne i64 %i.go, 0
  %i.gr = and i1 %i.gp, %i.gq
  br i1 %i.gr, label %bb.i, label %.loopexit231

bb.i:                                             ; preds = %bb.h
  %i.gs = load i8, ptr %i.gn, align 1, !tbaa !8
  store volatile i8 %i.gs, ptr %i.gm, align 1, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.gv = add i64 %2, -6                          ; 2 uses
  %i.gw = icmp ne i64 %i.ag, 2
  %i.gx = icmp ne i64 %i.gv, 0
  %i.gy = and i1 %i.gw, %i.gx
  br i1 %i.gy, label %bb.j, label %.loopexit231

bb.j:                                             ; preds = %bb.i
  %i.gz = load i8, ptr %i.gu, align 1, !tbaa !8
  store volatile i8 %i.gz, ptr %i.gt, align 1, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.hc = add i64 %2, -7
  br label %.loopexit231

.loopexit231:                                     ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c
  %.4221 = phi i64 [ %2, %bb.c ], [ %i.fm, %bb.d ], [ %i.ft, %bb.e ], [ %i.ga, %bb.f ], [ %i.gh, %bb.g ], [ %i.go, %bb.h ], [ %i.gv, %bb.i ], [ %i.hc, %bb.j ] ; 4 uses
  %.4215 = phi ptr [ %0, %bb.c ], [ %i.fk, %bb.d ], [ %i.fr, %bb.e ], [ %i.fy, %bb.f ], [ %i.gf, %bb.g ], [ %i.gm, %bb.h ], [ %i.gt, %bb.i ], [ %i.ha, %bb.j ] ; 2 uses
  %.4 = phi ptr [ %1, %bb.c ], [ %i.fl, %bb.d ], [ %i.fs, %bb.e ], [ %i.fz, %bb.f ], [ %i.gg, %bb.g ], [ %i.gn, %bb.h ], [ %i.gu, %bb.i ], [ %i.hb, %bb.j ] ; 2 uses
  %i.hd = icmp ugt i64 %.4221, 32
  br i1 %i.hd, label %.lr.ph252, label %.preheader229

.preheader229:                                    ; preds = %.loopexit231
  %.not226256 = icmp eq i64 %.4221, 0
  br i1 %.not226256, label %.loopexit, label %.lr.ph260.preheader

.lr.ph252:                                        ; preds = %.loopexit231, %.lr.ph252
  %.0251 = phi ptr [ %i.ib, %.lr.ph252 ], [ %.4, %.loopexit231 ] ; 9 uses
  %.0206250 = phi ptr [ %i.ia, %.lr.ph252 ], [ %.4215, %.loopexit231 ] ; 9 uses
  %.5222249 = phi i64 [ %i.ic, %.lr.ph252 ], [ %.4221, %.loopexit231 ]
  %i.he = load i32, ptr %.0251, align 4, !tbaa !16
  store i32 %i.he, ptr %.0206250, align 4, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %.0206250, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.0251, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !16
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !16
  %i.hi = getelementptr inbounds nuw i8, ptr %.0206250, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0251, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !16
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !16
  %i.hl = getelementptr inbounds nuw i8, ptr %.0206250, i64 12
  %i.hm = getelementptr inbounds nuw i8, ptr %.0251, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !16
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !16
  %i.ho = getelementptr inbounds nuw i8, ptr %.0206250, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %.0251, i64 16
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !16
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !16
  %i.hr = getelementptr inbounds nuw i8, ptr %.0206250, i64 20
  %i.hs = getelementptr inbounds nuw i8, ptr %.0251, i64 20
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !16
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !16
  %i.hu = getelementptr inbounds nuw i8, ptr %.0206250, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %.0251, i64 24
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !16
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %.0206250, i64 28
  %i.hy = getelementptr inbounds nuw i8, ptr %.0251, i64 28
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !16
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !16
  %i.ia = getelementptr inbounds nuw i8, ptr %.0206250, i64 32 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0251, i64 32 ; 2 uses
  %i.ic = add i64 %.5222249, -32                  ; 3 uses
  %i.id = icmp ugt i64 %i.ic, 32
  br i1 %i.id, label %.lr.ph252, label %.lr.ph260.preheader, !llvm.loop !17

.lr.ph260.preheader:                              ; preds = %.lr.ph252, %.preheader229
  %.5259.ph = phi ptr [ %.4, %.preheader229 ], [ %i.ib, %.lr.ph252 ] ; 2 uses
  %.5216258.ph = phi ptr [ %.4215, %.preheader229 ], [ %i.ia, %.lr.ph252 ] ; 2 uses
  %.6257.ph = phi i64 [ %.4221, %.preheader229 ], [ %i.ic, %.lr.ph252 ] ; 4 uses
  %i.ie = add nsw i64 %.6257.ph, -1
  %xtraiter316 = and i64 %.6257.ph, 7             ; 2 uses
  %lcmp.mod317.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %.lr.ph260.prol.loopexit, label %.lr.ph260.prol

.lr.ph260.prol:                                   ; preds = %.lr.ph260.preheader, %.lr.ph260.prol
  %.5259.prol = phi ptr [ %i.ih, %.lr.ph260.prol ], [ %.5259.ph, %.lr.ph260.preheader ] ; 2 uses
  %.5216258.prol = phi ptr [ %i.ig, %.lr.ph260.prol ], [ %.5216258.ph, %.lr.ph260.preheader ] ; 2 uses
  %.6257.prol = phi i64 [ %i.ii, %.lr.ph260.prol ], [ %.6257.ph, %.lr.ph260.preheader ]
  %prol.iter318 = phi i64 [ %prol.iter318.next, %.lr.ph260.prol ], [ 0, %.lr.ph260.preheader ]
  %i.if = load i8, ptr %.5259.prol, align 1, !tbaa !8
  store volatile i8 %i.if, ptr %.5216258.prol, align 1, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %.5216258.prol, i64 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.5259.prol, i64 1 ; 2 uses
  %i.ii = add nsw i64 %.6257.prol, -1             ; 2 uses
  %prol.iter318.next = add i64 %prol.iter318, 1   ; 2 uses
  %prol.iter318.cmp.not = icmp eq i64 %prol.iter318.next, %xtraiter316
  br i1 %prol.iter318.cmp.not, label %.lr.ph260.prol.loopexit, label %.lr.ph260.prol, !llvm.loop !18

.lr.ph260.prol.loopexit:                          ; preds = %.lr.ph260.prol, %.lr.ph260.preheader
  %.5259.unr = phi ptr [ %.5259.ph, %.lr.ph260.preheader ], [ %i.ih, %.lr.ph260.prol ]
  %.5216258.unr = phi ptr [ %.5216258.ph, %.lr.ph260.preheader ], [ %i.ig, %.lr.ph260.prol ]
  %.6257.unr = phi i64 [ %.6257.ph, %.lr.ph260.preheader ], [ %i.ii, %.lr.ph260.prol ]
  %i.ij = icmp ult i64 %i.ie, 7
  br i1 %i.ij, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.prol.loopexit, %.lr.ph260
  %.5259 = phi ptr [ %i.jh, %.lr.ph260 ], [ %.5259.unr, %.lr.ph260.prol.loopexit ] ; 9 uses
  %.5216258 = phi ptr [ %i.jg, %.lr.ph260 ], [ %.5216258.unr, %.lr.ph260.prol.loopexit ] ; 9 uses
  %.6257 = phi i64 [ %i.ji, %.lr.ph260 ], [ %.6257.unr, %.lr.ph260.prol.loopexit ]
  %i.ik = load i8, ptr %.5259, align 1, !tbaa !8
  store volatile i8 %i.ik, ptr %.5216258, align 1, !tbaa !8
  %i.il = getelementptr inbounds nuw i8, ptr %.5216258, i64 1
  %i.im = getelementptr inbounds nuw i8, ptr %.5259, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !8
  store volatile i8 %i.in, ptr %i.il, align 1, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %.5216258, i64 2
  %i.ip = getelementptr inbounds nuw i8, ptr %.5259, i64 2
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !8
  store volatile i8 %i.iq, ptr %i.io, align 1, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %.5216258, i64 3
  %i.is = getelementptr inbounds nuw i8, ptr %.5259, i64 3
  %i.it = load i8, ptr %i.is, align 1, !tbaa !8
  store volatile i8 %i.it, ptr %i.ir, align 1, !tbaa !8
  %i.iu = getelementptr inbounds nuw i8, ptr %.5216258, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %.5259, i64 4
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !8
  store volatile i8 %i.iw, ptr %i.iu, align 1, !tbaa !8
  %i.ix = getelementptr inbounds nuw i8, ptr %.5216258, i64 5
  %i.iy = getelementptr inbounds nuw i8, ptr %.5259, i64 5
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !8
  store volatile i8 %i.iz, ptr %i.ix, align 1, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %.5216258, i64 6
  %i.jb = getelementptr inbounds nuw i8, ptr %.5259, i64 6
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !8
  store volatile i8 %i.jc, ptr %i.ja, align 1, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %.5216258, i64 7
  %i.je = getelementptr inbounds nuw i8, ptr %.5259, i64 7
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  store volatile i8 %i.jf, ptr %i.jd, align 1, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.5216258, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.5259, i64 8
  %i.ji = add nsw i64 %.6257, -8                  ; 2 uses
  %.not226.7 = icmp eq i64 %i.ji, 0
  br i1 %.not226.7, label %.loopexit, label %.lr.ph260, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph244.prol.loopexit, %.lr.ph244, %.lr.ph260.prol.loopexit, %.lr.ph260, %.lr.ph265.prol.loopexit, %.lr.ph265, %.preheader229, %.preheader
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_memset(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7                          ; 2 uses
  %.not = icmp ne i64 %i.b, 0
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = xor i64 %i.b, 7
  %umin = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e) ; 3 uses
  %i.f = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1, i64 %i.f, i1 false), !tbaa !8
  %3 = getelementptr i8, ptr %0, i64 %umin
  %scevgep = getelementptr i8, ptr %3, i64 1
  %i.g = sub i64 %i.d, %umin
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.a
  %.150 = phi ptr [ %0, %bb.a ], [ %scevgep, %.lr.ph.preheader ] ; 3 uses
  %.1 = phi i64 [ %2, %bb.a ], [ %i.g, %.lr.ph.preheader ] ; 6 uses
  %i.h = zext i8 %1 to i32
  %i.i = mul nuw i32 %i.h, 16843009               ; 5 uses
  %i.j = icmp ugt i64 %.1, 32
  br i1 %i.j, label %.lr.ph60.preheader, label %.preheader

.lr.ph60.preheader:                               ; preds = %.loopexit
  %i.k = add i64 %.1, -33                         ; 2 uses
  %i.l = lshr i64 %i.k, 5
  %i.m = add nuw nsw i64 %i.l, 1
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol.preheader

.lr.ph60.prol.preheader:                          ; preds = %.lr.ph60.preheader
  %i.n = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph60.prol

.lr.ph60.prol:                                    ; preds = %.lr.ph60.prol, %.lr.ph60.prol.preheader
  %.059.prol = phi ptr [ %i.q, %.lr.ph60.prol ], [ %.150, %.lr.ph60.prol.preheader ] ; 3 uses
  %.258.prol = phi i64 [ %i.r, %.lr.ph60.prol ], [ %.1, %.lr.ph60.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph60.prol ], [ 0, %.lr.ph60.prol.preheader ]
  store <4 x i32> %i.o, ptr %.059.prol, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.059.prol, i64 16
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %.059.prol, i64 32 ; 3 uses
  %i.r = add i64 %.258.prol, -32                  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol, !llvm.loop !20

.lr.ph60.prol.loopexit:                           ; preds = %.lr.ph60.prol, %.lr.ph60.preheader
  %.059.unr = phi ptr [ %.150, %.lr.ph60.preheader ], [ %i.q, %.lr.ph60.prol ]
  %.258.unr = phi i64 [ %.1, %.lr.ph60.preheader ], [ %i.r, %.lr.ph60.prol ]
  %.lcssa81.unr = phi ptr [ poison, %.lr.ph60.preheader ], [ %i.q, %.lr.ph60.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph60.preheader ], [ %i.r, %.lr.ph60.prol ]
  %i.s = icmp ult i64 %i.k, 96
  br i1 %i.s, label %.lr.ph66.preheader, label %.lr.ph60.preheader.new

.lr.ph60.preheader.new:                           ; preds = %.lr.ph60.prol.loopexit
  %i.t = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.v = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.x = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.z = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph60

.preheader:                                       ; preds = %.loopexit
  %.not5363 = icmp eq i64 %.1, 0
  br i1 %.not5363, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60, %.preheader
  %.0.lcssa78 = phi ptr [ %.150, %.preheader ], [ %.lcssa81.unr, %.lr.ph60.prol.loopexit ], [ %i.ai, %.lr.ph60 ]
  %.2.lcssa77 = phi i64 [ %.1, %.preheader ], [ %.lcssa.unr, %.lr.ph60.prol.loopexit ], [ %i.aj, %.lr.ph60 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa78, i8 %1, i64 %.2.lcssa77, i1 false), !tbaa !8
  br label %._crit_edge

.lr.ph60:                                         ; preds = %.lr.ph60, %.lr.ph60.preheader.new
  %.059 = phi ptr [ %.059.unr, %.lr.ph60.preheader.new ], [ %i.ai, %.lr.ph60 ] ; 9 uses
  %.258 = phi i64 [ %.258.unr, %.lr.ph60.preheader.new ], [ %i.aj, %.lr.ph60 ]
  store <4 x i32> %i.u, ptr %.059, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.059, i64 16
  store <4 x i32> %i.u, ptr %i.ab, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %.059, i64 32
  store <4 x i32> %i.w, ptr %i.ac, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.059, i64 48
  store <4 x i32> %i.w, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.059, i64 64
  store <4 x i32> %i.y, ptr %i.ae, align 4, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %.059, i64 80
  store <4 x i32> %i.y, ptr %i.af, align 4, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.059, i64 96
  store <4 x i32> %i.aa, ptr %i.ag, align 4, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.059, i64 112
  store <4 x i32> %i.aa, ptr %i.ah, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.059, i64 128 ; 2 uses
  %i.aj = add i64 %.258, -128                     ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 32
  br i1 %i.ak, label %.lr.ph60, label %.lr.ph66.preheader, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph66.preheader, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef ptr @lv_memmove(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = icmp ult ptr %0, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.e = icmp ugt ptr %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @lv_memcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ugt ptr %0, %1
  %.not3138 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.g, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  br i1 %.not3138, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %2, 4
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %2, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec
  %i.k = getelementptr i8, ptr %0, i64 %n.vec
  %i.l = and i64 %2, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep50 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8
  %wide.load51 = load <16 x i8>, ptr %i.m, align 1, !tbaa !8
  %i.n = getelementptr i8, ptr %next.gep50, i64 16
  store <16 x i8> %wide.load, ptr %next.gep50, align 1, !tbaa !8
  store <16 x i8> %wide.load51, ptr %i.n, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %2, -4                       ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec54
  %i.q = getelementptr i8, ptr %0, i64 %n.vec54
  %i.r = and i64 %2, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %next.gep56 = getelementptr i8, ptr %1, i64 %index55
  %next.gep57 = getelementptr i8, ptr %0, i64 %index55
  %wide.load58 = load <4 x i8>, ptr %next.gep56, align 1, !tbaa !8
  store <4 x i8> %wide.load58, ptr %next.gep57, align 1, !tbaa !8
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %2, %n.vec54
  br i1 %cmp.n60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.037.ph = phi ptr [ %1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 2 uses
  %.02336.ph = phi ptr [ %0, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.135.ph = phi i64 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 4 uses
  %i.t = add i64 %.135.ph, -1
  %xtraiter = and i64 %.135.ph, 7                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.037.prol = phi ptr [ %i.v, %.lr.ph.prol ], [ %.037.ph, %.lr.ph.preheader ] ; 2 uses
  %.02336.prol = phi ptr [ %i.x, %.lr.ph.prol ], [ %.02336.ph, %.lr.ph.preheader ] ; 2 uses
  %.135.prol = phi i64 [ %i.u, %.lr.ph.prol ], [ %.135.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = add i64 %.135.prol, -1                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.037.prol, i64 1 ; 2 uses
  %i.w = load i8, ptr %.037.prol, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %.02336.prol, i64 1 ; 2 uses
  store i8 %i.w, ptr %.02336.prol, align 1, !tbaa !8
end_hunk_0
begin_hunk_1_@lv_memmove:bb.a

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.037.unr = phi ptr [ %.037.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.02336.unr = phi ptr [ %.02336.ph, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.135.unr = phi i64 [ %.135.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %i.y = icmp ult i64 %i.t, 7
  br i1 %i.y, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  br i1 %.not3138, label %.loopexit, label %iter.check83

iter.check83:                                     ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 5 uses
  %min.iters.check66 = icmp ult i64 %2, 8
  %i.aa = sub i64 %i.b, %i.a
  %diff.check65 = icmp ugt i64 %i.aa, -32
  %or.cond100 = or i1 %min.iters.check66, %diff.check65
  br i1 %or.cond100, label %.lr.ph42.preheader, label %vector.main.loop.iter.check67

vector.main.loop.iter.check67:                    ; preds = %iter.check83
  %min.iters.check68 = icmp ult i64 %2, 32
  br i1 %min.iters.check68, label %vec.epilog.ph87, label %vector.ph69

vector.ph69:                                      ; preds = %vector.main.loop.iter.check67
  %i.ab = and i64 %2, 24
  %n.vec70 = and i64 %2, -32                      ; 4 uses
  %i.ac = sub i64 0, %n.vec70                     ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ac
  %i.af = and i64 %2, 31
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.ag = sub i64 0, %index72                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.d, i64 %i.ag ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.z, i64 %i.ag ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %next.gep73, i64 -16
  %i.ai = getelementptr inbounds i8, ptr %next.gep73, i64 -32
  %wide.load75 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !8
  %wide.load76 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !8
  %i.aj = getelementptr inbounds i8, ptr %next.gep74, i64 -16
  %i.ak = getelementptr inbounds i8, ptr %next.gep74, i64 -32
  store <16 x i8> %wide.load75, ptr %i.aj, align 1, !tbaa !8
  store <16 x i8> %wide.load76, ptr %i.ak, align 1, !tbaa !8
  %index.next77 = add nuw i64 %index72, 32        ; 2 uses
  %i.al = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.al, label %middle.block78, label %vector.body71, !llvm.loop !28

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %2, %n.vec70
  br i1 %cmp.n79, label %.loopexit, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block78
  %min.epilog.iters.check86 = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph42.preheader, label %vec.epilog.ph87, !prof !29

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check85
  %vec.epilog.resume.val80 = phi i64 [ %n.vec70, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec88 = and i64 %2, -8                       ; 3 uses
  %i.am = sub i64 0, %n.vec88                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.d, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.z, i64 %i.am
  %i.ap = and i64 %2, 7
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph87
  %index90 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph87 ], [ %index.next94, %vec.epilog.vector.body89 ] ; 2 uses
  %i.aq = sub i64 0, %index90                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.d, i64 %i.aq
  %next.gep92 = getelementptr i8, ptr %i.z, i64 %i.aq
  %i.ar = getelementptr inbounds i8, ptr %next.gep91, i64 -8
  %wide.load93 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !8
  %i.as = getelementptr inbounds i8, ptr %next.gep92, i64 -8
  store <8 x i8> %wide.load93, ptr %i.as, align 1, !tbaa !8
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next94, %n.vec88
  br i1 %i.at, label %vec.epilog.middle.block95, label %vec.epilog.vector.body89, !llvm.loop !30

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body89
  %cmp.n96 = icmp eq i64 %2, %n.vec88
  br i1 %cmp.n96, label %.loopexit, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block95
  %.pn41.ph = phi ptr [ %i.d, %iter.check83 ], [ %i.ad, %vec.epilog.iter.check85 ], [ %i.an, %vec.epilog.middle.block95 ] ; 2 uses
  %.pn3240.ph = phi ptr [ %i.z, %iter.check83 ], [ %i.ae, %vec.epilog.iter.check85 ], [ %i.ao, %vec.epilog.middle.block95 ] ; 2 uses
  %.02639.ph = phi i64 [ %2, %iter.check83 ], [ %i.af, %vec.epilog.iter.check85 ], [ %i.ap, %vec.epilog.middle.block95 ] ; 4 uses
  %i.au = add i64 %.02639.ph, -1
  %xtraiter102 = and i64 %.02639.ph, 7            ; 2 uses
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader, %.lr.ph42.prol
  %.pn41.prol = phi ptr [ %.024.prol, %.lr.ph42.prol ], [ %.pn41.ph, %.lr.ph42.preheader ]
  %.pn3240.prol = phi ptr [ %.025.prol, %.lr.ph42.prol ], [ %.pn3240.ph, %.lr.ph42.preheader ]
  %.02639.prol = phi i64 [ %i.av, %.lr.ph42.prol ], [ %.02639.ph, %.lr.ph42.preheader ]
  %prol.iter104 = phi i64 [ %prol.iter104.next, %.lr.ph42.prol ], [ 0, %.lr.ph42.preheader ]
  %.025.prol = getelementptr inbounds i8, ptr %.pn3240.prol, i64 -1 ; 3 uses
  %.024.prol = getelementptr inbounds i8, ptr %.pn41.prol, i64 -1 ; 3 uses
  %i.av = add i64 %.02639.prol, -1                ; 2 uses
  %i.aw = load i8, ptr %.024.prol, align 1, !tbaa !8
  store i8 %i.aw, ptr %.025.prol, align 1, !tbaa !8
  %prol.iter104.next = add i64 %prol.iter104, 1   ; 2 uses
  %prol.iter104.cmp.not = icmp eq i64 %prol.iter104.next, %xtraiter102
  br i1 %prol.iter104.cmp.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol, !llvm.loop !31

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %.pn41.unr = phi ptr [ %.pn41.ph, %.lr.ph42.preheader ], [ %.024.prol, %.lr.ph42.prol ]
  %.pn3240.unr = phi ptr [ %.pn3240.ph, %.lr.ph42.preheader ], [ %.025.prol, %.lr.ph42.prol ]
  %.02639.unr = phi i64 [ %.02639.ph, %.lr.ph42.preheader ], [ %i.av, %.lr.ph42.prol ]
  %i.ax = icmp ult i64 %i.au, 7
  br i1 %i.ax, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.pn41 = phi ptr [ %.024.7, %.lr.ph42 ], [ %.pn41.unr, %.lr.ph42.prol.loopexit ] ; 8 uses
  %.pn3240 = phi ptr [ %.025.7, %.lr.ph42 ], [ %.pn3240.unr, %.lr.ph42.prol.loopexit ] ; 8 uses
  %.02639 = phi i64 [ %i.bf, %.lr.ph42 ], [ %.02639.unr, %.lr.ph42.prol.loopexit ]
  %.025 = getelementptr inbounds i8, ptr %.pn3240, i64 -1
  %.024 = getelementptr inbounds i8, ptr %.pn41, i64 -1
  %i.ay = load i8, ptr %.024, align 1, !tbaa !8
  store i8 %i.ay, ptr %.025, align 1, !tbaa !8
  %.025.1 = getelementptr inbounds i8, ptr %.pn3240, i64 -2
  %.024.1 = getelementptr inbounds i8, ptr %.pn41, i64 -2
  %i.az = load i8, ptr %.024.1, align 1, !tbaa !8
  store i8 %i.az, ptr %.025.1, align 1, !tbaa !8
  %.025.2 = getelementptr inbounds i8, ptr %.pn3240, i64 -3
  %.024.2 = getelementptr inbounds i8, ptr %.pn41, i64 -3
  %i.ba = load i8, ptr %.024.2, align 1, !tbaa !8
  store i8 %i.ba, ptr %.025.2, align 1, !tbaa !8
  %.025.3 = getelementptr inbounds i8, ptr %.pn3240, i64 -4
  %.024.3 = getelementptr inbounds i8, ptr %.pn41, i64 -4
  %i.bb = load i8, ptr %.024.3, align 1, !tbaa !8
  store i8 %i.bb, ptr %.025.3, align 1, !tbaa !8
  %.025.4 = getelementptr inbounds i8, ptr %.pn3240, i64 -5
  %.024.4 = getelementptr inbounds i8, ptr %.pn41, i64 -5
  %i.bc = load i8, ptr %.024.4, align 1, !tbaa !8
  store i8 %i.bc, ptr %.025.4, align 1, !tbaa !8
  %.025.5 = getelementptr inbounds i8, ptr %.pn3240, i64 -6
  %.024.5 = getelementptr inbounds i8, ptr %.pn41, i64 -6
  %i.bd = load i8, ptr %.024.5, align 1, !tbaa !8
  store i8 %i.bd, ptr %.025.5, align 1, !tbaa !8
  %.025.6 = getelementptr inbounds i8, ptr %.pn3240, i64 -7
  %.024.6 = getelementptr inbounds i8, ptr %.pn41, i64 -7
  %i.be = load i8, ptr %.024.6, align 1, !tbaa !8
  store i8 %i.be, ptr %.025.6, align 1, !tbaa !8
  %.025.7 = getelementptr inbounds i8, ptr %.pn3240, i64 -8 ; 2 uses
  %.024.7 = getelementptr inbounds i8, ptr %.pn41, i64 -8 ; 2 uses
  %i.bf = add i64 %.02639, -8                     ; 2 uses
  %i.bg = load i8, ptr %.024.7, align 1, !tbaa !8
  store i8 %i.bg, ptr %.025.7, align 1, !tbaa !8
  %.not31.7 = icmp eq i64 %i.bf, 0
  br i1 %.not31.7, label %.loopexit, label %.lr.ph42, !llvm.loop !32

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.037 = phi ptr [ %i.cd, %.lr.ph ], [ %.037.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.02336 = phi ptr [ %i.cf, %.lr.ph ], [ %.02336.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.135 = phi i64 [ %i.cc, %.lr.ph ], [ %.135.unr, %.lr.ph.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.bi = load i8, ptr %.037, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.02336, i64 1
  store i8 %i.bi, ptr %.02336, align 1, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %.037, i64 2
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.02336, i64 2
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %.037, i64 3
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %.02336, i64 3
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %.02336, i64 4
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.037, i64 5
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.02336, i64 5
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.037, i64 6
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.02336, i64 6
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %.037, i64 7
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.02336, i64 7
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !8
  %i.cc = add i64 %.135, -8                       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %.02336, i64 8
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !8
  %.not.7 = icmp eq i64 %i.cc, 0
  br i1 %.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph42.prol.loopexit, %.lr.ph42, %middle.block, %vec.epilog.middle.block, %middle.block78, %vec.epilog.middle.block95, %.preheader, %bb.e, %bb.c
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @lv_memcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, -1                           ; 2 uses
  %.not11 = icmp eq i64 %i.a, 0
  br i1 %.not11, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = getelementptr i8, ptr %0, i64 %2
  %scevgep = getelementptr i8, ptr %3, i64 -1
  %scevgep.a = getelementptr i8, ptr %1, i64 %2
  %scevgep18 = getelementptr i8, ptr %scevgep.a, i64 -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.b = phi i64 [ %i.h, %bb.b ], [ %i.a, %.lr.ph.preheader ]
  %.013 = phi ptr [ %i.g, %bb.b ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0812 = phi ptr [ %i.f, %bb.b ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.c = load i8, ptr %.0812, align 1, !tbaa !8
  %i.d = load i8, ptr %.013, align 1, !tbaa !8
  %i.e = icmp eq i8 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0812, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %i.h = add i64 %i.b, -1                         ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.08.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep, %bb.b ], [ %.0812, %.lr.ph ]
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep18, %bb.b ], [ %.013, %.lr.ph ]
  %i.i = load i8, ptr %.08.lcssa, align 1, !tbaa !8
  %i.j = sext i8 %i.i to i32
  %i.k = load i8, ptr %.0.lcssa, align 1, !tbaa !8
  %i.l = sext i8 %i.k to i32
  %i.m = sub nsw i32 %i.j, %i.l
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @lv_strlen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  ret i64 %strlen
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @lv_strnlen(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not8 = icmp eq i64 %1, 0
  br i1 %.not8, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.05
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !35

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.05, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @lv_strlcpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not20 = icmp eq i64 %i.a, 0
  br i1 %.not20, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.017 = phi i64 [ %i.e, %bb.b ], [ 0, %.preheader ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 2 uses
  %.not15 = icmp eq i8 %i.c, 0
  br i1 %.not15, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.c, ptr %i.d, align 1, !tbaa !8
  %i.e = add nuw i64 %.017, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.a, %bb.b ], [ %.017, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  store i8 0, ptr %i.f, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.a
  %.1 = phi i64 [ %.0.lcssa, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %.1
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep)
  %i.g = add i64 %strlen, %.1
  ret i64 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @lv_strncpy(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.014 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i8 %i.b, ptr %i.c, align 1, !tbaa !8
  %i.d = add nuw i64 %.014, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.014, %.lr.ph ] ; 3 uses
  %i.e = icmp ult i64 %.0.lcssa, %2
  br i1 %i.e, label %.lr.ph18.preheader, label %._crit_edge

.lr.ph18.preheader:                               ; preds = %.critedge
  %scevgep = getelementptr i8, ptr %0, i64 %.0.lcssa
  %i.f = sub nuw i64 %2, %.0.lcssa
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.f, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph18.preheader, %.critedge
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @lv_strcpy(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ]   ; 2 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.04, i64 1
  %i.b = load i8, ptr %.04, align 1, !tbaa !8     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.b, ptr %.0, align 1, !tbaa !8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !38

bb.c:                                             ; preds = %bb.b
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @lv_strcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %.not9 = icmp eq i8 %i.a, 0
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.g, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %.011 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %.0710 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  %i.c = load i8, ptr %.011, align 1, !tbaa !8
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0710, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !39

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.011, %.lr.ph ], [ %i.f, %bb.b ]
  %.lcssa.ph = phi i8 [ %i.b, %.lr.ph ], [ 0, %bb.b ]
  %i.h = zext i8 %.lcssa.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.0.lcssa.ph, %.critedge.loopexit ]
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %.critedge.loopexit ]
  %i.i = load i8, ptr %.0.lcssa, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i32
  %i.k = sub nsw i32 %.lcssa, %i.j
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @lv_strncmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %.not18 = icmp eq i8 %i.b, 0
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.c = phi i8 [ %i.j, %bb.c ], [ %i.b, %.preheader ] ; 2 uses
  %.021 = phi i64 [ %i.f, %bb.c ], [ %2, %.preheader ]
  %.01020 = phi ptr [ %i.i, %bb.c ], [ %1, %.preheader ] ; 3 uses
  %.01119 = phi ptr [ %i.h, %bb.c ], [ %0, %.preheader ]
  %i.d = load i8, ptr %.01020, align 1, !tbaa !8
  %i.e = icmp eq i8 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %.021, -1                        ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.01119, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01020, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !40
end_hunk_1
