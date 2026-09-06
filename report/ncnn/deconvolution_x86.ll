Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.jq = load i32, ptr %i.am, align 8, !tbaa !59
  %.fr.i = freeze i32 %i.jq                       ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !61
  %i.jt = mul i32 %i.js, %.fr.i                   ; 10 uses
  %i.ju = load i32, ptr %i.ag, align 4, !tbaa !54 ; 5 uses
  %i.jv = load i32, ptr %i.ai, align 8, !tbaa !65 ; 4 uses
  %i.jw = load i32, ptr %i.cj, align 4, !tbaa !54 ; 2 uses
  %i.jx = load i32, ptr %i.ck, align 16, !tbaa !65 ; 2 uses
  %i.jy = load ptr, ptr %4, align 16, !tbaa !20, !noalias !305 ; 2 uses
  %i.jz = load i64, ptr %i.cm, align 16, !tbaa !21, !noalias !305
  %i.ka = load i64, ptr %i.cf, align 16, !tbaa !55, !noalias !305
  %factor.op.mul.i = mul i64 %i.ka, %i.jz         ; 2 uses
  %i.kb = icmp slt i32 %i.jx, 1
  %i.kc = icmp slt i32 %i.jw, 1
  %i.kd = icmp sgt i32 %i.jt, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %brmerge.i = select i1 %i.kb, i1 true, i1 %i.kc
  br i1 %brmerge.i, label %._crit_edge1064.split.i, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kh = load ptr, ptr %i.im, align 8, !tbaa !20, !noalias !306
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !21, !noalias !306
  %i.kj = load i64, ptr %i.kf, align 8, !tbaa !55, !noalias !306
  %factor.op.mul1070.i = mul i64 %i.kj, %i.ki
  %i.kk = and i32 %i.jt, -4                       ; 2 uses
  %i.kl = add i32 %i.kk, -4
  %i.km = zext i32 %i.kl to i64
  %i.kn = add nuw nsw i64 %i.km, 4
  %i.ko = sext i32 %i.jt to i64
  %i.kp = sext i32 %i.jm to i64
  %wide.trip.count1329.i = zext nneg i32 %i.jo to i64
  %invariant.op1440.i = add nsw i64 %i.ko, -3
  %i.kq = sext i32 %i.ju to i64                   ; 4 uses
  %i.kr = and i32 %i.jt, -4
  br label %_ZN4ncnn3MatD2Ev.exit457.i

._crit_edge1064.split.i:                          ; preds = %._crit_edge1062.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, %bb.ax
  %i.ks = shl nsw i32 %i.jo, 1                    ; 2 uses
  %i.kt = add nsw i32 %i.ks, %i.jm
  %i.ku = icmp slt i32 %i.kt, %i.iw
  br i1 %i.ku, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit

_ZN4ncnn3MatD2Ev.exit450.lr.ph.i:                 ; preds = %._crit_edge1064.split.i
  %i.kv = load i32, ptr %i.am, align 8, !tbaa !59
  %.fr1092.i = freeze i32 %i.kv                   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !61
  %i.ky = mul i32 %i.kx, %.fr1092.i               ; 10 uses
  %i.kz = load i32, ptr %i.ag, align 4, !tbaa !54 ; 5 uses
  %i.la = load i32, ptr %i.ai, align 8, !tbaa !65 ; 4 uses
  %i.lb = load i32, ptr %i.cj, align 4, !tbaa !54 ; 2 uses
  %i.lc = load i32, ptr %i.ck, align 16, !tbaa !65 ; 2 uses
  %i.ld = load ptr, ptr %4, align 16, !tbaa !20, !noalias !307
  %i.le = load i64, ptr %i.cm, align 16, !tbaa !21, !noalias !307
  %i.lf = load i64, ptr %i.cf, align 16, !tbaa !55, !noalias !307
  %factor.op.mul1213.i = mul i64 %i.lf, %i.le
  %i.lg = icmp slt i32 %i.lc, 1
  %i.lh = icmp slt i32 %i.lb, 1
  %i.li = icmp sgt i32 %i.ky, 3
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %brmerge1222.i = select i1 %i.lg, i1 true, i1 %i.lh
  br i1 %brmerge1222.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.lm = load ptr, ptr %i.im, align 8, !tbaa !20, !noalias !308
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !21, !noalias !308
  %i.lo = load i64, ptr %i.lk, align 8, !tbaa !55, !noalias !308
  %factor.op.mul1216.i = mul i64 %i.lo, %i.ln
  %i.lp = and i32 %i.ky, -4                       ; 2 uses
  %i.lq = add i32 %i.lp, -4
  %i.lr = zext i32 %i.lq to i64
  %i.ls = add nuw nsw i64 %i.lr, 4
  %i.lt = sext i32 %i.ky to i64
  %i.lu = sext i32 %i.jm to i64
  %i.lv = sext i32 %i.ks to i64
  %i.lw = add nsw i64 %i.lv, %i.lu
  %i.lx = sext i32 %i.iw to i64
  %invariant.op1441.i = add nsw i64 %i.lt, -3
  %i.ly = sext i32 %i.kz to i64                   ; 4 uses
  %i.lz = and i32 %i.ky, -4
  br label %_ZN4ncnn3MatD2Ev.exit450.i

_ZN4ncnn3MatD2Ev.exit457.i:                       ; preds = %._crit_edge1062.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i
  %indvars.iv1326.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i ], [ %indvars.iv.next1327.i, %._crit_edge1062.i ] ; 2 uses
  %i.ma = shl nuw nsw i64 %indvars.iv1326.i, 1
  %i.mb = add nsw i64 %i.ma, %i.kp                ; 4 uses
  %.reass.i = mul i64 %i.mb, %factor.op.mul.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.reass.i
  %i.md = add nsw i64 %i.mb, 1
  %.reass1067.i = mul i64 %i.md, %factor.op.mul.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.reass1067.i
  %i.mf = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not433.i = icmp eq ptr %i.mf, null
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.mb
  %i.mh = trunc nsw i64 %i.mb to i32              ; 2 uses
  %i.mi = sdiv i32 %i.mh, 4
  %i.mj = srem i32 %i.mh, 4
  %.lhs.trunc.i = trunc nsw i32 %i.mj to i8
  %i.mk = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.mk to i32
  %i.ml = add nsw i32 %i.mi, %.sext.i
  %i.mm = sext i32 %i.ml to i64
  %i.mn = load i32, ptr %i.g, align 4
  %.reass1071.i = mul i64 %factor.op.mul1070.i, %i.mm
  %i.mo = getelementptr i8, ptr %i.kh, i64 %.reass1071.i ; 3 uses
  br label %.preheader903.i

.preheader903.i:                                  ; preds = %._crit_edge.i, %_ZN4ncnn3MatD2Ev.exit457.i
  %.03811061.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %.neg879.i, %._crit_edge.i ]
  %.03821060.i = phi ptr [ %i.me, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.xw, %._crit_edge.i ]
  %.03841059.i = phi ptr [ %i.mc, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.xv, %._crit_edge.i ]
  %i.mp = load i32, ptr %i.b, align 4             ; 2 uses
  %i.mq = icmp sgt i32 %i.mp, 0                   ; 3 uses
  %.neg879.i = add nuw nsw i32 %.03811061.i, 1    ; 5 uses
  %i.mr = load i32, ptr %i.k, align 4             ; 3 uses
  %i.ms = shl i32 %i.mr, 3
  %i.mt = sext i32 %i.ms to i64                   ; 2 uses
  %i.mu = shl i32 %i.mr, 2
  %i.mv = sext i32 %i.mu to i64                   ; 3 uses
  %i.mw = shl nsw i32 %i.mr, 1
  %i.mx = sext i32 %i.mw to i64
  %i.my = mul nsw i64 %i.kn, %i.mt
  %scevgep1274.i = getelementptr i8, ptr %i.mo, i64 %i.my
  %wide.trip.count1287.i = zext nneg i32 %i.mp to i64 ; 4 uses
  br label %bb.ay

._crit_edge1062.i:                                ; preds = %._crit_edge.i
  %indvars.iv.next1327.i = add nuw nsw i64 %indvars.iv1326.i, 1 ; 2 uses
  %exitcond1330.not.i = icmp eq i64 %indvars.iv.next1327.i, %wide.trip.count1329.i
  br i1 %exitcond1330.not.i, label %._crit_edge1064.split.i, label %_ZN4ncnn3MatD2Ev.exit457.i, !llvm.loop !262

._crit_edge.i:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i
  %exitcond1325.not.i = icmp eq i32 %.neg879.i, %i.jx
  br i1 %exitcond1325.not.i, label %._crit_edge1062.i, label %.preheader903.i, !llvm.loop !263

