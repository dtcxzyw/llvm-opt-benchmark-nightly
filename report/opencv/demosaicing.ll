Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/demosaicing?download=true
inline.NumInlined: 241
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv11demosaicingERKNS_11_InputArrayERKNS_12_OutputArrayEii:bb.a
  %i.sr = select i1 %i.sq, i32 0, i32 2
  %i.ss = icmp ne i32 %2, 62
  %i.st = icmp ne i32 %2, 64
  %i.su = and i1 %i.ss, %i.st
  %i.sv = add i32 %i.rs, -2                       ; 5 uses
  %i.sw = icmp sgt i32 %i.rs, 2
  %i.sx = xor i64 %i.qy, -1
  %sext584.i = shl i64 %i.sx, 32
  %i.sy = ashr exact i64 %sext584.i, 32           ; 6 uses
  %i.sz = shl i64 %i.qy, 32                       ; 8 uses
  %sext585.i = add i64 %i.sz, -4294967296
  %i.ta = ashr exact i64 %sext585.i, 32           ; 6 uses
  %.neg.i = mul i64 %i.qy, -4294967296
  %i.tb = ashr exact i64 %.neg.i, 32              ; 2 uses
  %i.tc = ashr exact i64 %i.sz, 32                ; 8 uses
  %sext588.i = sub i64 4294967296, %i.sz
  %i.td = ashr exact i64 %sext588.i, 32           ; 6 uses
  %sext589.i = add i64 %i.sz, 4294967296
  %i.te = ashr exact i64 %sext589.i, 32           ; 6 uses
  %sext590.i = shl nuw i64 %.sroa.0.0.insert.ext.i620.i, 32 ; 3 uses
  %i.tf = sext <4 x i32> %i.sb to <4 x i64>       ; 5 uses
  %i.tg = extractelement <4 x i64> %i.tf, i64 0   ; 6 uses
  %i.th = sext i32 %i.sc to i64                   ; 5 uses
  %i.ti = sext i32 %i.sd to i64                   ; 5 uses
  %i.tj = sext i32 %i.se to i64                   ; 7 uses
  %i.tk = icmp sgt i32 %i.rs, 4
  %sext546.i = add i64 %sext590.i, -4294967296
  %i.tl = ashr exact i64 %sext546.i, 31
  %sext548.i = add i64 %sext590.i, 4294967296
  %i.tm = ashr exact i64 %sext548.i, 31
  %i.tn = sub nsw i32 0, %i.qz                    ; 2 uses
  %i.to = shl nsw i32 %i.tn, 1
  %i.tp = sext i32 %i.to to i64                   ; 4 uses
  %i.tq = sext i32 %i.tn to i64                   ; 4 uses
  %i.tr = shl nsw i32 %i.qz, 1
  %i.ts = sext i32 %i.tr to i64                   ; 6 uses
  %sext558.i = mul i64 %i.qy, -8589934592
  %i.tt = ashr exact i64 %sext558.i, 32           ; 2 uses
  %i.tu = extractelement <4 x i32> %i.sb, i64 0   ; 2 uses
  %i.tv = or disjoint i32 %i.tu, 1
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  %i.tx = add nsw i32 %i.tu, -1
  %i.ty = sext i32 %i.tx to i64                   ; 2 uses
  %i.tz = add nsw i32 %i.sc, -1
  %i.ua = sext i32 %i.tz to i64                   ; 2 uses
  %i.ub = add nuw nsw i32 %i.sc, 1
  %i.uc = sext i32 %i.ub to i64                   ; 2 uses
  %sext565.i = sub i64 -8589934592, %i.sz
  %i.ud = ashr exact i64 %sext565.i, 32           ; 2 uses
  %sext566.i = add i64 %i.sz, -8589934592
  %i.ue = ashr exact i64 %sext566.i, 32           ; 2 uses
  %sext567.i = sub i64 8589934592, %i.sz
  %i.uf = ashr exact i64 %sext567.i, 32           ; 2 uses
  %sext568.i = add i64 %i.sz, 8589934592
  %i.ug = ashr exact i64 %sext568.i, 32           ; 2 uses
  %i.uh = sext i32 %i.rs to i64                   ; 7 uses
  %i.ui = sext i32 %i.sv to i64                   ; 6 uses
  %i.uj = shl i64 %i.rd, 32
  %i.uk = ashr exact i64 %i.uj, 32
  %wide.trip.count.i232 = zext nneg i32 %i.so to i64
  %.idx = shl nsw i64 %i.uh, 2
  %.idx351 = mul nsw i64 %i.uh, 6
  %.idx352 = shl nsw i64 %i.uh, 3
  %.idx353 = mul nsw i64 %i.uh, 10
  %.idx354 = mul nsw i64 %i.uh, 12
  %i.ul = ashr exact i64 %sext590.i, 31           ; 4 uses
  %i.um = insertelement <6 x i64> <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 0>, i64 %i.tj, i64 4
  %i.un = shufflevector <4 x i64> %i.tf, <4 x i64> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %i.uo = shufflevector <6 x i64> %i.un, <6 x i64> %i.um, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 11>
  %i.up = shl nsw <6 x i64> %i.uo, <i64 1, i64 1, i64 1, i64 1, i64 1, i64 0> ; 7 uses
  %i.uq = shufflevector <6 x i64> %i.up, <6 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3, i32 4, i32 2, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5>
  %i.ur = shufflevector <6 x i64> %i.up, <6 x i64> poison, <5 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 poison>
  %i.us = insertelement <5 x i64> %i.ur, i64 %i.ul, i64 0
  %i.ut = extractelement <6 x i64> %i.up, i64 1
  %i.uu = extractelement <6 x i64> %i.up, i64 2
  %i.uv = extractelement <6 x i64> %i.up, i64 3
  %i.uw = extractelement <6 x i64> %i.up, i64 4
  %i.ux = shufflevector <5 x i64> %i.us, <5 x i64> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %i.uy = zext i32 %i.sv to i64                   ; 2 uses
  %min.iters.check687 = icmp ult i32 %i.sv, 8
  %i.uz = and i64 %i.tg, 9223372036854775800
  %diff.check690 = icmp eq i64 %i.uz, 0
  %diff.check692 = icmp ult i64 %i.ut, 16
  %i.va = add nsw i64 %i.uu, -1
  %diff.check694 = icmp ult i64 %i.va, 15
  %diff.check696 = icmp ult i64 %i.uv, 16
  %i.vb = add nsw i64 %i.uw, -1
  %diff.check698 = icmp ult i64 %i.vb, 15
  %i.vc = shufflevector <6 x i64> %i.ux, <6 x i64> %i.up, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 9, i32 0>
  %i.vd = sub nsw <16 x i64> %i.vc, %i.uq         ; 2 uses
  %i.ve = icmp ugt <16 x i64> %i.vd, <i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 16>
  %i.vf = icmp ult <16 x i64> %i.vd, <i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 16>
  %i.vg = shufflevector <16 x i1> %i.ve, <16 x i1> %i.vf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 31>
  %i.vh = bitcast <16 x i1> %i.vg to i16
  %i.vi = icmp ne i16 %i.vh, 0
  %op.rdx = or i1 %i.vi, %diff.check690
  %op.rdx869 = or i1 %diff.check692, %diff.check694
  %op.rdx870 = or i1 %diff.check696, %diff.check698
  %op.rdx871 = or i1 %op.rdx, %op.rdx869
  %op.rdx872 = or i1 %op.rdx871, %op.rdx870
  %n.vec731 = and i64 %i.uy, 4294967288           ; 5 uses
  %i.vj = shl nuw nsw i64 %n.vec731, 1
  %i.vk = trunc nuw i64 %n.vec731 to i32
  %i.vl = or disjoint i32 %i.vk, 1
  %i.vm = extractelement <4 x i64> %i.tf, i64 2
  %cmp.n765 = icmp eq i64 %n.vec731, %i.uy
  %i.vn = extractelement <4 x i64> %i.tf, i64 2
  %i.vo = extractelement <4 x i64> %i.tf, i64 2   ; 3 uses
  br label %bb.fd

