Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgwarp?download=true
inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cvL13remapBilinearINS_4CastIffEENS_10RemapNoVecILb0EEEfLb0EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a

._crit_edge:                                      ; preds = %.loopexit770
  %indvars.iv.next944 = add nuw nsw i64 %indvars.iv943, 1 ; 2 uses
  %exitcond947.not = icmp eq i64 %indvars.iv.next944, %wide.trip.count946
  br i1 %exitcond947.not, label %._crit_edge847.split, label %.lr.ph844, !llvm.loop !433

bb.u:                                             ; preds = %.lr.ph844, %.loopexit770
  %.0585843 = phi ptr [ %i.ew, %.lr.ph844 ], [ %.12, %.loopexit770 ] ; 38 uses
  %.0589842 = phi i32 [ 0, %.lr.ph844 ], [ %.1590, %.loopexit770 ] ; 21 uses
  %.0591841 = phi i8 [ 0, %.lr.ph844 ], [ %.1592, %.loopexit770 ] ; 4 uses
  %.0593840 = phi i32 [ 0, %.lr.ph844 ], [ %i.abw, %.loopexit770 ] ; 39 uses
  %.05858431070 = ptrtoaddr ptr %.0585843 to i64
  %i.ff = icmp slt i32 %.0593840, %i.au
  br i1 %i.ff, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fg = shl nsw i32 %.0593840, 1
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fh ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !56
  %i.fk = sext i16 %i.fj to i32
  %i.fl = icmp ugt i32 %.sroa.speculated676, %i.fk
  br i1 %i.fl, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.fm = getelementptr i8, ptr %i.fi, i64 2
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !56
  %i.fo = sext i16 %i.fn to i32
  %i.fp = icmp ugt i32 %.sroa.speculated, %i.fo
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.fq = trunc nuw i8 %.0591841 to i1
  %i.fr = xor i1 %i.fq, true
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.fs = phi i1 [ %i.fr, %bb.x ], [ %i.fp, %bb.w ] ; 2 uses
  %i.ft = zext i1 %i.fs to i8                     ; 4 uses
  %i.fu = icmp eq i8 %.0591841, %i.ft
  br i1 %i.fu, label %.loopexit770, label %bb.z

.thread:                                          ; preds = %bb.v
  %i.fv = icmp eq i8 %.0591841, 0
  br i1 %i.fv, label %.loopexit770, label %.thread716

bb.z:                                             ; preds = %bb.y
  br i1 %i.fs, label %bb.aa, label %.thread716

.thread716:                                       ; preds = %.thread, %bb.z
  %i.fw = icmp slt i32 %.0589842, %.0593840       ; 5 uses
  switch i8 %trunc, label %.preheader775 [
    i8 1, label %.preheader777
    i8 2, label %.preheader779
    i8 3, label %.preheader781
    i8 4, label %.preheader783
  ]

.preheader783:                                    ; preds = %.thread716
  br i1 %i.fw, label %.lr.ph.preheader, label %.loopexit770

.lr.ph.preheader:                                 ; preds = %.preheader783
  %i.fx = sext i32 %.0589842 to i64
  %wide.trip.count877 = sext i32 %.0593840 to i64
  br label %.lr.ph

.preheader781:                                    ; preds = %.thread716
  br i1 %i.fw, label %.lr.ph792.preheader, label %.loopexit770

.lr.ph792.preheader:                              ; preds = %.preheader781
  %i.fy = sext i32 %.0589842 to i64
  %wide.trip.count882 = sext i32 %.0593840 to i64
  br label %.lr.ph792

.preheader779:                                    ; preds = %.thread716
  br i1 %i.fw, label %.lr.ph797.preheader, label %.loopexit770

.lr.ph797.preheader:                              ; preds = %.preheader779
  %i.fz = sext i32 %.0589842 to i64
  %wide.trip.count887 = sext i32 %.0593840 to i64
  br label %.lr.ph797

.preheader777:                                    ; preds = %.thread716
  br i1 %i.fw, label %.lr.ph802.preheader, label %.loopexit770

.lr.ph802.preheader:                              ; preds = %.preheader777
  %i.ga = sext i32 %.0589842 to i64
  %wide.trip.count892 = sext i32 %.0593840 to i64
  br label %.lr.ph802

.preheader775:                                    ; preds = %.thread716
  br i1 %i.fw, label %.lr.ph808.preheader, label %.loopexit770

.lr.ph808.preheader:                              ; preds = %.preheader775
  %i.gb = sext i32 %.0589842 to i64               ; 2 uses
  %wide.trip.count902 = sext i32 %.0593840 to i64 ; 2 uses
  %scevgep1133 = getelementptr i8, ptr %.0585843, i64 %i.dw
  %i.gc = xor i64 %i.gb, -1
  %i.gd = add nsw i64 %i.gc, %wide.trip.count902
  %i.ge = mul nsw i64 %i.dw, %i.gd
  %scevgep1134 = getelementptr i8, ptr %scevgep1133, i64 %i.ge ; 5 uses
  br label %.lr.ph808

.lr.ph802:                                        ; preds = %.lr.ph802.preheader, %.lr.ph802
  %indvars.iv889 = phi i64 [ %i.ga, %.lr.ph802.preheader ], [ %indvars.iv.next890, %.lr.ph802 ] ; 3 uses
  %.1586801 = phi ptr [ %.0585843, %.lr.ph802.preheader ], [ %i.hk, %.lr.ph802 ] ; 2 uses
  %.idx966 = shl nsw i64 %indvars.iv889, 2
  %i.gf = getelementptr inbounds i8, ptr %i.fa, i64 %.idx966 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !56
  %i.gh = getelementptr i8, ptr %i.gf, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !56
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %indvars.iv889
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !56
  %i.gl = zext i16 %i.gk to i64
  %.idx634 = shl nuw nsw i64 %i.gl, 4
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 %.idx634 ; 4 uses
  %i.gn = sext i16 %i.gi to i64
  %i.go = mul i64 %i.co, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.go
  %i.gq = sext i16 %i.gg to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gq ; 3 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !52
  %i.gt = load float, ptr %i.gm, align 4, !tbaa !52
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !52
  %i.gy = fmul float %i.gv, %i.gx
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gt, float %i.gy)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.co ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !52
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !52
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.hd, float %i.gz)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !52
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !52
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hi, float %i.he)
  store float %i.hj, ptr %.1586801, align 4, !tbaa !52
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.1586801, i64 4 ; 2 uses
  %exitcond893.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count892
  br i1 %exitcond893.not, label %.loopexit770, label %.lr.ph802, !llvm.loop !434