bb.ay:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, %.preheader903.i
  %.03801057.i = phi i32 [ 0, %.preheader903.i ], [ %i.xx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 4 uses
  %.13831056.i = phi ptr [ %.03821060.i, %.preheader903.i ], [ %i.xw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  %.13851055.i = phi ptr [ %.03841059.i, %.preheader903.i ], [ %i.xv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  br i1 %.not433.i, label %_ZN4ncnn3MatD2Ev.exit455.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mz = load <2 x float>, ptr %i.mg, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit455.i

_ZN4ncnn3MatD2Ev.exit455.i:                       ; preds = %bb.az, %bb.ay
  %i.na = phi <2 x float> [ %i.mz, %bb.az ], [ zeroinitializer, %bb.ay ]
  br i1 %i.kd, label %.preheader901.lr.ph.i, label %._crit_edge950.i

.preheader901.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit455.i
  %i.nb = load i32, ptr %i.d, align 4             ; 2 uses
  %i.nc = load i32, ptr %i.j, align 4
  %invariant.op931.i = sub i32 %.neg879.i, %i.nc  ; 2 uses
  %i.nd = load i32, ptr %i.f, align 4             ; 4 uses
  %i.ne = load i32, ptr %i.a, align 4
  %.fr1223.i = freeze i32 %i.ne                   ; 2 uses
  %i.nf = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ng = load i32, ptr %i.i, align 4
  %.neg881.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op.i = sub i32 %.neg881.i, %i.ng     ; 2 uses
  %i.nh = load i32, ptr %i.e, align 4             ; 4 uses
  %i.ni = icmp sgt i32 %.fr1223.i, 0
  %or.cond.i = and i1 %i.mq, %i.ni
  br i1 %or.cond.i, label %.preheader901.us.us.preheader.i, label %._crit_edge950.i

.preheader901.us.us.preheader.i:                  ; preds = %.preheader901.lr.ph.i
  %i.nj = zext nneg i32 %.fr1223.i to i64         ; 4 uses
  br label %.preheader901.us.us.i

.preheader901.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.i, %.preheader901.us.us.preheader.i
  %indvars.iv1289.i = phi i64 [ 0, %.preheader901.us.us.preheader.i ], [ %indvars.iv.next1290.i, %._crit_edge.split.us.us.us.i ] ; 6 uses
  %.0345946.us.us.i = phi ptr [ %i.mo, %.preheader901.us.us.preheader.i ], [ %i.qf, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0827945.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader901.us.us.preheader.i ], [ %.us-phi136, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0832944.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader901.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.nk = lshr exact i64 %indvars.iv1289.i, 2
  %i.nl = or disjoint i64 %indvars.iv1289.i, 1
  %i.nm = or disjoint i64 %indvars.iv1289.i, 2
  %i.nn = or disjoint i64 %indvars.iv1289.i, 3
  switch i32 %.fr.i, label %._crit_edge.split.us.us.us.i [
    i32 4, label %.preheader901.us.us.i.split.us
    i32 1, label %.preheader901.us.us.i.split.us137
  ]

.preheader901.us.us.i.split.us:                   ; preds = %.preheader901.us.us.i, %..loopexit898_crit_edge.us.us.us.i.us
  %indvars.iv1284.i.us = phi i64 [ %indvars.iv.next1285.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ 0, %.preheader901.us.us.i ] ; 3 uses
  %.1828927.us.us.us.i.us = phi <4 x float> [ %.4831.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0827945.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %.1833926.us.us.us.i.us = phi <4 x float> [ %.4836.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0832944.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %i.no = trunc i64 %indvars.iv1284.i.us to i32
  %i.np = mul i32 %i.nb, %i.no
  %.reass.us932.us.us.i.us = add i32 %i.np, %invariant.op931.i ; 3 uses
  %i.nq = icmp slt i32 %.reass.us932.us.us.i.us, 0
  br i1 %i.nq, label %..loopexit898_crit_edge.us.us.us.i.us, label %bb.ba

bb.ba:                                            ; preds = %.preheader901.us.us.i.split.us
  %i.nr = srem i32 %.reass.us932.us.us.i.us, %i.nd
  %i.ns = sdiv exact i32 %.reass.us932.us.us.i.us, %i.nd ; 2 uses
  %.not442.us.us.us.i.us = icmp eq i32 %i.nr, 0
  %.not443.us.us.us.i.us = icmp slt i32 %i.ns, %i.jv
  %or.cond = select i1 %.not442.us.us.us.i.us, i1 %.not443.us.us.us.i.us, i1 false
  br i1 %or.cond, label %.preheader897.us.us.us.i.us, label %..loopexit898_crit_edge.us.us.us.i.us

.preheader897.us.us.us.i.us:                      ; preds = %bb.ba
  %i.nt = mul nuw nsw i64 %indvars.iv1284.i.us, %i.nj
  %i.nu = sext i32 %i.ns to i64
  %i.nv = mul nsw i64 %i.nu, %i.kq
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader897.us.us.us.i.us, %bb.bc
  %indvars.iv1279.i.us = phi i64 [ %indvars.iv.next1280.i.us, %bb.bc ], [ 0, %.preheader897.us.us.us.i.us ] ; 3 uses
  %.2829908.us.us.us.us.i.us = phi <4 x float> [ %.3830.us.us.us.us.i.us, %bb.bc ], [ %.1828927.us.us.us.i.us, %.preheader897.us.us.us.i.us ] ; 3 uses
  %.2834907.us.us.us.us.i.us = phi <4 x float> [ %.3835.us.us.us.us.i.us, %bb.bc ], [ %.1833926.us.us.us.i.us, %.preheader897.us.us.us.i.us ] ; 3 uses
  %i.nw = trunc i64 %indvars.iv1279.i.us to i32
  %i.nx = mul i32 %i.nf, %i.nw
  %.reass911.us.us.us.us.i.us = add i32 %i.nx, %invariant.op.i ; 3 uses
  %i.ny = icmp slt i32 %.reass911.us.us.us.us.i.us, 0
  br i1 %i.ny, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.nz = srem i32 %.reass911.us.us.us.us.i.us, %i.nh
  %i.oa = sdiv exact i32 %.reass911.us.us.us.us.i.us, %i.nh ; 2 uses
  %.not444.us.us.us.us.i.us = icmp eq i32 %i.nz, 0
  %.not445.us.us.us.us.i.us = icmp slt i32 %i.oa, %i.ju
  %or.cond298 = select i1 %.not444.us.us.us.us.i.us, i1 %.not445.us.us.us.us.i.us, i1 false
  br i1 %or.cond298, label %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, label %bb.bc

_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us:        ; preds = %bb.bb
  %i.ob = add nuw nsw i64 %indvars.iv1279.i.us, %i.nt
  %i.oc = shl i64 %i.ob, 3
  %i.od = and i64 %i.oc, 4294967288
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0345946.us.us.i, i64 %i.od ; 2 uses
  %i.of = load ptr, ptr %1, align 8, !tbaa !20, !noalias !309
  %i.og = load i64, ptr %i.ke, align 8, !tbaa !21, !noalias !309
  %i.oh = mul i64 %i.og, %i.nk
  %i.oi = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !309 ; 2 uses
  %i.oj = mul i64 %i.oh, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oj
  %i.ol = mul i64 %i.nv, %i.oi
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ol
  %i.on = shl nsw i32 %i.oa, 2
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.oo
  %i.oq = load <4 x float>, ptr %i.op, align 16, !tbaa !80 ; 2 uses
  %i.or = load <4 x float>, ptr %i.oe, align 16, !tbaa !80
  %i.os = fmul fast <4 x float> %i.or, %i.oq
  %i.ot = fadd fast <4 x float> %i.os, %.2834907.us.us.us.us.i.us
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.ov = load <4 x float>, ptr %i.ou, align 16, !tbaa !80
  %i.ow = fmul fast <4 x float> %i.ov, %i.oq
  %i.ox = fadd fast <4 x float> %i.ow, %.2829908.us.us.us.us.i.us
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, %bb.bb, %.lr.ph.split.us.us.us.us.i.us
  %.3835.us.us.us.us.i.us = phi nsz <4 x float> [ %.2834907.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2834907.us.us.us.us.i.us, %bb.bb ], [ %i.ot, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %.3830.us.us.us.us.i.us = phi nsz <4 x float> [ %.2829908.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2829908.us.us.us.us.i.us, %bb.bb ], [ %i.ox, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1280.i.us = add nuw nsw i64 %indvars.iv1279.i.us, 1 ; 2 uses
  %exitcond1283.not.i.us = icmp eq i64 %indvars.iv.next1280.i.us, %i.nj
  br i1 %exitcond1283.not.i.us, label %..loopexit898_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !266

..loopexit898_crit_edge.us.us.us.i.us:            ; preds = %bb.bc, %bb.ba, %.preheader901.us.us.i.split.us
  %.4836.us.us.us.i.us = phi nsz <4 x float> [ %.1833926.us.us.us.i.us, %.preheader901.us.us.i.split.us ], [ %.1833926.us.us.us.i.us, %bb.ba ], [ %.3835.us.us.us.us.i.us, %bb.bc ] ; 2 uses
  %.4831.us.us.us.i.us = phi nsz <4 x float> [ %.1828927.us.us.us.i.us, %.preheader901.us.us.i.split.us ], [ %.1828927.us.us.us.i.us, %bb.ba ], [ %.3830.us.us.us.us.i.us, %bb.bc ] ; 2 uses
  %indvars.iv.next1285.i.us = add nuw nsw i64 %indvars.iv1284.i.us, 1 ; 2 uses
  %exitcond1288.not.i.us = icmp eq i64 %indvars.iv.next1285.i.us, %wide.trip.count1287.i
  br i1 %exitcond1288.not.i.us, label %._crit_edge.split.us.us.us.i, label %.preheader901.us.us.i.split.us, !llvm.loop !267

.preheader901.us.us.i.split.us137:                ; preds = %.preheader901.us.us.i, %..loopexit898_crit_edge.us.us.us.i.us145
  %indvars.iv1284.i.us138 = phi i64 [ %indvars.iv.next1285.i.us148, %..loopexit898_crit_edge.us.us.us.i.us145 ], [ 0, %.preheader901.us.us.i ] ; 3 uses
  %.1828927.us.us.us.i.us139 = phi <4 x float> [ %.4831.us.us.us.i.us147, %..loopexit898_crit_edge.us.us.us.i.us145 ], [ %.0827945.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %.1833926.us.us.us.i.us140 = phi <4 x float> [ %.4836.us.us.us.i.us146, %..loopexit898_crit_edge.us.us.us.i.us145 ], [ %.0832944.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %i.oy = trunc i64 %indvars.iv1284.i.us138 to i32
  %i.oz = mul i32 %i.nb, %i.oy
  %.reass.us932.us.us.i.us141 = add i32 %i.oz, %invariant.op931.i ; 3 uses
  %i.pa = icmp slt i32 %.reass.us932.us.us.i.us141, 0
  br i1 %i.pa, label %..loopexit898_crit_edge.us.us.us.i.us145, label %bb.bd

bb.bd:                                            ; preds = %.preheader901.us.us.i.split.us137
  %i.pb = srem i32 %.reass.us932.us.us.i.us141, %i.nd
  %i.pc = sdiv exact i32 %.reass.us932.us.us.i.us141, %i.nd ; 2 uses
  %.not442.us.us.us.i.us142 = icmp eq i32 %i.pb, 0
  %.not443.us.us.us.i.us143 = icmp slt i32 %i.pc, %i.jv
  %or.cond299 = select i1 %.not442.us.us.us.i.us142, i1 %.not443.us.us.us.i.us143, i1 false
  br i1 %or.cond299, label %.preheader897.us.us.us.i.us144, label %..loopexit898_crit_edge.us.us.us.i.us145

.preheader897.us.us.us.i.us144:                   ; preds = %bb.bd
  %i.pd = mul nuw nsw i64 %indvars.iv1284.i.us138, %i.nj
  %i.pe = sext i32 %i.pc to i64
  %i.pf = mul nsw i64 %i.pe, %i.kq
  br label %.lr.ph.split.us913.us.us.us.i.us

.lr.ph.split.us913.us.us.us.i.us:                 ; preds = %.preheader897.us.us.us.i.us144, %bb.bf
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.bf ], [ 0, %.preheader897.us.us.us.i.us144 ] ; 3 uses
  %.2829908.us915.us.us.us.i.us = phi <4 x float> [ %.3830.us921.us.us.us.i.us, %bb.bf ], [ %.1828927.us.us.us.i.us139, %.preheader897.us.us.us.i.us144 ] ; 3 uses
  %.2834907.us916.us.us.us.i.us = phi <4 x float> [ %.3835.us920.us.us.us.i.us, %bb.bf ], [ %.1833926.us.us.us.i.us140, %.preheader897.us.us.us.i.us144 ] ; 3 uses
  %i.pg = trunc i64 %indvars.iv.i.us to i32
  %i.ph = mul i32 %i.nf, %i.pg
  %.reass911.us917.us.us.us.i.us = add i32 %i.ph, %invariant.op.i ; 3 uses
  %i.pi = icmp slt i32 %.reass911.us917.us.us.us.i.us, 0
  br i1 %i.pi, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.split.us913.us.us.us.i.us
  %i.pj = srem i32 %.reass911.us917.us.us.us.i.us, %i.nh
  %i.pk = sdiv exact i32 %.reass911.us917.us.us.us.i.us, %i.nh ; 2 uses
  %.not444.us918.us.us.us.i.us = icmp eq i32 %i.pj, 0
  %.not445.us919.us.us.us.i.us = icmp slt i32 %i.pk, %i.ju
  %or.cond300 = select i1 %.not444.us918.us.us.us.i.us, i1 %.not445.us919.us.us.us.i.us, i1 false
  br i1 %or.cond300, label %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, label %bb.bf

_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us:        ; preds = %bb.be
  %i.pl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !310
  %i.pm = load i64, ptr %i.ke, align 8, !tbaa !21, !noalias !310
  %i.pn = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !310 ; 2 uses
  %factor.op.mul.us.us.us.us.i.us = mul i64 %i.pn, %i.pm ; 4 uses
  %i.po = mul i64 %i.pf, %i.pn
  %invariant.gep.us.us.us.us.i.us = getelementptr i8, ptr %i.pl, i64 %i.po
  %i.pp = sext i32 %i.pk to i64
  %invariant.gep904.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.us.i.us, i64 %i.pp ; 4 uses
  %.reass.us.us.us.us.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %indvars.iv1289.i
  %gep905.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.i.us
  %i.pq = load float, ptr %gep905.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.01396.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.pq, i64 0
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nl
  %gep905.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.pr = load float, ptr %gep905.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.01396.4.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.0.vec.insert.i.us, float %i.pr, i64 1
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nm
  %gep905.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.ps = load float, ptr %gep905.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.01396.8.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.4.vec.insert.i.us, float %i.ps, i64 2
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nn
  %gep905.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.pt = load float, ptr %gep905.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.01396.12.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.8.vec.insert.i.us, float %i.pt, i64 3 ; 2 uses
  %i.pu = add nuw nsw i64 %indvars.iv.i.us, %i.pd
  %i.pv = shl i64 %i.pu, 3
  %i.pw = and i64 %i.pv, 4294967288
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0345946.us.us.i, i64 %i.pw ; 2 uses
  %i.py = load <4 x float>, ptr %i.px, align 16, !tbaa !80
  %i.pz = fmul fast <4 x float> %i.py, %.sroa.01396.12.vec.insert.i.us
  %i.qa = fadd fast <4 x float> %i.pz, %.2834907.us916.us.us.us.i.us
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.qc = load <4 x float>, ptr %i.qb, align 16, !tbaa !80
  %i.qd = fmul fast <4 x float> %i.qc, %.sroa.01396.12.vec.insert.i.us
  %i.qe = fadd fast <4 x float> %i.qd, %.2829908.us915.us.us.us.i.us
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.be, %.lr.ph.split.us913.us.us.us.i.us
  %.3835.us920.us.us.us.i.us = phi nsz <4 x float> [ %.2834907.us916.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qa, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2834907.us916.us.us.us.i.us, %bb.be ] ; 2 uses
  %.3830.us921.us.us.us.i.us = phi nsz <4 x float> [ %.2829908.us915.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qe, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2829908.us915.us.us.us.i.us, %bb.be ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.nj
  br i1 %exitcond.not.i.us, label %..loopexit898_crit_edge.us.us.us.i.us145, label %.lr.ph.split.us913.us.us.us.i.us, !llvm.loop !266

..loopexit898_crit_edge.us.us.us.i.us145:         ; preds = %bb.bf, %bb.bd, %.preheader901.us.us.i.split.us137
  %.4836.us.us.us.i.us146 = phi nsz <4 x float> [ %.1833926.us.us.us.i.us140, %.preheader901.us.us.i.split.us137 ], [ %.1833926.us.us.us.i.us140, %bb.bd ], [ %.3835.us920.us.us.us.i.us, %bb.bf ] ; 2 uses
  %.4831.us.us.us.i.us147 = phi nsz <4 x float> [ %.1828927.us.us.us.i.us139, %.preheader901.us.us.i.split.us137 ], [ %.1828927.us.us.us.i.us139, %bb.bd ], [ %.3830.us921.us.us.us.i.us, %bb.bf ] ; 2 uses
  %indvars.iv.next1285.i.us148 = add nuw nsw i64 %indvars.iv1284.i.us138, 1 ; 2 uses
  %exitcond1288.not.i.us149 = icmp eq i64 %indvars.iv.next1285.i.us148, %wide.trip.count1287.i
  br i1 %exitcond1288.not.i.us149, label %._crit_edge.split.us.us.us.i, label %.preheader901.us.us.i.split.us137, !llvm.loop !267

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit898_crit_edge.us.us.us.i.us145, %..loopexit898_crit_edge.us.us.us.i.us, %.preheader901.us.us.i
  %.us-phi = phi <4 x float> [ %.4836.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0832944.us.us.i, %.preheader901.us.us.i ], [ %.4836.us.us.us.i.us146, %..loopexit898_crit_edge.us.us.us.i.us145 ] ; 2 uses
  %.us-phi136 = phi <4 x float> [ %.4831.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0827945.us.us.i, %.preheader901.us.us.i ], [ %.4831.us.us.us.i.us147, %..loopexit898_crit_edge.us.us.us.i.us145 ] ; 2 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %.0345946.us.us.i, i64 %i.mt ; 2 uses
  %indvars.iv.next1290.i = add nuw nsw i64 %indvars.iv1289.i, 4 ; 2 uses
  %i.qg = icmp slt i64 %indvars.iv.next1290.i, %invariant.op1440.i
  br i1 %i.qg, label %.preheader901.us.us.i, label %._crit_edge950.i, !llvm.loop !270

._crit_edge950.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader901.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0832.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0827.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi136, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0345.lcssa.i = phi ptr [ %i.mo, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1274.i, %.preheader901.lr.ph.i ], [ %i.qf, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %.0342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.kk, %.preheader901.lr.ph.i ], [ %i.kr, %._crit_edge.split.us.us.us.i ] ; 9 uses
  %i.qh = shufflevector <4 x float> %.0832.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qi = fadd fast <4 x float> %i.qh, %.0832.lcssa.i ; 2 uses
  %i.qj = shufflevector <4 x float> %.0827.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qk = fadd fast <4 x float> %i.qj, %.0827.lcssa.i ; 2 uses
  %i.ql = shufflevector <4 x float> %i.qi, <4 x float> %i.qk, <2 x i32> <i32 1, i32 5>
  %i.qm = fadd fast <2 x float> %i.ql, %i.na
  %i.qn = shufflevector <4 x float> %i.qi, <4 x float> %i.qk, <2 x i32> <i32 0, i32 4>
  %i.qo = fadd fast <2 x float> %i.qm, %i.qn      ; 4 uses
  %i.qp = or disjoint i32 %.0342.lcssa.i, 1
  %i.qq = icmp slt i32 %i.qp, %i.jt
  br i1 %i.qq, label %.preheader900.lr.ph.i, label %.preheader902.i

.preheader900.lr.ph.i:                            ; preds = %._crit_edge950.i
  %i.qr = load i32, ptr %i.d, align 4
  %i.qs = load i32, ptr %i.j, align 4
  %invariant.op985.i = sub i32 %.neg879.i, %i.qs
  %i.qt = load i32, ptr %i.f, align 4             ; 2 uses
  %i.qu = load i32, ptr %i.a, align 4
  %.fr1224.i = freeze i32 %i.qu                   ; 2 uses
  %i.qv = load i32, ptr %i.c, align 4
  %i.qw = load i32, ptr %i.i, align 4
  %.neg877.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op977.i = sub i32 %.neg877.i, %i.qw
  %i.qx = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.mq, label %.preheader900.lr.ph.split.us.i, label %.preheader900.preheader.i

.preheader900.preheader.i:                        ; preds = %.preheader900.lr.ph.i
  %i.qy = or disjoint i32 %.0342.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %i.qy)
  %reass.sub = sub i32 %smax.i, %.0342.lcssa.i
  %i.qz = add i32 %reass.sub, -2                  ; 2 uses
  %i.ra = lshr i32 %i.qz, 1
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 2
  %i.rd = add nuw nsw i64 %i.rc, 4
  %i.re = mul i64 %i.rd, %i.mv
  %scevgep1292.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.re
  %i.rf = or disjoint i32 %.0342.lcssa.i, 2
  %i.rg = and i32 %i.qz, -2
  %i.rh = add i32 %i.rf, %i.rg
  br label %.preheader902.i

.preheader900.lr.ph.split.us.i:                   ; preds = %.preheader900.lr.ph.i
  %i.ri = icmp sgt i32 %.fr1224.i, 0
  br i1 %i.ri, label %.preheader900.us.us.preheader.i, label %.preheader900.us.preheader.i

.preheader900.us.preheader.i:                     ; preds = %.preheader900.lr.ph.split.us.i
  %i.rj = or disjoint i32 %.0342.lcssa.i, 3
  %smax1293.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %i.rj)
  %reass.sub168 = sub i32 %smax1293.i, %.0342.lcssa.i
  %i.rk = add i32 %reass.sub168, -2               ; 2 uses
  %i.rl = lshr i32 %i.rk, 1
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl nuw nsw i64 %i.rm, 2
  %i.ro = add nuw nsw i64 %i.rn, 4
  %i.rp = mul i64 %i.ro, %i.mv
  %scevgep1294.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.rp
  %i.rq = or disjoint i32 %.0342.lcssa.i, 2
  %i.rr = and i32 %i.rk, -2
  %i.rs = add i32 %i.rq, %i.rr
  br label %.preheader902.i

.preheader900.us.us.preheader.i:                  ; preds = %.preheader900.lr.ph.split.us.i
  %i.rt = zext nneg i32 %.fr1224.i to i64         ; 2 uses
  %i.ru = zext i32 %.0342.lcssa.i to i64
  br label %.preheader900.us.us.i

.preheader900.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.us.preheader.i
  %indvars.iv1308.i = phi i64 [ %i.ru, %.preheader900.us.us.preheader.i ], [ %indvars.iv.next1309.i, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %.1346993.us.us.i = phi ptr [ %.0345.lcssa.i, %.preheader900.us.us.preheader.i ], [ %i.tk, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %i.rv = phi <2 x float> [ %i.qo, %.preheader900.us.us.preheader.i ], [ %i.tj, %._crit_edge.split.us.us.us1012.i ]
  %i.rw = or disjoint i64 %indvars.iv1308.i, 1
  br label %bb.bg

bb.bg:                                            ; preds = %..loopexit896_crit_edge.us.us.us.i, %.preheader900.us.us.i
  %indvars.iv1303.i = phi i64 [ %indvars.iv.next1304.i, %..loopexit896_crit_edge.us.us.us.i ], [ 0, %.preheader900.us.us.i ] ; 3 uses
  %i.rx = phi <2 x float> [ %i.tj, %..loopexit896_crit_edge.us.us.us.i ], [ %i.rv, %.preheader900.us.us.i ] ; 3 uses
  %i.ry = trunc i64 %indvars.iv1303.i to i32
  %i.rz = mul i32 %i.qr, %i.ry
  %.reass986.us.us.us.i = add i32 %i.rz, %invariant.op985.i ; 3 uses
  %i.sa = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.sa, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sb = srem i32 %.reass986.us.us.us.i, %i.qt
  %i.sc = sdiv exact i32 %.reass986.us.us.us.i, %i.qt ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.sb, 0
  %.not439.us.us.us.i = icmp slt i32 %i.sc, %i.jv
  %or.cond301 = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond301, label %.preheader895.us.us.us.i, label %..loopexit896_crit_edge.us.us.us.i

.preheader895.us.us.us.i:                         ; preds = %bb.bh
  %i.sd = mul nuw nsw i64 %indvars.iv1303.i, %i.rt
  %i.se = sext i32 %i.sc to i64
  %i.sf = mul nsw i64 %i.se, %i.kq
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit892.us.us.us.i, %.preheader895.us.us.us.i
  %indvars.iv1298.i = phi i64 [ %indvars.iv.next1299.i, %.loopexit892.us.us.us.i ], [ 0, %.preheader895.us.us.us.i ] ; 3 uses
  %i.sg = phi <2 x float> [ %i.ti, %.loopexit892.us.us.us.i ], [ %i.rx, %.preheader895.us.us.us.i ] ; 3 uses
  %i.sh = trunc i64 %indvars.iv1298.i to i32
  %i.si = mul i32 %i.qv, %i.sh
  %.reass978.us.us.us.i = add i32 %invariant.op977.i, %i.si ; 3 uses
  %i.sj = icmp slt i32 %.reass978.us.us.us.i, 0
  br i1 %i.sj, label %.loopexit892.us.us.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sk = srem i32 %.reass978.us.us.us.i, %i.qx
  %i.sl = sdiv exact i32 %.reass978.us.us.us.i, %i.qx ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.sk, 0
  %.not441.us.us.us.i = icmp slt i32 %i.sl, %i.ju
  %or.cond302 = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond302, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit892.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.bj
  %i.sm = add nuw nsw i64 %indvars.iv1298.i, %i.sd
  %i.sn = shl i64 %i.sm, 2
  %i.so = and i64 %i.sn, 4294967292
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.1346993.us.us.i, i64 %i.so
  %i.sq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !311
  %i.sr = load i64, ptr %i.ke, align 8, !tbaa !21, !noalias !311
  %i.ss = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !311 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.ss, %i.sr ; 2 uses
  %i.st = mul i64 %i.sf, %i.ss
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.sq, i64 %i.st
  %i.su = sext i32 %i.sl to i64
  %invariant.gep967.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.su ; 2 uses
  %.reass.us987.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1308.i
  %gep968.us.us.us.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.i
  %i.sv = load float, ptr %gep968.us.us.us.i, align 4, !tbaa !39
  %.reass.us987.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.rw
  %gep968.us.us.us.1.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.1.i
  %i.sw = load float, ptr %gep968.us.us.us.1.i, align 4, !tbaa !39
  %i.sx = load <4 x float>, ptr %i.sp, align 4, !tbaa !39 ; 2 uses
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.sz = insertelement <2 x float> poison, float %i.sv, i64 0
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tb = fmul fast <2 x float> %i.sy, %i.ta
  %i.tc = fadd fast <2 x float> %i.sg, %i.tb
  %i.td = shufflevector <4 x float> %i.sx, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.te = insertelement <2 x float> poison, float %i.sw, i64 0
  %i.tf = shufflevector <2 x float> %i.te, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tg = fmul fast <2 x float> %i.td, %i.tf
  %i.th = fadd fast <2 x float> %i.tg, %i.tc
  br label %.loopexit892.us.us.us.i

.loopexit892.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.bj, %bb.bi
  %i.ti = phi <2 x float> [ %i.sg, %bb.bi ], [ %i.sg, %bb.bj ], [ %i.th, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1299.i = add nuw nsw i64 %indvars.iv1298.i, 1 ; 2 uses
  %exitcond1302.not.i = icmp eq i64 %indvars.iv.next1299.i, %i.rt
  br i1 %exitcond1302.not.i, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bi, !llvm.loop !273

..loopexit896_crit_edge.us.us.us.i:               ; preds = %.loopexit892.us.us.us.i, %bb.bh, %bb.bg
  %i.tj = phi <2 x float> [ %i.rx, %bb.bg ], [ %i.rx, %bb.bh ], [ %i.ti, %.loopexit892.us.us.us.i ] ; 3 uses
  %indvars.iv.next1304.i = add nuw nsw i64 %indvars.iv1303.i, 1 ; 2 uses
  %exitcond1307.not.i = icmp eq i64 %indvars.iv.next1304.i, %wide.trip.count1287.i
  br i1 %exitcond1307.not.i, label %._crit_edge.split.us.us.us1012.i, label %bb.bg, !llvm.loop !274

._crit_edge.split.us.us.us1012.i:                 ; preds = %..loopexit896_crit_edge.us.us.us.i
  %i.tk = getelementptr inbounds [4 x i8], ptr %.1346993.us.us.i, i64 %i.mv ; 2 uses
  %indvars.iv.next1309.i = add nuw nsw i64 %indvars.iv1308.i, 2 ; 2 uses
  %i.tl = trunc i64 %indvars.iv.next1309.i to i32 ; 2 uses
  %i.tm = or i32 %i.tl, 1
  %i.tn = icmp slt i32 %i.tm, %i.jt
  br i1 %i.tn, label %.preheader900.us.us.i, label %.preheader902.i, !llvm.loop !275

.preheader902.i:                                  ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.preheader.i, %.preheader900.preheader.i, %._crit_edge950.i
  %.1346.lcssa.i = phi ptr [ %.0345.lcssa.i, %._crit_edge950.i ], [ %scevgep1292.i, %.preheader900.preheader.i ], [ %scevgep1294.i, %.preheader900.us.preheader.i ], [ %i.tk, %._crit_edge.split.us.us.us1012.i ]
  %.1343.lcssa.i = phi i32 [ %.0342.lcssa.i, %._crit_edge950.i ], [ %i.rh, %.preheader900.preheader.i ], [ %i.rs, %.preheader900.us.preheader.i ], [ %i.tl, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %i.to = phi <2 x float> [ %i.qo, %._crit_edge950.i ], [ %i.qo, %.preheader900.preheader.i ], [ %i.qo, %.preheader900.us.preheader.i ], [ %i.tj, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %i.tp = icmp slt i32 %.1343.lcssa.i, %i.jt
  br i1 %i.tp, label %.preheader899.lr.ph.i, label %._crit_edge1040.i

.preheader899.lr.ph.i:                            ; preds = %.preheader902.i
  %i.tq = load i32, ptr %i.d, align 4
  %i.tr = load i32, ptr %i.j, align 4
  %invariant.op1029.i = sub i32 %.neg879.i, %i.tr
  %i.ts = load i32, ptr %i.f, align 4             ; 2 uses
  %i.tt = load i32, ptr %i.a, align 4
  %.fr1225.i = freeze i32 %i.tt                   ; 2 uses
  %i.tu = load i32, ptr %i.c, align 4
  %i.tv = load i32, ptr %i.i, align 4
  %.neg873.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op1022.i = sub i32 %.neg873.i, %i.tv
  %i.tw = load i32, ptr %i.e, align 4             ; 2 uses
  %i.tx = icmp sgt i32 %.fr1225.i, 0
  %or.cond1442.i = and i1 %i.mq, %i.tx
  br i1 %or.cond1442.i, label %.preheader899.us.us.preheader.i, label %._crit_edge1040.i

.preheader899.us.us.preheader.i:                  ; preds = %.preheader899.lr.ph.i
  %i.ty = zext nneg i32 %.fr1225.i to i64         ; 2 uses
  %i.tz = zext i32 %.1343.lcssa.i to i64
  br label %.preheader899.us.us.i

.preheader899.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1052.i, %.preheader899.us.us.preheader.i
  %indvars.iv1321.i = phi i64 [ %i.tz, %.preheader899.us.us.preheader.i ], [ %indvars.iv.next1322.i, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %.23471037.us.us.i = phi ptr [ %.1346.lcssa.i, %.preheader899.us.us.preheader.i ], [ %i.vk, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %i.ua = phi <2 x float> [ %i.to, %.preheader899.us.us.preheader.i ], [ %i.vj, %._crit_edge.split.us.us.us1052.i ]
  br label %bb.bk

bb.bk:                                            ; preds = %..loopexit894_crit_edge.us.us.us.i, %.preheader899.us.us.i
  %indvars.iv1316.i = phi i64 [ %indvars.iv.next1317.i, %..loopexit894_crit_edge.us.us.us.i ], [ 0, %.preheader899.us.us.i ] ; 3 uses
  %i.ub = phi <2 x float> [ %i.vj, %..loopexit894_crit_edge.us.us.us.i ], [ %i.ua, %.preheader899.us.us.i ] ; 3 uses
  %i.uc = trunc i64 %indvars.iv1316.i to i32
  %i.ud = mul i32 %i.tq, %i.uc
  %.reass1030.us.us.us.i = add i32 %i.ud, %invariant.op1029.i ; 3 uses
  %i.ue = icmp slt i32 %.reass1030.us.us.us.i, 0
  br i1 %i.ue, label %..loopexit894_crit_edge.us.us.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uf = srem i32 %.reass1030.us.us.us.i, %i.ts
  %i.ug = sdiv exact i32 %.reass1030.us.us.us.i, %i.ts ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.uf, 0
  %.not435.us.us.us.i = icmp slt i32 %i.ug, %i.jv
  %or.cond303 = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond303, label %.preheader893.us.us.us.i, label %..loopexit894_crit_edge.us.us.us.i

.preheader893.us.us.us.i:                         ; preds = %bb.bl
  %i.uh = mul nuw nsw i64 %indvars.iv1316.i, %i.ty
  %i.ui = sext i32 %i.ug to i64
  %i.uj = mul nsw i64 %i.ui, %i.kq
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %.preheader893.us.us.us.i
  %indvars.iv1311.i = phi i64 [ %indvars.iv.next1312.i, %bb.bo ], [ 0, %.preheader893.us.us.us.i ] ; 3 uses
  %i.uk = phi <2 x float> [ %i.vi, %bb.bo ], [ %i.ub, %.preheader893.us.us.us.i ] ; 3 uses
  %i.ul = trunc i64 %indvars.iv1311.i to i32
  %i.um = mul i32 %i.tu, %i.ul
  %.reass.us1031.us.us.i = add i32 %invariant.op1022.i, %i.um ; 3 uses
  %i.un = icmp slt i32 %.reass.us1031.us.us.i, 0
  br i1 %i.un, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.uo = srem i32 %.reass.us1031.us.us.i, %i.tw
  %i.up = sdiv exact i32 %.reass.us1031.us.us.i, %i.tw ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.uo, 0
  %.not437.us.us.us.i = icmp slt i32 %i.up, %i.ju
  %or.cond304 = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond304, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.bo

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.bn
  %i.uq = add nuw nsw i64 %indvars.iv1311.i, %i.uh
  %.idx.i = shl nuw nsw i64 %i.uq, 3
  %i.ur = getelementptr inbounds nuw i8, ptr %.23471037.us.us.i, i64 %.idx.i
  %i.us = load ptr, ptr %1, align 8, !tbaa !20, !noalias !312
  %i.ut = load i64, ptr %i.ke, align 8, !tbaa !21, !noalias !312
  %i.uu = mul i64 %i.ut, %indvars.iv1321.i
  %i.uv = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !312 ; 2 uses
  %i.uw = mul i64 %i.uu, %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uw
  %i.uy = mul i64 %i.uj, %i.uv
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uy
  %i.va = sext i32 %i.up to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %i.va
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !39
  %i.vd = load <2 x float>, ptr %i.ur, align 4, !tbaa !39
  %i.ve = insertelement <2 x float> poison, float %i.vc, i64 0
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vg = fmul fast <2 x float> %i.vd, %i.vf
  %i.vh = fadd fast <2 x float> %i.vg, %i.uk
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, %bb.bn, %bb.bm
  %i.vi = phi <2 x float> [ %i.uk, %bb.bm ], [ %i.uk, %bb.bn ], [ %i.vh, %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i ] ; 2 uses
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
  %exitcond1315.not.i = icmp eq i64 %indvars.iv.next1312.i, %i.ty
  br i1 %exitcond1315.not.i, label %..loopexit894_crit_edge.us.us.us.i, label %bb.bm, !llvm.loop !278

..loopexit894_crit_edge.us.us.us.i:               ; preds = %bb.bo, %bb.bl, %bb.bk
  %i.vj = phi <2 x float> [ %i.ub, %bb.bk ], [ %i.ub, %bb.bl ], [ %i.vi, %bb.bo ] ; 3 uses
  %indvars.iv.next1317.i = add nuw nsw i64 %indvars.iv1316.i, 1 ; 2 uses
  %exitcond1320.not.i = icmp eq i64 %indvars.iv.next1317.i, %wide.trip.count1287.i
  br i1 %exitcond1320.not.i, label %._crit_edge.split.us.us.us1052.i, label %bb.bk, !llvm.loop !279

._crit_edge.split.us.us.us1052.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i
  %i.vk = getelementptr inbounds [4 x i8], ptr %.23471037.us.us.i, i64 %i.mx
  %indvars.iv.next1322.i = add nuw nsw i64 %indvars.iv1321.i, 1 ; 2 uses
  %i.vl = trunc nuw i64 %indvars.iv.next1322.i to i32
  %i.vm = icmp sgt i32 %i.jt, %i.vl
  br i1 %i.vm, label %.preheader899.us.us.i, label %._crit_edge1040.i, !llvm.loop !280

._crit_edge1040.i:                                ; preds = %._crit_edge.split.us.us.us1052.i, %.preheader899.lr.ph.i, %.preheader902.i
  %i.vn = phi <2 x float> [ %i.to, %.preheader902.i ], [ %i.to, %.preheader899.lr.ph.i ], [ %i.vj, %._crit_edge.split.us.us.us1052.i ] ; 11 uses
  switch i32 %i.mn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread845.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread848.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread851.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread854.i
    i32 6, label %bb.bp
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread845.i: ; preds = %._crit_edge1040.i
  %i.vo = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vn, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread848.i: ; preds = %._crit_edge1040.i
  %i.vp = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !39
  %i.vr = fcmp fast ogt <2 x float> %i.vn, zeroinitializer
  %i.vs = insertelement <2 x float> poison, float %i.vq, i64 0
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vu = select <2 x i1> %i.vr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vt
  %i.vv = fmul fast <2 x float> %i.vu, %i.vn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i: ; preds = %._crit_edge1040.i
  %i.vw = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.vx = load <2 x float>, ptr %i.vw, align 4, !tbaa !39 ; 4 uses
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vz = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vn, <2 x float> %i.vy) ; 3 uses
  %i.wa = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wb = fcmp fast ogt <2 x float> %i.vz, %i.wa  ; 2 uses
  %i.wc = extractelement <2 x i1> %i.wb, i64 0
  %i.wd = extractelement <2 x float> %i.vz, i64 0
  %i.we = extractelement <2 x float> %i.vx, i64 1
  %.1817844.i = select i1 %i.wc, float %i.we, float %i.wd ; 2 uses
  %i.wf = insertelement <2 x float> %i.vz, float %.1817844.i, i64 0
  %i.wg = extractelement <2 x i1> %i.wb, i64 1
  br i1 %i.wg, label %bb.bs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread851.i: ; preds = %._crit_edge1040.i
  %i.wh = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vn, <2 x float> splat (float f0x42B0C0A5))
  %i.wi = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wh, <2 x float> splat (float f0xC2B0C0A5))
  %i.wj = fneg fast <2 x float> %i.wi
  %i.wk = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.wj)
  %i.wl = fadd fast <2 x float> %i.wk, splat (float 1.000000e+00)
  %i.wm = fdiv fast <2 x float> splat (float 1.000000e+00), %i.wl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread854.i: ; preds = %._crit_edge1040.i
  %i.wn = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.vn)
  %i.wo = fadd fast <2 x float> %i.wn, splat (float 1.000000e+00)
  %i.wp = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.wo)
  %i.wq = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.wp)
  %i.wr = fmul fast <2 x float> %i.wq, %i.vn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

bb.bp:                                            ; preds = %._crit_edge1040.i
  %i.ws = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !39 ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !39 ; 3 uses
  %i.ww = fneg fast float %i.wv
  %i.wx = fdiv fast float %i.ww, %i.wt            ; 4 uses
  %i.wy = extractelement <2 x float> %i.vn, i64 0 ; 5 uses
  %i.wz = fcmp fast olt float %i.wy, %i.wx
  br i1 %i.wz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.xa = fdiv fast float 1.000000e+00, %i.wt
  %i.xb = fadd fast float %i.wx, %i.xa
  %i.xc = fcmp fast ogt float %i.wy, %i.xb
  br i1 %i.xc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xd = fmul fast float %i.wt, %i.wy
  %i.xe = fadd fast float %i.xd, %i.wv
  %i.xf = fmul fast float %i.xe, %i.wy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i

bb.bs:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i
  %i.xg = insertelement <2 x float> %i.vx, float %.1817844.i, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i: ; preds = %bb.br, %bb.bq, %bb.bp
  %.1817838.i = phi float [ %i.xf, %bb.br ], [ 0.000000e+00, %bb.bp ], [ %i.wy, %bb.bq ] ; 2 uses
  %i.xh = extractelement <2 x float> %i.vn, i64 1 ; 4 uses
  %i.xi = fcmp fast olt float %i.xh, %i.wx
  %i.xj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1817838.i, i64 0 ; 2 uses
  br i1 %i.xi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, label %bb.bt

bb.bt:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i
  %i.xk = fdiv fast float 1.000000e+00, %i.wt
  %i.xl = fadd fast float %i.wx, %i.xk
  %i.xm = fcmp fast ogt float %i.xh, %i.xl
  %i.xn = insertelement <2 x float> %i.vn, float %.1817838.i, i64 0
  br i1 %i.xm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.xo = fmul fast float %i.wt, %i.xh
  %i.xp = fadd fast float %i.xo, %i.wv
  %i.xq = fmul fast float %i.xp, %i.xh
  %i.xr = insertelement <2 x float> %i.xj, float %i.xq, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i:      ; preds = %bb.bu, %bb.bt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i, %bb.bs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread854.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread851.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread848.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread845.i, %._crit_edge1040.i
  %i.xs = phi <2 x float> [ %i.xj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i ], [ %i.vo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread845.i ], [ %i.vv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread848.i ], [ %i.xg, %bb.bs ], [ %i.wf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread842.i ], [ %i.wm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread851.i ], [ %i.wr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread854.i ], [ %i.xr, %bb.bu ], [ %i.xn, %bb.bt ], [ %i.vn, %._crit_edge1040.i ] ; 2 uses
  %i.xt = extractelement <2 x float> %i.xs, i64 0
  store float %i.xt, ptr %.13851055.i, align 4, !tbaa !39
  %i.xu = extractelement <2 x float> %i.xs, i64 1
  store float %i.xu, ptr %.13831056.i, align 4, !tbaa !39
  %i.xv = getelementptr inbounds nuw i8, ptr %.13851055.i, i64 4 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.13831056.i, i64 4 ; 2 uses
  %i.xx = add nuw nsw i32 %.03801057.i, 1         ; 2 uses
  %exitcond1324.not.i = icmp eq i32 %i.xx, %i.jw
  br i1 %exitcond1324.not.i, label %._crit_edge.i, label %bb.ay, !llvm.loop !281

_ZN4ncnn3MatD2Ev.exit450.i:                       ; preds = %._crit_edge1210.i, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i
  %indvars.iv1392.i = phi i64 [ %i.lw, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i ], [ %indvars.iv.next1393.i, %._crit_edge1210.i ] ; 4 uses
  %.reass1214.i = mul i64 %factor.op.mul1213.i, %indvars.iv1392.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.reass1214.i
  %i.xz = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i119 = icmp eq ptr %i.xz, null
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.xz, i64 %indvars.iv1392.i
  %i.yb = trunc nsw i64 %indvars.iv1392.i to i32  ; 3 uses
  %i.yc = sdiv i32 %i.yb, 4
  %i.yd = srem i32 %i.yb, 4
  %.lhs.trunc857.i = trunc nsw i32 %i.yd to i8
  %i.ye = sdiv i8 %.lhs.trunc857.i, 2
  %.sext858.i = sext i8 %i.ye to i32
  %i.yf = srem i32 %i.yb, 2
  %i.yg = add nsw i32 %i.yf, %i.yc
  %i.yh = add nsw i32 %i.yg, %.sext858.i
  %i.yi = sext i32 %i.yh to i64
  %i.yj = load i32, ptr %i.g, align 4
  %.reass1217.i = mul i64 %factor.op.mul1216.i, %i.yi
  %i.yk = getelementptr i8, ptr %i.lm, i64 %.reass1217.i ; 3 uses
  br label %.preheader891.i

.preheader891.i:                                  ; preds = %._crit_edge1206.i, %_ZN4ncnn3MatD2Ev.exit450.i
  %.03301209.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit450.i ], [ %.neg867.i, %._crit_edge1206.i ]
  %.03311208.i = phi ptr [ %i.xy, %_ZN4ncnn3MatD2Ev.exit450.i ], [ %i.ahm, %._crit_edge1206.i ]
  %i.yl = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ym = icmp sgt i32 %i.yl, 0                   ; 3 uses
  %.neg867.i = add nuw nsw i32 %.03301209.i, 1    ; 5 uses
  %i.yn = load i32, ptr %i.k, align 4             ; 3 uses
  %i.yo = shl i32 %i.yn, 2
  %i.yp = sext i32 %i.yo to i64                   ; 2 uses
  %i.yq = shl i32 %i.yn, 1
  %i.yr = sext i32 %i.yq to i64                   ; 3 uses
  %i.ys = sext i32 %i.yn to i64
  %i.yt = mul nsw i64 %i.ls, %i.yp
  %scevgep1332.i = getelementptr i8, ptr %i.yk, i64 %i.yt
  %wide.trip.count1352.i = zext nneg i32 %i.yl to i64 ; 4 uses
  br label %bb.bv

._crit_edge1210.i:                                ; preds = %._crit_edge1206.i
  %indvars.iv.next1393.i = add nsw i64 %indvars.iv1392.i, 1 ; 2 uses
  %i.yu = icmp slt i64 %indvars.iv.next1393.i, %i.lx
  br i1 %i.yu, label %_ZN4ncnn3MatD2Ev.exit450.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, !llvm.loop !282

._crit_edge1206.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %exitcond1391.not.i = icmp eq i32 %.neg867.i, %i.lc
  br i1 %exitcond1391.not.i, label %._crit_edge1210.i, label %.preheader891.i, !llvm.loop !283

bb.bv:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, %.preheader891.i
  %.03291205.i = phi i32 [ 0, %.preheader891.i ], [ %i.ahn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 4 uses
  %.13321204.i = phi ptr [ %.03311208.i, %.preheader891.i ], [ %i.ahm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 2 uses
  br i1 %.not.i119, label %_ZN4ncnn3MatD2Ev.exit449.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.yv = load float, ptr %i.ya, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit449.i

_ZN4ncnn3MatD2Ev.exit449.i:                       ; preds = %bb.bw, %bb.bv
  %.0326.i = phi nsz float [ %i.yv, %bb.bw ], [ 0.000000e+00, %bb.bv ]
  br i1 %i.li, label %.preheader889.lr.ph.i, label %._crit_edge1114.i

.preheader889.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit449.i
  %i.yw = load i32, ptr %i.d, align 4             ; 2 uses
  %i.yx = load i32, ptr %i.j, align 4
  %invariant.op1098.i = sub i32 %.neg867.i, %i.yx ; 2 uses
  %i.yy = load i32, ptr %i.f, align 4             ; 4 uses
  %i.yz = load i32, ptr %i.a, align 4
  %.fr1226.i = freeze i32 %i.yz                   ; 2 uses
  %i.za = load i32, ptr %i.c, align 4             ; 2 uses
  %i.zb = load i32, ptr %i.i, align 4
  %.neg869.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1080.i = sub i32 %.neg869.i, %i.zb ; 2 uses
  %i.zc = load i32, ptr %i.e, align 4             ; 4 uses
  %i.zd = icmp sgt i32 %.fr1226.i, 0
  %or.cond1443.i = and i1 %i.ym, %i.zd
  br i1 %or.cond1443.i, label %.preheader889.us.us.preheader.i, label %._crit_edge1114.i

.preheader889.us.us.preheader.i:                  ; preds = %.preheader889.lr.ph.i
  %i.ze = zext nneg i32 %.fr1226.i to i64         ; 4 uses
  br label %.preheader889.us.us.i

.preheader889.us.us.i:                            ; preds = %._crit_edge1096.split.us.us.us.i, %.preheader889.us.us.preheader.i
  %indvars.iv1354.i = phi i64 [ 0, %.preheader889.us.us.preheader.i ], [ %indvars.iv.next1355.i, %._crit_edge1096.split.us.us.us.i ] ; 6 uses
  %.03231110.us.us.i = phi ptr [ %i.yk, %.preheader889.us.us.preheader.i ], [ %i.abs, %._crit_edge1096.split.us.us.us.i ] ; 3 uses
  %.08221109.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader889.us.us.preheader.i ], [ %.us-phi154, %._crit_edge1096.split.us.us.us.i ] ; 3 uses
  %i.zf = lshr exact i64 %indvars.iv1354.i, 2
  %i.zg = or disjoint i64 %indvars.iv1354.i, 1
  %i.zh = or disjoint i64 %indvars.iv1354.i, 2
  %i.zi = or disjoint i64 %indvars.iv1354.i, 3
  switch i32 %.fr1092.i, label %._crit_edge1096.split.us.us.us.i [
    i32 4, label %.preheader889.us.us.i.split.us
    i32 1, label %.preheader889.us.us.i.split.us155
  ]

.preheader889.us.us.i.split.us:                   ; preds = %.preheader889.us.us.i, %..loopexit886_crit_edge.us.us.us.i.us
  %indvars.iv1349.i.us = phi i64 [ %indvars.iv.next1350.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ 0, %.preheader889.us.us.i ] ; 3 uses
  %.18231093.us.us.us.i.us = phi <4 x float> [ %.4826.us.us.us.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ %.08221109.us.us.i, %.preheader889.us.us.i ] ; 3 uses
  %i.zj = trunc i64 %indvars.iv1349.i.us to i32
  %i.zk = mul i32 %i.yw, %i.zj
  %.reass1099.us.us.us.i.us = add i32 %i.zk, %invariant.op1098.i ; 3 uses
  %i.zl = icmp slt i32 %.reass1099.us.us.us.i.us, 0
  br i1 %i.zl, label %..loopexit886_crit_edge.us.us.us.i.us, label %bb.bx

bb.bx:                                            ; preds = %.preheader889.us.us.i.split.us
  %i.zm = srem i32 %.reass1099.us.us.us.i.us, %i.yy
  %i.zn = sdiv exact i32 %.reass1099.us.us.us.i.us, %i.yy ; 2 uses
  %.not429.us.us.us.i.us = icmp eq i32 %i.zm, 0
  %.not430.us.us.us.i.us = icmp slt i32 %i.zn, %i.la
  %or.cond305 = select i1 %.not429.us.us.us.i.us, i1 %.not430.us.us.us.i.us, i1 false
  br i1 %or.cond305, label %.preheader885.us.us.us.i.us, label %..loopexit886_crit_edge.us.us.us.i.us

.preheader885.us.us.us.i.us:                      ; preds = %bb.bx
  %i.zo = mul nuw nsw i64 %indvars.iv1349.i.us, %i.ze
  %i.zp = sext i32 %i.zn to i64
  %i.zq = mul nsw i64 %i.zp, %i.ly
  br label %.lr.ph.split.us.us.us.us1129.i.us

.lr.ph.split.us.us.us.us1129.i.us:                ; preds = %bb.bz, %.preheader885.us.us.us.i.us
  %indvars.iv1344.i.us = phi i64 [ %indvars.iv.next1345.i.us, %bb.bz ], [ 0, %.preheader885.us.us.us.i.us ] ; 3 uses
  %.28241077.us.us.us.us.i.us = phi <4 x float> [ %.3825.us.us.us.us.i.us, %bb.bz ], [ %.18231093.us.us.us.i.us, %.preheader885.us.us.us.i.us ] ; 3 uses
  %i.zr = trunc i64 %indvars.iv1344.i.us to i32
  %i.zs = mul i32 %i.za, %i.zr
  %.reass1081.us.us.us.us.i.us = add i32 %i.zs, %invariant.op1080.i ; 3 uses
  %i.zt = icmp slt i32 %.reass1081.us.us.us.us.i.us, 0
  br i1 %i.zt, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph.split.us.us.us.us1129.i.us
  %i.zu = srem i32 %.reass1081.us.us.us.us.i.us, %i.zc
  %i.zv = sdiv exact i32 %.reass1081.us.us.us.us.i.us, %i.zc ; 2 uses
  %.not431.us.us.us.us.i.us = icmp eq i32 %i.zu, 0
  %.not432.us.us.us.us.i.us = icmp slt i32 %i.zv, %i.kz
  %or.cond306 = select i1 %.not431.us.us.us.us.i.us, i1 %.not432.us.us.us.us.i.us, i1 false
  br i1 %or.cond306, label %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, label %bb.bz

_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us:        ; preds = %bb.by
  %i.zw = add nuw nsw i64 %indvars.iv1344.i.us, %i.zo
  %i.zx = shl i64 %i.zw, 2
  %i.zy = and i64 %i.zx, 4294967292
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.03231110.us.us.i, i64 %i.zy
  %i.aaa = load ptr, ptr %1, align 8, !tbaa !20, !noalias !313
  %i.aab = load i64, ptr %i.lj, align 8, !tbaa !21, !noalias !313
  %i.aac = mul i64 %i.aab, %i.zf
  %i.aad = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !313 ; 2 uses
  %i.aae = mul i64 %i.aac, %i.aad
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.aae
  %i.aag = mul i64 %i.zq, %i.aad
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aag
  %i.aai = shl nsw i32 %i.zv, 2
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.aah, i64 %i.aaj
  %i.aal = load <4 x float>, ptr %i.aak, align 16, !tbaa !80
  %i.aam = load <4 x float>, ptr %i.zz, align 16, !tbaa !80
  %i.aan = fmul fast <4 x float> %i.aam, %i.aal
  %i.aao = fadd fast <4 x float> %i.aan, %.28241077.us.us.us.us.i.us
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, %bb.by, %.lr.ph.split.us.us.us.us1129.i.us
  %.3825.us.us.us.us.i.us = phi nsz <4 x float> [ %.28241077.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us1129.i.us ], [ %.28241077.us.us.us.us.i.us, %bb.by ], [ %i.aao, %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1345.i.us = add nuw nsw i64 %indvars.iv1344.i.us, 1 ; 2 uses
  %exitcond1348.not.i.us = icmp eq i64 %indvars.iv.next1345.i.us, %i.ze
  br i1 %exitcond1348.not.i.us, label %..loopexit886_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us1129.i.us, !llvm.loop !286

..loopexit886_crit_edge.us.us.us.i.us:            ; preds = %bb.bz, %bb.bx, %.preheader889.us.us.i.split.us
  %.4826.us.us.us.i.us = phi nsz <4 x float> [ %.18231093.us.us.us.i.us, %.preheader889.us.us.i.split.us ], [ %.18231093.us.us.us.i.us, %bb.bx ], [ %.3825.us.us.us.us.i.us, %bb.bz ] ; 2 uses
  %indvars.iv.next1350.i.us = add nuw nsw i64 %indvars.iv1349.i.us, 1 ; 2 uses
  %exitcond1353.not.i.us = icmp eq i64 %indvars.iv.next1350.i.us, %wide.trip.count1352.i
  br i1 %exitcond1353.not.i.us, label %._crit_edge1096.split.us.us.us.i, label %.preheader889.us.us.i.split.us, !llvm.loop !287

.preheader889.us.us.i.split.us155:                ; preds = %.preheader889.us.us.i, %..loopexit886_crit_edge.us.us.us.i.us162
  %indvars.iv1349.i.us156 = phi i64 [ %indvars.iv.next1350.i.us164, %..loopexit886_crit_edge.us.us.us.i.us162 ], [ 0, %.preheader889.us.us.i ] ; 3 uses
  %.18231093.us.us.us.i.us157 = phi <4 x float> [ %.4826.us.us.us.i.us163, %..loopexit886_crit_edge.us.us.us.i.us162 ], [ %.08221109.us.us.i, %.preheader889.us.us.i ] ; 3 uses
  %i.aap = trunc i64 %indvars.iv1349.i.us156 to i32
  %i.aaq = mul i32 %i.yw, %i.aap
  %.reass1099.us.us.us.i.us158 = add i32 %i.aaq, %invariant.op1098.i ; 3 uses
  %i.aar = icmp slt i32 %.reass1099.us.us.us.i.us158, 0
  br i1 %i.aar, label %..loopexit886_crit_edge.us.us.us.i.us162, label %bb.ca

bb.ca:                                            ; preds = %.preheader889.us.us.i.split.us155
  %i.aas = srem i32 %.reass1099.us.us.us.i.us158, %i.yy
  %i.aat = sdiv exact i32 %.reass1099.us.us.us.i.us158, %i.yy ; 2 uses
  %.not429.us.us.us.i.us159 = icmp eq i32 %i.aas, 0
  %.not430.us.us.us.i.us160 = icmp slt i32 %i.aat, %i.la
  %or.cond307 = select i1 %.not429.us.us.us.i.us159, i1 %.not430.us.us.us.i.us160, i1 false
  br i1 %or.cond307, label %.preheader885.us.us.us.i.us161, label %..loopexit886_crit_edge.us.us.us.i.us162

.preheader885.us.us.us.i.us161:                   ; preds = %bb.ca
  %i.aau = mul nuw nsw i64 %indvars.iv1349.i.us156, %i.ze
  %i.aav = sext i32 %i.aat to i64
  %i.aaw = mul nsw i64 %i.aav, %i.ly
  br label %.lr.ph.split.us1083.us.us.us.i.us

.lr.ph.split.us1083.us.us.us.i.us:                ; preds = %bb.cc, %.preheader885.us.us.us.i.us161
  %indvars.iv1339.i.us = phi i64 [ %indvars.iv.next1340.i.us, %bb.cc ], [ 0, %.preheader885.us.us.us.i.us161 ] ; 3 uses
  %.28241077.us1085.us.us.us.i.us = phi <4 x float> [ %.3825.us1089.us.us.us.i.us, %bb.cc ], [ %.18231093.us.us.us.i.us157, %.preheader885.us.us.us.i.us161 ] ; 3 uses
  %i.aax = trunc i64 %indvars.iv1339.i.us to i32
  %i.aay = mul i32 %i.za, %i.aax
  %.reass1081.us1086.us.us.us.i.us = add i32 %i.aay, %invariant.op1080.i ; 3 uses
  %i.aaz = icmp slt i32 %.reass1081.us1086.us.us.us.i.us, 0
  br i1 %i.aaz, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us1083.us.us.us.i.us
  %i.aba = srem i32 %.reass1081.us1086.us.us.us.i.us, %i.zc
  %i.abb = sdiv exact i32 %.reass1081.us1086.us.us.us.i.us, %i.zc ; 2 uses
  %.not431.us1087.us.us.us.i.us = icmp eq i32 %i.aba, 0
  %.not432.us1088.us.us.us.i.us = icmp slt i32 %i.abb, %i.kz
  %or.cond308 = select i1 %.not431.us1087.us.us.us.i.us, i1 %.not432.us1088.us.us.us.i.us, i1 false
  br i1 %or.cond308, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.cb
  %i.abc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !314
  %i.abd = load i64, ptr %i.lj, align 8, !tbaa !21, !noalias !314
  %i.abe = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !314 ; 2 uses
  %factor.op.mul1072.us.us.us.us.i.us = mul i64 %i.abe, %i.abd ; 4 uses
  %i.abf = mul i64 %i.aaw, %i.abe
  %invariant.gep.us.us.us1125.us.i.us = getelementptr i8, ptr %i.abc, i64 %i.abf
  %i.abg = sext i32 %i.abb to i64
  %invariant.gep1074.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1125.us.i.us, i64 %i.abg ; 4 uses
  %.reass1073.us.us.us.us.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %indvars.iv1354.i
  %gep1075.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.i.us
  %i.abh = load float, ptr %gep1075.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.abh, i64 0
  %.reass1073.us.us.us.us.1.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zg
  %gep1075.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.1.i.us
  %i.abi = load float, ptr %gep1075.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.abi, i64 1
  %.reass1073.us.us.us.us.2.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zh
  %gep1075.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.2.i.us
  %i.abj = load float, ptr %gep1075.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.abj, i64 2
  %.reass1073.us.us.us.us.3.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zi
  %gep1075.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.3.i.us
  %i.abk = load float, ptr %gep1075.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.abk, i64 3
  %i.abl = add nuw nsw i64 %indvars.iv1339.i.us, %i.aau
  %i.abm = shl i64 %i.abl, 2
  %i.abn = and i64 %i.abm, 4294967292
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %.03231110.us.us.i, i64 %i.abn
  %i.abp = load <4 x float>, ptr %i.abo, align 16, !tbaa !80
  %i.abq = fmul fast <4 x float> %i.abp, %.sroa.0.12.vec.insert.i.us
  %i.abr = fadd fast <4 x float> %i.abq, %.28241077.us1085.us.us.us.i.us
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.cb, %.lr.ph.split.us1083.us.us.us.i.us
  %.3825.us1089.us.us.us.i.us = phi nsz <4 x float> [ %.28241077.us1085.us.us.us.i.us, %.lr.ph.split.us1083.us.us.us.i.us ], [ %i.abr, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28241077.us1085.us.us.us.i.us, %bb.cb ] ; 2 uses
  %indvars.iv.next1340.i.us = add nuw nsw i64 %indvars.iv1339.i.us, 1 ; 2 uses
  %exitcond1343.not.i.us = icmp eq i64 %indvars.iv.next1340.i.us, %i.ze
  br i1 %exitcond1343.not.i.us, label %..loopexit886_crit_edge.us.us.us.i.us162, label %.lr.ph.split.us1083.us.us.us.i.us, !llvm.loop !286

..loopexit886_crit_edge.us.us.us.i.us162:         ; preds = %bb.cc, %bb.ca, %.preheader889.us.us.i.split.us155
  %.4826.us.us.us.i.us163 = phi nsz <4 x float> [ %.18231093.us.us.us.i.us157, %.preheader889.us.us.i.split.us155 ], [ %.18231093.us.us.us.i.us157, %bb.ca ], [ %.3825.us1089.us.us.us.i.us, %bb.cc ] ; 2 uses
  %indvars.iv.next1350.i.us164 = add nuw nsw i64 %indvars.iv1349.i.us156, 1 ; 2 uses
  %exitcond1353.not.i.us165 = icmp eq i64 %indvars.iv.next1350.i.us164, %wide.trip.count1352.i
  br i1 %exitcond1353.not.i.us165, label %._crit_edge1096.split.us.us.us.i, label %.preheader889.us.us.i.split.us155, !llvm.loop !287

._crit_edge1096.split.us.us.us.i:                 ; preds = %..loopexit886_crit_edge.us.us.us.i.us162, %..loopexit886_crit_edge.us.us.us.i.us, %.preheader889.us.us.i
  %.us-phi154 = phi <4 x float> [ %.4826.us.us.us.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ %.08221109.us.us.i, %.preheader889.us.us.i ], [ %.4826.us.us.us.i.us163, %..loopexit886_crit_edge.us.us.us.i.us162 ] ; 2 uses
  %i.abs = getelementptr inbounds [4 x i8], ptr %.03231110.us.us.i, i64 %i.yp ; 2 uses
  %indvars.iv.next1355.i = add nuw nsw i64 %indvars.iv1354.i, 4 ; 2 uses
  %i.abt = icmp slt i64 %indvars.iv.next1355.i, %invariant.op1441.i
  br i1 %i.abt, label %.preheader889.us.us.i, label %._crit_edge1114.i, !llvm.loop !290

._crit_edge1114.i:                                ; preds = %._crit_edge1096.split.us.us.us.i, %.preheader889.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0822.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader889.lr.ph.i ], [ %.us-phi154, %._crit_edge1096.split.us.us.us.i ] ; 2 uses
  %.0323.lcssa.i = phi ptr [ %i.yk, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1332.i, %.preheader889.lr.ph.i ], [ %i.abs, %._crit_edge1096.split.us.us.us.i ] ; 4 uses
  %.0322.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.lp, %.preheader889.lr.ph.i ], [ %i.lz, %._crit_edge1096.split.us.us.us.i ] ; 9 uses
  %i.abu = shufflevector <4 x float> %.0822.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.abv = fadd fast <4 x float> %i.abu, %.0822.lcssa.i ; 2 uses
  %i.abw = extractelement <4 x float> %i.abv, i64 1
  %i.abx = extractelement <4 x float> %i.abv, i64 0
  %i.aby = fadd fast float %i.abw, %.0326.i
  %i.abz = fadd fast float %i.aby, %i.abx         ; 4 uses
  %i.aca = or disjoint i32 %.0322.lcssa.i, 1
  %i.acb = icmp slt i32 %i.aca, %i.ky
  br i1 %i.acb, label %.preheader888.lr.ph.i, label %.preheader890.i

.preheader888.lr.ph.i:                            ; preds = %._crit_edge1114.i
  %i.acc = load i32, ptr %i.d, align 4
  %i.acd = load i32, ptr %i.j, align 4
  %invariant.op1149.i = sub i32 %.neg867.i, %i.acd
  %i.ace = load i32, ptr %i.f, align 4            ; 2 uses
  %i.acf = load i32, ptr %i.a, align 4
  %.fr1227.i = freeze i32 %i.acf                  ; 2 uses
  %i.acg = load i32, ptr %i.c, align 4
  %i.ach = load i32, ptr %i.i, align 4
  %.neg865.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1142.i = sub i32 %.neg865.i, %i.ach
  %i.aci = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.ym, label %.preheader888.lr.ph.split.us.i, label %.preheader888.preheader.i

.preheader888.preheader.i:                        ; preds = %.preheader888.lr.ph.i
  %i.acj = or disjoint i32 %.0322.lcssa.i, 3
  %smax1357.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 %i.acj)
  %reass.sub169 = sub i32 %smax1357.i, %.0322.lcssa.i
  %i.ack = add i32 %reass.sub169, -2              ; 2 uses
  %i.acl = lshr i32 %i.ack, 1
  %i.acm = zext nneg i32 %i.acl to i64
  %i.acn = shl nuw nsw i64 %i.acm, 2
  %i.aco = add nuw nsw i64 %i.acn, 4
  %i.acp = mul i64 %i.aco, %i.yr
  %scevgep1358.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.acp
  %i.acq = or disjoint i32 %.0322.lcssa.i, 2
  %i.acr = and i32 %i.ack, -2
  %i.acs = add i32 %i.acq, %i.acr
  br label %.preheader890.i

.preheader888.lr.ph.split.us.i:                   ; preds = %.preheader888.lr.ph.i
  %i.act = icmp sgt i32 %.fr1227.i, 0
  br i1 %i.act, label %.preheader888.us.us.preheader.i, label %.preheader888.us.preheader.i

.preheader888.us.preheader.i:                     ; preds = %.preheader888.lr.ph.split.us.i
  %i.acu = or disjoint i32 %.0322.lcssa.i, 3
  %smax1359.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 %i.acu)
  %reass.sub170 = sub i32 %smax1359.i, %.0322.lcssa.i
  %i.acv = add i32 %reass.sub170, -2              ; 2 uses
  %i.acw = lshr i32 %i.acv, 1
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = shl nuw nsw i64 %i.acx, 2
  %i.acz = add nuw nsw i64 %i.acy, 4
  %i.ada = mul i64 %i.acz, %i.yr
  %scevgep1360.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.ada
  %i.adb = or disjoint i32 %.0322.lcssa.i, 2
  %i.adc = and i32 %i.acv, -2
  %i.add = add i32 %i.adb, %i.adc
  br label %.preheader890.i

.preheader888.us.us.preheader.i:                  ; preds = %.preheader888.lr.ph.split.us.i
  %i.ade = zext nneg i32 %.fr1227.i to i64        ; 2 uses
  %i.adf = zext i32 %.0322.lcssa.i to i64
  br label %.preheader888.us.us.i

.preheader888.us.us.i:                            ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.us.preheader.i
  %indvars.iv1374.i = phi i64 [ %i.adf, %.preheader888.us.us.preheader.i ], [ %indvars.iv.next1375.i, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.13241154.us.us.i = phi ptr [ %.0323.lcssa.i, %.preheader888.us.us.preheader.i ], [ %i.aek, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %.13271153.us.us.i = phi float [ %i.abz, %.preheader888.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1147.split.us.us.us.i ]
  %i.adg = or disjoint i64 %indvars.iv1374.i, 1
  br label %bb.cd

bb.cd:                                            ; preds = %..loopexit884_crit_edge.us.us.us.i, %.preheader888.us.us.i
  %indvars.iv1369.i = phi i64 [ %indvars.iv.next1370.i, %..loopexit884_crit_edge.us.us.us.i ], [ 0, %.preheader888.us.us.i ] ; 3 uses
  %.23281144.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit884_crit_edge.us.us.us.i ], [ %.13271153.us.us.i, %.preheader888.us.us.i ] ; 3 uses
  %i.adh = trunc i64 %indvars.iv1369.i to i32
  %i.adi = mul i32 %i.acc, %i.adh
  %.reass1150.us.us.us.i = add i32 %i.adi, %invariant.op1149.i ; 3 uses
  %i.adj = icmp slt i32 %.reass1150.us.us.us.i, 0
  br i1 %i.adj, label %..loopexit884_crit_edge.us.us.us.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.adk = srem i32 %.reass1150.us.us.us.i, %i.ace
  %i.adl = sdiv exact i32 %.reass1150.us.us.us.i, %i.ace ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.adk, 0
  %.not426.us.us.us.i = icmp slt i32 %i.adl, %i.la
  %or.cond309 = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond309, label %.preheader883.us.us.us.i, label %..loopexit884_crit_edge.us.us.us.i

.preheader883.us.us.us.i:                         ; preds = %bb.ce
  %i.adm = mul nuw nsw i64 %indvars.iv1369.i, %i.ade
  %i.adn = sext i32 %i.adl to i64
  %i.ado = mul nsw i64 %i.adn, %i.ly
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.us.us.us.i, %.preheader883.us.us.us.i
  %indvars.iv1364.i = phi i64 [ %indvars.iv.next1365.i, %.loopexit.us.us.us.i ], [ 0, %.preheader883.us.us.us.i ] ; 3 uses
  %.31139.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.23281144.us.us.us.i, %.preheader883.us.us.us.i ] ; 3 uses
  %i.adp = trunc i64 %indvars.iv1364.i to i32
  %i.adq = mul i32 %i.acg, %i.adp
  %.reass1143.us.us.us.i = add i32 %invariant.op1142.i, %i.adq ; 3 uses
  %i.adr = icmp slt i32 %.reass1143.us.us.us.i, 0
  br i1 %i.adr, label %.loopexit.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ads = srem i32 %.reass1143.us.us.us.i, %i.aci
  %i.adt = sdiv exact i32 %.reass1143.us.us.us.i, %i.aci ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.ads, 0
  %.not428.us.us.us.i = icmp slt i32 %i.adt, %i.kz
  %or.cond310 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond310, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.cg
  %i.adu = add nuw nsw i64 %indvars.iv1364.i, %i.adm
  %.idx1431.i = shl nuw nsw i64 %i.adu, 3
  %i.adv = getelementptr inbounds nuw i8, ptr %.13241154.us.us.i, i64 %.idx1431.i ; 2 uses
  %i.adw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !315
  %i.adx = load i64, ptr %i.lj, align 8, !tbaa !21, !noalias !315
  %i.ady = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !315 ; 2 uses
  %factor.op.mul1133.us.us.us.i = mul i64 %i.ady, %i.adx ; 2 uses
  %i.adz = mul i64 %i.ado, %i.ady
  %invariant.gep.us.us.us1171.i = getelementptr i8, ptr %i.adw, i64 %i.adz
  %i.aea = sext i32 %i.adt to i64
  %invariant.gep1135.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1171.i, i64 %i.aea ; 2 uses
  %.reass1134.us.us.us.i = mul i64 %factor.op.mul1133.us.us.us.i, %indvars.iv1374.i
  %gep1136.us.us.us.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.i
  %i.aeb = load float, ptr %gep1136.us.us.us.i, align 4, !tbaa !39
  %i.aec = load float, ptr %i.adv, align 4, !tbaa !39
  %i.aed = fmul fast float %i.aec, %i.aeb
  %i.aee = fadd fast float %.31139.us.us.us.i, %i.aed
  %.reass1134.us.us.us.1.i = mul i64 %factor.op.mul1133.us.us.us.i, %i.adg
  %gep1136.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.1.i
  %i.aef = load float, ptr %gep1136.us.us.us.1.i, align 4, !tbaa !39
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !39
  %i.aei = fmul fast float %i.aeh, %i.aef
  %i.aej = fadd fast float %i.aei, %i.aee
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.cg, %bb.cf
  %.6.us.us.us.i = phi nsz float [ %.31139.us.us.us.i, %bb.cf ], [ %.31139.us.us.us.i, %bb.cg ], [ %i.aej, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1365.i = add nuw nsw i64 %indvars.iv1364.i, 1 ; 2 uses
  %exitcond1368.not.i = icmp eq i64 %indvars.iv.next1365.i, %i.ade
  br i1 %exitcond1368.not.i, label %..loopexit884_crit_edge.us.us.us.i, label %bb.cf, !llvm.loop !293

..loopexit884_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.ce, %bb.cd
  %.8.us.us.us.i = phi nsz float [ %.23281144.us.us.us.i, %bb.cd ], [ %.23281144.us.us.us.i, %bb.ce ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1370.i = add nuw nsw i64 %indvars.iv1369.i, 1 ; 2 uses
  %exitcond1373.not.i = icmp eq i64 %indvars.iv.next1370.i, %wide.trip.count1352.i
  br i1 %exitcond1373.not.i, label %._crit_edge1147.split.us.us.us.i, label %bb.cd, !llvm.loop !294

._crit_edge1147.split.us.us.us.i:                 ; preds = %..loopexit884_crit_edge.us.us.us.i
  %i.aek = getelementptr inbounds [4 x i8], ptr %.13241154.us.us.i, i64 %i.yr ; 2 uses
  %indvars.iv.next1375.i = add nuw nsw i64 %indvars.iv1374.i, 2 ; 2 uses
  %i.ael = trunc i64 %indvars.iv.next1375.i to i32 ; 2 uses
  %i.aem = or i32 %i.ael, 1
  %i.aen = icmp slt i32 %i.aem, %i.ky
  br i1 %i.aen, label %.preheader888.us.us.i, label %.preheader890.i, !llvm.loop !295

.preheader890.i:                                  ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.preheader.i, %.preheader888.preheader.i, %._crit_edge1114.i
  %.1327.lcssa.i = phi float [ %i.abz, %._crit_edge1114.i ], [ %i.abz, %.preheader888.preheader.i ], [ %i.abz, %.preheader888.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.1324.lcssa.i = phi ptr [ %.0323.lcssa.i, %._crit_edge1114.i ], [ %scevgep1358.i, %.preheader888.preheader.i ], [ %scevgep1360.i, %.preheader888.us.preheader.i ], [ %i.aek, %._crit_edge1147.split.us.us.us.i ]
  %.1.lcssa.i = phi i32 [ %.0322.lcssa.i, %._crit_edge1114.i ], [ %i.acs, %.preheader888.preheader.i ], [ %i.add, %.preheader888.us.preheader.i ], [ %i.ael, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %i.aeo = icmp slt i32 %.1.lcssa.i, %i.ky
  br i1 %i.aeo, label %.preheader887.lr.ph.i, label %._crit_edge1193.i

.preheader887.lr.ph.i:                            ; preds = %.preheader890.i
  %i.aep = load i32, ptr %i.d, align 4
  %i.aeq = load i32, ptr %i.j, align 4
  %invariant.op1185.i = sub i32 %.neg867.i, %i.aeq
  %i.aer = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aes = load i32, ptr %i.a, align 4
  %.fr1228.i = freeze i32 %i.aes                  ; 2 uses
  %i.aet = load i32, ptr %i.c, align 4
  %i.aeu = load i32, ptr %i.i, align 4
  %.neg861.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1178.i = sub i32 %.neg861.i, %i.aeu
  %i.aev = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aew = icmp sgt i32 %.fr1228.i, 0
  %or.cond1444.i = and i1 %i.ym, %i.aew
  br i1 %or.cond1444.i, label %.preheader887.us.us.preheader.i, label %._crit_edge1193.i

.preheader887.us.us.preheader.i:                  ; preds = %.preheader887.lr.ph.i
  %i.aex = zext nneg i32 %.fr1228.i to i64        ; 2 uses
  %i.aey = zext i32 %.1.lcssa.i to i64
  br label %.preheader887.us.us.i

.preheader887.us.us.i:                            ; preds = %._crit_edge1183.split.us.us.us.i, %.preheader887.us.us.preheader.i
  %indvars.iv1387.i = phi i64 [ %i.aey, %.preheader887.us.us.preheader.i ], [ %indvars.iv.next1388.i, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.23251190.us.us.i = phi ptr [ %.1324.lcssa.i, %.preheader887.us.us.preheader.i ], [ %i.agc, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.91189.us.us.i = phi float [ %.1327.lcssa.i, %.preheader887.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge1183.split.us.us.us.i ]
  br label %bb.ch

bb.ch:                                            ; preds = %..loopexit882_crit_edge.us.us.us.i, %.preheader887.us.us.i
  %indvars.iv1382.i = phi i64 [ %indvars.iv.next1383.i, %..loopexit882_crit_edge.us.us.us.i ], [ 0, %.preheader887.us.us.i ] ; 3 uses
  %.101180.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit882_crit_edge.us.us.us.i ], [ %.91189.us.us.i, %.preheader887.us.us.i ] ; 3 uses
  %i.aez = trunc i64 %indvars.iv1382.i to i32
  %i.afa = mul i32 %i.aep, %i.aez
  %.reass1186.us.us.us.i = add i32 %i.afa, %invariant.op1185.i ; 3 uses
  %i.afb = icmp slt i32 %.reass1186.us.us.us.i, 0
  br i1 %i.afb, label %..loopexit882_crit_edge.us.us.us.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.afc = srem i32 %.reass1186.us.us.us.i, %i.aer
  %i.afd = sdiv exact i32 %.reass1186.us.us.us.i, %i.aer ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.afc, 0
  %.not422.us.us.us.i = icmp slt i32 %i.afd, %i.la
  %or.cond311 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond311, label %.preheader.us.us.us.i, label %..loopexit882_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.ci
  %i.afe = mul nuw nsw i64 %indvars.iv1382.i, %i.aex
  %i.aff = sext i32 %i.afd to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.23251190.us.us.i, i64 %i.afe
  %i.afh = mul nsw i64 %i.aff, %i.ly
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.preheader.us.us.us.i
  %indvars.iv1377.i = phi i64 [ %indvars.iv.next1378.i, %bb.cl ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.111175.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.cl ], [ %.101180.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.afi = trunc i64 %indvars.iv1377.i to i32
  %i.afj = mul i32 %i.aet, %i.afi
  %.reass1179.us.us.us.i = add i32 %invariant.op1178.i, %i.afj ; 3 uses
  %i.afk = icmp slt i32 %.reass1179.us.us.us.i, 0
  br i1 %i.afk, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afl = srem i32 %.reass1179.us.us.us.i, %i.aev
  %i.afm = sdiv exact i32 %.reass1179.us.us.us.i, %i.aev ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.afl, 0
  %.not424.us.us.us.i = icmp slt i32 %i.afm, %i.kz
  %or.cond312 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond312, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.cl

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ck
  %i.afn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !316
  %i.afo = load i64, ptr %i.lj, align 8, !tbaa !21, !noalias !316
  %i.afp = mul i64 %i.afo, %indvars.iv1387.i
  %i.afq = load i64, ptr %i.ak, align 8, !tbaa !55, !noalias !316 ; 2 uses
  %i.afr = mul i64 %i.afp, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.afr
  %i.aft = mul i64 %i.afh, %i.afq
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.aft
  %i.afv = sext i32 %i.afm to i64
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !39
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %indvars.iv1377.i
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !39
  %i.aga = fmul fast float %i.afz, %i.afx
  %i.agb = fadd fast float %i.aga, %.111175.us.us.us.i
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ck, %bb.cj
  %.13.us.us.us.i = phi nsz float [ %.111175.us.us.us.i, %bb.cj ], [ %.111175.us.us.us.i, %bb.ck ], [ %i.agb, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next1378.i = add nuw nsw i64 %indvars.iv1377.i, 1 ; 2 uses
  %exitcond1381.not.i = icmp eq i64 %indvars.iv.next1378.i, %i.aex
  br i1 %exitcond1381.not.i, label %..loopexit882_crit_edge.us.us.us.i, label %bb.cj, !llvm.loop !298

..loopexit882_crit_edge.us.us.us.i:               ; preds = %bb.cl, %bb.ci, %bb.ch
  %.15.us.us.us.i = phi nsz float [ %.101180.us.us.us.i, %bb.ch ], [ %.101180.us.us.us.i, %bb.ci ], [ %.13.us.us.us.i, %bb.cl ] ; 3 uses
  %indvars.iv.next1383.i = add nuw nsw i64 %indvars.iv1382.i, 1 ; 2 uses
  %exitcond1386.not.i = icmp eq i64 %indvars.iv.next1383.i, %wide.trip.count1352.i
  br i1 %exitcond1386.not.i, label %._crit_edge1183.split.us.us.us.i, label %bb.ch, !llvm.loop !299

._crit_edge1183.split.us.us.us.i:                 ; preds = %..loopexit882_crit_edge.us.us.us.i
  %i.agc = getelementptr inbounds [4 x i8], ptr %.23251190.us.us.i, i64 %i.ys
  %indvars.iv.next1388.i = add nuw nsw i64 %indvars.iv1387.i, 1 ; 2 uses
  %i.agd = trunc nuw i64 %indvars.iv.next1388.i to i32
  %i.age = icmp sgt i32 %i.ky, %i.agd
  br i1 %i.age, label %.preheader887.us.us.i, label %._crit_edge1193.i, !llvm.loop !300

._crit_edge1193.i:                                ; preds = %._crit_edge1183.split.us.us.us.i, %.preheader887.lr.ph.i, %.preheader890.i
  %.9.lcssa.i = phi float [ %.1327.lcssa.i, %.preheader890.i ], [ %.1327.lcssa.i, %.preheader887.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge1183.split.us.us.us.i ] ; 13 uses
  switch i32 %i.yj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.cm
    i32 2, label %bb.cn
    i32 3, label %bb.co
    i32 4, label %bb.cq
    i32 5, label %bb.cr
    i32 6, label %bb.cs
  ]

bb.cm:                                            ; preds = %._crit_edge1193.i
  %i.agf = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cn:                                            ; preds = %._crit_edge1193.i
  %i.agg = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !39
  %i.agi = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.agj = select fast i1 %i.agi, float 1.000000e+00, float %i.agh
  %i.agk = fmul fast float %i.agj, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.co:                                            ; preds = %._crit_edge1193.i
  %i.agl = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !39
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !39 ; 2 uses
  %.0820.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.agm) ; 2 uses
  %i.agp = fcmp fast ogt float %.0820.i, %i.ago
  br i1 %i.agp, label %bb.cp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cp:                                            ; preds = %bb.co
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cq:                                            ; preds = %._crit_edge1193.i
  %.sroa.speculated777.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated777.i, float f0xC2B0C0A5)
  %i.agq = fneg fast float %.sroa.speculated.i
  %i.agr = call fast float @llvm.exp.f32(float %i.agq)
  %i.ags = fadd fast float %i.agr, 1.000000e+00
  %i.agt = fdiv fast float 1.000000e+00, %i.ags
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cr:                                            ; preds = %._crit_edge1193.i
  %i.agu = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.agv = fadd fast float %i.agu, 1.000000e+00
  %i.agw = call fast float @llvm.log.f32(float %i.agv)
  %i.agx = call fast float @llvm.tanh.f32(float %i.agw)
  %i.agy = fmul fast float %i.agx, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.cs:                                            ; preds = %._crit_edge1193.i
  %i.agz = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !39 ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 4
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !39 ; 2 uses
  %i.ahd = fneg fast float %i.ahc
  %i.ahe = fdiv fast float %i.ahd, %i.aha         ; 2 uses
  %i.ahf = fcmp fast olt float %.9.lcssa.i, %i.ahe
  br i1 %i.ahf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ahg = fdiv fast float 1.000000e+00, %i.aha
  %i.ahh = fadd fast float %i.ahe, %i.ahg
  %i.ahi = fcmp fast ogt float %.9.lcssa.i, %i.ahh
  br i1 %i.ahi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ahj = fmul fast float %i.aha, %.9.lcssa.i
  %i.ahk = fadd fast float %i.ahj, %i.ahc
  %i.ahl = fmul fast float %i.ahk, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %._crit_edge1193.i
  %.1821.i = phi nsz float [ %.9.lcssa.i, %._crit_edge1193.i ], [ %i.agf, %bb.cm ], [ %i.agk, %bb.cn ], [ %i.ago, %bb.cp ], [ %.0820.i, %bb.co ], [ %i.agt, %bb.cq ], [ %i.agy, %bb.cr ], [ %i.ahl, %bb.cu ], [ %.9.lcssa.i, %bb.ct ], [ 0.000000e+00, %bb.cs ]
  store float %.1821.i, ptr %.13321204.i, align 4, !tbaa !39
  %i.ahm = getelementptr inbounds nuw i8, ptr %.13321204.i, i64 4 ; 2 uses
  %i.ahn = add nuw nsw i32 %.03291205.i, 1        ; 2 uses
  %exitcond1390.not.i = icmp eq i32 %i.ahn, %i.lb
  br i1 %exitcond1390.not.i, label %._crit_edge1206.i, label %bb.bv, !llvm.loop !301

_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit: ; preds = %._crit_edge1210.i, %._crit_edge1064.split.i, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cw
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit68, %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit
  invoke void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cx unwind label %bb.cv

bb.cx:                                            ; preds = %bb.cw
  %i.ahp = load ptr, ptr %2, align 8, !tbaa !20
  %i.ahq = icmp eq ptr %i.ahp, null
  br i1 %i.ahq, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.cx
  %i.ahr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !21
  %i.aht = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ahu = load i32, ptr %i.aht, align 8, !tbaa !61
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = mul i64 %i.ahs, %i.ahv
  %.fr = freeze i64 %i.ahw
  %i.ahx = icmp eq i64 %.fr, 0
  br i1 %i.ahx, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.dk

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.cx, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %bb.dk

.critedge:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.ahy = load ptr, ptr %i.fw, align 8, !tbaa !18 ; 2 uses
  %.not.i91 = icmp eq ptr %i.ahy, null
  br i1 %.not.i91, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.cy

bb.cy:                                            ; preds = %.critedge
  %i.ahz = atomicrmw add ptr %i.ahy, i32 -1 acq_rel, align 4
  %i.aia = icmp eq i32 %i.ahz, 1
  br i1 %i.aia, label %bb.cz, label %_ZN4ncnn3MatD2Ev.exit64

bb.cz:                                            ; preds = %bb.cy
  %i.aib = load ptr, ptr %i.fx, align 8, !tbaa !19 ; 3 uses
  %.not3.i92 = icmp eq ptr %i.aib, null
  %i.aic = load ptr, ptr %6, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i92, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aid = load ptr, ptr %i.aib, align 8, !tbaa !12
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 24
  %i.aif = load ptr, ptr %i.aie, align 8
  invoke void %i.aif(ptr noundef nonnull align 8 dereferenceable(8) %i.aib, ptr noundef %i.aic)
          to label %_ZN4ncnn3MatD2Ev.exit64 unwind label %bb.dd, !inline_history !0

bb.db:                                            ; preds = %bb.cz
  %.not.i100 = icmp eq ptr %i.aic, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @free(ptr noundef nonnull %i.aic) #10
  br label %_ZN4ncnn3MatD2Ev.exit64
end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
  %i.fs = load ptr, ptr %4, align 16, !tbaa !20, !noalias !409 ; 2 uses
  %i.ft = load i64, ptr %i.bp, align 16, !tbaa !21, !noalias !409
  %i.fu = load i64, ptr %i.bi, align 16, !tbaa !55, !noalias !409
  %factor.op.mul.i = mul i64 %i.fu, %i.ft         ; 2 uses
  %i.fv = icmp slt i32 %i.fr, 1
  %i.fw = icmp slt i32 %i.fq, 1
  %i.fx = icmp sgt i32 %i.fn, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge.i = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %brmerge.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gc = load ptr, ptr %i.dz, align 8, !tbaa !20, !noalias !410
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !21, !noalias !410
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !55, !noalias !410
  %factor.op.mul1078.i = mul i64 %i.ge, %i.gd
  %i.gf = add i32 %i.fn, -4                       ; 2 uses
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = and i32 %i.gg, 2147483646
  %narrow.i = add nuw i32 %i.gh, 2
  %i.gi = zext i32 %narrow.i to i64
  %i.gj = and i32 %i.gf, -4
  %i.gk = add nuw i32 %i.gj, 4
  %i.gl = sext i32 %i.fn to i64
  %i.gm = sext i32 %i.ff to i64
  %wide.trip.count1337.i = zext nneg i32 %i.fh to i64
  %invariant.op1449.i = add nsw i64 %i.gl, -3
  %i.gn = sext i32 %i.fo to i64                   ; 4 uses
  %i.go = and i32 %i.fn, -4
  br label %_ZN4ncnn3MatD2Ev.exit457.i

._crit_edge1072.split.i:                          ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, %bb.u
  %i.gp = shl nsw i32 %i.fh, 1                    ; 2 uses
  %i.gq = add nsw i32 %i.gp, %i.ff
  %i.gr = icmp slt i32 %i.gq, %i.en
  br i1 %i.gr, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit450.lr.ph.i:                 ; preds = %._crit_edge1072.split.i
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !59
  %.fr1100.i = freeze i32 %i.gt                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !61
  %i.gw = mul i32 %i.gv, %.fr1100.i               ; 10 uses
  %i.gx = load i32, ptr %i.o, align 4, !tbaa !54  ; 5 uses
  %i.gy = load i32, ptr %i.q, align 8, !tbaa !65  ; 4 uses
  %i.gz = load i32, ptr %i.bm, align 4, !tbaa !54 ; 2 uses
  %i.ha = load i32, ptr %i.bn, align 16, !tbaa !65 ; 2 uses
  %i.hb = load ptr, ptr %4, align 16, !tbaa !20, !noalias !411
  %i.hc = load i64, ptr %i.bp, align 16, !tbaa !21, !noalias !411
  %i.hd = load i64, ptr %i.bi, align 16, !tbaa !55, !noalias !411
  %factor.op.mul1221.i = mul i64 %i.hd, %i.hc
  %i.he = icmp slt i32 %i.ha, 1
  %i.hf = icmp slt i32 %i.gz, 1
  %i.hg = icmp sgt i32 %i.gw, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge1230.i = select i1 %i.he, i1 true, i1 %i.hf
  br i1 %brmerge1230.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hl = load ptr, ptr %i.dz, align 8, !tbaa !20, !noalias !412
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !21, !noalias !412
  %i.hn = load i64, ptr %i.hj, align 8, !tbaa !55, !noalias !412
  %factor.op.mul1224.i = mul i64 %i.hn, %i.hm
  %i.ho = add i32 %i.gw, -4                       ; 2 uses
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = and i32 %i.hp, 2147483646
  %narrow1439.i = add nuw i32 %i.hq, 2
  %i.hr = zext i32 %narrow1439.i to i64
  %i.hs = and i32 %i.ho, -4
  %i.ht = add nuw i32 %i.hs, 4
  %i.hu = sext i32 %i.gw to i64
  %i.hv = sext i32 %i.ff to i64
  %i.hw = sext i32 %i.gp to i64
  %i.hx = add nsw i64 %i.hw, %i.hv
  %i.hy = sext i32 %i.en to i64
  %invariant.op1450.i = add nsw i64 %i.hu, -3
  %i.hz = sext i32 %i.gx to i64                   ; 4 uses
  %i.ia = and i32 %i.gw, -4
  br label %_ZN4ncnn3MatD2Ev.exit450.i

_ZN4ncnn3MatD2Ev.exit457.i:                       ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i
  %indvars.iv1334.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i ], [ %indvars.iv.next1335.i, %._crit_edge1070.i ] ; 2 uses
  %i.ib = shl nuw nsw i64 %indvars.iv1334.i, 1
  %i.ic = add nsw i64 %i.ib, %i.gm                ; 4 uses
  %.reass.i = mul i64 %i.ic, %factor.op.mul.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass.i
  %i.ie = add nsw i64 %i.ic, 1
  %.reass1075.i = mul i64 %i.ie, %factor.op.mul.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass1075.i
  %i.ig = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not433.i = icmp eq ptr %i.ig, null
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ic
  %i.ii = trunc nsw i64 %i.ic to i32              ; 2 uses
  %i.ij = sdiv i32 %i.ii, 4
  %i.ik = srem i32 %i.ii, 4
  %.lhs.trunc.i = trunc nsw i32 %i.ik to i8
  %i.il = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.il to i32
  %i.im = add nsw i32 %i.ij, %.sext.i
  %i.in = sext i32 %i.im to i64
  %i.io = load i32, ptr %i.g, align 4
  %.reass1079.i = mul i64 %factor.op.mul1078.i, %i.in
  %i.ip = getelementptr i8, ptr %i.gc, i64 %.reass1079.i ; 3 uses
  br label %.preheader911.i

.preheader911.i:                                  ; preds = %._crit_edge.i, %_ZN4ncnn3MatD2Ev.exit457.i
  %.03811069.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %.neg887.i, %._crit_edge.i ]
  %.03821068.i = phi ptr [ %i.if, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vh, %._crit_edge.i ]
  %.03841067.i = phi ptr [ %i.id, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vg, %._crit_edge.i ]
  %i.iq = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, 0                   ; 3 uses
  %.neg887.i = add nuw nsw i32 %.03811069.i, 1    ; 5 uses
  %i.is = load i32, ptr %i.k, align 4             ; 3 uses
  %i.it = shl i32 %i.is, 3
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = shl i32 %i.is, 2
  %i.iw = sext i32 %i.iv to i64                   ; 3 uses
  %i.ix = shl nsw i32 %i.is, 1
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul nsw i64 %i.iu, %i.gi
  %scevgep1282.i = getelementptr i8, ptr %i.ip, i64 %i.iz
  %wide.trip.count1295.i = zext nneg i32 %i.iq to i64 ; 4 uses
  br label %bb.v

._crit_edge1070.i:                                ; preds = %._crit_edge.i
  %indvars.iv.next1335.i = add nuw nsw i64 %indvars.iv1334.i, 1 ; 2 uses
  %exitcond1338.not.i = icmp eq i64 %indvars.iv.next1335.i, %wide.trip.count1337.i
  br i1 %exitcond1338.not.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.i, !llvm.loop !369

._crit_edge.i:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i
  %exitcond1333.not.i = icmp eq i32 %.neg887.i, %i.fr
  br i1 %exitcond1333.not.i, label %._crit_edge1070.i, label %.preheader911.i, !llvm.loop !370

bb.v:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, %.preheader911.i
  %.03801065.i = phi i32 [ 0, %.preheader911.i ], [ %i.vi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 4 uses
  %.13831064.i = phi ptr [ %.03821068.i, %.preheader911.i ], [ %i.vh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  %.13851063.i = phi ptr [ %.03841067.i, %.preheader911.i ], [ %i.vg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  br i1 %.not433.i, label %_ZN4ncnn3MatD2Ev.exit455.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ja = load <2 x float>, ptr %i.ih, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit455.i

_ZN4ncnn3MatD2Ev.exit455.i:                       ; preds = %bb.w, %bb.v
  %i.jb = phi <2 x float> [ %i.ja, %bb.w ], [ zeroinitializer, %bb.v ]
  br i1 %i.fx, label %.preheader909.lr.ph.i, label %._crit_edge958.i

.preheader909.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit455.i
  %i.jc = load i32, ptr %i.d, align 4             ; 2 uses
  %i.jd = load i32, ptr %i.j, align 4
  %invariant.op939.i = sub i32 %.neg887.i, %i.jd  ; 2 uses
  %i.je = load i32, ptr %i.f, align 4             ; 4 uses
  %i.jf = load i32, ptr %i.a, align 4
  %.fr1231.i = freeze i32 %i.jf                   ; 2 uses
  %i.jg = load i32, ptr %i.c, align 4             ; 2 uses
  %i.jh = load i32, ptr %i.i, align 4
  %.neg889.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op.i = sub i32 %.neg889.i, %i.jh     ; 2 uses
  %i.ji = load i32, ptr %i.e, align 4             ; 4 uses
  %i.jj = icmp sgt i32 %.fr1231.i, 0
  %or.cond.i = and i1 %i.ir, %i.jj
  br i1 %or.cond.i, label %.preheader909.us.us.preheader.i, label %._crit_edge958.i

.preheader909.us.us.preheader.i:                  ; preds = %.preheader909.lr.ph.i
  %i.jk = zext nneg i32 %.fr1231.i to i64         ; 4 uses
  br label %.preheader909.us.us.i

.preheader909.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.us.us.preheader.i
  %indvars.iv1297.i = phi i64 [ 0, %.preheader909.us.us.preheader.i ], [ %indvars.iv.next1298.i, %._crit_edge.split.us.us.us.i ] ; 6 uses
  %.0345954.us.us.i = phi ptr [ %i.ip, %.preheader909.us.us.preheader.i ], [ %i.ng, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0835953.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0840952.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.jl = lshr exact i64 %indvars.iv1297.i, 2
  %i.jm = or disjoint i64 %indvars.iv1297.i, 1
  %i.jn = or disjoint i64 %indvars.iv1297.i, 2
  %i.jo = or disjoint i64 %indvars.iv1297.i, 3
  switch i32 %.fr.i, label %._crit_edge.split.us.us.us.i [
    i32 4, label %.preheader909.us.us.i.split.us
    i32 1, label %.preheader909.us.us.i.split.us61
  ]

.preheader909.us.us.i.split.us:                   ; preds = %.preheader909.us.us.i, %..loopexit906_crit_edge.us.us.us.i.us
  %indvars.iv1292.i.us = phi i64 [ %indvars.iv.next1293.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ 0, %.preheader909.us.us.i ] ; 3 uses
  %.1836935.us.us.us.i.us = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %.1841934.us.us.us.i.us = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %i.jp = trunc i64 %indvars.iv1292.i.us to i32
  %i.jq = mul i32 %i.jc, %i.jp
  %.reass.us940.us.us.i.us = add i32 %i.jq, %invariant.op939.i ; 3 uses
  %i.jr = icmp slt i32 %.reass.us940.us.us.i.us, 0
  br i1 %i.jr, label %..loopexit906_crit_edge.us.us.us.i.us, label %bb.x

bb.x:                                             ; preds = %.preheader909.us.us.i.split.us
  %i.js = srem i32 %.reass.us940.us.us.i.us, %i.je
  %i.jt = sdiv exact i32 %.reass.us940.us.us.i.us, %i.je ; 2 uses
  %.not442.us.us.us.i.us = icmp eq i32 %i.js, 0
  %.not443.us.us.us.i.us = icmp slt i32 %i.jt, %i.fp
  %or.cond = select i1 %.not442.us.us.us.i.us, i1 %.not443.us.us.us.i.us, i1 false
  br i1 %or.cond, label %.preheader905.us.us.us.i.us, label %..loopexit906_crit_edge.us.us.us.i.us

.preheader905.us.us.us.i.us:                      ; preds = %bb.x
  %i.ju = mul nuw nsw i64 %indvars.iv1292.i.us, %i.jk
  %i.jv = sext i32 %i.jt to i64
  %i.jw = mul nsw i64 %i.jv, %i.gn
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader905.us.us.us.i.us, %bb.z
  %indvars.iv1287.i.us = phi i64 [ %indvars.iv.next1288.i.us, %bb.z ], [ 0, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2837916.us.us.us.us.i.us = phi <4 x float> [ %.3838.us.us.us.us.i.us, %bb.z ], [ %.1836935.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2842915.us.us.us.us.i.us = phi <4 x float> [ %.3843.us.us.us.us.i.us, %bb.z ], [ %.1841934.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %i.jx = trunc i64 %indvars.iv1287.i.us to i32
  %i.jy = mul i32 %i.jg, %i.jx
  %.reass919.us.us.us.us.i.us = add i32 %i.jy, %invariant.op.i ; 3 uses
  %i.jz = icmp slt i32 %.reass919.us.us.us.us.i.us, 0
  br i1 %i.jz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.ka = srem i32 %.reass919.us.us.us.us.i.us, %i.ji
  %i.kb = sdiv exact i32 %.reass919.us.us.us.us.i.us, %i.ji ; 2 uses
  %.not444.us.us.us.us.i.us = icmp eq i32 %i.ka, 0
  %.not445.us.us.us.us.i.us = icmp slt i32 %i.kb, %i.fo
  %or.cond197 = select i1 %.not444.us.us.us.us.i.us, i1 %.not445.us.us.us.us.i.us, i1 false
  br i1 %or.cond197, label %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, label %bb.z

_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us:        ; preds = %bb.y
  %i.kc = add nuw nsw i64 %indvars.iv1287.i.us, %i.ju
  %i.kd = shl i64 %i.kc, 3
  %i.ke = and i64 %i.kd, 4294967288
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %.0345954.us.us.i, i64 %i.ke ; 2 uses
  %i.kg = load ptr, ptr %1, align 8, !tbaa !20, !noalias !413
  %i.kh = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !413
  %i.ki = mul i64 %i.kh, %i.jl
  %i.kj = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !413 ; 2 uses
  %i.kk = mul i64 %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kk
  %i.km = mul i64 %i.jw, %i.kj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km
  %i.ko = shl nsw i32 %i.kb, 2
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 1, !tbaa !80
  %i.ks = insertelement <2 x i64> poison, i64 %i.kr, i64 0
  %i.kt = bitcast <2 x i64> %i.ks to <8 x i16>
  %i.ku = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kv = bitcast <8 x i16> %i.ku to <4 x float>  ; 2 uses
  %i.kw = load i64, ptr %i.kf, align 1, !tbaa !80
  %i.kx = insertelement <2 x i64> poison, i64 %i.kw, i64 0
  %i.ky = bitcast <2 x i64> %i.kx to <8 x i16>
  %i.kz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ky, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.la = bitcast <8 x i16> %i.kz to <4 x float>
  %i.lb = fmul fast <4 x float> %i.la, %i.kv
  %i.lc = fadd fast <4 x float> %i.lb, %.2837916.us.us.us.us.i.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.le = load i64, ptr %i.ld, align 1, !tbaa !80
  %i.lf = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %i.lg = bitcast <2 x i64> %i.lf to <8 x i16>
  %i.lh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.li = bitcast <8 x i16> %i.lh to <4 x float>
  %i.lj = fmul fast <4 x float> %i.li, %i.kv
  %i.lk = fadd fast <4 x float> %i.lj, %.2842915.us.us.us.us.i.us
  br label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, %bb.y, %.lr.ph.split.us.us.us.us.i.us
  %.3843.us.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2842915.us.us.us.us.i.us, %bb.y ], [ %i.lk, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %.3838.us.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2837916.us.us.us.us.i.us, %bb.y ], [ %i.lc, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1288.i.us = add nuw nsw i64 %indvars.iv1287.i.us, 1 ; 2 uses
  %exitcond1291.not.i.us = icmp eq i64 %indvars.iv.next1288.i.us, %i.jk
  br i1 %exitcond1291.not.i.us, label %..loopexit906_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !373

..loopexit906_crit_edge.us.us.us.i.us:            ; preds = %bb.z, %bb.x, %.preheader909.us.us.i.split.us
  %.4844.us.us.us.i.us = phi nsz <4 x float> [ %.1841934.us.us.us.i.us, %.preheader909.us.us.i.split.us ], [ %.1841934.us.us.us.i.us, %bb.x ], [ %.3843.us.us.us.us.i.us, %bb.z ] ; 2 uses
  %.4839.us.us.us.i.us = phi nsz <4 x float> [ %.1836935.us.us.us.i.us, %.preheader909.us.us.i.split.us ], [ %.1836935.us.us.us.i.us, %bb.x ], [ %.3838.us.us.us.us.i.us, %bb.z ] ; 2 uses
  %indvars.iv.next1293.i.us = add nuw nsw i64 %indvars.iv1292.i.us, 1 ; 2 uses
  %exitcond1296.not.i.us = icmp eq i64 %indvars.iv.next1293.i.us, %wide.trip.count1295.i
  br i1 %exitcond1296.not.i.us, label %._crit_edge.split.us.us.us.i, label %.preheader909.us.us.i.split.us, !llvm.loop !374

.preheader909.us.us.i.split.us61:                 ; preds = %.preheader909.us.us.i, %..loopexit906_crit_edge.us.us.us.i.us69
  %indvars.iv1292.i.us62 = phi i64 [ %indvars.iv.next1293.i.us72, %..loopexit906_crit_edge.us.us.us.i.us69 ], [ 0, %.preheader909.us.us.i ] ; 3 uses
  %.1836935.us.us.us.i.us63 = phi <4 x float> [ %.4839.us.us.us.i.us71, %..loopexit906_crit_edge.us.us.us.i.us69 ], [ %.0835953.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %.1841934.us.us.us.i.us64 = phi <4 x float> [ %.4844.us.us.us.i.us70, %..loopexit906_crit_edge.us.us.us.i.us69 ], [ %.0840952.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %i.ll = trunc i64 %indvars.iv1292.i.us62 to i32
  %i.lm = mul i32 %i.jc, %i.ll
  %.reass.us940.us.us.i.us65 = add i32 %i.lm, %invariant.op939.i ; 3 uses
  %i.ln = icmp slt i32 %.reass.us940.us.us.i.us65, 0
  br i1 %i.ln, label %..loopexit906_crit_edge.us.us.us.i.us69, label %bb.aa

bb.aa:                                            ; preds = %.preheader909.us.us.i.split.us61
  %i.lo = srem i32 %.reass.us940.us.us.i.us65, %i.je
  %i.lp = sdiv exact i32 %.reass.us940.us.us.i.us65, %i.je ; 2 uses
  %.not442.us.us.us.i.us66 = icmp eq i32 %i.lo, 0
  %.not443.us.us.us.i.us67 = icmp slt i32 %i.lp, %i.fp
  %or.cond198 = select i1 %.not442.us.us.us.i.us66, i1 %.not443.us.us.us.i.us67, i1 false
  br i1 %or.cond198, label %.preheader905.us.us.us.i.us68, label %..loopexit906_crit_edge.us.us.us.i.us69

.preheader905.us.us.us.i.us68:                    ; preds = %bb.aa
  %i.lq = mul nuw nsw i64 %indvars.iv1292.i.us62, %i.jk
  %i.lr = sext i32 %i.lp to i64
  %i.ls = mul nsw i64 %i.lr, %i.gn
  br label %.lr.ph.split.us921.us.us.us.i.us

.lr.ph.split.us921.us.us.us.i.us:                 ; preds = %.preheader905.us.us.us.i.us68, %bb.ac
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.ac ], [ 0, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %.2837916.us923.us.us.us.i.us = phi <4 x float> [ %.3838.us929.us.us.us.i.us, %bb.ac ], [ %.1836935.us.us.us.i.us63, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %.2842915.us924.us.us.us.i.us = phi <4 x float> [ %.3843.us928.us.us.us.i.us, %bb.ac ], [ %.1841934.us.us.us.i.us64, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %i.lt = trunc i64 %indvars.iv.i.us to i32
  %i.lu = mul i32 %i.jg, %i.lt
  %.reass919.us925.us.us.us.i.us = add i32 %i.lu, %invariant.op.i ; 3 uses
  %i.lv = icmp slt i32 %.reass919.us925.us.us.us.i.us, 0
  br i1 %i.lv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us921.us.us.us.i.us
  %i.lw = srem i32 %.reass919.us925.us.us.us.i.us, %i.ji
  %i.lx = sdiv exact i32 %.reass919.us925.us.us.us.i.us, %i.ji ; 2 uses
  %.not444.us926.us.us.us.i.us = icmp eq i32 %i.lw, 0
  %.not445.us927.us.us.us.i.us = icmp slt i32 %i.lx, %i.fo
  %or.cond199 = select i1 %.not444.us926.us.us.us.i.us, i1 %.not445.us927.us.us.us.i.us, i1 false
  br i1 %or.cond199, label %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, label %bb.ac

_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us:        ; preds = %bb.ab
  %i.ly = load ptr, ptr %1, align 8, !tbaa !20, !noalias !414
  %i.lz = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !414
  %i.ma = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !414 ; 2 uses
  %factor.op.mul.us.us.us.us.i.us = mul i64 %i.ma, %i.lz ; 4 uses
  %i.mb = mul i64 %i.ls, %i.ma
  %invariant.gep.us.us.us.us.i.us = getelementptr i8, ptr %i.ly, i64 %i.mb
  %i.mc = sext i32 %i.lx to i64
  %invariant.gep912.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.us.i.us, i64 %i.mc ; 4 uses
  %.reass.us.us.us.us.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %indvars.iv1297.i
  %gep913.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.i.us
  %i.md = load i16, ptr %gep913.us.us.us.us.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jm
  %gep913.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.me = load i16, ptr %gep913.us.us.us.us.1.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jn
  %gep913.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.mf = load i16, ptr %gep913.us.us.us.us.2.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jo
  %gep913.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.mg = load i16, ptr %gep913.us.us.us.us.3.i.us, align 2, !tbaa !86
  %i.mh = insertelement <4 x i16> poison, i16 %i.md, i64 0
  %i.mi = insertelement <4 x i16> %i.mh, i16 %i.me, i64 1
  %i.mj = insertelement <4 x i16> %i.mi, i16 %i.mf, i64 2
  %i.mk = insertelement <4 x i16> %i.mj, i16 %i.mg, i64 3
  %i.ml = zext <4 x i16> %i.mk to <4 x i32>
  %i.mm = shl nuw <4 x i32> %i.ml, splat (i32 16)
  %.sroa.01404.12.vec.insert.i.us = bitcast <4 x i32> %i.mm to <4 x float> ; 2 uses
  %i.mn = add nuw nsw i64 %indvars.iv.i.us, %i.lq
  %i.mo = shl i64 %i.mn, 3
  %i.mp = and i64 %i.mo, 4294967288
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.0345954.us.us.i, i64 %i.mp ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 1, !tbaa !80
  %i.ms = insertelement <2 x i64> poison, i64 %i.mr, i64 0
  %i.mt = bitcast <2 x i64> %i.ms to <8 x i16>
  %i.mu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mv = bitcast <8 x i16> %i.mu to <4 x float>
  %i.mw = fmul fast <4 x float> %i.mv, %.sroa.01404.12.vec.insert.i.us
  %i.mx = fadd fast <4 x float> %i.mw, %.2837916.us923.us.us.us.i.us
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mz = load i64, ptr %i.my, align 1, !tbaa !80
  %i.na = insertelement <2 x i64> poison, i64 %i.mz, i64 0
  %i.nb = bitcast <2 x i64> %i.na to <8 x i16>
  %i.nc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nd = bitcast <8 x i16> %i.nc to <4 x float>
  %i.ne = fmul fast <4 x float> %i.nd, %.sroa.01404.12.vec.insert.i.us
  %i.nf = fadd fast <4 x float> %i.ne, %.2842915.us924.us.us.us.i.us
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.ab, %.lr.ph.split.us921.us.us.us.i.us
  %.3843.us928.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us924.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.nf, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2842915.us924.us.us.us.i.us, %bb.ab ] ; 2 uses
  %.3838.us929.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us923.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.mx, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2837916.us923.us.us.us.i.us, %bb.ab ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.jk
  br i1 %exitcond.not.i.us, label %..loopexit906_crit_edge.us.us.us.i.us69, label %.lr.ph.split.us921.us.us.us.i.us, !llvm.loop !373

..loopexit906_crit_edge.us.us.us.i.us69:          ; preds = %bb.ac, %bb.aa, %.preheader909.us.us.i.split.us61
  %.4844.us.us.us.i.us70 = phi nsz <4 x float> [ %.1841934.us.us.us.i.us64, %.preheader909.us.us.i.split.us61 ], [ %.1841934.us.us.us.i.us64, %bb.aa ], [ %.3843.us928.us.us.us.i.us, %bb.ac ] ; 2 uses
  %.4839.us.us.us.i.us71 = phi nsz <4 x float> [ %.1836935.us.us.us.i.us63, %.preheader909.us.us.i.split.us61 ], [ %.1836935.us.us.us.i.us63, %bb.aa ], [ %.3838.us929.us.us.us.i.us, %bb.ac ] ; 2 uses
  %indvars.iv.next1293.i.us72 = add nuw nsw i64 %indvars.iv1292.i.us62, 1 ; 2 uses
  %exitcond1296.not.i.us73 = icmp eq i64 %indvars.iv.next1293.i.us72, %wide.trip.count1295.i
  br i1 %exitcond1296.not.i.us73, label %._crit_edge.split.us.us.us.i, label %.preheader909.us.us.i.split.us61, !llvm.loop !374

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit906_crit_edge.us.us.us.i.us69, %..loopexit906_crit_edge.us.us.us.i.us, %.preheader909.us.us.i
  %.us-phi = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ], [ %.4844.us.us.us.i.us70, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %.us-phi60 = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ], [ %.4839.us.us.us.i.us71, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %i.ng = getelementptr inbounds [2 x i8], ptr %.0345954.us.us.i, i64 %i.iu ; 2 uses
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 4 ; 2 uses
  %i.nh = icmp slt i64 %indvars.iv.next1298.i, %invariant.op1449.i
  br i1 %i.nh, label %.preheader909.us.us.i, label %._crit_edge958.i, !llvm.loop !377

._crit_edge958.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0840.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0835.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0345.lcssa.i = phi ptr [ %i.ip, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1282.i, %.preheader909.lr.ph.i ], [ %i.ng, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %.0342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.gk, %.preheader909.lr.ph.i ], [ %i.go, %._crit_edge.split.us.us.us.i ] ; 9 uses
  %i.ni = shufflevector <4 x float> %.0835.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nj = fadd fast <4 x float> %i.ni, %.0835.lcssa.i ; 2 uses
  %i.nk = shufflevector <4 x float> %.0840.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nl = fadd fast <4 x float> %i.nk, %.0840.lcssa.i ; 2 uses
  %i.nm = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <2 x i32> <i32 1, i32 5>
  %i.nn = fadd fast <2 x float> %i.nm, %i.jb
  %i.no = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <2 x i32> <i32 0, i32 4>
  %i.np = fadd fast <2 x float> %i.nn, %i.no      ; 4 uses
  %i.nq = or disjoint i32 %.0342.lcssa.i, 1
  %i.nr = icmp slt i32 %i.nq, %i.fn
  br i1 %i.nr, label %.preheader908.lr.ph.i, label %.preheader910.i

.preheader908.lr.ph.i:                            ; preds = %._crit_edge958.i
  %i.ns = load i32, ptr %i.d, align 4
  %i.nt = load i32, ptr %i.j, align 4
  %invariant.op993.i = sub i32 %.neg887.i, %i.nt
  %i.nu = load i32, ptr %i.f, align 4             ; 2 uses
  %i.nv = load i32, ptr %i.a, align 4
  %.fr1232.i = freeze i32 %i.nv                   ; 2 uses
  %i.nw = load i32, ptr %i.c, align 4
  %i.nx = load i32, ptr %i.i, align 4
  %.neg885.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op985.i = sub i32 %.neg885.i, %i.nx
  %i.ny = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ir, label %.preheader908.lr.ph.split.us.i, label %.preheader908.preheader.i

.preheader908.preheader.i:                        ; preds = %.preheader908.lr.ph.i
  %i.nz = add i32 %.0342.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.fn, i32 %i.nz)
  %reass.sub = sub i32 %smax.i, %.0342.lcssa.i
  %i.oa = and i32 %reass.sub, -2                  ; 2 uses
  %i.ob = add i32 %i.oa, -2
  %i.oc = zext i32 %i.ob to i64
  %i.od = add nuw nsw i64 %i.oc, 2
  %i.oe = mul nsw i64 %i.od, %i.iw
  %scevgep1300.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.oe
  %i.of = add i32 %.0342.lcssa.i, %i.oa
  br label %.preheader910.i

.preheader908.lr.ph.split.us.i:                   ; preds = %.preheader908.lr.ph.i
  %i.og = icmp sgt i32 %.fr1232.i, 0
  br i1 %i.og, label %.preheader908.us.us.preheader.i, label %.preheader908.us.preheader.i

.preheader908.us.preheader.i:                     ; preds = %.preheader908.lr.ph.split.us.i
  %i.oh = add i32 %.0342.lcssa.i, 3
  %smax1301.i = call i32 @llvm.smax.i32(i32 %i.fn, i32 %i.oh)
  %reass.sub92 = sub i32 %smax1301.i, %.0342.lcssa.i
  %i.oi = and i32 %reass.sub92, -2                ; 2 uses
  %i.oj = add i32 %i.oi, -2
  %i.ok = zext i32 %i.oj to i64
  %i.ol = add nuw nsw i64 %i.ok, 2
  %i.om = mul nsw i64 %i.ol, %i.iw
  %scevgep1302.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.om
  %i.on = add i32 %.0342.lcssa.i, %i.oi
  br label %.preheader910.i

.preheader908.us.us.preheader.i:                  ; preds = %.preheader908.lr.ph.split.us.i
  %i.oo = zext nneg i32 %.fr1232.i to i64         ; 2 uses
  %i.op = zext i32 %.0342.lcssa.i to i64
  br label %.preheader908.us.us.i

.preheader908.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.us.preheader.i
  %indvars.iv1316.i = phi i64 [ %i.op, %.preheader908.us.us.preheader.i ], [ %indvars.iv.next1317.i, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %.13461001.us.us.i = phi ptr [ %.0345.lcssa.i, %.preheader908.us.us.preheader.i ], [ %i.qm, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.oq = phi <2 x float> [ %i.np, %.preheader908.us.us.preheader.i ], [ %i.ql, %._crit_edge.split.us.us.us1020.i ]
  %i.or = add nuw nsw i64 %indvars.iv1316.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %..loopexit904_crit_edge.us.us.us.i, %.preheader908.us.us.i
  %indvars.iv1311.i = phi i64 [ %indvars.iv.next1312.i, %..loopexit904_crit_edge.us.us.us.i ], [ 0, %.preheader908.us.us.i ] ; 3 uses
  %i.os = phi <2 x float> [ %i.ql, %..loopexit904_crit_edge.us.us.us.i ], [ %i.oq, %.preheader908.us.us.i ] ; 3 uses
  %i.ot = trunc i64 %indvars.iv1311.i to i32
  %i.ou = mul i32 %i.ns, %i.ot
  %.reass994.us.us.us.i = add i32 %i.ou, %invariant.op993.i ; 3 uses
  %i.ov = icmp slt i32 %.reass994.us.us.us.i, 0
  br i1 %i.ov, label %..loopexit904_crit_edge.us.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ow = srem i32 %.reass994.us.us.us.i, %i.nu
  %i.ox = sdiv exact i32 %.reass994.us.us.us.i, %i.nu ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.ow, 0
  %.not439.us.us.us.i = icmp slt i32 %i.ox, %i.fp
  %or.cond200 = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond200, label %.preheader903.us.us.us.i, label %..loopexit904_crit_edge.us.us.us.i

.preheader903.us.us.us.i:                         ; preds = %bb.ae
  %i.oy = mul nuw nsw i64 %indvars.iv1311.i, %i.oo
  %i.oz = sext i32 %i.ox to i64
  %i.pa = mul nsw i64 %i.oz, %i.gn
  br label %bb.af

bb.af:                                            ; preds = %.loopexit900.us.us.us.i, %.preheader903.us.us.us.i
  %indvars.iv1306.i = phi i64 [ %indvars.iv.next1307.i, %.loopexit900.us.us.us.i ], [ 0, %.preheader903.us.us.us.i ] ; 3 uses
  %i.pb = phi <2 x float> [ %i.qk, %.loopexit900.us.us.us.i ], [ %i.os, %.preheader903.us.us.us.i ] ; 3 uses
  %i.pc = trunc i64 %indvars.iv1306.i to i32
  %i.pd = mul i32 %i.nw, %i.pc
  %.reass986.us.us.us.i = add i32 %invariant.op985.i, %i.pd ; 3 uses
  %i.pe = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.pe, label %.loopexit900.us.us.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pf = srem i32 %.reass986.us.us.us.i, %i.ny
  %i.pg = sdiv exact i32 %.reass986.us.us.us.i, %i.ny ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.pf, 0
  %.not441.us.us.us.i = icmp slt i32 %i.pg, %i.fo
  %or.cond201 = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond201, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit900.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.ag
  %i.ph = add nuw nsw i64 %indvars.iv1306.i, %i.oy
  %i.pi = shl i64 %i.ph, 2
  %i.pj = and i64 %i.pi, 4294967292
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.13461001.us.us.i, i64 %i.pj
  %i.pl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !415
  %i.pm = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !415
  %i.pn = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !415 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.pn, %i.pm ; 2 uses
  %i.po = mul i64 %i.pa, %i.pn
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.pl, i64 %i.po
  %i.pp = sext i32 %i.pg to i64
  %invariant.gep975.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.pp ; 2 uses
  %.reass.us995.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1316.i
  %gep976.us.us.us.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.i
  %i.pq = load i16, ptr %gep976.us.us.us.i, align 2, !tbaa !86
  %.reass.us995.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.or
  %gep976.us.us.us.1.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.1.i
  %i.pr = load i16, ptr %gep976.us.us.us.1.i, align 2, !tbaa !86
  %i.ps = load <4 x i16>, ptr %i.pk, align 2, !tbaa !86
  %i.pt = freeze <4 x i16> %i.ps
  %i.pu = bitcast <4 x i16> %i.pt to <2 x i32>    ; 2 uses
  %i.pv = and <2 x i32> %i.pu, splat (i32 -65536)
  %i.pw = shl <2 x i32> %i.pu, splat (i32 16)
  %i.px = bitcast <2 x i32> %i.pw to <2 x float>
  %i.py = insertelement <2 x i16> poison, i16 %i.pr, i64 0
  %i.pz = insertelement <2 x i16> %i.py, i16 %i.pq, i64 1
  %i.qa = zext <2 x i16> %i.pz to <2 x i32>
  %i.qb = shl nuw <2 x i32> %i.qa, splat (i32 16)
  %i.qc = bitcast <2 x i32> %i.qb to <2 x float>  ; 2 uses
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qe = fmul fast <2 x float> %i.qd, %i.px
  %i.qf = fadd fast <2 x float> %i.pb, %i.qe
  %i.qg = bitcast <2 x i32> %i.pv to <2 x float>
  %i.qh = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fmul fast <2 x float> %i.qh, %i.qg
  %i.qj = fadd fast <2 x float> %i.qi, %i.qf
  br label %.loopexit900.us.us.us.i

.loopexit900.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.ag, %bb.af
  %i.qk = phi <2 x float> [ %i.pb, %bb.af ], [ %i.pb, %bb.ag ], [ %i.qj, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %exitcond1310.not.i = icmp eq i64 %indvars.iv.next1307.i, %i.oo
  br i1 %exitcond1310.not.i, label %..loopexit904_crit_edge.us.us.us.i, label %bb.af, !llvm.loop !380

..loopexit904_crit_edge.us.us.us.i:               ; preds = %.loopexit900.us.us.us.i, %bb.ae, %bb.ad
  %i.ql = phi <2 x float> [ %i.os, %bb.ad ], [ %i.os, %bb.ae ], [ %i.qk, %.loopexit900.us.us.us.i ] ; 3 uses
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
  %exitcond1315.not.i = icmp eq i64 %indvars.iv.next1312.i, %wide.trip.count1295.i
  br i1 %exitcond1315.not.i, label %._crit_edge.split.us.us.us1020.i, label %bb.ad, !llvm.loop !381

._crit_edge.split.us.us.us1020.i:                 ; preds = %..loopexit904_crit_edge.us.us.us.i
  %i.qm = getelementptr inbounds [2 x i8], ptr %.13461001.us.us.i, i64 %i.iw ; 2 uses
  %indvars.iv.next1317.i = add nuw nsw i64 %indvars.iv1316.i, 2 ; 2 uses
  %i.qn = trunc i64 %indvars.iv.next1317.i to i32 ; 2 uses
  %i.qo = or i32 %i.qn, 1
  %i.qp = icmp slt i32 %i.qo, %i.fn
  br i1 %i.qp, label %.preheader908.us.us.i, label %.preheader910.i, !llvm.loop !382

.preheader910.i:                                  ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.preheader.i, %.preheader908.preheader.i, %._crit_edge958.i
  %.1346.lcssa.i = phi ptr [ %.0345.lcssa.i, %._crit_edge958.i ], [ %scevgep1300.i, %.preheader908.preheader.i ], [ %scevgep1302.i, %.preheader908.us.preheader.i ], [ %i.qm, %._crit_edge.split.us.us.us1020.i ]
  %.1343.lcssa.i = phi i32 [ %.0342.lcssa.i, %._crit_edge958.i ], [ %i.of, %.preheader908.preheader.i ], [ %i.on, %.preheader908.us.preheader.i ], [ %i.qn, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.qq = phi <2 x float> [ %i.np, %._crit_edge958.i ], [ %i.np, %.preheader908.preheader.i ], [ %i.np, %.preheader908.us.preheader.i ], [ %i.ql, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %i.qr = icmp slt i32 %.1343.lcssa.i, %i.fn
  br i1 %i.qr, label %.preheader907.lr.ph.i, label %._crit_edge1048.i

.preheader907.lr.ph.i:                            ; preds = %.preheader910.i
  %i.qs = load i32, ptr %i.d, align 4
  %i.qt = load i32, ptr %i.j, align 4
  %invariant.op1037.i = sub i32 %.neg887.i, %i.qt
  %i.qu = load i32, ptr %i.f, align 4             ; 2 uses
  %i.qv = load i32, ptr %i.a, align 4
  %.fr1233.i = freeze i32 %i.qv                   ; 2 uses
  %i.qw = load i32, ptr %i.c, align 4
  %i.qx = load i32, ptr %i.i, align 4
  %.neg881.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op1030.i = sub i32 %.neg881.i, %i.qx
  %i.qy = load i32, ptr %i.e, align 4             ; 2 uses
  %i.qz = icmp sgt i32 %.fr1233.i, 0
  %or.cond1451.i = and i1 %i.ir, %i.qz
  br i1 %or.cond1451.i, label %.preheader907.us.us.preheader.i, label %._crit_edge1048.i

.preheader907.us.us.preheader.i:                  ; preds = %.preheader907.lr.ph.i
  %i.ra = zext nneg i32 %.fr1233.i to i64         ; 2 uses
  %i.rb = zext i32 %.1343.lcssa.i to i64
  br label %.preheader907.us.us.i

.preheader907.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1060.i, %.preheader907.us.us.preheader.i
  %indvars.iv1329.i = phi i64 [ %i.rb, %.preheader907.us.us.preheader.i ], [ %indvars.iv.next1330.i, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %.23471045.us.us.i = phi ptr [ %.1346.lcssa.i, %.preheader907.us.us.preheader.i ], [ %i.ss, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %i.rc = phi <2 x float> [ %i.qq, %.preheader907.us.us.preheader.i ], [ %i.sr, %._crit_edge.split.us.us.us1060.i ]
  br label %bb.ah

bb.ah:                                            ; preds = %..loopexit902_crit_edge.us.us.us.i, %.preheader907.us.us.i
  %indvars.iv1324.i = phi i64 [ %indvars.iv.next1325.i, %..loopexit902_crit_edge.us.us.us.i ], [ 0, %.preheader907.us.us.i ] ; 3 uses
  %i.rd = phi <2 x float> [ %i.sr, %..loopexit902_crit_edge.us.us.us.i ], [ %i.rc, %.preheader907.us.us.i ] ; 3 uses
  %i.re = trunc i64 %indvars.iv1324.i to i32
  %i.rf = mul i32 %i.qs, %i.re
  %.reass1038.us.us.us.i = add i32 %i.rf, %invariant.op1037.i ; 3 uses
  %i.rg = icmp slt i32 %.reass1038.us.us.us.i, 0
  br i1 %i.rg, label %..loopexit902_crit_edge.us.us.us.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rh = srem i32 %.reass1038.us.us.us.i, %i.qu
  %i.ri = sdiv exact i32 %.reass1038.us.us.us.i, %i.qu ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.rh, 0
  %.not435.us.us.us.i = icmp slt i32 %i.ri, %i.fp
  %or.cond202 = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond202, label %.preheader901.us.us.us.i, label %..loopexit902_crit_edge.us.us.us.i

.preheader901.us.us.us.i:                         ; preds = %bb.ai
  %i.rj = mul nuw nsw i64 %indvars.iv1324.i, %i.ra
  %i.rk = sext i32 %i.ri to i64
  %i.rl = mul nsw i64 %i.rk, %i.gn
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.preheader901.us.us.us.i
  %indvars.iv1319.i = phi i64 [ %indvars.iv.next1320.i, %bb.al ], [ 0, %.preheader901.us.us.us.i ] ; 3 uses
  %i.rm = phi <2 x float> [ %i.sq, %bb.al ], [ %i.rd, %.preheader901.us.us.us.i ] ; 3 uses
  %i.rn = trunc i64 %indvars.iv1319.i to i32
  %i.ro = mul i32 %i.qw, %i.rn
  %.reass.us1039.us.us.i = add i32 %invariant.op1030.i, %i.ro ; 3 uses
  %i.rp = icmp slt i32 %.reass.us1039.us.us.i, 0
  br i1 %i.rp, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rq = srem i32 %.reass.us1039.us.us.i, %i.qy
  %i.rr = sdiv exact i32 %.reass.us1039.us.us.i, %i.qy ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.rq, 0
  %.not437.us.us.us.i = icmp slt i32 %i.rr, %i.fo
  %or.cond203 = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond203, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.al

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.ak
  %i.rs = add nuw nsw i64 %indvars.iv1319.i, %i.rj
  %.idx.i = shl nuw nsw i64 %i.rs, 2
  %i.rt = getelementptr inbounds nuw i8, ptr %.23471045.us.us.i, i64 %.idx.i
  %i.ru = load ptr, ptr %1, align 8, !tbaa !20, !noalias !416
  %i.rv = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !416
  %i.rw = mul i64 %i.rv, %indvars.iv1329.i
  %i.rx = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !416 ; 2 uses
  %i.ry = mul i64 %i.rw, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.ry
  %i.sa = mul i64 %i.rl, %i.rx
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sa
  %i.sc = sext i32 %i.rr to i64
  %i.sd = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.sc
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !86
  %i.sf = zext i16 %i.se to i32
  %i.sg = shl nuw i32 %i.sf, 16
  %i.sh = load <2 x i16>, ptr %i.rt, align 2, !tbaa !86
  %i.si = zext <2 x i16> %i.sh to <2 x i32>
  %i.sj = shl nuw <2 x i32> %i.si, splat (i32 16)
  %i.sk = bitcast <2 x i32> %i.sj to <2 x float>
  %i.sl = insertelement <2 x i32> poison, i32 %i.sg, i64 0
  %i.sm = bitcast <2 x i32> %i.sl to <2 x float>
  %i.sn = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.so = fmul fast <2 x float> %i.sn, %i.sk
  %i.sp = fadd fast <2 x float> %i.so, %i.rm
  br label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, %bb.ak, %bb.aj
  %i.sq = phi <2 x float> [ %i.rm, %bb.aj ], [ %i.rm, %bb.ak ], [ %i.sp, %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i ] ; 2 uses
  %indvars.iv.next1320.i = add nuw nsw i64 %indvars.iv1319.i, 1 ; 2 uses
  %exitcond1323.not.i = icmp eq i64 %indvars.iv.next1320.i, %i.ra
  br i1 %exitcond1323.not.i, label %..loopexit902_crit_edge.us.us.us.i, label %bb.aj, !llvm.loop !385

..loopexit902_crit_edge.us.us.us.i:               ; preds = %bb.al, %bb.ai, %bb.ah
  %i.sr = phi <2 x float> [ %i.rd, %bb.ah ], [ %i.rd, %bb.ai ], [ %i.sq, %bb.al ] ; 3 uses
  %indvars.iv.next1325.i = add nuw nsw i64 %indvars.iv1324.i, 1 ; 2 uses
  %exitcond1328.not.i = icmp eq i64 %indvars.iv.next1325.i, %wide.trip.count1295.i
  br i1 %exitcond1328.not.i, label %._crit_edge.split.us.us.us1060.i, label %bb.ah, !llvm.loop !386

._crit_edge.split.us.us.us1060.i:                 ; preds = %..loopexit902_crit_edge.us.us.us.i
  %i.ss = getelementptr inbounds [2 x i8], ptr %.23471045.us.us.i, i64 %i.iy
  %indvars.iv.next1330.i = add nuw nsw i64 %indvars.iv1329.i, 1 ; 2 uses
  %i.st = trunc nuw i64 %indvars.iv.next1330.i to i32
  %i.su = icmp sgt i32 %i.fn, %i.st
  br i1 %i.su, label %.preheader907.us.us.i, label %._crit_edge1048.i, !llvm.loop !387

._crit_edge1048.i:                                ; preds = %._crit_edge.split.us.us.us1060.i, %.preheader907.lr.ph.i, %.preheader910.i
  %i.sv = phi <2 x float> [ %i.qq, %.preheader910.i ], [ %i.qq, %.preheader907.lr.ph.i ], [ %i.sr, %._crit_edge.split.us.us.us1060.i ] ; 11 uses
  switch i32 %i.io, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i
    i32 6, label %bb.am
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i: ; preds = %._crit_edge1048.i
  %i.sw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sv, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i: ; preds = %._crit_edge1048.i
  %i.sx = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !39
  %i.sz = fcmp fast ogt <2 x float> %i.sv, zeroinitializer
  %i.ta = insertelement <2 x float> poison, float %i.sy, i64 0
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tc = select <2 x i1> %i.sz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.tb
  %i.td = fmul fast <2 x float> %i.tc, %i.sv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i: ; preds = %._crit_edge1048.i
  %i.te = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.tf = load <2 x float>, ptr %i.te, align 4, !tbaa !39 ; 4 uses
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.th = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sv, <2 x float> %i.tg) ; 3 uses
  %i.ti = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tj = fcmp fast ogt <2 x float> %i.th, %i.ti  ; 2 uses
  %i.tk = extractelement <2 x i1> %i.tj, i64 0
  %i.tl = extractelement <2 x float> %i.th, i64 0
  %i.tm = extractelement <2 x float> %i.tf, i64 1
  %.1825852.i = select i1 %i.tk, float %i.tm, float %i.tl ; 2 uses
  %i.tn = insertelement <2 x float> %i.th, float %.1825852.i, i64 0
  %i.to = extractelement <2 x i1> %i.tj, i64 1
  br i1 %i.to, label %bb.ap, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i: ; preds = %._crit_edge1048.i
  %i.tp = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.sv, <2 x float> splat (float f0x42B0C0A5))
  %i.tq = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.tp, <2 x float> splat (float f0xC2B0C0A5))
  %i.tr = fneg fast <2 x float> %i.tq
  %i.ts = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.tr)
  %i.tt = fadd fast <2 x float> %i.ts, splat (float 1.000000e+00)
  %i.tu = fdiv fast <2 x float> splat (float 1.000000e+00), %i.tt
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i: ; preds = %._crit_edge1048.i
  %i.tv = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.sv)
  %i.tw = fadd fast <2 x float> %i.tv, splat (float 1.000000e+00)
  %i.tx = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.tw)
  %i.ty = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.tx)
  %i.tz = fmul fast <2 x float> %i.ty, %i.sv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

bb.am:                                            ; preds = %._crit_edge1048.i
  %i.ua = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !39 ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !39 ; 3 uses
  %i.ue = fneg fast float %i.ud
  %i.uf = fdiv fast float %i.ue, %i.ub            ; 4 uses
  %i.ug = extractelement <2 x float> %i.sv, i64 0 ; 5 uses
  %i.uh = fcmp fast olt float %i.ug, %i.uf
  br i1 %i.uh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ui = fdiv fast float 1.000000e+00, %i.ub
  %i.uj = fadd fast float %i.uf, %i.ui
  %i.uk = fcmp fast ogt float %i.ug, %i.uj
  br i1 %i.uk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ul = fmul fast float %i.ub, %i.ug
  %i.um = fadd fast float %i.ul, %i.ud
  %i.un = fmul fast float %i.um, %i.ug
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i

bb.ap:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i
  %i.uo = insertelement <2 x float> %i.tf, float %.1825852.i, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i: ; preds = %bb.ao, %bb.an, %bb.am
  %.1825846.i = phi float [ %i.un, %bb.ao ], [ 0.000000e+00, %bb.am ], [ %i.ug, %bb.an ] ; 2 uses
  %i.up = extractelement <2 x float> %i.sv, i64 1 ; 4 uses
  %i.uq = fcmp fast olt float %i.up, %i.uf
  %i.ur = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1825846.i, i64 0 ; 2 uses
  br i1 %i.uq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, label %bb.aq

bb.aq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i
  %i.us = fdiv fast float 1.000000e+00, %i.ub
  %i.ut = fadd fast float %i.uf, %i.us
  %i.uu = fcmp fast ogt float %i.up, %i.ut
  %i.uv = insertelement <2 x float> %i.sv, float %.1825846.i, i64 0
  br i1 %i.uu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.uw = fmul fast float %i.ub, %i.up
  %i.ux = fadd fast float %i.uw, %i.ud
  %i.uy = fmul fast float %i.ux, %i.up
  %i.uz = insertelement <2 x float> %i.ur, float %i.uy, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i:      ; preds = %bb.ar, %bb.aq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i, %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i, %._crit_edge1048.i
  %i.va = phi <2 x float> [ %i.ur, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i ], [ %i.sw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i ], [ %i.td, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i ], [ %i.uo, %bb.ap ], [ %i.tn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i ], [ %i.tu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i ], [ %i.tz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i ], [ %i.uz, %bb.ar ], [ %i.uv, %bb.aq ], [ %i.sv, %._crit_edge1048.i ]
  %i.vb = bitcast <2 x float> %i.va to <2 x i32>
  %i.vc = lshr <2 x i32> %i.vb, splat (i32 16)
  %i.vd = trunc nuw <2 x i32> %i.vc to <2 x i16>  ; 2 uses
  %i.ve = extractelement <2 x i16> %i.vd, i64 0
  store i16 %i.ve, ptr %.13851063.i, align 2, !tbaa !86
  %i.vf = extractelement <2 x i16> %i.vd, i64 1
  store i16 %i.vf, ptr %.13831064.i, align 2, !tbaa !86
  %i.vg = getelementptr inbounds nuw i8, ptr %.13851063.i, i64 2 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.13831064.i, i64 2 ; 2 uses
  %i.vi = add nuw nsw i32 %.03801065.i, 1         ; 2 uses
  %exitcond1332.not.i = icmp eq i32 %i.vi, %i.fq
  br i1 %exitcond1332.not.i, label %._crit_edge.i, label %bb.v, !llvm.loop !388

_ZN4ncnn3MatD2Ev.exit450.i:                       ; preds = %._crit_edge1218.i, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i
  %indvars.iv1400.i = phi i64 [ %i.hx, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i ], [ %indvars.iv.next1401.i, %._crit_edge1218.i ] ; 4 uses
  %.reass1222.i = mul i64 %factor.op.mul1221.i, %indvars.iv1400.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.reass1222.i
  %i.vk = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i43 = icmp eq ptr %i.vk, null
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %indvars.iv1400.i
  %i.vm = trunc nsw i64 %indvars.iv1400.i to i32  ; 3 uses
  %i.vn = sdiv i32 %i.vm, 4
  %i.vo = srem i32 %i.vm, 4
  %.lhs.trunc865.i = trunc nsw i32 %i.vo to i8
  %i.vp = sdiv i8 %.lhs.trunc865.i, 2
  %.sext866.i = sext i8 %i.vp to i32
  %i.vq = srem i32 %i.vm, 2
  %i.vr = add nsw i32 %i.vq, %i.vn
  %i.vs = add nsw i32 %i.vr, %.sext866.i
  %i.vt = sext i32 %i.vs to i64
  %i.vu = load i32, ptr %i.g, align 4
  %.reass1225.i = mul i64 %factor.op.mul1224.i, %i.vt
  %i.vv = getelementptr i8, ptr %i.hl, i64 %.reass1225.i ; 3 uses
  br label %.preheader899.i

.preheader899.i:                                  ; preds = %._crit_edge1214.i, %_ZN4ncnn3MatD2Ev.exit450.i
  %.03301217.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit450.i ], [ %.neg875.i, %._crit_edge1214.i ]
  %.03311216.i = phi ptr [ %i.vj, %_ZN4ncnn3MatD2Ev.exit450.i ], [ %i.afz, %._crit_edge1214.i ]
  %i.vw = load i32, ptr %i.b, align 4             ; 2 uses
  %i.vx = icmp sgt i32 %i.vw, 0                   ; 3 uses
  %.neg875.i = add nuw nsw i32 %.03301217.i, 1    ; 5 uses
  %i.vy = load i32, ptr %i.k, align 4             ; 3 uses
  %i.vz = shl i32 %i.vy, 2
  %i.wa = sext i32 %i.vz to i64                   ; 2 uses
  %i.wb = shl i32 %i.vy, 1
  %i.wc = sext i32 %i.wb to i64                   ; 3 uses
  %i.wd = sext i32 %i.vy to i64
  %i.we = mul nsw i64 %i.wa, %i.hr
  %scevgep1340.i = getelementptr i8, ptr %i.vv, i64 %i.we
  %wide.trip.count1360.i = zext nneg i32 %i.vw to i64 ; 4 uses
  br label %bb.as

._crit_edge1218.i:                                ; preds = %._crit_edge1214.i
  %indvars.iv.next1401.i = add nsw i64 %indvars.iv1400.i, 1 ; 2 uses
  %i.wf = icmp slt i64 %indvars.iv.next1401.i, %i.hy
  br i1 %i.wf, label %_ZN4ncnn3MatD2Ev.exit450.i, label %.loopexit, !llvm.loop !389

._crit_edge1214.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %exitcond1399.not.i = icmp eq i32 %.neg875.i, %i.ha
  br i1 %exitcond1399.not.i, label %._crit_edge1218.i, label %.preheader899.i, !llvm.loop !390

bb.as:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, %.preheader899.i
  %.03291213.i = phi i32 [ 0, %.preheader899.i ], [ %i.aga, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 4 uses
  %.13321212.i = phi ptr [ %.03311216.i, %.preheader899.i ], [ %i.afz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 2 uses
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit449.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.wg = load float, ptr %i.vl, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit449.i

_ZN4ncnn3MatD2Ev.exit449.i:                       ; preds = %bb.at, %bb.as
  %.0326.i = phi nsz float [ %i.wg, %bb.at ], [ 0.000000e+00, %bb.as ]
  br i1 %i.hg, label %.preheader897.lr.ph.i, label %._crit_edge1122.i

.preheader897.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit449.i
  %i.wh = load i32, ptr %i.d, align 4             ; 2 uses
  %i.wi = load i32, ptr %i.j, align 4
  %invariant.op1106.i = sub i32 %.neg875.i, %i.wi ; 2 uses
  %i.wj = load i32, ptr %i.f, align 4             ; 4 uses
  %i.wk = load i32, ptr %i.a, align 4
  %.fr1234.i = freeze i32 %i.wk                   ; 2 uses
  %i.wl = load i32, ptr %i.c, align 4             ; 2 uses
  %i.wm = load i32, ptr %i.i, align 4
  %.neg877.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1088.i = sub i32 %.neg877.i, %i.wm ; 2 uses
  %i.wn = load i32, ptr %i.e, align 4             ; 4 uses
  %i.wo = icmp sgt i32 %.fr1234.i, 0
  %or.cond1452.i = and i1 %i.vx, %i.wo
  br i1 %or.cond1452.i, label %.preheader897.us.us.preheader.i, label %._crit_edge1122.i

.preheader897.us.us.preheader.i:                  ; preds = %.preheader897.lr.ph.i
  %i.wp = zext nneg i32 %.fr1234.i to i64         ; 4 uses
  br label %.preheader897.us.us.i

.preheader897.us.us.i:                            ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.us.us.preheader.i
  %indvars.iv1362.i = phi i64 [ 0, %.preheader897.us.us.preheader.i ], [ %indvars.iv.next1363.i, %._crit_edge1104.split.us.us.us.i ] ; 6 uses
  %.03231118.us.us.i = phi ptr [ %i.vv, %.preheader897.us.us.preheader.i ], [ %i.zv, %._crit_edge1104.split.us.us.us.i ] ; 3 uses
  %.08301117.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader897.us.us.preheader.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 3 uses
  %i.wq = lshr exact i64 %indvars.iv1362.i, 2
  %i.wr = or disjoint i64 %indvars.iv1362.i, 1
  %i.ws = or disjoint i64 %indvars.iv1362.i, 2
  %i.wt = or disjoint i64 %indvars.iv1362.i, 3
  switch i32 %.fr1100.i, label %._crit_edge1104.split.us.us.us.i [
    i32 4, label %.preheader897.us.us.i.split.us
    i32 1, label %.preheader897.us.us.i.split.us79
  ]

.preheader897.us.us.i.split.us:                   ; preds = %.preheader897.us.us.i, %..loopexit894_crit_edge.us.us.us.i.us
  %indvars.iv1357.i.us = phi i64 [ %indvars.iv.next1358.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ 0, %.preheader897.us.us.i ] ; 3 uses
  %.18311101.us.us.us.i.us = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ] ; 3 uses
  %i.wu = trunc i64 %indvars.iv1357.i.us to i32
  %i.wv = mul i32 %i.wh, %i.wu
  %.reass1107.us.us.us.i.us = add i32 %i.wv, %invariant.op1106.i ; 3 uses
  %i.ww = icmp slt i32 %.reass1107.us.us.us.i.us, 0
  br i1 %i.ww, label %..loopexit894_crit_edge.us.us.us.i.us, label %bb.au

bb.au:                                            ; preds = %.preheader897.us.us.i.split.us
  %i.wx = srem i32 %.reass1107.us.us.us.i.us, %i.wj
  %i.wy = sdiv exact i32 %.reass1107.us.us.us.i.us, %i.wj ; 2 uses
  %.not429.us.us.us.i.us = icmp eq i32 %i.wx, 0
  %.not430.us.us.us.i.us = icmp slt i32 %i.wy, %i.gy
  %or.cond204 = select i1 %.not429.us.us.us.i.us, i1 %.not430.us.us.us.i.us, i1 false
  br i1 %or.cond204, label %.preheader893.us.us.us.i.us, label %..loopexit894_crit_edge.us.us.us.i.us

.preheader893.us.us.us.i.us:                      ; preds = %bb.au
  %i.wz = mul nuw nsw i64 %indvars.iv1357.i.us, %i.wp
  %i.xa = sext i32 %i.wy to i64
  %i.xb = mul nsw i64 %i.xa, %i.hz
  br label %.lr.ph.split.us.us.us.us1137.i.us

.lr.ph.split.us.us.us.us1137.i.us:                ; preds = %bb.aw, %.preheader893.us.us.us.i.us
  %indvars.iv1352.i.us = phi i64 [ %indvars.iv.next1353.i.us, %bb.aw ], [ 0, %.preheader893.us.us.us.i.us ] ; 3 uses
  %.28321085.us.us.us.us.i.us = phi <4 x float> [ %.3833.us.us.us.us.i.us, %bb.aw ], [ %.18311101.us.us.us.i.us, %.preheader893.us.us.us.i.us ] ; 3 uses
  %i.xc = trunc i64 %indvars.iv1352.i.us to i32
  %i.xd = mul i32 %i.wl, %i.xc
  %.reass1089.us.us.us.us.i.us = add i32 %i.xd, %invariant.op1088.i ; 3 uses
  %i.xe = icmp slt i32 %.reass1089.us.us.us.us.i.us, 0
  br i1 %i.xe, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.us.us.us1137.i.us
  %i.xf = srem i32 %.reass1089.us.us.us.us.i.us, %i.wn
  %i.xg = sdiv exact i32 %.reass1089.us.us.us.us.i.us, %i.wn ; 2 uses
  %.not431.us.us.us.us.i.us = icmp eq i32 %i.xf, 0
  %.not432.us.us.us.us.i.us = icmp slt i32 %i.xg, %i.gx
  %or.cond205 = select i1 %.not431.us.us.us.us.i.us, i1 %.not432.us.us.us.us.i.us, i1 false
  br i1 %or.cond205, label %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, label %bb.aw

_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us:        ; preds = %bb.av
  %i.xh = add nuw nsw i64 %indvars.iv1352.i.us, %i.wz
  %i.xi = shl i64 %i.xh, 2
  %i.xj = and i64 %i.xi, 4294967292
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %.03231118.us.us.i, i64 %i.xj
  %i.xl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !417
  %i.xm = load i64, ptr %i.hh, align 8, !tbaa !21, !noalias !417
  %i.xn = mul i64 %i.xm, %i.wq
  %i.xo = load i64, ptr %i.hi, align 8, !tbaa !55, !noalias !417 ; 2 uses
  %i.xp = mul i64 %i.xn, %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.xp
  %i.xr = mul i64 %i.xb, %i.xo
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xr
  %i.xt = shl nsw i32 %i.xg, 2
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [2 x i8], ptr %i.xs, i64 %i.xu
  %i.xw = load i64, ptr %i.xv, align 1, !tbaa !80
  %i.xx = insertelement <2 x i64> poison, i64 %i.xw, i64 0
  %i.xy = bitcast <2 x i64> %i.xx to <8 x i16>
  %i.xz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ya = bitcast <8 x i16> %i.xz to <4 x float>
  %i.yb = load i64, ptr %i.xk, align 1, !tbaa !80
  %i.yc = insertelement <2 x i64> poison, i64 %i.yb, i64 0
  %i.yd = bitcast <2 x i64> %i.yc to <8 x i16>
  %i.ye = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yf = bitcast <8 x i16> %i.ye to <4 x float>
  %i.yg = fmul fast <4 x float> %i.yf, %i.ya
  %i.yh = fadd fast <4 x float> %i.yg, %.28321085.us.us.us.us.i.us
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, %bb.av, %.lr.ph.split.us.us.us.us1137.i.us
  %.3833.us.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us1137.i.us ], [ %.28321085.us.us.us.us.i.us, %bb.av ], [ %i.yh, %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1353.i.us = add nuw nsw i64 %indvars.iv1352.i.us, 1 ; 2 uses
  %exitcond1356.not.i.us = icmp eq i64 %indvars.iv.next1353.i.us, %i.wp
  br i1 %exitcond1356.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us1137.i.us, !llvm.loop !393

..loopexit894_crit_edge.us.us.us.i.us:            ; preds = %bb.aw, %bb.au, %.preheader897.us.us.i.split.us
  %.4834.us.us.us.i.us = phi nsz <4 x float> [ %.18311101.us.us.us.i.us, %.preheader897.us.us.i.split.us ], [ %.18311101.us.us.us.i.us, %bb.au ], [ %.3833.us.us.us.us.i.us, %bb.aw ] ; 2 uses
  %indvars.iv.next1358.i.us = add nuw nsw i64 %indvars.iv1357.i.us, 1 ; 2 uses
  %exitcond1361.not.i.us = icmp eq i64 %indvars.iv.next1358.i.us, %wide.trip.count1360.i
  br i1 %exitcond1361.not.i.us, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us, !llvm.loop !394

.preheader897.us.us.i.split.us79:                 ; preds = %.preheader897.us.us.i, %..loopexit894_crit_edge.us.us.us.i.us86
  %indvars.iv1357.i.us80 = phi i64 [ %indvars.iv.next1358.i.us88, %..loopexit894_crit_edge.us.us.us.i.us86 ], [ 0, %.preheader897.us.us.i ] ; 3 uses
  %.18311101.us.us.us.i.us81 = phi <4 x float> [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ], [ %.08301117.us.us.i, %.preheader897.us.us.i ] ; 3 uses
  %i.yi = trunc i64 %indvars.iv1357.i.us80 to i32
  %i.yj = mul i32 %i.wh, %i.yi
  %.reass1107.us.us.us.i.us82 = add i32 %i.yj, %invariant.op1106.i ; 3 uses
  %i.yk = icmp slt i32 %.reass1107.us.us.us.i.us82, 0
  br i1 %i.yk, label %..loopexit894_crit_edge.us.us.us.i.us86, label %bb.ax

bb.ax:                                            ; preds = %.preheader897.us.us.i.split.us79
  %i.yl = srem i32 %.reass1107.us.us.us.i.us82, %i.wj
  %i.ym = sdiv exact i32 %.reass1107.us.us.us.i.us82, %i.wj ; 2 uses
  %.not429.us.us.us.i.us83 = icmp eq i32 %i.yl, 0
  %.not430.us.us.us.i.us84 = icmp slt i32 %i.ym, %i.gy
  %or.cond206 = select i1 %.not429.us.us.us.i.us83, i1 %.not430.us.us.us.i.us84, i1 false
  br i1 %or.cond206, label %.preheader893.us.us.us.i.us85, label %..loopexit894_crit_edge.us.us.us.i.us86

.preheader893.us.us.us.i.us85:                    ; preds = %bb.ax
  %i.yn = mul nuw nsw i64 %indvars.iv1357.i.us80, %i.wp
  %i.yo = sext i32 %i.ym to i64
  %i.yp = mul nsw i64 %i.yo, %i.hz
  br label %.lr.ph.split.us1091.us.us.us.i.us

.lr.ph.split.us1091.us.us.us.i.us:                ; preds = %bb.az, %.preheader893.us.us.us.i.us85
  %indvars.iv1347.i.us = phi i64 [ %indvars.iv.next1348.i.us, %bb.az ], [ 0, %.preheader893.us.us.us.i.us85 ] ; 3 uses
  %.28321085.us1093.us.us.us.i.us = phi <4 x float> [ %.3833.us1097.us.us.us.i.us, %bb.az ], [ %.18311101.us.us.us.i.us81, %.preheader893.us.us.us.i.us85 ] ; 3 uses
  %i.yq = trunc i64 %indvars.iv1347.i.us to i32
  %i.yr = mul i32 %i.wl, %i.yq
  %.reass1089.us1094.us.us.us.i.us = add i32 %i.yr, %invariant.op1088.i ; 3 uses
  %i.ys = icmp slt i32 %.reass1089.us1094.us.us.us.i.us, 0
  br i1 %i.ys, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.split.us1091.us.us.us.i.us
  %i.yt = srem i32 %.reass1089.us1094.us.us.us.i.us, %i.wn
  %i.yu = sdiv exact i32 %.reass1089.us1094.us.us.us.i.us, %i.wn ; 2 uses
  %.not431.us1095.us.us.us.i.us = icmp eq i32 %i.yt, 0
  %.not432.us1096.us.us.us.i.us = icmp slt i32 %i.yu, %i.gx
  %or.cond207 = select i1 %.not431.us1095.us.us.us.i.us, i1 %.not432.us1096.us.us.us.i.us, i1 false
  br i1 %or.cond207, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.az

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.ay
  %i.yv = load ptr, ptr %1, align 8, !tbaa !20, !noalias !418
  %i.yw = load i64, ptr %i.hh, align 8, !tbaa !21, !noalias !418
  %i.yx = load i64, ptr %i.hi, align 8, !tbaa !55, !noalias !418 ; 2 uses
  %factor.op.mul1080.us.us.us.us.i.us = mul i64 %i.yx, %i.yw ; 4 uses
  %i.yy = mul i64 %i.yp, %i.yx
  %invariant.gep.us.us.us1133.us.i.us = getelementptr i8, ptr %i.yv, i64 %i.yy
  %i.yz = sext i32 %i.yu to i64
  %invariant.gep1082.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1133.us.i.us, i64 %i.yz ; 4 uses
  %.reass1081.us.us.us.us.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %indvars.iv1362.i
  %gep1083.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.i.us
  %i.za = load i16, ptr %gep1083.us.us.us.us.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.1.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wr
  %gep1083.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.1.i.us
  %i.zb = load i16, ptr %gep1083.us.us.us.us.1.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.2.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.ws
  %gep1083.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.2.i.us
  %i.zc = load i16, ptr %gep1083.us.us.us.us.2.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.3.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wt
  %gep1083.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.3.i.us
  %i.zd = load i16, ptr %gep1083.us.us.us.us.3.i.us, align 2, !tbaa !86
  %i.ze = insertelement <4 x i16> poison, i16 %i.za, i64 0
  %i.zf = insertelement <4 x i16> %i.ze, i16 %i.zb, i64 1
  %i.zg = insertelement <4 x i16> %i.zf, i16 %i.zc, i64 2
  %i.zh = insertelement <4 x i16> %i.zg, i16 %i.zd, i64 3
  %i.zi = zext <4 x i16> %i.zh to <4 x i32>
  %i.zj = shl nuw <4 x i32> %i.zi, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.zj to <4 x float>
  %i.zk = add nuw nsw i64 %indvars.iv1347.i.us, %i.yn
  %i.zl = shl i64 %i.zk, 2
  %i.zm = and i64 %i.zl, 4294967292
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %.03231118.us.us.i, i64 %i.zm
  %i.zo = load i64, ptr %i.zn, align 1, !tbaa !80
  %i.zp = insertelement <2 x i64> poison, i64 %i.zo, i64 0
  %i.zq = bitcast <2 x i64> %i.zp to <8 x i16>
  %i.zr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zs = bitcast <8 x i16> %i.zr to <4 x float>
  %i.zt = fmul fast <4 x float> %i.zs, %.sroa.0.12.vec.insert.i.us
  %i.zu = fadd fast <4 x float> %i.zt, %.28321085.us1093.us.us.us.i.us
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.ay, %.lr.ph.split.us1091.us.us.us.i.us
  %.3833.us1097.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us1093.us.us.us.i.us, %.lr.ph.split.us1091.us.us.us.i.us ], [ %i.zu, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28321085.us1093.us.us.us.i.us, %bb.ay ] ; 2 uses
  %indvars.iv.next1348.i.us = add nuw nsw i64 %indvars.iv1347.i.us, 1 ; 2 uses
  %exitcond1351.not.i.us = icmp eq i64 %indvars.iv.next1348.i.us, %i.wp
  br i1 %exitcond1351.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us86, label %.lr.ph.split.us1091.us.us.us.i.us, !llvm.loop !393

..loopexit894_crit_edge.us.us.us.i.us86:          ; preds = %bb.az, %bb.ax, %.preheader897.us.us.i.split.us79
  %.4834.us.us.us.i.us87 = phi nsz <4 x float> [ %.18311101.us.us.us.i.us81, %.preheader897.us.us.i.split.us79 ], [ %.18311101.us.us.us.i.us81, %bb.ax ], [ %.3833.us1097.us.us.us.i.us, %bb.az ] ; 2 uses
  %indvars.iv.next1358.i.us88 = add nuw nsw i64 %indvars.iv1357.i.us80, 1 ; 2 uses
  %exitcond1361.not.i.us89 = icmp eq i64 %indvars.iv.next1358.i.us88, %wide.trip.count1360.i
  br i1 %exitcond1361.not.i.us89, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us79, !llvm.loop !394

._crit_edge1104.split.us.us.us.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i.us86, %..loopexit894_crit_edge.us.us.us.i.us, %.preheader897.us.us.i
  %.us-phi78 = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ], [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ] ; 2 uses
  %i.zv = getelementptr inbounds [2 x i8], ptr %.03231118.us.us.i, i64 %i.wa ; 2 uses
  %indvars.iv.next1363.i = add nuw nsw i64 %indvars.iv1362.i, 4 ; 2 uses
  %i.zw = icmp slt i64 %indvars.iv.next1363.i, %invariant.op1450.i
  br i1 %i.zw, label %.preheader897.us.us.i, label %._crit_edge1122.i, !llvm.loop !397

._crit_edge1122.i:                                ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0830.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader897.lr.ph.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 2 uses
  %.0323.lcssa.i = phi ptr [ %i.vv, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1340.i, %.preheader897.lr.ph.i ], [ %i.zv, %._crit_edge1104.split.us.us.us.i ] ; 4 uses
  %.0322.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.ht, %.preheader897.lr.ph.i ], [ %i.ia, %._crit_edge1104.split.us.us.us.i ] ; 9 uses
  %i.zx = shufflevector <4 x float> %.0830.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.zy = fadd fast <4 x float> %i.zx, %.0830.lcssa.i ; 2 uses
  %i.zz = extractelement <4 x float> %i.zy, i64 1
  %i.aaa = extractelement <4 x float> %i.zy, i64 0
  %i.aab = fadd fast float %i.zz, %.0326.i
  %i.aac = fadd fast float %i.aab, %i.aaa         ; 4 uses
  %i.aad = or disjoint i32 %.0322.lcssa.i, 1
  %i.aae = icmp slt i32 %i.aad, %i.gw
  br i1 %i.aae, label %.preheader896.lr.ph.i, label %.preheader898.i

.preheader896.lr.ph.i:                            ; preds = %._crit_edge1122.i
  %i.aaf = load i32, ptr %i.d, align 4
  %i.aag = load i32, ptr %i.j, align 4
  %invariant.op1157.i = sub i32 %.neg875.i, %i.aag
  %i.aah = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aai = load i32, ptr %i.a, align 4
  %.fr1235.i = freeze i32 %i.aai                  ; 2 uses
  %i.aaj = load i32, ptr %i.c, align 4
  %i.aak = load i32, ptr %i.i, align 4
  %.neg873.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1150.i = sub i32 %.neg873.i, %i.aak
  %i.aal = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.vx, label %.preheader896.lr.ph.split.us.i, label %.preheader896.preheader.i

.preheader896.preheader.i:                        ; preds = %.preheader896.lr.ph.i
  %i.aam = add i32 %.0322.lcssa.i, 3
  %smax1365.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 %i.aam)
  %reass.sub93 = sub i32 %smax1365.i, %.0322.lcssa.i
  %i.aan = and i32 %reass.sub93, -2               ; 2 uses
  %i.aao = add i32 %i.aan, -2
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = add nuw nsw i64 %i.aap, 2
  %i.aar = mul nsw i64 %i.aaq, %i.wc
  %scevgep1366.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.aar
  %i.aas = add i32 %.0322.lcssa.i, %i.aan
  br label %.preheader898.i

.preheader896.lr.ph.split.us.i:                   ; preds = %.preheader896.lr.ph.i
  %i.aat = icmp sgt i32 %.fr1235.i, 0
  br i1 %i.aat, label %.preheader896.us.us.preheader.i, label %.preheader896.us.preheader.i

.preheader896.us.preheader.i:                     ; preds = %.preheader896.lr.ph.split.us.i
  %i.aau = add i32 %.0322.lcssa.i, 3
  %smax1367.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 %i.aau)
  %reass.sub94 = sub i32 %smax1367.i, %.0322.lcssa.i
  %i.aav = and i32 %reass.sub94, -2               ; 2 uses
  %i.aaw = add i32 %i.aav, -2
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = add nuw nsw i64 %i.aax, 2
  %i.aaz = mul nsw i64 %i.aay, %i.wc
  %scevgep1368.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.aaz
  %i.aba = add i32 %.0322.lcssa.i, %i.aav
  br label %.preheader898.i

.preheader896.us.us.preheader.i:                  ; preds = %.preheader896.lr.ph.split.us.i
  %i.abb = zext nneg i32 %.fr1235.i to i64        ; 2 uses
  %i.abc = zext i32 %.0322.lcssa.i to i64
  br label %.preheader896.us.us.i

.preheader896.us.us.i:                            ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.us.preheader.i
  %indvars.iv1382.i = phi i64 [ %i.abc, %.preheader896.us.us.preheader.i ], [ %indvars.iv.next1383.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.13241162.us.us.i = phi ptr [ %.0323.lcssa.i, %.preheader896.us.us.preheader.i ], [ %i.aco, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %.13271161.us.us.i = phi float [ %i.aac, %.preheader896.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ]
  %i.abd = add nuw nsw i64 %indvars.iv1382.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %..loopexit892_crit_edge.us.us.us.i, %.preheader896.us.us.i
  %indvars.iv1377.i = phi i64 [ %indvars.iv.next1378.i, %..loopexit892_crit_edge.us.us.us.i ], [ 0, %.preheader896.us.us.i ] ; 3 uses
  %.23281152.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit892_crit_edge.us.us.us.i ], [ %.13271161.us.us.i, %.preheader896.us.us.i ] ; 3 uses
  %i.abe = trunc i64 %indvars.iv1377.i to i32
  %i.abf = mul i32 %i.aaf, %i.abe
  %.reass1158.us.us.us.i = add i32 %i.abf, %invariant.op1157.i ; 3 uses
  %i.abg = icmp slt i32 %.reass1158.us.us.us.i, 0
  br i1 %i.abg, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abh = srem i32 %.reass1158.us.us.us.i, %i.aah
  %i.abi = sdiv exact i32 %.reass1158.us.us.us.i, %i.aah ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.abh, 0
  %.not426.us.us.us.i = icmp slt i32 %i.abi, %i.gy
  %or.cond208 = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond208, label %.preheader891.us.us.us.i, label %..loopexit892_crit_edge.us.us.us.i

.preheader891.us.us.us.i:                         ; preds = %bb.bb
  %i.abj = mul nuw nsw i64 %indvars.iv1377.i, %i.abb
  %i.abk = sext i32 %i.abi to i64
  %i.abl = mul nsw i64 %i.abk, %i.hz
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.us.us.us.i, %.preheader891.us.us.us.i
  %indvars.iv1372.i = phi i64 [ %indvars.iv.next1373.i, %.loopexit.us.us.us.i ], [ 0, %.preheader891.us.us.us.i ] ; 3 uses
  %.31147.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.23281152.us.us.us.i, %.preheader891.us.us.us.i ] ; 3 uses
  %i.abm = trunc i64 %indvars.iv1372.i to i32
  %i.abn = mul i32 %i.aaj, %i.abm
  %.reass1151.us.us.us.i = add i32 %invariant.op1150.i, %i.abn ; 3 uses
  %i.abo = icmp slt i32 %.reass1151.us.us.us.i, 0
  br i1 %i.abo, label %.loopexit.us.us.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.abp = srem i32 %.reass1151.us.us.us.i, %i.aal
  %i.abq = sdiv exact i32 %.reass1151.us.us.us.i, %i.aal ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.abp, 0
  %.not428.us.us.us.i = icmp slt i32 %i.abq, %i.gx
  %or.cond209 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond209, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.bd
  %i.abr = add nuw nsw i64 %indvars.iv1372.i, %i.abj
  %.idx1440.i = shl nuw nsw i64 %i.abr, 2
  %i.abs = getelementptr inbounds nuw i8, ptr %.13241162.us.us.i, i64 %.idx1440.i
  %i.abt = load ptr, ptr %1, align 8, !tbaa !20, !noalias !419
  %i.abu = load i64, ptr %i.hh, align 8, !tbaa !21, !noalias !419
  %i.abv = load i64, ptr %i.hi, align 8, !tbaa !55, !noalias !419 ; 2 uses
  %factor.op.mul1141.us.us.us.i = mul i64 %i.abv, %i.abu ; 2 uses
  %i.abw = mul i64 %i.abl, %i.abv
  %invariant.gep.us.us.us1179.i = getelementptr i8, ptr %i.abt, i64 %i.abw
  %i.abx = sext i32 %i.abq to i64
  %invariant.gep1143.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1179.i, i64 %i.abx ; 2 uses
  %.reass1142.us.us.us.i = mul i64 %factor.op.mul1141.us.us.us.i, %indvars.iv1382.i
  %gep1144.us.us.us.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.i
  %i.aby = load i16, ptr %gep1144.us.us.us.i, align 2, !tbaa !86
  %.reass1142.us.us.us.1.i = mul i64 %factor.op.mul1141.us.us.us.i, %i.abd
  %gep1144.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.1.i
  %i.abz = load i16, ptr %gep1144.us.us.us.1.i, align 2, !tbaa !86
  %i.aca = insertelement <2 x i16> poison, i16 %i.aby, i64 0
  %i.acb = insertelement <2 x i16> %i.aca, i16 %i.abz, i64 1
  %i.acc = zext <2 x i16> %i.acb to <2 x i32>
  %i.acd = shl nuw <2 x i32> %i.acc, splat (i32 16)
  %i.ace = bitcast <2 x i32> %i.acd to <2 x float>
  %i.acf = load <2 x i16>, ptr %i.abs, align 2, !tbaa !86
  %i.acg = zext <2 x i16> %i.acf to <2 x i32>
  %i.ach = shl nuw <2 x i32> %i.acg, splat (i32 16)
  %i.aci = bitcast <2 x i32> %i.ach to <2 x float>
  %i.acj = fmul fast <2 x float> %i.aci, %i.ace   ; 2 uses
  %i.ack = extractelement <2 x float> %i.acj, i64 0
  %i.acl = fadd fast float %.31147.us.us.us.i, %i.ack
  %i.acm = extractelement <2 x float> %i.acj, i64 1
  %i.acn = fadd fast float %i.acm, %i.acl
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.bd, %bb.bc
  %.6.us.us.us.i = phi nsz float [ %.31147.us.us.us.i, %bb.bc ], [ %.31147.us.us.us.i, %bb.bd ], [ %i.acn, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1373.i = add nuw nsw i64 %indvars.iv1372.i, 1 ; 2 uses
  %exitcond1376.not.i = icmp eq i64 %indvars.iv.next1373.i, %i.abb
  br i1 %exitcond1376.not.i, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bc, !llvm.loop !400

..loopexit892_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.bb, %bb.ba
  %.8.us.us.us.i = phi nsz float [ %.23281152.us.us.us.i, %bb.ba ], [ %.23281152.us.us.us.i, %bb.bb ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1378.i = add nuw nsw i64 %indvars.iv1377.i, 1 ; 2 uses
  %exitcond1381.not.i = icmp eq i64 %indvars.iv.next1378.i, %wide.trip.count1360.i
  br i1 %exitcond1381.not.i, label %._crit_edge1155.split.us.us.us.i, label %bb.ba, !llvm.loop !401

._crit_edge1155.split.us.us.us.i:                 ; preds = %..loopexit892_crit_edge.us.us.us.i
  %i.aco = getelementptr inbounds [2 x i8], ptr %.13241162.us.us.i, i64 %i.wc ; 2 uses
  %indvars.iv.next1383.i = add nuw nsw i64 %indvars.iv1382.i, 2 ; 2 uses
  %i.acp = trunc i64 %indvars.iv.next1383.i to i32 ; 2 uses
  %i.acq = or i32 %i.acp, 1
  %i.acr = icmp slt i32 %i.acq, %i.gw
  br i1 %i.acr, label %.preheader896.us.us.i, label %.preheader898.i, !llvm.loop !402

.preheader898.i:                                  ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.preheader.i, %.preheader896.preheader.i, %._crit_edge1122.i
  %.1327.lcssa.i = phi float [ %i.aac, %._crit_edge1122.i ], [ %i.aac, %.preheader896.preheader.i ], [ %i.aac, %.preheader896.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.1324.lcssa.i = phi ptr [ %.0323.lcssa.i, %._crit_edge1122.i ], [ %scevgep1366.i, %.preheader896.preheader.i ], [ %scevgep1368.i, %.preheader896.us.preheader.i ], [ %i.aco, %._crit_edge1155.split.us.us.us.i ]
  %.1.lcssa.i = phi i32 [ %.0322.lcssa.i, %._crit_edge1122.i ], [ %i.aas, %.preheader896.preheader.i ], [ %i.aba, %.preheader896.us.preheader.i ], [ %i.acp, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %i.acs = icmp slt i32 %.1.lcssa.i, %i.gw
  br i1 %i.acs, label %.preheader895.lr.ph.i, label %._crit_edge1201.i

.preheader895.lr.ph.i:                            ; preds = %.preheader898.i
  %i.act = load i32, ptr %i.d, align 4
  %i.acu = load i32, ptr %i.j, align 4
  %invariant.op1193.i = sub i32 %.neg875.i, %i.acu
  %i.acv = load i32, ptr %i.f, align 4            ; 2 uses
  %i.acw = load i32, ptr %i.a, align 4
  %.fr1236.i = freeze i32 %i.acw                  ; 2 uses
  %i.acx = load i32, ptr %i.c, align 4
  %i.acy = load i32, ptr %i.i, align 4
  %.neg869.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1186.i = sub i32 %.neg869.i, %i.acy
  %i.acz = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ada = icmp sgt i32 %.fr1236.i, 0
  %or.cond1453.i = and i1 %i.vx, %i.ada
  br i1 %or.cond1453.i, label %.preheader895.us.us.preheader.i, label %._crit_edge1201.i

.preheader895.us.us.preheader.i:                  ; preds = %.preheader895.lr.ph.i
  %i.adb = zext nneg i32 %.fr1236.i to i64        ; 2 uses
  %i.adc = zext i32 %.1.lcssa.i to i64
  br label %.preheader895.us.us.i

.preheader895.us.us.i:                            ; preds = %._crit_edge1191.split.us.us.us.i, %.preheader895.us.us.preheader.i
  %indvars.iv1395.i = phi i64 [ %i.adc, %.preheader895.us.us.preheader.i ], [ %indvars.iv.next1396.i, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.23251198.us.us.i = phi ptr [ %.1324.lcssa.i, %.preheader895.us.us.preheader.i ], [ %i.aem, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.91197.us.us.i = phi float [ %.1327.lcssa.i, %.preheader895.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge1191.split.us.us.us.i ]
  br label %bb.be

bb.be:                                            ; preds = %..loopexit890_crit_edge.us.us.us.i, %.preheader895.us.us.i
  %indvars.iv1390.i = phi i64 [ %indvars.iv.next1391.i, %..loopexit890_crit_edge.us.us.us.i ], [ 0, %.preheader895.us.us.i ] ; 3 uses
  %.101188.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit890_crit_edge.us.us.us.i ], [ %.91197.us.us.i, %.preheader895.us.us.i ] ; 3 uses
  %i.add = trunc i64 %indvars.iv1390.i to i32
  %i.ade = mul i32 %i.act, %i.add
  %.reass1194.us.us.us.i = add i32 %i.ade, %invariant.op1193.i ; 3 uses
  %i.adf = icmp slt i32 %.reass1194.us.us.us.i, 0
  br i1 %i.adf, label %..loopexit890_crit_edge.us.us.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.adg = srem i32 %.reass1194.us.us.us.i, %i.acv
  %i.adh = sdiv exact i32 %.reass1194.us.us.us.i, %i.acv ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.adg, 0
  %.not422.us.us.us.i = icmp slt i32 %i.adh, %i.gy
  %or.cond210 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond210, label %.preheader.us.us.us.i, label %..loopexit890_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.bf
  %i.adi = mul nuw nsw i64 %indvars.iv1390.i, %i.adb
  %i.adj = sext i32 %i.adh to i64
  %i.adk = getelementptr inbounds nuw [2 x i8], ptr %.23251198.us.us.i, i64 %i.adi
  %i.adl = mul nsw i64 %i.adj, %i.hz
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader.us.us.us.i
  %indvars.iv1385.i = phi i64 [ %indvars.iv.next1386.i, %bb.bi ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.111183.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.bi ], [ %.101188.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.adm = trunc i64 %indvars.iv1385.i to i32
  %i.adn = mul i32 %i.acx, %i.adm
  %.reass1187.us.us.us.i = add i32 %invariant.op1186.i, %i.adn ; 3 uses
  %i.ado = icmp slt i32 %.reass1187.us.us.us.i, 0
  br i1 %i.ado, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.adp = srem i32 %.reass1187.us.us.us.i, %i.acz
  %i.adq = sdiv exact i32 %.reass1187.us.us.us.i, %i.acz ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.adp, 0
  %.not424.us.us.us.i = icmp slt i32 %i.adq, %i.gx
  %or.cond211 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond211, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.bi

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.bh
  %i.adr = load ptr, ptr %1, align 8, !tbaa !20, !noalias !420
  %i.ads = load i64, ptr %i.hh, align 8, !tbaa !21, !noalias !420
  %i.adt = mul i64 %i.ads, %indvars.iv1395.i
  %i.adu = load i64, ptr %i.hi, align 8, !tbaa !55, !noalias !420 ; 2 uses
  %i.adv = mul i64 %i.adt, %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adv
  %i.adx = mul i64 %i.adl, %i.adu
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.adx
  %i.adz = sext i32 %i.adq to i64
  %i.aea = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %i.adz
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !86
  %i.aec = zext i16 %i.aeb to i32
  %i.aed = shl nuw i32 %i.aec, 16
  %i.aee = bitcast i32 %i.aed to float
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.adk, i64 %indvars.iv1385.i
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !86
  %i.aeh = zext i16 %i.aeg to i32
  %i.aei = shl nuw i32 %i.aeh, 16
  %i.aej = bitcast i32 %i.aei to float
  %i.aek = fmul fast float %i.aej, %i.aee
  %i.ael = fadd fast float %i.aek, %.111183.us.us.us.i
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.bh, %bb.bg
  %.13.us.us.us.i = phi nsz float [ %.111183.us.us.us.i, %bb.bg ], [ %.111183.us.us.us.i, %bb.bh ], [ %i.ael, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next1386.i = add nuw nsw i64 %indvars.iv1385.i, 1 ; 2 uses
  %exitcond1389.not.i = icmp eq i64 %indvars.iv.next1386.i, %i.adb
  br i1 %exitcond1389.not.i, label %..loopexit890_crit_edge.us.us.us.i, label %bb.bg, !llvm.loop !405

..loopexit890_crit_edge.us.us.us.i:               ; preds = %bb.bi, %bb.bf, %bb.be
  %.15.us.us.us.i = phi nsz float [ %.101188.us.us.us.i, %bb.be ], [ %.101188.us.us.us.i, %bb.bf ], [ %.13.us.us.us.i, %bb.bi ] ; 3 uses
  %indvars.iv.next1391.i = add nuw nsw i64 %indvars.iv1390.i, 1 ; 2 uses
  %exitcond1394.not.i = icmp eq i64 %indvars.iv.next1391.i, %wide.trip.count1360.i
  br i1 %exitcond1394.not.i, label %._crit_edge1191.split.us.us.us.i, label %bb.be, !llvm.loop !406

._crit_edge1191.split.us.us.us.i:                 ; preds = %..loopexit890_crit_edge.us.us.us.i
  %i.aem = getelementptr inbounds [2 x i8], ptr %.23251198.us.us.i, i64 %i.wd
  %indvars.iv.next1396.i = add nuw nsw i64 %indvars.iv1395.i, 1 ; 2 uses
  %i.aen = trunc nuw i64 %indvars.iv.next1396.i to i32
  %i.aeo = icmp sgt i32 %i.gw, %i.aen
  br i1 %i.aeo, label %.preheader895.us.us.i, label %._crit_edge1201.i, !llvm.loop !407

._crit_edge1201.i:                                ; preds = %._crit_edge1191.split.us.us.us.i, %.preheader895.lr.ph.i, %.preheader898.i
  %.9.lcssa.i = phi float [ %.1327.lcssa.i, %.preheader898.i ], [ %.1327.lcssa.i, %.preheader895.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge1191.split.us.us.us.i ] ; 13 uses
  switch i32 %i.vu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.bj
    i32 2, label %bb.bk
    i32 3, label %bb.bl
    i32 4, label %bb.bn
    i32 5, label %bb.bo
    i32 6, label %bb.bp
  ]

bb.bj:                                            ; preds = %._crit_edge1201.i
  %i.aep = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bk:                                            ; preds = %._crit_edge1201.i
  %i.aeq = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !39
  %i.aes = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.aet = select fast i1 %i.aes, float 1.000000e+00, float %i.aer
  %i.aeu = fmul fast float %i.aet, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bl:                                            ; preds = %._crit_edge1201.i
  %i.aev = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !39
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !39 ; 2 uses
  %.0828.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.aew) ; 2 uses
  %i.aez = fcmp fast ogt float %.0828.i, %i.aey
  br i1 %i.aez, label %bb.bm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bm:                                            ; preds = %bb.bl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bn:                                            ; preds = %._crit_edge1201.i
  %.sroa.speculated785.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated785.i, float f0xC2B0C0A5)
  %i.afa = fneg fast float %.sroa.speculated.i
  %i.afb = call fast float @llvm.exp.f32(float %i.afa)
  %i.afc = fadd fast float %i.afb, 1.000000e+00
  %i.afd = fdiv fast float 1.000000e+00, %i.afc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bo:                                            ; preds = %._crit_edge1201.i
  %i.afe = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.aff = fadd fast float %i.afe, 1.000000e+00
  %i.afg = call fast float @llvm.log.f32(float %i.aff)
  %i.afh = call fast float @llvm.tanh.f32(float %i.afg)
  %i.afi = fmul fast float %i.afh, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.bp:                                            ; preds = %._crit_edge1201.i
  %i.afj = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !39 ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 4
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !39 ; 2 uses
  %i.afn = fneg fast float %i.afm
  %i.afo = fdiv fast float %i.afn, %i.afk         ; 2 uses
  %i.afp = fcmp fast olt float %.9.lcssa.i, %i.afo
  br i1 %i.afp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.afq = fdiv fast float 1.000000e+00, %i.afk
  %i.afr = fadd fast float %i.afo, %i.afq
  %i.afs = fcmp fast ogt float %.9.lcssa.i, %i.afr
  br i1 %i.afs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.aft = fmul fast float %i.afk, %.9.lcssa.i
  %i.afu = fadd fast float %i.aft, %i.afm
  %i.afv = fmul fast float %i.afu, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %._crit_edge1201.i
  %.1829.i = phi nsz float [ %.9.lcssa.i, %._crit_edge1201.i ], [ %i.aep, %bb.bj ], [ %i.aeu, %bb.bk ], [ %i.aey, %bb.bm ], [ %.0828.i, %bb.bl ], [ %i.afd, %bb.bn ], [ %i.afi, %bb.bo ], [ %i.afv, %bb.br ], [ %.9.lcssa.i, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  %i.afw = bitcast float %.1829.i to i32
  %i.afx = lshr i32 %i.afw, 16
  %i.afy = trunc nuw i32 %i.afx to i16
  store i16 %i.afy, ptr %.13321212.i, align 2, !tbaa !86
  %i.afz = getelementptr inbounds nuw i8, ptr %.13321212.i, i64 2 ; 2 uses
  %i.aga = add nuw nsw i32 %.03291213.i, 1        ; 2 uses
  %exitcond1398.not.i = icmp eq i32 %i.aga, %i.gz
  br i1 %exitcond1398.not.i, label %._crit_edge1214.i, label %bb.as, !llvm.loop !408

.loopexit:                                        ; preds = %._crit_edge1218.i, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i, %._crit_edge1072.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bs unwind label %bb.f

bb.bs:                                            ; preds = %.loopexit
  %i.agb = load ptr, ptr %2, align 8, !tbaa !20
  %i.agc = icmp eq ptr %i.agb, null
  br i1 %i.agc, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bs
  %i.agd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.age = load i64, ptr %i.agd, align 8, !tbaa !21
  %i.agf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !61
  %i.agh = sext i32 %i.agg to i64
  %i.agi = mul i64 %i.age, %i.agh
  %.fr = freeze i64 %i.agi
  %i.agj = icmp eq i64 %.fr, 0
  br i1 %i.agj, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.bs, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %_ZNK4ncnn3Mat5emptyEv.exit42.thread

_ZNK4ncnn3Mat5emptyEv.exit42.thread:              ; preds = %bb.t, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit42
  %.0 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit42 ], [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %bb.t ]
  %i.agk = load ptr, ptr %i.bh, align 8, !tbaa !18 ; 2 uses
  %.not.i33 = icmp eq ptr %i.agk, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit42.thread
  %i.agl = atomicrmw add ptr %i.agk, i32 -1 acq_rel, align 4
  %i.agm = icmp eq i32 %i.agl, 1
  br i1 %i.agm, label %bb.bu, label %_ZN4ncnn3MatD2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  %i.agn = load ptr, ptr %i.bk, align 16, !tbaa !19 ; 3 uses
  %.not3.i34 = icmp eq ptr %i.agn, null
  %i.ago = load ptr, ptr %4, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i34, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.agp = load ptr, ptr %i.agn, align 8, !tbaa !12
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 24
  %i.agr = load ptr, ptr %i.agq, align 8
  invoke void %i.agr(ptr noundef nonnull align 8 dereferenceable(8) %i.agn, ptr noundef %i.ago)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.by, !inline_history !0

bb.bw:                                            ; preds = %bb.bu
  %.not.i37 = icmp eq ptr %i.ago, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @free(ptr noundef nonnull %i.ago) #10
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115, label %scalar.ph, !llvm.loop !442

._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115: ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not = icmp eq i32 %i.er, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge, label %.noexc44.us108

._crit_edge:                                      ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115, %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us, %.noexc44.us98.prol.loopexit, %.noexc44.us98, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.split, %.noexc44.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !60     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !60
  %i.h = load i32, ptr %0, align 4, !tbaa !60     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !60
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !60
  %i.k = load i32, ptr %i.a, align 4, !tbaa !60   ; 2 uses
  %.not792 = icmp sgt i32 %i.k, %i.j
  br i1 %.not792, label %._crit_edge794, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !65
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge794

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge791.split
  %.0202793 = phi i32 [ %i.bh, %._crit_edge791.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !59
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !61
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !54  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !65  ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !54  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !65  ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader672.lr.ph, label %._crit_edge791.split

.preheader672.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !60
  %i.ak = shl nsw i32 %.0202793, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader672.preheader, label %._crit_edge791.split

.preheader672.preheader:                          ; preds = %.preheader672.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20, !noalias !468
  %i.as = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !468
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !55, !noalias !468
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 2 uses
  %i.ba = and i32 %i.az, -4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 4                ; 2 uses
  %i.bd = and i32 %i.az, -4
  %i.be = add nuw i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %invariant.op = add nsw i64 %i.bf, -3
  %i.bg = trunc nuw nsw i64 %i.bc to i32
  br label %.preheader672

.preheader672:                                    ; preds = %.preheader672.preheader, %._crit_edge
  %.0198790 = phi i32 [ %.neg660, %._crit_edge ], [ 0, %.preheader672.preheader ]
  %.0199789 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader672.preheader ]
  %.neg660 = add nuw nsw i32 %.0198790, 1         ; 5 uses
  br label %bb.c

._crit_edge791.split:                             ; preds = %._crit_edge, %.preheader672.lr.ph, %.noexc299
  %i.bh = add i32 %.0202793, 1
  %exitcond839.not = icmp eq i32 %.0202793, %i.j
  br i1 %exitcond839.not, label %._crit_edge794, label %.noexc299, !llvm.loop !446

._crit_edge:                                      ; preds = %bb.aa
  %exitcond838.not = icmp eq i32 %.neg660, %i.ag
  br i1 %exitcond838.not, label %._crit_edge791.split, label %.preheader672, !llvm.loop !447

bb.c:                                             ; preds = %.preheader672, %bb.aa
  %.0197788 = phi i32 [ 0, %.preheader672 ], [ %i.tj, %bb.aa ] ; 4 uses
  %.1200787 = phi ptr [ %.0199789, %.preheader672 ], [ %.3, %bb.aa ] ; 8 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not221 = icmp eq ptr %i.bi, null
  br i1 %.not221, label %_ZN4ncnn3MatD2Ev.exit242, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.an
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !80
  br label %_ZN4ncnn3MatD2Ev.exit242

_ZN4ncnn3MatD2Ev.exit242:                         ; preds = %bb.d, %bb.c
  %.0636 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.bk, %bb.d ] ; 3 uses
  %i.bl = load ptr, ptr %7, align 8, !tbaa !20, !noalias !469 ; 2 uses
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !469
  %i.bn = mul i64 %i.bm, %i.ap
  %i.bo = load i64, ptr %i.v, align 8, !tbaa !55, !noalias !469
  %i.bp = mul i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp ; 2 uses
  br i1 %i.aq, label %.preheader669.lr.ph, label %.preheader671

.preheader669.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit242
  %i.br = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  %.neg662 = add nuw nsw i32 %.0197788, 1
  %i.bt = load i32, ptr %16, align 4, !tbaa !60
  %i.bu = shl i32 %i.bt, 4
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  br i1 %i.bs, label %.preheader669.lr.ph.split.us, label %.preheader669.preheader

.preheader669.preheader:                          ; preds = %.preheader669.lr.ph
  %i.bw = mul nsw i64 %i.bc, %i.bv
  %i.bx = getelementptr i8, ptr %i.bl, i64 %i.bp
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.bw
  br label %.preheader671

.preheader669.lr.ph.split.us:                     ; preds = %.preheader669.lr.ph
  %i.by = load i32, ptr %9, align 4, !tbaa !60
  %i.bz = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op714.us = sub i32 %.neg660, %i.bz
  br label %.preheader669.us

.preheader669.us:                                 ; preds = %._crit_edge.us, %.preheader669.lr.ph.split.us
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %._crit_edge.us ], [ 0, %.preheader669.lr.ph.split.us ] ; 6 uses
  %.0194720.us = phi ptr [ %i.hh, %._crit_edge.us ], [ %i.bq, %.preheader669.lr.ph.split.us ] ; 3 uses
  %.0620719.us = phi <4 x float> [ %.5.us, %._crit_edge.us ], [ zeroinitializer, %.preheader669.lr.ph.split.us ]
  %.0624718.us = phi <4 x float> [ %.5629.us, %._crit_edge.us ], [ zeroinitializer, %.preheader669.lr.ph.split.us ]
  %.0630717.us = phi <4 x float> [ %.5635.us, %._crit_edge.us ], [ zeroinitializer, %.preheader669.lr.ph.split.us ]
  %.1637716.us = phi <4 x float> [ %.6642.us, %._crit_edge.us ], [ %.0636, %.preheader669.lr.ph.split.us ]
  %i.ca = or disjoint i64 %indvars.iv815, 3
  %i.cb = or disjoint i64 %indvars.iv815, 1
  %i.cc = or disjoint i64 %indvars.iv815, 2
  %i.cd = lshr exact i64 %indvars.iv815, 2
  br label %bb.e

bb.e:                                             ; preds = %.preheader669.us, %.loopexit666.us
  %.0192709.us = phi i32 [ 0, %.preheader669.us ], [ %i.hg, %.loopexit666.us ] ; 3 uses
  %.1621708.us = phi <4 x float> [ %.0620719.us, %.preheader669.us ], [ %.5.us, %.loopexit666.us ] ; 6 uses
  %.1625707.us = phi <4 x float> [ %.0624718.us, %.preheader669.us ], [ %.5629.us, %.loopexit666.us ] ; 6 uses
  %.1631706.us = phi <4 x float> [ %.0630717.us, %.preheader669.us ], [ %.5635.us, %.loopexit666.us ] ; 6 uses
  %.2638705.us = phi <4 x float> [ %.1637716.us, %.preheader669.us ], [ %.6642.us, %.loopexit666.us ] ; 6 uses
  %i.ce = mul nsw i32 %i.by, %.0192709.us
  %.reass715.us = add i32 %i.ce, %invariant.op714.us ; 3 uses
  %i.cf = icmp slt i32 %.reass715.us, 0
  br i1 %i.cf, label %.loopexit666.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.ch = srem i32 %.reass715.us, %i.cg
  %i.ci = sdiv exact i32 %.reass715.us, %i.cg     ; 2 uses
  %.not231.us = icmp eq i32 %i.ch, 0
  %.not232.us = icmp slt i32 %i.ci, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader665.us, label %.loopexit666.us

.preheader665.us:                                 ; preds = %bb.f
  %i.cj = load i32, ptr %12, align 4, !tbaa !60   ; 4 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.us, label %.loopexit666.us

.lr.ph.us:                                        ; preds = %.preheader665.us
  %i.cl = load i32, ptr %13, align 4, !tbaa !60   ; 2 uses
  %i.cm = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us = sub i32 %.neg662, %i.cm      ; 2 uses
  %i.cn = mul nuw nsw i32 %i.cj, %.0192709.us     ; 2 uses
  %i.co = sext i32 %i.ci to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit666.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us684.us.preheader
  ]

.lr.ph.split.us684.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.cj to i64
  br label %.lr.ph.split.us684.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count812 = zext nneg i32 %i.cj to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us684.us:                            ; preds = %.lr.ph.split.us684.us.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us684.us.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.2622676.us686.us = phi <4 x float> [ %.1621708.us, %.lr.ph.split.us684.us.preheader ], [ %.4.us696.us, %bb.h ] ; 3 uses
  %.2626675.us687.us = phi <4 x float> [ %.1625707.us, %.lr.ph.split.us684.us.preheader ], [ %.4628.us695.us, %bb.h ] ; 3 uses
  %.2632674.us688.us = phi <4 x float> [ %.1631706.us, %.lr.ph.split.us684.us.preheader ], [ %.4634.us694.us, %bb.h ] ; 3 uses
  %.3639673.us689.us = phi <4 x float> [ %.2638705.us, %.lr.ph.split.us684.us.preheader ], [ %.5641.us693.us, %bb.h ] ; 3 uses
  %i.cp = trunc i64 %indvars.iv to i32
  %i.cq = mul i32 %i.cl, %i.cp
  %.reass.us690.us = add i32 %i.cq, %invariant.op.us ; 3 uses
  %i.cr = icmp slt i32 %.reass.us690.us, 0
  br i1 %i.cr, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us684.us
  %i.cs = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.ct = srem i32 %.reass.us690.us, %i.cs
  %i.cu = sdiv exact i32 %.reass.us690.us, %i.cs  ; 2 uses
  %.not233.us691.us = icmp eq i32 %i.ct, 0
  %.not234.us692.us = icmp slt i32 %i.cu, %i.ad
  %or.cond873 = select i1 %.not233.us691.us, i1 %.not234.us692.us, i1 false
  br i1 %or.cond873, label %_ZN4ncnn3MatD2Ev.exit240.us.us, label %bb.h

_ZN4ncnn3MatD2Ev.exit240.us.us:                   ; preds = %bb.g
  %i.cv = trunc i64 %indvars.iv to i32
  %i.cw = add i32 %i.cn, %i.cv
  %i.cx = shl nsw i32 %i.cw, 4
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.0194720.us, i64 %i.cy ; 4 uses
  %i.da = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !470
  %i.db = load ptr, ptr %4, align 8, !tbaa !20, !noalias !470 ; 4 uses
  %i.dc = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !470 ; 4 uses
  %i.dd = mul i64 %i.dc, %indvars.iv815
  %i.de = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !470 ; 5 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.df
  %i.dh = sext i32 %i.da to i64
  %i.di = mul nsw i64 %i.dh, %i.co
  %i.dj = mul i64 %i.di, %i.de                    ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  %i.dl = sext i32 %i.cu to i64                   ; 4 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !39
  %i.do = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = mul i64 %i.dc, %i.cb
  %i.dr = mul i64 %i.dq, %i.de
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dj
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dl
  %i.dv = load float, ptr %i.du, align 4, !tbaa !39
  %i.dw = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dy = mul i64 %i.dc, %i.cc
  %i.dz = mul i64 %i.dy, %i.de
  %i.ea = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dj
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dl
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !39
  %i.ee = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = mul i64 %i.dc, %i.ca
  %i.eh = mul i64 %i.eg, %i.de
  %i.ei = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dj
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.dl
  %i.el = load float, ptr %i.ek, align 4, !tbaa !39
  %i.em = insertelement <4 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = load <4 x float>, ptr %i.cz, align 16, !tbaa !80
  %i.ep = fmul fast <4 x float> %i.eo, %i.dp
  %i.eq = fadd fast <4 x float> %i.ep, %.3639673.us689.us
  %i.er = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.es = load <4 x float>, ptr %i.er, align 16, !tbaa !80
  %i.et = fmul fast <4 x float> %i.es, %i.dx
  %i.eu = fadd fast <4 x float> %i.et, %.2632674.us688.us
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.ew = load <4 x float>, ptr %i.ev, align 16, !tbaa !80
  %i.ex = fmul fast <4 x float> %i.ew, %i.ef
  %i.ey = fadd fast <4 x float> %i.ex, %.2626675.us687.us
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.fa = load <4 x float>, ptr %i.ez, align 16, !tbaa !80
  %i.fb = fmul fast <4 x float> %i.fa, %i.en
  %i.fc = fadd fast <4 x float> %i.fb, %.2622676.us686.us
  br label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit240.us.us, %bb.g, %.lr.ph.split.us684.us
  %.5641.us693.us = phi nsz <4 x float> [ %.3639673.us689.us, %.lr.ph.split.us684.us ], [ %.3639673.us689.us, %bb.g ], [ %i.eq, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4634.us694.us = phi nsz <4 x float> [ %.2632674.us688.us, %.lr.ph.split.us684.us ], [ %.2632674.us688.us, %bb.g ], [ %i.eu, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4628.us695.us = phi nsz <4 x float> [ %.2626675.us687.us, %.lr.ph.split.us684.us ], [ %.2626675.us687.us, %bb.g ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4.us696.us = phi nsz <4 x float> [ %.2622676.us686.us, %.lr.ph.split.us684.us ], [ %.2622676.us686.us, %bb.g ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit666.us, label %.lr.ph.split.us684.us, !llvm.loop !452

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.k
  %indvars.iv809 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next810, %bb.k ] ; 3 uses
  %.2622676.us.us = phi <4 x float> [ %.1621708.us, %.lr.ph.split.us.us.preheader ], [ %.4.us.us, %bb.k ] ; 3 uses
  %.2626675.us.us = phi <4 x float> [ %.1625707.us, %.lr.ph.split.us.us.preheader ], [ %.4628.us.us, %bb.k ] ; 3 uses
  %.2632674.us.us = phi <4 x float> [ %.1631706.us, %.lr.ph.split.us.us.preheader ], [ %.4634.us.us, %bb.k ] ; 3 uses
  %.3639673.us.us = phi <4 x float> [ %.2638705.us, %.lr.ph.split.us.us.preheader ], [ %.5641.us.us, %bb.k ] ; 3 uses
  %i.fd = trunc i64 %indvars.iv809 to i32
  %i.fe = mul i32 %i.cl, %i.fd
  %.reass.us.us = add i32 %i.fe, %invariant.op.us ; 3 uses
  %i.ff = icmp slt i32 %.reass.us.us, 0
  br i1 %i.ff, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.us
  %i.fg = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.fh = srem i32 %.reass.us.us, %i.fg
  %i.fi = sdiv exact i32 %.reass.us.us, %i.fg     ; 2 uses
  %.not233.us.us = icmp eq i32 %i.fh, 0
  %.not234.us.us = icmp slt i32 %i.fi, %i.ad
  %or.cond874 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond874, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fj = trunc i64 %indvars.iv809 to i32
  %i.fk = add i32 %i.cn, %i.fj
  %i.fl = shl nsw i32 %i.fk, 4
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0194720.us, i64 %i.fm ; 4 uses
  %i.fo = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !471
  %i.fp = load ptr, ptr %4, align 8, !tbaa !20, !noalias !471
  %i.fq = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !471
  %i.fr = mul i64 %i.fq, %i.cd
  %i.fs = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !471 ; 2 uses
  %i.ft = mul i64 %i.fr, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ft
  %i.fv = sext i32 %i.fo to i64
  %i.fw = mul nsw i64 %i.fv, %i.co
  %i.fx = mul i64 %i.fw, %i.fs
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fx
  %i.fz = shl nsw i32 %i.fi, 2
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ga ; 4 uses
  %i.gc = load float, ptr %i.gb, align 1, !tbaa !80
  %i.gd = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gg = load float, ptr %i.gf, align 1, !tbaa !80
  %i.gh = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gk = load float, ptr %i.gj, align 1, !tbaa !80
  %i.gl = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.go = load float, ptr %i.gn, align 1, !tbaa !80
  %i.gp = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = load <4 x float>, ptr %i.fn, align 16, !tbaa !80
  %i.gs = fmul fast <4 x float> %i.gr, %i.ge
  %i.gt = fadd fast <4 x float> %i.gs, %.3639673.us.us
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.gv = load <4 x float>, ptr %i.gu, align 16, !tbaa !80
  %i.gw = fmul fast <4 x float> %i.gv, %i.gi
  %i.gx = fadd fast <4 x float> %i.gw, %.2632674.us.us
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !tbaa !80
  %i.ha = fmul fast <4 x float> %i.gz, %i.gm
  %i.hb = fadd fast <4 x float> %i.ha, %.2626675.us.us
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !80
  %i.he = fmul fast <4 x float> %i.hd, %i.gq
  %i.hf = fadd fast <4 x float> %i.he, %.2622676.us.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.us.us
  %.5641.us.us = phi nsz <4 x float> [ %.3639673.us.us, %.lr.ph.split.us.us ], [ %i.gt, %bb.j ], [ %.3639673.us.us, %bb.i ] ; 2 uses
  %.4634.us.us = phi nsz <4 x float> [ %.2632674.us.us, %.lr.ph.split.us.us ], [ %i.gx, %bb.j ], [ %.2632674.us.us, %bb.i ] ; 2 uses
  %.4628.us.us = phi nsz <4 x float> [ %.2626675.us.us, %.lr.ph.split.us.us ], [ %i.hb, %bb.j ], [ %.2626675.us.us, %bb.i ] ; 2 uses
  %.4.us.us = phi nsz <4 x float> [ %.2622676.us.us, %.lr.ph.split.us.us ], [ %i.hf, %bb.j ], [ %.2622676.us.us, %bb.i ] ; 2 uses
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1 ; 2 uses
  %exitcond813.not = icmp eq i64 %indvars.iv.next810, %wide.trip.count812
  br i1 %exitcond813.not, label %.loopexit666.us, label %.lr.ph.split.us.us, !llvm.loop !452

.loopexit666.us:                                  ; preds = %bb.h, %bb.k, %.lr.ph.us, %.preheader665.us, %bb.f, %bb.e
  %.6642.us = phi nsz <4 x float> [ %.2638705.us, %bb.e ], [ %.2638705.us, %bb.f ], [ %.5641.us.us, %bb.k ], [ %.2638705.us, %.preheader665.us ], [ %.2638705.us, %.lr.ph.us ], [ %.5641.us693.us, %bb.h ] ; 3 uses
  %.5635.us = phi nsz <4 x float> [ %.1631706.us, %bb.e ], [ %.1631706.us, %bb.f ], [ %.4634.us.us, %bb.k ], [ %.1631706.us, %.preheader665.us ], [ %.1631706.us, %.lr.ph.us ], [ %.4634.us694.us, %bb.h ] ; 3 uses
  %.5629.us = phi nsz <4 x float> [ %.1625707.us, %bb.e ], [ %.1625707.us, %bb.f ], [ %.4628.us.us, %bb.k ], [ %.1625707.us, %.preheader665.us ], [ %.1625707.us, %.lr.ph.us ], [ %.4628.us695.us, %bb.h ] ; 3 uses
  %.5.us = phi nsz <4 x float> [ %.1621708.us, %bb.e ], [ %.1621708.us, %bb.f ], [ %.4.us.us, %bb.k ], [ %.1621708.us, %.preheader665.us ], [ %.1621708.us, %.lr.ph.us ], [ %.4.us696.us, %bb.h ] ; 3 uses
  %i.hg = add nuw nsw i32 %.0192709.us, 1         ; 2 uses
  %exitcond814.not = icmp eq i32 %i.hg, %i.br
  br i1 %exitcond814.not, label %._crit_edge.us, label %bb.e, !llvm.loop !455

._crit_edge.us:                                   ; preds = %.loopexit666.us
  %i.hh = getelementptr inbounds [4 x i8], ptr %.0194720.us, i64 %i.bv ; 2 uses
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 4 ; 2 uses
  %i.hi = icmp slt i64 %indvars.iv.next816, %invariant.op
  br i1 %i.hi, label %.preheader669.us, label %.preheader671.loopexit, !llvm.loop !456

.preheader671.loopexit:                           ; preds = %._crit_edge.us
  %i.hj = fadd fast <4 x float> %.5.us, %.5629.us
  br label %.preheader671

.preheader671:                                    ; preds = %.preheader669.preheader, %.preheader671.loopexit, %_ZN4ncnn3MatD2Ev.exit242
  %.1637.lcssa = phi <4 x float> [ %.0636, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.6642.us, %.preheader671.loopexit ], [ %.0636, %.preheader669.preheader ] ; 3 uses
  %.0630.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.5635.us, %.preheader671.loopexit ], [ zeroinitializer, %.preheader669.preheader ] ; 3 uses
  %.0620.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.hj, %.preheader671.loopexit ], [ zeroinitializer, %.preheader669.preheader ]
  %.0194.lcssa = phi ptr [ %i.bq, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.hh, %.preheader671.loopexit ], [ %scevgep, %.preheader669.preheader ] ; 3 uses
  %.0193.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.bg, %.preheader671.loopexit ], [ %i.be, %.preheader669.preheader ] ; 6 uses
  %i.hk = or disjoint i32 %.0193.lcssa, 1         ; 2 uses
  %i.hl = icmp slt i32 %i.hk, %i.ac
  br i1 %i.hl, label %.preheader668.lr.ph, label %.preheader670

.preheader668.lr.ph:                              ; preds = %.preheader671
  %i.hm = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  %.neg658 = add nuw nsw i32 %.0197788, 1
  %i.ho = load i32, ptr %16, align 4, !tbaa !60
  %i.hp = shl i32 %i.ho, 3
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  br i1 %i.hn, label %.preheader668.lr.ph.split.us, label %.preheader668.preheader

.preheader668.preheader:                          ; preds = %.preheader668.lr.ph
  %i.hr = add i32 %.0193.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.hr)
  %i.hs = add i32 %smax, -2
  %i.ht = sub i32 %i.hs, %.0193.lcssa             ; 2 uses
  %i.hu = lshr i32 %i.ht, 1
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl nuw nsw i64 %i.hv, 2
  %i.hx = add nuw nsw i64 %i.hw, 4
  %i.hy = mul i64 %i.hx, %i.hq
  %scevgep818 = getelementptr i8, ptr %.0194.lcssa, i64 %i.hy
  %i.hz = add i32 %.0193.lcssa, 2
  %i.ia = and i32 %i.ht, -2
  %i.ib = add i32 %i.hz, %i.ia
  br label %.preheader670

.preheader668.lr.ph.split.us:                     ; preds = %.preheader668.lr.ph
  %i.ic = load i32, ptr %9, align 4, !tbaa !60
  %i.id = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op752.us = sub i32 %.neg660, %i.id
  %i.ie = zext i32 %.0193.lcssa to i64
  %i.if = zext nneg i32 %i.hk to i64
  br label %.preheader668.us

.preheader668.us:                                 ; preds = %._crit_edge.us764, %.preheader668.lr.ph.split.us
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %._crit_edge.us764 ], [ %i.ie, %.preheader668.lr.ph.split.us ] ; 2 uses
  %i.ig = phi i64 [ %i.kk, %._crit_edge.us764 ], [ %i.if, %.preheader668.lr.ph.split.us ]
  %.1195756.us = phi ptr [ %i.kj, %._crit_edge.us764 ], [ %.0194.lcssa, %.preheader668.lr.ph.split.us ] ; 2 uses
  %.6755.us = phi <4 x float> [ %.10.us, %._crit_edge.us764 ], [ %.0630.lcssa, %.preheader668.lr.ph.split.us ]
  %.7643754.us = phi <4 x float> [ %.11.us, %._crit_edge.us764 ], [ %.1637.lcssa, %.preheader668.lr.ph.split.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader668.us, %.loopexit664.us
  %.0190748.us = phi i32 [ 0, %.preheader668.us ], [ %i.ke, %.loopexit664.us ] ; 3 uses
  %.7747.us = phi <4 x float> [ %.6755.us, %.preheader668.us ], [ %.10.us, %.loopexit664.us ] ; 4 uses
  %.8644746.us = phi <4 x float> [ %.7643754.us, %.preheader668.us ], [ %.11.us, %.loopexit664.us ] ; 4 uses
  %i.ih = mul nsw i32 %i.ic, %.0190748.us
  %.reass753.us = add i32 %i.ih, %invariant.op752.us ; 3 uses
  %i.ii = icmp slt i32 %.reass753.us, 0
  br i1 %i.ii, label %.loopexit664.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ij = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.ik = srem i32 %.reass753.us, %i.ij
  %i.il = sdiv exact i32 %.reass753.us, %i.ij     ; 2 uses
  %.not227.us = icmp eq i32 %i.ik, 0
  %.not228.us = icmp slt i32 %i.il, %i.ae
  %or.cond875 = select i1 %.not227.us, i1 %.not228.us, i1 false
  br i1 %or.cond875, label %.preheader663.us, label %.loopexit664.us

.preheader663.us:                                 ; preds = %bb.m
  %i.im = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph.us762, label %.loopexit664.us

bb.n:                                             ; preds = %.lr.ph.us762, %bb.p
  %indvars.iv819 = phi i64 [ 0, %.lr.ph.us762 ], [ %indvars.iv.next820, %bb.p ] ; 3 uses
  %.8743.us = phi <4 x float> [ %.7747.us, %.lr.ph.us762 ], [ %.9.us, %bb.p ] ; 3 uses
  %.9645742.us = phi <4 x float> [ %.8644746.us, %.lr.ph.us762 ], [ %.10646.us, %bb.p ] ; 3 uses
  %i.io = trunc i64 %indvars.iv819 to i32
  %i.ip = mul i32 %i.kf, %i.io
  %.reass.us = add i32 %i.ip, %invariant.op.us763 ; 3 uses
  %i.iq = icmp slt i32 %.reass.us, 0
  br i1 %i.iq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ir = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.is = srem i32 %.reass.us, %i.ir
  %i.it = sdiv exact i32 %.reass.us, %i.ir        ; 2 uses
  %.not229.us = icmp eq i32 %i.is, 0
  %.not230.us = icmp slt i32 %i.it, %i.ad
  %or.cond876 = select i1 %.not229.us, i1 %.not230.us, i1 false
  br i1 %or.cond876, label %_ZN4ncnn3MatD2Ev.exit236.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit236.us:                      ; preds = %bb.o
  %i.iu = trunc i64 %indvars.iv819 to i32
  %i.iv = add i32 %i.kh, %i.iu
  %i.iw = shl nsw i32 %i.iv, 3
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.1195756.us, i64 %i.ix ; 2 uses
  %i.iz = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !472
  %i.ja = load ptr, ptr %4, align 8, !tbaa !20, !noalias !472 ; 2 uses
  %i.jb = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !472 ; 2 uses
  %i.jc = mul i64 %i.jb, %indvars.iv825
  %i.jd = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !472 ; 3 uses
  %i.je = mul i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.je
  %i.jg = sext i32 %i.iz to i64
  %i.jh = mul nsw i64 %i.jg, %i.ki
  %i.ji = mul i64 %i.jh, %i.jd                    ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ji
  %i.jk = mul i64 %i.jb, %i.ig
  %i.jl = mul i64 %i.jk, %i.jd
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jl
  %i.jn = sext i32 %i.it to i64                   ; 2 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ji
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jn
  %i.jr = load float, ptr %i.jo, align 4, !tbaa !39
  %i.js = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = load float, ptr %i.jq, align 4, !tbaa !39
  %i.jv = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = load <4 x float>, ptr %i.iy, align 16, !tbaa !80
  %i.jy = fmul fast <4 x float> %i.jt, %i.jx
  %i.jz = fadd fast <4 x float> %i.jy, %.9645742.us
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.kb = load <4 x float>, ptr %i.ka, align 16, !tbaa !80
  %i.kc = fmul fast <4 x float> %i.jw, %i.kb
  %i.kd = fadd fast <4 x float> %i.kc, %.8743.us
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit236.us, %bb.o, %bb.n
  %.10646.us = phi nsz <4 x float> [ %.9645742.us, %bb.n ], [ %i.jz, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.9645742.us, %bb.o ] ; 2 uses
  %.9.us = phi nsz <4 x float> [ %.8743.us, %bb.n ], [ %i.kd, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.8743.us, %bb.o ] ; 2 uses
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1 ; 2 uses
  %exitcond823.not = icmp eq i64 %indvars.iv.next820, %wide.trip.count822
  br i1 %exitcond823.not, label %.loopexit664.us, label %bb.n, !llvm.loop !459

.loopexit664.us:                                  ; preds = %bb.p, %.preheader663.us, %bb.m, %bb.l
  %.11.us = phi nsz <4 x float> [ %.8644746.us, %bb.l ], [ %.8644746.us, %bb.m ], [ %.8644746.us, %.preheader663.us ], [ %.10646.us, %bb.p ] ; 3 uses
  %.10.us = phi nsz <4 x float> [ %.7747.us, %bb.l ], [ %.7747.us, %bb.m ], [ %.7747.us, %.preheader663.us ], [ %.9.us, %bb.p ] ; 3 uses
  %i.ke = add nuw nsw i32 %.0190748.us, 1         ; 2 uses
  %exitcond824.not = icmp eq i32 %i.ke, %i.hm
  br i1 %exitcond824.not, label %._crit_edge.us764, label %bb.l, !llvm.loop !460

.lr.ph.us762:                                     ; preds = %.preheader663.us
  %i.kf = load i32, ptr %13, align 4, !tbaa !60
  %i.kg = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us763 = sub i32 %.neg658, %i.kg
  %i.kh = mul nuw nsw i32 %i.im, %.0190748.us
  %i.ki = sext i32 %i.il to i64
  %wide.trip.count822 = zext nneg i32 %i.im to i64
  br label %bb.n

._crit_edge.us764:                                ; preds = %.loopexit664.us
  %i.kj = getelementptr inbounds [4 x i8], ptr %.1195756.us, i64 %i.hq ; 2 uses
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 2 ; 3 uses
  %i.kk = or disjoint i64 %indvars.iv.next826, 1  ; 2 uses
  %i.kl = trunc nuw i64 %i.kk to i32
  %i.km = icmp sgt i32 %i.ac, %i.kl
  br i1 %i.km, label %.preheader668.us, label %.preheader670.loopexit, !llvm.loop !461

.preheader670.loopexit:                           ; preds = %._crit_edge.us764
  %i.kn = trunc nuw i64 %indvars.iv.next826 to i32
  br label %.preheader670

.preheader670:                                    ; preds = %.preheader668.preheader, %.preheader670.loopexit, %.preheader671
  %.7643.lcssa = phi <4 x float> [ %.1637.lcssa, %.preheader671 ], [ %.11.us, %.preheader670.loopexit ], [ %.1637.lcssa, %.preheader668.preheader ] ; 3 uses
  %.6.lcssa = phi <4 x float> [ %.0630.lcssa, %.preheader671 ], [ %.10.us, %.preheader670.loopexit ], [ %.0630.lcssa, %.preheader668.preheader ]
  %.1195.lcssa = phi ptr [ %.0194.lcssa, %.preheader671 ], [ %i.kj, %.preheader670.loopexit ], [ %scevgep818, %.preheader668.preheader ]
  %.1.lcssa = phi i32 [ %.0193.lcssa, %.preheader671 ], [ %i.kn, %.preheader670.loopexit ], [ %i.ib, %.preheader668.preheader ] ; 2 uses
  %i.ko = icmp slt i32 %.1.lcssa, %i.ac
  br i1 %i.ko, label %.preheader667.lr.ph, label %._crit_edge779

.preheader667.lr.ph:                              ; preds = %.preheader670
  %i.kp = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  %.neg654 = add nuw nsw i32 %.0197788, 1
  %i.kr = load i32, ptr %16, align 4, !tbaa !60
  %i.ks = shl nsw i32 %i.kr, 2
  %i.kt = sext i32 %i.ks to i64
  br i1 %i.kq, label %.preheader667.lr.ph.split.us, label %._crit_edge779

.preheader667.lr.ph.split.us:                     ; preds = %.preheader667.lr.ph
  %i.ku = load i32, ptr %9, align 4, !tbaa !60
  %i.kv = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op774.us = sub i32 %.neg660, %i.kv
  %i.kw = zext i32 %.1.lcssa to i64
  br label %.preheader667.us

.preheader667.us:                                 ; preds = %._crit_edge.us785, %.preheader667.lr.ph.split.us
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %._crit_edge.us785 ], [ %i.kw, %.preheader667.lr.ph.split.us ] ; 2 uses
  %.2196777.us = phi ptr [ %i.mn, %._crit_edge.us785 ], [ %.1195.lcssa, %.preheader667.lr.ph.split.us ] ; 2 uses
  %.12776.us = phi <4 x float> [ %.16.us, %._crit_edge.us785 ], [ %.7643.lcssa, %.preheader667.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader667.us, %.loopexit.us
  %.0188771.us = phi i32 [ 0, %.preheader667.us ], [ %i.mi, %.loopexit.us ] ; 3 uses
  %.13770.us = phi <4 x float> [ %.12776.us, %.preheader667.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.kx = mul nsw i32 %i.ku, %.0188771.us
  %.reass775.us = add i32 %i.kx, %invariant.op774.us ; 3 uses
  %i.ky = icmp slt i32 %.reass775.us, 0
  br i1 %i.ky, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kz = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.la = srem i32 %.reass775.us, %i.kz
  %i.lb = sdiv exact i32 %.reass775.us, %i.kz     ; 2 uses
  %.not223.us = icmp eq i32 %i.la, 0
  %.not224.us = icmp slt i32 %i.lb, %i.ae
  %or.cond877 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond877, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.r
  %i.lc = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph.us782, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us782, %bb.v
  %indvars.iv828 = phi i64 [ 0, %.lr.ph.us782 ], [ %indvars.iv.next829, %bb.v ] ; 3 uses
  %.14768.us = phi <4 x float> [ %.13770.us, %.lr.ph.us782 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.le = trunc i64 %indvars.iv828 to i32
  %i.lf = mul i32 %i.mj, %i.le
  %.reass.us781 = add i32 %i.lf, %invariant.op.us783 ; 3 uses
  %i.lg = icmp slt i32 %.reass.us781, 0
  br i1 %i.lg, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lh = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.li = srem i32 %.reass.us781, %i.lh
  %i.lj = sdiv exact i32 %.reass.us781, %i.lh     ; 2 uses
  %.not225.us = icmp eq i32 %i.li, 0
  %.not226.us = icmp slt i32 %i.lj, %i.ad
  %or.cond878 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond878, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lk = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !473
  %i.ll = load ptr, ptr %4, align 8, !tbaa !20, !noalias !473
  %i.lm = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !473
  %i.ln = mul i64 %i.lm, %indvars.iv834
  %i.lo = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !473 ; 2 uses
  %i.lp = mul i64 %i.ln, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lp
  %i.lr = sext i32 %i.lk to i64
  %i.ls = trunc i64 %indvars.iv828 to i32
  %i.lt = add i32 %i.ml, %i.ls
  %i.lu = shl nsw i32 %i.lt, 2
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.2196777.us, i64 %i.lv
  %i.lx = mul nsw i64 %i.lr, %i.mm
  %i.ly = mul i64 %i.lx, %i.lo
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ly
  %i.ma = sext i32 %i.lj to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !39
  %i.md = insertelement <4 x float> poison, float %i.mc, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = load <4 x float>, ptr %i.lw, align 16, !tbaa !80
  %i.mg = fmul fast <4 x float> %i.me, %i.mf
  %i.mh = fadd fast <4 x float> %i.mg, %.14768.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14768.us, %bb.s ], [ %i.mh, %bb.u ], [ %.14768.us, %bb.t ] ; 2 uses
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 1 ; 2 uses
  %exitcond832.not = icmp eq i64 %indvars.iv.next829, %wide.trip.count831
  br i1 %exitcond832.not, label %.loopexit.us, label %bb.s, !llvm.loop !464

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13770.us, %bb.q ], [ %.13770.us, %bb.r ], [ %.13770.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.mi = add nuw nsw i32 %.0188771.us, 1         ; 2 uses
  %exitcond833.not = icmp eq i32 %i.mi, %i.kp
  br i1 %exitcond833.not, label %._crit_edge.us785, label %bb.q, !llvm.loop !465

.lr.ph.us782:                                     ; preds = %.preheader.us
  %i.mj = load i32, ptr %13, align 4, !tbaa !60
  %i.mk = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us783 = sub i32 %.neg654, %i.mk
  %i.ml = mul nuw nsw i32 %i.lc, %.0188771.us
  %i.mm = sext i32 %i.lb to i64
  %wide.trip.count831 = zext nneg i32 %i.lc to i64
  br label %bb.s

._crit_edge.us785:                                ; preds = %.loopexit.us
  %i.mn = getelementptr inbounds [4 x i8], ptr %.2196777.us, i64 %i.kt
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv.next835 to i32
  %i.mp = icmp sgt i32 %i.ac, %i.mo
  br i1 %i.mp, label %.preheader667.us, label %._crit_edge779, !llvm.loop !466

._crit_edge779:                                   ; preds = %._crit_edge.us785, %.preheader667.lr.ph, %.preheader670
  %.12.lcssa = phi <4 x float> [ %.7643.lcssa, %.preheader670 ], [ %.7643.lcssa, %.preheader667.lr.ph ], [ %.16.us, %._crit_edge.us785 ]
  %i.mq = fadd fast <4 x float> %.0620.lcssa, %.6.lcssa
  %i.mr = fadd fast <4 x float> %i.mq, %.12.lcssa ; 10 uses
  %i.ms = load i32, ptr %17, align 4, !tbaa !60
  switch i32 %i.ms, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge779
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge779
  %i.mu = load ptr, ptr %18, align 8, !tbaa !20
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !39
  %i.mw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mr)
  %i.mx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mr)
  %i.my = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> zeroinitializer
  %i.na = fmul fast <4 x float> %i.mz, %i.mx
  %i.nb = fadd fast <4 x float> %i.na, %i.mw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge779
  %i.nc = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !39
  %i.ne = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !39
  %i.ni = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> nofpclass(nan inf) %i.nf)
  %i.nl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> nofpclass(nan inf) %i.nj)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge779
  %i.nm = fneg fast <4 x float> %i.mr
  %i.nn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> splat (float f0x42B0C0A5))
  %i.no = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.np = fmul fast <4 x float> %i.no, splat (float f0x3FB8AA3B)
  %i.nq = fadd fast <4 x float> %i.np, splat (float 5.000000e-01) ; 2 uses
  %i.nr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nq)
  %i.ns = sitofp fast <4 x i32> %i.nr to <4 x float> ; 2 uses
  %i.nt = fcmp fast olt <4 x float> %i.nq, %i.ns
  %i.nu = select <4 x i1> %i.nt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nv = fsub fast <4 x float> %i.ns, %i.nu      ; 2 uses
  %i.nw = fmul fast <4 x float> %i.nv, splat (float f0x3F317218)
  %i.nx = fsub fast <4 x float> %i.no, %i.nw      ; 8 uses
  %i.ny = fmul fast <4 x float> %i.nx, %i.nx
  %i.nz = fmul fast <4 x float> %i.nx, splat (float f0x39506967)
  %i.oa = fadd fast <4 x float> %i.nz, splat (float f0x3AB743CE)
  %i.ob = fmul fast <4 x float> %i.oa, %i.nx
  %i.oc = fadd fast <4 x float> %i.ob, splat (float f0x3C088908)
  %i.od = fmul fast <4 x float> %i.oc, %i.nx
  %i.oe = fadd fast <4 x float> %i.od, splat (float f0x3D2AA9C1)
  %i.of = fmul fast <4 x float> %i.oe, %i.nx
  %i.og = fadd fast <4 x float> %i.of, splat (float f0x3E2AAAAA)
  %i.oh = fmul fast <4 x float> %i.og, %i.nx
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 5.000000e-01)
  %i.oj = fmul fast <4 x float> %i.ny, %i.oi
  %i.ok = fadd fast <4 x float> %i.nx, %i.oj
  %i.ol = fadd fast <4 x float> %i.ok, splat (float 1.000000e+00)
  %i.om = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nv)
  %i.on = shl <4 x i32> %i.om, splat (i32 23)
  %i.oo = add <4 x i32> %i.on, splat (i32 1065353216)
  %i.op = bitcast <4 x i32> %i.oo to <4 x float>
  %i.oq = fmul fast <4 x float> %i.ol, %i.op
  %i.or = fadd fast <4 x float> %i.oq, splat (float 1.000000e+00)
  %i.os = fdiv fast <4 x float> splat (float 1.000000e+00), %i.or
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge779
  %i.ot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> splat (float f0x42B0C0A5))
  %i.ou = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ot, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ov = fmul fast <4 x float> %i.ou, splat (float f0x3FB8AA3B)
  %i.ow = fadd fast <4 x float> %i.ov, splat (float 5.000000e-01) ; 2 uses
  %i.ox = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ow)
  %i.oy = sitofp fast <4 x i32> %i.ox to <4 x float> ; 2 uses
  %i.oz = fcmp fast olt <4 x float> %i.ow, %i.oy
  %i.pa = select <4 x i1> %i.oz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pb = fsub fast <4 x float> %i.oy, %i.pa      ; 2 uses
  %i.pc = fmul fast <4 x float> %i.pb, splat (float f0x3F317218)
  %i.pd = fsub fast <4 x float> %i.ou, %i.pc      ; 8 uses
  %i.pe = fmul fast <4 x float> %i.pd, %i.pd
  %i.pf = fmul fast <4 x float> %i.pd, splat (float f0x39506967)
  %i.pg = fadd fast <4 x float> %i.pf, splat (float f0x3AB743CE)
  %i.ph = fmul fast <4 x float> %i.pg, %i.pd
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0x3C088908)
  %i.pj = fmul fast <4 x float> %i.pi, %i.pd
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3D2AA9C1)
  %i.pl = fmul fast <4 x float> %i.pk, %i.pd
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0x3E2AAAAA)
  %i.pn = fmul fast <4 x float> %i.pm, %i.pd
  %i.po = fadd fast <4 x float> %i.pn, splat (float 5.000000e-01)
  %i.pp = fmul fast <4 x float> %i.pe, %i.po
  %i.pq = fadd fast <4 x float> %i.pd, %i.pp
  %i.pr = fadd fast <4 x float> %i.pq, splat (float 1.000000e+00)
  %i.ps = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pb)
  %i.pt = shl <4 x i32> %i.ps, splat (i32 23)
  %i.pu = add <4 x i32> %i.pt, splat (i32 1065353216)
  %i.pv = bitcast <4 x i32> %i.pu to <4 x float>
  %i.pw = fmul fast <4 x float> %i.pr, %i.pv
  %i.px = fadd fast <4 x float> %i.pw, splat (float 1.000000e+00) ; 2 uses
  %i.py = fcmp fast ole <4 x float> %i.px, zeroinitializer
  %i.pz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.px, <4 x float> splat (float f0x00800000))
  %i.qa = bitcast <4 x float> %i.pz to <4 x i32>  ; 2 uses
  %i.qb = lshr <4 x i32> %i.qa, splat (i32 23)
  %i.qc = and <4 x i32> %i.qa, splat (i32 -2139095041)
  %i.qd = or disjoint <4 x i32> %i.qc, splat (i32 1056964608)
  %i.qe = bitcast <4 x i32> %i.qd to <4 x float>  ; 3 uses
  %i.qf = add nsw <4 x i32> %i.qb, splat (i32 -127)
  %i.qg = sitofp fast <4 x i32> %i.qf to <4 x float> ; 2 uses
  %i.qh = fadd fast <4 x float> %i.qg, splat (float 1.000000e+00)
  %i.qi = fcmp fast olt <4 x float> %i.qe, splat (float f0x3F3504F3) ; 2 uses
  %i.qj = select <4 x i1> %i.qi, <4 x float> %i.qe, <4 x float> zeroinitializer
  %i.qk = fadd fast <4 x float> %i.qe, splat (float -1.000000e+00)
  %i.ql = select fast <4 x i1> %i.qi, <4 x float> %i.qg, <4 x float> %i.qh
  %i.qm = fadd fast <4 x float> %i.qk, %i.qj      ; 12 uses
  %i.qn = fmul fast <4 x float> %i.qm, %i.qm
  %i.qo = fmul fast <4 x float> %i.qm, splat (float f0x3D9021BB)
  %i.qp = fadd fast <4 x float> %i.qo, splat (float f0xBDEBD1B8)
  %i.qq = fmul fast <4 x float> %i.qp, %i.qm
  %i.qr = fadd fast <4 x float> %i.qq, splat (float f0x3DEF251A)
  %i.qs = fmul fast <4 x float> %i.qr, %i.qm
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0xBDFE5D4F)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qm
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3E11E9BF)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qm
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0xBE2AAE50)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qm
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3E4CCEAC)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qm
  %i.rb = fadd fast <4 x float> %i.ra, splat (float f0xBE7FFFFC)