._crit_edge870.loopexit.i:                        ; preds = %._crit_edge865.i
  %.pre880.i = load ptr, ptr %26, align 8, !tbaa !113
  br label %._crit_edge870.i

._crit_edge870.i:                                 ; preds = %._crit_edge870.loopexit.i, %_ZN2cv10AutoBufferItLm520EEC2Em.exit.i
  %i.vp = phi ptr [ %.pre880.i, %._crit_edge870.loopexit.i ], [ %i.sm, %_ZN2cv10AutoBufferItLm520EEC2Em.exit.i ] ; 3 uses
  %.not.i.i624.i = icmp eq ptr %i.vp, %i.sh
  %i.vq = icmp eq ptr %i.vp, null
  %or.cond.i.i = or i1 %.not.i.i624.i, %i.vq
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferItLm520EED2Ev.exit.i, label %bb.ez

bb.ez:                                            ; preds = %._crit_edge870.i
  call void @_ZdaPv(ptr noundef nonnull %i.vp) #18
  br label %_ZN2cv10AutoBufferItLm520EED2Ev.exit.i

_ZN2cv10AutoBufferItLm520EED2Ev.exit.i:           ; preds = %bb.ez, %._crit_edge870.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %_ZN2cvL10Bayer2RGB_ItNS_26SIMDBayerStubInterpolator_ItEEEEvRKNS_3MatERS3_i.exit

