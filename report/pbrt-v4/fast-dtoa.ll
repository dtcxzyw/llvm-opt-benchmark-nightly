Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/fast-dtoa?download=true
inline.NumInlined: 153
inline.NumDeleted: 41
begin_hunk_0_@_ZN17double_conversion8FastDtoaEdNS_12FastDtoaModeEiNS_6VectorIcEEPiS3_:bb.a

bb.t:                                             ; preds = %bb.a
  %i.hx = bitcast double %0 to i64                ; 4 uses
  %i.hy = and i64 %i.hx, 9218868437227405312
  %i.hz = icmp eq i64 %i.hy, 0
  %i.ia = or i64 %i.hx, 4503599627370496
  %i.ib = lshr i64 %i.hx, 52
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = and i32 %i.ic, 2047
  %i.ie = add nsw i32 %i.id, -1075
  br i1 %i.hz, label %.lr.ph.i.i25, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14

.lr.ph.i.i25:                                     ; preds = %bb.t, %.lr.ph.i.i25
  %.010.i.i26 = phi i32 [ %i.ig, %.lr.ph.i.i25 ], [ -1074, %bb.t ]
  %.079.i.i27 = phi i64 [ %i.if, %.lr.ph.i.i25 ], [ %i.hx, %bb.t ] ; 2 uses
  %i.if = shl i64 %.079.i.i27, 1                  ; 2 uses
  %i.ig = add nsw i32 %.010.i.i26, -1             ; 2 uses
  %i.ih = and i64 %.079.i.i27, 2251799813685248
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.i.i25, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, !llvm.loop !9

_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14: ; preds = %.lr.ph.i.i25, %bb.t
  %.07.lcssa.i.i15 = phi i64 [ %i.ia, %bb.t ], [ %i.if, %.lr.ph.i.i25 ]
  %.0.lcssa.i.i16 = phi i32 [ %i.ie, %bb.t ], [ %i.ig, %.lr.ph.i.i25 ] ; 3 uses
  %i.ij = shl i64 %.07.lcssa.i.i15, 11            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store i64 0, ptr %7, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.ik, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.il = sub nsw i32 -113, %.0.lcssa.i.i16
  %i.im = sub nsw i32 -85, %.0.lcssa.i.i16
  call void @_ZN17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS_5DiyFpEPi(i32 noundef %i.il, i32 noundef %i.im, ptr noundef nonnull %7, ptr noundef nonnull %i.a)
  %i.in = lshr i64 %i.ij, 32                      ; 2 uses
  %i.io = and i64 %i.ij, 4294965248               ; 2 uses
  %i.ip = load i64, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.iq = lshr i64 %i.ip, 32                      ; 2 uses
  %i.ir = and i64 %i.ip, 4294967295               ; 2 uses
  %i.is = mul nuw i64 %i.iq, %i.in
  %i.it = mul nuw i64 %i.iq, %i.io                ; 2 uses
  %i.iu = mul nuw i64 %i.ir, %i.in                ; 2 uses
  %i.iv = mul nuw i64 %i.ir, %i.io
  %i.iw = lshr i64 %i.iv, 32
  %i.ix = and i64 %i.iu, 4294967295
  %i.iy = and i64 %i.it, 4294965248
  %i.iz = add nuw nsw i64 %i.ix, 2147483648
  %i.ja = add nuw nsw i64 %i.iz, %i.iw
  %i.jb = add nuw nsw i64 %i.ja, %i.iy
  %i.jc = load i32, ptr %i.ik, align 8, !tbaa !16
  %i.jd = add i32 %.0.lcssa.i.i16, 53
  %i.je = add i32 %i.jd, %i.jc                    ; 2 uses
  %i.jf = lshr i64 %i.iu, 32
  %i.jg = add nuw i64 %i.jf, %i.is
  %i.jh = lshr i64 %i.it, 32
  %i.ji = add nuw i64 %i.jg, %i.jh
  %i.jj = lshr i64 %i.jb, 32
  %i.jk = add nuw i64 %i.ji, %i.jj                ; 2 uses
  %i.jl = sub nsw i32 0, %i.je
  %i.jm = zext nneg i32 %i.jl to i64              ; 5 uses
  %i.jn = shl nuw i64 1, %i.jm                    ; 6 uses
  %i.jo = lshr i64 %i.jk, %i.jm
  %i.jp = trunc i64 %i.jo to i32                  ; 3 uses
  %i.jq = add i64 %i.jn, -1                       ; 2 uses
  %i.jr = and i64 %i.jk, %i.jq                    ; 3 uses
  %i.js = mul i32 %i.je, 1233
  %i.jt = add i32 %i.js, 80145
  %i.ju = ashr i32 %i.jt, 12                      ; 2 uses
  %i.jv = add nsw i32 %i.ju, 1                    ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !17
  %i.jz = icmp ugt i32 %i.jy, %i.jp
  %spec.select.i.i.i17 = select i1 %i.jz, i32 %i.ju, i32 %i.jv ; 4 uses
  %i.ka = sext i32 %spec.select.i.i.i17 to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !17 ; 2 uses
  store i32 0, ptr %5, align 4, !tbaa !17
  %i.kd = icmp sgt i32 %spec.select.i.i.i17, 0
  br i1 %i.kd, label %.lr.ph.i21.i, label %._crit_edge.i.i