end_hunk_2
begin_hunk_3_@llvm.x86.sse2.cvttps2dq
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !60     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !60
  %i.h = load i32, ptr %0, align 4, !tbaa !60     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !60
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !60
  %i.k = load i32, ptr %i.a, align 4, !tbaa !60   ; 2 uses
  %.not804 = icmp sgt i32 %i.k, %i.j
  br i1 %.not804, label %._crit_edge806, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !65
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge806

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge803.split
  %.0202805 = phi i32 [ %i.bi, %._crit_edge803.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !59
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !61
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !54  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !65  ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !54  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !65  ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !59  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader684.lr.ph, label %._crit_edge803.split

.preheader684.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !60
  %i.ak = shl nsw i32 %.0202805, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader684.preheader, label %._crit_edge803.split

.preheader684.preheader:                          ; preds = %.preheader684.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20, !noalias !498
  %i.as = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !498
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !55, !noalias !498
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2147483646
  %narrow = add nuw i32 %i.bb, 2
  %i.bc = zext i32 %narrow to i64
  %i.bd = and i32 %i.az, -4
  %i.be = add nuw i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -4
  %i.bh = add i32 %i.bg, 4
  %invariant.op = add nsw i64 %i.bf, -3
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader, %._crit_edge
  %.0198802 = phi i32 [ %.neg672, %._crit_edge ], [ 0, %.preheader684.preheader ]
  %.0199801 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader684.preheader ]
  %.neg672 = add nuw nsw i32 %.0198802, 1         ; 5 uses
  br label %bb.c

