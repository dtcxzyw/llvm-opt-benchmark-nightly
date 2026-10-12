Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE:bb.a
  %.sroa.0.0.insert.insert.i.i231 = or disjoint i48 %i.fo, %.sroa.2.0.insert.shift.i.i230
  %i.fp = load ptr, ptr %0, align 8, !tbaa !139
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i231, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.q, !inline_history !147 ; 4 uses

.noexc:                                           ; preds = %bb.g
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 82
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !140, !range !79, !noundef !80
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.preheader41.i, label %bb.i

.preheader41.i:                                   ; preds = %bb.h
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !77 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %i.ga = load i8, ptr %i.fz, align 4, !tbaa !78, !range !79, !noundef !80
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %.preheader41.i.split.us, label %.preheader40.i

.preheader41.i.split.us:                          ; preds = %.preheader41.i
  %.sroa.0.0.copyload.i.i.us.us = load i32, ptr %i.fy, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.us.us = lshr i32 %.sroa.0.0.copyload.i.i.us.us, 16
  %.sroa.4.0.extract.trunc.i.us.us = trunc i32 %.sroa.4.0.extract.shift.i.us.us to i8
  %i.gc = and i32 %.sroa.0.0.copyload.i.i.us.us, 65535
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gd
  %.sroa.0.0.copyload.i.i.i.us.us = load i8, ptr %i.ge, align 1, !tbaa !32 ; 2 uses
  %i.gf = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 16
  %.not.i.i.i.us.us = icmp eq i8 %i.gf, 0
  %i.gg = and i8 %.sroa.4.0.extract.trunc.i.us.us, 15
  %i.gh = and i8 %.sroa.0.0.copyload.i.i.i.us.us, 15 ; 2 uses
  %i.gi = tail call i8 @llvm.umax.i8(i8 %i.gh, i8 %i.gg)
  %i.gj = select i1 %.not.i.i.i.us.us, i8 %i.gh, i8 %i.gi
  %i.gk = icmp eq i8 %i.gj, 15
  %i.gl = zext i1 %i.gk to i8
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

bb.i:                                             ; preds = %bb.h, %.noexc
  %i.gm = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0324.0.insert.insert)
          to label %.noexc233 unwind label %bb.q  ; 2 uses

.noexc233:                                        ; preds = %bb.i
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %.noexc233
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 83
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !101, !range !79, !noundef !80
  %i.gq = xor i8 %i.gp, 1
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split

