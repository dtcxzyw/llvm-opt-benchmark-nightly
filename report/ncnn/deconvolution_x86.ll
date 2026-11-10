Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
  %i.hb = load i32, ptr %i.bn, align 16, !tbaa !65 ; 2 uses
  %i.hc = load ptr, ptr %4, align 16, !tbaa !20, !noalias !411
  %i.hd = load i64, ptr %i.bp, align 16, !tbaa !21, !noalias !411
  %i.he = load i64, ptr %i.bi, align 16, !tbaa !55, !noalias !411
  %factor.op.mul1221.i = mul i64 %i.he, %i.hd
  %i.hf = icmp slt i32 %i.hb, 1
  %i.hg = icmp slt i32 %i.ha, 1
  %i.hh = icmp sgt i32 %i.gx, 3
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge1230.i = select i1 %i.hf, i1 true, i1 %i.hg
  br i1 %brmerge1230.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hm = load ptr, ptr %i.dz, align 8, !tbaa !20, !noalias !412
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !21, !noalias !412
  %i.ho = load i64, ptr %i.hk, align 8, !tbaa !55, !noalias !412
  %factor.op.mul1224.i = mul i64 %i.ho, %i.hn
  %i.hp = add i32 %i.gx, -4                       ; 2 uses
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = and i32 %i.hq, 2147483646
  %narrow1436.i = add nuw i32 %i.hr, 2
  %i.hs = zext i32 %narrow1436.i to i64
  %i.ht = and i32 %i.hp, -4
  %i.hu = add nuw i32 %i.ht, 4
  %i.hv = sext i32 %i.gx to i64
  %i.hw = add nsw i32 %i.gx, -2                   ; 2 uses
  %i.hx = sext i32 %i.ff to i64
  %i.hy = sext i32 %i.gq to i64
  %i.hz = add nsw i64 %i.hy, %i.hx
  %i.ia = sext i32 %i.en to i64
  %invariant.op1447.i = add nsw i64 %i.hv, -3
  %i.ib = sext i32 %i.gy to i64                   ; 4 uses
  %i.ic = and i32 %i.gx, -4
  br label %_ZN4ncnn3MatD2Ev.exit450.i

_ZN4ncnn3MatD2Ev.exit457.i:                       ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i
  %indvars.iv1333.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i ], [ %indvars.iv.next1334.i, %._crit_edge1070.i ] ; 2 uses
  %i.id = shl nuw nsw i64 %indvars.iv1333.i, 1
  %i.ie = add nsw i64 %i.id, %i.gn                ; 4 uses
  %.reass.i = mul i64 %i.ie, %factor.op.mul.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass.i
  %i.ig = add nsw i64 %i.ie, 1
  %.reass1075.i = mul i64 %i.ig, %factor.op.mul.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass1075.i
  %i.ii = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not433.i = icmp eq ptr %i.ii, null
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.ie
  %i.ik = trunc nsw i64 %i.ie to i32              ; 2 uses
  %i.il = sdiv i32 %i.ik, 4
  %i.im = srem i32 %i.ik, 4
  %.lhs.trunc.i = trunc nsw i32 %i.im to i8
  %i.in = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.in to i32
  %i.io = add nsw i32 %i.il, %.sext.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = load i32, ptr %i.g, align 4
  %.reass1079.i = mul i64 %factor.op.mul1078.i, %i.ip
  %i.ir = getelementptr i8, ptr %i.gc, i64 %.reass1079.i ; 3 uses
  br label %.preheader911.i

.preheader911.i:                                  ; preds = %._crit_edge.i, %_ZN4ncnn3MatD2Ev.exit457.i
  %.03811069.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %.neg887.i, %._crit_edge.i ]
  %.03821068.i = phi ptr [ %i.ih, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vk, %._crit_edge.i ]
  %.03841067.i = phi ptr [ %i.if, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vj, %._crit_edge.i ]
  %i.is = load i32, ptr %i.b, align 4             ; 2 uses
  %i.it = icmp sgt i32 %i.is, 0                   ; 3 uses
  %.neg887.i = add nuw nsw i32 %.03811069.i, 1    ; 5 uses
  %i.iu = load i32, ptr %i.k, align 4             ; 3 uses
  %i.iv = shl i32 %i.iu, 3
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  %i.ix = shl i32 %i.iu, 2
  %i.iy = sext i32 %i.ix to i64                   ; 3 uses
  %i.iz = shl nsw i32 %i.iu, 1
  %i.ja = sext i32 %i.iz to i64
  %i.jb = mul nsw i64 %i.iw, %i.gi
  %scevgep1282.i = getelementptr i8, ptr %i.ir, i64 %i.jb
  %wide.trip.count1295.i = zext nneg i32 %i.is to i64 ; 4 uses
  br label %bb.v

._crit_edge1070.i:                                ; preds = %._crit_edge.i
  %indvars.iv.next1334.i = add nuw nsw i64 %indvars.iv1333.i, 1 ; 2 uses
  %exitcond1337.not.i = icmp eq i64 %indvars.iv.next1334.i, %wide.trip.count1336.i
  br i1 %exitcond1337.not.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.i, !llvm.loop !369

._crit_edge.i:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i
  %exitcond1332.not.i = icmp eq i32 %.neg887.i, %i.fr
  br i1 %exitcond1332.not.i, label %._crit_edge1070.i, label %.preheader911.i, !llvm.loop !370

