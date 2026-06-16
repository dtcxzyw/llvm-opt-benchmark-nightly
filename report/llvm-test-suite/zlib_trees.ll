inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0_@build_tree:bb.a
  %i.em = sext i32 %.04959.i98 to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.em
  store i32 %i.ed, ptr %i.en, align 4, !tbaa !4
  %.0.i103 = shl i32 %.1.i102, 1                  ; 2 uses
  %i.eo = load i32, ptr %i.h, align 4, !tbaa !52  ; 2 uses
  %.not.i104 = icmp sgt i32 %.0.i103, %i.eo
  br i1 %.not.i104, label %pqdownheap.exit108.loopexit, label %bb.t, !llvm.loop !57

pqdownheap.exit108.loopexit:                      ; preds = %bb.ab, %bb.aa, %bb.y
  %.049.lcssa.i105.ph = phi i32 [ %.04959.i98, %bb.y ], [ %.04959.i98, %bb.aa ], [ %.1.i102, %bb.ab ]
  %i.ep = sext i32 %.049.lcssa.i105.ph to i64
  br label %pqdownheap.exit108

pqdownheap.exit108:                               ; preds = %pqdownheap.exit108.loopexit, %bb.s
  %.049.lcssa.i105 = phi i64 [ 1, %bb.s ], [ %i.ep, %pqdownheap.exit108.loopexit ]
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.049.lcssa.i105
  store i32 %i.dc, ptr %i.eq, align 4, !tbaa !4
  %i.er = load i32, ptr %i.ba, align 4, !tbaa !4  ; 2 uses
  %i.es = load i32, ptr %i.i, align 8, !tbaa !53
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %i.i, align 8, !tbaa !53
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.eu
  store i32 %i.cy, ptr %i.ev, align 4, !tbaa !4
  %i.ew = load i32, ptr %i.i, align 8, !tbaa !53
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr %i.i, align 8, !tbaa !53
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ey
  store i32 %i.er, ptr %i.ez, align 4, !tbaa !4
  %i.fa = sext i32 %i.cy to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fa ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !27
  %i.fd = sext i32 %i.er to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fd ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !27
  %i.fg = add i16 %i.ff, %i.fc
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv156 ; 2 uses
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !27
  %i.fi = getelementptr inbounds i8, ptr %i.bb, i64 %i.fa
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !27
  %i.fk = getelementptr inbounds i8, ptr %i.bb, i64 %i.fd
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !27
  %. = tail call i8 @llvm.umax.i8(i8 %i.fj, i8 %i.fl)
  %i.fm = add i8 %., 1
  %i.fn = getelementptr inbounds i8, ptr %i.bb, i64 %indvars.iv156 ; 2 uses
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !27
  %i.fo = trunc nsw i64 %indvars.iv156 to i32     ; 2 uses
  %i.fp = trunc i64 %indvars.iv156 to i16         ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  store i16 %i.fp, ptr %i.fr, align 2, !tbaa !27
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 1
  store i32 %i.fo, ptr %i.ba, align 4, !tbaa !4
  %i.fs = load i32, ptr %i.h, align 4, !tbaa !52  ; 2 uses
  %.not58.i109 = icmp slt i32 %i.fs, 2
  br i1 %.not58.i109, label %pqdownheap.exit122, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %pqdownheap.exit108, %bb.aj
  %i.ft = phi i32 [ %i.hb, %bb.aj ], [ %i.fs, %pqdownheap.exit108 ]
  %.060.i111 = phi i32 [ %.0.i117, %bb.aj ], [ 2, %pqdownheap.exit108 ] ; 7 uses
  %.04959.i112 = phi i32 [ %.1.i116, %bb.aj ], [ 1, %pqdownheap.exit108 ] ; 3 uses
  %i.fu = icmp slt i32 %.060.i111, %i.ft
  br i1 %i.fu, label %bb.ac, label %._crit_edge65.i113

._crit_edge65.i113:                               ; preds = %.lr.ph.i110
  %.pre.i114 = sext i32 %.060.i111 to i64
  br label %bb.ag