.preheader40.i:                                   ; preds = %.preheader41.i, %.preheader40.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %.preheader40.i ], [ 0, %.preheader41.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv49.i
  %.idx = shl nuw nsw i64 %indvars.iv49.i, 10
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx
  %i.gt = load <16 x i32>, ptr %i.gs, align 4     ; 17 uses
  %i.gu = extractelement <16 x i32> %i.gt, i64 0
  %i.gv = and i32 %i.gu, 65535
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gw
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.gx, align 1, !tbaa !32
  %i.gy = extractelement <16 x i32> %i.gt, i64 1
  %i.gz = and i32 %i.gy, 65535
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ha
  %.sroa.0.0.copyload.i.i.i.1 = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hc = extractelement <16 x i32> %i.gt, i64 2
  %i.hd = and i32 %i.hc, 65535
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.he
  %.sroa.0.0.copyload.i.i.i.2 = load i8, ptr %i.hf, align 1, !tbaa !32
  %i.hg = extractelement <16 x i32> %i.gt, i64 3
  %i.hh = and i32 %i.hg, 65535
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.hi
  %.sroa.0.0.copyload.i.i.i.3 = load i8, ptr %i.hj, align 1, !tbaa !32
  %i.hk = extractelement <16 x i32> %i.gt, i64 4
  %i.hl = and i32 %i.hk, 65535
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.hm
  %.sroa.0.0.copyload.i.i.i.4 = load i8, ptr %i.hn, align 1, !tbaa !32
  %i.ho = extractelement <16 x i32> %i.gt, i64 5
  %i.hp = and i32 %i.ho, 65535
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.hq
  %.sroa.0.0.copyload.i.i.i.5 = load i8, ptr %i.hr, align 1, !tbaa !32
  %i.hs = extractelement <16 x i32> %i.gt, i64 6
  %i.ht = and i32 %i.hs, 65535
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.hu
  %.sroa.0.0.copyload.i.i.i.6 = load i8, ptr %i.hv, align 1, !tbaa !32
  %i.hw = extractelement <16 x i32> %i.gt, i64 7
  %i.hx = and i32 %i.hw, 65535
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.hy
  %.sroa.0.0.copyload.i.i.i.7 = load i8, ptr %i.hz, align 1, !tbaa !32
  %i.ia = extractelement <16 x i32> %i.gt, i64 8
  %i.ib = and i32 %i.ia, 65535
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ic
  %.sroa.0.0.copyload.i.i.i.8 = load i8, ptr %i.id, align 1, !tbaa !32
  %i.ie = extractelement <16 x i32> %i.gt, i64 9
  %i.if = and i32 %i.ie, 65535
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ig
  %.sroa.0.0.copyload.i.i.i.9 = load i8, ptr %i.ih, align 1, !tbaa !32
  %i.ii = extractelement <16 x i32> %i.gt, i64 10
  %i.ij = and i32 %i.ii, 65535
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ik
  %.sroa.0.0.copyload.i.i.i.10 = load i8, ptr %i.il, align 1, !tbaa !32
  %i.im = extractelement <16 x i32> %i.gt, i64 11
  %i.in = and i32 %i.im, 65535
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.io
  %.sroa.0.0.copyload.i.i.i.11 = load i8, ptr %i.ip, align 1, !tbaa !32
  %i.iq = extractelement <16 x i32> %i.gt, i64 12
  %i.ir = and i32 %i.iq, 65535
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.is
  %.sroa.0.0.copyload.i.i.i.12 = load i8, ptr %i.it, align 1, !tbaa !32
  %i.iu = extractelement <16 x i32> %i.gt, i64 13
  %i.iv = and i32 %i.iu, 65535
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.iw
  %.sroa.0.0.copyload.i.i.i.13 = load i8, ptr %i.ix, align 1, !tbaa !32
  %i.iy = extractelement <16 x i32> %i.gt, i64 14
  %i.iz = and i32 %i.iy, 65535
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ja
  %.sroa.0.0.copyload.i.i.i.14 = load i8, ptr %i.jb, align 1, !tbaa !32
  %i.jc = lshr <16 x i32> %i.gt, splat (i32 16)
  %i.jd = trunc <16 x i32> %i.jc to <16 x i8>
  %i.je = extractelement <16 x i32> %i.gt, i64 15
  %i.jf = and i32 %i.je, 65535
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.jg
  %.sroa.0.0.copyload.i.i.i.15 = load i8, ptr %i.jh, align 1, !tbaa !32
  %i.ji = insertelement <16 x i8> poison, i8 %.sroa.0.0.copyload.i.i.i, i64 0
  %i.jj = insertelement <16 x i8> %i.ji, i8 %.sroa.0.0.copyload.i.i.i.1, i64 1
  %i.jk = insertelement <16 x i8> %i.jj, i8 %.sroa.0.0.copyload.i.i.i.2, i64 2
  %i.jl = insertelement <16 x i8> %i.jk, i8 %.sroa.0.0.copyload.i.i.i.3, i64 3
  %i.jm = insertelement <16 x i8> %i.jl, i8 %.sroa.0.0.copyload.i.i.i.4, i64 4
  %i.jn = insertelement <16 x i8> %i.jm, i8 %.sroa.0.0.copyload.i.i.i.5, i64 5
  %i.jo = insertelement <16 x i8> %i.jn, i8 %.sroa.0.0.copyload.i.i.i.6, i64 6
  %i.jp = insertelement <16 x i8> %i.jo, i8 %.sroa.0.0.copyload.i.i.i.7, i64 7
  %i.jq = insertelement <16 x i8> %i.jp, i8 %.sroa.0.0.copyload.i.i.i.8, i64 8
  %i.jr = insertelement <16 x i8> %i.jq, i8 %.sroa.0.0.copyload.i.i.i.9, i64 9
  %i.js = insertelement <16 x i8> %i.jr, i8 %.sroa.0.0.copyload.i.i.i.10, i64 10
  %i.jt = insertelement <16 x i8> %i.js, i8 %.sroa.0.0.copyload.i.i.i.11, i64 11
  %i.ju = insertelement <16 x i8> %i.jt, i8 %.sroa.0.0.copyload.i.i.i.12, i64 12
  %i.jv = insertelement <16 x i8> %i.ju, i8 %.sroa.0.0.copyload.i.i.i.13, i64 13
  %i.jw = insertelement <16 x i8> %i.jv, i8 %.sroa.0.0.copyload.i.i.i.14, i64 14
  %i.jx = insertelement <16 x i8> %i.jw, i8 %.sroa.0.0.copyload.i.i.i.15, i64 15 ; 2 uses
  %i.jy = and <16 x i8> %i.jx, splat (i8 16)
  %i.jz = icmp eq <16 x i8> %i.jy, zeroinitializer
  %i.ka = and <16 x i8> %i.jd, splat (i8 15)
  %i.kb = and <16 x i8> %i.jx, splat (i8 15)      ; 2 uses
  %i.kc = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.kb, <16 x i8> %i.ka)
  %i.kd = select <16 x i1> %i.jz, <16 x i8> %i.kb, <16 x i8> %i.kc
  %i.ke = icmp eq <16 x i8> %i.kd, splat (i8 15)
  %i.kf = zext <16 x i1> %i.ke to <16 x i8>
  store <16 x i8> %i.kf, ptr %i.gr, align 16, !tbaa !123
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 16
  br i1 %exitcond52.not.i, label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit, label %.preheader40.i, !llvm.loop !6

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split: ; preds = %.noexc233, %bb.j, %.preheader41.i.split.us
  %.sink = phi i8 [ %i.gl, %.preheader41.i.split.us ], [ %i.gq, %bb.j ], [ 0, %.noexc233 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %.sink, i64 256, i1 false), !tbaa !123
  br label %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit

_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit: ; preds = %.preheader40.i, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit.sink.split
  %i.kg = shl i16 %.0121371, 4
  %.sroa.7.0.insert.ext = zext i16 %i.kg to i32
  %i.kh = load i32, ptr %i.e, align 4, !tbaa !126 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i32 127, ptr %3, align 4
  %i.ki = load i16, ptr %i.es, align 8, !tbaa !130
  %i.kj = load i16, ptr %i.et, align 4, !tbaa !131
  %i.kk = sext i16 %i.kj to i32
  %i.kl = load i32, ptr %i.g, align 8, !tbaa !132
  %i.km = sext i16 %i.ki to i32
  %i.kn = load i16, ptr %i.eu, align 2, !tbaa !133
  %i.ko = sext i16 %i.kn to i32
  %invariant.op.i = sub nsw i32 %i.km, %i.ko
  %i.kp = load i16, ptr %i.d, align 8, !tbaa !134
  %i.kq = sext i16 %i.kp to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.split352.us, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit
  %indvars.iv57.i = phi i64 [ 0, %_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b.exit ], [ %indvars.iv.next58.i, %.split352.us ] ; 3 uses
  %i.kr = trunc nuw nsw i64 %indvars.iv57.i to i32
  %.sroa.7.0.insert.shift331 = add i32 %i.kr, %.sroa.7.0.insert.ext
  %.sroa.2.0.extract.shift63.i = shl i32 %.sroa.7.0.insert.shift331, 16
  %i.ks = ashr exact i32 %.sroa.2.0.extract.shift63.i, 16
  %i.kt = sub nsw i32 %i.ks, %i.kk
  %i.ku = mul nsw i32 %i.kt, %i.kl                ; 2 uses
  %.reass.i = add i32 %invariant.op.i, %i.ku
  %i.kv = mul i32 %.reass.i, %i.kh                ; 2 uses
  %i.kw = mul i32 %i.ku, %i.kh                    ; 2 uses
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv57.i
  %.not49.i = icmp slt i32 %i.kv, %i.kw
  br i1 %.not49.i, label %.split352.us, label %.preheader.i.split

.preheader.i.split:                               ; preds = %.preheader.i
  %i.ky = load ptr, ptr %i.ev, align 8, !tbaa !135
  br label %.lr.ph.i

.split352.us:                                     ; preds = %._crit_edge.i.loopexit, %.preheader.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 16
  br i1 %exitcond60.not.i, label %bb.p, label %.preheader.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %._crit_edge.i.loopexit, %.preheader.i.split
  %indvars.iv.i234 = phi i64 [ 0, %.preheader.i.split ], [ %indvars.iv.next.i238, %._crit_edge.i.loopexit ] ; 3 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv.i234 to i32
  %i.la = add i32 %i.kz, %.sroa.0323.0.insert.ext
  %sext.i = shl i32 %i.la, 16
  %i.lb = ashr exact i32 %sext.i, 16
  %i.lc = sub nsw i32 %i.lb, %i.kq                ; 2 uses
  %i.ld = add nsw i32 %i.lc, %i.kw
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv.i234 ; 2 uses
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !123, !range !79, !noundef !80
  %i.lg = add nsw i32 %i.lc, %i.kv
  br label %bb.k