bb.v:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, %.preheader911.i
  %.03801065.i = phi i32 [ 0, %.preheader911.i ], [ %i.vl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 4 uses
  %.13831064.i = phi ptr [ %.03821068.i, %.preheader911.i ], [ %i.vk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  %.13851063.i = phi ptr [ %.03841067.i, %.preheader911.i ], [ %i.vj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  br i1 %.not433.i, label %_ZN4ncnn3MatD2Ev.exit455.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jc = load <2 x float>, ptr %i.ij, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit455.i

_ZN4ncnn3MatD2Ev.exit455.i:                       ; preds = %bb.w, %bb.v
  %i.jd = phi <2 x float> [ %i.jc, %bb.w ], [ zeroinitializer, %bb.v ]
  br i1 %i.fx, label %.preheader909.lr.ph.i, label %._crit_edge958.i

.preheader909.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit455.i
  %i.je = load i32, ptr %i.d, align 4             ; 2 uses
  %i.jf = load i32, ptr %i.j, align 4
  %invariant.op939.i = sub i32 %.neg887.i, %i.jf  ; 2 uses
  %i.jg = load i32, ptr %i.f, align 4             ; 4 uses
  %i.jh = load i32, ptr %i.a, align 4
  %.fr1231.i = freeze i32 %i.jh                   ; 2 uses
  %i.ji = load i32, ptr %i.c, align 4             ; 2 uses
  %i.jj = load i32, ptr %i.i, align 4
  %.neg889.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op.i = sub i32 %.neg889.i, %i.jj     ; 2 uses
  %i.jk = load i32, ptr %i.e, align 4             ; 4 uses
  %i.jl = icmp sgt i32 %.fr1231.i, 0
  %or.cond.i = and i1 %i.it, %i.jl
  br i1 %or.cond.i, label %.preheader909.us.us.preheader.i, label %._crit_edge958.i

.preheader909.us.us.preheader.i:                  ; preds = %.preheader909.lr.ph.i
  %i.jm = zext nneg i32 %.fr1231.i to i64         ; 4 uses
  br label %.preheader909.us.us.i

.preheader909.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.us.us.preheader.i
  %indvars.iv1297.i = phi i64 [ 0, %.preheader909.us.us.preheader.i ], [ %indvars.iv.next1298.i, %._crit_edge.split.us.us.us.i ] ; 6 uses
  %.0345954.us.us.i = phi ptr [ %i.ir, %.preheader909.us.us.preheader.i ], [ %i.nd, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0835953.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0840952.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.jn = lshr exact i64 %indvars.iv1297.i, 2
  %i.jo = or disjoint i64 %indvars.iv1297.i, 1
  %i.jp = or disjoint i64 %indvars.iv1297.i, 2
  %i.jq = or disjoint i64 %indvars.iv1297.i, 3
  switch i32 %.fr.i, label %._crit_edge.split.us.us.us.i [
    i32 4, label %.preheader909.us.us.i.split.us
    i32 1, label %.preheader909.us.us.i.split.us61
  ]

.preheader909.us.us.i.split.us:                   ; preds = %.preheader909.us.us.i, %..loopexit906_crit_edge.us.us.us.i.us
  %indvars.iv1292.i.us = phi i64 [ %indvars.iv.next1293.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ 0, %.preheader909.us.us.i ] ; 3 uses
  %.1836935.us.us.us.i.us = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %.1841934.us.us.us.i.us = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %i.jr = trunc i64 %indvars.iv1292.i.us to i32
  %i.js = mul i32 %i.je, %i.jr
  %.reass.us940.us.us.i.us = add i32 %i.js, %invariant.op939.i ; 3 uses
  %i.jt = icmp slt i32 %.reass.us940.us.us.i.us, 0
  br i1 %i.jt, label %..loopexit906_crit_edge.us.us.us.i.us, label %bb.x

bb.x:                                             ; preds = %.preheader909.us.us.i.split.us
  %i.ju = srem i32 %.reass.us940.us.us.i.us, %i.jg
  %i.jv = sdiv i32 %.reass.us940.us.us.i.us, %i.jg ; 2 uses
  %.not442.us.us.us.i.us = icmp eq i32 %i.ju, 0
  %.not443.us.us.us.i.us = icmp slt i32 %i.jv, %i.fp
  %or.cond = select i1 %.not442.us.us.us.i.us, i1 %.not443.us.us.us.i.us, i1 false
  br i1 %or.cond, label %.preheader905.us.us.us.i.us, label %..loopexit906_crit_edge.us.us.us.i.us

.preheader905.us.us.us.i.us:                      ; preds = %bb.x
  %i.jw = mul nuw nsw i64 %indvars.iv1292.i.us, %i.jm
  %i.jx = sext i32 %i.jv to i64
  %i.jy = mul nsw i64 %i.jx, %i.go
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader905.us.us.us.i.us, %bb.z
  %indvars.iv1287.i.us = phi i64 [ %indvars.iv.next1288.i.us, %bb.z ], [ 0, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2837916.us.us.us.us.i.us = phi <4 x float> [ %.3838.us.us.us.us.i.us, %bb.z ], [ %.1836935.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2842915.us.us.us.us.i.us = phi <4 x float> [ %.3843.us.us.us.us.i.us, %bb.z ], [ %.1841934.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %i.jz = trunc i64 %indvars.iv1287.i.us to i32
  %i.ka = mul i32 %i.ji, %i.jz
  %.reass919.us.us.us.us.i.us = add i32 %i.ka, %invariant.op.i ; 3 uses
  %i.kb = icmp slt i32 %.reass919.us.us.us.us.i.us, 0
  br i1 %i.kb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.kc = srem i32 %.reass919.us.us.us.us.i.us, %i.jk
  %i.kd = sdiv i32 %.reass919.us.us.us.us.i.us, %i.jk ; 2 uses
  %.not444.us.us.us.us.i.us = icmp eq i32 %i.kc, 0
  %.not445.us.us.us.us.i.us = icmp slt i32 %i.kd, %i.fo
  %or.cond194 = select i1 %.not444.us.us.us.us.i.us, i1 %.not445.us.us.us.us.i.us, i1 false
  br i1 %or.cond194, label %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, label %bb.z

_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us:        ; preds = %bb.y
  %i.ke = add nuw nsw i64 %indvars.iv1287.i.us, %i.jw
  %i.kf = shl i64 %i.ke, 3
  %i.kg = and i64 %i.kf, 4294967288
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.0345954.us.us.i, i64 %i.kg ; 2 uses
  %i.ki = load ptr, ptr %1, align 8, !tbaa !20, !noalias !413
  %i.kj = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !413
  %i.kk = mul i64 %i.kj, %i.jn
  %i.kl = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !413 ; 2 uses
  %i.km = mul i64 %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.km
  %i.ko = mul i64 %i.jy, %i.kl
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko
  %i.kq = shl nsw i32 %i.kd, 2
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [2 x i8], ptr %i.kp, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 1, !tbaa !80
  %i.ku = insertelement <2 x i64> poison, i64 %i.kt, i64 0
  %i.kv = bitcast <2 x i64> %i.ku to <8 x i16>
  %5 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kw = bitcast <8 x i16> %5 to <4 x float>     ; 2 uses
  %i.kx = load i64, ptr %i.kh, align 1, !tbaa !80
  %i.ky = insertelement <2 x i64> poison, i64 %i.kx, i64 0
  %i.kz = bitcast <2 x i64> %i.ky to <8 x i16>
  %6 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.la = bitcast <8 x i16> %6 to <4 x float>
  %i.lb = fmul fast <4 x float> %i.la, %i.kw
  %i.lc = fadd fast <4 x float> %i.lb, %.2837916.us.us.us.us.i.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.le = load i64, ptr %i.ld, align 1, !tbaa !80
  %i.lf = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %i.lg = bitcast <2 x i64> %i.lf to <8 x i16>
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lh = bitcast <8 x i16> %7 to <4 x float>
  %i.li = fmul fast <4 x float> %i.lh, %i.kw
  %i.lj = fadd fast <4 x float> %i.li, %.2842915.us.us.us.us.i.us
  br label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, %bb.y, %.lr.ph.split.us.us.us.us.i.us
  %.3843.us.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2842915.us.us.us.us.i.us, %bb.y ], [ %i.lj, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %.3838.us.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2837916.us.us.us.us.i.us, %bb.y ], [ %i.lc, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1288.i.us = add nuw nsw i64 %indvars.iv1287.i.us, 1 ; 2 uses
  %exitcond1291.not.i.us = icmp eq i64 %indvars.iv.next1288.i.us, %i.jm
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
  %i.lk = trunc i64 %indvars.iv1292.i.us62 to i32
  %i.ll = mul i32 %i.je, %i.lk
  %.reass.us940.us.us.i.us65 = add i32 %i.ll, %invariant.op939.i ; 3 uses
  %i.lm = icmp slt i32 %.reass.us940.us.us.i.us65, 0
  br i1 %i.lm, label %..loopexit906_crit_edge.us.us.us.i.us69, label %bb.aa

bb.aa:                                            ; preds = %.preheader909.us.us.i.split.us61
  %i.ln = srem i32 %.reass.us940.us.us.i.us65, %i.jg
  %i.lo = sdiv i32 %.reass.us940.us.us.i.us65, %i.jg ; 2 uses
  %.not442.us.us.us.i.us66 = icmp eq i32 %i.ln, 0
  %.not443.us.us.us.i.us67 = icmp slt i32 %i.lo, %i.fp
  %or.cond195 = select i1 %.not442.us.us.us.i.us66, i1 %.not443.us.us.us.i.us67, i1 false
  br i1 %or.cond195, label %.preheader905.us.us.us.i.us68, label %..loopexit906_crit_edge.us.us.us.i.us69

.preheader905.us.us.us.i.us68:                    ; preds = %bb.aa
  %i.lp = mul nuw nsw i64 %indvars.iv1292.i.us62, %i.jm
  %i.lq = sext i32 %i.lo to i64
  %i.lr = mul nsw i64 %i.lq, %i.go
  br label %.lr.ph.split.us921.us.us.us.i.us

.lr.ph.split.us921.us.us.us.i.us:                 ; preds = %.preheader905.us.us.us.i.us68, %bb.ac
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.ac ], [ 0, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %.2837916.us923.us.us.us.i.us = phi <4 x float> [ %.3838.us929.us.us.us.i.us, %bb.ac ], [ %.1836935.us.us.us.i.us63, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %.2842915.us924.us.us.us.i.us = phi <4 x float> [ %.3843.us928.us.us.us.i.us, %bb.ac ], [ %.1841934.us.us.us.i.us64, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %i.ls = trunc i64 %indvars.iv.i.us to i32
  %i.lt = mul i32 %i.ji, %i.ls
  %.reass919.us925.us.us.us.i.us = add i32 %i.lt, %invariant.op.i ; 3 uses
  %i.lu = icmp slt i32 %.reass919.us925.us.us.us.i.us, 0
  br i1 %i.lu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us921.us.us.us.i.us
  %i.lv = srem i32 %.reass919.us925.us.us.us.i.us, %i.jk
  %i.lw = sdiv i32 %.reass919.us925.us.us.us.i.us, %i.jk ; 2 uses
  %.not444.us926.us.us.us.i.us = icmp eq i32 %i.lv, 0
  %.not445.us927.us.us.us.i.us = icmp slt i32 %i.lw, %i.fo
  %or.cond196 = select i1 %.not444.us926.us.us.us.i.us, i1 %.not445.us927.us.us.us.i.us, i1 false
  br i1 %or.cond196, label %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, label %bb.ac

_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us:        ; preds = %bb.ab
  %i.lx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !414
  %i.ly = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !414
  %i.lz = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !414 ; 2 uses
  %factor.op.mul.us.us.us.us.i.us = mul i64 %i.lz, %i.ly ; 4 uses
  %i.ma = mul i64 %i.lr, %i.lz
  %invariant.gep.us.us.us.us.i.us = getelementptr i8, ptr %i.lx, i64 %i.ma
  %i.mb = sext i32 %i.lw to i64
  %invariant.gep912.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.us.i.us, i64 %i.mb ; 4 uses
  %.reass.us.us.us.us.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %indvars.iv1297.i
  %gep913.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.i.us
  %i.mc = load i16, ptr %gep913.us.us.us.us.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jo
  %gep913.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.md = load i16, ptr %gep913.us.us.us.us.1.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jp
  %gep913.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.me = load i16, ptr %gep913.us.us.us.us.2.i.us, align 2, !tbaa !86
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jq
  %gep913.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.mf = load i16, ptr %gep913.us.us.us.us.3.i.us, align 2, !tbaa !86
  %i.mg = insertelement <4 x i16> poison, i16 %i.mc, i64 0
  %i.mh = insertelement <4 x i16> %i.mg, i16 %i.md, i64 1
  %i.mi = insertelement <4 x i16> %i.mh, i16 %i.me, i64 2
  %i.mj = insertelement <4 x i16> %i.mi, i16 %i.mf, i64 3
  %i.mk = zext <4 x i16> %i.mj to <4 x i32>
  %i.ml = shl nuw <4 x i32> %i.mk, splat (i32 16)
  %.sroa.01401.12.vec.insert.i.us = bitcast <4 x i32> %i.ml to <4 x float> ; 2 uses
  %i.mm = add nuw nsw i64 %indvars.iv.i.us, %i.lp
  %i.mn = shl i64 %i.mm, 3
  %i.mo = and i64 %i.mn, 4294967288
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.0345954.us.us.i, i64 %i.mo ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 1, !tbaa !80
  %i.mr = insertelement <2 x i64> poison, i64 %i.mq, i64 0
  %i.ms = bitcast <2 x i64> %i.mr to <8 x i16>
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ms, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mt = bitcast <8 x i16> %8 to <4 x float>
  %i.mu = fmul fast <4 x float> %i.mt, %.sroa.01401.12.vec.insert.i.us
  %i.mv = fadd fast <4 x float> %i.mu, %.2837916.us923.us.us.us.i.us
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mx = load i64, ptr %i.mw, align 1, !tbaa !80
  %i.my = insertelement <2 x i64> poison, i64 %i.mx, i64 0
  %i.mz = bitcast <2 x i64> %i.my to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.na = bitcast <8 x i16> %9 to <4 x float>
  %i.nb = fmul fast <4 x float> %i.na, %.sroa.01401.12.vec.insert.i.us
  %i.nc = fadd fast <4 x float> %i.nb, %.2842915.us924.us.us.us.i.us
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.ab, %.lr.ph.split.us921.us.us.us.i.us
  %.3843.us928.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us924.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.nc, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2842915.us924.us.us.us.i.us, %bb.ab ] ; 2 uses
  %.3838.us929.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us923.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.mv, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2837916.us923.us.us.us.i.us, %bb.ab ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.jm
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
  %i.nd = getelementptr inbounds [2 x i8], ptr %.0345954.us.us.i, i64 %i.iw ; 2 uses
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 4 ; 2 uses
  %i.ne = icmp slt i64 %indvars.iv.next1298.i, %invariant.op1446.i
  br i1 %i.ne, label %.preheader909.us.us.i, label %._crit_edge958.i, !llvm.loop !377

._crit_edge958.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0840.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0835.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0345.lcssa.i = phi ptr [ %i.ir, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1282.i, %.preheader909.lr.ph.i ], [ %i.nd, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %.0342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.gk, %.preheader909.lr.ph.i ], [ %i.gp, %._crit_edge.split.us.us.us.i ] ; 7 uses
  %i.nf = shufflevector <4 x float> %.0835.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ng = fadd fast <4 x float> %i.nf, %.0835.lcssa.i ; 2 uses
  %i.nh = shufflevector <4 x float> %.0840.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ni = fadd fast <4 x float> %i.nh, %.0840.lcssa.i ; 2 uses
  %i.nj = shufflevector <4 x float> %i.ng, <4 x float> %i.ni, <2 x i32> <i32 1, i32 5>
  %i.nk = fadd fast <2 x float> %i.nj, %i.jd
  %i.nl = shufflevector <4 x float> %i.ng, <4 x float> %i.ni, <2 x i32> <i32 0, i32 4>
  %i.nm = fadd fast <2 x float> %i.nk, %i.nl      ; 4 uses
  %i.nn = or disjoint i32 %.0342.lcssa.i, 1
  %i.no = icmp slt i32 %i.nn, %i.fn
  br i1 %i.no, label %.preheader908.lr.ph.i, label %.preheader910.i

.preheader908.lr.ph.i:                            ; preds = %._crit_edge958.i
  %i.np = load i32, ptr %i.d, align 4
  %i.nq = load i32, ptr %i.j, align 4
  %invariant.op993.i = sub i32 %.neg887.i, %i.nq
  %i.nr = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ns = load i32, ptr %i.a, align 4
  %.fr1232.i = freeze i32 %i.ns                   ; 2 uses
  %i.nt = load i32, ptr %i.c, align 4
  %i.nu = load i32, ptr %i.i, align 4
  %.neg885.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op985.i = sub i32 %.neg885.i, %i.nu
  %i.nv = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.it, label %.preheader908.lr.ph.split.us.i, label %.preheader908.preheader.i

.preheader908.preheader.i:                        ; preds = %.preheader908.lr.ph.i
  %i.nw = sub i32 %i.gm, %.0342.lcssa.i
  %i.nx = and i32 %i.nw, -2                       ; 2 uses
  %i.ny = zext i32 %i.nx to i64
  %i.nz = add nuw nsw i64 %i.ny, 2
  %i.oa = mul nsw i64 %i.nz, %i.iy
  %scevgep1300.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.oa
  %i.ob = add nsw i32 %.0342.lcssa.i, 2
  %i.oc = add i32 %i.ob, %i.nx
  br label %.preheader910.i

.preheader908.lr.ph.split.us.i:                   ; preds = %.preheader908.lr.ph.i
  %i.od = icmp sgt i32 %.fr1232.i, 0
  br i1 %i.od, label %.preheader908.us.us.preheader.i, label %.preheader908.us.preheader.i

.preheader908.us.preheader.i:                     ; preds = %.preheader908.lr.ph.split.us.i
  %i.oe = sub i32 %i.gm, %.0342.lcssa.i
  %i.of = and i32 %i.oe, -2                       ; 2 uses
  %i.og = zext i32 %i.of to i64
  %i.oh = add nuw nsw i64 %i.og, 2
  %i.oi = mul nsw i64 %i.oh, %i.iy
  %scevgep1301.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.oi
  %i.oj = add nsw i32 %.0342.lcssa.i, 2
  %i.ok = add i32 %i.oj, %i.of
  br label %.preheader910.i

.preheader908.us.us.preheader.i:                  ; preds = %.preheader908.lr.ph.split.us.i
  %i.ol = zext nneg i32 %.fr1232.i to i64         ; 2 uses
  %i.om = zext i32 %.0342.lcssa.i to i64
  br label %.preheader908.us.us.i

.preheader908.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.us.preheader.i
  %indvars.iv1315.i = phi i64 [ %i.om, %.preheader908.us.us.preheader.i ], [ %indvars.iv.next1316.i, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %.13461001.us.us.i = phi ptr [ %.0345.lcssa.i, %.preheader908.us.us.preheader.i ], [ %i.qm, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.on = phi <2 x float> [ %i.nm, %.preheader908.us.us.preheader.i ], [ %i.ql, %._crit_edge.split.us.us.us1020.i ]
  %i.oo = add nuw nsw i64 %indvars.iv1315.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %..loopexit904_crit_edge.us.us.us.i, %.preheader908.us.us.i
  %indvars.iv1310.i = phi i64 [ %indvars.iv.next1311.i, %..loopexit904_crit_edge.us.us.us.i ], [ 0, %.preheader908.us.us.i ] ; 3 uses
  %i.op = phi <2 x float> [ %i.ql, %..loopexit904_crit_edge.us.us.us.i ], [ %i.on, %.preheader908.us.us.i ] ; 3 uses
  %i.oq = trunc i64 %indvars.iv1310.i to i32
  %i.or = mul i32 %i.np, %i.oq
  %.reass994.us.us.us.i = add i32 %i.or, %invariant.op993.i ; 3 uses
  %i.os = icmp slt i32 %.reass994.us.us.us.i, 0
  br i1 %i.os, label %..loopexit904_crit_edge.us.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ot = srem i32 %.reass994.us.us.us.i, %i.nr
  %i.ou = sdiv i32 %.reass994.us.us.us.i, %i.nr   ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.ot, 0
  %.not439.us.us.us.i = icmp slt i32 %i.ou, %i.fp
  %or.cond197 = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond197, label %.preheader903.us.us.us.i, label %..loopexit904_crit_edge.us.us.us.i

.preheader903.us.us.us.i:                         ; preds = %bb.ae
  %i.ov = mul nuw nsw i64 %indvars.iv1310.i, %i.ol
  %i.ow = sext i32 %i.ou to i64
  %i.ox = mul nsw i64 %i.ow, %i.go
  br label %bb.af

bb.af:                                            ; preds = %.loopexit900.us.us.us.i, %.preheader903.us.us.us.i
  %indvars.iv1305.i = phi i64 [ %indvars.iv.next1306.i, %.loopexit900.us.us.us.i ], [ 0, %.preheader903.us.us.us.i ] ; 3 uses
  %i.oy = phi <2 x float> [ %i.qk, %.loopexit900.us.us.us.i ], [ %i.op, %.preheader903.us.us.us.i ] ; 3 uses
  %i.oz = trunc i64 %indvars.iv1305.i to i32
  %i.pa = mul i32 %i.nt, %i.oz
  %.reass986.us.us.us.i = add i32 %invariant.op985.i, %i.pa ; 3 uses
  %i.pb = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.pb, label %.loopexit900.us.us.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pc = srem i32 %.reass986.us.us.us.i, %i.nv
  %i.pd = sdiv i32 %.reass986.us.us.us.i, %i.nv   ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.pc, 0
  %.not441.us.us.us.i = icmp slt i32 %i.pd, %i.fo
  %or.cond198 = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond198, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit900.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.ag
  %i.pe = add nuw nsw i64 %indvars.iv1305.i, %i.ov
  %i.pf = shl i64 %i.pe, 2
  %i.pg = and i64 %i.pf, 4294967292
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %.13461001.us.us.i, i64 %i.pg
  %i.pi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !415
  %i.pj = load i64, ptr %i.fy, align 8, !tbaa !21, !noalias !415
  %i.pk = load i64, ptr %i.fz, align 8, !tbaa !55, !noalias !415 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.pk, %i.pj ; 2 uses
  %i.pl = mul i64 %i.ox, %i.pk
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.pi, i64 %i.pl
  %i.pm = sext i32 %i.pd to i64
  %invariant.gep975.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.pm ; 2 uses
  %.reass.us995.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1315.i
  %gep976.us.us.us.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.i
  %i.pn = load i16, ptr %gep976.us.us.us.i, align 2, !tbaa !86
  %.reass.us995.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.oo
  %gep976.us.us.us.1.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.1.i
  %i.po = load i16, ptr %gep976.us.us.us.1.i, align 2, !tbaa !86
  %i.pp = zext i16 %i.pn to i32
  %i.pq = shl nuw i32 %i.pp, 16
  %i.pr = load <4 x i16>, ptr %i.ph, align 2, !tbaa !86
  %i.ps = freeze <4 x i16> %i.pr
  %i.pt = bitcast <4 x i16> %i.ps to <2 x i32>    ; 2 uses
  %i.pu = and <2 x i32> %i.pt, splat (i32 -65536)
  %i.pv = shl <2 x i32> %i.pt, splat (i32 16)
  %i.pw = bitcast <2 x i32> %i.pv to <2 x float>
  %i.px = insertelement <2 x i32> poison, i32 %i.pq, i64 0
  %i.py = bitcast <2 x i32> %i.px to <2 x float>
  %i.pz = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qa = fmul fast <2 x float> %i.pz, %i.pw
  %i.qb = fadd fast <2 x float> %i.qa, %i.oy
  %i.qc = zext i16 %i.po to i32
  %i.qd = shl nuw i32 %i.qc, 16
  %i.qe = bitcast <2 x i32> %i.pu to <2 x float>
  %i.qf = insertelement <2 x i32> poison, i32 %i.qd, i64 0
  %i.qg = bitcast <2 x i32> %i.qf to <2 x float>
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fmul fast <2 x float> %i.qh, %i.qe
  %i.qj = fadd fast <2 x float> %i.qb, %i.qi
  br label %.loopexit900.us.us.us.i

.loopexit900.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.ag, %bb.af
  %i.qk = phi <2 x float> [ %i.oy, %bb.af ], [ %i.oy, %bb.ag ], [ %i.qj, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1306.i = add nuw nsw i64 %indvars.iv1305.i, 1 ; 2 uses
  %exitcond1309.not.i = icmp eq i64 %indvars.iv.next1306.i, %i.ol
  br i1 %exitcond1309.not.i, label %..loopexit904_crit_edge.us.us.us.i, label %bb.af, !llvm.loop !380

..loopexit904_crit_edge.us.us.us.i:               ; preds = %.loopexit900.us.us.us.i, %bb.ae, %bb.ad
  %i.ql = phi <2 x float> [ %i.op, %bb.ad ], [ %i.op, %bb.ae ], [ %i.qk, %.loopexit900.us.us.us.i ] ; 3 uses
  %indvars.iv.next1311.i = add nuw nsw i64 %indvars.iv1310.i, 1 ; 2 uses
  %exitcond1314.not.i = icmp eq i64 %indvars.iv.next1311.i, %wide.trip.count1295.i
  br i1 %exitcond1314.not.i, label %._crit_edge.split.us.us.us1020.i, label %bb.ad, !llvm.loop !381

._crit_edge.split.us.us.us1020.i:                 ; preds = %..loopexit904_crit_edge.us.us.us.i
  %i.qm = getelementptr inbounds [2 x i8], ptr %.13461001.us.us.i, i64 %i.iy ; 2 uses
  %indvars.iv.next1316.i = add nuw nsw i64 %indvars.iv1315.i, 2 ; 2 uses
  %i.qn = trunc i64 %indvars.iv.next1316.i to i32 ; 2 uses
  %i.qo = or i32 %i.qn, 1
  %i.qp = icmp slt i32 %i.qo, %i.fn
  br i1 %i.qp, label %.preheader908.us.us.i, label %.preheader910.i, !llvm.loop !382

.preheader910.i:                                  ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.preheader.i, %.preheader908.preheader.i, %._crit_edge958.i
  %.1346.lcssa.i = phi ptr [ %.0345.lcssa.i, %._crit_edge958.i ], [ %scevgep1300.i, %.preheader908.preheader.i ], [ %scevgep1301.i, %.preheader908.us.preheader.i ], [ %i.qm, %._crit_edge.split.us.us.us1020.i ]
end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge

bb.ao:                                            ; preds = %bb.an
  %i.uo = fmul fast float %i.ue, %i.uj
  %i.up = fadd fast float %i.uo, %i.ug
  %i.uq = fmul fast float %i.up, %i.uj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i

bb.ap:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i
  %i.ur = insertelement <2 x float> %i.tq, float %i.th, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i: ; preds = %bb.ao, %bb.an, %bb.am
  %.1825846.i = phi float [ %i.uq, %bb.ao ], [ 0.000000e+00, %bb.am ], [ %i.uj, %bb.an ] ; 2 uses
  %i.us = extractelement <2 x float> %i.sv, i64 1 ; 4 uses
  %i.ut = fcmp fast olt float %i.us, %i.ui
  %i.uu = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1825846.i, i64 0 ; 2 uses
  br i1 %i.ut, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, label %bb.aq

bb.aq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i
  %i.uv = fdiv fast float 1.000000e+00, %i.ue
  %i.uw = fadd fast float %i.ui, %i.uv
  %i.ux = fcmp fast ogt float %i.us, %i.uw
  %i.uy = insertelement <2 x float> %i.sv, float %.1825846.i, i64 0
  br i1 %i.ux, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.uz = fmul fast float %i.ue, %i.us
  %i.va = fadd fast float %i.uz, %i.ug
  %i.vb = fmul fast float %i.va, %i.us
  %i.vc = insertelement <2 x float> %i.uu, float %i.vb, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i:      ; preds = %bb.ar, %bb.aq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i, %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i, %._crit_edge1048.i
  %i.vd = phi <2 x float> [ %i.uu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread.i ], [ %i.sw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread853.i ], [ %i.td, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread856.i ], [ %i.ur, %bb.ap ], [ %i.tq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread850.i ], [ %i.tx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread859.i ], [ %i.uc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit543.thread862.i ], [ %i.vc, %bb.ar ], [ %i.uy, %bb.aq ], [ %i.sv, %._crit_edge1048.i ]
  %i.ve = bitcast <2 x float> %i.vd to <2 x i32>
  %i.vf = lshr <2 x i32> %i.ve, splat (i32 16)
  %i.vg = trunc nuw <2 x i32> %i.vf to <2 x i16>  ; 2 uses
  %i.vh = extractelement <2 x i16> %i.vg, i64 0
  store i16 %i.vh, ptr %.13851063.i, align 2, !tbaa !86
  %i.vi = extractelement <2 x i16> %i.vg, i64 1
  store i16 %i.vi, ptr %.13831064.i, align 2, !tbaa !86
  %i.vj = getelementptr inbounds nuw i8, ptr %.13851063.i, i64 2 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.13831064.i, i64 2 ; 2 uses
  %i.vl = add nuw nsw i32 %.03801065.i, 1         ; 2 uses
  %exitcond1331.not.i = icmp eq i32 %i.vl, %i.fq
  br i1 %exitcond1331.not.i, label %._crit_edge.i, label %bb.v, !llvm.loop !388

_ZN4ncnn3MatD2Ev.exit450.i:                       ; preds = %._crit_edge1218.i, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i
  %indvars.iv1397.i = phi i64 [ %i.hz, %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i ], [ %indvars.iv.next1398.i, %._crit_edge1218.i ] ; 4 uses
  %.reass1222.i = mul i64 %factor.op.mul1221.i, %indvars.iv1397.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.reass1222.i
  %i.vn = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i43 = icmp eq ptr %i.vn, null
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %indvars.iv1397.i
  %i.vp = trunc nsw i64 %indvars.iv1397.i to i32  ; 3 uses
  %i.vq = sdiv i32 %i.vp, 4
  %i.vr = srem i32 %i.vp, 4
  %.lhs.trunc865.i = trunc nsw i32 %i.vr to i8
  %i.vs = sdiv i8 %.lhs.trunc865.i, 2
  %.sext866.i = sext i8 %i.vs to i32
  %i.vt = srem i32 %i.vp, 2
  %i.vu = add nsw i32 %i.vt, %i.vq
  %i.vv = add nsw i32 %i.vu, %.sext866.i
  %i.vw = sext i32 %i.vv to i64
  %i.vx = load i32, ptr %i.g, align 4
  %.reass1225.i = mul i64 %factor.op.mul1224.i, %i.vw
  %i.vy = getelementptr i8, ptr %i.hm, i64 %.reass1225.i ; 3 uses
  br label %.preheader899.i

.preheader899.i:                                  ; preds = %._crit_edge1214.i, %_ZN4ncnn3MatD2Ev.exit450.i
  %.03301217.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit450.i ], [ %.neg875.i, %._crit_edge1214.i ]
  %.03311216.i = phi ptr [ %i.vm, %_ZN4ncnn3MatD2Ev.exit450.i ], [ %i.afz, %._crit_edge1214.i ]
  %i.vz = load i32, ptr %i.b, align 4             ; 2 uses
  %i.wa = icmp sgt i32 %i.vz, 0                   ; 3 uses
  %.neg875.i = add nuw nsw i32 %.03301217.i, 1    ; 5 uses
  %i.wb = load i32, ptr %i.k, align 4             ; 3 uses
  %i.wc = shl i32 %i.wb, 2
  %i.wd = sext i32 %i.wc to i64                   ; 2 uses
  %i.we = shl i32 %i.wb, 1
  %i.wf = sext i32 %i.we to i64                   ; 3 uses
  %i.wg = sext i32 %i.wb to i64
  %i.wh = mul nsw i64 %i.wd, %i.hs
  %scevgep1339.i = getelementptr i8, ptr %i.vy, i64 %i.wh
  %wide.trip.count1359.i = zext nneg i32 %i.vz to i64 ; 4 uses
  br label %bb.as

._crit_edge1218.i:                                ; preds = %._crit_edge1214.i
  %indvars.iv.next1398.i = add nsw i64 %indvars.iv1397.i, 1 ; 2 uses
  %i.wi = icmp slt i64 %indvars.iv.next1398.i, %i.ia
  br i1 %i.wi, label %_ZN4ncnn3MatD2Ev.exit450.i, label %.loopexit, !llvm.loop !389

._crit_edge1214.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %exitcond1396.not.i = icmp eq i32 %.neg875.i, %i.hb
  br i1 %exitcond1396.not.i, label %._crit_edge1218.i, label %.preheader899.i, !llvm.loop !390

bb.as:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, %.preheader899.i
  %.03291213.i = phi i32 [ 0, %.preheader899.i ], [ %i.aga, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 4 uses
  %.13321212.i = phi ptr [ %.03311216.i, %.preheader899.i ], [ %i.afz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i ] ; 2 uses
  br i1 %.not.i43, label %_ZN4ncnn3MatD2Ev.exit449.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.wj = load float, ptr %i.vo, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit449.i

_ZN4ncnn3MatD2Ev.exit449.i:                       ; preds = %bb.at, %bb.as
  %.0326.i = phi nsz float [ %i.wj, %bb.at ], [ 0.000000e+00, %bb.as ]
  br i1 %i.hh, label %.preheader897.lr.ph.i, label %._crit_edge1122.i

.preheader897.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit449.i
  %i.wk = load i32, ptr %i.d, align 4             ; 2 uses
  %i.wl = load i32, ptr %i.j, align 4
  %invariant.op1106.i = sub i32 %.neg875.i, %i.wl ; 2 uses
  %i.wm = load i32, ptr %i.f, align 4             ; 4 uses
  %i.wn = load i32, ptr %i.a, align 4
  %.fr1234.i = freeze i32 %i.wn                   ; 2 uses
  %i.wo = load i32, ptr %i.c, align 4             ; 2 uses
  %i.wp = load i32, ptr %i.i, align 4
  %.neg877.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1088.i = sub i32 %.neg877.i, %i.wp ; 2 uses
  %i.wq = load i32, ptr %i.e, align 4             ; 4 uses
  %i.wr = icmp sgt i32 %.fr1234.i, 0
  %or.cond1449.i = and i1 %i.wa, %i.wr
  br i1 %or.cond1449.i, label %.preheader897.us.us.preheader.i, label %._crit_edge1122.i

.preheader897.us.us.preheader.i:                  ; preds = %.preheader897.lr.ph.i
  %i.ws = zext nneg i32 %.fr1234.i to i64         ; 4 uses
  br label %.preheader897.us.us.i

.preheader897.us.us.i:                            ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.us.us.preheader.i
  %indvars.iv1361.i = phi i64 [ 0, %.preheader897.us.us.preheader.i ], [ %indvars.iv.next1362.i, %._crit_edge1104.split.us.us.us.i ] ; 6 uses
  %.03231118.us.us.i = phi ptr [ %i.vy, %.preheader897.us.us.preheader.i ], [ %i.zv, %._crit_edge1104.split.us.us.us.i ] ; 3 uses
  %.08301117.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader897.us.us.preheader.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 3 uses
  %i.wt = lshr exact i64 %indvars.iv1361.i, 2
  %i.wu = or disjoint i64 %indvars.iv1361.i, 1
  %i.wv = or disjoint i64 %indvars.iv1361.i, 2
  %i.ww = or disjoint i64 %indvars.iv1361.i, 3
  switch i32 %.fr1100.i, label %._crit_edge1104.split.us.us.us.i [
    i32 4, label %.preheader897.us.us.i.split.us
    i32 1, label %.preheader897.us.us.i.split.us79
  ]

.preheader897.us.us.i.split.us:                   ; preds = %.preheader897.us.us.i, %..loopexit894_crit_edge.us.us.us.i.us
  %indvars.iv1356.i.us = phi i64 [ %indvars.iv.next1357.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ 0, %.preheader897.us.us.i ] ; 3 uses
  %.18311101.us.us.us.i.us = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ] ; 3 uses
  %i.wx = trunc i64 %indvars.iv1356.i.us to i32
  %i.wy = mul i32 %i.wk, %i.wx
  %.reass1107.us.us.us.i.us = add i32 %i.wy, %invariant.op1106.i ; 3 uses
  %i.wz = icmp slt i32 %.reass1107.us.us.us.i.us, 0
  br i1 %i.wz, label %..loopexit894_crit_edge.us.us.us.i.us, label %bb.au

bb.au:                                            ; preds = %.preheader897.us.us.i.split.us
  %i.xa = srem i32 %.reass1107.us.us.us.i.us, %i.wm
  %i.xb = sdiv i32 %.reass1107.us.us.us.i.us, %i.wm ; 2 uses
  %.not429.us.us.us.i.us = icmp eq i32 %i.xa, 0
  %.not430.us.us.us.i.us = icmp slt i32 %i.xb, %i.gz
  %or.cond201 = select i1 %.not429.us.us.us.i.us, i1 %.not430.us.us.us.i.us, i1 false
  br i1 %or.cond201, label %.preheader893.us.us.us.i.us, label %..loopexit894_crit_edge.us.us.us.i.us

.preheader893.us.us.us.i.us:                      ; preds = %bb.au
  %i.xc = mul nuw nsw i64 %indvars.iv1356.i.us, %i.ws
  %i.xd = sext i32 %i.xb to i64
  %i.xe = mul nsw i64 %i.xd, %i.ib
  br label %.lr.ph.split.us.us.us.us1137.i.us

.lr.ph.split.us.us.us.us1137.i.us:                ; preds = %bb.aw, %.preheader893.us.us.us.i.us
  %indvars.iv1351.i.us = phi i64 [ %indvars.iv.next1352.i.us, %bb.aw ], [ 0, %.preheader893.us.us.us.i.us ] ; 3 uses
  %.28321085.us.us.us.us.i.us = phi <4 x float> [ %.3833.us.us.us.us.i.us, %bb.aw ], [ %.18311101.us.us.us.i.us, %.preheader893.us.us.us.i.us ] ; 3 uses
  %i.xf = trunc i64 %indvars.iv1351.i.us to i32
  %i.xg = mul i32 %i.wo, %i.xf
  %.reass1089.us.us.us.us.i.us = add i32 %i.xg, %invariant.op1088.i ; 3 uses
  %i.xh = icmp slt i32 %.reass1089.us.us.us.us.i.us, 0
  br i1 %i.xh, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.us.us.us1137.i.us
  %i.xi = srem i32 %.reass1089.us.us.us.us.i.us, %i.wq
  %i.xj = sdiv i32 %.reass1089.us.us.us.us.i.us, %i.wq ; 2 uses
  %.not431.us.us.us.us.i.us = icmp eq i32 %i.xi, 0
  %.not432.us.us.us.us.i.us = icmp slt i32 %i.xj, %i.gy
  %or.cond202 = select i1 %.not431.us.us.us.us.i.us, i1 %.not432.us.us.us.us.i.us, i1 false
  br i1 %or.cond202, label %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, label %bb.aw

_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us:        ; preds = %bb.av
  %i.xk = add nuw nsw i64 %indvars.iv1351.i.us, %i.xc
  %i.xl = shl i64 %i.xk, 2
  %i.xm = and i64 %i.xl, 4294967292
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %.03231118.us.us.i, i64 %i.xm
  %i.xo = load ptr, ptr %1, align 8, !tbaa !20, !noalias !417
  %i.xp = load i64, ptr %i.hi, align 8, !tbaa !21, !noalias !417
  %i.xq = mul i64 %i.xp, %i.wt
  %i.xr = load i64, ptr %i.hj, align 8, !tbaa !55, !noalias !417 ; 2 uses
  %i.xs = mul i64 %i.xq, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xs
  %i.xu = mul i64 %i.xe, %i.xr
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xu
  %i.xw = shl nsw i32 %i.xj, 2
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [2 x i8], ptr %i.xv, i64 %i.xx
  %i.xz = load i64, ptr %i.xy, align 1, !tbaa !80
  %i.ya = insertelement <2 x i64> poison, i64 %i.xz, i64 0
  %i.yb = bitcast <2 x i64> %i.ya to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yc = bitcast <8 x i16> %10 to <4 x float>
  %i.yd = load i64, ptr %i.xn, align 1, !tbaa !80
  %i.ye = insertelement <2 x i64> poison, i64 %i.yd, i64 0
  %i.yf = bitcast <2 x i64> %i.ye to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yg = bitcast <8 x i16> %11 to <4 x float>
  %i.yh = fmul fast <4 x float> %i.yg, %i.yc
  %i.yi = fadd fast <4 x float> %i.yh, %.28321085.us.us.us.us.i.us
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, %bb.av, %.lr.ph.split.us.us.us.us1137.i.us
  %.3833.us.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us1137.i.us ], [ %.28321085.us.us.us.us.i.us, %bb.av ], [ %i.yi, %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1352.i.us = add nuw nsw i64 %indvars.iv1351.i.us, 1 ; 2 uses
  %exitcond1355.not.i.us = icmp eq i64 %indvars.iv.next1352.i.us, %i.ws
  br i1 %exitcond1355.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us1137.i.us, !llvm.loop !393

..loopexit894_crit_edge.us.us.us.i.us:            ; preds = %bb.aw, %bb.au, %.preheader897.us.us.i.split.us
  %.4834.us.us.us.i.us = phi nsz <4 x float> [ %.18311101.us.us.us.i.us, %.preheader897.us.us.i.split.us ], [ %.18311101.us.us.us.i.us, %bb.au ], [ %.3833.us.us.us.us.i.us, %bb.aw ] ; 2 uses
  %indvars.iv.next1357.i.us = add nuw nsw i64 %indvars.iv1356.i.us, 1 ; 2 uses
  %exitcond1360.not.i.us = icmp eq i64 %indvars.iv.next1357.i.us, %wide.trip.count1359.i
  br i1 %exitcond1360.not.i.us, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us, !llvm.loop !394

.preheader897.us.us.i.split.us79:                 ; preds = %.preheader897.us.us.i, %..loopexit894_crit_edge.us.us.us.i.us86
  %indvars.iv1356.i.us80 = phi i64 [ %indvars.iv.next1357.i.us88, %..loopexit894_crit_edge.us.us.us.i.us86 ], [ 0, %.preheader897.us.us.i ] ; 3 uses
  %.18311101.us.us.us.i.us81 = phi <4 x float> [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ], [ %.08301117.us.us.i, %.preheader897.us.us.i ] ; 3 uses
  %i.yj = trunc i64 %indvars.iv1356.i.us80 to i32
  %i.yk = mul i32 %i.wk, %i.yj
  %.reass1107.us.us.us.i.us82 = add i32 %i.yk, %invariant.op1106.i ; 3 uses
  %i.yl = icmp slt i32 %.reass1107.us.us.us.i.us82, 0
  br i1 %i.yl, label %..loopexit894_crit_edge.us.us.us.i.us86, label %bb.ax

bb.ax:                                            ; preds = %.preheader897.us.us.i.split.us79
  %i.ym = srem i32 %.reass1107.us.us.us.i.us82, %i.wm
  %i.yn = sdiv i32 %.reass1107.us.us.us.i.us82, %i.wm ; 2 uses
  %.not429.us.us.us.i.us83 = icmp eq i32 %i.ym, 0
  %.not430.us.us.us.i.us84 = icmp slt i32 %i.yn, %i.gz
  %or.cond203 = select i1 %.not429.us.us.us.i.us83, i1 %.not430.us.us.us.i.us84, i1 false
  br i1 %or.cond203, label %.preheader893.us.us.us.i.us85, label %..loopexit894_crit_edge.us.us.us.i.us86

.preheader893.us.us.us.i.us85:                    ; preds = %bb.ax
  %i.yo = mul nuw nsw i64 %indvars.iv1356.i.us80, %i.ws
  %i.yp = sext i32 %i.yn to i64
  %i.yq = mul nsw i64 %i.yp, %i.ib
  br label %.lr.ph.split.us1091.us.us.us.i.us

.lr.ph.split.us1091.us.us.us.i.us:                ; preds = %bb.az, %.preheader893.us.us.us.i.us85
  %indvars.iv1346.i.us = phi i64 [ %indvars.iv.next1347.i.us, %bb.az ], [ 0, %.preheader893.us.us.us.i.us85 ] ; 3 uses
  %.28321085.us1093.us.us.us.i.us = phi <4 x float> [ %.3833.us1097.us.us.us.i.us, %bb.az ], [ %.18311101.us.us.us.i.us81, %.preheader893.us.us.us.i.us85 ] ; 3 uses
  %i.yr = trunc i64 %indvars.iv1346.i.us to i32
  %i.ys = mul i32 %i.wo, %i.yr
  %.reass1089.us1094.us.us.us.i.us = add i32 %i.ys, %invariant.op1088.i ; 3 uses
  %i.yt = icmp slt i32 %.reass1089.us1094.us.us.us.i.us, 0
  br i1 %i.yt, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.split.us1091.us.us.us.i.us
  %i.yu = srem i32 %.reass1089.us1094.us.us.us.i.us, %i.wq
  %i.yv = sdiv i32 %.reass1089.us1094.us.us.us.i.us, %i.wq ; 2 uses
  %.not431.us1095.us.us.us.i.us = icmp eq i32 %i.yu, 0
  %.not432.us1096.us.us.us.i.us = icmp slt i32 %i.yv, %i.gy
  %or.cond204 = select i1 %.not431.us1095.us.us.us.i.us, i1 %.not432.us1096.us.us.us.i.us, i1 false
  br i1 %or.cond204, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.az

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.ay
  %i.yw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !418
  %i.yx = load i64, ptr %i.hi, align 8, !tbaa !21, !noalias !418
  %i.yy = load i64, ptr %i.hj, align 8, !tbaa !55, !noalias !418 ; 2 uses
  %factor.op.mul1080.us.us.us.us.i.us = mul i64 %i.yy, %i.yx ; 4 uses
  %i.yz = mul i64 %i.yq, %i.yy
  %invariant.gep.us.us.us1133.us.i.us = getelementptr i8, ptr %i.yw, i64 %i.yz
  %i.za = sext i32 %i.yv to i64
  %invariant.gep1082.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1133.us.i.us, i64 %i.za ; 4 uses
  %.reass1081.us.us.us.us.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %indvars.iv1361.i
  %gep1083.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.i.us
  %i.zb = load i16, ptr %gep1083.us.us.us.us.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.1.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wu
  %gep1083.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.1.i.us
  %i.zc = load i16, ptr %gep1083.us.us.us.us.1.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.2.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wv
  %gep1083.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.2.i.us
  %i.zd = load i16, ptr %gep1083.us.us.us.us.2.i.us, align 2, !tbaa !86
  %.reass1081.us.us.us.us.3.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.ww
  %gep1083.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.3.i.us
  %i.ze = load i16, ptr %gep1083.us.us.us.us.3.i.us, align 2, !tbaa !86
  %i.zf = insertelement <4 x i16> poison, i16 %i.zb, i64 0
  %i.zg = insertelement <4 x i16> %i.zf, i16 %i.zc, i64 1
  %i.zh = insertelement <4 x i16> %i.zg, i16 %i.zd, i64 2
  %i.zi = insertelement <4 x i16> %i.zh, i16 %i.ze, i64 3
  %i.zj = zext <4 x i16> %i.zi to <4 x i32>
  %i.zk = shl nuw <4 x i32> %i.zj, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.zk to <4 x float>
  %i.zl = add nuw nsw i64 %indvars.iv1346.i.us, %i.yo
  %i.zm = shl i64 %i.zl, 2
  %i.zn = and i64 %i.zm, 4294967292
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %.03231118.us.us.i, i64 %i.zn
  %i.zp = load i64, ptr %i.zo, align 1, !tbaa !80
  %i.zq = insertelement <2 x i64> poison, i64 %i.zp, i64 0
  %i.zr = bitcast <2 x i64> %i.zq to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zs = bitcast <8 x i16> %12 to <4 x float>
  %i.zt = fmul fast <4 x float> %i.zs, %.sroa.0.12.vec.insert.i.us
  %i.zu = fadd fast <4 x float> %i.zt, %.28321085.us1093.us.us.us.i.us
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.ay, %.lr.ph.split.us1091.us.us.us.i.us
  %.3833.us1097.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us1093.us.us.us.i.us, %.lr.ph.split.us1091.us.us.us.i.us ], [ %i.zu, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28321085.us1093.us.us.us.i.us, %bb.ay ] ; 2 uses
  %indvars.iv.next1347.i.us = add nuw nsw i64 %indvars.iv1346.i.us, 1 ; 2 uses
  %exitcond1350.not.i.us = icmp eq i64 %indvars.iv.next1347.i.us, %i.ws
  br i1 %exitcond1350.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us86, label %.lr.ph.split.us1091.us.us.us.i.us, !llvm.loop !393

..loopexit894_crit_edge.us.us.us.i.us86:          ; preds = %bb.az, %bb.ax, %.preheader897.us.us.i.split.us79
  %.4834.us.us.us.i.us87 = phi nsz <4 x float> [ %.18311101.us.us.us.i.us81, %.preheader897.us.us.i.split.us79 ], [ %.18311101.us.us.us.i.us81, %bb.ax ], [ %.3833.us1097.us.us.us.i.us, %bb.az ] ; 2 uses
  %indvars.iv.next1357.i.us88 = add nuw nsw i64 %indvars.iv1356.i.us80, 1 ; 2 uses
  %exitcond1360.not.i.us89 = icmp eq i64 %indvars.iv.next1357.i.us88, %wide.trip.count1359.i
  br i1 %exitcond1360.not.i.us89, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us79, !llvm.loop !394

._crit_edge1104.split.us.us.us.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i.us86, %..loopexit894_crit_edge.us.us.us.i.us, %.preheader897.us.us.i
  %.us-phi78 = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ], [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ] ; 2 uses
  %i.zv = getelementptr inbounds [2 x i8], ptr %.03231118.us.us.i, i64 %i.wd ; 2 uses
  %indvars.iv.next1362.i = add nuw nsw i64 %indvars.iv1361.i, 4 ; 2 uses
  %i.zw = icmp slt i64 %indvars.iv.next1362.i, %invariant.op1447.i
  br i1 %i.zw, label %.preheader897.us.us.i, label %._crit_edge1122.i, !llvm.loop !397

._crit_edge1122.i:                                ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0830.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader897.lr.ph.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 2 uses
  %.0323.lcssa.i = phi ptr [ %i.vy, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1339.i, %.preheader897.lr.ph.i ], [ %i.zv, %._crit_edge1104.split.us.us.us.i ] ; 4 uses
  %.0322.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.hu, %.preheader897.lr.ph.i ], [ %i.ic, %._crit_edge1104.split.us.us.us.i ] ; 7 uses
  %i.zx = shufflevector <4 x float> %.0830.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.zy = fadd fast <4 x float> %i.zx, %.0830.lcssa.i ; 2 uses
  %i.zz = extractelement <4 x float> %i.zy, i64 1
  %i.aaa = extractelement <4 x float> %i.zy, i64 0
  %i.aab = fadd fast float %i.zz, %.0326.i
  %i.aac = fadd fast float %i.aab, %i.aaa         ; 4 uses
  %i.aad = or disjoint i32 %.0322.lcssa.i, 1
  %i.aae = icmp slt i32 %i.aad, %i.gx
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
  br i1 %i.wa, label %.preheader896.lr.ph.split.us.i, label %.preheader896.preheader.i

.preheader896.preheader.i:                        ; preds = %.preheader896.lr.ph.i
  %i.aam = sub i32 %i.hw, %.0322.lcssa.i
  %i.aan = and i32 %i.aam, -2                     ; 2 uses
  %i.aao = zext i32 %i.aan to i64
  %i.aap = add nuw nsw i64 %i.aao, 2
  %i.aaq = mul nsw i64 %i.aap, %i.wf
  %scevgep1364.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.aaq
  %i.aar = add nsw i32 %.0322.lcssa.i, 2
  %i.aas = add i32 %i.aar, %i.aan
  br label %.preheader898.i

.preheader896.lr.ph.split.us.i:                   ; preds = %.preheader896.lr.ph.i
  %i.aat = icmp sgt i32 %.fr1235.i, 0
  br i1 %i.aat, label %.preheader896.us.us.preheader.i, label %.preheader896.us.preheader.i

.preheader896.us.preheader.i:                     ; preds = %.preheader896.lr.ph.split.us.i
  %i.aau = sub i32 %i.hw, %.0322.lcssa.i
  %i.aav = and i32 %i.aau, -2                     ; 2 uses
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = add nuw nsw i64 %i.aaw, 2
  %i.aay = mul nsw i64 %i.aax, %i.wf
  %scevgep1365.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.aay
  %i.aaz = add nsw i32 %.0322.lcssa.i, 2
  %i.aba = add i32 %i.aaz, %i.aav
  br label %.preheader898.i

.preheader896.us.us.preheader.i:                  ; preds = %.preheader896.lr.ph.split.us.i
  %i.abb = zext nneg i32 %.fr1235.i to i64        ; 2 uses
  %i.abc = zext i32 %.0322.lcssa.i to i64
  br label %.preheader896.us.us.i

.preheader896.us.us.i:                            ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.us.preheader.i
  %indvars.iv1379.i = phi i64 [ %i.abc, %.preheader896.us.us.preheader.i ], [ %indvars.iv.next1380.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.13241162.us.us.i = phi ptr [ %.0323.lcssa.i, %.preheader896.us.us.preheader.i ], [ %i.aco, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %.13271161.us.us.i = phi float [ %i.aac, %.preheader896.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ]
  %i.abd = add nuw nsw i64 %indvars.iv1379.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %..loopexit892_crit_edge.us.us.us.i, %.preheader896.us.us.i
  %indvars.iv1374.i = phi i64 [ %indvars.iv.next1375.i, %..loopexit892_crit_edge.us.us.us.i ], [ 0, %.preheader896.us.us.i ] ; 3 uses
  %.23281152.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit892_crit_edge.us.us.us.i ], [ %.13271161.us.us.i, %.preheader896.us.us.i ] ; 3 uses
  %i.abe = trunc i64 %indvars.iv1374.i to i32
  %i.abf = mul i32 %i.aaf, %i.abe
  %.reass1158.us.us.us.i = add i32 %i.abf, %invariant.op1157.i ; 3 uses
  %i.abg = icmp slt i32 %.reass1158.us.us.us.i, 0
  br i1 %i.abg, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abh = srem i32 %.reass1158.us.us.us.i, %i.aah
  %i.abi = sdiv i32 %.reass1158.us.us.us.i, %i.aah ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.abh, 0
  %.not426.us.us.us.i = icmp slt i32 %i.abi, %i.gz
  %or.cond205 = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond205, label %.preheader891.us.us.us.i, label %..loopexit892_crit_edge.us.us.us.i

.preheader891.us.us.us.i:                         ; preds = %bb.bb
  %i.abj = mul nuw nsw i64 %indvars.iv1374.i, %i.abb
  %i.abk = sext i32 %i.abi to i64
  %i.abl = mul nsw i64 %i.abk, %i.ib
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.us.us.us.i, %.preheader891.us.us.us.i
  %indvars.iv1369.i = phi i64 [ %indvars.iv.next1370.i, %.loopexit.us.us.us.i ], [ 0, %.preheader891.us.us.us.i ] ; 3 uses
  %.31147.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.23281152.us.us.us.i, %.preheader891.us.us.us.i ] ; 3 uses
  %i.abm = trunc i64 %indvars.iv1369.i to i32
  %i.abn = mul i32 %i.aaj, %i.abm
  %.reass1151.us.us.us.i = add i32 %invariant.op1150.i, %i.abn ; 3 uses
  %i.abo = icmp slt i32 %.reass1151.us.us.us.i, 0
  br i1 %i.abo, label %.loopexit.us.us.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.abp = srem i32 %.reass1151.us.us.us.i, %i.aal
  %i.abq = sdiv i32 %.reass1151.us.us.us.i, %i.aal ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.abp, 0
  %.not428.us.us.us.i = icmp slt i32 %i.abq, %i.gy
  %or.cond206 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond206, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.bd
  %i.abr = add nuw nsw i64 %indvars.iv1369.i, %i.abj
  %.idx1437.i = shl nuw nsw i64 %i.abr, 2
  %i.abs = getelementptr inbounds nuw i8, ptr %.13241162.us.us.i, i64 %.idx1437.i
  %i.abt = load ptr, ptr %1, align 8, !tbaa !20, !noalias !419
  %i.abu = load i64, ptr %i.hi, align 8, !tbaa !21, !noalias !419
  %i.abv = load i64, ptr %i.hj, align 8, !tbaa !55, !noalias !419 ; 2 uses
  %factor.op.mul1141.us.us.us.i = mul i64 %i.abv, %i.abu ; 2 uses
  %i.abw = mul i64 %i.abl, %i.abv
  %invariant.gep.us.us.us1179.i = getelementptr i8, ptr %i.abt, i64 %i.abw
  %i.abx = sext i32 %i.abq to i64
  %invariant.gep1143.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1179.i, i64 %i.abx ; 2 uses
  %.reass1142.us.us.us.i = mul i64 %factor.op.mul1141.us.us.us.i, %indvars.iv1379.i
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
  %i.acl = fadd fast float %i.ack, %.31147.us.us.us.i
  %i.acm = extractelement <2 x float> %i.acj, i64 1
  %i.acn = fadd fast float %i.acl, %i.acm
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.bd, %bb.bc
  %.6.us.us.us.i = phi nsz float [ %.31147.us.us.us.i, %bb.bc ], [ %.31147.us.us.us.i, %bb.bd ], [ %i.acn, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1370.i = add nuw nsw i64 %indvars.iv1369.i, 1 ; 2 uses
  %exitcond1373.not.i = icmp eq i64 %indvars.iv.next1370.i, %i.abb
  br i1 %exitcond1373.not.i, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bc, !llvm.loop !400

..loopexit892_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.bb, %bb.ba
  %.8.us.us.us.i = phi nsz float [ %.23281152.us.us.us.i, %bb.ba ], [ %.23281152.us.us.us.i, %bb.bb ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1375.i = add nuw nsw i64 %indvars.iv1374.i, 1 ; 2 uses
  %exitcond1378.not.i = icmp eq i64 %indvars.iv.next1375.i, %wide.trip.count1359.i
  br i1 %exitcond1378.not.i, label %._crit_edge1155.split.us.us.us.i, label %bb.ba, !llvm.loop !401

._crit_edge1155.split.us.us.us.i:                 ; preds = %..loopexit892_crit_edge.us.us.us.i
  %i.aco = getelementptr inbounds [2 x i8], ptr %.13241162.us.us.i, i64 %i.wf ; 2 uses
  %indvars.iv.next1380.i = add nuw nsw i64 %indvars.iv1379.i, 2 ; 2 uses
  %i.acp = trunc i64 %indvars.iv.next1380.i to i32 ; 2 uses
  %i.acq = or i32 %i.acp, 1
  %i.acr = icmp slt i32 %i.acq, %i.gx
  br i1 %i.acr, label %.preheader896.us.us.i, label %.preheader898.i, !llvm.loop !402

.preheader898.i:                                  ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.preheader.i, %.preheader896.preheader.i, %._crit_edge1122.i
  %.1327.lcssa.i = phi float [ %i.aac, %._crit_edge1122.i ], [ %i.aac, %.preheader896.preheader.i ], [ %i.aac, %.preheader896.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.1324.lcssa.i = phi ptr [ %.0323.lcssa.i, %._crit_edge1122.i ], [ %scevgep1364.i, %.preheader896.preheader.i ], [ %scevgep1365.i, %.preheader896.us.preheader.i ], [ %i.aco, %._crit_edge1155.split.us.us.us.i ]
  %.1.lcssa.i = phi i32 [ %.0322.lcssa.i, %._crit_edge1122.i ], [ %i.aas, %.preheader896.preheader.i ], [ %i.aba, %.preheader896.us.preheader.i ], [ %i.acp, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %i.acs = icmp slt i32 %.1.lcssa.i, %i.gx
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
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %invariant.op = add nsw i64 %i.bf, -3
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader, %._crit_edge
  %.0198802 = phi i32 [ %.neg672, %._crit_edge ], [ 0, %.preheader684.preheader ]
  %.0199801 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader684.preheader ]
  %.neg672 = add nuw nsw i32 %.0198802, 1         ; 5 uses
  br label %bb.c

._crit_edge803.split:                             ; preds = %._crit_edge, %.preheader684.lr.ph, %.noexc299
  %i.bj = add i32 %.0202805, 1
  %exitcond851.not = icmp eq i32 %.0202805, %i.j
  br i1 %exitcond851.not, label %._crit_edge806, label %.noexc299, !llvm.loop !476

._crit_edge:                                      ; preds = %bb.aa
  %exitcond850.not = icmp eq i32 %.neg672, %i.ag
  br i1 %exitcond850.not, label %._crit_edge803.split, label %.preheader684, !llvm.loop !477

bb.c:                                             ; preds = %.preheader684, %bb.aa
  %.0197800 = phi i32 [ 0, %.preheader684 ], [ %i.vr, %bb.aa ] ; 4 uses
  %.1200799 = phi ptr [ %.0199801, %.preheader684 ], [ %.3, %bb.aa ] ; 8 uses
  %i.bk = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not221 = icmp eq ptr %i.bk, null
  br i1 %.not221, label %_ZN4ncnn3MatD2Ev.exit242, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.an
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !tbaa !80
  br label %_ZN4ncnn3MatD2Ev.exit242

_ZN4ncnn3MatD2Ev.exit242:                         ; preds = %bb.d, %bb.c
  %.0648 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.bm, %bb.d ] ; 3 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !20, !noalias !499 ; 2 uses
  %i.bo = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !499
  %i.bp = mul i64 %i.bo, %i.ap
  %i.bq = load i64, ptr %i.v, align 8, !tbaa !55, !noalias !499
  %i.br = mul i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br ; 2 uses
  br i1 %i.aq, label %.preheader681.lr.ph, label %.preheader683

.preheader681.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit242
  %i.bt = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  %.neg674 = add nuw nsw i32 %.0197800, 1
  %i.bv = load i32, ptr %16, align 4, !tbaa !60
  %i.bw = shl i32 %i.bv, 4
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  br i1 %i.bu, label %.preheader681.lr.ph.split.us, label %.preheader681.preheader

.preheader681.preheader:                          ; preds = %.preheader681.lr.ph
  %i.by = mul nsw i64 %i.bc, %i.bx
  %i.bz = getelementptr i8, ptr %i.bn, i64 %i.br
  %scevgep = getelementptr i8, ptr %i.bz, i64 %i.by
  br label %.preheader683

.preheader681.lr.ph.split.us:                     ; preds = %.preheader681.lr.ph
  %i.ca = load i32, ptr %9, align 4, !tbaa !60
  %i.cb = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op726.us = sub i32 %.neg672, %i.cb
  br label %.preheader681.us

.preheader681.us:                                 ; preds = %._crit_edge.us, %.preheader681.lr.ph.split.us
  %indvars.iv827 = phi i64 [ %indvars.iv.next828, %._crit_edge.us ], [ 0, %.preheader681.lr.ph.split.us ] ; 6 uses
  %.0194732.us = phi ptr [ %i.ip, %._crit_edge.us ], [ %i.bs, %.preheader681.lr.ph.split.us ] ; 3 uses
  %.0632731.us = phi <4 x float> [ %.5.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.0636730.us = phi <4 x float> [ %.5641.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.0642729.us = phi <4 x float> [ %.5647.us, %._crit_edge.us ], [ zeroinitializer, %.preheader681.lr.ph.split.us ]
  %.1649728.us = phi <4 x float> [ %.6654.us, %._crit_edge.us ], [ %.0648, %.preheader681.lr.ph.split.us ]
  %i.cc = or disjoint i64 %indvars.iv827, 3
  %i.cd = or disjoint i64 %indvars.iv827, 1
  %i.ce = or disjoint i64 %indvars.iv827, 2
  %i.cf = lshr exact i64 %indvars.iv827, 2
  br label %bb.e

bb.e:                                             ; preds = %.preheader681.us, %.loopexit678.us
  %.0192721.us = phi i32 [ 0, %.preheader681.us ], [ %i.io, %.loopexit678.us ] ; 3 uses
  %.1633720.us = phi <4 x float> [ %.0632731.us, %.preheader681.us ], [ %.5.us, %.loopexit678.us ] ; 6 uses
  %.1637719.us = phi <4 x float> [ %.0636730.us, %.preheader681.us ], [ %.5641.us, %.loopexit678.us ] ; 6 uses
  %.1643718.us = phi <4 x float> [ %.0642729.us, %.preheader681.us ], [ %.5647.us, %.loopexit678.us ] ; 6 uses
  %.2650717.us = phi <4 x float> [ %.1649728.us, %.preheader681.us ], [ %.6654.us, %.loopexit678.us ] ; 6 uses
  %i.cg = mul nsw i32 %i.ca, %.0192721.us
  %.reass727.us = add i32 %i.cg, %invariant.op726.us ; 3 uses
  %i.ch = icmp slt i32 %.reass727.us, 0
  br i1 %i.ch, label %.loopexit678.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.cj = srem i32 %.reass727.us, %i.ci
  %i.ck = sdiv i32 %.reass727.us, %i.ci           ; 2 uses
  %.not231.us = icmp eq i32 %i.cj, 0
  %.not232.us = icmp slt i32 %i.ck, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader677.us, label %.loopexit678.us

.preheader677.us:                                 ; preds = %bb.f
  %i.cl = load i32, ptr %12, align 4, !tbaa !60   ; 4 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us, label %.loopexit678.us

.lr.ph.us:                                        ; preds = %.preheader677.us
  %i.cn = load i32, ptr %13, align 4, !tbaa !60   ; 2 uses
  %i.co = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us = sub i32 %.neg674, %i.co      ; 2 uses
  %i.cp = mul nuw nsw i32 %i.cl, %.0192721.us     ; 2 uses
  %i.cq = sext i32 %i.ck to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit678.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us696.us.preheader
  ]

.lr.ph.split.us696.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us696.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count824 = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us696.us:                            ; preds = %.lr.ph.split.us696.us.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us696.us.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.2634688.us698.us = phi <4 x float> [ %.1633720.us, %.lr.ph.split.us696.us.preheader ], [ %.4.us708.us, %bb.h ] ; 3 uses
  %.2638687.us699.us = phi <4 x float> [ %.1637719.us, %.lr.ph.split.us696.us.preheader ], [ %.4640.us707.us, %bb.h ] ; 3 uses
  %.2644686.us700.us = phi <4 x float> [ %.1643718.us, %.lr.ph.split.us696.us.preheader ], [ %.4646.us706.us, %bb.h ] ; 3 uses
  %.3651685.us701.us = phi <4 x float> [ %.2650717.us, %.lr.ph.split.us696.us.preheader ], [ %.5653.us705.us, %bb.h ] ; 3 uses
  %i.cr = trunc i64 %indvars.iv to i32
  %i.cs = mul i32 %i.cn, %i.cr
  %.reass.us702.us = add i32 %i.cs, %invariant.op.us ; 3 uses
  %i.ct = icmp slt i32 %.reass.us702.us, 0
  br i1 %i.ct, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us696.us
  %i.cu = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.cv = srem i32 %.reass.us702.us, %i.cu
  %i.cw = sdiv i32 %.reass.us702.us, %i.cu        ; 2 uses
  %.not233.us703.us = icmp eq i32 %i.cv, 0
  %.not234.us704.us = icmp slt i32 %i.cw, %i.ad
  %or.cond885 = select i1 %.not233.us703.us, i1 %.not234.us704.us, i1 false
  br i1 %or.cond885, label %_ZN4ncnn3MatD2Ev.exit240.us.us, label %bb.h

_ZN4ncnn3MatD2Ev.exit240.us.us:                   ; preds = %bb.g
  %i.cx = trunc i64 %indvars.iv to i32
  %i.cy = add i32 %i.cp, %i.cx
  %i.cz = shl nsw i32 %i.cy, 4
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.0194732.us, i64 %i.da ; 4 uses
  %i.dc = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !500
  %i.dd = load ptr, ptr %4, align 8, !tbaa !20, !noalias !500 ; 4 uses
  %i.de = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !500 ; 4 uses
  %i.df = mul i64 %i.de, %indvars.iv827
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !500 ; 5 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = sext i32 %i.dc to i64
  %i.dk = mul nsw i64 %i.dj, %i.cq
  %i.dl = mul i64 %i.dk, %i.dg                    ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  %i.dn = sext i32 %i.cw to i64                   ; 4 uses
  %i.do = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !86
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw i32 %i.dq, 16
  %i.ds = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = mul i64 %i.de, %i.cd
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dl
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.dn
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !86
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl nuw i32 %i.eb, 16
  %i.ed = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %i.ee = bitcast <4 x i32> %i.ed to <4 x float>
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = mul i64 %i.de, %i.ce
  %i.eh = mul i64 %i.eg, %i.dg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dl
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.dn
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !86
  %i.em = zext i16 %i.el to i32
  %i.en = shl nuw i32 %i.em, 16
  %i.eo = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.ep = bitcast <4 x i32> %i.eo to <4 x float>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = mul i64 %i.de, %i.cc
  %i.es = mul i64 %i.er, %i.dg
  %i.et = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.dl
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.dn
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !86
  %i.ex = zext i16 %i.ew to i32
  %i.ey = shl nuw i32 %i.ex, 16
  %i.ez = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %i.fa = bitcast <4 x i32> %i.ez to <4 x float>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = load i64, ptr %i.db, align 1, !tbaa !80
  %i.fd = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fe = bitcast <2 x i64> %i.fd to <8 x i16>
  %20 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = bitcast <8 x i16> %20 to <4 x float>
  %i.fg = fmul fast <4 x float> %i.du, %i.ff
  %i.fh = fadd fast <4 x float> %i.fg, %.3651685.us701.us
  %i.fi = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.fj = load i64, ptr %i.fi, align 1, !tbaa !80
  %i.fk = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %i.fl = bitcast <2 x i64> %i.fk to <8 x i16>
  %21 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fm = bitcast <8 x i16> %21 to <4 x float>
  %i.fn = fmul fast <4 x float> %i.ef, %i.fm
  %i.fo = fadd fast <4 x float> %i.fn, %.2644686.us700.us
  %i.fp = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.fq = load i64, ptr %i.fp, align 1, !tbaa !80
  %i.fr = insertelement <2 x i64> poison, i64 %i.fq, i64 0
  %i.fs = bitcast <2 x i64> %i.fr to <8 x i16>
  %22 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ft = bitcast <8 x i16> %22 to <4 x float>
  %i.fu = fmul fast <4 x float> %i.eq, %i.ft
  %i.fv = fadd fast <4 x float> %i.fu, %.2638687.us699.us
  %i.fw = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.fx = load i64, ptr %i.fw, align 1, !tbaa !80
  %i.fy = insertelement <2 x i64> poison, i64 %i.fx, i64 0
  %i.fz = bitcast <2 x i64> %i.fy to <8 x i16>
  %23 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ga = bitcast <8 x i16> %23 to <4 x float>
  %i.gb = fmul fast <4 x float> %i.fb, %i.ga
  %i.gc = fadd fast <4 x float> %i.gb, %.2634688.us698.us
  br label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit240.us.us, %bb.g, %.lr.ph.split.us696.us
  %.5653.us705.us = phi nsz <4 x float> [ %.3651685.us701.us, %.lr.ph.split.us696.us ], [ %.3651685.us701.us, %bb.g ], [ %i.fh, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4646.us706.us = phi nsz <4 x float> [ %.2644686.us700.us, %.lr.ph.split.us696.us ], [ %.2644686.us700.us, %bb.g ], [ %i.fo, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4640.us707.us = phi nsz <4 x float> [ %.2638687.us699.us, %.lr.ph.split.us696.us ], [ %.2638687.us699.us, %bb.g ], [ %i.fv, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4.us708.us = phi nsz <4 x float> [ %.2634688.us698.us, %.lr.ph.split.us696.us ], [ %.2634688.us698.us, %bb.g ], [ %i.gc, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit678.us, label %.lr.ph.split.us696.us, !llvm.loop !482

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.k
  %indvars.iv821 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next822, %bb.k ] ; 3 uses
  %.2634688.us.us = phi <4 x float> [ %.1633720.us, %.lr.ph.split.us.us.preheader ], [ %.4.us.us, %bb.k ] ; 3 uses
  %.2638687.us.us = phi <4 x float> [ %.1637719.us, %.lr.ph.split.us.us.preheader ], [ %.4640.us.us, %bb.k ] ; 3 uses
  %.2644686.us.us = phi <4 x float> [ %.1643718.us, %.lr.ph.split.us.us.preheader ], [ %.4646.us.us, %bb.k ] ; 3 uses
  %.3651685.us.us = phi <4 x float> [ %.2650717.us, %.lr.ph.split.us.us.preheader ], [ %.5653.us.us, %bb.k ] ; 3 uses
  %i.gd = trunc i64 %indvars.iv821 to i32
  %i.ge = mul i32 %i.cn, %i.gd
  %.reass.us.us = add i32 %i.ge, %invariant.op.us ; 3 uses
  %i.gf = icmp slt i32 %.reass.us.us, 0
  br i1 %i.gf, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.us
  %i.gg = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.gh = srem i32 %.reass.us.us, %i.gg
  %i.gi = sdiv i32 %.reass.us.us, %i.gg           ; 2 uses
  %.not233.us.us = icmp eq i32 %i.gh, 0
  %.not234.us.us = icmp slt i32 %i.gi, %i.ad
  %or.cond886 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond886, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gj = trunc i64 %indvars.iv821 to i32
  %i.gk = add i32 %i.cp, %i.gj
  %i.gl = shl nsw i32 %i.gk, 4
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %.0194732.us, i64 %i.gm ; 4 uses
  %i.go = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !501
  %i.gp = load ptr, ptr %4, align 8, !tbaa !20, !noalias !501
  %i.gq = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !501
  %i.gr = mul i64 %i.gq, %i.cf
  %i.gs = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !501 ; 2 uses
  %i.gt = mul i64 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gt
  %i.gv = sext i32 %i.go to i64
  %i.gw = mul nsw i64 %i.gv, %i.cq
  %i.gx = mul i64 %i.gw, %i.gs
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gx
  %i.gz = shl nsw i32 %i.gi, 2
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load <4 x i16>, ptr %i.hb, align 2, !tbaa !86
  %i.hd = zext <4 x i16> %i.hc to <4 x i32>
  %i.he = shl nuw <4 x i32> %i.hd, splat (i32 16) ; 4 uses
  %i.hf = bitcast <4 x i32> %i.he to <4 x float>
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = bitcast <4 x i32> %i.he to <4 x float>
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hj = bitcast <4 x i32> %i.he to <4 x float>
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hl = bitcast <4 x i32> %i.he to <4 x float>
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hn = load i64, ptr %i.gn, align 1, !tbaa !80
  %i.ho = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hp = bitcast <2 x i64> %i.ho to <8 x i16>
  %24 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hq = bitcast <8 x i16> %24 to <4 x float>
  %i.hr = fmul fast <4 x float> %i.hg, %i.hq
  %i.hs = fadd fast <4 x float> %i.hr, %.3651685.us.us
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hu = load i64, ptr %i.ht, align 1, !tbaa !80
  %i.hv = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %i.hw = bitcast <2 x i64> %i.hv to <8 x i16>
  %25 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hx = bitcast <8 x i16> %25 to <4 x float>
  %i.hy = fmul fast <4 x float> %i.hi, %i.hx
  %i.hz = fadd fast <4 x float> %i.hy, %.2644686.us.us
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.ib = load i64, ptr %i.ia, align 1, !tbaa !80
  %i.ic = insertelement <2 x i64> poison, i64 %i.ib, i64 0
  %i.id = bitcast <2 x i64> %i.ic to <8 x i16>
  %26 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.id, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ie = bitcast <8 x i16> %26 to <4 x float>
  %i.if = fmul fast <4 x float> %i.hk, %i.ie
  %i.ig = fadd fast <4 x float> %i.if, %.2638687.us.us
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.ii = load i64, ptr %i.ih, align 1, !tbaa !80
  %i.ij = insertelement <2 x i64> poison, i64 %i.ii, i64 0
  %i.ik = bitcast <2 x i64> %i.ij to <8 x i16>
  %27 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.il = bitcast <8 x i16> %27 to <4 x float>
  %i.im = fmul fast <4 x float> %i.hm, %i.il
  %i.in = fadd fast <4 x float> %i.im, %.2634688.us.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.us.us
  %.5653.us.us = phi nsz <4 x float> [ %.3651685.us.us, %.lr.ph.split.us.us ], [ %i.hs, %bb.j ], [ %.3651685.us.us, %bb.i ] ; 2 uses
  %.4646.us.us = phi nsz <4 x float> [ %.2644686.us.us, %.lr.ph.split.us.us ], [ %i.hz, %bb.j ], [ %.2644686.us.us, %bb.i ] ; 2 uses
  %.4640.us.us = phi nsz <4 x float> [ %.2638687.us.us, %.lr.ph.split.us.us ], [ %i.ig, %bb.j ], [ %.2638687.us.us, %bb.i ] ; 2 uses
  %.4.us.us = phi nsz <4 x float> [ %.2634688.us.us, %.lr.ph.split.us.us ], [ %i.in, %bb.j ], [ %.2634688.us.us, %bb.i ] ; 2 uses
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1 ; 2 uses
  %exitcond825.not = icmp eq i64 %indvars.iv.next822, %wide.trip.count824
  br i1 %exitcond825.not, label %.loopexit678.us, label %.lr.ph.split.us.us, !llvm.loop !482

.loopexit678.us:                                  ; preds = %bb.h, %bb.k, %.lr.ph.us, %.preheader677.us, %bb.f, %bb.e
  %.6654.us = phi nsz <4 x float> [ %.2650717.us, %bb.e ], [ %.2650717.us, %bb.f ], [ %.5653.us.us, %bb.k ], [ %.2650717.us, %.preheader677.us ], [ %.2650717.us, %.lr.ph.us ], [ %.5653.us705.us, %bb.h ] ; 3 uses
  %.5647.us = phi nsz <4 x float> [ %.1643718.us, %bb.e ], [ %.1643718.us, %bb.f ], [ %.4646.us.us, %bb.k ], [ %.1643718.us, %.preheader677.us ], [ %.1643718.us, %.lr.ph.us ], [ %.4646.us706.us, %bb.h ] ; 3 uses
  %.5641.us = phi nsz <4 x float> [ %.1637719.us, %bb.e ], [ %.1637719.us, %bb.f ], [ %.4640.us.us, %bb.k ], [ %.1637719.us, %.preheader677.us ], [ %.1637719.us, %.lr.ph.us ], [ %.4640.us707.us, %bb.h ] ; 3 uses
  %.5.us = phi nsz <4 x float> [ %.1633720.us, %bb.e ], [ %.1633720.us, %bb.f ], [ %.4.us.us, %bb.k ], [ %.1633720.us, %.preheader677.us ], [ %.1633720.us, %.lr.ph.us ], [ %.4.us708.us, %bb.h ] ; 3 uses
  %i.io = add nuw nsw i32 %.0192721.us, 1         ; 2 uses
  %exitcond826.not = icmp eq i32 %i.io, %i.bt
  br i1 %exitcond826.not, label %._crit_edge.us, label %bb.e, !llvm.loop !485

._crit_edge.us:                                   ; preds = %.loopexit678.us
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0194732.us, i64 %i.bx ; 2 uses
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 4 ; 2 uses
  %i.iq = icmp slt i64 %indvars.iv.next828, %invariant.op
  br i1 %i.iq, label %.preheader681.us, label %.preheader683.loopexit, !llvm.loop !486

.preheader683.loopexit:                           ; preds = %._crit_edge.us
  %i.ir = fadd fast <4 x float> %.5.us, %.5641.us
  br label %.preheader683

.preheader683:                                    ; preds = %.preheader681.preheader, %.preheader683.loopexit, %_ZN4ncnn3MatD2Ev.exit242
  %.1649.lcssa = phi <4 x float> [ %.0648, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.6654.us, %.preheader683.loopexit ], [ %.0648, %.preheader681.preheader ] ; 3 uses
  %.0642.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.5647.us, %.preheader683.loopexit ], [ zeroinitializer, %.preheader681.preheader ] ; 3 uses
  %.0632.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.ir, %.preheader683.loopexit ], [ zeroinitializer, %.preheader681.preheader ]
  %.0194.lcssa = phi ptr [ %i.bs, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.ip, %.preheader683.loopexit ], [ %scevgep, %.preheader681.preheader ] ; 3 uses
  %.0193.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.bh, %.preheader683.loopexit ], [ %i.be, %.preheader681.preheader ] ; 5 uses
  %i.is = or disjoint i32 %.0193.lcssa, 1         ; 2 uses
  %i.it = icmp slt i32 %i.is, %i.ac
  br i1 %i.it, label %.preheader680.lr.ph, label %.preheader682

.preheader680.lr.ph:                              ; preds = %.preheader683
  %i.iu = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  %.neg670 = add nuw nsw i32 %.0197800, 1
  %i.iw = load i32, ptr %16, align 4, !tbaa !60
  %i.ix = shl i32 %i.iw, 3
  %i.iy = sext i32 %i.ix to i64                   ; 2 uses
  br i1 %i.iv, label %.preheader680.lr.ph.split.us, label %.preheader680.preheader

.preheader680.preheader:                          ; preds = %.preheader680.lr.ph
  %i.iz = sub i32 %i.bi, %.0193.lcssa             ; 2 uses
  %i.ja = and i32 %i.iz, -2
  %i.jb = zext i32 %i.ja to i64
  %i.jc = add nuw nsw i64 %i.jb, 2
  %i.jd = mul nsw i64 %i.jc, %i.iy
  %scevgep830 = getelementptr i8, ptr %.0194.lcssa, i64 %i.jd
  %i.je = add i32 %.0193.lcssa, 2
  %i.jf = and i32 %i.iz, -2
  %i.jg = add i32 %i.je, %i.jf
  br label %.preheader682

.preheader680.lr.ph.split.us:                     ; preds = %.preheader680.lr.ph
  %i.jh = load i32, ptr %9, align 4, !tbaa !60
  %i.ji = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op764.us = sub i32 %.neg672, %i.ji
  %i.jj = zext i32 %.0193.lcssa to i64
  %i.jk = zext nneg i32 %i.is to i64
  br label %.preheader680.us

.preheader680.us:                                 ; preds = %._crit_edge.us776, %.preheader680.lr.ph.split.us
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %._crit_edge.us776 ], [ %i.jj, %.preheader680.lr.ph.split.us ] ; 2 uses
  %i.jl = phi i64 [ %i.mb, %._crit_edge.us776 ], [ %i.jk, %.preheader680.lr.ph.split.us ]
  %.1195768.us = phi ptr [ %i.ma, %._crit_edge.us776 ], [ %.0194.lcssa, %.preheader680.lr.ph.split.us ] ; 2 uses
  %.6767.us = phi <4 x float> [ %.10.us, %._crit_edge.us776 ], [ %.0642.lcssa, %.preheader680.lr.ph.split.us ]
  %.7655766.us = phi <4 x float> [ %.11.us, %._crit_edge.us776 ], [ %.1649.lcssa, %.preheader680.lr.ph.split.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader680.us, %.loopexit676.us
  %.0190760.us = phi i32 [ 0, %.preheader680.us ], [ %i.lv, %.loopexit676.us ] ; 3 uses
  %.7759.us = phi <4 x float> [ %.6767.us, %.preheader680.us ], [ %.10.us, %.loopexit676.us ] ; 4 uses
  %.8656758.us = phi <4 x float> [ %.7655766.us, %.preheader680.us ], [ %.11.us, %.loopexit676.us ] ; 4 uses
  %i.jm = mul nsw i32 %i.jh, %.0190760.us
  %.reass765.us = add i32 %i.jm, %invariant.op764.us ; 3 uses
  %i.jn = icmp slt i32 %.reass765.us, 0
  br i1 %i.jn, label %.loopexit676.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jo = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.jp = srem i32 %.reass765.us, %i.jo
  %i.jq = sdiv i32 %.reass765.us, %i.jo           ; 2 uses
  %.not227.us = icmp eq i32 %i.jp, 0
  %.not228.us = icmp slt i32 %i.jq, %i.ae
  %or.cond887 = select i1 %.not227.us, i1 %.not228.us, i1 false
  br i1 %or.cond887, label %.preheader675.us, label %.loopexit676.us

.preheader675.us:                                 ; preds = %bb.m
  %i.jr = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %.lr.ph.us774, label %.loopexit676.us

bb.n:                                             ; preds = %.lr.ph.us774, %bb.p
  %indvars.iv831 = phi i64 [ 0, %.lr.ph.us774 ], [ %indvars.iv.next832, %bb.p ] ; 3 uses
  %.8755.us = phi <4 x float> [ %.7759.us, %.lr.ph.us774 ], [ %.9.us, %bb.p ] ; 3 uses
  %.9657754.us = phi <4 x float> [ %.8656758.us, %.lr.ph.us774 ], [ %.10658.us, %bb.p ] ; 3 uses
  %i.jt = trunc i64 %indvars.iv831 to i32
  %i.ju = mul i32 %i.lw, %i.jt
  %.reass.us = add i32 %i.ju, %invariant.op.us775 ; 3 uses
  %i.jv = icmp slt i32 %.reass.us, 0
  br i1 %i.jv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jw = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.jx = srem i32 %.reass.us, %i.jw
  %i.jy = sdiv i32 %.reass.us, %i.jw              ; 2 uses
  %.not229.us = icmp eq i32 %i.jx, 0
  %.not230.us = icmp slt i32 %i.jy, %i.ad
  %or.cond888 = select i1 %.not229.us, i1 %.not230.us, i1 false
  br i1 %or.cond888, label %_ZN4ncnn3MatD2Ev.exit236.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit236.us:                      ; preds = %bb.o
  %i.jz = trunc i64 %indvars.iv831 to i32
  %i.ka = add i32 %i.ly, %i.jz
  %i.kb = shl nsw i32 %i.ka, 3
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %.1195768.us, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !502
  %i.kf = load ptr, ptr %4, align 8, !tbaa !20, !noalias !502 ; 2 uses
  %i.kg = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !502 ; 2 uses
  %i.kh = mul i64 %i.kg, %indvars.iv837
  %i.ki = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !502 ; 3 uses
  %i.kj = mul i64 %i.kh, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kj
  %i.kl = sext i32 %i.ke to i64
  %i.km = mul nsw i64 %i.kl, %i.lz
  %i.kn = mul i64 %i.km, %i.ki                    ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kn
  %i.kp = mul i64 %i.kg, %i.jl
  %i.kq = mul i64 %i.kp, %i.ki
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kq
  %i.ks = sext i32 %i.jy to i64                   ; 2 uses
  %i.kt = getelementptr inbounds [2 x i8], ptr %i.ko, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kn
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.ku, i64 %i.ks
  %i.kw = load i16, ptr %i.kt, align 2, !tbaa !86
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = insertelement <4 x i32> poison, i32 %i.ky, i64 0
  %i.la = bitcast <4 x i32> %i.kz to <4 x float>
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lc = load i16, ptr %i.kv, align 2, !tbaa !86
  %i.ld = zext i16 %i.lc to i32
  %i.le = shl nuw i32 %i.ld, 16
  %i.lf = insertelement <4 x i32> poison, i32 %i.le, i64 0
  %i.lg = bitcast <4 x i32> %i.lf to <4 x float>
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.li = load i64, ptr %i.kd, align 1, !tbaa !80
  %i.lj = insertelement <2 x i64> poison, i64 %i.li, i64 0
  %i.lk = bitcast <2 x i64> %i.lj to <8 x i16>
  %28 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ll = bitcast <8 x i16> %28 to <4 x float>
  %i.lm = fmul fast <4 x float> %i.lb, %i.ll
  %i.ln = fadd fast <4 x float> %i.lm, %.9657754.us
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.lp = load i64, ptr %i.lo, align 1, !tbaa !80
  %i.lq = insertelement <2 x i64> poison, i64 %i.lp, i64 0
  %i.lr = bitcast <2 x i64> %i.lq to <8 x i16>
  %29 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ls = bitcast <8 x i16> %29 to <4 x float>
  %i.lt = fmul fast <4 x float> %i.lh, %i.ls
  %i.lu = fadd fast <4 x float> %i.lt, %.8755.us
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit236.us, %bb.o, %bb.n
  %.10658.us = phi nsz <4 x float> [ %.9657754.us, %bb.n ], [ %i.ln, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.9657754.us, %bb.o ] ; 2 uses
  %.9.us = phi nsz <4 x float> [ %.8755.us, %bb.n ], [ %i.lu, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.8755.us, %bb.o ] ; 2 uses
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 1 ; 2 uses
  %exitcond835.not = icmp eq i64 %indvars.iv.next832, %wide.trip.count834
  br i1 %exitcond835.not, label %.loopexit676.us, label %bb.n, !llvm.loop !489

.loopexit676.us:                                  ; preds = %bb.p, %.preheader675.us, %bb.m, %bb.l
  %.11.us = phi nsz <4 x float> [ %.8656758.us, %bb.l ], [ %.8656758.us, %bb.m ], [ %.8656758.us, %.preheader675.us ], [ %.10658.us, %bb.p ] ; 3 uses
  %.10.us = phi nsz <4 x float> [ %.7759.us, %bb.l ], [ %.7759.us, %bb.m ], [ %.7759.us, %.preheader675.us ], [ %.9.us, %bb.p ] ; 3 uses
  %i.lv = add nuw nsw i32 %.0190760.us, 1         ; 2 uses
  %exitcond836.not = icmp eq i32 %i.lv, %i.iu
  br i1 %exitcond836.not, label %._crit_edge.us776, label %bb.l, !llvm.loop !490

.lr.ph.us774:                                     ; preds = %.preheader675.us
  %i.lw = load i32, ptr %13, align 4, !tbaa !60
  %i.lx = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us775 = sub i32 %.neg670, %i.lx
  %i.ly = mul nuw nsw i32 %i.jr, %.0190760.us
  %i.lz = sext i32 %i.jq to i64
  %wide.trip.count834 = zext nneg i32 %i.jr to i64
  br label %bb.n

._crit_edge.us776:                                ; preds = %.loopexit676.us
  %i.ma = getelementptr inbounds [2 x i8], ptr %.1195768.us, i64 %i.iy ; 2 uses
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 2 ; 3 uses
  %i.mb = or disjoint i64 %indvars.iv.next838, 1  ; 2 uses
  %i.mc = trunc nuw i64 %i.mb to i32
  %i.md = icmp sgt i32 %i.ac, %i.mc
  br i1 %i.md, label %.preheader680.us, label %.preheader682.loopexit, !llvm.loop !491

.preheader682.loopexit:                           ; preds = %._crit_edge.us776
  %i.me = trunc nuw i64 %indvars.iv.next838 to i32
  br label %.preheader682

.preheader682:                                    ; preds = %.preheader680.preheader, %.preheader682.loopexit, %.preheader683
  %.7655.lcssa = phi <4 x float> [ %.1649.lcssa, %.preheader683 ], [ %.11.us, %.preheader682.loopexit ], [ %.1649.lcssa, %.preheader680.preheader ] ; 3 uses
  %.6.lcssa = phi <4 x float> [ %.0642.lcssa, %.preheader683 ], [ %.10.us, %.preheader682.loopexit ], [ %.0642.lcssa, %.preheader680.preheader ]
  %.1195.lcssa = phi ptr [ %.0194.lcssa, %.preheader683 ], [ %i.ma, %.preheader682.loopexit ], [ %scevgep830, %.preheader680.preheader ]
  %.1.lcssa = phi i32 [ %.0193.lcssa, %.preheader683 ], [ %i.me, %.preheader682.loopexit ], [ %i.jg, %.preheader680.preheader ] ; 2 uses
  %i.mf = icmp slt i32 %.1.lcssa, %i.ac
  br i1 %i.mf, label %.preheader679.lr.ph, label %._crit_edge791

.preheader679.lr.ph:                              ; preds = %.preheader682
  %i.mg = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  %.neg666 = add nuw nsw i32 %.0197800, 1
  %i.mi = load i32, ptr %16, align 4, !tbaa !60
  %i.mj = shl nsw i32 %i.mi, 2
  %i.mk = sext i32 %i.mj to i64
  br i1 %i.mh, label %.preheader679.lr.ph.split.us, label %._crit_edge791

.preheader679.lr.ph.split.us:                     ; preds = %.preheader679.lr.ph
  %i.ml = load i32, ptr %9, align 4, !tbaa !60
  %i.mm = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op786.us = sub i32 %.neg672, %i.mm
  %i.mn = zext i32 %.1.lcssa to i64
  br label %.preheader679.us

.preheader679.us:                                 ; preds = %._crit_edge.us797, %.preheader679.lr.ph.split.us
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %._crit_edge.us797 ], [ %i.mn, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.2196789.us = phi ptr [ %i.ok, %._crit_edge.us797 ], [ %.1195.lcssa, %.preheader679.lr.ph.split.us ] ; 2 uses
  %.12788.us = phi <4 x float> [ %.16.us, %._crit_edge.us797 ], [ %.7655.lcssa, %.preheader679.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader679.us, %.loopexit.us
  %.0188783.us = phi i32 [ 0, %.preheader679.us ], [ %i.of, %.loopexit.us ] ; 3 uses
  %.13782.us = phi <4 x float> [ %.12788.us, %.preheader679.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.mo = mul nsw i32 %i.ml, %.0188783.us
  %.reass787.us = add i32 %i.mo, %invariant.op786.us ; 3 uses
  %i.mp = icmp slt i32 %.reass787.us, 0
  br i1 %i.mp, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mq = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.mr = srem i32 %.reass787.us, %i.mq
  %i.ms = sdiv i32 %.reass787.us, %i.mq           ; 2 uses
  %.not223.us = icmp eq i32 %i.mr, 0
  %.not224.us = icmp slt i32 %i.ms, %i.ae
  %or.cond889 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond889, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.r
  %i.mt = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.lr.ph.us794, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us794, %bb.v
  %indvars.iv840 = phi i64 [ 0, %.lr.ph.us794 ], [ %indvars.iv.next841, %bb.v ] ; 3 uses
  %.14780.us = phi <4 x float> [ %.13782.us, %.lr.ph.us794 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.mv = trunc i64 %indvars.iv840 to i32
  %i.mw = mul i32 %i.og, %i.mv
  %.reass.us793 = add i32 %i.mw, %invariant.op.us795 ; 3 uses
  %i.mx = icmp slt i32 %.reass.us793, 0
  br i1 %i.mx, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.my = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.mz = srem i32 %.reass.us793, %i.my
  %i.na = sdiv i32 %.reass.us793, %i.my           ; 2 uses
  %.not225.us = icmp eq i32 %i.mz, 0
  %.not226.us = icmp slt i32 %i.na, %i.ad
  %or.cond890 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond890, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nb = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !503
  %i.nc = load ptr, ptr %4, align 8, !tbaa !20, !noalias !503
  %i.nd = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !503
  %i.ne = mul i64 %i.nd, %indvars.iv846
  %i.nf = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !503 ; 2 uses
  %i.ng = mul i64 %i.ne, %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ng
  %i.ni = sext i32 %i.nb to i64
  %i.nj = trunc i64 %indvars.iv840 to i32
  %i.nk = add i32 %i.oi, %i.nj
  %i.nl = shl nsw i32 %i.nk, 2
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.2196789.us, i64 %i.nm
  %i.no = mul nsw i64 %i.ni, %i.oj
  %i.np = mul i64 %i.no, %i.nf
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.np
  %i.nr = sext i32 %i.na to i64
  %i.ns = getelementptr inbounds [2 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !86
  %i.nu = zext i16 %i.nt to i32
  %i.nv = shl nuw i32 %i.nu, 16
  %i.nw = insertelement <4 x i32> poison, i32 %i.nv, i64 0
  %i.nx = bitcast <4 x i32> %i.nw to <4 x float>
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nz = load i64, ptr %i.nn, align 1, !tbaa !80
  %i.oa = insertelement <2 x i64> poison, i64 %i.nz, i64 0
  %i.ob = bitcast <2 x i64> %i.oa to <8 x i16>
  %30 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ob, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oc = bitcast <8 x i16> %30 to <4 x float>
  %i.od = fmul fast <4 x float> %i.ny, %i.oc
  %i.oe = fadd fast <4 x float> %i.od, %.14780.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14780.us, %bb.s ], [ %i.oe, %bb.u ], [ %.14780.us, %bb.t ] ; 2 uses
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %.loopexit.us, label %bb.s, !llvm.loop !494

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13782.us, %bb.q ], [ %.13782.us, %bb.r ], [ %.13782.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.of = add nuw nsw i32 %.0188783.us, 1         ; 2 uses
  %exitcond845.not = icmp eq i32 %i.of, %i.mg
  br i1 %exitcond845.not, label %._crit_edge.us797, label %bb.q, !llvm.loop !495

.lr.ph.us794:                                     ; preds = %.preheader.us
  %i.og = load i32, ptr %13, align 4, !tbaa !60
  %i.oh = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us795 = sub i32 %.neg666, %i.oh
  %i.oi = mul nuw nsw i32 %i.mt, %.0188783.us
  %i.oj = sext i32 %i.ms to i64
  %wide.trip.count843 = zext nneg i32 %i.mt to i64
  br label %bb.s

._crit_edge.us797:                                ; preds = %.loopexit.us
  %i.ok = getelementptr inbounds [2 x i8], ptr %.2196789.us, i64 %i.mk
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %i.ol = trunc nuw i64 %indvars.iv.next847 to i32
  %i.om = icmp sgt i32 %i.ac, %i.ol
  br i1 %i.om, label %.preheader679.us, label %._crit_edge791, !llvm.loop !496

._crit_edge791:                                   ; preds = %._crit_edge.us797, %.preheader679.lr.ph, %.preheader682
  %.12.lcssa = phi <4 x float> [ %.7655.lcssa, %.preheader682 ], [ %.7655.lcssa, %.preheader679.lr.ph ], [ %.16.us, %._crit_edge.us797 ]
  %i.on = fadd fast <4 x float> %.0632.lcssa, %.6.lcssa
  %i.oo = fadd fast <4 x float> %i.on, %.12.lcssa ; 10 uses
  %i.op = load i32, ptr %17, align 4, !tbaa !60
  switch i32 %i.op, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge791
  %i.oq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oo, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge791
  %i.or = load ptr, ptr %18, align 8, !tbaa !20
  %i.os = load float, ptr %i.or, align 4, !tbaa !39
  %i.ot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.oo)
  %i.ou = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.oo)
  %i.ov = insertelement <4 x float> poison, float %i.os, i64 0
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ox = fmul fast <4 x float> %i.ow, %i.ou
  %i.oy = fadd fast <4 x float> %i.ox, %i.ot
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge791
  %i.oz = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !39
  %i.pb = insertelement <4 x float> poison, float %i.pa, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !39
  %i.pf = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.pg = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ph = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oo, <4 x float> nofpclass(nan inf) %i.pc)
  %i.pi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ph, <4 x float> nofpclass(nan inf) %i.pg)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge791
  %i.pj = fneg fast <4 x float> %i.oo
  %i.pk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pj, <4 x float> splat (float f0x42B0C0A5))
  %i.pl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pm = fmul fast <4 x float> %i.pl, splat (float f0x3FB8AA3B)
  %i.pn = fadd fast <4 x float> %i.pm, splat (float 5.000000e-01) ; 2 uses
  %i.po = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pn)
  %i.pp = sitofp fast <4 x i32> %i.po to <4 x float> ; 2 uses
  %i.pq = fcmp fast olt <4 x float> %i.pn, %i.pp
  %i.pr = select <4 x i1> %i.pq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ps = fsub fast <4 x float> %i.pp, %i.pr      ; 2 uses
  %i.pt = fmul fast <4 x float> %i.ps, splat (float f0x3F317218)
  %i.pu = fsub fast <4 x float> %i.pl, %i.pt      ; 8 uses
  %i.pv = fmul fast <4 x float> %i.pu, %i.pu
  %i.pw = fmul fast <4 x float> %i.pu, splat (float f0x39506967)
  %i.px = fadd fast <4 x float> %i.pw, splat (float f0x3AB743CE)
  %i.py = fmul fast <4 x float> %i.px, %i.pu
  %i.pz = fadd fast <4 x float> %i.py, splat (float f0x3C088908)
  %i.qa = fmul fast <4 x float> %i.pz, %i.pu
  %i.qb = fadd fast <4 x float> %i.qa, splat (float f0x3D2AA9C1)
  %i.qc = fmul fast <4 x float> %i.qb, %i.pu
  %i.qd = fadd fast <4 x float> %i.qc, splat (float f0x3E2AAAAA)
  %i.qe = fmul fast <4 x float> %i.qd, %i.pu
  %i.qf = fadd fast <4 x float> %i.qe, splat (float 5.000000e-01)
  %i.qg = fmul fast <4 x float> %i.pv, %i.qf
  %i.qh = fadd fast <4 x float> %i.pu, splat (float 1.000000e+00)
  %i.qi = fadd fast <4 x float> %i.qh, %i.qg
  %i.qj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ps)
  %i.qk = shl <4 x i32> %i.qj, splat (i32 23)
  %i.ql = add <4 x i32> %i.qk, splat (i32 1065353216)
  %i.qm = bitcast <4 x i32> %i.ql to <4 x float>
  %i.qn = fmul fast <4 x float> %i.qi, %i.qm
  %i.qo = fadd fast <4 x float> %i.qn, splat (float 1.000000e+00)
  %i.qp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.qo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge791
  %i.qq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.oo, <4 x float> splat (float f0x42B0C0A5))
  %i.qr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qs = fmul fast <4 x float> %i.qr, splat (float f0x3FB8AA3B)
  %i.qt = fadd fast <4 x float> %i.qs, splat (float 5.000000e-01) ; 2 uses
  %i.qu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qt)
  %i.qv = sitofp fast <4 x i32> %i.qu to <4 x float> ; 2 uses
  %i.qw = fcmp fast olt <4 x float> %i.qt, %i.qv
  %i.qx = select <4 x i1> %i.qw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qy = fsub fast <4 x float> %i.qv, %i.qx      ; 2 uses
  %i.qz = fmul fast <4 x float> %i.qy, splat (float f0x3F317218)
  %i.ra = fsub fast <4 x float> %i.qr, %i.qz      ; 8 uses
  %i.rb = fmul fast <4 x float> %i.ra, %i.ra
  %i.rc = fmul fast <4 x float> %i.ra, splat (float f0x39506967)
  %i.rd = fadd fast <4 x float> %i.rc, splat (float f0x3AB743CE)
  %i.re = fmul fast <4 x float> %i.rd, %i.ra
  %i.rf = fadd fast <4 x float> %i.re, splat (float f0x3C088908)
  %i.rg = fmul fast <4 x float> %i.rf, %i.ra
  %i.rh = fadd fast <4 x float> %i.rg, splat (float f0x3D2AA9C1)
  %i.ri = fmul fast <4 x float> %i.rh, %i.ra
  %i.rj = fadd fast <4 x float> %i.ri, splat (float f0x3E2AAAAA)
  %i.rk = fmul fast <4 x float> %i.rj, %i.ra
  %i.rl = fadd fast <4 x float> %i.rk, splat (float 5.000000e-01)
  %i.rm = fmul fast <4 x float> %i.rb, %i.rl
  %i.rn = fadd fast <4 x float> %i.ra, splat (float 1.000000e+00)
  %i.ro = fadd fast <4 x float> %i.rn, %i.rm
  %i.rp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qy)
  %i.rq = shl <4 x i32> %i.rp, splat (i32 23)
  %i.rr = add <4 x i32> %i.rq, splat (i32 1065353216)
  %i.rs = bitcast <4 x i32> %i.rr to <4 x float>
  %i.rt = fmul fast <4 x float> %i.ro, %i.rs
  %i.ru = fadd fast <4 x float> %i.rt, splat (float 1.000000e+00) ; 2 uses
  %i.rv = fcmp fast ole <4 x float> %i.ru, zeroinitializer
  %i.rw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ru, <4 x float> splat (float f0x00800000))
  %i.rx = bitcast <4 x float> %i.rw to <4 x i32>  ; 2 uses
  %i.ry = lshr <4 x i32> %i.rx, splat (i32 23)
  %i.rz = and <4 x i32> %i.rx, splat (i32 -2139095041)
  %i.sa = or disjoint <4 x i32> %i.rz, splat (i32 1056964608)
  %i.sb = bitcast <4 x i32> %i.sa to <4 x float>  ; 3 uses
  %i.sc = add nsw <4 x i32> %i.ry, splat (i32 -127)
  %i.sd = sitofp fast <4 x i32> %i.sc to <4 x float> ; 2 uses
  %i.se = fadd fast <4 x float> %i.sd, splat (float 1.000000e+00)
  %i.sf = fcmp fast olt <4 x float> %i.sb, splat (float f0x3F3504F3) ; 2 uses
  %i.sg = select <4 x i1> %i.sf, <4 x float> %i.sb, <4 x float> zeroinitializer
  %i.sh = fadd fast <4 x float> %i.sb, splat (float -1.000000e+00)
  %i.si = select fast <4 x i1> %i.sf, <4 x float> %i.sd, <4 x float> %i.se
  %i.sj = fadd fast <4 x float> %i.sh, %i.sg      ; 12 uses
  %i.sk = fmul fast <4 x float> %i.sj, %i.sj
  %i.sl = fmul fast <4 x float> %i.sj, splat (float f0x3D9021BB)
  %i.sm = fadd fast <4 x float> %i.sl, splat (float f0xBDEBD1B8)
  %i.sn = fmul fast <4 x float> %i.sm, %i.sj
  %i.so = fadd fast <4 x float> %i.sn, splat (float f0x3DEF251A)
  %i.sp = fmul fast <4 x float> %i.so, %i.sj
  %i.sq = fadd fast <4 x float> %i.sp, splat (float f0xBDFE5D4F)
  %i.sr = fmul fast <4 x float> %i.sq, %i.sj
  %i.ss = fadd fast <4 x float> %i.sr, splat (float f0x3E11E9BF)
  %i.st = fmul fast <4 x float> %i.ss, %i.sj
  %i.su = fadd fast <4 x float> %i.st, splat (float f0xBE2AAE50)
  %i.sv = fmul fast <4 x float> %i.su, %i.sj
  %i.sw = fadd fast <4 x float> %i.sv, splat (float f0x3E4CCEAC)
  %i.sx = fmul fast <4 x float> %i.sw, %i.sj
  %i.sy = fadd fast <4 x float> %i.sx, splat (float f0xBE7FFFFC)
  %i.sz = fmul fast <4 x float> %i.sy, %i.sj
  %i.ta = fadd fast <4 x float> %i.sz, splat (float f0x3EAAAAAA)
  %i.tb = fmul fast <4 x float> %i.ta, %i.sj
  %reass.mul = fmul fast <4 x float> %i.si, splat (float f0x3F317218)
  %reass.add661 = fadd fast <4 x float> %i.tb, splat (float -5.000000e-01)
  %reass.mul662 = fmul fast <4 x float> %i.sk, %reass.add661
  %i.tc = fadd fast <4 x float> %reass.mul, %i.sj
  %i.td = fadd fast <4 x float> %i.tc, %reass.mul662
  %.neg = fmul fast <4 x float> %i.td, splat (float -2.000000e+00)
  %i.te = select fast <4 x i1> %i.rv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.tf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.te, <4 x float> splat (float f0x42B0C0A5))
  %i.tg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.tf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.th = fmul fast <4 x float> %i.tg, splat (float f0x3FB8AA3B)
  %i.ti = fadd fast <4 x float> %i.th, splat (float 5.000000e-01) ; 2 uses
  %i.tj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ti)
  %i.tk = sitofp fast <4 x i32> %i.tj to <4 x float> ; 2 uses
  %i.tl = fcmp fast olt <4 x float> %i.ti, %i.tk
  %i.tm = select <4 x i1> %i.tl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.tn = fsub fast <4 x float> %i.tk, %i.tm      ; 2 uses
  %i.to = fmul fast <4 x float> %i.tn, splat (float f0x3F317218)
  %i.tp = fsub fast <4 x float> %i.tg, %i.to      ; 8 uses
  %i.tq = fmul fast <4 x float> %i.tp, %i.tp
  %i.tr = fmul fast <4 x float> %i.tp, splat (float f0x39506967)
  %i.ts = fadd fast <4 x float> %i.tr, splat (float f0x3AB743CE)
  %i.tt = fmul fast <4 x float> %i.ts, %i.tp
  %i.tu = fadd fast <4 x float> %i.tt, splat (float f0x3C088908)
  %i.tv = fmul fast <4 x float> %i.tu, %i.tp
end_hunk_2