.lr.ph797:                                        ; preds = %.lr.ph797.preheader, %.lr.ph797
  %indvars.iv884 = phi i64 [ %i.fz, %.lr.ph797.preheader ], [ %indvars.iv.next885, %.lr.ph797 ] ; 3 uses
  %.2587796 = phi ptr [ %.0585843, %.lr.ph797.preheader ], [ %i.iq, %.lr.ph797 ] ; 2 uses
  %.idx965 = shl nsw i64 %indvars.iv884, 2
  %i.hl = getelementptr inbounds i8, ptr %i.fa, i64 %.idx965 ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !56
  %i.hn = sext i16 %i.hm to i32
  %i.ho = getelementptr i8, ptr %i.hl, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !56
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %indvars.iv884
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !56
  %i.hs = zext i16 %i.hr to i64
  %.idx633 = shl nuw nsw i64 %i.hs, 4
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 %.idx633
  %i.hu = sext i16 %i.hp to i64
  %i.hv = mul i64 %i.co, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.hv
  %i.hx = shl nsw i32 %i.hn, 1
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hy ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.co ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load <4 x float>, ptr %i.ht, align 4, !tbaa !52 ; 4 uses
  %i.ie = load <2 x float>, ptr %i.hz, align 4, !tbaa !52
  %i.if = load <2 x float>, ptr %i.ia, align 4, !tbaa !52
  %i.ig = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = fmul <2 x float> %i.ig, %i.if
  %i.ii = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.ii, <2 x float> %i.ih)
  %i.ik = load <2 x float>, ptr %i.ib, align 4, !tbaa !52
  %i.il = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = load <2 x float>, ptr %i.ic, align 4, !tbaa !52
  %i.io = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.io, <2 x float> %i.im)
  store <2 x float> %i.ip, ptr %.2587796, align 4, !tbaa !52
  %indvars.iv.next885 = add nsw i64 %indvars.iv884, 1 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.2587796, i64 8 ; 2 uses
  %exitcond888.not = icmp eq i64 %indvars.iv.next885, %wide.trip.count887
  br i1 %exitcond888.not, label %.loopexit770, label %.lr.ph797, !llvm.loop !435

.lr.ph792:                                        ; preds = %.lr.ph792.preheader, %.lr.ph792
  %indvars.iv879 = phi i64 [ %i.fy, %.lr.ph792.preheader ], [ %indvars.iv.next880, %.lr.ph792 ] ; 3 uses
  %.3588791 = phi ptr [ %.0585843, %.lr.ph792.preheader ], [ %i.jx, %.lr.ph792 ] ; 3 uses
  %.idx964 = shl nsw i64 %indvars.iv879, 2
  %i.ir = getelementptr inbounds i8, ptr %i.fa, i64 %.idx964 ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !56
  %i.it = sext i16 %i.is to i64
  %i.iu = getelementptr i8, ptr %i.ir, i64 2
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !56
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %indvars.iv879
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !56
  %i.iy = zext i16 %i.ix to i64
  %.idx631 = shl nuw nsw i64 %i.iy, 4
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 %.idx631
  %i.ja = sext i16 %i.iv to i64
  %i.jb = mul i64 %i.co, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.jb
  %.idx632 = mul nsw i64 %i.it, 12
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 %.idx632 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.co ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !52
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 20
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !52
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !52
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 20
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !52
  %14 = load <4 x float>, ptr %i.iz, align 4, !tbaa !52 ; 8 uses
  %15 = load <2 x float>, ptr %i.jd, align 4, !tbaa !52
  %i.jp = load <2 x float>, ptr %i.je, align 4, !tbaa !52
  %16 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %17 = fmul <2 x float> %16, %i.jp
  %i.jq = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer
  %18 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.jq, <2 x float> %17)
  %19 = load <2 x float>, ptr %i.jf, align 4, !tbaa !52
  %20 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %20, <2 x float> %18)
  %i.js = load <2 x float>, ptr %i.jg, align 4, !tbaa !52
  %21 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.jt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %21, <2 x float> %i.jr)
  %22 = extractelement <4 x float> %14, i64 1
  %23 = fmul float %22, %i.jk
  %24 = extractelement <4 x float> %14, i64 0
  %25 = tail call float @llvm.fmuladd.f32(float %i.ji, float %24, float %23)
  %26 = extractelement <4 x float> %14, i64 2
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jm, float %26, float %25)
  %27 = extractelement <4 x float> %14, i64 3
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.jo, float %27, float %i.ju)
  store <2 x float> %i.jt, ptr %.3588791, align 4, !tbaa !52
  %i.jw = getelementptr inbounds nuw i8, ptr %.3588791, i64 8
  store float %i.jv, ptr %i.jw, align 4, !tbaa !52
  %indvars.iv.next880 = add nsw i64 %indvars.iv879, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.3588791, i64 12 ; 2 uses
  %exitcond883.not = icmp eq i64 %indvars.iv.next880, %wide.trip.count882
  br i1 %exitcond883.not, label %.loopexit770, label %.lr.ph792, !llvm.loop !436

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv874 = phi i64 [ %i.fx, %.lr.ph.preheader ], [ %indvars.iv.next875, %.lr.ph ] ; 3 uses
  %.4788 = phi ptr [ %.0585843, %.lr.ph.preheader ], [ %i.lv, %.lr.ph ] ; 3 uses
  %.idx963 = shl nsw i64 %indvars.iv874, 2
  %i.jy = getelementptr inbounds i8, ptr %i.fa, i64 %.idx963 ; 2 uses
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !56
  %i.ka = sext i16 %i.jz to i32
  %i.kb = getelementptr i8, ptr %i.jy, i64 2
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !56
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %indvars.iv874
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !56
  %i.kf = zext i16 %i.ke to i64
  %.idx630 = shl nuw nsw i64 %i.kf, 4
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 %.idx630 ; 2 uses
  %i.kh = sext i16 %i.kc to i64
  %i.ki = mul i64 %i.co, %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ki
  %i.kk = shl nsw i32 %i.ka, 2
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.kl ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.co ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load <4 x float>, ptr %i.kg, align 4, !tbaa !52 ; 4 uses
  %i.kr = load <2 x float>, ptr %i.km, align 4, !tbaa !52
  %i.ks = load <2 x float>, ptr %i.kn, align 4, !tbaa !52
  %i.kt = shufflevector <4 x float> %i.kq, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ku = fmul <2 x float> %i.kt, %i.ks
  %i.kv = shufflevector <4 x float> %i.kq, <4 x float> poison, <2 x i32> zeroinitializer
  %i.kw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.kv, <2 x float> %i.ku)
  %i.kx = load <2 x float>, ptr %i.ko, align 4, !tbaa !52
  %i.ky = shufflevector <4 x float> %i.kq, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.ky, <2 x float> %i.kw)
  %i.la = load <2 x float>, ptr %i.kp, align 4, !tbaa !52
  %i.lb = shufflevector <4 x float> %i.kq, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.lc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.lb, <2 x float> %i.kz)
  store <2 x float> %i.lc, ptr %.4788, align 4, !tbaa !52
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %.4788, i64 8
  %i.li = load <4 x float>, ptr %i.kg, align 4, !tbaa !52 ; 4 uses
  %i.lj = load <2 x float>, ptr %i.ld, align 4, !tbaa !52
  %i.lk = load <2 x float>, ptr %i.le, align 4, !tbaa !52
  %i.ll = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = fmul <2 x float> %i.ll, %i.lk
  %i.ln = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> zeroinitializer
  %i.lo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.ln, <2 x float> %i.lm)
  %i.lp = load <2 x float>, ptr %i.lf, align 4, !tbaa !52
  %i.lq = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.lr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> %i.lq, <2 x float> %i.lo)
  %i.ls = load <2 x float>, ptr %i.lg, align 4, !tbaa !52
  %i.lt = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.lu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.lt, <2 x float> %i.lr)
  store <2 x float> %i.lu, ptr %i.lh, align 4, !tbaa !52
  %indvars.iv.next875 = add nsw i64 %indvars.iv874, 1 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.4788, i64 16 ; 2 uses
  %exitcond878.not = icmp eq i64 %indvars.iv.next875, %wide.trip.count877
  br i1 %exitcond878.not, label %.loopexit770, label %.lr.ph, !llvm.loop !437