bb.ac:                                            ; preds = %.lr.ph.i110
  %i.fv = or disjoint i32 %.060.i111, 1           ; 2 uses
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !27 ; 2 uses
  %i.gc = sext i32 %.060.i111 to i64              ; 3 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !27 ; 2 uses
  %i.gi = icmp ult i16 %i.gb, %i.gh
  br i1 %i.gi, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = icmp eq i16 %i.gb, %i.gh
  br i1 %i.gj, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gk = getelementptr inbounds i8, ptr %i.bb, i64 %i.fz
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !27
  %i.gm = getelementptr inbounds i8, ptr %i.bb, i64 %i.gf
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !27
  %.not55.i121 = icmp ugt i8 %i.gl, %i.gn
  br i1 %.not55.i121, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %._crit_edge65.i113
  %.pre-phi.i115 = phi i64 [ %.pre.i114, %._crit_edge65.i113 ], [ %i.fw, %bb.af ], [ %i.gc, %bb.ae ], [ %i.gc, %bb.ad ]
  %.1.i116 = phi i32 [ %.060.i111, %._crit_edge65.i113 ], [ %i.fv, %bb.af ], [ %.060.i111, %bb.ae ], [ %.060.i111, %bb.ad ] ; 3 uses
  %i.go = load i16, ptr %i.fh, align 2, !tbaa !27 ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.pre-phi.i115
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4  ; 2 uses
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !27 ; 2 uses
  %i.gu = icmp ult i16 %i.go, %i.gt
  br i1 %i.gu, label %pqdownheap.exit122.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gv = icmp eq i16 %i.go, %i.gt
  br i1 %i.gv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load i8, ptr %i.fn, align 1, !tbaa !27
  %i.gx = getelementptr inbounds i8, ptr %i.bb, i64 %i.gr
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !27
  %.not56.i120 = icmp ugt i8 %i.gw, %i.gy
  br i1 %.not56.i120, label %bb.aj, label %pqdownheap.exit122.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gz = sext i32 %.04959.i112 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gz
  store i32 %i.gq, ptr %i.ha, align 4, !tbaa !4
  %.0.i117 = shl i32 %.1.i116, 1                  ; 2 uses
  %i.hb = load i32, ptr %i.h, align 4, !tbaa !52  ; 2 uses
  %.not.i118 = icmp sgt i32 %.0.i117, %i.hb
  br i1 %.not.i118, label %pqdownheap.exit122.loopexit, label %.lr.ph.i110, !llvm.loop !57

pqdownheap.exit122.loopexit:                      ; preds = %bb.aj, %bb.ai, %bb.ag
  %.049.lcssa.i119.ph = phi i32 [ %.04959.i112, %bb.ag ], [ %.04959.i112, %bb.ai ], [ %.1.i116, %bb.aj ]
  %i.hc = sext i32 %.049.lcssa.i119.ph to i64
  br label %pqdownheap.exit122

pqdownheap.exit122:                               ; preds = %pqdownheap.exit122.loopexit, %pqdownheap.exit108
  %.049.lcssa.i119 = phi i64 [ 1, %pqdownheap.exit108 ], [ %i.hc, %pqdownheap.exit122.loopexit ]
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.049.lcssa.i119
  store i32 %i.fo, ptr %i.hd, align 4, !tbaa !4
  %i.he = load i32, ptr %i.h, align 4, !tbaa !52  ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.s, label %bb.ak, !llvm.loop !59

bb.ak:                                            ; preds = %pqdownheap.exit122
  %i.hg = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.hh = load i32, ptr %i.i, align 8, !tbaa !53
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %i.i, align 8, !tbaa !53
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hj
  store i32 %i.hg, ptr %i.hk, align 4, !tbaa !4
  %i.hl = load ptr, ptr %1, align 8, !tbaa !46    ; 4 uses
  %i.hm = load i32, ptr %i.au, align 8, !tbaa !56 ; 2 uses
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !48 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !60
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !61 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !62 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.hv, i8 0, i64 32, i1 false), !tbaa !63
  %i.hw = load i32, ptr %i.i, align 8, !tbaa !53
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !4
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i16 0, ptr %i.ic, align 2, !tbaa !27
  %i.id = load i32, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.ie = icmp slt i32 %i.id, 572
  br i1 %i.ie, label %.lr.ph.i123, label %gen_bitlen.exit