._crit_edge803.split:                             ; preds = %._crit_edge, %.preheader684.lr.ph, %.noexc299
  %i.bi = add i32 %.0202805, 1
  %exitcond851.not = icmp eq i32 %.0202805, %i.j
  br i1 %exitcond851.not, label %._crit_edge806, label %.noexc299, !llvm.loop !476

._crit_edge:                                      ; preds = %bb.aa
  %exitcond850.not = icmp eq i32 %.neg672, %i.ag
  br i1 %exitcond850.not, label %._crit_edge803.split, label %.preheader684, !llvm.loop !477

bb.c:                                             ; preds = %.preheader684, %bb.aa
  %.0197800 = phi i32 [ 0, %.preheader684 ], [ %i.wn, %bb.aa ] ; 4 uses
  %.1200799 = phi ptr [ %.0199801, %.preheader684 ], [ %.3, %bb.aa ] ; 8 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not221 = icmp eq ptr %i.bj, null
  br i1 %.not221, label %_ZN4ncnn3MatD2Ev.exit242, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !80
  br label %_ZN4ncnn3MatD2Ev.exit242

_ZN4ncnn3MatD2Ev.exit242:                         ; preds = %bb.d, %bb.c
  %.0648 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !20, !noalias !499 ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !499
  %i.bo = mul i64 %i.bn, %i.ap
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !55, !noalias !499
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 2 uses
  br i1 %i.aq, label %.preheader681.lr.ph, label %.preheader683