.lr.ph808:                                        ; preds = %.lr.ph808.preheader, %.loopexit1184
  %indvars.iv899 = phi i64 [ %i.gb, %.lr.ph808.preheader ], [ %indvars.iv.next900, %.loopexit1184 ] ; 3 uses
  %.5807 = phi ptr [ %.0585843, %.lr.ph808.preheader ], [ %i.nk, %.loopexit1184 ] ; 3 uses
  %.idx967 = shl nsw i64 %indvars.iv899, 2
  %i.lw = getelementptr inbounds i8, ptr %i.fa, i64 %.idx967 ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !56
  %i.ly = sext i16 %i.lx to i32
  %i.lz = getelementptr i8, ptr %i.lw, i64 2
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !56
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %indvars.iv899
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !56
  %i.md = zext i16 %i.mc to i64
  %.idx = shl nuw nsw i64 %i.md, 4                ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 6 uses
  %i.mf = sext i16 %i.ma to i64                   ; 3 uses
  %i.mg = mul i64 %i.co, %i.mf
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.mg
  %i.mi = mul nsw i32 %i.bd, %i.ly
  %i.mj = sext i32 %i.mi to i64                   ; 2 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.mj ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 4 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.co ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.me, i64 12 ; 2 uses
  %invariant.gep988 = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %wide.trip.count ; 4 uses
  br i1 %min.iters.check1163, label %scalar.ph1162.preheader, label %vector.memcheck1132

vector.memcheck1132:                              ; preds = %.lr.ph808
  %i.mp = shl nsw i64 %i.mf, 2
  %i.mq = add nsw i64 %i.mp, 4
  %i.mr = mul i64 %i.co, %i.mq
  %i.ms = shl nsw i64 %i.mj, 2                    ; 2 uses
  %i.mt = add i64 %i.mr, %i.ms                    ; 2 uses
  %scevgep1136 = getelementptr i8, ptr %scevgep1135, i64 %i.mt ; 2 uses
  %scevgep1138 = getelementptr i8, ptr %scevgep1137, i64 %i.mt
  %i.mu = mul i64 %i.dz, %i.mf
  %i.mv = getelementptr i8, ptr %scevgep1139, i64 %i.mu
  %scevgep1140 = getelementptr i8, ptr %i.mv, i64 %i.ms
  %scevgep1142 = getelementptr i8, ptr %scevgep1141, i64 %.idx
  %bound01143 = icmp ult ptr %.0585843, %scevgep1138
  %bound11144 = icmp ult ptr %scevgep1136, %scevgep1134
  %found.conflict1145 = and i1 %bound01143, %bound11144
  %bound01146 = icmp ult ptr %.0585843, %scevgep1136
  %bound11147 = icmp ult ptr %i.mm, %scevgep1134
  %found.conflict1148 = and i1 %bound01146, %bound11147
  %conflict.rdx1149 = or i1 %found.conflict1145, %found.conflict1148
  %bound01150 = icmp ult ptr %.0585843, %scevgep1140
  %bound11151 = icmp ult ptr %invariant.gep988, %scevgep1134
  %found.conflict1152 = and i1 %bound01150, %bound11151
  %conflict.rdx1153 = or i1 %conflict.rdx1149, %found.conflict1152
  %bound01154 = icmp ult ptr %.0585843, %invariant.gep988
  %bound11155 = icmp ult ptr %i.mk, %scevgep1134
  %found.conflict1156 = and i1 %bound01154, %bound11155
  %conflict.rdx1157 = or i1 %conflict.rdx1153, %found.conflict1156
  %bound01158 = icmp ult ptr %.0585843, %scevgep1142
  %bound11159 = icmp ult ptr %i.me, %scevgep1134
  %found.conflict1160 = and i1 %bound01158, %bound11159
  %conflict.rdx1161 = or i1 %conflict.rdx1157, %found.conflict1160
  br i1 %conflict.rdx1161, label %scalar.ph1162.preheader, label %vector.ph1164