.lr.ph.i21.i:                                     ; preds = %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, %bb.u
  %i.ke = phi i32 [ %i.kl, %bb.u ], [ 0, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.4.i = phi i32 [ %i.ko, %bb.u ], [ %spec.select.i.i.i17, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.04094.i.i = phi i32 [ %i.km, %bb.u ], [ %2, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.04293.i.i = phi i32 [ %i.kn, %bb.u ], [ %i.jp, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.07792.i.i = phi i32 [ %i.kq, %bb.u ], [ %i.kc, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 4 uses
  %i.kf = udiv i32 %.04293.i.i, %.07792.i.i
  %i.kg = trunc i32 %i.kf to i8
  %i.kh = add i8 %i.kg, 48
  %i.ki = sext i32 %i.ke to i64
  %i.kj = getelementptr inbounds i8, ptr %3, i64 %i.ki
  store i8 %i.kh, ptr %i.kj, align 1, !tbaa !19
  %i.kk = load i32, ptr %5, align 4, !tbaa !17
  %i.kl = add nsw i32 %i.kk, 1                    ; 4 uses
  store i32 %i.kl, ptr %5, align 4, !tbaa !17
  %i.km = add nsw i32 %.04094.i.i, -1             ; 3 uses
  %i.kn = urem i32 %.04293.i.i, %.07792.i.i       ; 3 uses
  %i.ko = add nsw i32 %.4.i, -1                   ; 3 uses
  %i.kp = icmp eq i32 %i.km, 0
  br i1 %i.kp, label %.thread82.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i21.i
  %i.kq = udiv i32 %.07792.i.i, 10                ; 2 uses
  %i.kr = icmp samesign ugt i32 %.4.i, 1
  br i1 %i.kr, label %.lr.ph.i21.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.u, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14
  %.pr.i = phi i32 [ 0, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kl, %bb.u ] ; 2 uses
  %.0.i18 = phi i32 [ %spec.select.i.i.i17, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.ko, %bb.u ] ; 2 uses
  %.077.lcssa.i.i = phi i32 [ %i.kc, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kq, %bb.u ]
  %.042.lcssa.i.i = phi i32 [ %i.jp, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kn, %bb.u ]
  %.040.lcssa.i.i = phi i32 [ %2, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.km, %bb.u ] ; 3 uses
  %i.ks = icmp eq i32 %.040.lcssa.i.i, 0
  br i1 %i.ks, label %.thread82.i.i, label %.preheader.i.i19

.preheader.i.i19:                                 ; preds = %._crit_edge.i.i
  %i.kt = icmp sgt i32 %.040.lcssa.i.i, 0
  %i.ku = icmp ugt i64 %i.jr, 1
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %i.kv, label %.lr.ph100.i.i, label %.thread

.thread82.i.i:                                    ; preds = %.lr.ph.i21.i, %._crit_edge.i.i
  %i.kw = phi i32 [ %.pr.i, %._crit_edge.i.i ], [ %i.kl, %.lr.ph.i21.i ] ; 2 uses
  %.3.i = phi i32 [ %.0.i18, %._crit_edge.i.i ], [ %i.ko, %.lr.ph.i21.i ] ; 3 uses
  %.07790.i.i = phi i32 [ %.077.lcssa.i.i, %._crit_edge.i.i ], [ %.07792.i.i, %.lr.ph.i21.i ]
  %.14385.i.i = phi i32 [ %.042.lcssa.i.i, %._crit_edge.i.i ], [ %i.kn, %.lr.ph.i21.i ]
  %i.kx = zext i32 %.14385.i.i to i64
  %i.ky = shl i64 %i.kx, %i.jm
  %i.kz = add i64 %i.ky, %i.jr                    ; 5 uses
  %i.la = zext i32 %.07790.i.i to i64
  %i.lb = shl i64 %i.la, %i.jm                    ; 4 uses
  %or.cond.i.i.i23 = icmp ugt i64 %i.lb, 2
  br i1 %or.cond.i.i.i23, label %bb.v, label %.thread

bb.v:                                             ; preds = %.thread82.i.i
  %i.lc = sub i64 %i.lb, %i.kz
  %i.ld = icmp ugt i64 %i.lc, %i.kz
  br i1 %i.ld, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.le = shl i64 %i.kz, 1
  %i.lf = sub i64 %i.lb, %i.le
  %.not31.i.i.i = icmp ult i64 %i.lf, 2
  br i1 %.not31.i.i.i, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.lg = icmp ugt i64 %i.kz, 1
  br i1 %i.lg, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.lh = add i64 %i.kz, -1                       ; 2 uses
  %i.li = sub i64 %i.lb, %i.lh
  %.not32.i.i.i = icmp ugt i64 %i.li, %i.lh
  br i1 %.not32.i.i.i, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lj = add nsw i32 %i.kw, -1                   ; 2 uses
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %3, i64 %i.lk ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !19
  %i.ln = add i8 %i.lm, 1
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !19
  %i.lo = icmp sgt i32 %i.kw, 1
  br i1 %i.lo, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.z
  %.phi.trans.insert.i.i.i = zext nneg i32 %i.lj to i64 ; 2 uses
  %.phi.trans.insert41.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert41.i.i.i, align 1, !tbaa !19
  br label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.aa, %.lr.ph.preheader.i.i.i
  %indvars.iv116.i.i = phi i64 [ %indvars.iv.next117.i.i, %bb.aa ], [ %.phi.trans.insert.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.lp = phi i8 [ %i.lt, %bb.aa ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ]
  %.not33.i.i.i = icmp eq i8 %i.lp, 58
  br i1 %.not33.i.i.i, label %bb.aa, label %._crit_edge.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i24
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv116.i.i
  store i8 48, ptr %i.lq, align 1, !tbaa !19
  %indvars.iv.next117.i.i = add nsw i64 %indvars.iv116.i.i, -1 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next117.i.i ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !19
  %i.lt = add i8 %i.ls, 1                         ; 2 uses
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !19
  %i.lu = icmp sgt i64 %indvars.iv116.i.i, 1
  br i1 %i.lu, label %.lr.ph.i.i.i24, label %._crit_edge.i.i.i, !llvm.loop !22

._crit_edge.i.i.i:                                ; preds = %bb.aa, %.lr.ph.i.i.i24, %bb.z
  %i.lv = load i8, ptr %3, align 1, !tbaa !19
  %i.lw = icmp eq i8 %i.lv, 58
  br i1 %i.lw, label %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread35

.lr.ph100.i.i:                                    ; preds = %.preheader.i.i19, %.lr.ph100.i.i
  %i.lx = phi i32 [ %i.mg, %.lr.ph100.i.i ], [ %.pr.i, %.preheader.i.i19 ]
  %.1.i21 = phi i32 [ %i.mj, %.lr.ph100.i.i ], [ %.0.i18, %.preheader.i.i19 ]
  %.299.i.i = phi i32 [ %i.mh, %.lr.ph100.i.i ], [ %.040.lcssa.i.i, %.preheader.i.i19 ] ; 2 uses
  %.04198.i.i = phi i64 [ %i.lz, %.lr.ph100.i.i ], [ 1, %.preheader.i.i19 ] ; 2 uses
  %.04497.i.i = phi i64 [ %i.mi, %.lr.ph100.i.i ], [ %i.jr, %.preheader.i.i19 ]
  %i.ly = mul i64 %.04497.i.i, 10                 ; 2 uses
  %i.lz = mul i64 %.04198.i.i, 10                 ; 6 uses
  %i.ma = lshr i64 %i.ly, %i.jm
  %i.mb = trunc i64 %i.ma to i8
  %i.mc = add i8 %i.mb, 48
  %i.md = sext i32 %i.lx to i64
  %i.me = getelementptr inbounds i8, ptr %3, i64 %i.md
  store i8 %i.mc, ptr %i.me, align 1, !tbaa !19
  %i.mf = load i32, ptr %5, align 4, !tbaa !17    ; 4 uses
  %i.mg = add nsw i32 %i.mf, 1                    ; 2 uses
  store i32 %i.mg, ptr %5, align 4, !tbaa !17
  %i.mh = add nsw i32 %.299.i.i, -1               ; 2 uses
  %i.mi = and i64 %i.ly, %i.jq                    ; 6 uses
  %i.mj = add nsw i32 %.1.i21, -1                 ; 4 uses
  %i.mk = icmp samesign ugt i32 %.299.i.i, 1
  %i.ml = icmp ugt i64 %i.mi, %i.lz               ; 3 uses
  %i.mm = select i1 %i.mk, i1 %i.ml, i1 false
  br i1 %i.mm, label %.lr.ph100.i.i, label %._crit_edge101.i.i, !llvm.loop !23

._crit_edge101.i.i:                               ; preds = %.lr.ph100.i.i
  %i.mn = icmp eq i32 %i.mh, 0
  br i1 %i.mn, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %._crit_edge101.i.i
  %.not.i46.i.i = icmp ult i64 %i.lz, %i.jn
  %i.mo = sub nuw i64 %i.jn, %i.lz
  %.not30.i47.i.i = icmp ugt i64 %i.mo, %i.lz
  %or.cond.i48.i.i = select i1 %.not.i46.i.i, i1 %.not30.i47.i.i, i1 false
  br i1 %or.cond.i48.i.i, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.mp = sub i64 %i.jn, %i.mi
  %i.mq = icmp ugt i64 %i.mp, %i.mi
  br i1 %i.mq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.mr = shl nuw i64 %i.mi, 1
  %i.ms = sub i64 %i.jn, %i.mr
  %i.mt = mul i64 %.04198.i.i, 20
  %.not31.i59.i.i = icmp ult i64 %i.ms, %i.mt     ; 2 uses
  %brmerge.i.i.not = select i1 %.not31.i59.i.i, i1 %i.ml, i1 false
  br i1 %brmerge.i.i.not, label %bb.af, label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.ml, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.mu = sub nuw nsw i64 %i.mi, %i.lz            ; 2 uses
  %i.mv = sub i64 %i.jn, %i.mu
  %.not32.i50.i.i = icmp ugt i64 %i.mv, %i.mu
  br i1 %.not32.i50.i.i, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mw = sext i32 %i.mf to i64
  %i.mx = getelementptr inbounds i8, ptr %3, i64 %i.mw ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !19
  %i.mz = add i8 %i.my, 1                         ; 2 uses
  store i8 %i.mz, ptr %i.mx, align 1, !tbaa !19
  %i.na = icmp sgt i32 %i.mf, 0
  br i1 %i.na, label %.lr.ph.preheader.i52.i.i, label %._crit_edge.i51.i.i

.lr.ph.preheader.i52.i.i:                         ; preds = %bb.ag
  %.phi.trans.insert.i53.i.i = zext nneg i32 %i.mf to i64
  br label %.lr.ph.i56.i.i

.lr.ph.i56.i.i:                                   ; preds = %bb.ah, %.lr.ph.preheader.i52.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ah ], [ %.phi.trans.insert.i53.i.i, %.lr.ph.preheader.i52.i.i ] ; 3 uses
  %i.nb = phi i8 [ %i.nf, %bb.ah ], [ %i.mz, %.lr.ph.preheader.i52.i.i ]
  %.not33.i58.i.i = icmp eq i8 %i.nb, 58
  br i1 %.not33.i58.i.i, label %bb.ah, label %._crit_edge.i51.i.i

bb.ah:                                            ; preds = %.lr.ph.i56.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.i
  store i8 48, ptr %i.nc, align 1, !tbaa !19
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !19
  %i.nf = add i8 %i.ne, 1                         ; 2 uses
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !19
  %i.ng = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %i.ng, label %.lr.ph.i56.i.i, label %._crit_edge.i51.i.i, !llvm.loop !22

._crit_edge.i51.i.i:                              ; preds = %bb.ah, %.lr.ph.i56.i.i, %bb.ag
  %i.nh = load i8, ptr %3, align 1, !tbaa !19
  %i.ni = icmp eq i8 %i.nh, 58
  br i1 %i.ni, label %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread35

_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i: ; preds = %._crit_edge.i51.i.i, %._crit_edge.i.i.i
  %.2.i22 = phi i32 [ %.3.i, %._crit_edge.i.i.i ], [ %i.mj, %._crit_edge.i51.i.i ]
  store i8 49, ptr %3, align 1, !tbaa !19
  %i.nj = add nsw i32 %.2.i22, 1
  br label %.thread35

bb.ai:                                            ; preds = %bb.a
  tail call void @abort() #6
  unreachable

.thread:                                          ; preds = %bb.y, %bb.x, %.thread82.i.i, %bb.af, %bb.ae, %bb.ab, %._crit_edge101.i.i, %.preheader.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.al

.thread35:                                        ; preds = %._crit_edge.i51.i.i, %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i, %._crit_edge.i.i.i, %bb.w
  %.5.i.ph = phi i32 [ %.3.i, %bb.w ], [ %.3.i, %._crit_edge.i.i.i ], [ %i.nj, %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i ], [ %i.mj, %._crit_edge.i51.i.i ]
  %i.nk = load i32, ptr %i.a, align 4, !tbaa !17
  %i.nl = sub nsw i32 %.5.i.ph, %i.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  %i.nm = load i32, ptr %i.a, align 4, !tbaa !17
  %i.nn = sub nsw i32 %i.mj, %i.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br i1 %.not31.i59.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread35, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit, %bb.aj
  %.029 = phi i32 [ %i.hw, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit ], [ %i.nn, %bb.aj ], [ %i.nl, %.thread35 ]
  %i.no = load i32, ptr %5, align 4, !tbaa !17
  %i.np = add nsw i32 %i.no, %.029
  store i32 %i.np, ptr %6, align 4, !tbaa !17
  %i.nq = load i32, ptr %5, align 4, !tbaa !17
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds i8, ptr %3, i64 %i.nr
  store i8 0, ptr %i.ns, align 1, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %.thread, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit, %bb.ak, %bb.aj
  %.0.in30 = phi i1 [ false, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit ], [ true, %bb.ak ], [ false, %bb.aj ], [ false, %.thread ]
  ret i1 %.0.in30
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS_5DiyFpEPi(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN17double_conversion5DiyFpE", !15, i64 0, !6, i64 8}
!15 = !{!"long", !7, i64 0}
!16 = !{!14, !6, i64 8}
!17 = !{!6, !6, i64 0}
!18 = distinct !{!18, !10}
!19 = !{!7, !7, i64 0}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
end_hunk_0