.lr.ph.i123:                                      ; preds = %bb.ak
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 4 uses
  %.not103.i = icmp eq ptr %i.ho, null
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.ih = sext i32 %i.id to i64
  %i.ii = add nsw i64 %i.ih, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i123
  %indvars.iv.i = phi i64 [ %i.ii, %.lr.ph.i123 ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.0113.i = phi i32 [ 0, %.lr.ph.i123 ], [ %spec.select104.i, %bb.aq ]
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4  ; 4 uses
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2 ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !27
  %i.ip = zext i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !27
  %i.it = zext i16 %i.is to i32
  %i.iu = add nuw nsw i32 %i.it, 1                ; 2 uses
  %2 = icmp sgt i32 %i.iu, %i.hu
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.iu, i32 %i.hu) ; 3 uses
  %i.iv = zext i1 %2 to i32
  %spec.select104.i = add nuw nsw i32 %.0113.i, %i.iv ; 3 uses
  %i.iw = trunc i32 %spec.select.i to i16
  store i16 %i.iw, ptr %i.in, align 2, !tbaa !27
  %i.ix = icmp sgt i32 %i.ik, %i.hm
  br i1 %i.ix, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iy = sext i32 %spec.select.i to i64
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.iy ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !63
  %i.jb = add i16 %i.ja, 1
  store i16 %i.jb, ptr %i.iz, align 2, !tbaa !63
  %.not102.i = icmp slt i32 %i.ik, %i.hs
  br i1 %.not102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jc = sub nsw i32 %i.ik, %i.hs
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.087.i = phi i32 [ %i.jf, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.jg = load i16, ptr %i.im, align 2, !tbaa !27
  %i.jh = zext i16 %i.jg to i64                   ; 2 uses
  %i.ji = add nsw i32 %.087.i, %spec.select.i
  %i.jj = zext i32 %i.ji to i64
  %i.jk = mul nuw nsw i64 %i.jh, %i.jj
  %i.jl = load i64, ptr %i.if, align 8, !tbaa !42
  %i.jm = add i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %i.if, align 8, !tbaa !42
  br i1 %.not103.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.il
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !27
  %i.jq = zext i16 %i.jp to i32
  %i.jr = add nsw i32 %.087.i, %i.jq
  %i.js = zext i32 %i.jr to i64
  %i.jt = mul nuw nsw i64 %i.js, %i.jh
  %i.ju = load i64, ptr %i.ig, align 8, !tbaa !43
  %i.jv = add i64 %i.jt, %i.ju
  store i64 %i.jv, ptr %i.ig, align 8, !tbaa !43
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jw = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.jw, 573
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.al, !llvm.loop !64

._crit_edge.i:                                    ; preds = %bb.aq
  %i.jx = icmp eq i32 %spec.select104.i, 0
  br i1 %i.jx, label %gen_bitlen.exit, label %.preheader105.i

.preheader105.i:                                  ; preds = %._crit_edge.i
  %i.jy = sext i32 %i.hu to i64                   ; 3 uses
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.jy ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader105.i
  %.2.i = phi i32 [ %i.kl, %bb.at ], [ %spec.select104.i, %.preheader105.i ] ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %bb.as ], [ %i.jy, %bb.ar ] ; 2 uses
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, -1 ; 3 uses
  %i.ka = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv.next133.i
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !63 ; 2 uses
  %i.kc = icmp eq i16 %i.kb, 0
  br i1 %i.kc, label %bb.as, label %bb.at, !llvm.loop !65

bb.at:                                            ; preds = %bb.as
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv.next133.i
  %i.ke = add i16 %i.kb, -1
  store i16 %i.ke, ptr %i.kd, align 2, !tbaa !63
  %sext.i = shl i64 %indvars.iv132.i, 32
  %i.kf = ashr exact i64 %sext.i, 31
  %i.kg = getelementptr inbounds i8, ptr %i.hv, i64 %i.kf ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !63
  %i.ki = add i16 %i.kh, 2
  store i16 %i.ki, ptr %i.kg, align 2, !tbaa !63
  %i.kj = load i16, ptr %i.jz, align 2, !tbaa !63
  %i.kk = add i16 %i.kj, -1
  store i16 %i.kk, ptr %i.jz, align 2, !tbaa !63
  %i.kl = add nsw i32 %.2.i, -2
  %i.km = icmp sgt i32 %.2.i, 2
  br i1 %i.km, label %bb.ar, label %.preheader.i, !llvm.loop !66