vector.ph1164:                                    ; preds = %vector.memcheck1132
  %i.mw = load float, ptr %i.me, align 4, !tbaa !52, !alias.scope !478
  %broadcast.splatinsert1172 = insertelement <4 x float> poison, float %i.mw, i64 0
  %broadcast.splat1173 = shufflevector <4 x float> %broadcast.splatinsert1172, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mx = load float, ptr %i.ml, align 4, !tbaa !52, !alias.scope !478
  %broadcast.splatinsert1170 = insertelement <4 x float> poison, float %i.mx, i64 0
  %broadcast.splat1171 = shufflevector <4 x float> %broadcast.splatinsert1170, <4 x float> poison, <4 x i32> zeroinitializer
  %i.my = load float, ptr %i.mn, align 4, !tbaa !52, !alias.scope !478
  %broadcast.splatinsert1175 = insertelement <4 x float> poison, float %i.my, i64 0
  %broadcast.splat1176 = shufflevector <4 x float> %broadcast.splatinsert1175, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = load float, ptr %i.mo, align 4, !tbaa !52, !alias.scope !478
  %broadcast.splatinsert1178 = insertelement <4 x float> poison, float %i.mz, i64 0
  %broadcast.splat1179 = shufflevector <4 x float> %broadcast.splatinsert1178, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1164
  %index1167 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1180, %vector.body1166 ] ; 5 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index1167
  %wide.load1168 = load <4 x float>, ptr %i.na, align 4, !tbaa !52, !alias.scope !479
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep988, i64 %index1167
  %wide.load1169 = load <4 x float>, ptr %i.nb, align 4, !tbaa !52, !alias.scope !480
  %i.nc = fmul <4 x float> %wide.load1169, %broadcast.splat1171
  %i.nd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1168, <4 x float> %broadcast.splat1173, <4 x float> %i.nc)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %index1167 ; 2 uses
  %wide.load1174 = load <4 x float>, ptr %i.ne, align 4, !tbaa !52, !alias.scope !481
  %i.nf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1174, <4 x float> %broadcast.splat1176, <4 x float> %i.nd)
  %i.ng = getelementptr [4 x i8], ptr %i.ne, i64 %wide.trip.count
  %wide.load1177 = load <4 x float>, ptr %i.ng, align 4, !tbaa !52, !alias.scope !482
  %i.nh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1177, <4 x float> %broadcast.splat1179, <4 x float> %i.nf)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.5807, i64 %index1167
  store <4 x float> %i.nh, ptr %i.ni, align 4, !tbaa !52, !alias.scope !483, !noalias !484
  %index.next1180 = add nuw i64 %index1167, 4     ; 2 uses
  %i.nj = icmp eq i64 %index.next1180, %n.vec1165
  br i1 %i.nj, label %middle.block1181, label %vector.body1166, !llvm.loop !445

middle.block1181:                                 ; preds = %vector.body1166
  br i1 %cmp.n1182, label %.loopexit1184, label %scalar.ph1162.preheader

scalar.ph1162.preheader:                          ; preds = %vector.memcheck1132, %.lr.ph808, %middle.block1181
  %indvars.iv894.ph = phi i64 [ 0, %vector.memcheck1132 ], [ 0, %.lr.ph808 ], [ %n.vec1165, %middle.block1181 ]
  br label %scalar.ph1162

.loopexit1184:                                    ; preds = %scalar.ph1162, %middle.block1181
  %indvars.iv.next900 = add nsw i64 %indvars.iv899, 1 ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.5807, i64 %wide.trip.count ; 2 uses
  %exitcond903.not = icmp eq i64 %indvars.iv.next900, %wide.trip.count902
  br i1 %exitcond903.not, label %.loopexit770, label %.lr.ph808, !llvm.loop !446

scalar.ph1162:                                    ; preds = %scalar.ph1162.preheader, %scalar.ph1162
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %scalar.ph1162 ], [ %indvars.iv894.ph, %scalar.ph1162.preheader ] ; 5 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv894
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !52
  %i.nn = load float, ptr %i.me, align 4, !tbaa !52
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep988, i64 %indvars.iv894
  %i.no = load float, ptr %gep, align 4, !tbaa !52
  %i.np = load float, ptr %i.ml, align 4, !tbaa !52
  %i.nq = fmul float %i.no, %i.np
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.nm, float %i.nn, float %i.nq)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv894 ; 2 uses
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !52
  %i.nu = load float, ptr %i.mn, align 4, !tbaa !52
  %i.nv = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.nu, float %i.nr)
  %i.nw = getelementptr [4 x i8], ptr %i.ns, i64 %wide.trip.count
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !52
  %i.ny = load float, ptr %i.mo, align 4, !tbaa !52
  %i.nz = tail call float @llvm.fmuladd.f32(float %i.nx, float %i.ny, float %i.nv)
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.5807, i64 %indvars.iv894
  store float %i.nz, ptr %i.oa, align 4, !tbaa !52
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 1 ; 2 uses
  %exitcond898.not = icmp eq i64 %indvars.iv.next895, %wide.trip.count
  br i1 %exitcond898.not, label %.loopexit1184, label %scalar.ph1162, !llvm.loop !447

