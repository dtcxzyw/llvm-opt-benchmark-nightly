inline.NumInlined: 153
inline.NumDeleted: 41
begin_hunk_0_@_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a

bb.r:                                             ; preds = %bb.q
  %i.ho = sub i64 %i.gx, %.040.lcssa.i74.i.i
  %i.hp = sub nuw i64 %i.hm, %i.gx
  %i.hq = icmp ugt i64 %i.ho, %i.hp
  br i1 %i.hq, label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i73.i.i
  %i.hr = mul i64 %.047.i.i, 20
  %.not48.i77.i.i = icmp ule i64 %i.hr, %.040.lcssa.i74.i.i
  %.neg.i.i = mul i64 %.047.i.i, -40
  %i.hs = add i64 %.neg.i.i, %i.gk
  %i.ht = icmp ule i64 %.040.lcssa.i74.i.i, %i.hs
  %i.hu = and i1 %.not48.i77.i.i, %i.ht
  br label %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i

_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i: ; preds = %bb.s, %bb.r, %bb.q, %.preheader.i.i
  %.3.i.i = phi i1 [ %.2.i.i, %.preheader.i.i ], [ %i.hu, %bb.s ], [ false, %bb.r ], [ false, %bb.q ] ; 2 uses
  br i1 %.not.i.i, label %_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit, label %.preheader.i.i, !llvm.loop !18

_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit: ; preds = %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i
  %.2.i = phi i32 [ %i.gu, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i ], [ %i.fg, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i ]
  %.4.i.i = phi i1 [ %.3.i.i, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit79.i.i ], [ %.1.i.i, %_ZN14arrow_vendored17double_conversionL9RoundWeedENS0_6VectorIcEEimmmmm.exit.i.i ]
  %i.hv = load i32, ptr %i.b, align 4, !tbaa !3
  %i.hw = sub nsw i32 %.2.i, %i.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br i1 %.4.i.i, label %bb.ak, label %bb.al

bb.t:                                             ; preds = %bb.a
  %i.hx = bitcast double %0 to i64                ; 4 uses
  %i.hy = and i64 %i.hx, 9218868437227405312
  %i.hz = icmp eq i64 %i.hy, 0
  %i.ia = or i64 %i.hx, 4503599627370496
  %i.ib = lshr i64 %i.hx, 52
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = and i32 %i.ic, 2047
  %i.ie = add nsw i32 %i.id, -1075
  br i1 %i.hz, label %.lr.ph.i.i25, label %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14

.lr.ph.i.i25:                                     ; preds = %bb.t, %.lr.ph.i.i25
  %.010.i.i26 = phi i32 [ %i.ig, %.lr.ph.i.i25 ], [ -1074, %bb.t ]
  %.079.i.i27 = phi i64 [ %i.if, %.lr.ph.i.i25 ], [ %i.hx, %bb.t ] ; 2 uses
  %i.if = shl i64 %.079.i.i27, 1                  ; 2 uses
  %i.ig = add nsw i32 %.010.i.i26, -1             ; 2 uses
  %i.ih = and i64 %.079.i.i27, 2251799813685248
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.i.i25, label %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, !llvm.loop !7

_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14: ; preds = %.lr.ph.i.i25, %bb.t
  %.07.lcssa.i.i15 = phi i64 [ %i.ia, %bb.t ], [ %i.if, %.lr.ph.i.i25 ]
  %.0.lcssa.i.i16 = phi i32 [ %i.ie, %bb.t ], [ %i.ig, %.lr.ph.i.i25 ] ; 3 uses
  %i.ij = shl i64 %.07.lcssa.i.i15, 11            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store i64 0, ptr %7, align 8, !tbaa !11
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.ik, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.il = sub nsw i32 -113, %.0.lcssa.i.i16
  %i.im = sub nsw i32 -85, %.0.lcssa.i.i16
  call void @_ZN14arrow_vendored17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef %i.il, i32 noundef %i.im, ptr noundef nonnull %7, ptr noundef nonnull %i.a)
  %i.in = lshr i64 %i.ij, 32                      ; 2 uses
  %i.io = and i64 %i.ij, 4294965248               ; 2 uses
  %i.ip = load i64, ptr %7, align 8, !tbaa !11    ; 2 uses
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
  %i.jc = load i32, ptr %i.ik, align 8, !tbaa !14
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
  %i.jx = getelementptr inbounds [4 x i8], ptr @_ZN14arrow_vendored17double_conversionL17kSmallPowersOfTenE, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !3
  %i.jz = icmp ugt i32 %i.jy, %i.jp
  %spec.select.i.i.i17 = select i1 %i.jz, i32 %i.ju, i32 %i.jv ; 4 uses
  %i.ka = sext i32 %spec.select.i.i.i17 to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr @_ZN14arrow_vendored17double_conversionL17kSmallPowersOfTenE, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3  ; 2 uses
  store i32 0, ptr %5, align 4, !tbaa !3
  %i.kd = icmp sgt i32 %spec.select.i.i.i17, 0
  br i1 %i.kd, label %.lr.ph.i21.i, label %._crit_edge.i.i