.preheader.i:                                     ; preds = %bb.at
  %.not122.i = icmp eq i32 %i.hu, 0
  br i1 %.not122.i, label %gen_bitlen.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader.i, %.outer.split.us.i
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %.outer.split.us.i ], [ %i.jy, %.preheader.i ] ; 5 uses
  %.185124.i = phi i32 [ %.286.ph.lcssa.i, %.outer.split.us.i ], [ 573, %.preheader.i ] ; 2 uses
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv138.i
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !63 ; 2 uses
  %.not99118.i = icmp eq i16 %i.ko, 0
  br i1 %.not99118.i, label %.outer.split.us.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %.lr.ph125.i
  %i.kp = zext i16 %i.ko to i32
  %i.kq = trunc i64 %indvars.iv138.i to i16
  br label %.outer.split.i

.outer.split.us.i:                                ; preds = %.outer.i, %.lr.ph125.i
  %.286.ph.lcssa.i = phi i32 [ %.185124.i, %.lr.ph125.i ], [ %i.kv, %.outer.i ]
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, -1 ; 2 uses
  %.not.i124 = icmp eq i64 %indvars.iv.next139.i, 0
  br i1 %.not.i124, label %gen_bitlen.exit, label %.lr.ph125.i, !llvm.loop !67

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %.286.ph120.i = phi i32 [ %.185124.i, %.outer.split.lr.ph.i ], [ %i.kv, %.outer.i ]
  %.091.ph119.i = phi i32 [ %i.kp, %.outer.split.lr.ph.i ], [ %i.lh, %.outer.i ]
  %i.kr = sext i32 %.286.ph120.i to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.outer.split.i
  %indvars.iv135.i = phi i64 [ %i.kr, %.outer.split.i ], [ %indvars.iv.next136.i, %bb.au ]
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, -1 ; 3 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.next136.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4  ; 2 uses
  %i.ku = icmp sgt i32 %i.kt, %i.hm
  br i1 %i.ku, label %bb.au, label %bb.av, !llvm.loop !68

bb.av:                                            ; preds = %bb.au
  %i.kv = trunc nsw i64 %indvars.iv.next136.i to i32 ; 2 uses
  %i.kw = sext i32 %i.kt to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2 ; 2 uses
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !27
  %i.la = zext i16 %i.kz to i64                   ; 2 uses
  %.not100.i = icmp eq i64 %indvars.iv138.i, %i.la
  br i1 %.not100.i, label %.outer.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lb = sub nsw i64 %indvars.iv138.i, %i.la
  %i.lc = load i16, ptr %i.kx, align 2, !tbaa !27
  %i.ld = zext i16 %i.lc to i64
  %i.le = mul nsw i64 %i.lb, %i.ld
  %i.lf = load i64, ptr %i.if, align 8, !tbaa !42
  %i.lg = add i64 %i.le, %i.lf
  store i64 %i.lg, ptr %i.if, align 8, !tbaa !42
  store i16 %i.kq, ptr %i.ky, align 2, !tbaa !27
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aw, %bb.av
  %i.lh = add nsw i32 %.091.ph119.i, -1           ; 2 uses
  %.not99.i = icmp eq i32 %i.lh, 0
  br i1 %.not99.i, label %.outer.split.us.i, label %.outer.split.i, !llvm.loop !68

