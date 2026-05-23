inline.NumInlined: 46
inline.NumDeleted: 15
begin_hunk_0_@ucnv_MBCSToUnicodeWithOffsets_78:bb.a
  %i.ge = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store ptr %i.gf, ptr %i.d, align 8
  %i.gg = load i8, ptr %i.ge, align 1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4            ; 2 uses
  %i.gk = or i32 %i.ga, %i.gj
  %i.gl = trunc i32 %i.gj to i16
  %i.gm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  store ptr %i.gn, ptr %i.e, align 8
  store i16 %i.gl, ptr %i.gm, align 2
  %i.go = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  store ptr %i.gp, ptr %i.d, align 8
  %i.gq = load i8, ptr %i.go, align 1
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4            ; 2 uses
  %i.gu = or i32 %i.gk, %i.gt
  %i.gv = trunc i32 %i.gt to i16
  %i.gw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  store ptr %i.gx, ptr %i.e, align 8
  store i16 %i.gv, ptr %i.gw, align 2
  %i.gy = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store ptr %i.gz, ptr %i.d, align 8
  %i.ha = load i8, ptr %i.gy, align 1
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4            ; 2 uses
  %i.he = or i32 %i.gu, %i.hd
  %i.hf = trunc i32 %i.hd to i16
  %i.hg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  store ptr %i.hh, ptr %i.e, align 8
  store i16 %i.hf, ptr %i.hg, align 2
  %i.hi = icmp slt i32 %i.he, -2146435072
  br i1 %i.hi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hj = load ptr, ptr %i.d, align 8
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -16
  store ptr %i.hk, ptr %i.d, align 8
  %i.hl = load ptr, ptr %i.e, align 8
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -32
  store ptr %i.hm, ptr %i.e, align 8
  br label %.loopexit174.i

bb.k:                                             ; preds = %bb.i
  %i.hn = add nsw i32 %.0139.i, -1
  %i.ho = icmp sgt i32 %.0139.i, 1
  br i1 %i.ho, label %bb.i, label %.loopexit174.i, !llvm.loop !17

.loopexit174.i:                                   ; preds = %bb.k, %bb.j
  %.1140.i = phi i32 [ %.0139.i, %bb.j ], [ 0, %bb.k ]
  %i.hp = sub nsw i32 %i.be, %.1140.i             ; 3 uses
  %i.hq = shl nsw i32 %i.hp, 4                    ; 2 uses
  %i.hr = sub nsw i32 %.1136.i, %i.hq             ; 3 uses
  %i.hs = load ptr, ptr %i.f, align 8
  %.not160.i = icmp eq ptr %i.hs, null
  br i1 %.not160.i, label %.loopexit173.i, label %bb.l

bb.l:                                             ; preds = %.loopexit174.i
  %i.ht = sext i32 %i.hq to i64
  %i.hu = getelementptr inbounds i8, ptr %.0134.i, i64 %i.ht ; 2 uses
  %i.hv = icmp sgt i32 %i.hp, 0
  br i1 %i.hv, label %.lr.ph.i, label %.loopexit173.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.2141187.i = phi i32 [ %i.js, %.lr.ph.i ], [ %i.hp, %bb.l ] ; 2 uses
  %.1143186.i = phi i32 [ %i.jp, %.lr.ph.i ], [ %.0142.i, %bb.l ] ; 17 uses
  %i.hw = add nsw i32 %.1143186.i, 1
  %i.hx = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store ptr %i.hy, ptr %i.f, align 8
  store i32 %.1143186.i, ptr %i.hx, align 4
  %i.hz = add nsw i32 %.1143186.i, 2
  %i.ia = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store ptr %i.ib, ptr %i.f, align 8
  store i32 %i.hw, ptr %i.ia, align 4
  %i.ic = add nsw i32 %.1143186.i, 3
  %i.id = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store ptr %i.ie, ptr %i.f, align 8
  store i32 %i.hz, ptr %i.id, align 4
  %i.if = add nsw i32 %.1143186.i, 4
  %i.ig = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store ptr %i.ih, ptr %i.f, align 8
  store i32 %i.ic, ptr %i.ig, align 4
  %i.ii = add nsw i32 %.1143186.i, 5
  %i.ij = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store ptr %i.ik, ptr %i.f, align 8
  store i32 %i.if, ptr %i.ij, align 4
  %i.il = add nsw i32 %.1143186.i, 6
  %i.im = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store ptr %i.in, ptr %i.f, align 8
  store i32 %i.ii, ptr %i.im, align 4
  %i.io = add nsw i32 %.1143186.i, 7
  %i.ip = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store ptr %i.iq, ptr %i.f, align 8
  store i32 %i.il, ptr %i.ip, align 4
  %i.ir = add nsw i32 %.1143186.i, 8
  %i.is = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store ptr %i.it, ptr %i.f, align 8
  store i32 %i.io, ptr %i.is, align 4
  %i.iu = add nsw i32 %.1143186.i, 9
  %i.iv = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store ptr %i.iw, ptr %i.f, align 8
  store i32 %i.ir, ptr %i.iv, align 4
  %i.ix = add nsw i32 %.1143186.i, 10
  %i.iy = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store ptr %i.iz, ptr %i.f, align 8
  store i32 %i.iu, ptr %i.iy, align 4
  %i.ja = add nsw i32 %.1143186.i, 11
  %i.jb = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store ptr %i.jc, ptr %i.f, align 8
  store i32 %i.ix, ptr %i.jb, align 4
  %i.jd = add nsw i32 %.1143186.i, 12
  %i.je = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store ptr %i.jf, ptr %i.f, align 8
  store i32 %i.ja, ptr %i.je, align 4
  %i.jg = add nsw i32 %.1143186.i, 13
  %i.jh = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  store ptr %i.ji, ptr %i.f, align 8
  store i32 %i.jd, ptr %i.jh, align 4
  %i.jj = add nsw i32 %.1143186.i, 14
  %i.jk = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  store ptr %i.jl, ptr %i.f, align 8
  store i32 %i.jg, ptr %i.jk, align 4
  %i.jm = add nsw i32 %.1143186.i, 15
  %i.jn = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  store ptr %i.jo, ptr %i.f, align 8
  store i32 %i.jj, ptr %i.jn, align 4
  %i.jp = add nsw i32 %.1143186.i, 16             ; 2 uses
  %i.jq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store ptr %i.jr, ptr %i.f, align 8
  store i32 %i.jm, ptr %i.jq, align 4
  %i.js = add nsw i32 %.2141187.i, -1
  %i.jt = icmp samesign ugt i32 %.2141187.i, 1
  br i1 %i.jt, label %.lr.ph.i, label %.loopexit173.i, !llvm.loop !18

.loopexit173.i:                                   ; preds = %.lr.ph.i, %bb.l, %.loopexit174.i, %bb.g
  %.3145.i = phi i32 [ %.0142.i, %bb.g ], [ %.0142.i, %.loopexit174.i ], [ %.0142.i, %bb.l ], [ %i.jp, %.lr.ph.i ] ; 7 uses
  %.2137.i = phi i32 [ %.1136.i, %bb.g ], [ %i.hr, %.loopexit174.i ], [ %i.hr, %bb.l ], [ %i.hr, %.lr.ph.i ]
  %.2.i = phi ptr [ %.0134.i, %bb.g ], [ %.0134.i, %.loopexit174.i ], [ %i.hu, %bb.l ], [ %i.hu, %.lr.ph.i ] ; 6 uses
  %.2137.fr.i = freeze i32 %.2137.i               ; 2 uses
  %i.ju = icmp sgt i32 %.2137.fr.i, 0
  %.promoted.i434 = load ptr, ptr %i.d, align 8   ; 2 uses
  br i1 %i.ju, label %.outer.split.i.preheader, label %.loopexit171.split.i

.outer.split.i.preheader:                         ; preds = %.loopexit173.i, %.outer.backedge.i
  %.promoted.i436 = phi ptr [ %.promoted.i, %.outer.backedge.i ], [ %.promoted.i434, %.loopexit173.i ] ; 3 uses
  %.3138.ph.i435 = phi i32 [ %.3138.ph.be.i, %.outer.backedge.i ], [ %.2137.fr.i, %.loopexit173.i ] ; 2 uses
  %i.jv = icmp ult ptr %.promoted.i436, %i.ae
  br i1 %i.jv, label %.lr.ph782, label %.loopexit171.split.i

.outer.split.i:                                   ; preds = %bb.m
  %i.jw = icmp ult ptr %i.jy, %i.ae
  br i1 %i.jw, label %.lr.ph782, label %.loopexit171.split.i