bb.fa:                                            ; preds = %bb.ep
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %.body.i

bb.fb:                                            ; preds = %bb.er
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.fc:                                            ; preds = %bb.ey
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  br label %.body.i

bb.fd:                                            ; preds = %._crit_edge865.i, %.lr.ph869.i
  %indvars.iv876.i = phi i64 [ 2, %.lr.ph869.i ], [ %indvars.iv.next877.i, %._crit_edge865.i ] ; 6 uses
  %.0527.in867.i = phi i1 [ %i.su, %.lr.ph869.i ], [ %i.ayk, %._crit_edge865.i ] ; 2 uses
  %.0528866.i = phi i32 [ %i.sr, %.lr.ph869.i ], [ %.pre-phi.i, %._crit_edge865.i ] ; 3 uses
  %i.vu = icmp eq i64 %indvars.iv876.i, 2
  %i.vv = select i1 %i.vu, i64 -1, i64 1
  br label %.preheader.i233

bb.fe:                                            ; preds = %._crit_edge.i
  br i1 %i.tk, label %.lr.ph864.i, label %.._crit_edge865_crit_edge.i

.._crit_edge865_crit_edge.i:                      ; preds = %bb.fe
  %.pre.i = xor i32 %.0528866.i, 2
  br label %._crit_edge865.i

.lr.ph864.i:                                      ; preds = %bb.fe
  %i.vw = add nsw i64 %indvars.iv876.i, -2        ; 2 uses
  %i.vx = mul nsw i64 %i.vw, %i.uk
  %i.vy = getelementptr inbounds i8, ptr %i.rb, i64 %i.vx
  %i.vz = mul nsw i64 %indvars.iv876.i, %i.tc
  %i.wa = getelementptr inbounds i8, ptr %i.qw, i64 %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 2
  %i.wc = trunc i64 %indvars.iv876.i to i32       ; 2 uses
  %i.wd = urem i32 %i.wc, 3
  %i.we = mul nuw nsw i32 %i.wd, %i.sf
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.sm, i64 %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  %i.wi = add i32 %i.wc, -1
  %.urem.i.a = urem i32 %i.wi, 3
  %i.wj = mul nuw nsw i32 %.urem.i.a, %i.sf
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %i.sm, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.wn = trunc nuw nsw i64 %i.vw to i32
  %.urem875.i = urem i32 %i.wn, 3
  %i.wo = mul nuw nsw i32 %.urem875.i, %i.sf
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.sm, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  %i.ws = zext nneg i32 %.0528866.i to i64
  %i.wt = xor i32 %.0528866.i, 2                  ; 2 uses
  %i.wu = zext nneg i32 %i.wt to i64
  br label %bb.ff

