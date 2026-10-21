Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/kwset?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kwsexec:bb.a
  %i.fs = icmp eq i8 %i.fp, 0
  br i1 %i.fs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !34
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !34
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !34
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !34
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gf ; 3 uses
  %.not.i = icmp ugt ptr %i.gg, %i.ak
  br i1 %.not.i, label %.loopexit128.i, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %bb.o, %.critedge.i
  %.1115131.i.be = phi ptr [ %i.gg, %bb.o ], [ %i.gv, %.critedge.i ]
  br label %.lr.ph.i, !llvm.loop !69

bb.p:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i
  %.2.i = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.ev, %bb.m ], [ %i.fr, %bb.n ] ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %.2.i, i64 -2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !34
  %i.gj = icmp eq i8 %i.gi, %i.aa
  br i1 %i.gj, label %.preheader127.i, label %.critedge.i

bb.q:                                             ; preds = %.preheader127.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader127._crit_edge.i, label %.preheader127.i, !llvm.loop !70

.preheader127.i:                                  ; preds = %bb.p, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 3, %bb.p ] ; 2 uses
  %i.gk = sub nsw i64 0, %indvars.iv.i            ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.2.i, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !34
  %i.gn = getelementptr inbounds i8, ptr %i.y, i64 %i.gk
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !34
  %i.gp = icmp eq i8 %i.gm, %i.go
  br i1 %i.gp, label %bb.q, label %.critedge.i

.preheader127._crit_edge.i:                       ; preds = %bb.q, %bb.l
  %.2.lcssa.i = phi ptr [ %.2.us.i, %bb.l ], [ %.2.i, %bb.q ]
  %i.gq = sub nsw i64 0, %i.j
  %i.gr = getelementptr inbounds i8, ptr %.2.lcssa.i, i64 %i.gq
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %1 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  br label %bmexec.exit

.critedge.i:                                      ; preds = %.preheader127.i, %bb.p
  %i.gv = getelementptr inbounds i8, ptr %.2.i, i64 %i.al ; 3 uses
  %.not130.i = icmp ugt ptr %i.gv, %i.ak
  br i1 %.not130.i, label %.loopexit128.i, label %.lr.ph.i.backedge

.loopexit128.i:                                   ; preds = %.critedge.i, %bb.o, %.critedge.us.i, %bb.k, %bb.h, %bb.g
  %.3.i = phi ptr [ %i.ad, %bb.g ], [ %i.dh, %bb.k ], [ %i.ad, %bb.h ], [ %i.dl, %.critedge.us.i ], [ %i.gv, %.critedge.i ], [ %i.gg, %bb.o ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.gx = getelementptr inbounds i8, ptr %.3.i, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !34
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !34
  %i.hc = ptrtoint ptr %i.gw to i64               ; 3 uses
  %i.hd = zext i8 %i.hb to i64                    ; 3 uses
  %i.he = ptrtoint ptr %.3.i to i64
  %i.hf = sub i64 %i.hc, %i.he
  %.not122151.i = icmp slt i64 %i.hf, %i.hd
  br i1 %.not122151.i, label %cwexec.exit, label %.lr.ph154.i

.lr.ph154.i:                                      ; preds = %.loopexit128.i
  %.not124145.i = icmp slt i32 %.fr.i, 3
  br i1 %.not124145.i, label %.lr.ph154.split.us.i, label %.lr.ph154.split.preheader.i

.lr.ph154.split.preheader.i:                      ; preds = %.lr.ph154.i
  %i.hg = add nuw i32 %.fr.i, 1
  %wide.trip.count179.i = zext i32 %i.hg to i64
  br label %.lr.ph154.split.i

.lr.ph154.split.us.i:                             ; preds = %.lr.ph154.i, %.backedge.us.i
  %i.hh = phi i64 [ %i.hs, %.backedge.us.i ], [ %i.hd, %.lr.ph154.i ]
  %.4152.us.i = phi ptr [ %i.hi, %.backedge.us.i ], [ %.3.i, %.lr.ph154.i ]
  %i.hi = getelementptr inbounds i8, ptr %.4152.us.i, i64 %i.hh ; 5 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !34
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !34  ; 2 uses
  %i.ho = zext i8 %i.hn to i32
  %.not123.us.i = icmp eq i8 %i.hn, 0
  br i1 %.not123.us.i, label %bb.r, label %.backedge.us.i

bb.r:                                             ; preds = %.lr.ph154.split.us.i
  %i.hp = getelementptr inbounds i8, ptr %i.hi, i64 -2
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !34
  %i.hr = icmp eq i8 %i.hq, %i.aa
  br i1 %i.hr, label %.preheader._crit_edge.i, label %.backedge.us.i

.backedge.us.i:                                   ; preds = %bb.r, %.lr.ph154.split.us.i
  %.0113.be.us.i = phi i32 [ %i.ho, %.lr.ph154.split.us.i ], [ %i.ac, %bb.r ]
  %i.hs = sext i32 %.0113.be.us.i to i64          ; 2 uses
  %i.ht = ptrtoint ptr %i.hi to i64
  %i.hu = sub i64 %i.hc, %i.ht
  %.not122.us.i = icmp slt i64 %i.hu, %i.hs
  br i1 %.not122.us.i, label %cwexec.exit, label %.lr.ph154.split.us.i, !llvm.loop !71

.lr.ph154.split.i:                                ; preds = %.backedge.i, %.lr.ph154.split.preheader.i
  %i.hv = phi i64 [ %i.ir, %.backedge.i ], [ %i.hd, %.lr.ph154.split.preheader.i ]
  %.4152.i = phi ptr [ %i.hw, %.backedge.i ], [ %.3.i, %.lr.ph154.split.preheader.i ]
  %i.hw = getelementptr inbounds i8, ptr %.4152.i, i64 %i.hv ; 6 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !34
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !34  ; 2 uses
  %i.ic = zext i8 %i.ib to i32
  %.not123.i = icmp eq i8 %i.ib, 0
  br i1 %.not123.i, label %bb.s, label %.backedge.i

bb.s:                                             ; preds = %.lr.ph154.split.i
  %i.id = getelementptr inbounds i8, ptr %i.hw, i64 -2
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !34
  %i.if = icmp eq i8 %i.ie, %i.aa
  br i1 %i.if, label %.preheader.i, label %.backedge.i

bb.t:                                             ; preds = %.preheader.i
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond180.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count179.i
  br i1 %exitcond180.not.i, label %.preheader._crit_edge.i, label %.preheader.i, !llvm.loop !72

.preheader.i:                                     ; preds = %bb.s, %bb.t
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i, %bb.t ], [ 3, %bb.s ] ; 2 uses
  %i.ig = sub nsw i64 0, %indvars.iv176.i         ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.hw, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !34
  %i.ij = getelementptr inbounds i8, ptr %i.y, i64 %i.ig
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !34
  %i.il = icmp eq i8 %i.ii, %i.ik
  br i1 %i.il, label %bb.t, label %.backedge.i