.lr.ph782:                                        ; preds = %.outer.split.i.preheader, %.outer.split.i
  %i.jx = phi ptr [ %i.jy, %.outer.split.i ], [ %.promoted.i436, %.outer.split.i.preheader ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 1 ; 6 uses
  store ptr %i.jy, ptr %i.d, align 8
  %i.jz = load i8, ptr %i.jx, align 1
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4            ; 3 uses
  %i.kd = icmp slt i32 %i.kc, -2146435072
  br i1 %i.kd, label %.outer.backedge.i, label %bb.m

.outer.backedge.i:                                ; preds = %bb.m, %.lr.ph782
  %i.ke = trunc i32 %i.kc to i16
  %i.kf = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  store ptr %i.kg, ptr %i.e, align 8
  store i16 %i.ke, ptr %i.kf, align 2
  %.3138.ph.be.i = add nsw i32 %.3138.ph.i435, -1
  %i.kh = icmp sgt i32 %.3138.ph.i435, 1
  %.promoted.i = load ptr, ptr %i.d, align 8      ; 2 uses
  br i1 %i.kh, label %.outer.split.i.preheader, label %.loopexit171.split.i, !llvm.loop !19

bb.m:                                             ; preds = %.lr.ph782
  %2 = lshr i32 %i.kc, 20
  %i.ki = and i32 %2, 15
  switch i32 %i.ki, label %.outer.split.i [
    i32 2, label %.outer.backedge.i
    i32 6, label %.loopexit172.i
    i32 7, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i32 12, ptr %1, align 4
  br label %.loopexit172.i

.loopexit172.i:                                   ; preds = %bb.m, %bb.n
  %i.kj = load ptr, ptr %i.f, align 8
  %.not161.i = icmp ne ptr %i.kj, null
  %i.kk = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kl = ptrtoint ptr %.2.i to i64               ; 2 uses
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = trunc i64 %i.km to i32                  ; 3 uses
  %i.ko = icmp sgt i32 %i.kn, 1
  %or.cond202.i = select i1 %.not161.i, i1 %i.ko, i1 false
  br i1 %or.cond202.i, label %.lr.ph192.i.preheader, label %.loopexit170.i

.lr.ph192.i.preheader:                            ; preds = %.loopexit172.i
  %i.kp = trunc i64 %i.kk to i32                  ; 2 uses
  %i.kq = trunc i64 %i.kl to i32                  ; 2 uses
  %i.kr = xor i32 %i.kq, -1
  %i.ks = add i32 %i.kr, %i.kp
  %i.kt = add i32 %i.kp, -2
  %i.ku = sub i32 %i.kt, %i.kq
  %xtraiter = and i32 %i.ks, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph192.i.prol.loopexit, label %.lr.ph192.i.prol

.lr.ph192.i.prol:                                 ; preds = %.lr.ph192.i.preheader, %.lr.ph192.i.prol
  %.0133191.i.prol = phi i32 [ %i.kv, %.lr.ph192.i.prol ], [ %i.kn, %.lr.ph192.i.preheader ]
  %.4146190.i.prol = phi i32 [ %i.kw, %.lr.ph192.i.prol ], [ %.3145.i, %.lr.ph192.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph192.i.prol ], [ 0, %.lr.ph192.i.preheader ]
  %i.kv = add nsw i32 %.0133191.i.prol, -1        ; 2 uses
  %i.kw = add nsw i32 %.4146190.i.prol, 1         ; 3 uses
  %i.kx = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  store ptr %i.ky, ptr %i.f, align 8
  store i32 %.4146190.i.prol, ptr %i.kx, align 4
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph192.i.prol.loopexit, label %.lr.ph192.i.prol, !llvm.loop !20

.lr.ph192.i.prol.loopexit:                        ; preds = %.lr.ph192.i.prol, %.lr.ph192.i.preheader
  %.0133191.i.unr = phi i32 [ %i.kn, %.lr.ph192.i.preheader ], [ %i.kv, %.lr.ph192.i.prol ]
  %.4146190.i.unr = phi i32 [ %.3145.i, %.lr.ph192.i.preheader ], [ %i.kw, %.lr.ph192.i.prol ]
  %.lcssa801.unr = phi i32 [ poison, %.lr.ph192.i.preheader ], [ %i.kw, %.lr.ph192.i.prol ]
  %i.kz = icmp ult i32 %i.ku, 3
  br i1 %i.kz, label %.loopexit170.loopexit.i, label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.prol.loopexit, %.lr.ph192.i
  %.0133191.i = phi i32 [ %i.lj, %.lr.ph192.i ], [ %.0133191.i.unr, %.lr.ph192.i.prol.loopexit ] ; 2 uses
  %.4146190.i = phi i32 [ %i.lk, %.lr.ph192.i ], [ %.4146190.i.unr, %.lr.ph192.i.prol.loopexit ] ; 5 uses
  %i.la = add nsw i32 %.4146190.i, 1
  %i.lb = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store ptr %i.lc, ptr %i.f, align 8
  store i32 %.4146190.i, ptr %i.lb, align 4
  %i.ld = add nsw i32 %.4146190.i, 2
  %i.le = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store ptr %i.lf, ptr %i.f, align 8
  store i32 %i.la, ptr %i.le, align 4
  %i.lg = add nsw i32 %.4146190.i, 3
  %i.lh = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store ptr %i.li, ptr %i.f, align 8
  store i32 %i.ld, ptr %i.lh, align 4
  %i.lj = add nsw i32 %.0133191.i, -4
  %i.lk = add nsw i32 %.4146190.i, 4              ; 2 uses
  %i.ll = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store ptr %i.lm, ptr %i.f, align 8
  store i32 %i.lg, ptr %i.ll, align 4
  %i.ln = icmp sgt i32 %.0133191.i, 5
  br i1 %i.ln, label %.lr.ph192.i, label %.loopexit170.loopexit.i, !llvm.loop !22

.loopexit170.loopexit.i:                          ; preds = %.lr.ph192.i, %.lr.ph192.i.prol.loopexit
  %.lcssa801 = phi i32 [ %.lcssa801.unr, %.lr.ph192.i.prol.loopexit ], [ %i.lk, %.lr.ph192.i ]
  %.pre.pre.pre.i = load ptr, ptr %i.d, align 8
  br label %.loopexit170.i

.loopexit170.i:                                   ; preds = %.loopexit170.loopexit.i, %.loopexit172.i
  %.pre.pre.i = phi ptr [ %i.jy, %.loopexit172.i ], [ %.pre.pre.pre.i, %.loopexit170.loopexit.i ] ; 5 uses
  %.5.i = phi i32 [ %.3145.i, %.loopexit172.i ], [ %.lcssa801, %.loopexit170.loopexit.i ] ; 3 uses
  %i.lo = load i32, ptr %1, align 4
  %i.lp = icmp slt i32 %i.lo, 1
  br i1 %i.lp, label %bb.o, label %.loopexit171.split.i

bb.o:                                             ; preds = %.loopexit170.i
  %i.lq = getelementptr inbounds i8, ptr %.pre.pre.i, i64 -1
  %i.lr = load i8, ptr %i.lq, align 1
  store i8 %i.lr, ptr %i.ba, align 1
  %i.ls = load ptr, ptr %i.at, align 8
  %i.lt = getelementptr i8, ptr %i.ls, i64 288
  %.val.i = load ptr, ptr %i.lt, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lu = load i8, ptr %i.bb, align 2
  %i.lv = load ptr, ptr %i.ah, align 8
  %i.lw = call signext i8 @ucnv_extInitialMatchToU_78(ptr noundef nonnull %i.ab, ptr noundef nonnull %.val.i, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.e, ptr noundef %i.lv, ptr noundef nonnull %i.f, i32 noundef %.5.i, i8 noundef signext %i.lu, ptr noundef nonnull %1) #16
  %.not44.i.i = icmp eq i8 %i.lw, 0
  br i1 %.not44.i.i, label %bb.q, label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 10, ptr %1, align 4
  br label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i

_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i: ; preds = %bb.q, %bb.p
  %.1.i.i = phi i8 [ 0, %bb.p ], [ 1, %bb.q ]
  store i8 %.1.i.i, ptr %i.bc, align 8
  %i.lx = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ly = ptrtoint ptr %i.lx to i64               ; 2 uses
  %i.lz = ptrtoint ptr %.pre.pre.i to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = add i32 %.5.i, 1
  %i.md = add i32 %i.mc, %i.mb                    ; 2 uses
  %i.me = load i32, ptr %1, align 4
  %i.mf = icmp slt i32 %i.me, 1
  br i1 %i.mf, label %bb.r, label %.loopexit171.split.i

bb.r:                                             ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i
  %i.mg = load ptr, ptr %i.ah, align 8
  %i.mh = load ptr, ptr %i.e, align 8
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = lshr exact i64 %i.mk, 1
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = sub i64 %i.aw, %i.ly
  %i.mo = trunc i64 %i.mn to i32
  %spec.select168.i = call i32 @llvm.smin.i32(i32 %i.mo, i32 %i.mm)
  br label %bb.g

.loopexit171.split.i:                             ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i, %.loopexit170.i, %.loopexit173.i, %.outer.backedge.i, %.outer.split.i.preheader, %.outer.split.i
  %i.mp = phi ptr [ %.promoted.i, %.outer.backedge.i ], [ %i.jy, %.outer.split.i ], [ %.promoted.i436, %.outer.split.i.preheader ], [ %i.lx, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ], [ %.promoted.i434, %.loopexit173.i ], [ %.pre.pre.i, %.loopexit170.i ] ; 3 uses
  %.6.i = phi i32 [ %.3145.i, %.outer.backedge.i ], [ %.3145.i, %.outer.split.i ], [ %.3145.i, %.outer.split.i.preheader ], [ %i.md, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ], [ %.3145.i, %.loopexit173.i ], [ %.5.i, %.loopexit170.i ] ; 2 uses
  %.3.i = phi ptr [ %.2.i, %.outer.backedge.i ], [ %.2.i, %.outer.split.i ], [ %.2.i, %.outer.split.i.preheader ], [ %.pre.pre.i, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ], [ %.2.i, %.loopexit173.i ], [ %.2.i, %.loopexit170.i ]
  %i.mq = load i32, ptr %1, align 4
  %i.mr = icmp slt i32 %i.mq, 1
  %i.ms = icmp ult ptr %i.mp, %i.ae
  %or.cond.i = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %or.cond.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.loopexit171.split.i
  %i.mt = load ptr, ptr %i.e, align 8
  %i.mu = load ptr, ptr %i.ah, align 8
  %.not165.i = icmp ult ptr %i.mt, %i.mu
  br i1 %.not165.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 15, ptr %1, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.loopexit171.split.i
  %i.mv = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not166.i = icmp eq ptr %i.mv, null
  %i.mw = ptrtoint ptr %i.mp to i64               ; 2 uses
  %i.mx = ptrtoint ptr %.3.i to i64               ; 2 uses
  %i.my = sub i64 %i.mw, %i.mx                    ; 4 uses
  %.not167194.i = icmp eq i64 %i.my, 0
  %or.cond205.i = select i1 %.not166.i, i1 true, i1 %.not167194.i
  br i1 %or.cond205.i, label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, label %.lr.ph197.i.preheader

.lr.ph197.i.preheader:                            ; preds = %bb.u
  %xtraiter886 = and i64 %i.my, 3                 ; 2 uses
  %lcmp.mod887.not = icmp eq i64 %xtraiter886, 0
  br i1 %lcmp.mod887.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol

.lr.ph197.i.prol:                                 ; preds = %.lr.ph197.i.preheader, %.lr.ph197.i.prol
  %.0196.i.prol = phi i64 [ %i.nc, %.lr.ph197.i.prol ], [ %i.my, %.lr.ph197.i.preheader ]
  %.7195.i.prol = phi i32 [ %i.mz, %.lr.ph197.i.prol ], [ %.6.i, %.lr.ph197.i.preheader ] ; 2 uses
  %prol.iter888 = phi i64 [ %prol.iter888.next, %.lr.ph197.i.prol ], [ 0, %.lr.ph197.i.preheader ]
  %i.mz = add nsw i32 %.7195.i.prol, 1            ; 2 uses
  %i.na = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store ptr %i.nb, ptr %i.f, align 8
  store i32 %.7195.i.prol, ptr %i.na, align 4
  %i.nc = add i64 %.0196.i.prol, -1               ; 2 uses
  %prol.iter888.next = add i64 %prol.iter888, 1   ; 2 uses
  %prol.iter888.cmp.not = icmp eq i64 %prol.iter888.next, %xtraiter886
  br i1 %prol.iter888.cmp.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol, !llvm.loop !23

.lr.ph197.i.prol.loopexit:                        ; preds = %.lr.ph197.i.prol, %.lr.ph197.i.preheader
  %.0196.i.unr = phi i64 [ %i.my, %.lr.ph197.i.preheader ], [ %i.nc, %.lr.ph197.i.prol ]
  %.7195.i.unr = phi i32 [ %.6.i, %.lr.ph197.i.preheader ], [ %i.mz, %.lr.ph197.i.prol ]
  %i.nd = sub i64 %i.mx, %i.mw
  %i.ne = icmp ugt i64 %i.nd, -4
  br i1 %i.ne, label %.loopexit.loopexit.i, label %.lr.ph197.i

.lr.ph197.i:                                      ; preds = %.lr.ph197.i.prol.loopexit, %.lr.ph197.i
  %.0196.i = phi i64 [ %i.nr, %.lr.ph197.i ], [ %.0196.i.unr, %.lr.ph197.i.prol.loopexit ]
  %.7195.i = phi i32 [ %i.no, %.lr.ph197.i ], [ %.7195.i.unr, %.lr.ph197.i.prol.loopexit ] ; 5 uses
  %i.nf = add nsw i32 %.7195.i, 1
  %i.ng = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  store ptr %i.nh, ptr %i.f, align 8
  store i32 %.7195.i, ptr %i.ng, align 4
  %i.ni = add nsw i32 %.7195.i, 2
  %i.nj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store ptr %i.nk, ptr %i.f, align 8
  store i32 %i.nf, ptr %i.nj, align 4
  %i.nl = add nsw i32 %.7195.i, 3
  %i.nm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  store ptr %i.nn, ptr %i.f, align 8
  store i32 %i.ni, ptr %i.nm, align 4
  %i.no = add nsw i32 %.7195.i, 4
  %i.np = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  store ptr %i.nq, ptr %i.f, align 8
  store i32 %i.nl, ptr %i.np, align 4
  %i.nr = add i64 %.0196.i, -4                    ; 2 uses
  %.not167.i.3 = icmp eq i64 %i.nr, 0
  br i1 %.not167.i.3, label %.loopexit.loopexit.i, label %.lr.ph197.i, !llvm.loop !24

.loopexit.loopexit.i:                             ; preds = %.lr.ph197.i, %.lr.ph197.i.prol.loopexit
  %.pre223.i = load ptr, ptr %i.d, align 8
  %.pre224.i = load ptr, ptr %i.f, align 8
  br label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %bb.u, %.loopexit.loopexit.i
  %i.ns = phi ptr [ %.pre224.i, %.loopexit.loopexit.i ], [ %i.mv, %bb.u ]
  %i.nt = phi ptr [ %.pre223.i, %.loopexit.loopexit.i ], [ %i.mp, %bb.u ]
  store ptr %i.nt, ptr %i.aa, align 8
  %i.nu = load ptr, ptr %i.e, align 8
  store ptr %i.nu, ptr %i.af, align 8
  store ptr %i.ns, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ev

bb.v:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.nv = load ptr, ptr %i.j, align 8             ; 7 uses
  %i.nw = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8            ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8            ; 2 uses
  store ptr %i.oa, ptr %i.b, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oc = load ptr, ptr %i.ob, align 8            ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8
  store ptr %i.oe, ptr %i.c, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 56
  %i.og = load i32, ptr %i.of, align 8
  %i.oh = and i32 %i.og, 16
  %.not.i317 = icmp eq i32 %i.oh, 0
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nv, i64 48 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8
  %..i318 = select i1 %.not.i317, i64 56, i64 64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %..i318
  %.0.i = load ptr, ptr %i.ok, align 8
  %i.ol = icmp ult ptr %i.nw, %i.ny
  br i1 %i.ol, label %.lr.ph.i319, label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

.lr.ph.i319:                                      ; preds = %bb.v
  %i.om = getelementptr inbounds nuw i8, ptr %i.nv, i64 65
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nv, i64 64
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i, %.lr.ph.i319
  %i.op = phi ptr [ %i.nw, %.lr.ph.i319 ], [ %i.pc, %.backedge.i ] ; 4 uses
  %.05876.i = phi i32 [ 0, %.lr.ph.i319 ], [ %.058.be.i, %.backedge.i ] ; 10 uses
  %i.oq = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not69.i = icmp ult ptr %i.oq, %i.oc
  br i1 %.not69.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 15, ptr %1, align 4
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.y:                                             ; preds = %bb.w
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 1 ; 4 uses
  store ptr %i.or, ptr %i.a, align 8
  %i.os = load i8, ptr %i.op, align 1
  %i.ot = zext i8 %i.os to i64
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4            ; 7 uses
  %i.ow = icmp slt i32 %i.ov, -2146435072
  br i1 %i.ow, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ox = trunc i32 %i.ov to i16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  store ptr %i.oy, ptr %i.b, align 8
  store i16 %i.ox, ptr %i.oq, align 2
  %i.oz = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not75.i = icmp eq ptr %i.oz, null
  br i1 %.not75.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store ptr %i.pa, ptr %i.c, align 8
  store i32 %.05876.i, ptr %i.oz, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.pb = add nsw i32 %.05876.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325, %bb.ao, %bb.an, %bb.aj, %bb.ab
  %.058.be.i = phi i32 [ %i.pb, %bb.ab ], [ %i.pw, %bb.aj ], [ %i.qc, %bb.an ], [ %i.qr, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325 ], [ %i.qd, %bb.ao ]
  %i.pc = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.pd = icmp ult ptr %i.pc, %i.ny
  br i1 %i.pd, label %bb.w, label %.loopexit.loopexit.i321.loopexit, !llvm.loop !25

bb.ac:                                            ; preds = %bb.y
  %i.pe = and i32 %i.ov, 13631488
  %or.cond.i320 = icmp eq i32 %i.pe, 1048576
  br i1 %or.cond.i320, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.pf = lshr i32 %i.ov, 10
  %i.pg = trunc i32 %i.pf to i16
  %i.ph = and i16 %i.pg, 1023
  %i.pi = or disjoint i16 %i.ph, -10240
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  store ptr %i.pj, ptr %i.b, align 8
  store i16 %i.pi, ptr %i.oq, align 2
  %i.pk = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not73.i = icmp eq ptr %i.pk, null
  br i1 %.not73.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  store ptr %i.pl, ptr %i.c, align 8
  store i32 %.05876.i, ptr %i.pk, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.pm = trunc i32 %i.ov to i16
  %i.pn = and i16 %i.pm, 1023
  %i.po = or disjoint i16 %i.pn, -9216            ; 2 uses
  %i.pp = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.pq = icmp ult ptr %i.pp, %i.oc
  br i1 %i.pq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 2
  store ptr %i.pr, ptr %i.b, align 8
  store i16 %i.po, ptr %i.pp, align 2
  %i.ps = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not74.i = icmp eq ptr %i.ps, null
  br i1 %.not74.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store ptr %i.pt, ptr %i.c, align 8
  store i32 %.05876.i, ptr %i.ps, align 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nv, i64 144
  store i16 %i.po, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.nv, i64 93
  store i8 1, ptr %i.pv, align 1
  store i32 15, ptr %1, align 4
  %.pre78.i = load ptr, ptr %i.a, align 8
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.pw = add nsw i32 %.05876.i, 1
  br label %.backedge.i

bb.ak:                                            ; preds = %bb.ac
  %3 = lshr i32 %i.ov, 20
  %i.px = and i32 %3, 15
  switch i32 %i.px, label %bb.ao [
    i32 2, label %bb.al
    i32 6, label %bb.ap
    i32 7, label %.thread.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.py = trunc i32 %i.ov to i16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  store ptr %i.pz, ptr %i.b, align 8
  store i16 %i.py, ptr %i.oq, align 2
  %i.qa = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not72.i = icmp eq ptr %i.qa, null
  br i1 %.not72.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store ptr %i.qb, ptr %i.c, align 8
  store i32 %.05876.i, ptr %i.qa, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.qc = add nsw i32 %.05876.i, 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.ak
  store i32 12, ptr %1, align 4
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.ao:                                            ; preds = %bb.ak
  %i.qd = add nsw i32 %.05876.i, 1
  br label %.backedge.i

bb.ap:                                            ; preds = %bb.ak
  %.pre.i = load i32, ptr %1, align 4
  %i.qe = icmp slt i32 %.pre.i, 1
  br i1 %i.qe, label %bb.aq, label %.loopexit.loopexit.i321.loopexit

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.or, ptr %i.aa, align 8
  %i.qf = load i8, ptr %i.op, align 1
  store i8 %i.qf, ptr %i.om, align 1
  %i.qg = load ptr, ptr %i.oi, align 8
  %i.qh = getelementptr i8, ptr %i.qg, i64 288
  %.val.i322 = load ptr, ptr %i.qh, align 8       ; 2 uses
  %.not.i.i323 = icmp eq ptr %.val.i322, null
  br i1 %.not.i.i323, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qi = load i8, ptr %i.on, align 2
  %i.qj = call signext i8 @ucnv_extInitialMatchToU_78(ptr noundef nonnull %i.nv, ptr noundef nonnull %.val.i322, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ny, ptr noundef nonnull %i.b, ptr noundef nonnull %i.oc, ptr noundef nonnull %i.c, i32 noundef %.05876.i, i8 noundef signext %i.qi, ptr noundef nonnull %1) #16
  %.not44.i.i324 = icmp eq i8 %i.qj, 0
  br i1 %.not44.i.i324, label %bb.as, label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i32 10, ptr %1, align 4
  br label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325

_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325: ; preds = %bb.as, %bb.ar
  %.1.i.i326 = phi i8 [ 0, %bb.ar ], [ 1, %bb.as ]
  store i8 %.1.i.i326, ptr %i.oo, align 8
  %i.qk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ql = load ptr, ptr %i.aa, align 8
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = add i32 %.05876.i, 1
  %i.qr = add i32 %i.qq, %i.qp
  %i.qs = load i32, ptr %1, align 4
  %i.qt = icmp slt i32 %i.qs, 1
  br i1 %i.qt, label %.backedge.i, label %.loopexit.loopexit.i321.loopexit

.loopexit.loopexit.i321.loopexit:                 ; preds = %.backedge.i, %bb.ap, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325
  %.ph445 = phi ptr [ %i.pc, %.backedge.i ], [ %i.or, %bb.ap ], [ %i.qk, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325 ]
  %.pre79.i.pre = load ptr, ptr %i.b, align 8
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %.thread.i, %.loopexit.loopexit.i321.loopexit, %bb.v, %bb.x, %bb.ai
  %i.qu = phi ptr [ %i.oq, %bb.x ], [ %i.oa, %bb.v ], [ %i.pp, %bb.ai ], [ %i.oq, %.thread.i ], [ %.pre79.i.pre, %.loopexit.loopexit.i321.loopexit ]
  %i.qv = phi ptr [ %i.op, %bb.x ], [ %i.nw, %bb.v ], [ %.pre78.i, %bb.ai ], [ %i.or, %.thread.i ], [ %.ph445, %.loopexit.loopexit.i321.loopexit ]
  store ptr %i.qv, ptr %i.aa, align 8
  store ptr %i.qu, ptr %i.nz, align 8
  %i.qw = load ptr, ptr %i.c, align 8
  store ptr %i.qw, ptr %i.od, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ev

bb.at:                                            ; preds = %bb.d
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.qy = load ptr, ptr %i.qx, align 8            ; 3 uses
  store ptr %i.qy, ptr %i.g, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8            ; 8 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8            ; 2 uses
  store ptr %i.rc, ptr %i.h, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.re = load ptr, ptr %i.rd, align 8            ; 8 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8
  store ptr %i.rg, ptr %i.i, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 8
  %i.rj = and i32 %i.ri, 16
  %.not290 = icmp eq i32 %i.rj, 0
  %.0.in.v = select i1 %.not290, i64 56, i64 64
  %.0.in = getelementptr inbounds nuw i8, ptr %i.t, i64 %.0.in.v
  %.0 = load ptr, ptr %.0.in, align 8             ; 7 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.rl = load ptr, ptr %i.rk, align 8            ; 6 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 8            ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.rp = load i8, ptr %i.ro, align 8             ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.k, i64 65 ; 6 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 3 uses
  %i.rs = load i32, ptr %i.rr, align 4            ; 2 uses
  %i.rt = trunc i32 %i.rs to i8
  %i.ru = and i32 %i.rs, 255
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.rw = getelementptr inbounds nuw i8, ptr %i.t, i64 49
  %i.rx = load i8, ptr %i.rw, align 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0216 = phi i8 [ %i.rx, %bb.au ], [ %i.rt, %bb.at ] ; 2 uses
  %i.ry = icmp ult ptr %i.qy, %i.ra
  br i1 %i.ry, label %.lr.ph, label %.critedge316

.lr.ph:                                           ; preds = %bb.av
  %i.rz = icmp ne i8 %i.rp, 0
  %i.sa = sext i1 %i.rz to i32
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.sc = getelementptr inbounds nuw i8, ptr %i.k, i64 66
  %i.sd = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.se = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %.backedge
  %i.sf = phi ptr [ %i.qy, %.lr.ph ], [ %i.wq, %.backedge ] ; 4 uses
  %.0214422 = phi i32 [ %i.rn, %.lr.ph ], [ %.0214.be, %.backedge ] ; 4 uses
  %.1217421 = phi i8 [ %.0216, %.lr.ph ], [ %.1217.be, %.backedge ] ; 5 uses
  %.0224420 = phi i8 [ %i.rp, %.lr.ph ], [ %.0224.be, %.backedge ] ; 4 uses
  %.0237419 = phi i32 [ 0, %.lr.ph ], [ %.0237.be, %.backedge ] ; 7 uses
  %.0245418 = phi i32 [ %i.sa, %.lr.ph ], [ %.0245.be, %.backedge ] ; 7 uses
  %i.sg = load ptr, ptr %i.h, align 8             ; 5 uses
  %.not291 = icmp ult ptr %i.sg, %i.re
  br i1 %.not291, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 15, ptr %1, align 4
  br label %.critedge316

bb.ay:                                            ; preds = %bb.aw
  %i.sh = icmp eq i8 %.0224420, 0
  br i1 %i.sh, label %bb.az, label %bb.bv

bb.az:                                            ; preds = %bb.ay
  %i.si = load ptr, ptr %i.i, align 8
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %.preheader, label %.preheader344

.preheader:                                       ; preds = %bb.az, %bb.bg
  %i.sk = phi ptr [ %i.tv, %bb.bg ], [ %i.sg, %bb.az ] ; 8 uses
  %i.sl = phi ptr [ %i.tt, %bb.bg ], [ %i.sf, %bb.az ] ; 8 uses
  %.2218 = phi i8 [ %.3219, %bb.bg ], [ %.1217421, %bb.az ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.bg ], [ %.0214422, %bb.az ] ; 2 uses
  %i.sm = zext i8 %.2218 to i64
  %i.sn = getelementptr inbounds nuw [1024 x i8], ptr %.0, i64 %i.sm
  %i.so = load i8, ptr %i.sl, align 1
  %i.sp = zext i8 %i.so to i64
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4            ; 8 uses
  %i.ss = icmp sgt i32 %i.sr, -1
  br i1 %i.ss, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %.preheader
  %i.st = lshr i32 %i.sr, 24                      ; 4 uses
  %i.su = and i32 %i.sr, 16777215                 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sl, i64 1 ; 6 uses
  store ptr %i.sv, ptr %i.g, align 8
  %i.sw = icmp ult ptr %i.sv, %i.ra
  br i1 %i.sw, label %bb.bb, label %.loopexit.sink.split

bb.bb:                                            ; preds = %bb.ba
  %i.sx = zext nneg i32 %i.st to i64
  %i.sy = getelementptr inbounds nuw [1024 x i8], ptr %.0, i64 %i.sx
  %i.sz = load i8, ptr %i.sv, align 1
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4            ; 6 uses
  %i.td = and i32 %i.tc, -2131755008
  %or.cond313 = icmp eq i32 %i.td, -2143289344
  br i1 %or.cond313, label %bb.bc, label %.loopexit.sink.split

bb.bc:                                            ; preds = %bb.bb
  %i.te = and i32 %i.tc, 65535
  %i.tf = add nuw nsw i32 %i.te, %i.su
end_hunk_0
begin_hunk_1_@ucnv_MBCSToUnicodeWithOffsets_78:bb.a

bb.ei:                                            ; preds = %bb.ef
  %.not46.6.i = icmp samesign ult i32 %i.ada, 1725296
  br i1 %.not46.6.i, label %.critedge.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %.not47.6.i = icmp samesign ugt i32 %i.ada, 1726325
  br i1 %.not47.6.i, label %bb.eu, label %bb.dx

bb.ek:                                            ; preds = %bb.eh
  %.not46.7.i = icmp samesign ult i32 %i.ada, 1701916
  br i1 %.not46.7.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.not47.7.i = icmp samesign ugt i32 %i.ada, 1702800
  br i1 %.not47.7.i, label %bb.en, label %bb.dx

bb.em:                                            ; preds = %bb.ek
  %i.ade = add nsw i32 %i.ada, -1700956
  %or.cond.i332 = icmp ult i32 %i.ade, -765
  br i1 %or.cond.i332, label %.critedge.i, label %bb.dx

bb.en:                                            ; preds = %bb.el
  %.not46.9.i = icmp samesign ult i32 %i.ada, 1705179
  br i1 %.not46.9.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.not47.9.i = icmp samesign ugt i32 %i.ada, 1705881
  br i1 %.not47.9.i, label %.critedge.i, label %bb.dx

bb.ep:                                            ; preds = %bb.en
  %.not46.10.i = icmp samesign ult i32 %i.ada, 1703065
  br i1 %.not46.10.i, label %.critedge.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %.not47.10.i = icmp samesign ugt i32 %i.ada, 1703535
  br i1 %.not47.10.i, label %bb.er, label %bb.dx

bb.er:                                            ; preds = %bb.eq
  %.not46.11.i = icmp samesign ult i32 %i.ada, 1704636
  br i1 %.not46.11.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.not47.11.i = icmp samesign ugt i32 %i.ada, 1705076
  br i1 %.not47.11.i, label %.critedge.i, label %bb.dx

bb.et:                                            ; preds = %bb.er
  %i.adf = add nsw i32 %i.ada, -1704320
  %or.cond101.i = icmp ult i32 %i.adf, -373
  br i1 %or.cond101.i, label %.critedge.i, label %bb.dx

bb.eu:                                            ; preds = %bb.ej
  %i.adg = add nsw i32 %i.ada, -1726638
  %or.cond102.i = icmp ult i32 %i.adg, -26
  br i1 %or.cond102.i, label %.critedge.i, label %bb.dx

.critedge.i:                                      ; preds = %bb.eu, %bb.et, %bb.es, %bb.ep, %bb.eo, %bb.em, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dw, %bb.du, %bb.dt
  store i32 10, ptr %1, align 4
  br label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit

_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit: ; preds = %bb.ds, %bb.dx, %.critedge.i
  %.1.i331 = phi i8 [ 0, %bb.dx ], [ %.2226, %.critedge.i ], [ 0, %bb.ds ] ; 2 uses
  %i.adh = load ptr, ptr %i.g, align 8
  %i.adi = load ptr, ptr %i.qx, align 8
  %i.adj = ptrtoint ptr %i.adh to i64
  %i.adk = ptrtoint ptr %i.adi to i64
  %i.adl = sub i64 %i.adj, %i.adk
  %i.adm = trunc i64 %i.adl to i32
  %i.adn = add nsw i32 %.6243, %i.adm             ; 2 uses
  %i.ado = load i32, ptr %1, align 4
  %i.adp = icmp slt i32 %i.ado, 1
  br i1 %i.adp, label %.backedge, label %.critedge316.loopexit450

.critedge316.loopexit450:                         ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit, %.loopexit, %.backedge
  %.6230.ph = phi i8 [ %.0224.be, %.backedge ], [ %.1225, %.loopexit ], [ %.1.i331, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit ]
  %.9.ph = phi i8 [ %.1217.be, %.backedge ], [ %.6222, %.loopexit ], [ %.8, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit ]
  %.7.ph = phi i32 [ %.0214.be, %.backedge ], [ %.5, %.loopexit ], [ 0, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit ]
  %.pre = load ptr, ptr %i.h, align 8
  br label %.critedge316

.critedge316:                                     ; preds = %bb.dn, %.critedge316.loopexit450, %bb.av, %bb.dq, %bb.dj, %bb.dd, %bb.cs, %bb.bt, %bb.ax
  %i.adq = phi ptr [ %i.sg, %bb.ax ], [ %i.aab, %bb.dd ], [ %i.vu, %bb.bt ], [ %i.wk, %bb.dq ], [ %i.wk, %bb.dj ], [ %i.rc, %bb.av ], [ %i.yy, %bb.cs ], [ %.pre, %.critedge316.loopexit450 ], [ %i.wk, %bb.dn ]
  %.6230 = phi i8 [ %.0224420, %bb.ax ], [ 0, %bb.dd ], [ %.1225, %bb.bt ], [ %i.abn, %bb.dq ], [ %.2226, %bb.dj ], [ %i.rp, %bb.av ], [ 0, %bb.cs ], [ %.6230.ph, %.critedge316.loopexit450 ], [ %.2226, %bb.dn ]
  %.9 = phi i8 [ %.1217421, %bb.ax ], [ %i.wv, %bb.dd ], [ %.6222, %bb.bt ], [ %.8, %bb.dq ], [ %.8, %bb.dj ], [ %.0216, %bb.av ], [ %i.wv, %bb.cs ], [ %.9.ph, %.critedge316.loopexit450 ], [ %.8, %bb.dn ]
  %.7 = phi i32 [ %.0214422, %bb.ax ], [ 0, %bb.dd ], [ %.5, %bb.bt ], [ 0, %bb.dq ], [ 0, %bb.dj ], [ %i.rn, %bb.av ], [ 0, %bb.cs ], [ %.7.ph, %.critedge316.loopexit450 ], [ 0, %bb.dn ]
  store i32 %.7, ptr %i.rm, align 8
  %i.adr = zext i8 %.9 to i32
  store i32 %i.adr, ptr %i.rr, align 4
  store i8 %.6230, ptr %i.ro, align 8
  %i.ads = load ptr, ptr %i.g, align 8
  store ptr %i.ads, ptr %i.qx, align 8
  store ptr %i.adq, ptr %i.rb, align 8
  %i.adt = load ptr, ptr %i.i, align 8
  store ptr %i.adt, ptr %i.rf, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, %bb.b, %bb.c, %.critedge316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  ret void
}

declare void @ucnv_extContinueMatchToU_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL20ucnv_MBCSGetFallbackP19UConverterMBCSTablej(ptr noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not23 = icmp eq i32 %i.b, 1
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i32 [ %..0, %.lr.ph ], [ %i.b, %bb.b ] ; 2 uses
  %.01721 = phi i32 [ %.017., %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.e = add i32 %.022, %.01721
  %i.f = lshr i32 %i.e, 1                         ; 3 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ult i32 %1, %i.i                    ; 2 uses
  %.017. = select i1 %i.j, i32 %.01721, i32 %i.f  ; 3 uses
  %..0 = select i1 %i.j, i32 %i.f, i32 %.022      ; 2 uses
  %i.k = add i32 %..0, -1
  %i.l = icmp ult i32 %.017., %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.m = zext nneg i32 %.017. to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.017.lcssa = phi i64 [ 0, %bb.b ], [ %i.m, %._crit_edge.loopexit ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.017.lcssa ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  %.019 = phi i32 [ %i.r, %bb.c ], [ 65534, %._crit_edge ], [ 65534, %bb.a ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ucnv_MBCSSimpleGetNextUChar_78(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext nneg i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.061 = phi i8 [ %i.s, %bb.d ], [ %i.h, %bb.b ]
  %.058 = phi i32 [ %i.u, %bb.d ], [ 0, %bb.b ]   ; 3 uses
  %i.j = zext i8 %.061 to i64
  %i.k = getelementptr inbounds nuw [1024 x i8], ptr %i.d, i64 %i.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4              ; 10 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.p, 24
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = and i32 %i.p, 16777215
  %i.u = add i32 %i.t, %.058
  %i.v = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %i.v, label %.thread, label %bb.c, !llvm.loop !31

bb.e:                                             ; preds = %bb.c
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  %4 = lshr i32 %i.p, 20
  %5 = and i32 %4, 15
  switch i32 %5, label %.thread [
    i32 4, label %bb.f
    i32 0, label %bb.h
    i32 5, label %bb.i
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 6, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = and i32 %i.p, 65535
  %i.y = add i32 %i.x, %.058                      ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %.not = icmp eq i16 %i.ab, -2
  br i1 %.not, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call fastcc noundef i32 @_ZL20ucnv_MBCSGetFallbackP19UConverterMBCSTablej(ptr noundef nonnull %i.b, i32 noundef %i.y)
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.ae = and i32 %i.p, 65535
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.af = and i32 %i.p, 65535
  %i.ag = add i32 %i.af, %.058                    ; 2 uses
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2            ; 4 uses
  %i.al = zext i16 %i.ak to i32                   ; 3 uses
  %i.am = icmp ult i16 %i.ak, -10240
  br i1 %i.am, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp samesign ult i16 %i.ak, -8192
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = shl nuw nsw i32 %i.al, 10
  %i.ap = and i32 %i.ao, 1047552
  %i.aq = zext i32 %i.ah to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = add nuw nsw i32 %i.ap, 9216
  %i.av = add nuw nsw i32 %i.au, %i.at
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.aw = and i32 %i.al, 65534
  %i.ax = icmp eq i32 %i.aw, 57344
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = zext i32 %i.ah to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i32
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bc = icmp eq i16 %i.ak, -1
  br i1 %i.bc, label %.thread, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.bd = and i32 %i.p, 1048575
  %i.be = add nuw nsw i32 %i.bd, 65536
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.bf = and i32 %i.p, 65535
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.bg = and i32 %i.p, 1048575
  %i.bh = add nuw nsw i32 %i.bg, 65536
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.n, %bb.i, %bb.m, %bb.k, %bb.g, %bb.f, %bb.q, %bb.p, %bb.o, %bb.h
  %.060 = phi i32 [ %i.ac, %bb.f ], [ %i.ad, %bb.g ], [ %i.ae, %bb.h ], [ %i.al, %bb.i ], [ %i.av, %bb.k ], [ %i.bb, %bb.m ], [ 65534, %bb.n ], [ %i.be, %bb.o ], [ %i.bf, %bb.p ], [ %i.bh, %bb.q ], [ 65534, %bb.e ] ; 2 uses
  %.not71 = icmp eq i32 %2, %i.w
  br i1 %.not71, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = icmp eq i32 %.060, 65534
  br i1 %i.bi, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not72 = icmp eq ptr %i.bk, null
  br i1 %.not72, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = tail call i32 @ucnv_extSimpleMatchToU_78(ptr noundef nonnull %i.bk, ptr noundef nonnull %1, i32 noundef %2, i8 noundef signext %3) #16
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.t, %bb.s, %bb.u, %bb.r, %bb.e, %bb.n, %bb.a
  %.1 = phi i32 [ 65535, %bb.n ], [ 65535, %bb.a ], [ 65535, %bb.e ], [ 65535, %bb.r ], [ %i.bl, %bb.u ], [ 65534, %bb.t ], [ %.060, %bb.s ], [ 65535, %bb.d ]
  ret i32 %.1
}

declare i32 @ucnv_extSimpleMatchToU_78(ptr noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_MBCSFromUnicodeWithOffsets_78(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 11 uses
  %i.h = alloca ptr, align 8                      ; 9 uses
  %i.i = alloca ptr, align 8                      ; 27 uses
  %i.j = alloca ptr, align 8                      ; 13 uses
  %i.k = alloca ptr, align 8                      ; 37 uses
  %i.l = alloca ptr, align 8                      ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 22 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @ucnv_extContinueMatchFromU_78(ptr noundef nonnull %i.n, ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1) #16
  %i.r = load i32, ptr %1, align 4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.go

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 281
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp slt i8 %i.u, 0
  br i1 %i.v, label %bb.go, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 252
  %i.z = load i8, ptr %i.y, align 4               ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 253
  %i.ab = load i8, ptr %i.aa, align 1             ; 3 uses
  switch i8 %i.z, label %bb.br [
    i8 0, label %bb.e
    i8 1, label %bb.am
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 2
  %.not410 = icmp eq i32 %i.ad, 0
  br i1 %.not410, label %bb.f, label %bb.br

bb.f:                                             ; preds = %bb.e
  %i.ae = and i32 %i.ac, 1
  %.not411 = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br i1 %.not411, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.ak = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.al = load ptr, ptr %i.af, align 8            ; 5 uses
  store ptr %i.al, ptr %i.g, align 8
  %i.am = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.an = load ptr, ptr %i.ah, align 8            ; 2 uses
  store ptr %i.an, ptr %i.h, align 8
  %i.ao = load ptr, ptr %i.ai, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = load ptr, ptr %i.aj, align 8
  store ptr %i.at, ptr %i.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 16
  %.not.i = icmp eq i32 %i.ba, 0
  %.0105.in.v.i = select i1 %.not.i, i64 232, i64 240
end_hunk_1
begin_hunk_2_@_ZL13ucnv_MBCSOpenP10UConverterP18UConverterLoadArgsP10UErrorCode:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dj, ptr noundef nonnull dereferenceable(1) %i.dm) #16 ; 0 uses
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dj)
  %endptr.i = getelementptr inbounds i8, ptr %i.dj, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %endptr.i, ptr noundef nonnull align 1 dereferenceable(10) @.str.11, i64 10, i1 false)
  tail call void @umtx_lock_78(ptr noundef null) #16
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.thread.i, label %bb.x

.thread.i:                                        ; preds = %bb.w
  store ptr %i.bz, ptr %i.do, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  store ptr %i.ch, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store ptr %i.dj, ptr %i.ds, align 8
  tail call void @umtx_unlock_78(ptr noundef null) #16
  br label %_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit

bb.x:                                             ; preds = %bb.w
  tail call void @umtx_unlock_78(ptr noundef null) #16
  tail call void @uprv_free_78(ptr noundef nonnull %i.bz) #16
  br label %_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit

bb.y:                                             ; preds = %bb.n, %bb.g, %bb.l, %bb.j, %bb.f, %bb.h, %bb.k, %bb.m, %bb.o
  %.pr = load i32, ptr %2, align 4
  %i.dt = icmp slt i32 %.pr, 1
  br i1 %i.dt, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.du = load i32, ptr %i.l, align 4
  %i.dv = and i32 %i.du, -17                      ; 2 uses
  store i32 %i.dv, ptr %i.l, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.dv, ptr %i.dw, align 8
  br label %_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit

_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit: ; preds = %bb.x, %.thread.i, %bb.z, %bb.e, %bb.d
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8            ; 9 uses
  %i.dz = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.2) #17
  %.not44 = icmp eq ptr %i.dz, null
  br i1 %.not44, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit
  %i.ea = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.3) #17
  %.not51 = icmp eq ptr %i.ea, null
  br i1 %.not51, label %bb.ab, label %.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.eb = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.4) #17
  %.not52 = icmp eq ptr %i.eb, null
  br i1 %.not52, label %bb.ai, label %.sink.split

bb.ac:                                            ; preds = %_ZL15_EBCDICSwapLFNLP20UConverterSharedDataP10UErrorCode.exit
  %i.ec = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.5) #17
  %.not45 = icmp eq ptr %i.ec, null
  br i1 %.not45, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.ed = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.6) #17
  %.not46 = icmp eq ptr %i.ed, null
  br i1 %.not46, label %bb.ae, label %.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.ee = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.7) #17
  %.not47 = icmp eq ptr %i.ee, null
  br i1 %.not47, label %bb.af, label %.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.ef = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.8) #17
  %.not48 = icmp eq ptr %i.ef, null
  br i1 %.not48, label %bb.ag, label %.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.eg = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.9) #17
  %.not49 = icmp eq ptr %i.eg, null
  br i1 %.not49, label %bb.ah, label %.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.eh = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @.str.10) #17
  %.not50 = icmp eq ptr %i.eh, null
  br i1 %.not50, label %bb.ai, label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.ah, %bb.ae, %bb.af, %bb.ac, %bb.ad, %bb.aa, %bb.ab
  %.sink60 = phi i32 [ 32768, %bb.aa ], [ 8192, %bb.ae ], [ 4096, %bb.ac ], [ 32768, %bb.ab ], [ 4096, %bb.ad ], [ 8192, %bb.af ], [ 16384, %bb.ah ], [ 16384, %bb.ag ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = or i32 %i.ej, %.sink60
  store i32 %i.ek, ptr %i.ei, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ah, %bb.ab
  %i.el = icmp eq i8 %i.f, 12                     ; 2 uses
  br i1 %i.el, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 3, ptr %i.em, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not53 = icmp eq ptr %i.eo, null
  br i1 %.not53, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 68
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = trunc i32 %i.eq to i8
  %i.es = zext i1 %i.el to i8
  %spec.select = add i8 %i.er, %i.es              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 8
  %i.ev = icmp sgt i8 %spec.select, %i.eu
  br i1 %i.ev, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  store i8 %spec.select, ptr %i.et, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.y, %bb.ak, %bb.am, %bb.al, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, -2147483648) i32 @_ZL21ucnv_MBCSGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef captures(none) %0, ptr noundef captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 282
  %i.d = load i8, ptr %i.c, align 2
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZL27ucnv_MBCSSingleGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 253
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 2
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %_ZL27ucnv_MBCSSingleGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = icmp eq i8 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 6 uses
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 16
  %.not.i = icmp eq i32 %i.t, 0
  %..i = select i1 %.not.i, i64 56, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %..i
  %.029.i = load ptr, ptr %i.u, align 8
  %i.v = icmp ult ptr %i.o, %i.q
  br i1 %i.v, label %.lr.ph661, label %.loopexit.i