.preheader.i233:                                  ; preds = %._crit_edge.i, %bb.fd
  %indvars.iv.i234 = phi i64 [ %i.vv, %bb.fd ], [ %indvars.iv.next.i235, %._crit_edge.i ] ; 2 uses
  %i.wv = add nsw i64 %indvars.iv.i234, %indvars.iv876.i ; 2 uses
  %i.ww = trunc i64 %i.wv to i32
  %i.wx = add i32 %i.ww, -1
  %73 = srem i32 %i.wx, 3
  %i.wy = mul nsw i32 %73, %i.sf
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [2 x i8], ptr %i.sm, i64 %i.wz ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 2 ; 10 uses
  %i.xc = getelementptr inbounds [2 x i8], ptr %i.xb, i64 %i.ui ; 2 uses
  store i16 0, ptr %i.xc, align 2, !tbaa !48
  store i16 0, ptr %i.xa, align 2, !tbaa !48
  %i.xd = getelementptr [2 x i8], ptr %i.xc, i64 %i.uh
  store i16 0, ptr %i.xd, align 2, !tbaa !48
  %i.xe = getelementptr [2 x i8], ptr %i.xb, i64 %i.uh
  %i.xf = getelementptr i8, ptr %i.xe, i64 -2
  store i16 0, ptr %i.xf, align 2, !tbaa !48
  %i.xg = getelementptr i8, ptr %i.xb, i64 %.idx  ; 2 uses
  %i.xh = getelementptr [2 x i8], ptr %i.xg, i64 %i.ui
  store i16 0, ptr %i.xh, align 2, !tbaa !48
  %i.xi = getelementptr i8, ptr %i.xg, i64 -2
  store i16 0, ptr %i.xi, align 2, !tbaa !48
  %i.xj = getelementptr i8, ptr %i.xb, i64 %.idx351 ; 2 uses
  %i.xk = getelementptr [2 x i8], ptr %i.xj, i64 %i.ui
  store i16 0, ptr %i.xk, align 2, !tbaa !48
  %i.xl = getelementptr i8, ptr %i.xj, i64 -2
  store i16 0, ptr %i.xl, align 2, !tbaa !48
  %i.xm = getelementptr i8, ptr %i.xb, i64 %.idx352 ; 2 uses
  %i.xn = getelementptr [2 x i8], ptr %i.xm, i64 %i.ui
  store i16 0, ptr %i.xn, align 2, !tbaa !48
  %i.xo = getelementptr i8, ptr %i.xm, i64 -2
  store i16 0, ptr %i.xo, align 2, !tbaa !48
  %i.xp = getelementptr i8, ptr %i.xb, i64 %.idx353 ; 2 uses
  %i.xq = getelementptr [2 x i8], ptr %i.xp, i64 %i.ui
  store i16 0, ptr %i.xq, align 2, !tbaa !48
  %i.xr = getelementptr i8, ptr %i.xp, i64 -2
  store i16 0, ptr %i.xr, align 2, !tbaa !48
  %i.xs = getelementptr i8, ptr %i.xb, i64 %.idx354 ; 2 uses
  %i.xt = getelementptr [2 x i8], ptr %i.xs, i64 %i.ui
  store i16 0, ptr %i.xt, align 2, !tbaa !48
  %i.xu = getelementptr i8, ptr %i.xs, i64 -2
  store i16 0, ptr %i.xu, align 2, !tbaa !48
  br i1 %i.sw, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i233
  %i.xv = mul nsw i64 %i.wv, %i.tc
  %i.xw = getelementptr inbounds i8, ptr %i.qw, i64 %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 1 ; 3 uses
  %brmerge = select i1 %min.iters.check687, i1 true, i1 %op.rdx872
  br i1 %brmerge, label %.lr.ph.i236.preheader, label %vector.ph730

vector.ph730:                                     ; preds = %.lr.ph.preheader.i
  %i.xy = getelementptr i8, ptr %i.xb, i64 %i.vj
  %i.xz = getelementptr i8, ptr %i.xx, i64 %n.vec731
  br label %vector.body732