end_hunk_0
begin_hunk_1_@_ZN2cvL13remapBilinearINS_4CastIffEENS_10RemapNoVecILb1EEEfLb1EEEvRKNS_3MatERS5_S7_S7_PKviRKNS_7Scalar_IdEERKNS_6Point_IiEE:bb.a
  %i.fs = icmp ult i32 %i.fr, %.sroa.speculated704
  br i1 %i.fs, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.ft = getelementptr i8, ptr %i.fm, i64 2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !56
  %i.fv = sext i16 %i.fu to i32
  %i.fw = add i32 %i.fi, %i.fv
  %i.fx = icmp ult i32 %i.fw, %.sroa.speculated
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.fy = trunc nuw i8 %.0620869 to i1
  %i.fz = xor i1 %i.fy, true
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ga = phi i1 [ %i.fz, %bb.x ], [ %i.fx, %bb.w ] ; 2 uses
  %i.gb = zext i1 %i.ga to i8                     ; 4 uses
  %i.gc = icmp eq i8 %.0620869, %i.gb
  br i1 %i.gc, label %.loopexit798, label %bb.z

.thread:                                          ; preds = %bb.v
  %i.gd = icmp eq i8 %.0620869, 0
  br i1 %i.gd, label %.loopexit798, label %.thread744

bb.z:                                             ; preds = %bb.y
  br i1 %i.ga, label %bb.aa, label %..thread744_crit_edge

..thread744_crit_edge:                            ; preds = %bb.z
  %.pre = load i32, ptr %7, align 4, !tbaa !106
  br label %.thread744

.thread744:                                       ; preds = %..thread744_crit_edge, %.thread
  %i.ge = phi i32 [ %.pre, %..thread744_crit_edge ], [ %i.fp, %.thread ] ; 5 uses
  %i.gf = icmp slt i32 %.0618870, %.0622868       ; 5 uses
  switch i8 %trunc, label %.preheader803 [
    i8 1, label %.preheader805
    i8 2, label %.preheader807
    i8 3, label %.preheader809
    i8 4, label %.preheader811
  ]

.preheader811:                                    ; preds = %.thread744
  br i1 %i.gf, label %.lr.ph.preheader, label %.loopexit798

.lr.ph.preheader:                                 ; preds = %.preheader811
  %i.gg = sext i32 %.0618870 to i64
  %wide.trip.count905 = sext i32 %.0622868 to i64
  br label %.lr.ph

.preheader809:                                    ; preds = %.thread744
  br i1 %i.gf, label %.lr.ph820.preheader, label %.loopexit798

.lr.ph820.preheader:                              ; preds = %.preheader809
  %i.gh = sext i32 %.0618870 to i64
  %wide.trip.count910 = sext i32 %.0622868 to i64
  br label %.lr.ph820

.preheader807:                                    ; preds = %.thread744
  br i1 %i.gf, label %.lr.ph825.preheader, label %.loopexit798

.lr.ph825.preheader:                              ; preds = %.preheader807
  %i.gi = sext i32 %.0618870 to i64
  %wide.trip.count915 = sext i32 %.0622868 to i64
  br label %.lr.ph825

.preheader805:                                    ; preds = %.thread744
  br i1 %i.gf, label %.lr.ph830.preheader, label %.loopexit798

.lr.ph830.preheader:                              ; preds = %.preheader805
  %i.gj = sext i32 %.0618870 to i64
  %i.gk = sext i32 %i.ge to i64
  %wide.trip.count920 = sext i32 %.0622868 to i64
  br label %.lr.ph830

.preheader803:                                    ; preds = %.thread744
  br i1 %i.gf, label %.lr.ph836.preheader, label %.loopexit798

.lr.ph836.preheader:                              ; preds = %.preheader803
  %i.gl = sext i32 %.0618870 to i64               ; 2 uses
  %wide.trip.count930 = sext i32 %.0622868 to i64 ; 2 uses
  %scevgep1164 = getelementptr i8, ptr %.0614871, i64 %i.dx
  %i.gm = xor i64 %i.gl, -1
  %i.gn = add nsw i64 %i.gm, %wide.trip.count930
  %i.go = mul nsw i64 %i.dx, %i.gn
  %scevgep1165 = getelementptr i8, ptr %scevgep1164, i64 %i.go ; 5 uses
  br label %.lr.ph836

.lr.ph830:                                        ; preds = %.lr.ph830.preheader, %.lr.ph830
  %indvars.iv917 = phi i64 [ %i.gj, %.lr.ph830.preheader ], [ %indvars.iv.next918, %.lr.ph830 ] ; 4 uses
  %.1615829 = phi ptr [ %.0614871, %.lr.ph830.preheader ], [ %i.hy, %.lr.ph830 ] ; 2 uses
  %.idx994 = shl nsw i64 %indvars.iv917, 2
  %i.gp = getelementptr inbounds i8, ptr %i.fb, i64 %.idx994 ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !56
  %i.gr = sext i16 %i.gq to i64
  %i.gs = getelementptr i8, ptr %i.gp, i64 2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !56
  %i.gu = sext i16 %i.gt to i32
  %i.gv = add nsw i32 %i.fi, %i.gu
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv917
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !56
  %i.gy = zext i16 %i.gx to i64
  %.idx662 = shl nuw nsw i64 %i.gy, 4
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 %.idx662 ; 4 uses
  %i.ha = sext i32 %i.gv to i64
  %i.hb = mul i64 %i.co, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.hb
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %indvars.iv917
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.gk
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.gr ; 3 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !52
  %i.hh = load float, ptr %i.gz, align 4, !tbaa !52
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !52
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !52
  %i.hm = fmul float %i.hj, %i.hl
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hh, float %i.hm)
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.co ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !52
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !52
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float %i.hn)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !52
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !52
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hw, float %i.hs)
  store float %i.hx, ptr %.1615829, align 4, !tbaa !52
  %indvars.iv.next918 = add nsw i64 %indvars.iv917, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1615829, i64 4 ; 2 uses
  %exitcond921.not = icmp eq i64 %indvars.iv.next918, %wide.trip.count920
  br i1 %exitcond921.not, label %.loopexit798, label %.lr.ph830, !llvm.loop !636