bb.e:                                             ; preds = %bb.i
  %i.w = icmp ult ptr %i.x, %i.q
  br i1 %i.w, label %.lr.ph661, label %.loopexit.i

.lr.ph661:                                        ; preds = %bb.d, %bb.e
  %.030.i660 = phi ptr [ %i.x, %bb.e ], [ %i.o, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.030.i660, i64 1 ; 3 uses
  %i.y = load i8, ptr %.030.i660, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.029.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 6 uses
  store ptr %i.x, ptr %i.n, align 8
  %i.ac = icmp slt i32 %i.ab, -2146435072
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph661
  %i.ad = and i32 %i.ab, 65535
  br label %_ZL27ucnv_MBCSSingleGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.g:                                             ; preds = %.lr.ph661
  %i.ae = and i32 %i.ab, 13631488
  %or.cond.i = icmp eq i32 %i.ae, 1048576
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = and i32 %i.ab, 1048575
  %i.ag = add nuw nsw i32 %i.af, 65536
  br label %_ZL27ucnv_MBCSSingleGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.i:                                             ; preds = %bb.g
  %2 = lshr i32 %i.ab, 20
  %i.ah = and i32 %2, 15
  switch i32 %i.ah, label %bb.e [
    i32 2, label %bb.j
    i32 6, label %.loopexit34.i
    i32 7, label %.loopexit.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ai = and i32 %i.ab, 65535
  br label %_ZL27ucnv_MBCSSingleGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

.loopexit34.i:                                    ; preds = %bb.i
  %.pre.i = load i32, ptr %1, align 4
  %i.aj = icmp slt i32 %.pre.i, 1
  br i1 %i.aj, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %.loopexit34.i
  store ptr %.030.i660, ptr %i.n, align 8
  br label %_ZL27ucnv_MBCSSingleGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

.loopexit.i:                                      ; preds = %bb.e, %bb.i, %bb.d, %.loopexit34.i
  store i32 8, ptr %1, align 4
  br label %_ZL27ucnv_MBCSSingleGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.l:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, 16
  %.not158 = icmp eq i32 %i.an, 0
  %.0142.in.v = select i1 %.not158, i64 56, i64 64
  %.0142.in = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0142.in.v
  %.0142 = load ptr, ptr %.0142.in, align 8       ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 4 uses
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = trunc i32 %i.at to i8
  %i.av = and i32 %i.at, 255
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.outer.preheader

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  %i.ay = load i8, ptr %i.ax, align 1
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.m, %bb.l
  %.1136.ph.ph = phi i8 [ %i.au, %bb.l ], [ %i.ay, %bb.m ]
  br label %.outer

.outer:                                           ; preds = %.outer.preheader, %bb.ae
  %.0140.ph = phi ptr [ %.ptr, %bb.ae ], [ %i.o, %.outer.preheader ] ; 11 uses
  %.0139.ph = phi i32 [ 0, %bb.ae ], [ %i.ar, %.outer.preheader ]
  %.1136.ph = phi i8 [ %i.ci, %bb.ae ], [ %.1136.ph.ph, %.outer.preheader ] ; 2 uses
  %.0130.ph = phi i32 [ %.0130257, %bb.ae ], [ -1, %.outer.preheader ] ; 2 uses
  %i.az = icmp ult ptr %.0140.ph, %i.q
  br i1 %i.az, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.outer
  %.0140.ph385 = ptrtoint ptr %.0140.ph to i64
  %i.ba = sub i64 %i.ak, %.0140.ph385             ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %.0129258.idx = phi i64 [ %.0129258.add, %bb.ai ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0130257 = phi i32 [ %.2132, %bb.ai ], [ %.0130.ph, %.lr.ph.preheader ] ; 6 uses
  %.1136256 = phi i8 [ %i.bj, %bb.ai ], [ %.1136.ph, %.lr.ph.preheader ] ; 3 uses
  %.0139255 = phi i32 [ %i.bl, %bb.ai ], [ %.0139.ph, %.lr.ph.preheader ] ; 3 uses
  %.0129258.ptr = getelementptr inbounds nuw i8, ptr %.0140.ph, i64 %.0129258.idx
  %i.bb = zext i8 %.1136256 to i64
  %i.bc = getelementptr inbounds nuw [1024 x i8], ptr %.0142, i64 %i.bb
  %.0129258.add = add nuw i64 %.0129258.idx, 1    ; 7 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0140.ph, i64 %.0129258.add ; 10 uses
  %i.bd = load i8, ptr %.0129258.ptr, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4            ; 11 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.lr.ph
  %i.bi = lshr i32 %i.bg, 24                      ; 2 uses
  %i.bj = trunc nuw nsw i32 %i.bi to i8           ; 2 uses
  %i.bk = and i32 %i.bg, 16777215
  %i.bl = add i32 %i.bk, %.0139255                ; 2 uses
  %i.bm = icmp ult ptr %.ptr, %i.q
  br i1 %i.bm, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = getelementptr inbounds nuw [1024 x i8], ptr %.0142, i64 %i.bn
  %i.bp = load i8, ptr %.ptr, align 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4            ; 3 uses
  %i.bt = and i32 %i.bs, -2131755008
  %or.cond166 = icmp eq i32 %i.bt, -2143289344
  br i1 %or.cond166, label %bb.p, label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.bu = and i32 %i.bs, 65535
  %i.bv = add i32 %i.bu, %i.bl
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2            ; 2 uses
  %i.bz = zext i16 %i.by to i32                   ; 2 uses
  %i.ca = icmp ult i16 %i.by, -2
  br i1 %i.ca, label %bb.q, label %bb.ai

bb.q:                                             ; preds = %bb.p
  %.0129258.ptr.le = getelementptr inbounds nuw i8, ptr %.0140.ph, i64 %.0129258.idx
  %i.cb = getelementptr inbounds nuw i8, ptr %.0129258.ptr.le, i64 2
  %i.cc = lshr i32 %i.bs, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 127
  br label %.thread

bb.r:                                             ; preds = %.lr.ph
  %i.cf = zext i8 %.1136256 to i32
  store i32 %i.cf, ptr %i.as, align 4
  %i.cg = lshr i32 %i.bg, 24                      ; 2 uses
  %i.ch = trunc nuw i32 %i.cg to i8
  %i.ci = and i8 %i.ch, 127                       ; 12 uses
  %i.cj = lshr i32 %i.bg, 20
  %i.ck = and i32 %i.cj, 15                       ; 2 uses
  switch i32 %i.ck, label %bb.ac [
    i32 0, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.cl = and i32 %i.bg, 65535
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.cm = and i32 %i.bg, 65535
  %i.cn = add i32 %i.cm, %.0139255                ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2            ; 3 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = icmp ult i16 %i.cq, -2
  br i1 %i.cs, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp eq i16 %i.cq, -2
  br i1 %i.ct, label %bb.v, label %.loopexit.thread

bb.v:                                             ; preds = %bb.u
  %i.cu = tail call fastcc noundef i32 @_ZL20ucnv_MBCSGetFallbackP19UConverterMBCSTablej(ptr noundef nonnull %i.k, i32 noundef %i.cn) ; 2 uses
  %.not160 = icmp eq i32 %i.cu, 65534
  br i1 %.not160, label %.loopexit178, label %.loopexit

bb.w:                                             ; preds = %bb.r
  %i.cv = and i32 %i.bg, 65535
  %i.cw = add i32 %i.cv, %.0139255                ; 2 uses
  %i.cx = add i32 %i.cw, 1                        ; 2 uses
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2            ; 4 uses
  %i.db = zext i16 %i.da to i32                   ; 4 uses
  %i.dc = icmp ult i16 %i.da, -10240
  br i1 %i.dc, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = icmp samesign ult i16 %i.da, -8192
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = shl nuw nsw i32 %i.db, 10
  %i.df = and i32 %i.de, 1047552
  %i.dg = zext i32 %i.cx to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.df, 9216
  %i.dl = add nuw nsw i32 %i.dk, %i.dj
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.dm = and i32 %i.db, 65534
  %i.dn = icmp eq i32 %i.dm, 57344
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = zext i32 %i.cx to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = zext i16 %i.dq to i32
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.ds = icmp eq i16 %i.da, -1
  br i1 %i.ds, label %.loopexit.thread, label %.loopexit178

bb.ac:                                            ; preds = %bb.r
  %i.dt = and i32 %i.bg, 13631488
  %or.cond = icmp eq i32 %i.dt, 1048576
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
end_hunk_2
begin_hunk_3_@_ZL12getStatePropPA256_KiPai:bb.a
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = load i8, ptr %i.c, align 1
  %i.t = lshr i64 %indvars.iv, 2
  %i.u = trunc i64 %i.t to i8
  %i.v = and i8 %i.u, -8
  %i.w = or i8 %i.s, %i.v                         ; 2 uses
  store i8 %i.w, ptr %i.c, align 1
  %i.x = icmp samesign ult i64 %indvars.iv, 255
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.o
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.o ], [ 255, %bb.j ] ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv80
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = lshr i32 %i.z, 24
  %i.ab = and i32 %i.aa, 127                      ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZL12getStatePropPA256_KiPai(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ab)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %i.ag = icmp sgt i32 %i.z, -1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.ad, align 1
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %._crit_edge.loopexit.split.loop.exit99, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = and i32 %i.z, 14680064
  %i.ak = icmp samesign ult i32 %i.aj, 6291456
  br i1 %i.ak, label %._crit_edge.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, -1 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv, %indvars.iv.next81
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !60

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.n
  %i.am = trunc nuw nsw i64 %indvars.iv80 to i32
  br label %._crit_edge.loopexit

._crit_edge.loopexit.split.loop.exit99:           ; preds = %bb.m
  %i.an = trunc nuw nsw i64 %indvars.iv80 to i32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit99, %._crit_edge.loopexit.split.loop.exit
  %.0.lcssa.ph = phi i32 [ %i.an, %._crit_edge.loopexit.split.loop.exit99 ], [ %i.am, %._crit_edge.loopexit.split.loop.exit ], [ %indvars.iv82, %bb.o ]
  %.pre = load i8, ptr %i.c, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.ao = phi i8 [ %i.w, %bb.j ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 255, %bb.j ], [ %.0.lcssa.ph, %._crit_edge.loopexit ] ; 3 uses
  %i.ap = lshr i32 %.0.lcssa, 5
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = or i8 %i.ao, %i.aq
  store i8 %i.ar, ptr %i.c, align 1
  %.not73 = icmp slt i32 %.0.lcssa, %i.r
  br i1 %.not73, label %._crit_edge77, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %._crit_edge
  %i.as = zext i32 %.0.lcssa to i64
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.t
  %indvars.iv87 = phi i64 [ %indvars.iv, %.lr.ph76.preheader ], [ %indvars.iv.next88, %bb.t ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = lshr i32 %i.au, 24
  %i.aw = and i32 %i.av, 127                      ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph76
  tail call fastcc void @_ZL12getStatePropPA256_KiPai(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.aw)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph76
  %i.bb = icmp slt i32 %i.au, 0
  br i1 %i.bb, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bc = load i8, ptr %i.ay, align 1
  %i.bd = or i8 %i.bc, 64
  store i8 %i.bd, ptr %i.ay, align 1
  %i.be = and i32 %i.au, 12582912
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load i8, ptr %i.c, align 1
  %i.bh = or i8 %i.bg, 64
  store i8 %i.bh, ptr %i.c, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %.not.not = icmp samesign ult i64 %indvars.iv87, %i.as
  br i1 %.not.not, label %.lr.ph76, label %._crit_edge77, !llvm.loop !61

._crit_edge77:                                    ; preds = %bb.t, %._crit_edge, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL7enumToUP19UConverterMBCSTablePaijjPFaPKvjPiES3_P10UErrorCode(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef range(i32 -2147483648, 255) %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(none) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [1024 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = shl i32 %4, 8                            ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.j = load i8, ptr %i.i, align 1               ; 4 uses
  %i.k = sext i8 %i.j to i32
  %i.l = shl nsw i32 %i.k, 2
  %i.m = and i32 %i.l, 224                        ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = icmp sgt i8 %i.j, 63
  br i1 %i.o, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.p = and i8 %i.j, 7
  %narrow14 = add nuw nsw i8 %i.p, 1
  %i.q = zext nneg i8 %narrow14 to i32
  %i.r = shl nuw nsw i32 %i.q, 5
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.a, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.076 = phi i32 [ 1, %bb.c ], [ %i.m, %bb.a ]   ; 2 uses
  %i.s = and i8 %i.j, 7
  %narrow = add nuw nsw i8 %i.s, 1
  %i.t = zext nneg i8 %narrow to i32
  %i.u = shl nuw nsw i32 %i.t, 5                  ; 2 uses
  %i.v = icmp samesign ult i32 %.076, %i.u
  br i1 %i.v, label %.lr.ph, label %.critedge88

.lr.ph:                                           ; preds = %.thread, %bb.d
  %i.w = phi i32 [ %i.r, %.thread ], [ %i.u, %bb.d ]
  %.07615 = phi i32 [ 0, %.thread ], [ %.076, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 204 ; 2 uses
  %i.aa = zext nneg i32 %.07615 to i64
  %i.ab = zext nneg i32 %i.w to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZL20writeStage3RoundtripPKvjPi.exit
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %_ZL20writeStage3RoundtripPKvjPi.exit ] ; 6 uses
  %.0722 = phi i32 [ -1, %.lr.ph ], [ %.375, %_ZL20writeStage3RoundtripPKvjPi.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4            ; 8 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = lshr i32 %i.ad, 24                      ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ak = and i32 %i.ad, 16777215
  %i.al = add i32 %i.ak, %3
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = or i32 %i.h, %i.am
  tail call fastcc void @_ZL7enumToUP19UConverterMBCSTablePaijjPFaPKvjPiES3_P10UErrorCode(ptr noundef %0, ptr noundef %1, i32 noundef %i.af, i32 noundef %i.al, i32 noundef %i.an, ptr noundef %5)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.ao = and i64 %indvars.iv, 31
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ao
  store i32 -1, ptr %i.ap, align 4
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %6 = lshr i32 %i.ad, 20
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.q [
    i32 0, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 1, label %bb.p
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = and i32 %i.ad, 65535
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.ar = and i32 %i.ad, 65535
  %i.as = add i32 %i.ar, %3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2            ; 2 uses
  %i.aw = zext i16 %i.av to i32
  %i.ax = icmp ult i16 %i.av, -2
  %spec.store.select = select i1 %i.ax, i32 %i.aw, i32 -1
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.ay = and i32 %i.ad, 65535
  %i.az = add i32 %i.ay, %3                       ; 2 uses
  %i.ba = add nsw i32 %i.az, 1                    ; 2 uses
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2            ; 4 uses
  %i.be = zext i16 %i.bd to i32                   ; 2 uses
  %i.bf = icmp ult i16 %i.bd, -10240
  br i1 %i.bf, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp samesign ult i16 %i.bd, -9216
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = shl nuw nsw i32 %i.be, 10
  %i.bi = and i32 %i.bh, 1047552
  %i.bj = sext i32 %i.ba to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bi, 9216
  %i.bo = add nuw nsw i32 %i.bn, %i.bm
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bp = icmp eq i16 %i.bd, -8192
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = sext i32 %i.ba to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.bu = and i32 %i.ad, 1048575
  %i.bv = add nuw nsw i32 %i.bu, 65536
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.k, %bb.o, %bb.m, %bb.n, %bb.j, %bb.p, %bb.i
  %.169 = phi i32 [ %i.aq, %bb.i ], [ %spec.store.select, %bb.j ], [ -1, %bb.n ], [ %i.bv, %bb.p ], [ %i.be, %bb.k ], [ %i.bo, %bb.m ], [ %i.bt, %bb.o ], [ -1, %bb.h ] ; 2 uses
  %i.bw = and i64 %indvars.iv, 31
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bw
  store i32 %.169, ptr %i.bx, align 4
  %i.by = and i32 %.169, %.0722
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q
  %.173 = phi i32 [ %.0722, %.critedge ], [ %i.by, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bz = and i64 %indvars.iv.next, 31
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = icmp sgt i32 %.173, -1
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.s, label %_ZL20writeStage3RoundtripPKvjPi.exit

bb.s:                                             ; preds = %bb.r
  %i.cc = trunc i64 %indvars.iv to i32
  %i.cd = add i32 %i.cc, -31
  %i.ce = or i32 %i.cd, %i.h                      ; 11 uses
  %i.cf = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.cg = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.ch = load i8, ptr %i.z, align 4
  switch i8 %i.ch, label %.preheader [
    i8 8, label %bb.t
    i8 9, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.ci = icmp ult i32 %i.ce, 65536
  br i1 %i.ci, label %.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = icmp ult i32 %i.ce, 9371648
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = and i32 %i.ce, 32767
  br label %.preheader

bb.w:                                             ; preds = %bb.u
  %i.cl = and i32 %i.ce, 65407
  br label %.preheader

bb.x:                                             ; preds = %bb.s
  %i.cm = icmp ult i32 %i.ce, 16777216
  br i1 %i.cm, label %.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = icmp ult i32 %i.ce, -1895825408
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.co = and i32 %i.ce, 8388607
  br label %.preheader

bb.aa:                                            ; preds = %bb.y
  %i.cp = and i32 %i.ce, 16744447
  br label %.preheader

.preheader:                                       ; preds = %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s
  %.146.i.ph = phi i32 [ %i.ce, %bb.s ], [ %i.ce, %bb.t ], [ %i.ck, %bb.v ], [ %i.cl, %bb.w ], [ %i.ce, %bb.x ], [ %i.co, %bb.z ], [ %i.cp, %bb.aa ]
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ 0, %.preheader ] ; 2 uses
  %.146.i = phi i32 [ %i.eb, %bb.ah ], [ %.146.i.ph, %.preheader ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.cr = load i32, ptr %i.cq, align 4            ; 4 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = lshr i32 %i.cr, 10
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = zext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cx
  %i.cz = lshr i32 %i.cr, 4
  %i.da = and i32 %i.cz, 63
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.db ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = shl i32 %i.dd, 4
  %i.df = and i32 %i.de, 1048560
  %i.dg = and i32 %i.cr, 15                       ; 2 uses
  %i.dh = or disjoint i32 %i.df, %i.dg            ; 3 uses
  %i.di = load i8, ptr %i.z, align 4
  switch i8 %i.di, label %bb.af [
    i8 2, label %bb.ad
    i8 9, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.dj = mul nuw nsw i32 %i.dh, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dk ; 3 uses
  %i.dm = lshr i32 %.146.i, 16
  %i.dn = trunc i32 %i.dm to i8
  store i8 %i.dn, ptr %i.dl, align 1
  %i.do = lshr i32 %.146.i, 8
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = trunc i32 %.146.i to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 %i.dr, ptr %i.ds, align 1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dt = zext nneg i32 %i.dh to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dt
  store i32 %.146.i, ptr %i.du, align 4
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.dv = trunc i32 %.146.i to i16
  %i.dw = zext nneg i32 %i.dh to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.dw
  store i16 %i.dv, ptr %i.dx, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dy = shl nuw i32 65536, %i.dg
  %i.dz = load i32, ptr %i.dc, align 4
  %i.ea = or i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %i.dc, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %i.eb = add i32 %.146.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %_ZL20writeStage3RoundtripPKvjPi.exit, label %bb.ab, !llvm.loop !62
end_hunk_3
begin_hunk_4_@_ZL17ucnv_DBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.nl = icmp samesign ugt i8 %i.nd, -17
  %i.nm = select i1 %i.nl, i32 3, i32 2
  %i.nn = add nuw nsw i32 %i.nm, %i.nk
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.no = phi i32 [ 1, %bb.bd ], [ %i.nn, %bb.bf ], [ 0, %bb.be ]
  %.10376 = getelementptr inbounds nuw i8, ptr %.9.ph, i64 1 ; 4 uses
  %i.np = icmp ult ptr %.10376, %i.na
  br i1 %i.np, label %.lr.ph381.preheader, label %._crit_edge382

.lr.ph381.preheader:                              ; preds = %bb.bg
  %i.nq = xor i64 %.9.ph651, -1
  %i.nr = add i64 %i.nq, %i.nb                    ; 3 uses
  %i.ns = add i64 %i.nb, -2
  %xtraiter652 = and i64 %i.nr, 1
  %i.nt = icmp eq i64 %i.ns, %.9.ph651
  br i1 %i.nt, label %.lr.ph381.epil.preheader, label %.lr.ph381.preheader.new

.lr.ph381.preheader.new:                          ; preds = %.lr.ph381.preheader
  %unroll_iter = and i64 %i.nr, -2
  br label %.lr.ph381

.lr.ph381:                                        ; preds = %.lr.ph381, %.lr.ph381.preheader.new
  %.10379 = phi ptr [ %.10376, %.lr.ph381.preheader.new ], [ %.10.1, %.lr.ph381 ] ; 3 uses
  %.3240378 = phi i8 [ 1, %.lr.ph381.preheader.new ], [ %i.oa, %.lr.ph381 ] ; 3 uses
  %.5246377 = phi i32 [ %i.nf, %.lr.ph381.preheader.new ], [ %i.oh, %.lr.ph381 ]
  %niter = phi i64 [ 0, %.lr.ph381.preheader.new ], [ %niter.next.1, %.lr.ph381 ]
  %i.nu = load i8, ptr %.10379, align 1           ; 2 uses
  %i.nv = add i8 %.3240378, 1
  %i.nw = sext i8 %.3240378 to i64
  %i.nx = getelementptr inbounds i8, ptr %i.ne, i64 %i.nw
  store i8 %i.nu, ptr %i.nx, align 1
  %i.ny = zext i8 %i.nu to i32
  %.10 = getelementptr inbounds nuw i8, ptr %.10379, i64 1
  %i.nz = load i8, ptr %.10, align 1              ; 2 uses
  %i.oa = add i8 %.3240378, 2                     ; 3 uses
  %i.ob = sext i8 %i.nv to i64
  %i.oc = getelementptr inbounds i8, ptr %i.ne, i64 %i.ob
  store i8 %i.nz, ptr %i.oc, align 1
  %i.od = shl i32 %.5246377, 12
  %i.oe = shl nuw nsw i32 %i.ny, 6
  %i.of = add i32 %i.od, %i.oe
  %i.og = zext i8 %i.nz to i32
  %i.oh = add nsw i32 %i.of, %i.og                ; 3 uses
  %.10.1 = getelementptr inbounds nuw i8, ptr %.10379, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge382.loopexit.unr-lcssa, label %.lr.ph381, !llvm.loop !86

._crit_edge382.loopexit.unr-lcssa:                ; preds = %.lr.ph381
  %lcmp.mod653.not = icmp eq i64 %xtraiter652, 0
  br i1 %lcmp.mod653.not, label %._crit_edge382, label %.lr.ph381.epil.preheader

.lr.ph381.epil.preheader:                         ; preds = %._crit_edge382.loopexit.unr-lcssa, %.lr.ph381.preheader
  %.10379.epil.init = phi ptr [ %.10376, %.lr.ph381.preheader ], [ %.10.1, %._crit_edge382.loopexit.unr-lcssa ] ; 2 uses
  %.3240378.epil.init = phi i8 [ 1, %.lr.ph381.preheader ], [ %i.oa, %._crit_edge382.loopexit.unr-lcssa ] ; 2 uses
  %.5246377.epil.init = phi i32 [ %i.nf, %.lr.ph381.preheader ], [ %i.oh, %._crit_edge382.loopexit.unr-lcssa ]
  %lcmp.mod657 = trunc i64 %i.nr to i1
  call void @llvm.assume(i1 %lcmp.mod657)
  %i.oi = load i8, ptr %.10379.epil.init, align 1 ; 2 uses
  %i.oj = add i8 %.3240378.epil.init, 1
  %i.ok = sext i8 %.3240378.epil.init to i64
  %i.ol = getelementptr inbounds i8, ptr %i.ne, i64 %i.ok
  store i8 %i.oi, ptr %i.ol, align 1
  %i.om = shl i32 %.5246377.epil.init, 6
  %i.on = zext i8 %i.oi to i32
  %i.oo = add nsw i32 %i.om, %i.on
  %.10.epil = getelementptr inbounds nuw i8, ptr %.10379.epil.init, i64 1
  br label %._crit_edge382

._crit_edge382:                                   ; preds = %.lr.ph381.epil.preheader, %._crit_edge382.loopexit.unr-lcssa, %bb.bg
  %.5246.lcssa = phi i32 [ %i.nf, %bb.bg ], [ %i.oh, %._crit_edge382.loopexit.unr-lcssa ], [ %i.oo, %.lr.ph381.epil.preheader ]
  %.3240.lcssa = phi i8 [ 1, %bb.bg ], [ %i.oa, %._crit_edge382.loopexit.unr-lcssa ], [ %i.oj, %.lr.ph381.epil.preheader ]
  %.10.lcssa = phi ptr [ %.10376, %bb.bg ], [ %.10.1, %._crit_edge382.loopexit.unr-lcssa ], [ %.10.epil, %.lr.ph381.epil.preheader ]
  %i.op = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %.5246.lcssa, ptr %i.op, align 8
  store i8 %.3240.lcssa, ptr %i.ah, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.no, ptr %i.oq, align 4
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.at, %bb.ba, %._crit_edge382, %bb.bc, %bb.bb, %.loopexit
  %.11 = phi ptr [ %.10.lcssa, %._crit_edge382 ], [ %.9.ph, %bb.bc ], [ %.9.ph, %bb.bb ], [ %.9.ph, %.loopexit ], [ %.0215373, %bb.ba ], [ %.7, %bb.at ]
  store ptr %.11, ptr %i.h, align 8
  %i.or = load ptr, ptr %i.a, align 8
  store ptr %i.or, ptr %i.l, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.thread, %._crit_edge370, %._crit_edge364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare void @umtx_lock_78(ptr noundef) local_unnamed_addr #2

declare void @umtx_unlock_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

declare void @ucnv_cbFromUWriteBytes_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL18hasValidTrailBytesPA256_Kih(ptr noundef readonly captures(none) %0, i8 noundef zeroext range(i8 0, -128) %1) unnamed_addr #11 {
bb.a:
  %i.a = zext nneg i8 %1 to i64
  %i.b = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 644
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = and i32 %i.d, 15728640
  %.not = icmp eq i32 %i.f, 7340032
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  %i.j = and i32 %i.h, 15728640
  %.not26 = icmp eq i32 %i.j, 7340032
  %or.cond29 = or i1 %i.i, %.not26
  br i1 %or.cond29, label %.preheader31, label %.loopexit

.preheader31.1:                                   ; preds = %.preheader31
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = and i32 %i.m, 15728640
  %.not28.1 = icmp eq i32 %i.o, 7340032
  %or.cond30.1 = or i1 %i.n, %.not28.1
  br i1 %or.cond30.1, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader31.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.preheader, label %.preheader31, !llvm.loop !87

.preheader31:                                     ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = and i32 %i.q, 15728640
  %.not28 = icmp eq i32 %i.s, 7340032
  %or.cond30 = or i1 %i.r, %.not28
  br i1 %or.cond30, label %.preheader31.1, label %.loopexit

.preheader:                                       ; preds = %bb.c, %bb.e
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv37
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.w = lshr i32 %i.u, 24
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = tail call fastcc noundef signext i8 @_ZL18hasValidTrailBytesPA256_Kih(ptr noundef nonnull %0, i8 noundef zeroext %i.x)
  %.not27 = icmp eq i8 %i.y, 0
  br i1 %.not27, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.d
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 256
  br i1 %exitcond40.not, label %.loopexit, label %.preheader, !llvm.loop !88

.loopexit:                                        ; preds = %.preheader31, %.preheader31.1, %bb.e, %bb.d, %bb.b, %bb.a
  %.021 = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %.preheader31.1 ], [ 1, %.preheader31 ]
  ret i8 %.021
}

declare signext i8 @ucnv_extInitialMatchToU_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @ucnv_toUWriteCodePoint_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @ucnv_extInitialMatchFromU_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @ucnv_fromUWriteBytes_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6, !39}
!39 = !{!"llvm.loop.peeled.count", i32 1}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6, !39}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6, !44, !45}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !6, !44, !45}
!58 = distinct !{!58, !6, !44}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6, !44, !45}
!67 = !{!"branch_weights", i32 4, i32 28}
!68 = distinct !{!68, !6, !44, !45}
!69 = distinct !{!69, !21}
!70 = distinct !{!70, !6, !44}
!71 = distinct !{!71, !6, !44, !45}
!72 = distinct !{!72, !6, !44, !45}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !6, !44}
!75 = distinct !{!75, !6}
!76 = distinct !{!76, !6}
!77 = distinct !{!77, !6}
!78 = distinct !{!78, !6, !44, !45}
!79 = distinct !{!79, !6, !44, !45}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !6, !44}
!82 = distinct !{!82, !6, !44, !45}
!83 = distinct !{!83, !6, !44, !45}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !6, !44}
!86 = distinct !{!86, !6}
!87 = distinct !{!87, !6}
!88 = distinct !{!88, !6}
end_hunk_4