vector.body732:                                   ; preds = %vector.body732, %vector.ph730
  %index733 = phi i64 [ 0, %vector.ph730 ], [ %index.next763, %vector.body732 ] ; 3 uses
  %i.ya = shl i64 %index733, 1
  %next.gep = getelementptr i8, ptr %i.xb, i64 %i.ya ; 7 uses
  %next.gep734 = getelementptr i8, ptr %i.xx, i64 %index733 ; 8 uses
  %i.yb = getelementptr inbounds i8, ptr %next.gep734, i64 %i.sy ; 3 uses
  %wide.load735 = load <8 x i8>, ptr %i.yb, align 1, !tbaa !18
  %i.yc = zext <8 x i8> %wide.load735 to <8 x i16>
  %i.yd = getelementptr inbounds i8, ptr %next.gep734, i64 %i.ta ; 3 uses
  %wide.load736 = load <8 x i8>, ptr %i.yd, align 1, !tbaa !18
  %i.ye = zext <8 x i8> %wide.load736 to <8 x i16>
  %i.yf = sub nsw <8 x i16> %i.yc, %i.ye
  %i.yg = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yf, i1 true)
  %i.yh = getelementptr inbounds i8, ptr %next.gep734, i64 %i.tb ; 4 uses
  %wide.load737 = load <8 x i8>, ptr %i.yh, align 1, !tbaa !18
  %i.yi = zext <8 x i8> %wide.load737 to <8 x i16>
  %i.yj = getelementptr inbounds i8, ptr %next.gep734, i64 %i.tc ; 4 uses
  %wide.load738 = load <8 x i8>, ptr %i.yj, align 1, !tbaa !18
  %i.yk = zext <8 x i8> %wide.load738 to <8 x i16>
  %i.yl = sub nsw <8 x i16> %i.yi, %i.yk
  %i.ym = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yl, i1 true)
  %i.yn = shl nuw nsw <8 x i16> %i.ym, splat (i16 1)
  %i.yo = add nuw nsw <8 x i16> %i.yn, %i.yg
  %i.yp = getelementptr inbounds i8, ptr %next.gep734, i64 %i.td ; 3 uses
  %wide.load739 = load <8 x i8>, ptr %i.yp, align 1, !tbaa !18
  %i.yq = zext <8 x i8> %wide.load739 to <8 x i16>
  %i.yr = getelementptr inbounds i8, ptr %next.gep734, i64 %i.te ; 3 uses
  %wide.load740 = load <8 x i8>, ptr %i.yr, align 1, !tbaa !18
  %i.ys = zext <8 x i8> %wide.load740 to <8 x i16>
  %i.yt = sub nsw <8 x i16> %i.yq, %i.ys
  %i.yu = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yt, i1 true)
  %i.yv = add nuw nsw <8 x i16> %i.yo, %i.yu
  store <8 x i16> %i.yv, ptr %next.gep, align 2, !tbaa !48
  %wide.load741 = load <8 x i8>, ptr %i.yb, align 1, !tbaa !18
  %i.yw = zext <8 x i8> %wide.load741 to <8 x i16>
  %wide.load742 = load <8 x i8>, ptr %i.yp, align 1, !tbaa !18
  %i.yx = zext <8 x i8> %wide.load742 to <8 x i16>
  %i.yy = sub nsw <8 x i16> %i.yw, %i.yx
  %i.yz = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yy, i1 true)
  %i.za = getelementptr inbounds i8, ptr %next.gep734, i64 -1 ; 4 uses
  %wide.load743 = load <8 x i8>, ptr %i.za, align 1, !tbaa !18
  %i.zb = zext <8 x i8> %wide.load743 to <8 x i16>
  %i.zc = getelementptr inbounds nuw i8, ptr %next.gep734, i64 1 ; 4 uses
  %wide.load744 = load <8 x i8>, ptr %i.zc, align 1, !tbaa !18
  %i.zd = zext <8 x i8> %wide.load744 to <8 x i16>
  %i.ze = sub nsw <8 x i16> %i.zb, %i.zd
  %i.zf = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ze, i1 true)
  %i.zg = shl nuw nsw <8 x i16> %i.zf, splat (i16 1)
  %i.zh = add nuw nsw <8 x i16> %i.zg, %i.yz
  %wide.load745 = load <8 x i8>, ptr %i.yd, align 1, !tbaa !18
  %i.zi = zext <8 x i8> %wide.load745 to <8 x i16>
  %wide.load746 = load <8 x i8>, ptr %i.yr, align 1, !tbaa !18
  %i.zj = zext <8 x i8> %wide.load746 to <8 x i16>
  %i.zk = sub nsw <8 x i16> %i.zi, %i.zj
  %i.zl = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zk, i1 true)
  %i.zm = add nuw nsw <8 x i16> %i.zh, %i.zl
  %i.zn = getelementptr inbounds nuw i8, ptr %next.gep, i64 %i.ul
  store <8 x i16> %i.zm, ptr %i.zn, align 2, !tbaa !48
  %wide.load747 = load <8 x i8>, ptr %i.yp, align 1, !tbaa !18
  %i.zo = zext <8 x i8> %wide.load747 to <8 x i16>
  %wide.load748 = load <8 x i8>, ptr %i.yd, align 1, !tbaa !18
  %i.zp = zext <8 x i8> %wide.load748 to <8 x i16>
  %i.zq = sub nsw <8 x i16> %i.zo, %i.zp
  %i.zr = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zq, i1 true)
  %i.zs = shl nuw nsw <8 x i16> %i.zr, splat (i16 1) ; 2 uses
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.tg
  store <8 x i16> %i.zs, ptr %i.zt, align 2, !tbaa !48
  %wide.load749 = load <8 x i8>, ptr %i.yb, align 1, !tbaa !18
  %i.zu = zext <8 x i8> %wide.load749 to <8 x i16>
  %wide.load750 = load <8 x i8>, ptr %i.yr, align 1, !tbaa !18
  %i.zv = zext <8 x i8> %wide.load750 to <8 x i16>
  %i.zw = sub nsw <8 x i16> %i.zu, %i.zv
  %i.zx = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zw, i1 true)
  %i.zy = shl nuw nsw <8 x i16> %i.zx, splat (i16 1) ; 2 uses
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.th
  store <8 x i16> %i.zy, ptr %i.zz, align 2, !tbaa !48
  %wide.load751 = load <8 x i8>, ptr %i.yh, align 1, !tbaa !18
  %i.aaa = zext <8 x i8> %wide.load751 to <8 x i16>
  %wide.load752 = load <8 x i8>, ptr %i.za, align 1, !tbaa !18
  %i.aab = zext <8 x i8> %wide.load752 to <8 x i16>
  %i.aac = sub nsw <8 x i16> %i.aaa, %i.aab
  %i.aad = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aac, i1 true)
  %i.aae = add nuw nsw <8 x i16> %i.aad, %i.zs
  %wide.load753 = load <8 x i8>, ptr %i.yj, align 1, !tbaa !18
  %i.aaf = zext <8 x i8> %wide.load753 to <8 x i16>
  %wide.load754 = load <8 x i8>, ptr %i.zc, align 1, !tbaa !18
  %i.aag = zext <8 x i8> %wide.load754 to <8 x i16>
  %i.aah = sub nsw <8 x i16> %i.aaf, %i.aag
  %i.aai = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aah, i1 true)
  %i.aaj = add nuw nsw <8 x i16> %i.aae, %i.aai
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.vm
  store <8 x i16> %i.aaj, ptr %i.aak, align 2, !tbaa !48
  %wide.load755 = load <8 x i8>, ptr %i.yh, align 1, !tbaa !18
  %i.aal = zext <8 x i8> %wide.load755 to <8 x i16>
  %wide.load756 = load <8 x i8>, ptr %i.zc, align 1, !tbaa !18
  %i.aam = zext <8 x i8> %wide.load756 to <8 x i16>
  %i.aan = sub nsw <8 x i16> %i.aal, %i.aam
  %i.aao = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aan, i1 true)
  %i.aap = add nuw nsw <8 x i16> %i.aao, %i.zy
  %wide.load757 = load <8 x i8>, ptr %i.yj, align 1, !tbaa !18
  %i.aaq = zext <8 x i8> %wide.load757 to <8 x i16>
  %wide.load758 = load <8 x i8>, ptr %i.za, align 1, !tbaa !18
  %i.aar = zext <8 x i8> %wide.load758 to <8 x i16>
  %i.aas = sub nsw <8 x i16> %i.aaq, %i.aar
  %i.aat = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aas, i1 true)
  %i.aau = add nuw nsw <8 x i16> %i.aap, %i.aat
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.ti
  store <8 x i16> %i.aau, ptr %i.aav, align 2, !tbaa !48
  %wide.load759 = load <8 x i8>, ptr %i.yh, align 1, !tbaa !18
  %i.aaw = zext <8 x i8> %wide.load759 to <8 x i16>
  %wide.load760 = load <8 x i8>, ptr %i.za, align 1, !tbaa !18
  %i.aax = zext <8 x i8> %wide.load760 to <8 x i16>
  %i.aay = add nuw nsw <8 x i16> %i.aax, %i.aaw
  %wide.load761 = load <8 x i8>, ptr %i.zc, align 1, !tbaa !18
  %i.aaz = zext <8 x i8> %wide.load761 to <8 x i16>
  %i.aba = add nuw nsw <8 x i16> %i.aay, %i.aaz
  %wide.load762 = load <8 x i8>, ptr %i.yj, align 1, !tbaa !18
  %i.abb = zext <8 x i8> %wide.load762 to <8 x i16>
  %i.abc = add nuw nsw <8 x i16> %i.aba, %i.abb
  %i.abd = lshr <8 x i16> %i.abc, splat (i16 1)
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.tj
  store <8 x i16> %i.abd, ptr %i.abe, align 2, !tbaa !48
  %index.next763 = add nuw i64 %index733, 8       ; 2 uses
  %i.abf = icmp eq i64 %index.next763, %n.vec731
  br i1 %i.abf, label %middle.block764, label %vector.body732, !llvm.loop !84