.preheader._crit_edge.i:                          ; preds = %bb.t, %bb.r
  %.lcssa.i = phi ptr [ %i.hi, %bb.r ], [ %i.hw, %bb.t ]
  %i.im = sub nsw i64 0, %i.j
  %i.in = getelementptr inbounds i8, ptr %.lcssa.i, i64 %i.im
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %1 to i64
  %i.iq = sub i64 %i.io, %i.ip
  br label %bmexec.exit

.backedge.i:                                      ; preds = %.preheader.i, %bb.s, %.lr.ph154.split.i
  %.0113.be.i = phi i32 [ %i.ic, %.lr.ph154.split.i ], [ %i.ac, %bb.s ], [ %i.ac, %.preheader.i ]
  %i.ir = sext i32 %.0113.be.i to i64             ; 2 uses
  %i.is = ptrtoint ptr %i.hw to i64
  %i.it = sub i64 %i.hc, %i.is
  %.not122.i = icmp slt i64 %i.it, %i.ir
  br i1 %.not122.i, label %cwexec.exit, label %.lr.ph154.split.i, !llvm.loop !71

bmexec.exit:                                      ; preds = %bb.c, %bb.f, %.preheader127._crit_edge.i, %.preheader._crit_edge.i
  %.0116.i = phi i64 [ %i.iq, %.preheader._crit_edge.i ], [ 0, %bb.c ], [ %i.u, %bb.f ], [ %i.gu, %.preheader127._crit_edge.i ] ; 4 uses
  %i.iu = icmp ne ptr %3, null
  %i.iv = icmp ne i64 %.0116.i, -1
  %or.cond = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %or.cond, label %bb.u, label %cwexec.exit

bb.u:                                             ; preds = %bmexec.exit
  store i32 0, ptr %3, align 8, !tbaa !81
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0116.i, ptr %i.iw, align 8, !tbaa !82
  %i.ix = sext i32 %.fr.i to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !82
  br label %cwexec.exit

bb.v:                                             ; preds = %bb.b, %bb.a
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !29
  %.fr.i21 = freeze i32 %i.ja                     ; 6 uses
  %i.jb = sext i32 %.fr.i21 to i64
  %i.jc = icmp ult i64 %2, %i.jb
  br i1 %i.jc, label %cwexec.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !32
  %.fr356.i = freeze ptr %i.jg                    ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %.not.i22 = icmp eq i32 %.fr.i21, 0
  br i1 %.not.i22, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ji = shl i32 %.fr.i21, 2
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %.not177.i = icmp ult i64 %2, %i.jj
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jh, i64 %i.jk ; 3 uses
  %i.jm = ptrtoint ptr %i.jh to i64               ; 6 uses
  %.not183.i = icmp eq ptr %.fr356.i, null        ; 2 uses
  br i1 %.not177.i, label %.split267.us.i, label %.outer213.i

.split267.us.i:                                   ; preds = %bb.x
  br i1 %.not183.i, label %.outer213.us.us.i, label %.outer213.us.i

.outer213.us.us.i:                                ; preds = %.split267.us.i, %.critedge203.us.us.i
  %.0152.ph.us.us.i = phi ptr [ %.2154233.us.us.i, %.critedge203.us.us.i ], [ null, %.split267.us.i ]
  %.0131.ph.us.us.i = phi i32 [ %.2133229.us.us.i, %.critedge203.us.us.i ], [ %.fr.i21, %.split267.us.i ]
  %.0127.ph.us.us.i = phi ptr [ %i.jq, %.critedge203.us.us.i ], [ %1, %.split267.us.i ]
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.outer213.us.us.i
  %.0131.us.us.us.i = phi i32 [ %.1132.us.us.us.i, %bb.z ], [ %.0131.ph.us.us.i, %.outer213.us.us.i ]
  %.0127.us.us.us.i = phi ptr [ %i.jq, %bb.z ], [ %.0127.ph.us.us.i, %.outer213.us.us.i ] ; 2 uses
  %i.jn = ptrtoint ptr %.0127.us.us.us.i to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = sext i32 %.0131.us.us.us.i to i64       ; 2 uses
  %.not178.us.us.us.i = icmp slt i64 %i.jo, %i.jp
  br i1 %.not178.us.us.us.i, label %cwexec.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jq = getelementptr inbounds i8, ptr %.0127.us.us.us.i, i64 %i.jp ; 5 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !34
  %i.jt = zext i8 %i.js to i64                    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !34  ; 2 uses
  %.1132.us.us.us.i = zext i8 %i.jv to i32
  %.not181.us.us.us.i = icmp eq i8 %i.jv, 0
  br i1 %.not181.us.us.us.i, label %.split.us.us.us.i, label %bb.y, !llvm.loop !73