.preheader681.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit242
  %i.bs = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %.neg674 = add nuw nsw i32 %.0197800, 1
  %i.bu = load i32, ptr %16, align 4, !tbaa !60
  %i.bv = shl i32 %i.bu, 4
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bt, label %.preheader681.lr.ph.split.us, label %.preheader681.preheader

.preheader681.preheader:                          ; preds = %.preheader681.lr.ph
  %i.bx = mul nsw i64 %i.bc, %i.bw
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bx
  br label %.preheader683

.preheader681.lr.ph.split.us:                     ; preds = %.preheader681.lr.ph
  %i.bz = load i32, ptr %9, align 4, !tbaa !60
  %i.ca = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op726.us = sub i32 %.neg672, %i.ca
  br label %.preheader681.us

.preheader681.us:                                 ; preds = %._crit_edge.us, %.preheader681.lr.ph.split.us
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %._crit_edge.us ], [ 0, %.preheader681.lr.ph.split.us ] ; 6 uses
  %.0194732.us = phi ptr [ %i.jg, %._crit_edge.us ], [ %i.br, %.preheader681.lr.ph.split.us ] ; 3 uses
  %.0632731.us = phi <4 x float> [ %.5.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.0636730.us = phi <4 x float> [ %.5641.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.0642729.us = phi <4 x float> [ %.5647.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.1649728.us = phi <4 x float> [ %.6654.us, %._crit_edge.us ], [ %.0648, %.preheader681.lr.ph.split.us ]
  %i.cb = or disjoint i64 %indvars.iv827, 3
  %i.cc = or disjoint i64 %indvars.iv827, 1
  %i.cd = or disjoint i64 %indvars.iv827, 2
  %i.ce = lshr exact i64 %indvars.iv827, 2
  br label %bb.e

bb.e:                                             ; preds = %.preheader681.us, %.loopexit678.us
  %.0192721.us = phi i32 [ 0, %.preheader681.us ], [ %i.jf, %.loopexit678.us ] ; 3 uses
  %.1633720.us = phi <4 x float> [ %.0632731.us, %.preheader681.us ], [ %.5.us, %.loopexit678.us ] ; 6 uses
  %.1637719.us = phi <4 x float> [ %.0636730.us, %.preheader681.us ], [ %.5641.us, %.loopexit678.us ] ; 6 uses
  %.1643718.us = phi <4 x float> [ %.0642729.us, %.preheader681.us ], [ %.5647.us, %.loopexit678.us ] ; 6 uses
  %.2650717.us = phi <4 x float> [ %.1649728.us, %.preheader681.us ], [ %.6654.us, %.loopexit678.us ] ; 6 uses
  %i.cf = mul nsw i32 %i.bz, %.0192721.us
  %.reass727.us = add i32 %i.cf, %invariant.op726.us ; 3 uses
  %i.cg = icmp slt i32 %.reass727.us, 0
  br i1 %i.cg, label %.loopexit678.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.ci = srem i32 %.reass727.us, %i.ch
  %i.cj = sdiv exact i32 %.reass727.us, %i.ch     ; 2 uses
  %.not231.us = icmp eq i32 %i.ci, 0
  %.not232.us = icmp slt i32 %i.cj, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader677.us, label %.loopexit678.us

.preheader677.us:                                 ; preds = %bb.f
  %i.ck = load i32, ptr %12, align 4, !tbaa !60   ; 4 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.us, label %.loopexit678.us

.lr.ph.us:                                        ; preds = %.preheader677.us
  %i.cm = load i32, ptr %13, align 4, !tbaa !60   ; 2 uses
  %i.cn = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us = sub i32 %.neg674, %i.cn      ; 2 uses
  %i.co = mul nuw nsw i32 %i.ck, %.0192721.us     ; 2 uses
  %i.cp = sext i32 %i.cj to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit678.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us696.us.preheader
  ]

.lr.ph.split.us696.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.ck to i64
  br label %.lr.ph.split.us696.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count824 = zext nneg i32 %i.ck to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us696.us:                            ; preds = %.lr.ph.split.us696.us.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us696.us.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.2634688.us698.us = phi <4 x float> [ %.1633720.us, %.lr.ph.split.us696.us.preheader ], [ %.4.us708.us, %bb.h ] ; 3 uses
  %.2638687.us699.us = phi <4 x float> [ %.1637719.us, %.lr.ph.split.us696.us.preheader ], [ %.4640.us707.us, %bb.h ] ; 3 uses
  %.2644686.us700.us = phi <4 x float> [ %.1643718.us, %.lr.ph.split.us696.us.preheader ], [ %.4646.us706.us, %bb.h ] ; 3 uses
  %.3651685.us701.us = phi <4 x float> [ %.2650717.us, %.lr.ph.split.us696.us.preheader ], [ %.5653.us705.us, %bb.h ] ; 3 uses
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = mul i32 %i.cm, %i.cq
  %.reass.us702.us = add i32 %i.cr, %invariant.op.us ; 3 uses
  %i.cs = icmp slt i32 %.reass.us702.us, 0
  br i1 %i.cs, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us696.us
  %i.ct = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.cu = srem i32 %.reass.us702.us, %i.ct
  %i.cv = sdiv exact i32 %.reass.us702.us, %i.ct  ; 2 uses
  %.not233.us703.us = icmp eq i32 %i.cu, 0
  %.not234.us704.us = icmp slt i32 %i.cv, %i.ad
  %or.cond885 = select i1 %.not233.us703.us, i1 %.not234.us704.us, i1 false
  br i1 %or.cond885, label %_ZN4ncnn3MatD2Ev.exit240.us.us, label %bb.h

_ZN4ncnn3MatD2Ev.exit240.us.us:                   ; preds = %bb.g
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = add i32 %i.co, %i.cw
  %i.cy = shl nsw i32 %i.cx, 4
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.0194732.us, i64 %i.cz ; 4 uses
  %i.db = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !500
  %i.dc = load ptr, ptr %4, align 8, !tbaa !20, !noalias !500 ; 4 uses
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !500 ; 4 uses
  %i.de = mul i64 %i.dd, %indvars.iv827
  %i.df = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !500 ; 5 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.cp
  %i.dk = mul i64 %i.dj, %i.df                    ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.cv to i64                   ; 4 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !86
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw i32 %i.dp, 16
  %i.dr = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %i.ds = bitcast <4 x i32> %i.dr to <4 x float>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = mul i64 %i.dd, %i.cc
  %i.dv = mul i64 %i.du, %i.df
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dk
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.dm
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !86
  %i.ea = zext i16 %i.dz to i32
  %i.eb = shl nuw i32 %i.ea, 16
  %i.ec = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %i.ed = bitcast <4 x i32> %i.ec to <4 x float>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = mul i64 %i.dd, %i.cd
  %i.eg = mul i64 %i.ef, %i.df
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dk
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.dm
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !86
  %i.el = zext i16 %i.ek to i32
  %i.em = shl nuw i32 %i.el, 16
  %i.en = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %i.eo = bitcast <4 x i32> %i.en to <4 x float>
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = mul i64 %i.dd, %i.cb
  %i.er = mul i64 %i.eq, %i.df
  %i.es = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.dk
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.dm
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !86
  %i.ew = zext i16 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 16
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = bitcast <4 x i32> %i.ey to <4 x float>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = load i64, ptr %i.da, align 1, !tbaa !80
  %i.fc = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %i.fd = bitcast <2 x i64> %i.fc to <8 x i16>
  %i.fe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = bitcast <8 x i16> %i.fe to <4 x float>
  %i.fg = fmul fast <4 x float> %i.dt, %i.ff
  %i.fh = fadd fast <4 x float> %i.fg, %.3651685.us701.us
  %i.fi = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.fj = load i64, ptr %i.fi, align 1, !tbaa !80
  %i.fk = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %i.fl = bitcast <2 x i64> %i.fk to <8 x i16>
  %i.fm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fn = bitcast <8 x i16> %i.fm to <4 x float>
  %i.fo = fmul fast <4 x float> %i.ee, %i.fn
  %i.fp = fadd fast <4 x float> %i.fo, %.2644686.us700.us
  %i.fq = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.fr = load i64, ptr %i.fq, align 1, !tbaa !80
  %i.fs = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %i.ft = bitcast <2 x i64> %i.fs to <8 x i16>
  %i.fu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ft, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fv = bitcast <8 x i16> %i.fu to <4 x float>
  %i.fw = fmul fast <4 x float> %i.ep, %i.fv
  %i.fx = fadd fast <4 x float> %i.fw, %.2638687.us699.us
  %i.fy = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.fz = load i64, ptr %i.fy, align 1, !tbaa !80
  %i.ga = insertelement <2 x i64> poison, i64 %i.fz, i64 0
  %i.gb = bitcast <2 x i64> %i.ga to <8 x i16>
  %i.gc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gd = bitcast <8 x i16> %i.gc to <4 x float>
  %i.ge = fmul fast <4 x float> %i.fa, %i.gd
  %i.gf = fadd fast <4 x float> %i.ge, %.2634688.us698.us
  br label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit240.us.us, %bb.g, %.lr.ph.split.us696.us
  %.5653.us705.us = phi nsz <4 x float> [ %.3651685.us701.us, %.lr.ph.split.us696.us ], [ %.3651685.us701.us, %bb.g ], [ %i.fh, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4646.us706.us = phi nsz <4 x float> [ %.2644686.us700.us, %.lr.ph.split.us696.us ], [ %.2644686.us700.us, %bb.g ], [ %i.fp, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4640.us707.us = phi nsz <4 x float> [ %.2638687.us699.us, %.lr.ph.split.us696.us ], [ %.2638687.us699.us, %bb.g ], [ %i.fx, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4.us708.us = phi nsz <4 x float> [ %.2634688.us698.us, %.lr.ph.split.us696.us ], [ %.2634688.us698.us, %bb.g ], [ %i.gf, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit678.us, label %.lr.ph.split.us696.us, !llvm.loop !482

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.k
  %indvars.iv821 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next822, %bb.k ] ; 3 uses
  %.2634688.us.us = phi <4 x float> [ %.1633720.us, %.lr.ph.split.us.us.preheader ], [ %.4.us.us, %bb.k ] ; 3 uses
  %.2638687.us.us = phi <4 x float> [ %.1637719.us, %.lr.ph.split.us.us.preheader ], [ %.4640.us.us, %bb.k ] ; 3 uses
  %.2644686.us.us = phi <4 x float> [ %.1643718.us, %.lr.ph.split.us.us.preheader ], [ %.4646.us.us, %bb.k ] ; 3 uses
  %.3651685.us.us = phi <4 x float> [ %.2650717.us, %.lr.ph.split.us.us.preheader ], [ %.5653.us.us, %bb.k ] ; 3 uses
  %i.gg = trunc i64 %indvars.iv821 to i32
  %i.gh = mul i32 %i.cm, %i.gg
  %.reass.us.us = add i32 %i.gh, %invariant.op.us ; 3 uses
  %i.gi = icmp slt i32 %.reass.us.us, 0
  br i1 %i.gi, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.us
  %i.gj = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.gk = srem i32 %.reass.us.us, %i.gj
  %i.gl = sdiv exact i32 %.reass.us.us, %i.gj     ; 2 uses
  %.not233.us.us = icmp eq i32 %i.gk, 0
  %.not234.us.us = icmp slt i32 %i.gl, %i.ad
  %or.cond886 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond886, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gm = trunc i64 %indvars.iv821 to i32
  %i.gn = add i32 %i.co, %i.gm
  %i.go = shl nsw i32 %i.gn, 4
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %.0194732.us, i64 %i.gp ; 4 uses
  %i.gr = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !501
  %i.gs = load ptr, ptr %4, align 8, !tbaa !20, !noalias !501
  %i.gt = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !501
  %i.gu = mul i64 %i.gt, %i.ce
  %i.gv = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !501 ; 2 uses
  %i.gw = mul i64 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gw
  %i.gy = sext i32 %i.gr to i64
  %i.gz = mul nsw i64 %i.gy, %i.cp
  %i.ha = mul i64 %i.gz, %i.gv
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ha
  %i.hc = shl nsw i32 %i.gl, 2
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.hd ; 3 uses
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !86
  %i.hg = zext i16 %i.hf to i32
  %i.hh = shl nuw i32 %i.hg, 16
  %i.hi = insertelement <4 x i32> poison, i32 %i.hh, i64 0
  %i.hj = bitcast <4 x i32> %i.hi to <4 x float>
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !86
  %i.hn = zext i16 %i.hm to i32
  %i.ho = shl nuw i32 %i.hn, 16
  %i.hp = insertelement <4 x i32> poison, i32 %i.ho, i64 0
  %i.hq = bitcast <4 x i32> %i.hp to <4 x float>
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.ht = load <2 x i16>, ptr %i.hs, align 2, !tbaa !86
  %i.hu = zext <2 x i16> %i.ht to <2 x i32>
  %i.hv = shl nuw <2 x i32> %i.hu, splat (i32 16) ; 2 uses
  %i.hw = bitcast <2 x i32> %i.hv to <2 x float>
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hy = bitcast <2 x i32> %i.hv to <2 x float>
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ia = load i64, ptr %i.gq, align 1, !tbaa !80
  %i.ib = insertelement <2 x i64> poison, i64 %i.ia, i64 0
  %i.ic = bitcast <2 x i64> %i.ib to <8 x i16>
  %i.id = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ie = bitcast <8 x i16> %i.id to <4 x float>
  %i.if = fmul fast <4 x float> %i.hk, %i.ie
  %i.ig = fadd fast <4 x float> %i.if, %.3651685.us.us
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.ii = load i64, ptr %i.ih, align 1, !tbaa !80
  %i.ij = insertelement <2 x i64> poison, i64 %i.ii, i64 0
  %i.ik = bitcast <2 x i64> %i.ij to <8 x i16>
  %i.il = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.im = bitcast <8 x i16> %i.il to <4 x float>
  %i.in = fmul fast <4 x float> %i.hr, %i.im
  %i.io = fadd fast <4 x float> %i.in, %.2644686.us.us
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.iq = load i64, ptr %i.ip, align 1, !tbaa !80
  %i.ir = insertelement <2 x i64> poison, i64 %i.iq, i64 0
  %i.is = bitcast <2 x i64> %i.ir to <8 x i16>
  %i.it = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.is, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iu = bitcast <8 x i16> %i.it to <4 x float>
  %i.iv = fmul fast <4 x float> %i.hx, %i.iu
  %i.iw = fadd fast <4 x float> %i.iv, %.2638687.us.us
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.iy = load i64, ptr %i.ix, align 1, !tbaa !80
  %i.iz = insertelement <2 x i64> poison, i64 %i.iy, i64 0
  %i.ja = bitcast <2 x i64> %i.iz to <8 x i16>
  %i.jb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ja, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jc = bitcast <8 x i16> %i.jb to <4 x float>
  %i.jd = fmul fast <4 x float> %i.hz, %i.jc
  %i.je = fadd fast <4 x float> %i.jd, %.2634688.us.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.us.us
  %.5653.us.us = phi nsz <4 x float> [ %.3651685.us.us, %.lr.ph.split.us.us ], [ %i.ig, %bb.j ], [ %.3651685.us.us, %bb.i ] ; 2 uses
  %.4646.us.us = phi nsz <4 x float> [ %.2644686.us.us, %.lr.ph.split.us.us ], [ %i.io, %bb.j ], [ %.2644686.us.us, %bb.i ] ; 2 uses
  %.4640.us.us = phi nsz <4 x float> [ %.2638687.us.us, %.lr.ph.split.us.us ], [ %i.iw, %bb.j ], [ %.2638687.us.us, %bb.i ] ; 2 uses
  %.4.us.us = phi nsz <4 x float> [ %.2634688.us.us, %.lr.ph.split.us.us ], [ %i.je, %bb.j ], [ %.2634688.us.us, %bb.i ] ; 2 uses
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1 ; 2 uses
  %exitcond825.not = icmp eq i64 %indvars.iv.next822, %wide.trip.count824
  br i1 %exitcond825.not, label %.loopexit678.us, label %.lr.ph.split.us.us, !llvm.loop !482

.loopexit678.us:                                  ; preds = %bb.h, %bb.k, %.lr.ph.us, %.preheader677.us, %bb.f, %bb.e
  %.6654.us = phi nsz <4 x float> [ %.2650717.us, %bb.e ], [ %.2650717.us, %bb.f ], [ %.5653.us.us, %bb.k ], [ %.2650717.us, %.preheader677.us ], [ %.2650717.us, %.lr.ph.us ], [ %.5653.us705.us, %bb.h ] ; 3 uses
  %.5647.us = phi nsz <4 x float> [ %.1643718.us, %bb.e ], [ %.1643718.us, %bb.f ], [ %.4646.us.us, %bb.k ], [ %.1643718.us, %.preheader677.us ], [ %.1643718.us, %.lr.ph.us ], [ %.4646.us706.us, %bb.h ] ; 3 uses
  %.5641.us = phi nsz <4 x float> [ %.1637719.us, %bb.e ], [ %.1637719.us, %bb.f ], [ %.4640.us.us, %bb.k ], [ %.1637719.us, %.preheader677.us ], [ %.1637719.us, %.lr.ph.us ], [ %.4640.us707.us, %bb.h ] ; 3 uses
  %.5.us = phi nsz <4 x float> [ %.1633720.us, %bb.e ], [ %.1633720.us, %bb.f ], [ %.4.us.us, %bb.k ], [ %.1633720.us, %.preheader677.us ], [ %.1633720.us, %.lr.ph.us ], [ %.4.us708.us, %bb.h ] ; 3 uses
  %i.jf = add nuw nsw i32 %.0192721.us, 1         ; 2 uses
  %exitcond826.not = icmp eq i32 %i.jf, %i.bs
  br i1 %exitcond826.not, label %._crit_edge.us, label %bb.e, !llvm.loop !485

._crit_edge.us:                                   ; preds = %.loopexit678.us
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0194732.us, i64 %i.bw ; 2 uses
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 4 ; 2 uses
  %i.jh = icmp slt i64 %indvars.iv.next828, %invariant.op
  br i1 %i.jh, label %.preheader681.us, label %.preheader683.loopexit, !llvm.loop !486

.preheader683.loopexit:                           ; preds = %._crit_edge.us
  %i.ji = fadd fast <4 x float> %.5.us, %.5641.us
  br label %.preheader683

.preheader683:                                    ; preds = %.preheader681.preheader, %.preheader683.loopexit, %_ZN4ncnn3MatD2Ev.exit242
  %.1649.lcssa = phi <4 x float> [ %.0648, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.6654.us, %.preheader683.loopexit ], [ %.0648, %.preheader681.preheader ] ; 3 uses
  %.0642.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.5647.us, %.preheader683.loopexit ], [ zeroinitializer, %.preheader681.preheader ] ; 3 uses
  %.0632.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.ji, %.preheader683.loopexit ], [ zeroinitializer, %.preheader681.preheader ]
  %.0194.lcssa = phi ptr [ %i.br, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.jg, %.preheader683.loopexit ], [ %scevgep, %.preheader681.preheader ] ; 3 uses
  %.0193.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.bh, %.preheader683.loopexit ], [ %i.be, %.preheader681.preheader ] ; 6 uses
  %i.jj = or disjoint i32 %.0193.lcssa, 1         ; 2 uses
  %i.jk = icmp slt i32 %i.jj, %i.ac
  br i1 %i.jk, label %.preheader680.lr.ph, label %.preheader682

.preheader680.lr.ph:                              ; preds = %.preheader683
  %i.jl = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  %.neg670 = add nuw nsw i32 %.0197800, 1
  %i.jn = load i32, ptr %16, align 4, !tbaa !60
  %i.jo = shl i32 %i.jn, 3
  %i.jp = sext i32 %i.jo to i64                   ; 2 uses
  br i1 %i.jm, label %.preheader680.lr.ph.split.us, label %.preheader680.preheader

.preheader680.preheader:                          ; preds = %.preheader680.lr.ph
  %i.jq = add i32 %.0193.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.jq)
  %i.jr = add i32 %smax, -2
  %i.js = sub i32 %i.jr, %.0193.lcssa             ; 2 uses
  %i.jt = and i32 %i.js, -2
  %i.ju = zext i32 %i.jt to i64
  %i.jv = add nuw nsw i64 %i.ju, 2
  %i.jw = mul nsw i64 %i.jv, %i.jp
  %scevgep830 = getelementptr i8, ptr %.0194.lcssa, i64 %i.jw
  %i.jx = add i32 %.0193.lcssa, 2
  %i.jy = and i32 %i.js, -2
  %i.jz = add i32 %i.jx, %i.jy
  br label %.preheader682

.preheader680.lr.ph.split.us:                     ; preds = %.preheader680.lr.ph
  %i.ka = load i32, ptr %9, align 4, !tbaa !60
  %i.kb = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op764.us = sub i32 %.neg672, %i.kb
  %i.kc = zext i32 %.0193.lcssa to i64
  %i.kd = zext nneg i32 %i.jj to i64
  br label %.preheader680.us

.preheader680.us:                                 ; preds = %._crit_edge.us776, %.preheader680.lr.ph.split.us
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %._crit_edge.us776 ], [ %i.kc, %.preheader680.lr.ph.split.us ] ; 2 uses
  %i.ke = phi i64 [ %i.mw, %._crit_edge.us776 ], [ %i.kd, %.preheader680.lr.ph.split.us ]
  %.1195768.us = phi ptr [ %i.mv, %._crit_edge.us776 ], [ %.0194.lcssa, %.preheader680.lr.ph.split.us ] ; 2 uses
  %.6767.us = phi <4 x float> [ %.10.us, %._crit_edge.us776 ], [ %.0642.lcssa, %.preheader680.lr.ph.split.us ]
  %.7655766.us = phi <4 x float> [ %.11.us, %._crit_edge.us776 ], [ %.1649.lcssa, %.preheader680.lr.ph.split.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader680.us, %.loopexit676.us
  %.0190760.us = phi i32 [ 0, %.preheader680.us ], [ %i.mq, %.loopexit676.us ] ; 3 uses
  %.7759.us = phi <4 x float> [ %.6767.us, %.preheader680.us ], [ %.10.us, %.loopexit676.us ] ; 4 uses
  %.8656758.us = phi <4 x float> [ %.7655766.us, %.preheader680.us ], [ %.11.us, %.loopexit676.us ] ; 4 uses
  %i.kf = mul nsw i32 %i.ka, %.0190760.us
  %.reass765.us = add i32 %i.kf, %invariant.op764.us ; 3 uses
  %i.kg = icmp slt i32 %.reass765.us, 0
  br i1 %i.kg, label %.loopexit676.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kh = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.ki = srem i32 %.reass765.us, %i.kh
  %i.kj = sdiv exact i32 %.reass765.us, %i.kh     ; 2 uses
  %.not227.us = icmp eq i32 %i.ki, 0
  %.not228.us = icmp slt i32 %i.kj, %i.ae
  %or.cond887 = select i1 %.not227.us, i1 %.not228.us, i1 false
  br i1 %or.cond887, label %.preheader675.us, label %.loopexit676.us

.preheader675.us:                                 ; preds = %bb.m
  %i.kk = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.us774, label %.loopexit676.us

bb.n:                                             ; preds = %.lr.ph.us774, %bb.p
  %indvars.iv831 = phi i64 [ 0, %.lr.ph.us774 ], [ %indvars.iv.next832, %bb.p ] ; 3 uses
  %.8755.us = phi <4 x float> [ %.7759.us, %.lr.ph.us774 ], [ %.9.us, %bb.p ] ; 3 uses
  %.9657754.us = phi <4 x float> [ %.8656758.us, %.lr.ph.us774 ], [ %.10658.us, %bb.p ] ; 3 uses
  %i.km = trunc i64 %indvars.iv831 to i32
  %i.kn = mul i32 %i.mr, %i.km
  %.reass.us = add i32 %i.kn, %invariant.op.us775 ; 3 uses
  %i.ko = icmp slt i32 %.reass.us, 0
  br i1 %i.ko, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kp = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.kq = srem i32 %.reass.us, %i.kp
  %i.kr = sdiv exact i32 %.reass.us, %i.kp        ; 2 uses
  %.not229.us = icmp eq i32 %i.kq, 0
  %.not230.us = icmp slt i32 %i.kr, %i.ad
  %or.cond888 = select i1 %.not229.us, i1 %.not230.us, i1 false
  br i1 %or.cond888, label %_ZN4ncnn3MatD2Ev.exit236.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit236.us:                      ; preds = %bb.o
  %i.ks = trunc i64 %indvars.iv831 to i32
  %i.kt = add i32 %i.mt, %i.ks
  %i.ku = shl nsw i32 %i.kt, 3
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.1195768.us, i64 %i.kv ; 2 uses
  %i.kx = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !502
  %i.ky = load ptr, ptr %4, align 8, !tbaa !20, !noalias !502 ; 2 uses
  %i.kz = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !502 ; 2 uses
  %i.la = mul i64 %i.kz, %indvars.iv837
  %i.lb = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !502 ; 3 uses
  %i.lc = mul i64 %i.la, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lc
  %i.le = sext i32 %i.kx to i64
  %i.lf = mul nsw i64 %i.le, %i.mu
  %i.lg = mul i64 %i.lf, %i.lb                    ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lg
  %i.li = mul i64 %i.kz, %i.ke
  %i.lj = mul i64 %i.li, %i.lb
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lj
  %i.ll = sext i32 %i.kr to i64                   ; 2 uses
  %i.lm = getelementptr inbounds [2 x i8], ptr %i.lh, i64 %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lg
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.ln, i64 %i.ll
  %i.lp = load i16, ptr %i.lm, align 2, !tbaa !86
  %i.lq = zext i16 %i.lp to i32
  %i.lr = shl nuw i32 %i.lq, 16
  %i.ls = insertelement <4 x i32> poison, i32 %i.lr, i64 0
  %i.lt = bitcast <4 x i32> %i.ls to <4 x float>
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lv = load i16, ptr %i.lo, align 2, !tbaa !86
  %i.lw = zext i16 %i.lv to i32
  %i.lx = shl nuw i32 %i.lw, 16
  %i.ly = insertelement <4 x i32> poison, i32 %i.lx, i64 0
  %i.lz = bitcast <4 x i32> %i.ly to <4 x float>
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = load i64, ptr %i.kw, align 1, !tbaa !80
  %i.mc = insertelement <2 x i64> poison, i64 %i.mb, i64 0
  %i.md = bitcast <2 x i64> %i.mc to <8 x i16>
  %i.me = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.md, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mf = bitcast <8 x i16> %i.me to <4 x float>
  %i.mg = fmul fast <4 x float> %i.lu, %i.mf
  %i.mh = fadd fast <4 x float> %i.mg, %.9657754.us
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.mj = load i64, ptr %i.mi, align 1, !tbaa !80
  %i.mk = insertelement <2 x i64> poison, i64 %i.mj, i64 0
  %i.ml = bitcast <2 x i64> %i.mk to <8 x i16>
  %i.mm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ml, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mn = bitcast <8 x i16> %i.mm to <4 x float>
  %i.mo = fmul fast <4 x float> %i.ma, %i.mn
  %i.mp = fadd fast <4 x float> %i.mo, %.8755.us
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit236.us, %bb.o, %bb.n
  %.10658.us = phi nsz <4 x float> [ %.9657754.us, %bb.n ], [ %i.mh, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.9657754.us, %bb.o ] ; 2 uses
  %.9.us = phi nsz <4 x float> [ %.8755.us, %bb.n ], [ %i.mp, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.8755.us, %bb.o ] ; 2 uses
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 1 ; 2 uses
  %exitcond835.not = icmp eq i64 %indvars.iv.next832, %wide.trip.count834
  br i1 %exitcond835.not, label %.loopexit676.us, label %bb.n, !llvm.loop !489

.loopexit676.us:                                  ; preds = %bb.p, %.preheader675.us, %bb.m, %bb.l
  %.11.us = phi nsz <4 x float> [ %.8656758.us, %bb.l ], [ %.8656758.us, %bb.m ], [ %.8656758.us, %.preheader675.us ], [ %.10658.us, %bb.p ] ; 3 uses
  %.10.us = phi nsz <4 x float> [ %.7759.us, %bb.l ], [ %.7759.us, %bb.m ], [ %.7759.us, %.preheader675.us ], [ %.9.us, %bb.p ] ; 3 uses
  %i.mq = add nuw nsw i32 %.0190760.us, 1         ; 2 uses
  %exitcond836.not = icmp eq i32 %i.mq, %i.jl
  br i1 %exitcond836.not, label %._crit_edge.us776, label %bb.l, !llvm.loop !490

.lr.ph.us774:                                     ; preds = %.preheader675.us
  %i.mr = load i32, ptr %13, align 4, !tbaa !60
  %i.ms = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us775 = sub i32 %.neg670, %i.ms
  %i.mt = mul nuw nsw i32 %i.kk, %.0190760.us
  %i.mu = sext i32 %i.kj to i64
  %wide.trip.count834 = zext nneg i32 %i.kk to i64
  br label %bb.n

._crit_edge.us776:                                ; preds = %.loopexit676.us
  %i.mv = getelementptr inbounds [2 x i8], ptr %.1195768.us, i64 %i.jp ; 2 uses
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 2 ; 3 uses
  %i.mw = or disjoint i64 %indvars.iv.next838, 1  ; 2 uses
  %i.mx = trunc nuw i64 %i.mw to i32
  %i.my = icmp sgt i32 %i.ac, %i.mx
  br i1 %i.my, label %.preheader680.us, label %.preheader682.loopexit, !llvm.loop !491

.preheader682.loopexit:                           ; preds = %._crit_edge.us776
  %i.mz = trunc nuw i64 %indvars.iv.next838 to i32
  br label %.preheader682

.preheader682:                                    ; preds = %.preheader680.preheader, %.preheader682.loopexit, %.preheader683
  %.7655.lcssa = phi <4 x float> [ %.1649.lcssa, %.preheader683 ], [ %.11.us, %.preheader682.loopexit ], [ %.1649.lcssa, %.preheader680.preheader ] ; 3 uses
  %.6.lcssa = phi <4 x float> [ %.0642.lcssa, %.preheader683 ], [ %.10.us, %.preheader682.loopexit ], [ %.0642.lcssa, %.preheader680.preheader ]
  %.1195.lcssa = phi ptr [ %.0194.lcssa, %.preheader683 ], [ %i.mv, %.preheader682.loopexit ], [ %scevgep830, %.preheader680.preheader ]
  %.1.lcssa = phi i32 [ %.0193.lcssa, %.preheader683 ], [ %i.mz, %.preheader682.loopexit ], [ %i.jz, %.preheader680.preheader ] ; 2 uses
  %i.na = icmp slt i32 %.1.lcssa, %i.ac
  br i1 %i.na, label %.preheader679.lr.ph, label %._crit_edge791

.preheader679.lr.ph:                              ; preds = %.preheader682
  %i.nb = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.nc = icmp sgt i32 %i.nb, 0
  %.neg666 = add nuw nsw i32 %.0197800, 1
  %i.nd = load i32, ptr %16, align 4, !tbaa !60
  %i.ne = shl nsw i32 %i.nd, 2
  %i.nf = sext i32 %i.ne to i64
  br i1 %i.nc, label %.preheader679.lr.ph.split.us, label %._crit_edge791

.preheader679.lr.ph.split.us:                     ; preds = %.preheader679.lr.ph
  %i.ng = load i32, ptr %9, align 4, !tbaa !60
  %i.nh = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op786.us = sub i32 %.neg672, %i.nh
  %i.ni = zext i32 %.1.lcssa to i64
  br label %.preheader679.us

.preheader679.us:                                 ; preds = %._crit_edge.us797, %.preheader679.lr.ph.split.us
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %._crit_edge.us797 ], [ %i.ni, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.2196789.us = phi ptr [ %i.pg, %._crit_edge.us797 ], [ %.1195.lcssa, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.12788.us = phi <4 x float> [ %.16.us, %._crit_edge.us797 ], [ %.7655.lcssa, %.preheader679.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader679.us, %.loopexit.us
  %.0188783.us = phi i32 [ 0, %.preheader679.us ], [ %i.pb, %.loopexit.us ] ; 3 uses
  %.13782.us = phi <4 x float> [ %.12788.us, %.preheader679.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.nj = mul nsw i32 %i.ng, %.0188783.us
  %.reass787.us = add i32 %i.nj, %invariant.op786.us ; 3 uses
  %i.nk = icmp slt i32 %.reass787.us, 0
  br i1 %i.nk, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nl = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.nm = srem i32 %.reass787.us, %i.nl
  %i.nn = sdiv exact i32 %.reass787.us, %i.nl     ; 2 uses
  %.not223.us = icmp eq i32 %i.nm, 0
  %.not224.us = icmp slt i32 %i.nn, %i.ae
  %or.cond889 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond889, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.r
  %i.no = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph.us794, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us794, %bb.v
  %indvars.iv840 = phi i64 [ 0, %.lr.ph.us794 ], [ %indvars.iv.next841, %bb.v ] ; 3 uses
  %.14780.us = phi <4 x float> [ %.13782.us, %.lr.ph.us794 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.nq = trunc i64 %indvars.iv840 to i32
  %i.nr = mul i32 %i.pc, %i.nq
  %.reass.us793 = add i32 %i.nr, %invariant.op.us795 ; 3 uses
  %i.ns = icmp slt i32 %.reass.us793, 0
  br i1 %i.ns, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.nt = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.nu = srem i32 %.reass.us793, %i.nt
  %i.nv = sdiv exact i32 %.reass.us793, %i.nt     ; 2 uses
  %.not225.us = icmp eq i32 %i.nu, 0
  %.not226.us = icmp slt i32 %i.nv, %i.ad
  %or.cond890 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond890, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nw = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !503
  %i.nx = load ptr, ptr %4, align 8, !tbaa !20, !noalias !503
  %i.ny = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !503
  %i.nz = mul i64 %i.ny, %indvars.iv846
  %i.oa = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !503 ; 2 uses
  %i.ob = mul i64 %i.nz, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ob
  %i.od = sext i32 %i.nw to i64
  %i.oe = trunc i64 %indvars.iv840 to i32
  %i.of = add i32 %i.pe, %i.oe
  %i.og = shl nsw i32 %i.of, 2
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.2196789.us, i64 %i.oh
  %i.oj = mul nsw i64 %i.od, %i.pf
  %i.ok = mul i64 %i.oj, %i.oa
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ok
  %i.om = sext i32 %i.nv to i64
  %i.on = getelementptr inbounds [2 x i8], ptr %i.ol, i64 %i.om
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !86
  %i.op = zext i16 %i.oo to i32
  %i.oq = shl nuw i32 %i.op, 16
  %i.or = insertelement <4 x i32> poison, i32 %i.oq, i64 0
  %i.os = bitcast <4 x i32> %i.or to <4 x float>
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ou = load i64, ptr %i.oi, align 1, !tbaa !80
  %i.ov = insertelement <2 x i64> poison, i64 %i.ou, i64 0
  %i.ow = bitcast <2 x i64> %i.ov to <8 x i16>
  %i.ox = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ow, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oy = bitcast <8 x i16> %i.ox to <4 x float>
  %i.oz = fmul fast <4 x float> %i.ot, %i.oy
  %i.pa = fadd fast <4 x float> %i.oz, %.14780.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14780.us, %bb.s ], [ %i.pa, %bb.u ], [ %.14780.us, %bb.t ] ; 2 uses
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %.loopexit.us, label %bb.s, !llvm.loop !494

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13782.us, %bb.q ], [ %.13782.us, %bb.r ], [ %.13782.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.pb = add nuw nsw i32 %.0188783.us, 1         ; 2 uses
  %exitcond845.not = icmp eq i32 %i.pb, %i.nb
  br i1 %exitcond845.not, label %._crit_edge.us797, label %bb.q, !llvm.loop !495

.lr.ph.us794:                                     ; preds = %.preheader.us
  %i.pc = load i32, ptr %13, align 4, !tbaa !60
  %i.pd = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us795 = sub i32 %.neg666, %i.pd
  %i.pe = mul nuw nsw i32 %i.no, %.0188783.us
  %i.pf = sext i32 %i.nn to i64
  %wide.trip.count843 = zext nneg i32 %i.no to i64
  br label %bb.s

._crit_edge.us797:                                ; preds = %.loopexit.us
  %i.pg = getelementptr inbounds [2 x i8], ptr %.2196789.us, i64 %i.nf
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %i.ph = trunc nuw i64 %indvars.iv.next847 to i32
  %i.pi = icmp sgt i32 %i.ac, %i.ph
  br i1 %i.pi, label %.preheader679.us, label %._crit_edge791, !llvm.loop !496

._crit_edge791:                                   ; preds = %._crit_edge.us797, %.preheader679.lr.ph, %.preheader682
  %.12.lcssa = phi <4 x float> [ %.7655.lcssa, %.preheader682 ], [ %.7655.lcssa, %.preheader679.lr.ph ], [ %.16.us, %._crit_edge.us797 ]
  %i.pj = fadd fast <4 x float> %.0632.lcssa, %.6.lcssa
  %i.pk = fadd fast <4 x float> %i.pj, %.12.lcssa ; 10 uses
  %i.pl = load i32, ptr %17, align 4, !tbaa !60
  switch i32 %i.pl, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge791
  %i.pm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge791
  %i.pn = load ptr, ptr %18, align 8, !tbaa !20
  %i.po = load float, ptr %i.pn, align 4, !tbaa !39
  %i.pp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.pk)
  %i.pq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.pk)
  %i.pr = insertelement <4 x float> poison, float %i.po, i64 0
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pt = fmul fast <4 x float> %i.ps, %i.pq
  %i.pu = fadd fast <4 x float> %i.pt, %i.pp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge791
  %i.pv = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !39
  %i.px = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !39
  %i.qb = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> nofpclass(nan inf) %i.py)
  %i.qe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qd, <4 x float> nofpclass(nan inf) %i.qc)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge791
  %i.qf = fneg fast <4 x float> %i.pk
  %i.qg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qf, <4 x float> splat (float f0x42B0C0A5))
  %i.qh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qi = fmul fast <4 x float> %i.qh, splat (float f0x3FB8AA3B)
  %i.qj = fadd fast <4 x float> %i.qi, splat (float 5.000000e-01) ; 2 uses
  %i.qk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qj)
  %i.ql = sitofp fast <4 x i32> %i.qk to <4 x float> ; 2 uses
  %i.qm = fcmp fast olt <4 x float> %i.qj, %i.ql
  %i.qn = select <4 x i1> %i.qm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qo = fsub fast <4 x float> %i.ql, %i.qn      ; 2 uses
  %i.qp = fmul fast <4 x float> %i.qo, splat (float f0x3F317218)
  %i.qq = fsub fast <4 x float> %i.qh, %i.qp      ; 8 uses
  %i.qr = fmul fast <4 x float> %i.qq, %i.qq
  %i.qs = fmul fast <4 x float> %i.qq, splat (float f0x39506967)
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0x3AB743CE)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qq
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3C088908)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qq
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0x3D2AA9C1)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qq
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3E2AAAAA)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qq
  %i.rb = fadd fast <4 x float> %i.ra, splat (float 5.000000e-01)
  %i.rc = fmul fast <4 x float> %i.qr, %i.rb
  %i.rd = fadd fast <4 x float> %i.qq, %i.rc
  %i.re = fadd fast <4 x float> %i.rd, splat (float 1.000000e+00)
  %i.rf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qo)
  %i.rg = shl <4 x i32> %i.rf, splat (i32 23)
  %i.rh = add <4 x i32> %i.rg, splat (i32 1065353216)
  %i.ri = bitcast <4 x i32> %i.rh to <4 x float>
  %i.rj = fmul fast <4 x float> %i.re, %i.ri
  %i.rk = fadd fast <4 x float> %i.rj, splat (float 1.000000e+00)
  %i.rl = fdiv fast <4 x float> splat (float 1.000000e+00), %i.rk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge791
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> splat (float f0x42B0C0A5))
  %i.rn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ro = fmul fast <4 x float> %i.rn, splat (float f0x3FB8AA3B)
  %i.rp = fadd fast <4 x float> %i.ro, splat (float 5.000000e-01) ; 2 uses
  %i.rq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rp)
  %i.rr = sitofp fast <4 x i32> %i.rq to <4 x float> ; 2 uses
  %i.rs = fcmp fast olt <4 x float> %i.rp, %i.rr
  %i.rt = select <4 x i1> %i.rs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ru = fsub fast <4 x float> %i.rr, %i.rt      ; 2 uses
  %i.rv = fmul fast <4 x float> %i.ru, splat (float f0x3F317218)
  %i.rw = fsub fast <4 x float> %i.rn, %i.rv      ; 8 uses
  %i.rx = fmul fast <4 x float> %i.rw, %i.rw
  %i.ry = fmul fast <4 x float> %i.rw, splat (float f0x39506967)
  %i.rz = fadd fast <4 x float> %i.ry, splat (float f0x3AB743CE)
  %i.sa = fmul fast <4 x float> %i.rz, %i.rw
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3C088908)
  %i.sc = fmul fast <4 x float> %i.sb, %i.rw
  %i.sd = fadd fast <4 x float> %i.sc, splat (float f0x3D2AA9C1)
  %i.se = fmul fast <4 x float> %i.sd, %i.rw
  %i.sf = fadd fast <4 x float> %i.se, splat (float f0x3E2AAAAA)
  %i.sg = fmul fast <4 x float> %i.sf, %i.rw
  %i.sh = fadd fast <4 x float> %i.sg, splat (float 5.000000e-01)
  %i.si = fmul fast <4 x float> %i.rx, %i.sh
  %i.sj = fadd fast <4 x float> %i.rw, %i.si
  %i.sk = fadd fast <4 x float> %i.sj, splat (float 1.000000e+00)
  %i.sl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ru)
  %i.sm = shl <4 x i32> %i.sl, splat (i32 23)
  %i.sn = add <4 x i32> %i.sm, splat (i32 1065353216)
  %i.so = bitcast <4 x i32> %i.sn to <4 x float>
  %i.sp = fmul fast <4 x float> %i.sk, %i.so
  %i.sq = fadd fast <4 x float> %i.sp, splat (float 1.000000e+00) ; 2 uses
  %i.sr = fcmp fast ole <4 x float> %i.sq, zeroinitializer
  %i.ss = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sq, <4 x float> splat (float f0x00800000))
  %i.st = bitcast <4 x float> %i.ss to <4 x i32>  ; 2 uses
  %i.su = lshr <4 x i32> %i.st, splat (i32 23)
  %i.sv = and <4 x i32> %i.st, splat (i32 -2139095041)
  %i.sw = or disjoint <4 x i32> %i.sv, splat (i32 1056964608)
  %i.sx = bitcast <4 x i32> %i.sw to <4 x float>  ; 3 uses
  %i.sy = add nsw <4 x i32> %i.su, splat (i32 -127)
  %i.sz = sitofp fast <4 x i32> %i.sy to <4 x float> ; 2 uses
  %i.ta = fadd fast <4 x float> %i.sz, splat (float 1.000000e+00)
  %i.tb = fcmp fast olt <4 x float> %i.sx, splat (float f0x3F3504F3) ; 2 uses
  %i.tc = select <4 x i1> %i.tb, <4 x float> %i.sx, <4 x float> zeroinitializer
  %i.td = fadd fast <4 x float> %i.sx, splat (float -1.000000e+00)
  %i.te = select fast <4 x i1> %i.tb, <4 x float> %i.sz, <4 x float> %i.ta
  %i.tf = fadd fast <4 x float> %i.td, %i.tc      ; 12 uses
  %i.tg = fmul fast <4 x float> %i.tf, %i.tf
  %i.th = fmul fast <4 x float> %i.tf, splat (float f0x3D9021BB)
  %i.ti = fadd fast <4 x float> %i.th, splat (float f0xBDEBD1B8)
  %i.tj = fmul fast <4 x float> %i.ti, %i.tf
  %i.tk = fadd fast <4 x float> %i.tj, splat (float f0x3DEF251A)
  %i.tl = fmul fast <4 x float> %i.tk, %i.tf
  %i.tm = fadd fast <4 x float> %i.tl, splat (float f0xBDFE5D4F)
  %i.tn = fmul fast <4 x float> %i.tm, %i.tf
end_hunk_3