middle.block764:                                  ; preds = %vector.body732
  br i1 %cmp.n765, label %._crit_edge.i, label %.lr.ph.i236.preheader

.lr.ph.i236.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block764
  %.0515854.i.ph = phi ptr [ %i.xy, %middle.block764 ], [ %i.xb, %.lr.ph.preheader.i ]
  %.0517853.i.ph = phi ptr [ %i.xz, %middle.block764 ], [ %i.xx, %.lr.ph.preheader.i ]
  %.1524852.i.ph = phi i32 [ %i.vl, %middle.block764 ], [ 1, %.lr.ph.preheader.i ]
  br label %.lr.ph.i236

.lr.ph.i236:                                      ; preds = %.lr.ph.i236.preheader, %.lr.ph.i236
  %.0515854.i = phi ptr [ %i.afn, %.lr.ph.i236 ], [ %.0515854.i.ph, %.lr.ph.i236.preheader ] ; 8 uses
  %.0517853.i = phi ptr [ %i.acq, %.lr.ph.i236 ], [ %.0517853.i.ph, %.lr.ph.i236.preheader ] ; 8 uses
  %.1524852.i = phi i32 [ %i.afm, %.lr.ph.i236 ], [ %.1524852.i.ph, %.lr.ph.i236.preheader ] ; 2 uses
  %i.abg = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.sy ; 3 uses
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !18
  %i.abi = zext i8 %i.abh to i16
  %i.abj = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.ta ; 3 uses
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !18
  %i.abl = zext i8 %i.abk to i16
  %i.abm = sub nsw i16 %i.abi, %i.abl
  %i.abn = call i16 @llvm.abs.i16(i16 %i.abm, i1 true)
  %i.abo = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.tb ; 4 uses
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !18
  %i.abq = zext i8 %i.abp to i16
end_hunk_0
