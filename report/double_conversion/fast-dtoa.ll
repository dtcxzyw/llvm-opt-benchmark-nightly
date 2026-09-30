Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/fast-dtoa?download=true
inline.NumInlined: 153
inline.NumDeleted: 41
begin_hunk_0_@_ZN17double_conversion8FastDtoaEdNS_12FastDtoaModeEiNS_6VectorIcEEPiS3_:bb.a

bb.r:                                             ; preds = %bb.a
  %i.hz = bitcast double %0 to i64                ; 4 uses
  %i.ia = and i64 %i.hz, 9218868437227405312
  %i.ib = icmp eq i64 %i.ia, 0
  %i.ic = or i64 %i.hz, 4503599627370496
  %i.id = lshr i64 %i.hz, 52
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = and i32 %i.ie, 2047
  %i.ig = add nsw i32 %i.if, -1075
  br i1 %i.ib, label %.lr.ph.i.i24, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14

.lr.ph.i.i24:                                     ; preds = %bb.r, %.lr.ph.i.i24
  %.010.i.i25 = phi i32 [ %i.ii, %.lr.ph.i.i24 ], [ -1074, %bb.r ]
  %.079.i.i26 = phi i64 [ %i.ih, %.lr.ph.i.i24 ], [ %i.hz, %bb.r ] ; 2 uses
  %i.ih = shl i64 %.079.i.i26, 1                  ; 2 uses
  %i.ii = add nsw i32 %.010.i.i25, -1             ; 2 uses
  %i.ij = and i64 %.079.i.i26, 2251799813685248
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %.lr.ph.i.i24, label %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, !llvm.loop !8

_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14: ; preds = %.lr.ph.i.i24, %bb.r
  %.07.lcssa.i.i15 = phi i64 [ %i.ic, %bb.r ], [ %i.ih, %.lr.ph.i.i24 ]
  %.0.lcssa.i.i16 = phi i32 [ %i.ig, %bb.r ], [ %i.ii, %.lr.ph.i.i24 ] ; 3 uses
  %i.il = shl i64 %.07.lcssa.i.i15, 11            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store i64 0, ptr %7, align 8, !tbaa !19
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.im, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.in = sub nsw i32 -113, %.0.lcssa.i.i16
  %i.io = sub nsw i32 -85, %.0.lcssa.i.i16
  call void @_ZN17double_conversion16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS_5DiyFpEPi(i32 noundef %i.in, i32 noundef %i.io, ptr noundef nonnull %7, ptr noundef nonnull %i.a)
  %i.ip = lshr i64 %i.il, 32                      ; 2 uses
  %i.iq = and i64 %i.il, 4294965248               ; 2 uses
  %i.ir = load i64, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.is = lshr i64 %i.ir, 32                      ; 2 uses
  %i.it = and i64 %i.ir, 4294967295               ; 2 uses
  %i.iu = mul nuw i64 %i.is, %i.ip
  %i.iv = mul nuw i64 %i.is, %i.iq                ; 2 uses
  %i.iw = mul nuw i64 %i.it, %i.ip                ; 2 uses
  %i.ix = mul nuw i64 %i.it, %i.iq
  %i.iy = lshr i64 %i.ix, 32
  %i.iz = and i64 %i.iw, 4294967295
  %i.ja = and i64 %i.iv, 4294965248
  %i.jb = add nuw nsw i64 %i.iz, 2147483648
  %i.jc = add nuw nsw i64 %i.jb, %i.iy
  %i.jd = add nuw nsw i64 %i.jc, %i.ja
  %i.je = load i32, ptr %i.im, align 8, !tbaa !20
  %i.jf = add i32 %.0.lcssa.i.i16, 53
  %i.jg = add i32 %i.jf, %i.je                    ; 2 uses
  %i.jh = lshr i64 %i.iw, 32
  %i.ji = add nuw i64 %i.jh, %i.iu
  %i.jj = lshr i64 %i.iv, 32
  %i.jk = add nuw i64 %i.ji, %i.jj
  %i.jl = lshr i64 %i.jd, 32
  %i.jm = add nuw i64 %i.jk, %i.jl                ; 2 uses
  %i.jn = sub nsw i32 0, %i.jg
  %i.jo = zext nneg i32 %i.jn to i64              ; 5 uses
  %i.jp = shl nuw i64 1, %i.jo                    ; 6 uses
  %i.jq = lshr i64 %i.jm, %i.jo
  %i.jr = trunc i64 %i.jq to i32                  ; 3 uses
  %i.js = add i64 %i.jp, -1                       ; 2 uses
  %i.jt = and i64 %i.jm, %i.js                    ; 3 uses
  %i.ju = mul i32 %i.jg, 1233
  %i.jv = add i32 %i.ju, 80145
  %i.jw = ashr i32 %i.jv, 12                      ; 2 uses
  %i.jx = add nsw i32 %i.jw, 1                    ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !21
  %i.kb = icmp ugt i32 %i.ka, %i.jr
  %spec.select.i.i.i17 = select i1 %i.kb, i32 %i.jw, i32 %i.jx ; 4 uses
  %i.kc = sext i32 %spec.select.i.i.i17 to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr @_ZN17double_conversionL17kSmallPowersOfTenE, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !21 ; 2 uses
  store i32 0, ptr %5, align 4, !tbaa !21
  %i.kf = icmp sgt i32 %spec.select.i.i.i17, 0
  br i1 %i.kf, label %.lr.ph.i21.i, label %._crit_edge.i.i