gen_bitlen.exit:                                  ; preds = %.outer.split.us.i, %bb.ak, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.li = load i16, ptr %i.hv, align 8, !tbaa !63
  %i.lj = shl i16 %i.li, 1                        ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !63
  %i.ll = getelementptr i8, ptr %0, i64 2978
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !63
  %i.ln = add i16 %i.lm, %i.lj
  %i.lo = shl i16 %i.ln, 1                        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.lo, ptr %i.lp, align 4, !tbaa !63
  %i.lq = getelementptr i8, ptr %0, i64 2980
  %i.lr = load i16, ptr %i.lq, align 4, !tbaa !63
  %i.ls = add i16 %i.lr, %i.lo
  %i.lt = shl i16 %i.ls, 1                        ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.lt, ptr %i.lu, align 2, !tbaa !63
  %i.lv = getelementptr i8, ptr %0, i64 2982
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !63
  %i.lx = add i16 %i.lw, %i.lt
  %i.ly = shl i16 %i.lx, 1                        ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.ly, ptr %i.lz, align 8, !tbaa !63
  %i.ma = getelementptr i8, ptr %0, i64 2984
  %i.mb = load i16, ptr %i.ma, align 8, !tbaa !63
  %i.mc = add i16 %i.mb, %i.ly
  %i.md = shl i16 %i.mc, 1                        ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.md, ptr %i.me, align 2, !tbaa !63
  %i.mf = getelementptr i8, ptr %0, i64 2986
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !63
  %i.mh = add i16 %i.mg, %i.md
  %i.mi = shl i16 %i.mh, 1                        ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.mi, ptr %i.mj, align 4, !tbaa !63
  %i.mk = getelementptr i8, ptr %0, i64 2988
  %i.ml = load i16, ptr %i.mk, align 4, !tbaa !63
  %i.mm = add i16 %i.ml, %i.mi
  %i.mn = shl i16 %i.mm, 1                        ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mn, ptr %i.mo, align 2, !tbaa !63
  %i.mp = getelementptr i8, ptr %0, i64 2990
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !63
  %i.mr = add i16 %i.mq, %i.mn
  %i.ms = shl i16 %i.mr, 1                        ; 2 uses
end_hunk_0
begin_hunk_1_@send_tree:bb.a
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = shl i32 %i.fa, %i.bg
  %i.fc = trunc i32 %i.fb to i16
  %i.fd = or i16 %i.eu, %i.fc                     ; 3 uses
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i16 %i.fd, ptr %i.g, align 8, !tbaa !25
  %i.fe = trunc i16 %i.fd to i8
  %i.ff = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.fg = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.i, align 8, !tbaa !32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 %i.fe, ptr %i.fi, align 1, !tbaa !27
  %i.fj = load i16, ptr %i.g, align 8, !tbaa !25
  %i.fk = lshr i16 %i.fj, 8
  %i.fl = trunc nuw i16 %i.fk to i8
  %i.fm = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.fn = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.fo = add i64 %i.fn, 1
  store i64 %i.fo, ptr %i.i, align 8, !tbaa !32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  store i8 %i.fl, ptr %i.fp, align 1, !tbaa !27
  %i.fq = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.fr = sub nsw i32 16, %i.fq
  %i.fs = lshr i32 %i.fa, %i.fr
  %i.ft = trunc nuw i32 %i.fs to i16
  %i.fu = add nsw i32 %i.ew, -16
  %i.fv = add nsw i32 %i.fu, %i.fq
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fw = add nsw i32 %i.bg, %i.ew
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fx = phi i16 [ %i.fd, %bb.w ], [ %i.ft, %bb.v ] ; 2 uses
  %storemerge243 = phi i32 [ %i.fw, %bb.w ], [ %i.fv, %bb.v ] ; 5 uses
  store i32 %storemerge243, ptr %i.f, align 4, !tbaa !26
  %i.fy = icmp sgt i32 %storemerge243, 13
  %i.fz = add nsw i32 %.0212256, 65534            ; 3 uses
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ga = and i32 %i.fz, 65535
  %i.gb = shl i32 %i.fz, %storemerge243
  %i.gc = trunc i32 %i.gb to i16
  %i.gd = or i16 %i.fx, %i.gc                     ; 2 uses
  store i16 %i.gd, ptr %i.g, align 8, !tbaa !25
  %i.ge = trunc i16 %i.gd to i8
  %i.gf = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.gg = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.i, align 8, !tbaa !32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gg
  store i8 %i.ge, ptr %i.gi, align 1, !tbaa !27
  %i.gj = load i16, ptr %i.g, align 8, !tbaa !25
  %i.gk = lshr i16 %i.gj, 8
  %i.gl = trunc nuw i16 %i.gk to i8
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.gn = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %i.i, align 8, !tbaa !32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  store i8 %i.gl, ptr %i.gp, align 1, !tbaa !27
  %i.gq = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.gr = sub nsw i32 16, %i.gq
  %i.gs = lshr i32 %i.ga, %i.gr
  %i.gt = trunc nuw i32 %i.gs to i16
  store i16 %i.gt, ptr %i.g, align 8, !tbaa !25
  %i.gu = add nsw i32 %i.gq, -13
  br label %.loopexit.sink.split