._crit_edge.i.loopexit:                           ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i
  store i8 %.2.i, ptr %i.le, align 1, !tbaa !123
  %indvars.iv.next.i238 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i239 = icmp eq i64 %indvars.iv.next.i238, 16
  br i1 %exitcond.not.i239, label %.split352.us, label %.lr.ph.i, !llvm.loop !4

bb.k:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i, %.lr.ph.i
  %.04151.i = phi i32 [ %i.lg, %.lr.ph.i ], [ %i.lx, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i ] ; 2 uses
  %.04250.i = phi i8 [ %i.lf, %.lr.ph.i ], [ %.2.i, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i ] ; 3 uses
  %i.lh = sext i32 %.04151.i to i64               ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.ky, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !32
  %i.lk = and i8 %i.lj, 1
  %.not44.i = icmp eq i8 %i.lk, 0
  br i1 %.not44.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ll = load ptr, ptr %i.ew, align 8, !tbaa !136
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.lh
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.040.i = phi ptr [ %i.lm, %bb.l ], [ %3, %bb.k ] ; 2 uses
  %i.ln = load i16, ptr %.040.i, align 4, !tbaa !122 ; 2 uses
  %i.lo = icmp eq i16 %i.ln, 127
  br i1 %i.lo, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.lp = zext i16 %i.ln to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.lp
  %.sroa.0.0.copyload.i.i.i235 = load i8, ptr %i.lq, align 1, !tbaa !32 ; 2 uses
  %i.lr = trunc nuw i8 %.04250.i to i1
  %i.ls = and i8 %.sroa.0.0.copyload.i.i.i235, 64
  %.not45.i = icmp eq i8 %i.ls, 0
  %or.cond.i236 = and i1 %.not45.i, %i.lr
  %.1.i = select i1 %or.cond.i236, i8 0, i8 %.04250.i ; 3 uses
  %i.lt = and i8 %.sroa.0.0.copyload.i.i.i235, 16
  %.not.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lu = trunc nuw i8 %.1.i to i1
  %i.lv = select i1 %i.lu, i8 15, i8 0
  %i.lw = getelementptr inbounds nuw i8, ptr %.040.i, i64 2
  store i8 %i.lv, ptr %i.lw, align 2, !tbaa !137
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47.i: ; preds = %bb.o, %bb.n, %bb.m
  %.2.i = phi i8 [ %.04250.i, %bb.m ], [ %.1.i, %bb.o ], [ %.1.i, %bb.n ] ; 2 uses
  %i.lx = sub nsw i32 %.04151.i, %i.kh            ; 2 uses
  %.not.i237 = icmp slt i32 %i.lx, %i.ld
  br i1 %.not.i237, label %._crit_edge.i.loopexit, label %bb.k, !llvm.loop !5

bb.p:                                             ; preds = %.split352.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  store i16 %.0120375, ptr %i.ey, align 8, !tbaa !31
  store i16 %i.ex, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !31
  store i16 %.0121371, ptr %.sroa.5322.0..sroa_idx, align 4, !tbaa !31
  %.promoted.pre = load ptr, ptr %i.ez, align 8, !tbaa !143
  %.promoted358.pre = load ptr, ptr %i.fa, align 8, !tbaa !148
  %.promoted364.pre = load ptr, ptr %6, align 8
  br label %.preheader339

.preheader345:                                    ; preds = %bb.s
  %i.ly = icmp eq ptr %i.nc, %i.ne
  br i1 %i.ly, label %._crit_edge, label %.lr.ph

.preheader339:                                    ; preds = %bb.p, %bb.s
  %.promoted364 = phi ptr [ %.promoted364.pre, %bb.p ], [ %i.nc, %bb.s ]
  %.promoted358 = phi ptr [ %.promoted358.pre, %bb.p ], [ %i.nd, %bb.s ]
  %.promoted = phi ptr [ %.promoted.pre, %bb.p ], [ %i.ne, %bb.s ]
  %indvars.iv427 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next428, %bb.s ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv427
  %i.ma = trunc nuw nsw i64 %indvars.iv427 to i32
  %.sroa.6316.0.insert.shift = shl nuw nsw i32 %i.ma, 16 ; 2 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.i, %bb.g
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body276thread-pre-split

bb.r:                                             ; preds = %.critedge.i, %bb.z, %.lr.ph
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body276thread-pre-split

bb.s:                                             ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit
  store ptr %i.ne, ptr %i.ez, align 8
  store ptr %i.nd, ptr %i.fa, align 8
  store ptr %i.nc, ptr %6, align 8
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next428, 16
  br i1 %exitcond430.not, label %.preheader345, label %.preheader339, !llvm.loop !266