.split.us.us.us.i:                                ; preds = %bb.z
  %i.jw = getelementptr inbounds i8, ptr %i.jq, i64 -1 ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jt
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !33 ; 4 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !28
  %.not182.us.us.i = icmp eq i32 %i.jz, 0         ; 2 uses
  %spec.select.us.us.i = select i1 %.not182.us.us.i, ptr %.0152.ph.us.us.i, ptr %i.jy ; 2 uses
  %spec.select202.us.us.i = select i1 %.not182.us.us.i, ptr null, ptr %i.jw ; 2 uses
  %i.ka = icmp ugt ptr %i.jw, %1
  br i1 %i.ka, label %.lr.ph263.us.us.i, label %.critedge203.us.us.i

.lr.ph263.us.us.i:                                ; preds = %.split.us.us.us.i, %.critedge.us.us.us.i
  %.2143261.us.us.us.i = phi ptr [ %spec.select205.us.us.us.i, %.critedge.us.us.us.i ], [ %spec.select202.us.us.i, %.split.us.us.us.i ] ; 3 uses
  %.0148260.us.us.us.i = phi ptr [ %i.kb, %.critedge.us.us.us.i ], [ %i.jw, %.split.us.us.us.i ]
  %.2154259.us.us.us.i = phi ptr [ %spec.select204.us.us.us.i, %.critedge.us.us.us.i ], [ %spec.select.us.us.i, %.split.us.us.us.i ] ; 3 uses
  %.0157258.us.us.us.i = phi ptr [ %i.ki, %.critedge.us.us.us.i ], [ %i.jy, %.split.us.us.us.i ] ; 3 uses
  %i.kb = getelementptr inbounds i8, ptr %.0148260.us.us.us.i, i64 -1 ; 4 uses
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !34  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0157258.us.us.us.i, i64 8
  %.0238.us.us.us.i = load ptr, ptr %i.kd, align 8, !tbaa !36 ; 2 uses
  %.not184239.us.us.us.i = icmp eq ptr %.0238.us.us.us.i, null
  br i1 %.not184239.us.us.us.i, label %.critedge203.us.us.i, label %.lr.ph242.us.us.us.i