bb.z:                                             ; preds = %bb.x
  %i.gv = shl i32 %i.fz, %storemerge243
  %i.gw = trunc i32 %i.gv to i16
  %i.gx = or i16 %i.fx, %i.gw
  store i16 %i.gx, ptr %i.g, align 8, !tbaa !25
  %i.gy = add nsw i32 %storemerge243, 3
  br label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.t
  %i.gz = load i16, ptr %i.m, align 2, !tbaa !27
  %i.ha = zext i16 %i.gz to i32                   ; 3 uses
  %i.hb = sub nsw i32 16, %i.ha
  %i.hc = icmp sgt i32 %i.bg, %i.hb
  %i.hd = load i16, ptr %i.l, align 4, !tbaa !27
  %i.he = zext i16 %i.hd to i32                   ; 2 uses
  %i.hf = shl i32 %i.he, %i.bg
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = or i16 %i.eu, %i.hg                     ; 3 uses
  br i1 %i.hc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i16 %i.hh, ptr %i.g, align 8, !tbaa !25
  %i.hi = trunc i16 %i.hh to i8
  %i.hj = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.hk = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.i, align 8, !tbaa !32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hk
  store i8 %i.hi, ptr %i.hm, align 1, !tbaa !27
  %i.hn = load i16, ptr %i.g, align 8, !tbaa !25
  %i.ho = lshr i16 %i.hn, 8
  %i.hp = trunc nuw i16 %i.ho to i8
  %i.hq = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.hr = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr %i.i, align 8, !tbaa !32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr
  store i8 %i.hp, ptr %i.ht, align 1, !tbaa !27
  %i.hu = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.hv = sub nsw i32 16, %i.hu
  %i.hw = lshr i32 %i.he, %i.hv
  %i.hx = trunc nuw i32 %i.hw to i16
  %i.hy = add nsw i32 %i.ha, -16
  %i.hz = add nsw i32 %i.hy, %i.hu
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ia = add nsw i32 %i.bg, %i.ha
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ib = phi i16 [ %i.hh, %bb.ac ], [ %i.hx, %bb.ab ] ; 2 uses
  %storemerge = phi i32 [ %i.ia, %bb.ac ], [ %i.hz, %bb.ab ] ; 5 uses
  store i32 %storemerge, ptr %i.f, align 4, !tbaa !26
  %i.ic = icmp sgt i32 %storemerge, 9
  %i.id = add nuw i32 %.0212256, 65526            ; 3 uses
  br i1 %i.ic, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ie = and i32 %i.id, 65535
  %i.if = shl i32 %i.id, %storemerge
  %i.ig = trunc i32 %i.if to i16
  %i.ih = or i16 %i.ib, %i.ig                     ; 2 uses
  store i16 %i.ih, ptr %i.g, align 8, !tbaa !25
  %i.ii = trunc i16 %i.ih to i8
  %i.ij = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ik = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.i, align 8, !tbaa !32
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ik
  store i8 %i.ii, ptr %i.im, align 1, !tbaa !27
  %i.in = load i16, ptr %i.g, align 8, !tbaa !25
  %i.io = lshr i16 %i.in, 8
  %i.ip = trunc nuw i16 %i.io to i8
  %i.iq = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ir = load i64, ptr %i.i, align 8, !tbaa !32  ; 2 uses
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.i, align 8, !tbaa !32
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ir
  store i8 %i.ip, ptr %i.it, align 1, !tbaa !27
  %i.iu = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.iv = sub nsw i32 16, %i.iu
  %i.iw = lshr i32 %i.ie, %i.iv
  %i.ix = trunc nuw i32 %i.iw to i16
  store i16 %i.ix, ptr %i.g, align 8, !tbaa !25
  %i.iy = add nsw i32 %i.iu, -9
  br label %.loopexit.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.iz = shl i32 %i.id, %storemerge
  %i.ja = trunc i32 %i.iz to i16
  %i.jb = or i16 %i.ib, %i.ja
  store i16 %i.jb, ptr %i.g, align 8, !tbaa !25
  %i.jc = add nsw i32 %storemerge, 7
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ae, %bb.af, %bb.y, %bb.z, %bb.r, %bb.s
  %storemerge244.sink = phi i32 [ %i.eo, %bb.r ], [ %i.gu, %bb.y ], [ %i.es, %bb.s ], [ %i.gy, %bb.z ], [ %i.jc, %bb.af ], [ %i.iy, %bb.ae ]
  store i32 %storemerge244.sink, ptr %i.f, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split
  %i.jd = icmp eq i16 %i.s, 0
  br i1 %i.jd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %. = select i1 %i.w, i32 3, i32 4
  %.252 = select i1 %i.w, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit, %bb.b
  %.2219 = phi i32 [ %.1218254, %bb.b ], [ 3, %.loopexit ], [ %., %bb.ag ]
  %.2216 = phi i32 [ %.1215255, %bb.b ], [ 138, %.loopexit ], [ %.252, %bb.ag ]
  %.3 = phi i32 [ %i.u, %bb.b ], [ 0, %.loopexit ], [ 0, %bb.ag ]
  %.1 = phi i32 [ %.0210258, %bb.b ], [ %.0211257, %.loopexit ], [ %.0211257, %bb.ag ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.ah, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !17, i64 2904}