.lr.ph.i21.i:                                     ; preds = %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14, %bb.s
  %i.kg = phi i32 [ %i.kn, %bb.s ], [ 0, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.4.i = phi i32 [ %i.kq, %bb.s ], [ %spec.select.i.i.i17, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.04094.i.i = phi i32 [ %i.ko, %bb.s ], [ %2, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ]
  %.04293.i.i = phi i32 [ %i.kp, %bb.s ], [ %i.jr, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 2 uses
  %.07792.i.i = phi i32 [ %i.ks, %bb.s ], [ %i.ke, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ] ; 4 uses
  %i.kh = udiv i32 %.04293.i.i, %.07792.i.i
  %i.ki = trunc i32 %i.kh to i8
  %i.kj = add i8 %i.ki, 48
  %i.kk = sext i32 %i.kg to i64
  %i.kl = getelementptr inbounds i8, ptr %3, i64 %i.kk
  store i8 %i.kj, ptr %i.kl, align 1, !tbaa !22
  %i.km = load i32, ptr %5, align 4, !tbaa !21
  %i.kn = add nsw i32 %i.km, 1                    ; 4 uses
  store i32 %i.kn, ptr %5, align 4, !tbaa !21
  %i.ko = add nsw i32 %.04094.i.i, -1             ; 3 uses
  %i.kp = urem i32 %.04293.i.i, %.07792.i.i       ; 3 uses
  %i.kq = add nsw i32 %.4.i, -1                   ; 3 uses
  %i.kr = icmp eq i32 %i.ko, 0
  br i1 %i.kr, label %.thread82.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i21.i
  %i.ks = udiv i32 %.07792.i.i, 10                ; 2 uses
  %i.kt = icmp samesign ugt i32 %.4.i, 1
  br i1 %i.kt, label %.lr.ph.i21.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.s, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14
  %.pr.i = phi i32 [ 0, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kn, %bb.s ] ; 2 uses
  %.0.i18 = phi i32 [ %spec.select.i.i.i17, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kq, %bb.s ] ; 2 uses
  %.077.lcssa.i.i = phi i32 [ %i.ke, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.ks, %bb.s ]
  %.042.lcssa.i.i = phi i32 [ %i.jr, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.kp, %bb.s ]
  %.040.lcssa.i.i = phi i32 [ %2, %_ZNK17double_conversion6Double17AsNormalizedDiyFpEv.exit.i14 ], [ %i.ko, %bb.s ] ; 3 uses
  %i.ku = icmp eq i32 %.040.lcssa.i.i, 0
  br i1 %i.ku, label %.thread82.i.i, label %.preheader.i.i19

.preheader.i.i19:                                 ; preds = %._crit_edge.i.i
  %i.kv = icmp sgt i32 %.040.lcssa.i.i, 0
  %i.kw = icmp ugt i64 %i.jt, 1
  %i.kx = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %i.kx, label %.lr.ph100.i.i, label %.thread

.thread82.i.i:                                    ; preds = %.lr.ph.i21.i, %._crit_edge.i.i
  %i.ky = phi i32 [ %.pr.i, %._crit_edge.i.i ], [ %i.kn, %.lr.ph.i21.i ] ; 2 uses
  %.3.i = phi i32 [ %.0.i18, %._crit_edge.i.i ], [ %i.kq, %.lr.ph.i21.i ] ; 3 uses
  %.07790.i.i = phi i32 [ %.077.lcssa.i.i, %._crit_edge.i.i ], [ %.07792.i.i, %.lr.ph.i21.i ]
  %.14385.i.i = phi i32 [ %.042.lcssa.i.i, %._crit_edge.i.i ], [ %i.kp, %.lr.ph.i21.i ]
  %i.kz = zext i32 %.14385.i.i to i64
  %i.la = shl i64 %i.kz, %i.jo
  %i.lb = add i64 %i.la, %i.jt                    ; 5 uses
  %i.lc = zext i32 %.07790.i.i to i64
  %i.ld = shl i64 %i.lc, %i.jo                    ; 4 uses
  %or.cond.i.i.i = icmp ugt i64 %i.ld, 2
  br i1 %or.cond.i.i.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread82.i.i
  %i.le = sub i64 %i.ld, %i.lb
  %i.lf = icmp ugt i64 %i.le, %i.lb
  br i1 %i.lf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lg = shl i64 %i.lb, 1
  %i.lh = sub i64 %i.ld, %i.lg
  %.not31.i.i.i = icmp ult i64 %i.lh, 2
  br i1 %.not31.i.i.i, label %bb.v, label %.thread34

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.li = icmp ugt i64 %i.lb, 1
  br i1 %i.li, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.lj = add i64 %i.lb, -1                       ; 2 uses
  %i.lk = sub i64 %i.ld, %i.lj
  %.not32.i.i.i = icmp ugt i64 %i.lk, %i.lj
  br i1 %.not32.i.i.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ll = add nsw i32 %i.ky, -1                   ; 2 uses
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds i8, ptr %3, i64 %i.lm ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !22
  %i.lp = add i8 %i.lo, 1
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !22
  %i.lq = icmp sgt i32 %i.ky, 1
  br i1 %i.lq, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.x
  %.phi.trans.insert.i.i.i = zext nneg i32 %i.ll to i64 ; 2 uses
  %.phi.trans.insert41.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert41.i.i.i, align 1, !tbaa !22
  br label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %bb.y, %.lr.ph.preheader.i.i.i
  %indvars.iv116.i.i = phi i64 [ %indvars.iv.next117.i.i, %bb.y ], [ %.phi.trans.insert.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.lr = phi i8 [ %i.lv, %bb.y ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ]
  %.not33.i.i.i = icmp eq i8 %i.lr, 58
  br i1 %.not33.i.i.i, label %bb.y, label %._crit_edge.i.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i23
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv116.i.i
  store i8 48, ptr %i.ls, align 1, !tbaa !22
  %indvars.iv.next117.i.i = add nsw i64 %indvars.iv116.i.i, -1 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next117.i.i ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !22
  %i.lv = add i8 %i.lu, 1                         ; 2 uses
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !22
  %i.lw = icmp sgt i64 %indvars.iv116.i.i, 1
  br i1 %i.lw, label %.lr.ph.i.i.i23, label %._crit_edge.i.i.i, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %bb.y, %.lr.ph.i.i.i23, %bb.x
  %i.lx = load i8, ptr %3, align 1, !tbaa !22
  %i.ly = icmp eq i8 %i.lx, 58
  br i1 %i.ly, label %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread34

.lr.ph100.i.i:                                    ; preds = %.preheader.i.i19, %.lr.ph100.i.i
  %i.lz = phi i32 [ %i.mi, %.lr.ph100.i.i ], [ %.pr.i, %.preheader.i.i19 ]
  %.1.i21 = phi i32 [ %i.ml, %.lr.ph100.i.i ], [ %.0.i18, %.preheader.i.i19 ]
  %.299.i.i = phi i32 [ %i.mj, %.lr.ph100.i.i ], [ %.040.lcssa.i.i, %.preheader.i.i19 ] ; 2 uses
  %.04198.i.i = phi i64 [ %i.mb, %.lr.ph100.i.i ], [ 1, %.preheader.i.i19 ] ; 2 uses
  %.04497.i.i = phi i64 [ %i.mk, %.lr.ph100.i.i ], [ %i.jt, %.preheader.i.i19 ]
  %i.ma = mul i64 %.04497.i.i, 10                 ; 2 uses
  %i.mb = mul i64 %.04198.i.i, 10                 ; 6 uses
  %i.mc = lshr i64 %i.ma, %i.jo
  %i.md = trunc i64 %i.mc to i8
  %i.me = add i8 %i.md, 48
  %i.mf = sext i32 %i.lz to i64
  %i.mg = getelementptr inbounds i8, ptr %3, i64 %i.mf
  store i8 %i.me, ptr %i.mg, align 1, !tbaa !22
  %i.mh = load i32, ptr %5, align 4, !tbaa !21    ; 4 uses
  %i.mi = add nsw i32 %i.mh, 1                    ; 2 uses
  store i32 %i.mi, ptr %5, align 4, !tbaa !21
  %i.mj = add nsw i32 %.299.i.i, -1               ; 2 uses
  %i.mk = and i64 %i.ma, %i.js                    ; 6 uses
  %i.ml = add nsw i32 %.1.i21, -1                 ; 4 uses
  %i.mm = icmp samesign ugt i32 %.299.i.i, 1
  %i.mn = icmp ugt i64 %i.mk, %i.mb               ; 3 uses
  %i.mo = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %i.mo, label %.lr.ph100.i.i, label %._crit_edge101.i.i, !llvm.loop !15

._crit_edge101.i.i:                               ; preds = %.lr.ph100.i.i
  %i.mp = icmp eq i32 %i.mj, 0
  br i1 %i.mp, label %bb.z, label %.thread

bb.z:                                             ; preds = %._crit_edge101.i.i
  %.not.i46.i.i = icmp ult i64 %i.mb, %i.jp
  %i.mq = sub nuw i64 %i.jp, %i.mb
  %.not30.i47.i.i = icmp ugt i64 %i.mq, %i.mb
  %or.cond.i48.i.i = select i1 %.not.i46.i.i, i1 %.not30.i47.i.i, i1 false
  br i1 %or.cond.i48.i.i, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.mr = sub i64 %i.jp, %i.mk
  %i.ms = icmp ugt i64 %i.mr, %i.mk
  br i1 %i.ms, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mt = shl nuw i64 %i.mk, 1
  %i.mu = sub i64 %i.jp, %i.mt
  %i.mv = mul i64 %.04198.i.i, 20
  %.not31.i59.i.i = icmp ult i64 %i.mu, %i.mv     ; 2 uses
  %brmerge.i.i.not = select i1 %.not31.i59.i.i, i1 %i.mn, i1 false
  br i1 %brmerge.i.i.not, label %bb.ad, label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.mn, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.mw = sub nuw nsw i64 %i.mk, %i.mb            ; 2 uses
  %i.mx = sub i64 %i.jp, %i.mw
  %.not32.i50.i.i = icmp ugt i64 %i.mx, %i.mw
  br i1 %.not32.i50.i.i, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.my = sext i32 %i.mh to i64
  %i.mz = getelementptr inbounds i8, ptr %3, i64 %i.my ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !22
  %i.nb = add i8 %i.na, 1                         ; 2 uses
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !22
  %i.nc = icmp sgt i32 %i.mh, 0
  br i1 %i.nc, label %.lr.ph.preheader.i52.i.i, label %._crit_edge.i51.i.i

.lr.ph.preheader.i52.i.i:                         ; preds = %bb.ae
  %.phi.trans.insert.i53.i.i = zext nneg i32 %i.mh to i64
  br label %.lr.ph.i56.i.i

.lr.ph.i56.i.i:                                   ; preds = %bb.af, %.lr.ph.preheader.i52.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.af ], [ %.phi.trans.insert.i53.i.i, %.lr.ph.preheader.i52.i.i ] ; 3 uses
  %i.nd = phi i8 [ %i.nh, %bb.af ], [ %i.nb, %.lr.ph.preheader.i52.i.i ]
  %.not33.i58.i.i = icmp eq i8 %i.nd, 58
  br i1 %.not33.i58.i.i, label %bb.af, label %._crit_edge.i51.i.i

bb.af:                                            ; preds = %.lr.ph.i56.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.i
  store i8 48, ptr %i.ne, align 1, !tbaa !22
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !22
  %i.nh = add i8 %i.ng, 1                         ; 2 uses
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !22
  %i.ni = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %i.ni, label %.lr.ph.i56.i.i, label %._crit_edge.i51.i.i, !llvm.loop !14

._crit_edge.i51.i.i:                              ; preds = %bb.af, %.lr.ph.i56.i.i, %bb.ae
  %i.nj = load i8, ptr %3, align 1, !tbaa !22
  %i.nk = icmp eq i8 %i.nj, 58
  br i1 %i.nk, label %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread34

_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i: ; preds = %._crit_edge.i51.i.i, %._crit_edge.i.i.i
  %.2.i22 = phi i32 [ %.3.i, %._crit_edge.i.i.i ], [ %i.ml, %._crit_edge.i51.i.i ]
  store i8 49, ptr %3, align 1, !tbaa !22
  %i.nl = add nsw i32 %.2.i22, 1
  br label %.thread34

bb.ag:                                            ; preds = %bb.a
  tail call void @abort() #6
  unreachable

.thread:                                          ; preds = %bb.w, %bb.v, %.thread82.i.i, %bb.ad, %bb.ac, %bb.z, %._crit_edge101.i.i, %.preheader.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.aj

.thread34:                                        ; preds = %._crit_edge.i51.i.i, %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i, %._crit_edge.i.i.i, %bb.u
  %.5.i.ph = phi i32 [ %.3.i, %bb.u ], [ %.3.i, %._crit_edge.i.i.i ], [ %i.nl, %_ZN17double_conversionL16RoundWeedCountedENS_6VectorIcEEimmmPi.exit.sink.split.i.i ], [ %i.ml, %._crit_edge.i51.i.i ]
  %i.nm = load i32, ptr %i.a, align 4, !tbaa !21
  %i.nn = sub nsw i32 %.5.i.ph, %i.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ab
  %i.no = load i32, ptr %i.a, align 4, !tbaa !21
  %i.np = sub nsw i32 %i.ml, %i.no
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br i1 %.not31.i59.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread34, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit, %bb.ah
  %.028 = phi i32 [ %i.hy, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit ], [ %i.np, %bb.ah ], [ %i.nn, %.thread34 ]
  %i.nq = load i32, ptr %5, align 4, !tbaa !21
  %i.nr = add nsw i32 %i.nq, %.028
  store i32 %i.nr, ptr %6, align 4, !tbaa !21
  %i.ns = load i32, ptr %5, align 4, !tbaa !21
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds i8, ptr %3, i64 %i.nt
  store i8 0, ptr %i.nu, align 1, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit, %bb.ai, %bb.ah
  %.0.in29 = phi i1 [ false, %_ZN17double_conversionL6Grisu3EdNS_12FastDtoaModeENS_6VectorIcEEPiS3_.exit ], [ true, %bb.ai ], [ false, %bb.ah ], [ false, %.thread ]
  ret i1 %.0.in29
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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !16}
!9 = distinct !{!9, !16}
!10 = distinct !{!10, !16}
!11 = distinct !{!11, !16}
!12 = distinct !{!12, !16}
!13 = distinct !{!13, !16}
!14 = distinct !{!14, !16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"long", !4, i64 0}
!18 = !{!"_ZTSN17double_conversion5DiyFpE", !17, i64 0, !5, i64 8}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !5, i64 8}
!21 = !{!5, !5, i64 0}
!22 = !{!4, !4, i64 0}
end_hunk_0