.lr.ph825:                                        ; preds = %.lr.ph825.preheader, %.lr.ph825
  %indvars.iv912 = phi i64 [ %i.gi, %.lr.ph825.preheader ], [ %indvars.iv.next913, %.lr.ph825 ] ; 4 uses
  %.2616824 = phi ptr [ %.0614871, %.lr.ph825.preheader ], [ %i.jj, %.lr.ph825 ] ; 2 uses
  %.idx993 = shl nsw i64 %indvars.iv912, 2
  %i.hz = getelementptr inbounds i8, ptr %i.fb, i64 %.idx993 ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !56
  %i.ib = sext i16 %i.ia to i32
  %i.ic = trunc i64 %indvars.iv912 to i32
  %i.id = add i32 %i.ge, %i.ic
  %i.ie = add nsw i32 %i.id, %i.ib
  %i.if = getelementptr i8, ptr %i.hz, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !56
  %i.ih = sext i16 %i.ig to i32
  %i.ii = add nsw i32 %i.fi, %i.ih
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv912
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !56
  %i.il = zext i16 %i.ik to i64
  %.idx661 = shl nuw nsw i64 %i.il, 4
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 %.idx661
  %i.in = sext i32 %i.ii to i64
  %i.io = mul i64 %i.co, %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.io
  %i.iq = shl nsw i32 %i.ie, 1
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ir ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.co ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load <4 x float>, ptr %i.im, align 4, !tbaa !52 ; 4 uses
  %i.ix = load <2 x float>, ptr %i.is, align 4, !tbaa !52
  %i.iy = load <2 x float>, ptr %i.it, align 4, !tbaa !52
  %i.iz = shufflevector <4 x float> %i.iw, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ja = fmul <2 x float> %i.iz, %i.iy
  %i.jb = shufflevector <4 x float> %i.iw, <4 x float> poison, <2 x i32> zeroinitializer
  %i.jc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.jb, <2 x float> %i.ja)
  %i.jd = load <2 x float>, ptr %i.iu, align 4, !tbaa !52
  %i.je = shufflevector <4 x float> %i.iw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.je, <2 x float> %i.jc)
  %i.jg = load <2 x float>, ptr %i.iv, align 4, !tbaa !52
  %i.jh = shufflevector <4 x float> %i.iw, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ji = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.jh, <2 x float> %i.jf)
  store <2 x float> %i.ji, ptr %.2616824, align 4, !tbaa !52
  %indvars.iv.next913 = add nsw i64 %indvars.iv912, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.2616824, i64 8 ; 2 uses
  %exitcond916.not = icmp eq i64 %indvars.iv.next913, %wide.trip.count915
  br i1 %exitcond916.not, label %.loopexit798, label %.lr.ph825, !llvm.loop !637