!9 = !{!"internal_state", !10, i64 0, !5, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !14, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !12, i64 96, !13, i64 104, !15, i64 112, !15, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !16, i64 2904, !16, i64 2928, !16, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !12, i64 5888, !5, i64 5896, !5, i64 5900, !15, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !19, i64 5936, !5, i64 5940, !13, i64 5944}
!10 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!15 = !{!"p1 short", !11, i64 0}
!16 = !{!"tree_desc_s", !17, i64 0, !5, i64 8, !18, i64 16}
!17 = !{!"p1 _ZTS9ct_data_s", !11, i64 0}
!18 = !{!"p1 _ZTS18static_tree_desc_s", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!9, !18, i64 2920}
!21 = !{!9, !17, i64 2928}
!22 = !{!9, !18, i64 2944}
!23 = !{!9, !17, i64 2952}
!24 = !{!9, !18, i64 2968}
!25 = !{!9, !19, i64 5936}
!26 = !{!9, !5, i64 5940}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!9, !5, i64 5900}
!31 = !{!9, !12, i64 16}
!32 = !{!9, !13, i64 40}
!33 = !{!9, !5, i64 196}
!34 = !{!9, !10, i64 0}
!35 = !{!36, !5, i64 88}
!36 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !13, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !12, i64 48, !37, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!37 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!38 = distinct !{!38, !29}
!39 = !{!9, !5, i64 2912}
!40 = distinct !{!40, !29}
!41 = !{!9, !5, i64 2936}
!42 = !{!9, !13, i64 5912}
!43 = !{!9, !13, i64 5920}
!44 = !{!9, !5, i64 200}
!45 = distinct !{!45, !29}
!46 = !{!16, !17, i64 0}
!47 = !{!16, !18, i64 16}
!48 = !{!49, !17, i64 0}
!49 = !{!"static_tree_desc_s", !17, i64 0, !50, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!50 = !{!"p1 int", !11, i64 0}
!51 = !{!49, !5, i64 20}
!52 = !{!9, !5, i64 5300}
!53 = !{!9, !5, i64 5304}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29}
!56 = !{!16, !5, i64 8}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = !{!49, !50, i64 8}
!61 = !{!49, !5, i64 16}
!62 = !{!49, !5, i64 24}
!63 = !{!19, !19, i64 0}
!64 = distinct !{!64, !29}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !29}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !29}
!73 = !{!9, !15, i64 5904}
!74 = !{!9, !12, i64 5888}
!75 = distinct !{!75, !29}
!76 = !{!9, !5, i64 5928}
!77 = !{!9, !5, i64 5896}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29}
end_hunk_1