bb.t:                                             ; preds = %.preheader339, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader339 ], [ %indvars.iv.next, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 4 uses
  %i.md = phi ptr [ %.promoted, %.preheader339 ], [ %i.ne, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 7 uses
  %i.me = phi ptr [ %.promoted358, %.preheader339 ], [ %i.nd, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 4 uses
  %i.mf = phi ptr [ %.promoted364, %.preheader339 ], [ %i.nc, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit ] ; 8 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 %indvars.iv ; 2 uses
  %.not.i240 = icmp eq ptr %i.md, %i.me
  br i1 %.not.i240, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mh = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.0312.0.insert.insert = or disjoint i32 %.sroa.6316.0.insert.shift, %i.mh
  %i.mi = load i8, ptr %i.mg, align 1, !tbaa !123, !range !79, !noundef !80
  store i32 %.sroa.0312.0.insert.insert, ptr %i.md, align 2, !tbaa !31
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store i8 %i.mi, ptr %i.mj, align 2, !tbaa !150
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit

bb.v:                                             ; preds = %bb.t
  %i.mk = ptrtoint ptr %i.md to i64
  %i.ml = ptrtoint ptr %i.mf to i64
  %i.mm = sub i64 %i.mk, %i.ml                    ; 4 uses
  %i.mn = icmp eq i64 %i.mm, 9223372036854775806
  br i1 %i.mn, label %bb.w, label %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.me, ptr %i.fa, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc249 unwind label %.loopexit.split-lp341

.noexc249:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.mo = sdiv exact i64 %i.mm, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.mo, i64 1)
  %i.mp = add nsw i64 %.sroa.speculated.i.i.i, %i.mo ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %i.mo
  %i.mr = tail call i64 @llvm.umin.i64(i64 %i.mp, i64 1537228672809129301)
  %i.ms = select i1 %i.mq, i64 1537228672809129301, i64 %i.mr ; 3 uses
  %.not.i.i.i242 = icmp ne i64 %i.ms, 0
  tail call void @llvm.assume(i1 %.not.i.i.i242)
  %i.mt = mul nuw nsw i64 %i.ms, 6
  %i.mu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mt) #21
          to label %.noexc250 unwind label %.loopexit340 ; 5 uses

.noexc250:                                        ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mm ; 2 uses
  %i.mw = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.0312.0.insert.insert315 = or disjoint i32 %.sroa.6316.0.insert.shift, %i.mw
  %i.mx = load i8, ptr %i.mg, align 1, !tbaa !123, !range !79, !noundef !80
  store i32 %.sroa.0312.0.insert.insert315, ptr %i.mv, align 2, !tbaa !31
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  store i8 %i.mx, ptr %i.my, align 2, !tbaa !150
  %.not10.i.i.i.i.i244 = icmp eq ptr %i.mf, %i.md
  br i1 %.not10.i.i.i.i.i244, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i245

.lr.ph.i.i.i.i.i245:                              ; preds = %.noexc250, %.lr.ph.i.i.i.i.i245
  %.012.i.i.i.i.i246 = phi ptr [ %i.na, %.lr.ph.i.i.i.i.i245 ], [ %i.mu, %.noexc250 ] ; 2 uses
  %.0911.i.i.i.i.i247 = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i245 ], [ %i.mf, %.noexc250 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i246, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i247, i64 6, i1 false), !tbaa.struct !146, !alias.scope !288
  %i.mz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i247, i64 6 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i246, i64 6 ; 2 uses
  %.not.i.i.i.i.i248 = icmp eq ptr %i.mz, %i.md
  br i1 %.not.i.i.i.i.i248, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i245, !llvm.loop !7

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i245, %.noexc250
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.mu, %.noexc250 ], [ %i.na, %.lr.ph.i.i.i.i.i245 ]
  %.not.i34.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.mm) #22
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.nb = getelementptr inbounds nuw [6 x i8], ptr %i.mu, i64 %i.ms
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit

_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12emplace_backIJN4core8vector2dIsEERbEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.u
  %i.nc = phi ptr [ %i.mu, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.mf, %bb.u ] ; 5 uses
  %i.nd = phi ptr [ %i.nb, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.me, %bb.u ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.md, %bb.u ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 6 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.s, label %bb.t, !llvm.loop !270

.loopexit340:                                     ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit342 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.me, ptr %i.fa, align 8
  br label %.body276

.loopexit.split-lp341:                            ; preds = %bb.w
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
end_hunk_0