.lr.ph820:                                        ; preds = %.lr.ph820.preheader, %.lr.ph820
  %indvars.iv907 = phi i64 [ %i.gh, %.lr.ph820.preheader ], [ %indvars.iv.next908, %.lr.ph820 ] ; 4 uses
  %.3617819 = phi ptr [ %.0614871, %.lr.ph820.preheader ], [ %i.kx, %.lr.ph820 ] ; 3 uses
  %.idx992 = shl nsw i64 %indvars.iv907, 2
  %i.jk = getelementptr inbounds i8, ptr %i.fb, i64 %.idx992 ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !56
  %i.jm = sext i16 %i.jl to i32
  %i.jn = trunc i64 %indvars.iv907 to i32
  %i.jo = add i32 %i.ge, %i.jn
  %i.jp = add nsw i32 %i.jo, %i.jm
  %i.jq = getelementptr i8, ptr %i.jk, i64 2
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !56
  %i.js = sext i16 %i.jr to i32
  %i.jt = add nsw i32 %i.fi, %i.js
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv907
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !56
  %i.jw = zext i16 %i.jv to i64
  %.idx660 = shl nuw nsw i64 %i.jw, 4
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 %.idx660
  %i.jy = sext i32 %i.jt to i64
  %i.jz = mul i64 %i.co, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.jz
  %i.kb = mul nsw i32 %i.jp, 3
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.kc ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.co ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !52
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 20
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !52
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.km = load float, ptr %i.kl, align 4, !tbaa !52
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !52
  %14 = load <4 x float>, ptr %i.jx, align 4, !tbaa !52 ; 8 uses
  %15 = load <2 x float>, ptr %i.kd, align 4, !tbaa !52
  %i.kp = load <2 x float>, ptr %i.ke, align 4, !tbaa !52
  %16 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %17 = fmul <2 x float> %16, %i.kp
  %i.kq = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer
  %18 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.kq, <2 x float> %17)
  %19 = load <2 x float>, ptr %i.kf, align 4, !tbaa !52
  %20 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %20, <2 x float> %18)
  %i.ks = load <2 x float>, ptr %i.kg, align 4, !tbaa !52
  %21 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.kt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %21, <2 x float> %i.kr)
  %22 = extractelement <4 x float> %14, i64 1
  %23 = fmul float %22, %i.kk
  %24 = extractelement <4 x float> %14, i64 0
  %25 = tail call float @llvm.fmuladd.f32(float %i.ki, float %24, float %23)
  %26 = extractelement <4 x float> %14, i64 2
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.km, float %26, float %25)
  %27 = extractelement <4 x float> %14, i64 3
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ko, float %27, float %i.ku)
  store <2 x float> %i.kt, ptr %.3617819, align 4, !tbaa !52
  %i.kw = getelementptr inbounds nuw i8, ptr %.3617819, i64 8
  store float %i.kv, ptr %i.kw, align 4, !tbaa !52
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.3617819, i64 12 ; 2 uses
  %exitcond911.not = icmp eq i64 %indvars.iv.next908, %wide.trip.count910
  br i1 %exitcond911.not, label %.loopexit798, label %.lr.ph820, !llvm.loop !638

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv902 = phi i64 [ %i.gg, %.lr.ph.preheader ], [ %indvars.iv.next903, %.lr.ph ] ; 4 uses
  %.4816 = phi ptr [ %.0614871, %.lr.ph.preheader ], [ %i.na, %.lr.ph ] ; 3 uses
  %.idx991 = shl nsw i64 %indvars.iv902, 2
  %i.ky = getelementptr inbounds i8, ptr %i.fb, i64 %.idx991 ; 2 uses
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !56
  %i.la = sext i16 %i.kz to i32
  %i.lb = trunc i64 %indvars.iv902 to i32
  %i.lc = add i32 %i.ge, %i.lb
  %i.ld = add nsw i32 %i.lc, %i.la
  %i.le = getelementptr i8, ptr %i.ky, i64 2
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !56
  %i.lg = sext i16 %i.lf to i32
  %i.lh = add nsw i32 %i.fi, %i.lg
  %i.li = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv902
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !56
  %i.lk = zext i16 %i.lj to i64
  %.idx659 = shl nuw nsw i64 %i.lk, 4
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 %.idx659 ; 2 uses
  %i.lm = sext i32 %i.lh to i64
  %i.ln = mul i64 %i.co, %i.lm
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ln
  %i.lp = shl nsw i32 %i.ld, 2
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.lq ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.co ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load <4 x float>, ptr %i.ll, align 4, !tbaa !52 ; 4 uses
  %i.lw = load <2 x float>, ptr %i.lr, align 4, !tbaa !52
  %i.lx = load <2 x float>, ptr %i.ls, align 4, !tbaa !52
  %i.ly = shufflevector <4 x float> %i.lv, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lz = fmul <2 x float> %i.ly, %i.lx
  %i.ma = shufflevector <4 x float> %i.lv, <4 x float> poison, <2 x i32> zeroinitializer
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.ma, <2 x float> %i.lz)
  %i.mc = load <2 x float>, ptr %i.lt, align 4, !tbaa !52
  %i.md = shufflevector <4 x float> %i.lv, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mc, <2 x float> %i.md, <2 x float> %i.mb)
  %i.mf = load <2 x float>, ptr %i.lu, align 4, !tbaa !52
  %i.mg = shufflevector <4 x float> %i.lv, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.mh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mg, <2 x float> %i.me)
  store <2 x float> %i.mh, ptr %.4816, align 4, !tbaa !52
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %.4816, i64 8
  %i.mn = load <4 x float>, ptr %i.ll, align 4, !tbaa !52 ; 4 uses
  %i.mo = load <2 x float>, ptr %i.mi, align 4, !tbaa !52
  %i.mp = load <2 x float>, ptr %i.mj, align 4, !tbaa !52
  %i.mq = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mr = fmul <2 x float> %i.mq, %i.mp
  %i.ms = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> zeroinitializer
  %i.mt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mo, <2 x float> %i.ms, <2 x float> %i.mr)
  %i.mu = load <2 x float>, ptr %i.mk, align 4, !tbaa !52
  %i.mv = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.mw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.mv, <2 x float> %i.mt)
  %i.mx = load <2 x float>, ptr %i.ml, align 4, !tbaa !52
  %i.my = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.mz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mx, <2 x float> %i.my, <2 x float> %i.mw)
  store <2 x float> %i.mz, ptr %i.mm, align 4, !tbaa !52
  %indvars.iv.next903 = add nsw i64 %indvars.iv902, 1 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.4816, i64 16 ; 2 uses
  %exitcond906.not = icmp eq i64 %indvars.iv.next903, %wide.trip.count905
  br i1 %exitcond906.not, label %.loopexit798, label %.lr.ph, !llvm.loop !639

.lr.ph836:                                        ; preds = %.lr.ph836.preheader, %.loopexit1215
  %indvars.iv927 = phi i64 [ %i.gl, %.lr.ph836.preheader ], [ %indvars.iv.next928, %.loopexit1215 ] ; 4 uses
  %.5835 = phi ptr [ %.0614871, %.lr.ph836.preheader ], [ %i.ou, %.loopexit1215 ] ; 3 uses
  %.idx995 = shl nsw i64 %indvars.iv927, 2
  %i.nb = getelementptr inbounds i8, ptr %i.fb, i64 %.idx995 ; 2 uses
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !56
  %i.nd = sext i16 %i.nc to i32
  %i.ne = trunc i64 %indvars.iv927 to i32
  %i.nf = add i32 %i.ge, %i.ne
  %i.ng = add nsw i32 %i.nf, %i.nd
  %i.nh = getelementptr i8, ptr %i.nb, i64 2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !56
  %i.nj = sext i16 %i.ni to i32
  %i.nk = add nsw i32 %i.fi, %i.nj
  %i.nl = getelementptr inbounds [2 x i8], ptr %i.ff, i64 %indvars.iv927
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !56
  %i.nn = zext i16 %i.nm to i64
  %.idx = shl nuw nsw i64 %i.nn, 4                ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 6 uses
  %i.np = sext i32 %i.nk to i64                   ; 3 uses
  %i.nq = mul i64 %i.co, %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.nq
  %i.ns = mul nsw i32 %i.ng, %i.bd
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.nt ; 5 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 4 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.co ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 12 ; 2 uses
  %invariant.gep1016 = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %wide.trip.count ; 4 uses
  br i1 %min.iters.check1194, label %scalar.ph1193.preheader, label %vector.memcheck1163