.lr.ph242.us.us.us.i:                             ; preds = %.lr.ph263.us.us.i, %bb.aa
  %.0240.us.us.us.i = phi ptr [ %.0.us.us.us.i, %bb.aa ], [ %.0238.us.us.us.i, %.lr.ph263.us.us.i ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0240.us.us.us.i, i64 24
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !38  ; 2 uses
  %.not185.us.us.us.i = icmp eq i8 %i.kc, %i.kf
  br i1 %.not185.us.us.us.i, label %.critedge.us.us.us.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph242.us.us.us.i
  %i.kg = icmp ult i8 %i.kc, %i.kf
  %.1.in.idx.us.us.us.i = select i1 %i.kg, i64 0, i64 8
  %.1.in.us.us.us.i = getelementptr inbounds nuw i8, ptr %.0240.us.us.us.i, i64 %.1.in.idx.us.us.us.i
  %.0.us.us.us.i = load ptr, ptr %.1.in.us.us.us.i, align 8, !tbaa !36 ; 2 uses
  %.not184.us.us.us.i = icmp eq ptr %.0.us.us.us.i, null
  br i1 %.not184.us.us.us.i, label %.critedge203.us.us.i, label %.lr.ph242.us.us.us.i, !llvm.loop !74

.critedge.us.us.us.i:                             ; preds = %.lr.ph242.us.us.us.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.0240.us.us.us.i, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !40 ; 4 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !28
  %.not201.us.us.us.i = icmp eq i32 %i.kj, 0      ; 2 uses
  %spec.select204.us.us.us.i = select i1 %.not201.us.us.us.i, ptr %.2154259.us.us.us.i, ptr %i.ki ; 2 uses
  %spec.select205.us.us.us.i = select i1 %.not201.us.us.us.i, ptr %.2143261.us.us.us.i, ptr %i.kb ; 2 uses
  %i.kk = icmp ugt ptr %i.kb, %1
  br i1 %i.kk, label %.lr.ph263.us.us.i, label %.critedge203.us.us.i, !llvm.loop !75

.critedge203.us.us.i:                             ; preds = %.critedge.us.us.us.i, %.lr.ph263.us.us.i, %bb.aa, %.split.us.us.us.i
  %.0157258.us.us.us.lcssa528.sink.i = phi ptr [ %i.jy, %.split.us.us.us.i ], [ %.0157258.us.us.us.i, %bb.aa ], [ %i.ki, %.critedge.us.us.us.i ], [ %.0157258.us.us.us.i, %.lr.ph263.us.us.i ]
  %.2154233.us.us.i = phi ptr [ %spec.select.us.us.i, %.split.us.us.us.i ], [ %.2154259.us.us.us.i, %bb.aa ], [ %spec.select204.us.us.us.i, %.critedge.us.us.us.i ], [ %.2154259.us.us.us.i, %.lr.ph263.us.us.i ] ; 2 uses
  %.2143231.us.us.i = phi ptr [ %spec.select202.us.us.i, %.split.us.us.us.i ], [ %.2143261.us.us.us.i, %bb.aa ], [ %spec.select205.us.us.us.i, %.critedge.us.us.us.i ], [ %.2143261.us.us.us.i, %.lr.ph263.us.us.i ] ; 2 uses
  %.2133.in.le256.us.us.i = getelementptr inbounds nuw i8, ptr %.0157258.us.us.us.lcssa528.sink.i, i64 44
  %.2133229.us.us.i = load i32, ptr %.2133.in.le256.us.us.i, align 4, !tbaa !43
  %.not186.us.us.i = icmp eq ptr %.2143231.us.us.i, null
  br i1 %.not186.us.us.i, label %.outer213.us.us.i, label %.preheader.i23, !llvm.loop !73

.outer213.us.i:                                   ; preds = %.split267.us.i, %.critedge203.us.i
  %.0152.ph.us.i = phi ptr [ %.2154233.us.i, %.critedge203.us.i ], [ null, %.split267.us.i ]
  %.0131.ph.us.i = phi i32 [ %.2133229.us.i, %.critedge203.us.i ], [ %.fr.i21, %.split267.us.i ]
  %.0127.ph.us.i = phi ptr [ %i.ko, %.critedge203.us.i ], [ %1, %.split267.us.i ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.outer213.us.i
  %.0131.us.us.i = phi i32 [ %.1132.us.us.i, %bb.ac ], [ %.0131.ph.us.i, %.outer213.us.i ]
  %.0127.us.us.i = phi ptr [ %i.ko, %bb.ac ], [ %.0127.ph.us.i, %.outer213.us.i ] ; 2 uses
  %i.kl = ptrtoint ptr %.0127.us.us.i to i64
  %i.km = sub i64 %i.jm, %i.kl
  %i.kn = sext i32 %.0131.us.us.i to i64          ; 2 uses
  %.not178.us.us.i = icmp slt i64 %i.km, %i.kn
  br i1 %.not178.us.us.i, label %cwexec.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ko = getelementptr inbounds i8, ptr %.0127.us.us.i, i64 %i.kn ; 5 uses
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !34
  %i.kr = zext i8 %i.kq to i64                    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !34  ; 2 uses
  %.1132.us.us.i = zext i8 %i.kt to i32
  %.not181.us.us.i = icmp eq i8 %i.kt, 0
  br i1 %.not181.us.us.i, label %.split.us.us.i, label %bb.ab, !llvm.loop !73

.split.us.us.i:                                   ; preds = %bb.ac
  %i.ku = getelementptr inbounds i8, ptr %i.ko, i64 -1 ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.kr
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !33 ; 4 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !28
  %.not182.us.i = icmp eq i32 %i.kx, 0            ; 2 uses
  %spec.select.us.i = select i1 %.not182.us.i, ptr %.0152.ph.us.i, ptr %i.kw ; 2 uses
  %spec.select202.us.i = select i1 %.not182.us.i, ptr null, ptr %i.ku ; 2 uses
  %i.ky = icmp ugt ptr %i.ku, %1
  br i1 %i.ky, label %.lr.ph263.us.i, label %.critedge203.us.i

.lr.ph263.us.i:                                   ; preds = %.split.us.us.i, %.critedge.us.i28
  %.2143261.us.i = phi ptr [ %spec.select205.us.i, %.critedge.us.i28 ], [ %spec.select202.us.i, %.split.us.us.i ] ; 3 uses
  %.0148260.us.i = phi ptr [ %i.kz, %.critedge.us.i28 ], [ %i.ku, %.split.us.us.i ]
  %.2154259.us.i = phi ptr [ %spec.select204.us.i, %.critedge.us.i28 ], [ %spec.select.us.i, %.split.us.us.i ] ; 3 uses
  %.0157258.us.i = phi ptr [ %i.lj, %.critedge.us.i28 ], [ %i.kw, %.split.us.us.i ] ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %.0148260.us.i, i64 -1 ; 4 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !34
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %.fr356.i, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !34  ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0157258.us.i, i64 8
  %.0238.us.i = load ptr, ptr %i.le, align 8, !tbaa !36 ; 2 uses
  %.not184239.us.i = icmp eq ptr %.0238.us.i, null
  br i1 %.not184239.us.i, label %.critedge203.us.i, label %.lr.ph242.us.i

.lr.ph242.us.i:                                   ; preds = %.lr.ph263.us.i, %bb.ad
  %.0240.us.i = phi ptr [ %.0.us.i, %bb.ad ], [ %.0238.us.i, %.lr.ph263.us.i ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0240.us.i, i64 24
  %i.lg = load i8, ptr %i.lf, align 8, !tbaa !38  ; 2 uses
  %.not185.us.i = icmp eq i8 %i.ld, %i.lg
  br i1 %.not185.us.i, label %.critedge.us.i28, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph242.us.i
  %i.lh = icmp ult i8 %i.ld, %i.lg
  %.1.in.idx.us.i = select i1 %i.lh, i64 0, i64 8
  %.1.in.us.i = getelementptr inbounds nuw i8, ptr %.0240.us.i, i64 %.1.in.idx.us.i
  %.0.us.i = load ptr, ptr %.1.in.us.i, align 8, !tbaa !36 ; 2 uses
  %.not184.us.i = icmp eq ptr %.0.us.i, null
  br i1 %.not184.us.i, label %.critedge203.us.i, label %.lr.ph242.us.i, !llvm.loop !74

.critedge.us.i28:                                 ; preds = %.lr.ph242.us.i
  %i.li = getelementptr inbounds nuw i8, ptr %.0240.us.i, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !40 ; 4 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !28
  %.not201.us.i = icmp eq i32 %i.lk, 0            ; 2 uses
  %spec.select204.us.i = select i1 %.not201.us.i, ptr %.2154259.us.i, ptr %i.lj ; 2 uses
  %spec.select205.us.i = select i1 %.not201.us.i, ptr %.2143261.us.i, ptr %i.kz ; 2 uses
  %i.ll = icmp ugt ptr %i.kz, %1
  br i1 %i.ll, label %.lr.ph263.us.i, label %.critedge203.us.i, !llvm.loop !75

.critedge203.us.i:                                ; preds = %.critedge.us.i28, %.lr.ph263.us.i, %bb.ad, %.split.us.us.i
  %.0157258.us.lcssa.sink.i = phi ptr [ %i.kw, %.split.us.us.i ], [ %.0157258.us.i, %bb.ad ], [ %.0157258.us.i, %.lr.ph263.us.i ], [ %i.lj, %.critedge.us.i28 ]
  %.2154233.us.i = phi ptr [ %spec.select.us.i, %.split.us.us.i ], [ %.2154259.us.i, %bb.ad ], [ %.2154259.us.i, %.lr.ph263.us.i ], [ %spec.select204.us.i, %.critedge.us.i28 ] ; 2 uses
  %.2143231.us.i = phi ptr [ %spec.select202.us.i, %.split.us.us.i ], [ %.2143261.us.i, %bb.ad ], [ %.2143261.us.i, %.lr.ph263.us.i ], [ %spec.select205.us.i, %.critedge.us.i28 ] ; 2 uses
  %.2133.in.le254.us.i = getelementptr inbounds nuw i8, ptr %.0157258.us.lcssa.sink.i, i64 44
  %.2133229.us.i = load i32, ptr %.2133.in.le254.us.i, align 4, !tbaa !43
  %.not186.us.i = icmp eq ptr %.2143231.us.i, null
  br i1 %.not186.us.i, label %.outer213.us.i, label %.preheader.i23, !llvm.loop !73

.outer213.i:                                      ; preds = %bb.x, %.critedge203.i
  %.0152.ph.i = phi ptr [ %.2154233.i, %.critedge203.i ], [ null, %bb.x ]
  %.0131.ph.i = phi i32 [ %.2133229.i, %.critedge203.i ], [ %.fr.i21, %bb.x ]
  %.0127.ph.i = phi ptr [ %.2129.i, %.critedge203.i ], [ %1, %bb.x ]
  br label %bb.af

bb.ae:                                            ; preds = %bb.w
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !25
  %.pre.i = ptrtoint ptr %i.jh to i64
  br label %.preheader.i23

bb.af:                                            ; preds = %bb.ai, %.outer213.i
  %.0131.i = phi i32 [ %.1132.i, %bb.ai ], [ %.0131.ph.i, %.outer213.i ]
  %.0127.i = phi ptr [ %.2129.i, %bb.ai ], [ %.0127.ph.i, %.outer213.i ] ; 3 uses
  %i.lo = ptrtoint ptr %.0127.i to i64
  %i.lp = sub i64 %i.jm, %i.lo
  %i.lq = sext i32 %.0131.i to i64                ; 2 uses
  %.not178.i = icmp slt i64 %i.lp, %i.lq
  br i1 %.not178.i, label %cwexec.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not180.i = icmp ugt ptr %.0127.i, %i.jl
  %i.lr = getelementptr i8, ptr %.0127.i, i64 %i.lq ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 -1     ; 4 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !34  ; 3 uses
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !34  ; 4 uses
  br i1 %.not180.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lx = icmp ne i8 %i.lw, 0
  %i.ly = icmp ult ptr %i.ls, %i.jl
  %i.lz = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %i.lz, label %.lr.ph.i27, label %._crit_edge.i

.lr.ph.i27:                                       ; preds = %bb.ah, %.lr.ph.i27
  %i.ma = phi i8 [ %i.ms, %.lr.ph.i27 ], [ %i.lw, %bb.ah ]
  %.1128234.i = phi ptr [ %i.mo, %.lr.ph.i27 ], [ %i.ls, %bb.ah ]
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %.1128234.i, i64 %i.mb ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !34
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !34
  %i.mh = zext i8 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mh ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !34
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !34
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mn ; 4 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !34  ; 2 uses
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !34  ; 3 uses
  %i.mt = icmp ne i8 %i.ms, 0
  %i.mu = icmp ult ptr %i.mo, %i.jl
  %i.mv = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %i.mv, label %.lr.ph.i27, label %._crit_edge.i, !llvm.loop !76

._crit_edge.i:                                    ; preds = %.lr.ph.i27, %bb.ah
  %.1128.lcssa.i = phi ptr [ %i.ls, %bb.ah ], [ %i.mo, %.lr.ph.i27 ]
  %.lcssa226.i = phi i8 [ %i.lt, %bb.ah ], [ %i.mp, %.lr.ph.i27 ]
  %.lcssa225.i = phi i8 [ %i.lw, %bb.ah ], [ %i.ms, %.lr.ph.i27 ]
  %i.mw = getelementptr inbounds nuw i8, ptr %.1128.lcssa.i, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %bb.ag
  %.0136.i = phi i8 [ %.lcssa226.i, %._crit_edge.i ], [ %i.lt, %bb.ag ]
  %.1132.in.i = phi i8 [ %.lcssa225.i, %._crit_edge.i ], [ %i.lw, %bb.ag ] ; 2 uses
  %.2129.i = phi ptr [ %i.mw, %._crit_edge.i ], [ %i.lr, %bb.ag ] ; 4 uses
  %.1132.i = zext i8 %.1132.in.i to i32
  %.not181.i = icmp eq i8 %.1132.in.i, 0
  br i1 %.not181.i, label %.split.i, label %bb.af, !llvm.loop !73

.split.i:                                         ; preds = %bb.ai
  %i.mx = getelementptr inbounds i8, ptr %.2129.i, i64 -1 ; 4 uses
  %i.my = zext i8 %.0136.i to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !33 ; 5 uses
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !28
  %.not182.i = icmp eq i32 %i.nb, 0               ; 2 uses
  %spec.select.i = select i1 %.not182.i, ptr %.0152.ph.i, ptr %i.na ; 3 uses
  %spec.select202.i = select i1 %.not182.i, ptr null, ptr %i.mx ; 3 uses
  %i.nc = icmp ugt ptr %i.mx, %1
  br i1 %i.nc, label %.lr.ph263.i.preheader, label %.critedge203.i

.lr.ph263.i.preheader:                            ; preds = %.split.i
  br i1 %.not183.i, label %.lr.ph263.i.us, label %.lr.ph263.i

.lr.ph263.i.us:                                   ; preds = %.lr.ph263.i.preheader, %.critedge.i26.us
  %.2143261.i.us = phi ptr [ %spec.select205.i.us, %.critedge.i26.us ], [ %spec.select202.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0148260.i.us = phi ptr [ %i.nd, %.critedge.i26.us ], [ %i.mx, %.lr.ph263.i.preheader ]
  %.2154259.i.us = phi ptr [ %spec.select204.i.us, %.critedge.i26.us ], [ %spec.select.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0157258.i.us = phi ptr [ %i.nk, %.critedge.i26.us ], [ %i.na, %.lr.ph263.i.preheader ] ; 3 uses
  %i.nd = getelementptr inbounds i8, ptr %.0148260.i.us, i64 -1 ; 4 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !34  ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0157258.i.us, i64 8
  %.0238.i.us = load ptr, ptr %i.nf, align 8, !tbaa !36 ; 2 uses
  %.not184239.i.us = icmp eq ptr %.0238.i.us, null
  br i1 %.not184239.i.us, label %.critedge203.i, label %.lr.ph242.i.us

.lr.ph242.i.us:                                   ; preds = %.lr.ph263.i.us, %bb.aj
  %.0240.i.us = phi ptr [ %.0.i.us, %bb.aj ], [ %.0238.i.us, %.lr.ph263.i.us ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.0240.i.us, i64 24
  %i.nh = load i8, ptr %i.ng, align 8, !tbaa !38  ; 2 uses
  %.not185.i.us = icmp eq i8 %i.ne, %i.nh
  br i1 %.not185.i.us, label %.critedge.i26.us, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph242.i.us
  %i.ni = icmp ult i8 %i.ne, %i.nh
  %.1.in.idx.i.us = select i1 %i.ni, i64 0, i64 8
  %.1.in.i.us = getelementptr inbounds nuw i8, ptr %.0240.i.us, i64 %.1.in.idx.i.us
  %.0.i.us = load ptr, ptr %.1.in.i.us, align 8, !tbaa !36 ; 2 uses
  %.not184.i.us = icmp eq ptr %.0.i.us, null
  br i1 %.not184.i.us, label %.critedge203.i, label %.lr.ph242.i.us, !llvm.loop !74

.critedge.i26.us:                                 ; preds = %.lr.ph242.i.us
  %i.nj = getelementptr inbounds nuw i8, ptr %.0240.i.us, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !40 ; 4 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !28
  %.not201.i.us = icmp eq i32 %i.nl, 0            ; 2 uses
  %spec.select204.i.us = select i1 %.not201.i.us, ptr %.2154259.i.us, ptr %i.nk ; 2 uses
  %spec.select205.i.us = select i1 %.not201.i.us, ptr %.2143261.i.us, ptr %i.nd ; 2 uses
  %i.nm = icmp ugt ptr %i.nd, %1
  br i1 %i.nm, label %.lr.ph263.i.us, label %.critedge203.i, !llvm.loop !75

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader, %.critedge.i26
  %.2143261.i = phi ptr [ %spec.select205.i, %.critedge.i26 ], [ %spec.select202.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0148260.i = phi ptr [ %i.nn, %.critedge.i26 ], [ %i.mx, %.lr.ph263.i.preheader ]
  %.2154259.i = phi ptr [ %spec.select204.i, %.critedge.i26 ], [ %spec.select.i, %.lr.ph263.i.preheader ] ; 3 uses
  %.0157258.i = phi ptr [ %i.nx, %.critedge.i26 ], [ %i.na, %.lr.ph263.i.preheader ] ; 3 uses
  %i.nn = getelementptr inbounds i8, ptr %.0148260.i, i64 -1 ; 4 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !34
  %i.np = zext i8 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %.fr356.i, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !34  ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0157258.i, i64 8
  %.0238.i = load ptr, ptr %i.ns, align 8, !tbaa !36 ; 2 uses
  %.not184239.i = icmp eq ptr %.0238.i, null
  br i1 %.not184239.i, label %.critedge203.i, label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %.lr.ph263.i, %bb.ak
  %.0240.i = phi ptr [ %.0.i, %bb.ak ], [ %.0238.i, %.lr.ph263.i ] ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0240.i, i64 24
  %i.nu = load i8, ptr %i.nt, align 8, !tbaa !38  ; 2 uses
  %.not185.i = icmp eq i8 %i.nr, %i.nu
  br i1 %.not185.i, label %.critedge.i26, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph242.i
  %i.nv = icmp ult i8 %i.nr, %i.nu
  %.1.in.idx.i = select i1 %i.nv, i64 0, i64 8
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.0240.i, i64 %.1.in.idx.i
  %.0.i = load ptr, ptr %.1.in.i, align 8, !tbaa !36 ; 2 uses
  %.not184.i = icmp eq ptr %.0.i, null
  br i1 %.not184.i, label %.critedge203.i, label %.lr.ph242.i, !llvm.loop !74

.critedge.i26:                                    ; preds = %.lr.ph242.i
  %i.nw = getelementptr inbounds nuw i8, ptr %.0240.i, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !40 ; 4 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !28
  %.not201.i = icmp eq i32 %i.ny, 0               ; 2 uses
  %spec.select204.i = select i1 %.not201.i, ptr %.2154259.i, ptr %i.nx ; 2 uses
  %spec.select205.i = select i1 %.not201.i, ptr %.2143261.i, ptr %i.nn ; 2 uses
  %i.nz = icmp ugt ptr %i.nn, %1
  br i1 %i.nz, label %.lr.ph263.i, label %.critedge203.i, !llvm.loop !75

.critedge203.i:                                   ; preds = %.lr.ph263.i, %.critedge.i26, %.critedge.i26.us, %.lr.ph263.i.us, %bb.ak, %bb.aj, %.split.i
  %.0157258.lcssa.sink.i = phi ptr [ %i.na, %.split.i ], [ %.0157258.i.us, %bb.aj ], [ %.0157258.i, %bb.ak ], [ %i.nk, %.critedge.i26.us ], [ %.0157258.i.us, %.lr.ph263.i.us ], [ %i.nx, %.critedge.i26 ], [ %.0157258.i, %.lr.ph263.i ]
  %.2154233.i = phi ptr [ %spec.select.i, %.split.i ], [ %.2154259.i.us, %bb.aj ], [ %.2154259.i, %bb.ak ], [ %spec.select204.i.us, %.critedge.i26.us ], [ %.2154259.i.us, %.lr.ph263.i.us ], [ %spec.select204.i, %.critedge.i26 ], [ %.2154259.i, %.lr.ph263.i ] ; 2 uses
  %.2143231.i = phi ptr [ %spec.select202.i, %.split.i ], [ %.2143261.i.us, %bb.aj ], [ %.2143261.i, %bb.ak ], [ %spec.select205.i.us, %.critedge.i26.us ], [ %.2143261.i.us, %.lr.ph263.i.us ], [ %spec.select205.i, %.critedge.i26 ], [ %.2143261.i, %.lr.ph263.i ] ; 2 uses
  %.2133.in.le254.i = getelementptr inbounds nuw i8, ptr %.0157258.lcssa.sink.i, i64 44
  %.2133229.i = load i32, ptr %.2133.in.le254.i, align 4, !tbaa !43
  %.not186.i = icmp eq ptr %.2143231.i, null
  br i1 %.not186.i, label %.outer213.i, label %.preheader.i23, !llvm.loop !73

.preheader.i23:                                   ; preds = %.critedge203.i, %.critedge203.us.i, %.critedge203.us.us.i, %bb.ae
  %.pre-phi.i = phi i64 [ %i.jm, %.critedge203.us.i ], [ %i.jm, %.critedge203.us.us.i ], [ %.pre.i, %bb.ae ], [ %i.jm, %.critedge203.i ]
  %.4156.ph.i = phi ptr [ %.2154233.us.i, %.critedge203.us.i ], [ %.2154233.us.us.i, %.critedge203.us.us.i ], [ %i.ln, %bb.ae ], [ %.2154233.i, %.critedge203.i ] ; 3 uses
  %.4145.ph.i = phi ptr [ %.2143231.us.i, %.critedge203.us.i ], [ %.2143231.us.us.i, %.critedge203.us.us.i ], [ %1, %bb.ae ], [ %.2143231.i, %.critedge203.i ] ; 4 uses
  %.3130.ph.i = phi ptr [ %i.ko, %.critedge203.us.i ], [ %i.jq, %.critedge203.us.us.i ], [ %1, %bb.ae ], [ %.2129.i, %.critedge203.i ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !30
  %i.oc = sext i32 %i.ob to i64                   ; 6 uses
  %i.od = ptrtoint ptr %.4145.ph.i to i64         ; 4 uses
  %i.oe = sub i64 %.pre-phi.i, %i.od
  %i.of = icmp sgt i64 %i.oe, %i.oc
  %i.og = getelementptr inbounds i8, ptr %.4145.ph.i, i64 %i.oc
  %spec.select206342.i = select i1 %i.of, ptr %i.og, ptr %i.jh ; 3 uses
  %i.oh = ptrtoint ptr %spec.select206342.i to i64 ; 3 uses
  %i.oi = ptrtoint ptr %.3130.ph.i to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %.not187283328343.i = icmp slt i64 %i.oj, 1
  br i1 %.not187283328343.i, label %.outer._crit_edge.i, label %.lr.ph285.lr.ph.lr.ph.i

.lr.ph285.lr.ph.lr.ph.i:                          ; preds = %.preheader.i23
  %.not193.i = icmp eq ptr %.fr356.i, null
  br i1 %.not193.i, label %.lr.ph285.lr.ph.us.i, label %.lr.ph285.lr.ph.i

.lr.ph285.lr.ph.us.i:                             ; preds = %.lr.ph285.lr.ph.lr.ph.i, %.loopexit.split.us.us.i
  %i.ok = phi i64 [ %i.pu, %.loopexit.split.us.us.i ], [ %i.oh, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %spec.select206347.us.i = phi ptr [ %spec.select206.us.i, %.loopexit.split.us.us.i ], [ %spec.select206342.i, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %i.ol = phi i64 [ %i.pq, %.loopexit.split.us.us.i ], [ %i.od, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %.3130346.us.i = phi ptr [ %i.oo, %.loopexit.split.us.us.i ], [ %.3130.ph.i, %.lr.ph285.lr.ph.lr.ph.i ]
  %.4145345.us.i = phi ptr [ %.2139220.us.us.i, %.loopexit.split.us.us.i ], [ %.4145.ph.i, %.lr.ph285.lr.ph.lr.ph.i ] ; 2 uses
  %.4156344.us.i = phi ptr [ %.7222.us.us.i, %.loopexit.split.us.us.i ], [ %.4156.ph.i, %.lr.ph285.lr.ph.lr.ph.i ]
  br label %.lr.ph285.us.us.i

.lr.ph285.us.us.i:                                ; preds = %.outer.us.us.i, %.lr.ph285.lr.ph.us.i
  %i.om = phi i64 [ 1, %.lr.ph285.lr.ph.us.i ], [ %i.po, %.outer.us.us.i ]
  %.4.ph330.us.us.i = phi ptr [ %.3130346.us.i, %.lr.ph285.lr.ph.us.i ], [ %i.oo, %.outer.us.us.i ]
  %.5.ph329.us.us.i = phi ptr [ %.4156344.us.i, %.lr.ph285.lr.ph.us.i ], [ %.7222.us.us.i, %.outer.us.us.i ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.backedge.us.us.i, %.lr.ph285.us.us.i
  %i.on = phi i64 [ %i.om, %.lr.ph285.us.us.i ], [ %.3134.be.us.us.i, %.backedge.us.us.i ]
  %.4284.us.us.i = phi ptr [ %.4.ph330.us.us.i, %.lr.ph285.us.us.i ], [ %i.oo, %.backedge.us.us.i ]
  %i.oo = getelementptr inbounds i8, ptr %.4284.us.us.i, i64 %i.on ; 8 uses
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -1
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !34
  %i.or = zext i8 %i.oq to i64                    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !34  ; 2 uses
  %i.ou = zext i8 %i.ot to i64
  %.not189.us.us.i = icmp eq i8 %i.ot, 0
  br i1 %.not189.us.us.i, label %bb.am, label %.backedge.us.us.i

bb.am:                                            ; preds = %bb.al
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.or
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !33 ; 5 uses
  %.not190.us.us.i = icmp eq ptr %i.ow, null
  br i1 %.not190.us.us.i, label %.backedge.us.us.i, label %bb.an

.backedge.us.us.i:                                ; preds = %bb.am, %bb.al
  %.3134.be.us.us.i = phi i64 [ 1, %bb.am ], [ %i.ou, %bb.al ] ; 2 uses
  %i.ox = ptrtoint ptr %i.oo to i64
  %i.oy = sub i64 %i.ok, %i.ox
  %.not187.us.us.i = icmp slt i64 %i.oy, %.3134.be.us.us.i
  br i1 %.not187.us.us.i, label %.outer._crit_edge.i, label %bb.al, !llvm.loop !77

bb.an:                                            ; preds = %bb.am
  %i.oz = getelementptr inbounds i8, ptr %i.oo, i64 -1 ; 4 uses
  %i.pa = load i32, ptr %i.ow, align 8, !tbaa !28
  %.not191.us.us.i = icmp eq i32 %i.pa, 0
  %.not192.us.us.i = icmp ugt ptr %i.oz, %.4145345.us.i
  %or.cond207.us.us.i = or i1 %.not192.us.us.i, %.not191.us.us.i ; 2 uses
  %.6.us.us.i = select i1 %or.cond207.us.us.i, ptr %.5.ph329.us.us.i, ptr %i.ow ; 2 uses
  %.1138.us.us.i = select i1 %or.cond207.us.us.i, ptr null, ptr %i.oz ; 2 uses
  %i.pb = icmp ugt ptr %i.oz, %1
  br i1 %i.pb, label %.lr.ph316.us.us.i, label %.critedge208.us.us.i

.lr.ph316.us.us.i:                                ; preds = %bb.an, %.critedge2.us.us.us.i
  %.2139314.us.us.us.i = phi ptr [ %.3140.us.us.us.i, %.critedge2.us.us.us.i ], [ %.1138.us.us.i, %bb.an ] ; 3 uses
  %.2150313.us.us.us.i = phi ptr [ %i.pc, %.critedge2.us.us.us.i ], [ %i.oz, %bb.an ]
  %.7312.us.us.us.i = phi ptr [ %.8.us.us.us.i, %.critedge2.us.us.us.i ], [ %.6.us.us.i, %bb.an ] ; 3 uses
  %.1158311.us.us.us.i = phi ptr [ %i.pj, %.critedge2.us.us.us.i ], [ %i.ow, %bb.an ] ; 3 uses
  %i.pc = getelementptr inbounds i8, ptr %.2150313.us.us.us.i, i64 -1 ; 5 uses
end_hunk_0