.lr.ph.i21.i:                                     ; preds = %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, %bb.u
  %i.ke = phi i32 [ %i.kl, %bb.u ], [ 0, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.4.i = phi i32 [ %i.ko, %bb.u ], [ %spec.select.i.i.i17, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.04094.i.i = phi i32 [ %i.km, %bb.u ], [ %2, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.04293.i.i = phi i32 [ %i.kn, %bb.u ], [ %i.jp, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.07792.i.i = phi i32 [ %i.kq, %bb.u ], [ %i.kc, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 4 uses
  %i.kf = udiv i32 %.04293.i.i, %.07792.i.i
  %i.kg = trunc i32 %i.kf to i8
  %i.kh = add i8 %i.kg, 48
  %i.ki = sext i32 %i.ke to i64
  %i.kj = getelementptr inbounds i8, ptr %3, i64 %i.ki
  store i8 %i.kh, ptr %i.kj, align 1, !tbaa !16
  %i.kk = load i32, ptr %5, align 4, !tbaa !3
  %i.kl = add nsw i32 %i.kk, 1                    ; 4 uses
  store i32 %i.kl, ptr %5, align 4, !tbaa !3
  %i.km = add nsw i32 %.04094.i.i, -1             ; 3 uses
  %i.kn = urem i32 %.04293.i.i, %.07792.i.i       ; 3 uses
  %i.ko = add nsw i32 %.4.i, -1                   ; 3 uses
  %i.kp = icmp eq i32 %i.km, 0
  br i1 %i.kp, label %.thread82.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i21.i
  %i.kq = udiv i32 %.07792.i.i, 10                ; 2 uses
  %i.kr = icmp samesign ugt i32 %.4.i, 1
  br i1 %i.kr, label %.lr.ph.i21.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.u, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14
  %.pr.i = phi i32 [ 0, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kl, %bb.u ] ; 2 uses
  %.0.i18 = phi i32 [ %spec.select.i.i.i17, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.ko, %bb.u ] ; 2 uses
  %.077.lcssa.i.i = phi i32 [ %i.kc, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kq, %bb.u ]
  %.042.lcssa.i.i = phi i32 [ %i.jp, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kn, %bb.u ]
  %.040.lcssa.i.i = phi i32 [ %2, %_ZNK14arrow_vendored17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.km, %bb.u ] ; 3 uses
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
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !16
  %i.ln = add i8 %i.lm, 1
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !16
  %i.lo = icmp sgt i32 %i.kw, 1
  br i1 %i.lo, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.z
  %.phi.trans.insert.i.i.i.a = zext nneg i32 %i.lj to i64 ; 2 uses
  %.phi.trans.insert41.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.phi.trans.insert.i.i.i.a
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert41.i.i.i, align 1, !tbaa !16
  br label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.aa, %.lr.ph.preheader.i.i.i
  %9 = phi i8 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ls, %bb.aa ]
  %indvars.iv.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.a, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next117.i.i, %bb.aa ] ; 3 uses
  %.not33.i.i.i = icmp eq i8 %9, 58
  br i1 %.not33.i.i.i, label %bb.aa, label %._crit_edge.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i24
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.i.i
  store i8 48, ptr %i.lp, align 1, !tbaa !16
  %indvars.iv.next117.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next117.i.i ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !16
  %i.ls = add i8 %i.lr, 1                         ; 2 uses
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !16
  %i.lt = icmp sgt i64 %indvars.iv.i.i.i, 1
  br i1 %i.lt, label %.lr.ph.i.i.i24, label %._crit_edge.i.i.i, !llvm.loop !19

._crit_edge.i.i.i:                                ; preds = %bb.aa, %.lr.ph.i.i.i24, %bb.z
  %i.lu = load i8, ptr %3, align 1, !tbaa !16
  %i.lv = icmp eq i8 %i.lu, 58
  br i1 %i.lv, label %_ZN14arrow_vendored17double_conversionL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread35

.lr.ph100.i.i:                                    ; preds = %.preheader.i.i19, %.lr.ph100.i.i
  %i.lw = phi i32 [ %i.mf, %.lr.ph100.i.i ], [ %.pr.i, %.preheader.i.i19 ]
  %.1.i21 = phi i32 [ %i.mi, %.lr.ph100.i.i ], [ %.0.i18, %.preheader.i.i19 ]
  %.299.i.i = phi i32 [ %i.mg, %.lr.ph100.i.i ], [ %.040.lcssa.i.i, %.preheader.i.i19 ] ; 2 uses
  %.04198.i.i = phi i64 [ %i.ly, %.lr.ph100.i.i ], [ 1, %.preheader.i.i19 ] ; 2 uses
  %.04497.i.i = phi i64 [ %i.mh, %.lr.ph100.i.i ], [ %i.jr, %.preheader.i.i19 ]
  %i.lx = mul i64 %.04497.i.i, 10                 ; 2 uses
  %i.ly = mul i64 %.04198.i.i, 10                 ; 6 uses
  %i.lz = lshr i64 %i.lx, %i.jm
  %i.ma = trunc i64 %i.lz to i8
  %i.mb = add i8 %i.ma, 48
  %i.mc = sext i32 %i.lw to i64
  %i.md = getelementptr inbounds i8, ptr %3, i64 %i.mc
  store i8 %i.mb, ptr %i.md, align 1, !tbaa !16
  %i.me = load i32, ptr %5, align 4, !tbaa !3     ; 4 uses
  %i.mf = add nsw i32 %i.me, 1                    ; 2 uses
  store i32 %i.mf, ptr %5, align 4, !tbaa !3
  %i.mg = add nsw i32 %.299.i.i, -1               ; 2 uses
  %i.mh = and i64 %i.lx, %i.jq                    ; 6 uses
  %i.mi = add nsw i32 %.1.i21, -1                 ; 4 uses
  %i.mj = icmp samesign ugt i32 %.299.i.i, 1
  %i.mk = icmp ugt i64 %i.mh, %i.ly               ; 3 uses
  %i.ml = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %i.ml, label %.lr.ph100.i.i, label %._crit_edge101.i.i, !llvm.loop !20

._crit_edge101.i.i:                               ; preds = %.lr.ph100.i.i
  %i.mm = icmp eq i32 %i.mg, 0
  br i1 %i.mm, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %._crit_edge101.i.i
  %.not.i46.i.i = icmp ult i64 %i.ly, %i.jn
  %i.mn = sub nuw i64 %i.jn, %i.ly
  %.not30.i47.i.i = icmp ugt i64 %i.mn, %i.ly
  %or.cond.i48.i.i = select i1 %.not.i46.i.i, i1 %.not30.i47.i.i, i1 false
  br i1 %or.cond.i48.i.i, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.mo = sub i64 %i.jn, %i.mh
  %i.mp = icmp ugt i64 %i.mo, %i.mh
  br i1 %i.mp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.mq = shl nuw i64 %i.mh, 1
  %i.mr = sub i64 %i.jn, %i.mq
  %i.ms = mul i64 %.04198.i.i, 20
  %.not31.i59.i.i = icmp ult i64 %i.mr, %i.ms     ; 2 uses
  %brmerge.i.i.not = select i1 %.not31.i59.i.i, i1 %i.mk, i1 false
  br i1 %brmerge.i.i.not, label %bb.af, label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.mk, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.mt = sub nuw nsw i64 %i.mh, %i.ly            ; 2 uses
  %i.mu = sub i64 %i.jn, %i.mt
  %.not32.i50.i.i = icmp ugt i64 %i.mu, %i.mt
  br i1 %.not32.i50.i.i, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mv = sext i32 %i.me to i64
  %i.mw = getelementptr inbounds i8, ptr %3, i64 %i.mv ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !16
  %i.my = add i8 %i.mx, 1                         ; 2 uses
  store i8 %i.my, ptr %i.mw, align 1, !tbaa !16
  %i.mz = icmp sgt i32 %i.me, 0
  br i1 %i.mz, label %.lr.ph.preheader.i52.i.i, label %._crit_edge.i51.i.i

.lr.ph.preheader.i52.i.i:                         ; preds = %bb.ag
  %.phi.trans.insert.i53.i.i = zext nneg i32 %i.me to i64
  br label %.lr.ph.i56.i.i

.lr.ph.i56.i.i:                                   ; preds = %bb.ah, %.lr.ph.preheader.i52.i.i
  %10 = phi i8 [ %i.my, %.lr.ph.preheader.i52.i.i ], [ %i.nd, %bb.ah ]
  %indvars.iv.i56.i.i = phi i64 [ %.phi.trans.insert.i53.i.i, %.lr.ph.preheader.i52.i.i ], [ %indvars.iv.next.i.i, %bb.ah ] ; 3 uses
  %.not33.i58.i.i = icmp eq i8 %10, 58
  br i1 %.not33.i58.i.i, label %bb.ah, label %._crit_edge.i51.i.i

bb.ah:                                            ; preds = %.lr.ph.i56.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i56.i.i
  store i8 48, ptr %i.na, align 1, !tbaa !16
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i56.i.i, -1 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.i ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !16
  %i.nd = add i8 %i.nc, 1                         ; 2 uses
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !16
  %i.ne = icmp sgt i64 %indvars.iv.i56.i.i, 1
  br i1 %i.ne, label %.lr.ph.i56.i.i, label %._crit_edge.i51.i.i, !llvm.loop !19

._crit_edge.i51.i.i:                              ; preds = %bb.ah, %.lr.ph.i56.i.i, %bb.ag
  %i.nf = load i8, ptr %3, align 1, !tbaa !16
  %i.ng = icmp eq i8 %i.nf, 58
  br i1 %i.ng, label %_ZN14arrow_vendored17double_conversionL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread35

_ZN14arrow_vendored17double_conversionL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i: ; preds = %._crit_edge.i51.i.i, %._crit_edge.i.i.i
  %.2.i22 = phi i32 [ %.3.i, %._crit_edge.i.i.i ], [ %i.mi, %._crit_edge.i51.i.i ]
  store i8 49, ptr %3, align 1, !tbaa !16
  %i.nh = add nsw i32 %.2.i22, 1
  br label %.thread35

bb.ai:                                            ; preds = %bb.a
  tail call void @abort() #6
  unreachable

.thread:                                          ; preds = %bb.y, %bb.x, %.thread82.i.i, %bb.af, %bb.ae, %bb.ab, %._crit_edge101.i.i, %.preheader.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.al

.thread35:                                        ; preds = %._crit_edge.i51.i.i, %_ZN14arrow_vendored17double_conversionL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i, %._crit_edge.i.i.i, %bb.w
  %.5.i.ph = phi i32 [ %.3.i, %bb.w ], [ %.3.i, %._crit_edge.i.i.i ], [ %i.nh, %_ZN14arrow_vendored17double_conversionL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i ], [ %i.mi, %._crit_edge.i51.i.i ]
  %i.ni = load i32, ptr %i.a, align 4, !tbaa !3
  %i.nj = sub nsw i32 %.5.i.ph, %i.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  %i.nk = load i32, ptr %i.a, align 4, !tbaa !3
  %i.nl = sub nsw i32 %i.mi, %i.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br i1 %.not31.i59.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread35, %_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit, %bb.aj
  %.029 = phi i32 [ %i.hw, %_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit ], [ %i.nl, %bb.aj ], [ %i.nj, %.thread35 ]
  %i.nm = load i32, ptr %5, align 4, !tbaa !3
  %i.nn = add nsw i32 %i.nm, %.029
  store i32 %i.nn, ptr %6, align 4, !tbaa !3
  %i.no = load i32, ptr %5, align 4, !tbaa !3
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds i8, ptr %3, i64 %i.np
  store i8 0, ptr %i.nq, align 1, !tbaa !16
  br label %bb.al

bb.al:                                            ; preds = %.thread, %_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit, %bb.ak, %bb.aj
  %.0.in30 = phi i1 [ false, %_ZN14arrow_vendored17double_conversionL6Grisu3EdNS0_12FastDtoaModeENS0_6VectorIcEEPiS4_.exit ], [ true, %bb.ak ], [ false, %bb.aj ], [ false, %.thread ]
  ret i1 %.0.in30
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN14arrow_vendored17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN14arrow_vendored17double_conversion5DiyFpE", !13, i64 0, !4, i64 8}
!13 = !{!"long", !5, i64 0}
!14 = !{!12, !4, i64 8}
!15 = distinct !{!15, !8}
!16 = !{!5, !5, i64 0}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
end_hunk_0