vector.memcheck1163:                              ; preds = %.lr.ph836
  %i.nz = shl nsw i64 %i.np, 2
  %i.oa = add nsw i64 %i.nz, 4
  %i.ob = mul i64 %i.co, %i.oa
  %i.oc = shl nsw i64 %i.nt, 2                    ; 2 uses
  %i.od = add i64 %i.ob, %i.oc                    ; 2 uses
  %scevgep1167 = getelementptr i8, ptr %scevgep1166, i64 %i.od ; 2 uses
  %scevgep1169 = getelementptr i8, ptr %scevgep1168, i64 %i.od
  %i.oe = mul i64 %i.ea, %i.np
  %i.of = getelementptr i8, ptr %scevgep1170, i64 %i.oe
  %scevgep1171 = getelementptr i8, ptr %i.of, i64 %i.oc
  %scevgep1173 = getelementptr i8, ptr %scevgep1172, i64 %.idx
  %bound01174 = icmp ult ptr %.0614871, %scevgep1169
  %bound11175 = icmp ult ptr %scevgep1167, %scevgep1165
  %found.conflict1176 = and i1 %bound01174, %bound11175
  %bound01177 = icmp ult ptr %.0614871, %scevgep1167
  %bound11178 = icmp ult ptr %i.nw, %scevgep1165
  %found.conflict1179 = and i1 %bound01177, %bound11178
  %conflict.rdx1180 = or i1 %found.conflict1176, %found.conflict1179
  %bound01181 = icmp ult ptr %.0614871, %scevgep1171
  %bound11182 = icmp ult ptr %invariant.gep1016, %scevgep1165
  %found.conflict1183 = and i1 %bound01181, %bound11182
  %conflict.rdx1184 = or i1 %conflict.rdx1180, %found.conflict1183
  %bound01185 = icmp ult ptr %.0614871, %invariant.gep1016
  %bound11186 = icmp ult ptr %i.nu, %scevgep1165
  %found.conflict1187 = and i1 %bound01185, %bound11186
  %conflict.rdx1188 = or i1 %conflict.rdx1184, %found.conflict1187
  %bound01189 = icmp ult ptr %.0614871, %scevgep1173
  %bound11190 = icmp ult ptr %i.no, %scevgep1165
  %found.conflict1191 = and i1 %bound01189, %bound11190
  %conflict.rdx1192 = or i1 %conflict.rdx1188, %found.conflict1191
  br i1 %conflict.rdx1192, label %scalar.ph1193.preheader, label %vector.ph1195

vector.ph1195:                                    ; preds = %vector.memcheck1163
  %i.og = load float, ptr %i.no, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1203 = insertelement <4 x float> poison, float %i.og, i64 0
  %broadcast.splat1204 = shufflevector <4 x float> %broadcast.splatinsert1203, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oh = load float, ptr %i.nv, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1201 = insertelement <4 x float> poison, float %i.oh, i64 0
  %broadcast.splat1202 = shufflevector <4 x float> %broadcast.splatinsert1201, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = load float, ptr %i.nx, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1206 = insertelement <4 x float> poison, float %i.oi, i64 0
  %broadcast.splat1207 = shufflevector <4 x float> %broadcast.splatinsert1206, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = load float, ptr %i.ny, align 4, !tbaa !52, !alias.scope !680
  %broadcast.splatinsert1209 = insertelement <4 x float> poison, float %i.oj, i64 0
  %broadcast.splat1210 = shufflevector <4 x float> %broadcast.splatinsert1209, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1195
  %index1198 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1211, %vector.body1197 ] ; 5 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index1198
  %wide.load1199 = load <4 x float>, ptr %i.ok, align 4, !tbaa !52, !alias.scope !681
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1016, i64 %index1198
  %wide.load1200 = load <4 x float>, ptr %i.ol, align 4, !tbaa !52, !alias.scope !682
  %i.om = fmul <4 x float> %wide.load1200, %broadcast.splat1202
  %i.on = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1199, <4 x float> %broadcast.splat1204, <4 x float> %i.om)
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %index1198 ; 2 uses
  %wide.load1205 = load <4 x float>, ptr %i.oo, align 4, !tbaa !52, !alias.scope !683
  %i.op = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1205, <4 x float> %broadcast.splat1207, <4 x float> %i.on)
  %i.oq = getelementptr [4 x i8], ptr %i.oo, i64 %wide.trip.count
  %wide.load1208 = load <4 x float>, ptr %i.oq, align 4, !tbaa !52, !alias.scope !684
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1208, <4 x float> %broadcast.splat1210, <4 x float> %i.op)
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.5835, i64 %index1198
  store <4 x float> %i.or, ptr %i.os, align 4, !tbaa !52, !alias.scope !685, !noalias !686
  %index.next1211 = add nuw i64 %index1198, 4     ; 2 uses
  %i.ot = icmp eq i64 %index.next1211, %n.vec1196
  br i1 %i.ot, label %middle.block1212, label %vector.body1197, !llvm.loop !647

middle.block1212:                                 ; preds = %vector.body1197
  br i1 %cmp.n1213, label %.loopexit1215, label %scalar.ph1193.preheader

scalar.ph1193.preheader:                          ; preds = %vector.memcheck1163, %.lr.ph836, %middle.block1212
  %indvars.iv922.ph = phi i64 [ 0, %vector.memcheck1163 ], [ 0, %.lr.ph836 ], [ %n.vec1196, %middle.block1212 ]
  br label %scalar.ph1193

.loopexit1215:                                    ; preds = %scalar.ph1193, %middle.block1212
  %indvars.iv.next928 = add nsw i64 %indvars.iv927, 1 ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.5835, i64 %wide.trip.count ; 2 uses
  %exitcond931.not = icmp eq i64 %indvars.iv.next928, %wide.trip.count930
  br i1 %exitcond931.not, label %.loopexit798, label %.lr.ph836, !llvm.loop !648

scalar.ph1193:                                    ; preds = %scalar.ph1193.preheader, %scalar.ph1193
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %scalar.ph1193 ], [ %indvars.iv922.ph, %scalar.ph1193.preheader ] ; 5 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv922
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !52
  %i.ox = load float, ptr %i.no, align 4, !tbaa !52
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1016, i64 %indvars.iv922
  %i.oy = load float, ptr %gep, align 4, !tbaa !52
  %i.oz = load float, ptr %i.nv, align 4, !tbaa !52
  %i.pa = fmul float %i.oy, %i.oz
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.ow, float %i.ox, float %i.pa)
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv922 ; 2 uses
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !52
  %i.pe = load float, ptr %i.nx, align 4, !tbaa !52
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.pd, float %i.pe, float %i.pb)
end_hunk_1
