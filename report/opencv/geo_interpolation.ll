Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/geo_interpolation?download=true
inline.NumInlined: 758
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv7optflow8getGraphERKNS_3MatEf:bb.a
  %i.ev = mul i64 %i.er, %i.ak
  %.sink.idx.i95.5 = select i1 %i.ep, i64 0, i64 %i.ev
  %.sink.i96.5 = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sink.idx.i95.5
  %i.ew = getelementptr inbounds nuw [3 x i8], ptr %.sink.i96.5, i64 %i.ap ; 3 uses
  %i.ex = zext i8 %i.eu to i32
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !47
  %i.ez = zext i8 %i.ey to i32
  %i.fa = sub nsw i32 %i.ex, %i.ez
  %i.fb = sitofp i32 %i.fa to float               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !47
  %i.fe = zext i8 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !47
  %i.fh = zext i8 %i.fg to i32
  %i.fi = sub nsw i32 %i.fe, %i.fh
  %i.fj = sitofp i32 %i.fi to float               ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !47
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !47
  %i.fp = zext i8 %i.fo to i32
  %i.fq = sub nsw i32 %i.fm, %i.fp
  %i.fr = sitofp i32 %i.fq to float               ; 2 uses
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.ab)
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fs)
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float %i.ft)
  %i.fv = tail call noundef float @sqrtf(float noundef %i.fu) #21
  %i.fw = load i64, ptr %i.p, align 8
  %i.fx = mul i64 %i.fw, %indvars.iv118
  %.sink.idx.i105.5 = select i1 %i.m, i64 0, i64 %i.fx
  %gep109.5 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i105.5
  %i.fy = getelementptr inbounds nuw i8, ptr %gep109.5, i64 20
  store float %i.fv, ptr %i.fy, align 4, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.fz = load i64, ptr %i.p, align 8
  %i.ga = mul i64 %i.fz, %indvars.iv118
  %.sink.idx.i.6 = select i1 %i.m, i64 0, i64 %i.ga
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.6
  %i.gb = getelementptr inbounds nuw i8, ptr %gep.6, i64 24
  store float -1.000000e+00, ptr %i.gb, align 4, !tbaa !10
  %i.gc = load i32, ptr %i.h, align 4
  %i.gd = sext i32 %i.gc to i64
  %.not.6 = icmp slt i64 %indvars.iv, %i.gd
  %i.ge = load i32, ptr %i.e, align 8
  %i.gf = sext i32 %i.ge to i64
  %.not83.6 = icmp slt i64 %i.al, %i.gf
  %or.cond88.6 = select i1 %.not.6, i1 %.not83.6, i1 false
  br i1 %or.cond88.6, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gg = load i32, ptr %i.q, align 4, !tbaa !45
  %i.gh = icmp slt i32 %i.gg, 2                   ; 2 uses
  %i.gi = load ptr, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %i.gj = load i64, ptr %i.s, align 8             ; 2 uses
  %i.gk = mul i64 %i.gj, %indvars.iv118
  %.sink.idx.i93.6 = select i1 %i.gh, i64 0, i64 %i.gk
  %.sink.i94.6 = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sink.idx.i93.6
  %i.gl = getelementptr inbounds nuw [3 x i8], ptr %.sink.i94.6, i64 %indvars.iv ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !47
  %i.gn = mul i64 %i.gj, %i.al
  %.sink.idx.i95.6 = select i1 %i.gh, i64 0, i64 %i.gn
  %.sink.i96.6 = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sink.idx.i95.6
  %i.go = getelementptr inbounds nuw [3 x i8], ptr %.sink.i96.6, i64 %indvars.iv ; 3 uses
  %i.gp = zext i8 %i.gm to i32
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !47
  %i.gr = zext i8 %i.gq to i32
  %i.gs = sub nsw i32 %i.gp, %i.gr
  %i.gt = sitofp i32 %i.gs to float               ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !47
  %i.gw = zext i8 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !47
  %i.gz = zext i8 %i.gy to i32
  %i.ha = sub nsw i32 %i.gw, %i.gz
  %i.hb = sitofp i32 %i.ha to float               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !47
  %i.he = zext i8 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !47
  %i.hh = zext i8 %i.hg to i32
  %i.hi = sub nsw i32 %i.he, %i.hh
  %i.hj = sitofp i32 %i.hi to float               ; 2 uses
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.ac)
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.hk)
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.hj, float %i.hl)
  %i.hn = tail call noundef float @sqrtf(float noundef %i.hm) #21
  %i.ho = load i64, ptr %i.p, align 8
  %i.hp = mul i64 %i.ho, %indvars.iv118
  %.sink.idx.i105.6 = select i1 %i.m, i64 0, i64 %i.hp
  %gep109.6 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i105.6
  %i.hq = getelementptr inbounds nuw i8, ptr %gep109.6, i64 24
  store float %i.hn, ptr %i.hq, align 4, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hr = load i64, ptr %i.p, align 8
  %i.hs = mul i64 %i.hr, %indvars.iv118
  %.sink.idx.i.7 = select i1 %i.m, i64 0, i64 %i.hs
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.7
  %i.ht = getelementptr inbounds nuw i8, ptr %gep.7, i64 28
  store float -1.000000e+00, ptr %i.ht, align 4, !tbaa !10
  %i.hu = load i32, ptr %i.h, align 4
  %i.hv = sext i32 %i.hu to i64
  %.not.7 = icmp slt i64 %indvars.iv.next, %i.hv
  %i.hw = load i32, ptr %i.e, align 8
  %i.hx = sext i32 %i.hw to i64
  %.not83.7 = icmp slt i64 %i.am, %i.hx
  %or.cond88.7 = select i1 %.not.7, i1 %.not83.7, i1 false
  br i1 %or.cond88.7, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hy = load i32, ptr %i.q, align 4, !tbaa !45
  %i.hz = icmp slt i32 %i.hy, 2                   ; 2 uses
  %i.ia = load ptr, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %i.ib = load i64, ptr %i.s, align 8             ; 2 uses
  %i.ic = mul i64 %i.ib, %indvars.iv118
  %.sink.idx.i93.7 = select i1 %i.hz, i64 0, i64 %i.ic
  %.sink.i94.7 = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sink.idx.i93.7
  %i.id = getelementptr inbounds nuw [3 x i8], ptr %.sink.i94.7, i64 %indvars.iv ; 3 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !47
  %i.if = mul i64 %i.ib, %i.am
  %.sink.idx.i95.7 = select i1 %i.hz, i64 0, i64 %i.if
  %.sink.i96.7 = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sink.idx.i95.7
  %i.ig = getelementptr inbounds nuw [3 x i8], ptr %.sink.i96.7, i64 %indvars.iv.next ; 3 uses
  %i.ih = zext i8 %i.ie to i32
  %i.ii = load i8, ptr %i.ig, align 1, !tbaa !47
  %i.ij = zext i8 %i.ii to i32
  %i.ik = sub nsw i32 %i.ih, %i.ij
  %i.il = sitofp i32 %i.ik to float               ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !47
  %i.io = zext i8 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !47
  %i.ir = zext i8 %i.iq to i32
  %i.is = sub nsw i32 %i.io, %i.ir
  %i.it = sitofp i32 %i.is to float               ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !47
  %i.iw = zext i8 %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !47
  %i.iz = zext i8 %i.iy to i32
  %i.ja = sub nsw i32 %i.iw, %i.iz
  %i.jb = sitofp i32 %i.ja to float               ; 2 uses
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ad)
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.it, float %i.it, float %i.jc)
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.jb, float %i.jd)
  %i.jf = tail call noundef float @sqrtf(float noundef %i.je) #21
  %i.jg = load i64, ptr %i.p, align 8
  %i.jh = mul i64 %i.jg, %indvars.iv118
  %.sink.idx.i105.7 = select i1 %i.m, i64 0, i64 %i.jh
  %gep109.7 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i105.7
  %i.ji = getelementptr inbounds nuw i8, ptr %gep109.7, i64 28
  store float %i.jf, ptr %i.ji, align 4, !tbaa !10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !87

._crit_edge115.split:                             ; preds = %._crit_edge, %.preheader107.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7optflow25interpolate_irregular_knnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEif(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %4, i32 noundef %5, float noundef %6) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 14 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 14 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %12 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %13 = alloca %"class.std::multimap", align 8    ; 10 uses
  %14 = alloca %"struct.cv::optflow::Graph_helper", align 8 ; 15 uses
  %15 = alloca %"class.cv::Vec.7", align 16       ; 6 uses
  %16 = alloca %"class.cv::Vec.7", align 16       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 37)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.f = load i32, ptr %i.b, align 8, !tbaa !24
  %i.g = load i32, ptr %i.d, align 4, !tbaa !25
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, i32 noundef %i.f, i32 noundef %i.g, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #21
  %i.h = load ptr, ptr %9, align 8, !tbaa !58, !noalias !105 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #21
  br label %bb.d

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #21
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not319 = icmp eq ptr %i.q, %i.r
  br i1 %.not319, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 128
  br label %bb.e

._crit_edge:                                      ; preds = %bb.j, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN2cv7optflow8getGraphERKNS_3MatEf(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %4, float noundef %6)
          to label %bb.k unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %.body ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bg

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %i.z = phi ptr [ %i.r, %.lr.ph ], [ %i.bw, %bb.j ] ; 5 uses
  %i.aa = phi ptr [ %i.q, %.lr.ph ], [ %i.bx, %bb.j ] ; 4 uses
  %i.ab = phi i64 [ 0, %.lr.ph ], [ %i.bz, %bb.j ] ; 3 uses
  %.0126288 = phi i32 [ 0, %.lr.ph ], [ %i.by, %bb.j ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !52 ; 3 uses
  %i.ae = fcmp ult float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !51 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ac, align 4, !tbaa !10 ; 2 uses
  %i.ai = fcmp ult float %i.ag, 0.000000e+00
  br i1 %i.ai, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !25
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fcmp olt float %i.ad, %i.ak
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.b, align 8, !tbaa !24
  %i.an = sitofp i32 %i.am to float
  %i.ao = fcmp olt float %i.ag, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %2, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ab
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !10
  %i.as = fsub <2 x float> %i.ar, %i.ah
  %i.at = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.au = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.at)
  %i.av = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aw = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.av)
  %.sroa.0.0.insert.ext.i = zext i32 %i.au to i64
  %i.ax = load i32, ptr %i.s, align 4, !tbaa !45
  %i.ay = icmp slt i32 %i.ax, 2
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.ba = load i64, ptr %i.u, align 8
  %i.bb = sext i32 %i.aw to i64
  %i.bc = mul i64 %i.ba, %i.bb
  %.sink.idx.i = select i1 %i.ay, i64 0, i64 %i.bc
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink.idx.i
  %sext.i = shl nuw i64 %.sroa.0.0.insert.ext.i, 32
  %i.bd = ashr exact i64 %sext.i, 29
  %i.be = getelementptr inbounds i8, ptr %.sink.i, i64 %i.bd
  store <2 x float> %i.as, ptr %i.be, align 4, !tbaa !10
  %i.bf = load ptr, ptr %3, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ab
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !47
  %i.bi = load float, ptr %i.ac, align 4, !tbaa !52
  %i.bj = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bj)
  %i.bl = load float, ptr %i.af, align 4, !tbaa !51
  %i.bm = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bn = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bm)
  %i.bo = load i32, ptr %i.v, align 4, !tbaa !45
  %i.bp = icmp slt i32 %i.bo, 2
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.br = load i64, ptr %i.x, align 8
  %i.bs = sext i32 %i.bn to i64
  %i.bt = mul i64 %i.br, %i.bs
  %.sink.idx.i161 = select i1 %i.bp, i64 0, i64 %i.bt
  %.sink.i162 = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink.idx.i161
  %i.bu = sext i32 %i.bk to i64
  %i.bv = getelementptr inbounds i8, ptr %.sink.i162, i64 %i.bu
  store i8 %i.bh, ptr %i.bv, align 1, !tbaa !47
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !15
  %.pre352 = load ptr, ptr %1, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.bw = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %.pre352, %bb.i ] ; 2 uses
  %i.bx = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %i.by = add i32 %.0126288, 1                    ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3
  %i.ce = icmp ugt i64 %i.cd, %i.bz
  br i1 %i.ce, label %bb.e, label %._crit_edge, !llvm.loop !90

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 11 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef 37, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 10 uses
  store i32 0, ptr %i.cj, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !36
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 8 uses
  store i64 0, ptr %i.cn, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.co = load i32, ptr %i.cf, align 8, !tbaa !24 ; 2 uses
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.cq = mul nsw i32 %i.cp, %i.co                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 24, i1 false)
  %i.cr = shl nsw i32 %5, 1
  %i.cs = or disjoint i32 %i.cr, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 5 uses
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = mul nsw i32 %i.cq, %i.cs
  %i.cv = sext i32 %i.cu to i64
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(28) %14, ptr null, i64 noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._crit_edge353 unwind label %bb.n

._crit_edge353:                                   ; preds = %bb.m
  %.pre354 = load i32, ptr %i.cf, align 8, !tbaa !24
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cx = load ptr, ptr %14, align 8, !tbaa !63   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i, label %.body164, label %.body164.sink.split

bb.o:                                             ; preds = %._crit_edge353, %bb.l
  %i.cy = phi i32 [ %.pre354, %._crit_edge353 ], [ %i.co, %bb.l ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.preheader264.lr.ph, label %.preheader263

.preheader264.lr.ph:                              ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dn = load i32, ptr %i.ch, align 4, !tbaa !25 ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader264, label %.preheader263

.preheader264:                                    ; preds = %.preheader264.lr.ph, %._crit_edge296
  %i.dp = phi i32 [ %i.eh, %._crit_edge296 ], [ %i.cy, %.preheader264.lr.ph ]
  %i.dq = phi i32 [ %i.ei, %._crit_edge296 ], [ %i.dn, %.preheader264.lr.ph ] ; 2 uses
  %i.dr = phi i32 [ %i.ej, %._crit_edge296 ], [ %i.dn, %.preheader264.lr.ph ] ; 2 uses
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %._crit_edge296 ], [ 0, %.preheader264.lr.ph ] ; 7 uses
  %.0248303 = phi i32 [ %.1.lcssa, %._crit_edge296 ], [ 0, %.preheader264.lr.ph ] ; 2 uses
  %.sroa.0235.0302 = phi ptr [ %.sroa.0235.1.lcssa, %._crit_edge296 ], [ null, %.preheader264.lr.ph ] ; 2 uses
  %.sroa.8.0301 = phi ptr [ %.sroa.8.1.lcssa, %._crit_edge296 ], [ null, %.preheader264.lr.ph ] ; 2 uses
  %.sroa.12.0300 = phi ptr [ %.sroa.12.1.lcssa, %._crit_edge296 ], [ null, %.preheader264.lr.ph ] ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph295, label %._crit_edge296

.lr.ph295:                                        ; preds = %.preheader264
  %i.dt = trunc nuw nsw i64 %indvars.iv335 to i32 ; 2 uses
  %i.du = trunc nuw nsw i64 %indvars.iv335 to i32 ; 2 uses
  br label %bb.r

.preheader263:                                    ; preds = %._crit_edge296, %.preheader264.lr.ph, %bb.o
  %i.dv = phi i32 [ %i.cy, %bb.o ], [ %i.cy, %.preheader264.lr.ph ], [ %i.eh, %._crit_edge296 ]
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.o ], [ null, %.preheader264.lr.ph ], [ %.sroa.12.1.lcssa, %._crit_edge296 ] ; 3 uses
  %.sroa.0235.0.lcssa = phi ptr [ null, %bb.o ], [ null, %.preheader264.lr.ph ], [ %.sroa.0235.1.lcssa, %._crit_edge296 ] ; 5 uses
  %i.dw = load i64, ptr %i.cn, align 8, !tbaa !37
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader263
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.ag

bb.p:                                             ; preds = %._crit_edge
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.q:                                             ; preds = %bb.k
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.be

._crit_edge296.loopexit:                          ; preds = %bb.af
  %.pre356 = load i32, ptr %i.cf, align 8, !tbaa !24
  br label %._crit_edge296

._crit_edge296:                                   ; preds = %._crit_edge296.loopexit, %.preheader264
  %i.eh = phi i32 [ %i.dp, %.preheader264 ], [ %.pre356, %._crit_edge296.loopexit ] ; 3 uses
  %i.ei = phi i32 [ %i.dq, %.preheader264 ], [ %i.ir, %._crit_edge296.loopexit ]
  %i.ej = phi i32 [ %i.dr, %.preheader264 ], [ %i.ir, %._crit_edge296.loopexit ]
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.0300, %.preheader264 ], [ %.sroa.12.2, %._crit_edge296.loopexit ] ; 2 uses
  %.sroa.8.1.lcssa = phi ptr [ %.sroa.8.0301, %.preheader264 ], [ %.sroa.8.2, %._crit_edge296.loopexit ]
  %.sroa.0235.1.lcssa = phi ptr [ %.sroa.0235.0302, %.preheader264 ], [ %.sroa.0235.2, %._crit_edge296.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0248303, %.preheader264 ], [ %.2, %._crit_edge296.loopexit ]
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %i.ek = sext i32 %i.eh to i64
  %i.el = icmp slt i64 %indvars.iv.next336, %i.ek
  br i1 %i.el, label %.preheader264, label %.preheader263, !llvm.loop !91

bb.r:                                             ; preds = %.lr.ph295, %bb.af
  %i.em = phi i32 [ %i.dq, %.lr.ph295 ], [ %i.ir, %bb.af ]
  %indvars.iv332 = phi i64 [ 0, %.lr.ph295 ], [ %indvars.iv.next333, %bb.af ] ; 7 uses
  %.1293 = phi i32 [ %.0248303, %.lr.ph295 ], [ %.2, %bb.af ] ; 4 uses
  %.sroa.0235.1292 = phi ptr [ %.sroa.0235.0302, %.lr.ph295 ], [ %.sroa.0235.2, %bb.af ] ; 14 uses
  %.sroa.8.1291 = phi ptr [ %.sroa.8.0301, %.lr.ph295 ], [ %.sroa.8.2, %bb.af ] ; 9 uses
  %.sroa.12.1290 = phi ptr [ %.sroa.12.0300, %.lr.ph295 ], [ %.sroa.12.2, %bb.af ] ; 3 uses
  %i.en = load i32, ptr %i.da, align 4, !tbaa !45
  %i.eo = icmp slt i32 %i.en, 2
  %i.ep = load ptr, ptr %i.db, align 8, !tbaa !46
  %i.eq = load i64, ptr %i.dc, align 8
  %i.er = mul i64 %i.eq, %indvars.iv335
  %.sink.idx.i166 = select i1 %i.eo, i64 0, i64 %i.er
  %.sink.i167 = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sink.idx.i166
  %i.es = getelementptr inbounds nuw i8, ptr %.sink.i167, i64 %indvars.iv332
  %i.et = load i8, ptr %i.es, align 1, !tbaa !47
  %.not141 = icmp eq i8 %i.et, 0
  br i1 %.not141, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq ptr %.sroa.8.1291, %.sroa.12.1290
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.dt, ptr %.sroa.8.1291, align 4, !tbaa !42
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.8.1291, i64 4
  %i.ev = trunc nuw nsw i64 %indvars.iv332 to i32 ; 2 uses
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !42
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ew = ptrtoint ptr %.sroa.8.1291 to i64       ; 2 uses
  %i.ex = ptrtoint ptr %.sroa.0235.1292 to i64    ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.v, label %_ZNKSt6vectorIN2cv3VecIiLi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc210 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc210:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN2cv3VecIiLi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.u
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i209 = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i209)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #22
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp ; 11 uses

.noexc211:                                        ; preds = %_ZNKSt6vectorIN2cv3VecIiLi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey ; 2 uses
  store i32 %i.du, ptr %i.fh, align 4, !tbaa !42
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = trunc nuw nsw i64 %indvars.iv332 to i32 ; 2 uses
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !42
  %.not13.i.i.i.i.i.i = icmp eq ptr %.sroa.0235.1292, %.sroa.8.1291
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi2EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc211
  %i.fk = add i64 %i.ew, -8
  %i.fl = sub i64 %i.fk, %i.ex                    ; 3 uses
  %i.fm = lshr i64 %i.fl, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fl, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader466, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.fo = and i64 %i.fl, -8
  %i.fp = add i64 %i.fo, 8                        ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fg, i64 %i.fp
  %i.fr = getelementptr i8, ptr %.sroa.0235.1292, i64 %i.fp
  %bound0450 = icmp ult ptr %i.fg, %i.fr
  %bound1451 = icmp ult ptr %.sroa.0235.1292, %i.fq
  %found.conflict452 = and i1 %bound0450, %bound1451
  br i1 %found.conflict452, label %.lr.ph.i.i.i.i.i.i.preheader466, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fn, 4611686018427387900     ; 3 uses
  %i.fs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fg, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %.sroa.0235.1292, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fv = shl i64 %index, 3                       ; 3 uses
  %i.fw = or disjoint i64 %i.fv, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fg, i64 %i.fv
  %next.gep454 = getelementptr i8, ptr %i.fg, i64 %i.fw
  %next.gep455 = getelementptr i8, ptr %.sroa.0235.1292, i64 %i.fv
  %next.gep456 = getelementptr i8, ptr %.sroa.0235.1292, i64 %i.fw
  %wide.vec = load <4 x i32>, ptr %next.gep455, align 4, !tbaa !42, !alias.scope !111
  %wide.vec458 = load <4 x i32>, ptr %next.gep456, align 4, !tbaa !42, !alias.scope !111
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !42, !alias.scope !112, !noalias !111
  store <4 x i32> %wide.vec458, ptr %next.gep454, align 4, !tbaa !42, !alias.scope !112, !noalias !111
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fn, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi2EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i.preheader466

.lr.ph.i.i.i.i.i.i.preheader466:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.fg, %vector.memcheck ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ft, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0235.1292, %vector.memcheck ], [ %.sroa.0235.1292, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader466, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader466 ] ; 3 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader466 ] ; 3 uses
  %i.fy = load i32, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !42
  store i32 %i.fy, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !42
  %i.fz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !42
  %i.gb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !42
  %i.gc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gc, %.sroa.8.1291
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi2EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi2EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc211
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fg, %.noexc211 ], [ %i.ft, %middle.block ], [ %i.gd, %.lr.ph.i.i.i.i.i.i ]
  %.not.i35.i = icmp eq ptr %.sroa.0235.1292, null
  br i1 %.not.i35.i, label %.noexc, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi2EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.1292, i64 noundef %i.ey) #23
  br label %.noexc

.noexc:                                           ; preds = %bb.w, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi2EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.noexc
  %.pre-phi359 = phi i32 [ %i.ev, %bb.t ], [ %i.fj, %.noexc ] ; 2 uses
  %.pre-phi = phi i32 [ %i.dt, %bb.t ], [ %i.du, %.noexc ] ; 2 uses
  %.sroa.12.4 = phi ptr [ %.sroa.12.1290, %bb.t ], [ %i.ge, %.noexc ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.sroa.8.1291, %bb.t ], [ %.0.lcssa.i.i.i.i.i.i, %.noexc ]
  %.sroa.0235.4 = phi ptr [ %.sroa.0235.1292, %bb.t ], [ %i.fg, %.noexc ] ; 2 uses
  %.sroa.8.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8
  %i.gf = load i32, ptr %i.dd, align 4, !tbaa !45
  %i.gg = icmp slt i32 %i.gf, 2
  %i.gh = load ptr, ptr %i.de, align 8, !tbaa !46
  %i.gi = load i64, ptr %i.df, align 8
  %i.gj = mul i64 %i.gi, %indvars.iv335
  %.sink.idx.i168 = select i1 %i.gg, i64 0, i64 %i.gj
  %.sink.i169 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.sink.idx.i168
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sink.i169, i64 %indvars.iv332
  %i.gl = load i32, ptr %i.dg, align 4, !tbaa !45
  %i.gm = icmp slt i32 %i.gl, 2
  %i.gn = load ptr, ptr %i.dh, align 8, !tbaa !46
  %i.go = load i64, ptr %i.di, align 8
  %i.gp = mul i64 %i.go, %indvars.iv335
  %.sink.idx.i170 = select i1 %i.gm, i64 0, i64 %i.gp
  %.sink.i171 = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sink.idx.i170
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sink.i171, i64 %indvars.iv332
  %i.gr = load i64, ptr %i.gk, align 4
  store i64 %i.gr, ptr %i.gq, align 4
  %i.gs = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.gt = mul nsw i32 %i.gs, %.pre-phi
  %i.gu = add nsw i32 %i.gt, %.pre-phi359
  %i.gv = load i32, ptr %i.ct, align 8, !tbaa !110
  %i.gw = mul nsw i32 %i.gu, %i.gv                ; 2 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = load ptr, ptr %14, align 8, !tbaa !63   ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gx ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !42
  %i.hb = add nsw i32 %i.ha, 1                    ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !42
  %i.hc = shl nsw i32 %i.hb, 1
  %i.hd = add i32 %i.hc, %i.gw                    ; 2 uses
  %i.he = add i32 %i.hd, -1
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hf
  store i32 0, ptr %i.hg, align 4, !tbaa !10
  %i.hh = sext i32 %i.hd to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hh
  store i32 %.1293, ptr %i.hi, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.hj = load i32, ptr %i.dj, align 4, !tbaa !45
  %i.hk = icmp slt i32 %i.hj, 2
  %i.hl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.hm = load i64, ptr %i.dl, align 8
  %i.hn = mul i64 %i.hm, %indvars.iv335
  %.sink.idx.i172 = select i1 %i.hk, i64 0, i64 %i.hn
  %.sink.i173 = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sink.idx.i172
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %.sink.i173, i64 %indvars.iv332 ; 2 uses
  %i.hp = load <4 x float>, ptr %i.ho, align 4, !tbaa !10
  store <4 x float> %i.hp, ptr %15, align 16, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hr = load <4 x float>, ptr %i.hq, align 4, !tbaa !10
  store <4 x float> %i.hr, ptr %i.dm, align 16, !tbaa !10
  br label %bb.z

bb.y:                                             ; preds = %bb.ad
  %i.hs = add nsw i32 %.1293, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %.pre355 = load i32, ptr %i.ch, align 4, !tbaa !25
  br label %bb.af

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIN2cv3VecIiLi2EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.v
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.z:                                             ; preds = %bb.x, %bb.ad
  %indvars.iv = phi i64 [ 0, %bb.x ], [ %indvars.iv.next, %bb.ad ] ; 4 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !10 ; 3 uses
  %i.hv = fcmp olt float %i.hu, 0.000000e+00
  br i1 %i.hv, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dx, i64 %indvars.iv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !42
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dy, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !42
  %i.ia = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.ib = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc174 unwind label %bb.ae ; 4 uses

.noexc174:                                        ; preds = %bb.aa
  %i.ic = add nsw i32 %i.hz, %.pre-phi
  %i.id = mul nsw i32 %i.ic, %i.ia
  %i.ie = add nsw i32 %i.hx, %.pre-phi359
  %i.if = add nsw i32 %i.ie, %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  store float %i.hu, ptr %i.ig, align 4, !tbaa !41
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 36
  store i32 %i.if, ptr %i.ih, align 4, !tbaa !42
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  store i32 %.1293, ptr %i.ii, align 4, !tbaa !42
  %.078.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %bb.ac, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc174, %.lr.ph.i.i.i
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i ], [ %.078.i.i.i, %.noexc174 ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !10
  %i.il = fcmp olt float %i.hu, %i.ik             ; 2 uses
  %.in.v.i.i.i = select i1 %i.il, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i, label %bb.ab, label %.lr.ph.i.i.i, !llvm.loop !0

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.im = icmp eq ptr %.0710.i.i.i, %i.cj
  %spec.select.i.i = or i1 %i.im, %i.il
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc174
  %.0.lcssa.i15.i.i = phi ptr [ %i.cj, %.noexc174 ], [ %.0710.i.i.i, %bb.ab ]
  %i.in = phi i1 [ true, %.noexc174 ], [ %spec.select.i.i, %bb.ab ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.in, ptr noundef nonnull %i.ib, ptr noundef nonnull %.0.lcssa.i15.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #21
  %i.io = load i64, ptr %i.cn, align 8, !tbaa !37
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.cn, align 8, !tbaa !37
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.y, label %bb.z, !llvm.loop !97

bb.ae:                                            ; preds = %bb.aa
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bc

bb.af:                                            ; preds = %bb.r, %bb.y
  %i.ir = phi i32 [ %i.em, %bb.r ], [ %.pre355, %bb.y ] ; 4 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1290, %bb.r ], [ %.sroa.12.4, %bb.y ] ; 2 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.1291, %bb.r ], [ %.sroa.8.3, %bb.y ] ; 2 uses
  %.sroa.0235.2 = phi ptr [ %.sroa.0235.1292, %bb.r ], [ %.sroa.0235.4, %bb.y ] ; 2 uses
  %.2 = phi i32 [ %.1293, %bb.r ], [ %i.hs, %bb.y ] ; 2 uses
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp slt i64 %indvars.iv.next333, %i.is
  br i1 %i.it, label %bb.r, label %._crit_edge296.loopexit, !llvm.loop !98

bb.ag:                                            ; preds = %.lr.ph309, %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit
  %i.iu = load ptr, ptr %i.cl, align 8, !tbaa !35 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !41 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 36
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !42 ; 7 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !42 ; 4 uses
  %i.jb = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 48) #23
  %i.jc = load i64, ptr %i.cn, align 8, !tbaa !37
  %i.jd = add i64 %i.jc, -1                       ; 4 uses
  store i64 %i.jd, ptr %i.cn, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.je = load i32, ptr %i.dy, align 4, !tbaa !45
  %i.jf = icmp slt i32 %i.je, 2
  br i1 %i.jf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jg = load ptr, ptr %i.ec, align 8, !tbaa !46
  %i.jh = sext i32 %i.iy to i64
  %i.ji = getelementptr inbounds [32 x i8], ptr %i.jg, i64 %i.jh
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.jj = load i32, ptr %10, align 8, !tbaa !113
  %i.jk = and i32 %i.jj, 16384
  %i.jl = icmp ne i32 %i.jk, 0
  %i.jm = load i32, ptr %i.dz, align 4
  %i.jn = icmp eq i32 %i.jm, 1
  %or.cond.i = select i1 %i.jl, i1 true, i1 %i.jn
  br i1 %or.cond.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jo = load ptr, ptr %i.ec, align 8, !tbaa !46
  %i.jp = sext i32 %i.iy to i64
  %i.jq = getelementptr inbounds [32 x i8], ptr %i.jo, i64 %i.jp
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.jr = load i32, ptr %i.ea, align 8, !tbaa !42
  %i.js = icmp eq i32 %i.jr, 1
  br i1 %i.js, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jt = load ptr, ptr %i.ec, align 8, !tbaa !46
  %i.ju = load i64, ptr %i.ed, align 8, !tbaa !67
  %i.jv = sext i32 %i.iy to i64
  %i.jw = mul i64 %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jw
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.jy = load i32, ptr %i.eb, align 4, !tbaa !25 ; 3 uses
  %i.jz = sdiv i32 %i.iy, %i.jy                   ; 2 uses
  %i.ka = mul nsw i32 %i.jz, %i.jy                ; 0 uses
  %.recomposed = srem i32 %i.iy, %i.jy
  %i.kb = load ptr, ptr %i.ec, align 8, !tbaa !46
  %i.kc = load i64, ptr %i.ed, align 8, !tbaa !67
  %i.kd = sext i32 %i.jz to i64
  %i.ke = mul i64 %i.kc, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ke
  %i.kg = sext i32 %.recomposed to i64
  %i.kh = getelementptr inbounds [32 x i8], ptr %i.kf, i64 %i.kg
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj, %bb.ah
  %.0.i = phi ptr [ %i.ji, %bb.ah ], [ %i.jq, %bb.aj ], [ %i.jx, %bb.al ], [ %i.kh, %bb.am ] ; 2 uses
  %i.ki = load <4 x float>, ptr %.0.i, align 4, !tbaa !10
  store <4 x float> %i.ki, ptr %16, align 16, !tbaa !10
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.kk = load <4 x float>, ptr %i.kj, align 4, !tbaa !10
  store <4 x float> %i.kk, ptr %i.ee, align 16, !tbaa !10
  %i.kl = load i32, ptr %i.ct, align 8, !tbaa !110
  %i.km = mul nsw i32 %i.kl, %i.iy                ; 2 uses
  %i.kn = sext i32 %i.km to i64                   ; 2 uses
  %i.ko = load ptr, ptr %14, align 8, !tbaa !63   ; 4 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kn ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !42 ; 4 uses
  %.not = icmp slt i32 %i.kq, %5
  br i1 %.not, label %bb.ao, label %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit, !llvm.loop !99

bb.ao:                                            ; preds = %bb.an
  %.not15.i = icmp sgt i32 %i.kq, 0
  br i1 %.not15.i, label %.lr.ph.i, label %.loopexit262

bb.ap:                                            ; preds = %.lr.ph.i
  %i.kr = add nuw nsw i32 %.01116.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.kr, %i.kq
  br i1 %exitcond.not.i, label %.loopexit262, label %.lr.ph.i, !llvm.loop !100

.lr.ph.i:                                         ; preds = %bb.ao, %bb.ap
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ap ], [ %i.kn, %bb.ao ]
  %.01116.i = phi i32 [ %i.kr, %bb.ap ], [ 0, %bb.ao ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv.next.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !42
  %i.ku = icmp eq i32 %i.kt, %i.ja
  br i1 %i.ku, label %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit, label %bb.ap, !llvm.loop !99

.loopexit262:                                     ; preds = %bb.ap, %bb.ao
  %i.kv = add nsw i32 %i.kq, 1                    ; 2 uses
  store i32 %i.kv, ptr %i.kp, align 4, !tbaa !42
  %i.kw = shl nsw i32 %i.kv, 1
  %i.kx = add i32 %i.kw, %i.km                    ; 2 uses
  %i.ky = add i32 %i.kx, -1
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kz
  store float %i.iw, ptr %i.la, align 4, !tbaa !10
  %i.lb = sext i32 %i.kx to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.lb
  store i32 %i.ja, ptr %i.lc, align 4, !tbaa !42
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit262, %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185
  %i.ld = phi i64 [ %i.jd, %.loopexit262 ], [ %i.ml, %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185 ] ; 3 uses
  %indvars.iv338 = phi i64 [ 0, %.loopexit262 ], [ %indvars.iv.next339, %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185 ] ; 4 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv338
  %i.lf = load float, ptr %i.le, align 4, !tbaa !10 ; 2 uses
  %i.lg = fcmp olt float %i.lf, 0.000000e+00
  br i1 %i.lg, label %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dx, i64 %indvars.iv338
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !42
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dy, i64 %indvars.iv338
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !42
  %i.ll = add nsw i32 %i.li, %i.iy
  %i.lm = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.ln = mul nsw i32 %i.lm, %i.lk
  %i.lo = add nsw i32 %i.ll, %i.ln                ; 2 uses
  %i.lp = load i32, ptr %i.ct, align 8, !tbaa !110
  %i.lq = mul nsw i32 %i.lo, %i.lp
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  %i.ls = load ptr, ptr %14, align 8, !tbaa !63   ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lr
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !42 ; 3 uses
  %.not134 = icmp slt i32 %i.lu, %5
  br i1 %.not134, label %bb.as, label %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185

bb.as:                                            ; preds = %bb.ar
  %.not15.i178 = icmp sgt i32 %i.lu, 0
  br i1 %.not15.i178, label %.lr.ph.i180, label %.loopexit

bb.at:                                            ; preds = %.lr.ph.i180
  %i.lv = add nuw nsw i32 %.01116.i182, 1         ; 2 uses
  %exitcond.not.i184 = icmp eq i32 %i.lv, %i.lu
  br i1 %exitcond.not.i184, label %.loopexit, label %.lr.ph.i180, !llvm.loop !100

.lr.ph.i180:                                      ; preds = %bb.as, %bb.at
  %indvars.iv.i181 = phi i64 [ %indvars.iv.next.i183, %bb.at ], [ %i.lr, %bb.as ]
  %.01116.i182 = phi i32 [ %i.lv, %bb.at ], [ 0, %bb.as ]
  %indvars.iv.next.i183 = add nsw i64 %indvars.iv.i181, 2 ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.next.i183
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !42
  %i.ly = icmp eq i32 %i.lx, %i.ja
  br i1 %i.ly, label %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185, label %bb.at

.loopexit:                                        ; preds = %bb.at, %bb.as
  %i.lz = fadd float %i.iw, %i.lf                 ; 2 uses
  %i.ma = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc196 unwind label %bb.aw ; 4 uses

.noexc196:                                        ; preds = %.loopexit
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  store float %i.lz, ptr %i.mb, align 4, !tbaa !41
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 36
  store i32 %i.lo, ptr %i.mc, align 4, !tbaa !42
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  store i32 %i.ja, ptr %i.md, align 4, !tbaa !42
  %.078.i.i.i186 = load ptr, ptr %i.ck, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i.i187 = icmp eq ptr %.078.i.i.i186, null
  br i1 %.not9.i.i.i187, label %bb.av, label %.lr.ph.i.i.i188

.lr.ph.i.i.i188:                                  ; preds = %.noexc196, %.lr.ph.i.i.i188
  %.0710.i.i.i189 = phi ptr [ %.07.i.i.i192, %.lr.ph.i.i.i188 ], [ %.078.i.i.i186, %.noexc196 ] ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0710.i.i.i189, i64 32
  %i.mf = load float, ptr %i.me, align 4, !tbaa !10
  %i.mg = fcmp olt float %i.lz, %i.mf             ; 2 uses
  %.in.v.i.i.i190 = select i1 %i.mg, i64 16, i64 24
  %.in.i.i.i191 = getelementptr inbounds nuw i8, ptr %.0710.i.i.i189, i64 %.in.v.i.i.i190
  %.07.i.i.i192 = load ptr, ptr %.in.i.i.i191, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %.07.i.i.i192, null
  br i1 %.not.i.i.i193, label %bb.au, label %.lr.ph.i.i.i188, !llvm.loop !0

bb.au:                                            ; preds = %.lr.ph.i.i.i188
  %i.mh = icmp eq ptr %.0710.i.i.i189, %i.cj
  %spec.select.i.i194 = or i1 %i.mh, %i.mg
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.noexc196
  %.0.lcssa.i15.i.i195 = phi ptr [ %i.cj, %.noexc196 ], [ %.0710.i.i.i189, %bb.au ]
  %i.mi = phi i1 [ true, %.noexc196 ], [ %spec.select.i.i194, %bb.au ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.mi, ptr noundef nonnull %i.ma, ptr noundef nonnull %.0.lcssa.i15.i.i195, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #21
  %i.mj = load i64, ptr %i.cn, align 8, !tbaa !37
  %i.mk = add i64 %i.mj, 1                        ; 2 uses
  store i64 %i.mk, ptr %i.cn, align 8, !tbaa !37
  br label %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185

_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185: ; preds = %.lr.ph.i180, %bb.av, %bb.ar, %bb.aq
  %i.ml = phi i64 [ %i.ld, %bb.aq ], [ %i.mk, %bb.av ], [ %i.ld, %bb.ar ], [ %i.ld, %.lr.ph.i180 ] ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next339, 8
  br i1 %exitcond341.not, label %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit, label %bb.aq, !llvm.loop !101

bb.aw:                                            ; preds = %.loopexit
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.bc

_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit: ; preds = %.lr.ph.i, %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185, %bb.an
  %i.mn = phi i64 [ %i.ml, %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit185 ], [ %i.jd, %bb.an ], [ %i.jd, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %._crit_edge310.loopexit, label %bb.ag

._crit_edge310.loopexit:                          ; preds = %_ZN2cv7optflow12Graph_helper15color_in_targetEii.exit
  %.pre357 = load i32, ptr %i.cf, align 8, !tbaa !24
  br label %._crit_edge310

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit, %.preheader263
  %i.mp = phi i32 [ %.pre357, %._crit_edge310.loopexit ], [ %i.dv, %.preheader263 ]
  %i.mq = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.mr = mul nsw i32 %i.mq, %5
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.mp, i32 noundef %i.mr, i32 noundef 37)
          to label %.preheader260 unwind label %bb.ax

.preheader260:                                    ; preds = %._crit_edge310
  %i.ms = load i32, ptr %i.cf, align 8, !tbaa !24 ; 2 uses
  %i.mt = icmp sgt i32 %i.ms, 0
  br i1 %i.mt, label %.preheader259.lr.ph, label %._crit_edge318

.preheader259.lr.ph:                              ; preds = %.preheader260
  %i.mu = icmp slt i32 %5, 1
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.my = load i32, ptr %i.ch, align 4, !tbaa !25 ; 2 uses
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %.preheader259.preheader, label %._crit_edge318

.preheader259.preheader:                          ; preds = %.preheader259.lr.ph
  %i.na = zext i32 %5 to i64                      ; 2 uses
  br label %.preheader259

.preheader259:                                    ; preds = %.preheader259.preheader, %._crit_edge315.split
  %i.nb = phi i32 [ %i.ms, %.preheader259.preheader ], [ %i.ni, %._crit_edge315.split ]
  %i.nc = phi i32 [ %i.my, %.preheader259.preheader ], [ %i.nj, %._crit_edge315.split ] ; 2 uses
  %indvars.iv349 = phi i64 [ 0, %.preheader259.preheader ], [ %indvars.iv.next350, %._crit_edge315.split ] ; 3 uses
  %i.nd = icmp slt i32 %i.nc, 1
  %brmerge = or i1 %i.nd, %i.mu
  br i1 %brmerge, label %._crit_edge315.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader259
  %i.ne = trunc nuw nsw i64 %indvars.iv349 to i32
  br label %.preheader

bb.ax:                                            ; preds = %._crit_edge310
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge313
  %indvars.iv346 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next347, %._crit_edge313 ] ; 3 uses
  %i.ng = mul nuw nsw i64 %indvars.iv346, %i.na
  %i.nh = trunc nuw nsw i64 %indvars.iv346 to i32
  br label %bb.ay

._crit_edge315.split.loopexit:                    ; preds = %._crit_edge313
  %.pre358 = load i32, ptr %i.cf, align 8, !tbaa !24
  br label %._crit_edge315.split

._crit_edge315.split:                             ; preds = %.preheader259, %._crit_edge315.split.loopexit
  %i.ni = phi i32 [ %.pre358, %._crit_edge315.split.loopexit ], [ %i.nb, %.preheader259 ] ; 2 uses
  %i.nj = phi i32 [ %i.nm, %._crit_edge315.split.loopexit ], [ %i.nc, %.preheader259 ]
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %i.nk = sext i32 %i.ni to i64
  %i.nl = icmp slt i64 %indvars.iv.next350, %i.nk
  br i1 %i.nl, label %.preheader259, label %._crit_edge318, !llvm.loop !102

._crit_edge313:                                   ; preds = %bb.ay
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %i.nm = load i32, ptr %i.ch, align 4, !tbaa !25 ; 2 uses
  %i.nn = sext i32 %i.nm to i64
  %i.no = icmp slt i64 %indvars.iv.next347, %i.nn
  br i1 %i.no, label %.preheader, label %._crit_edge315.split.loopexit, !llvm.loop !103

bb.ay:                                            ; preds = %.preheader, %bb.ay
  %indvars.iv342 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next343, %bb.ay ] ; 3 uses
  %i.np = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.nq = mul nsw i32 %i.np, %i.ne
  %i.nr = add nsw i32 %i.nq, %i.nh
  %i.ns = load i32, ptr %i.ct, align 8, !tbaa !110
  %i.nt = mul nsw i32 %i.nr, %i.ns
  %i.nu = load ptr, ptr %14, align 8, !tbaa !63
  %i.nv = sext i32 %i.nt to i64
  %i.nw = getelementptr [4 x i8], ptr %i.nu, i64 %i.nv
  %i.nx = getelementptr i8, ptr %i.nw, i64 4
  %.idx = shl nuw nsw i64 %indvars.iv342, 3
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.idx
  %i.nz = load i32, ptr %i.mv, align 4, !tbaa !45
  %i.oa = icmp slt i32 %i.nz, 2
  %i.ob = load ptr, ptr %i.mw, align 8, !tbaa !46
  %i.oc = load i64, ptr %i.mx, align 8
  %i.od = mul i64 %i.oc, %indvars.iv349
  %.sink.idx.i198 = select i1 %i.oa, i64 0, i64 %i.od
  %.sink.i199 = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.sink.idx.i198
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.sink.i199, i64 %indvars.iv342
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.ng
  %i.og = load <2 x i32>, ptr %i.ny, align 4, !tbaa !10
  store <2 x i32> %i.og, ptr %i.of, align 4
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next343, %i.na
  br i1 %exitcond345.not, label %._crit_edge313, label %bb.ay, !llvm.loop !104

._crit_edge318:                                   ; preds = %._crit_edge315.split, %.preheader259.lr.ph, %.preheader260
  %.not.i.i.i200 = icmp eq ptr %.sroa.0235.0.lcssa, null
  br i1 %.not.i.i.i200, label %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge318
  %i.oh = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.oi = ptrtoint ptr %.sroa.0235.0.lcssa to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.0.lcssa, i64 noundef %i.oj) #23
  br label %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit:   ; preds = %._crit_edge318, %bb.az
  %i.ok = load ptr, ptr %14, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i.i201, label %_ZN2cv7optflow12Graph_helperD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !68
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.op) #23
  br label %_ZN2cv7optflow12Graph_helperD2Ev.exit

_ZN2cv7optflow12Graph_helperD2Ev.exit:            ; preds = %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.oq = load ptr, ptr %i.ck, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN2cv3VecIiLi2EEEESt10_Select1stIS5_ESt4lessIfESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.oq)
          to label %_ZNSt8multimapIfN2cv3VecIiLi2EEESt4lessIfESaISt4pairIKfS2_EEED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %_ZN2cv7optflow12Graph_helperD2Ev.exit
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #24
  unreachable

_ZNSt8multimapIfN2cv3VecIiLi2EEESt4lessIfESaISt4pairIKfS2_EEED2Ev.exit: ; preds = %_ZN2cv7optflow12Graph_helperD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.bc:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.ax, %bb.ae
  %.sroa.12.3 = phi ptr [ %.sroa.12.0.lcssa, %bb.aw ], [ %.sroa.12.4, %bb.ae ], [ %.sroa.12.0.lcssa, %bb.ax ], [ %.sroa.8.1291, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0235.3 = phi ptr [ %.sroa.0235.0.lcssa, %bb.aw ], [ %.sroa.0235.4, %bb.ae ], [ %.sroa.0235.0.lcssa, %bb.ax ], [ %.sroa.0235.1292, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn142.pn.pn.pn = phi { ptr, i32 } [ %i.mm, %bb.aw ], [ %i.iq, %bb.ae ], [ %i.nf, %bb.ax ], [ %lpad.loopexit.split-lp467, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %.sroa.0235.3, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204, label %.thread

.thread:                                          ; preds = %bb.bc
  %i.ot = ptrtoint ptr %.sroa.12.3 to i64
  %i.ou = ptrtoint ptr %.sroa.0235.3 to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.3, i64 noundef %i.ov) #23
  br label %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204

_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204: ; preds = %bb.bc, %.thread
  %i.ow = load ptr, ptr %14, align 8, !tbaa !63   ; 2 uses
  %.not.i.i.i.i205 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i.i205, label %.body164, label %.body164.sink.split

.body164.sink.split:                              ; preds = %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204, %bb.n
  %.sink401 = phi ptr [ %i.cx, %bb.n ], [ %i.ow, %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204 ] ; 2 uses
  %.pn142.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cw, %bb.n ], [ %.pn142.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204 ]
  %i.ox = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !68
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = ptrtoint ptr %.sink401 to i64
  %i.pb = sub i64 %i.oz, %i.pa
  call void @_ZdlPvm(ptr noundef nonnull %.sink401, i64 noundef %i.pb) #23
  br label %.body164

.body164:                                         ; preds = %.body164.sink.split, %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204, %bb.n
  %.pn142.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.n ], [ %.pn142.pn.pn.pn, %_ZNSt6vectorIN2cv3VecIiLi2EEESaIS2_EED2Ev.exit204 ], [ %.pn142.pn.pn.pn.pn.ph, %.body164.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.pc = load ptr, ptr %i.ck, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN2cv3VecIiLi2EEEESt10_Select1stIS5_ESt4lessIfESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.pc)
          to label %_ZNSt8multimapIfN2cv3VecIiLi2EEESt4lessIfESaISt4pairIKfS2_EEED2Ev.exit208 unwind label %bb.bd

bb.bd:                                            ; preds = %.body164
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #24
  unreachable

_ZNSt8multimapIfN2cv3VecIiLi2EEESt4lessIfESaISt4pairIKfS2_EEED2Ev.exit208: ; preds = %.body164
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt8multimapIfN2cv3VecIiLi2EEESt4lessIfESaISt4pairIKfS2_EEED2Ev.exit208, %bb.q
  %.pn142.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn, %_ZNSt8multimapIfN2cv3VecIiLi2EEESt4lessIfESaISt4pairIKfS2_EEED2Ev.exit208 ], [ %i.eg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.p
  %.pn142.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn, %bb.be ], [ %i.ef, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.d
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn.pn.pn, %bb.bf ], [ %.pn, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn150.pn.pn
}

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #21
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %4, float noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.46", align 1 ; 3 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.std::map", align 8          ; 12 uses
  %10 = alloca %"struct.std::pair.39", align 8    ; 6 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 11 uses
  store i32 0, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not189 = icmp eq ptr %i.g, %i.h
  br i1 %.not189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94, %bb.a
  %.sroa.0136.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0136.1, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ] ; 4 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.11.1, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN2cv7optflow8getGraphERKNS_3MatEf(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(208) %4, float noundef %5)
          to label %bb.o unwind label %bb.y

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94
  %i.l = phi ptr [ %i.h, %.lr.ph ], [ %i.dp, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ] ; 3 uses
  %i.m = phi i64 [ 0, %.lr.ph ], [ %i.dn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ] ; 5 uses
  %.047172 = phi i32 [ 0, %.lr.ph ], [ %i.dm, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ]
  %.sroa.11.0171 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ] ; 8 uses
  %.sroa.8.0170 = phi ptr [ null, %.lr.ph ], [ %.sroa.8.1, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ] ; 4 uses
  %.sroa.0136.0169 = phi ptr [ null, %.lr.ph ], [ %.sroa.0136.1, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94 ] ; 11 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !47
  %.not67 = icmp eq i8 %i.p, 0
  br i1 %.not67, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !10 ; 4 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 4 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !10
  store <2 x float> %i.r, ptr %10, align 8
  store <2 x float> %i.v, ptr %i.i, align 8
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not11.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.x = extractelement <2 x float> %i.r, i64 1
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.z = load float, ptr %i.y, align 4, !tbaa !70 ; 2 uses
  %i.aa = fcmp olt float %i.z, %i.s
  br i1 %i.aa, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = fcmp olt float %i.s, %i.z
  br i1 %i.ab, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 36
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !71
  %i.ae = fcmp olt float %i.ad, %i.x
  br i1 %i.ae, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.d ], [ %.013.i.i.i.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !114

_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.ag, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !70 ; 2 uses
  %i.aj = fcmp olt float %i.s, %i.ai
  br i1 %i.aj, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = fcmp olt float %i.ai, %i.s
  br i1 %i.ak, label %bb.g, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i:       ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load float, ptr %i.al, align 4, !tbaa !71
  %i.an = extractelement <2 x float> %i.r, i64 1
  %i.ao = fcmp olt float %i.an, %i.am
  br i1 %i.ao, label %.critedge.i, label %bb.g

.critedge.i:                                      ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i, %bb.e, %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i, %bb.c
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.a, %bb.c ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i ], [ %.19.i.i.i.i, %bb.e ]
  %i.ap = invoke ptr @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE22_M_emplace_hint_uniqueIJS0_IS1_S1_EEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %.critedge.i._crit_edge unwind label %bb.n ; 0 uses

.critedge.i._crit_edge:                           ; preds = %.critedge.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i._crit_edge, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i, %bb.f
  %i.aq = phi ptr [ %.pre, %.critedge.i._crit_edge ], [ %i.l, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.m ; 2 uses
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !15  ; 6 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.ar, align 4, !tbaa !10
  store i64 %i.au, ptr %i.as, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.j, align 8, !tbaa !15
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %8, align 8, !tbaa !14    ; 7 uses
  %i.ax = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %.invoke, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.l, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #22
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i64, ptr %i.ar, align 4, !tbaa !10
  store i64 %i.bj, ptr %i.bi, align 4, !tbaa !10
  %.not10.i.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc78
  %i.bk = ptrtoaddr ptr %i.bh to i64
  %i.bl = add i64 %i.ax, -8
  %i.bm = sub i64 %i.bl, %i.ay                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check285 = icmp ult i64 %i.bm, 24
  %i.bp = sub i64 %i.ay, %i.bk
  %diff.check287 = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check285, %diff.check287
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader310, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec289 = and i64 %i.bo, 4611686018427387900  ; 3 uses
  %i.bq = shl i64 %n.vec289, 3                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.aw, i64 %i.bq
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next296, %vector.body290 ] ; 2 uses
  %i.bt = shl i64 %index291, 3                    ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.bh, i64 %i.bt ; 2 uses
  %next.gep293 = getelementptr i8, ptr %i.aw, i64 %i.bt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.bu = getelementptr i8, ptr %next.gep293, i64 16
  %wide.load294 = load <2 x i64>, ptr %next.gep293, align 4, !tbaa !10, !alias.scope !132
  %wide.load295 = load <2 x i64>, ptr %i.bu, align 4, !tbaa !10, !alias.scope !132
  %i.bv = getelementptr i8, ptr %next.gep292, i64 16
  store <2 x i64> %wide.load294, ptr %next.gep292, align 4, !tbaa !10, !alias.scope !131
  store <2 x i64> %wide.load295, ptr %i.bv, align 4, !tbaa !10, !alias.scope !131
  %index.next296 = add nuw i64 %index291, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.bw, label %middle.block297, label %vector.body290, !llvm.loop !118

middle.block297:                                  ; preds = %vector.body290
  %cmp.n298 = icmp eq i64 %i.bo, %n.vec289
  br i1 %cmp.n298, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader310

.lr.ph.i.i.i.i.i.preheader310:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block297
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block297 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block297 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader310, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader310 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader310 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i, align 4, !tbaa !10, !alias.scope !132
  store i64 %i.bx, ptr %.012.i.i.i.i.i, align 4, !tbaa !10, !alias.scope !131
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !119

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block297, %.noexc78
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bh, %.noexc78 ], [ %i.br, %middle.block297 ], [ %i.bz, %.lr.ph.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bh, ptr %8, align 8, !tbaa !14
  store ptr %i.ca, ptr %i.j, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !16
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.h
  %i.cc = load ptr, ptr %2, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.m ; 2 uses
  %.not.i79 = icmp eq ptr %.sroa.8.0170, %.sroa.11.0171
  br i1 %.not.i79, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit
  %i.ce = load i64, ptr %i.cd, align 4, !tbaa !10
  store i64 %i.ce, ptr %.sroa.8.0170, align 4, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.8.0170, i64 8
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit
  %i.cg = ptrtoint ptr %.sroa.11.0171 to i64      ; 2 uses
  %i.ch = ptrtoint ptr %.sroa.0136.0169 to i64    ; 3 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 4 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %.invoke, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i80

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i80: ; preds = %bb.l
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i.i81 = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i81, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %.not.i.i.i82 = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i82)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #22
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  %i.cs = load i64, ptr %i.cd, align 4, !tbaa !10
  store i64 %i.cs, ptr %i.cr, align 4, !tbaa !10
  %.not10.i.i.i.i.i83 = icmp eq ptr %.sroa.0136.0169, %.sroa.11.0171
  br i1 %.not10.i.i.i.i.i83, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i88, label %.lr.ph.i.i.i.i.i84.preheader

.lr.ph.i.i.i.i.i84.preheader:                     ; preds = %.noexc93
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cg, -8
  %i.cv = sub i64 %i.cu, %i.ch                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 24
  %i.cy = sub i64 %i.ch, %i.ct
  %diff.check = icmp ugt i64 %i.cy, -32
  %or.cond301 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond301, label %.lr.ph.i.i.i.i.i84.preheader309, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i84.preheader
  %n.vec = and i64 %i.cx, 4611686018427387900     ; 3 uses
  %i.cz = shl i64 %n.vec, 3                       ; 2 uses
  %i.da = getelementptr i8, ptr %i.cq, i64 %i.cz  ; 2 uses
  %i.db = getelementptr i8, ptr %.sroa.0136.0169, i64 %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.dc ; 2 uses
  %next.gep279 = getelementptr i8, ptr %.sroa.0136.0169, i64 %i.dc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.dd = getelementptr i8, ptr %next.gep279, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep279, align 4, !tbaa !10, !alias.scope !134
  %wide.load280 = load <2 x i64>, ptr %i.dd, align 4, !tbaa !10, !alias.scope !134
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !10, !alias.scope !133
  store <2 x i64> %wide.load280, ptr %i.de, align 4, !tbaa !10, !alias.scope !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i88, label %.lr.ph.i.i.i.i.i84.preheader309

.lr.ph.i.i.i.i.i84.preheader309:                  ; preds = %.lr.ph.i.i.i.i.i84.preheader, %middle.block
  %.012.i.i.i.i.i85.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i84.preheader ], [ %i.da, %middle.block ]
  %.0911.i.i.i.i.i86.ph = phi ptr [ %.sroa.0136.0169, %.lr.ph.i.i.i.i.i84.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %.lr.ph.i.i.i.i.i84.preheader309, %.lr.ph.i.i.i.i.i84
  %.012.i.i.i.i.i85 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i84 ], [ %.012.i.i.i.i.i85.ph, %.lr.ph.i.i.i.i.i84.preheader309 ] ; 2 uses
  %.0911.i.i.i.i.i86 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i84 ], [ %.0911.i.i.i.i.i86.ph, %.lr.ph.i.i.i.i.i84.preheader309 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.dg = load i64, ptr %.0911.i.i.i.i.i86, align 4, !tbaa !10, !alias.scope !134
  store i64 %i.dg, ptr %.012.i.i.i.i.i85, align 4, !tbaa !10, !alias.scope !133
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i86, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i85, i64 8 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.dh, %.sroa.11.0171
  br i1 %.not.i.i.i.i.i87, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i88, label %.lr.ph.i.i.i.i.i84, !llvm.loop !124

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i88: ; preds = %.lr.ph.i.i.i.i.i84, %middle.block, %.noexc93
  %.0.lcssa.i.i.i.i.i89 = phi ptr [ %i.cq, %.noexc93 ], [ %i.da, %middle.block ], [ %i.di, %.lr.ph.i.i.i.i.i84 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i89, i64 8
  %.not.i23.i.i90 = icmp eq ptr %.sroa.0136.0169, null
  br i1 %.not.i23.i.i90, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i91, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i88
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.0169, i64 noundef %i.ci) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i91

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i91: ; preds = %bb.m, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i88
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94

bb.n:                                             ; preds = %.critedge.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.as

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i80, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.invoke
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit94: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i91, %bb.k, %bb.b
  %.sroa.0136.1 = phi ptr [ %.sroa.0136.0169, %bb.b ], [ %i.cq, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i91 ], [ %.sroa.0136.0169, %bb.k ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0170, %bb.b ], [ %i.dj, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i91 ], [ %i.cf, %bb.k ]
  %.sroa.11.1 = phi ptr [ %.sroa.11.0171, %bb.b ], [ %i.dk, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i91 ], [ %.sroa.11.0171, %bb.k ] ; 2 uses
  %i.dm = add i32 %.047172, 1                     ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dp = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  %i.du = icmp ugt i64 %i.dt, %i.dn
  br i1 %i.du, label %bb.b, label %._crit_edge, !llvm.loop !125

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN2cv7optflow9sgeo_distERKNS_3MatERKSt6vectorINS_6Point_IfEESaIS6_EEfRS1_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %8, float noundef f0x7F7FFFFF, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !135 ; 6 uses
  %i.dx = icmp slt i32 %i.dw, 3
  br i1 %i.dx, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc95 unwind label %bb.aa

.noexc95:                                         ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.2, i32 noundef 109) #25
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc95
  unreachable

bb.s:                                             ; preds = %.noexc95
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !47
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.t:                                             ; preds = %bb.p
  %i.ee = icmp sgt i32 %i.dw, 0
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.eg = icmp eq i32 %i.dw, 2
  %i.eh = zext i1 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !42
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ek = icmp eq i32 %i.dw, 0
  %i.el = zext i1 %i.ek to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.em = phi i32 [ %i.ej, %bb.u ], [ %i.el, %bb.v ]
  %i.en = icmp eq i32 %i.dw, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp sgt i32 %i.dw, -1
  %i.er = zext i1 %i.eq to i32
  %i.es = select i1 %i.en, i32 %i.ep, i32 %i.er
  %.sroa.2.0.insert.ext.i = zext i32 %i.es to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.em to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i64 %.sroa.0.0.insert.insert.i, i32 noundef 37)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #21
  %i.et = load ptr, ptr %14, align 8, !tbaa !58, !noalias !136 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !60
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body96

.body96:                                          ; preds = %bb.x
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #21
  br label %.body

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ey) #21
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ez) #21
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fa) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !24 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.preheader144.lr.ph, label %._crit_edge188

.preheader144.lr.ph:                              ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fl = load i32, ptr %i.fe, align 4, !tbaa !25 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.preheader144, label %._crit_edge188

.preheader144:                                    ; preds = %.preheader144.lr.ph, %._crit_edge186
  %i.fn = phi i32 [ %i.gn, %._crit_edge186 ], [ %i.fc, %.preheader144.lr.ph ]
  %i.fo = phi i32 [ %i.go, %._crit_edge186 ], [ %i.fl, %.preheader144.lr.ph ] ; 2 uses
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %._crit_edge186 ], [ 0, %.preheader144.lr.ph ] ; 4 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.preheader.lr.ph, label %._crit_edge186

.preheader.lr.ph:                                 ; preds = %.preheader144
  %i.fq = trunc nuw nsw i64 %indvars.iv210 to i32 ; 3 uses
  br label %.preheader

bb.y:                                             ; preds = %._crit_edge
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.z:                                             ; preds = %bb.o
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aa:                                            ; preds = %bb.q, %bb.w
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body96
  %.pn = phi { ptr, i32 } [ %i.ex, %.body96 ], [ %i.ft, %bb.aa ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.ap

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ak
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 4 uses
  %i.fu = load i32, ptr %i.ff, align 4, !tbaa !45
  %.fr190 = freeze i32 %i.fu
  %i.fv = icmp slt i32 %.fr190, 2                 ; 2 uses
  %i.fw = load ptr, ptr %i.fg, align 8, !tbaa !46 ; 3 uses
  %i.fx = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fy = mul i64 %i.fx, %indvars.iv210
  %.sink.idx.i174 = select i1 %i.fv, i64 0, i64 %i.fy
  %.sink.i175 = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.sink.idx.i174
  %i.fz = getelementptr inbounds nuw i8, ptr %.sink.i175, i64 %indvars.iv
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !47  ; 3 uses
  %.not176 = icmp eq i8 %i.ga, -1
  %i.gb = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  br i1 %.not176, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %.preheader
  br i1 %i.fv, label %.lr.ph179.split.us, label %.lr.ph179.split

.lr.ph179.split.us:                               ; preds = %.lr.ph179, %.lr.ph179.split.us
  %i.gc = phi i8 [ %i.gm, %.lr.ph179.split.us ], [ %i.ga, %.lr.ph179 ]
  %.0178.us = phi i32 [ %i.gj, %.lr.ph179.split.us ], [ %i.fq, %.lr.ph179 ]
  %.044177.us = phi i32 [ %i.gi, %.lr.ph179.split.us ], [ %i.gb, %.lr.ph179 ]
  %i.gd = zext i8 %i.gc to i64                    ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dx, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !42
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dy, i64 %i.gd
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !42
  %i.gi = add nsw i32 %i.gf, %.044177.us          ; 3 uses
  %i.gj = add nsw i32 %i.gh, %.0178.us            ; 2 uses
  %i.gk = sext i32 %i.gi to i64
  %i.gl = getelementptr inbounds i8, ptr %i.fw, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !47  ; 2 uses
  %.not.us = icmp eq i8 %i.gm, -1
  br i1 %.not.us, label %._crit_edge180, label %.lr.ph179.split.us, !llvm.loop !128

._crit_edge186.loopexit:                          ; preds = %bb.ak
  %.pre214 = load i32, ptr %i.fb, align 8, !tbaa !24
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %._crit_edge186.loopexit, %.preheader144
  %i.gn = phi i32 [ %.pre214, %._crit_edge186.loopexit ], [ %i.fn, %.preheader144 ] ; 2 uses
  %i.go = phi i32 [ %i.jf, %._crit_edge186.loopexit ], [ %i.fo, %.preheader144 ]
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.gp = sext i32 %i.gn to i64
  %i.gq = icmp slt i64 %indvars.iv.next211, %i.gp
  br i1 %i.gq, label %.preheader144, label %._crit_edge188, !llvm.loop !129

.lr.ph179.split:                                  ; preds = %.lr.ph179, %.lr.ph179.split
  %i.gr = phi i8 [ %i.hd, %.lr.ph179.split ], [ %i.ga, %.lr.ph179 ]
  %.0178 = phi i32 [ %i.gy, %.lr.ph179.split ], [ %i.fq, %.lr.ph179 ]
  %.044177 = phi i32 [ %i.gv, %.lr.ph179.split ], [ %i.gb, %.lr.ph179 ]
  %i.gs = zext i8 %i.gr to i64                    ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dx, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !42
  %i.gv = add nsw i32 %i.gu, %.044177             ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv7optflow24interpolate_irregular_nnERKSt6vectorINS_6Point_IfEESaIS3_EES7_RKS1_IhSaIhEERKNS_3MatEf.Dy, i64 %i.gs
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !42
  %i.gy = add nsw i32 %i.gx, %.0178               ; 3 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = mul i64 %i.fx, %i.gz
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ha
  %i.hb = sext i32 %i.gv to i64
  %i.hc = getelementptr inbounds i8, ptr %.sink.i, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !47  ; 2 uses
  %.not = icmp eq i8 %i.hd, -1
  br i1 %.not, label %._crit_edge180, label %.lr.ph179.split, !llvm.loop !128

._crit_edge180:                                   ; preds = %.lr.ph179.split, %.lr.ph179.split.us, %.preheader
  %.044.lcssa = phi i32 [ %i.gb, %.preheader ], [ %i.gi, %.lr.ph179.split.us ], [ %i.gv, %.lr.ph179.split ]
  %.0.lcssa = phi i32 [ %i.fq, %.preheader ], [ %i.gj, %.lr.ph179.split.us ], [ %i.gy, %.lr.ph179.split ]
  %i.he = insertelement <2 x i32> poison, i32 %.044.lcssa, i64 0
  %i.hf = insertelement <2 x i32> %i.he, i32 %.0.lcssa, i64 1
  %i.hg = sitofp <2 x i32> %i.hf to <2 x float>   ; 5 uses
  %i.hh = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %.not11.i.i.i.i102 = icmp eq ptr %i.hh, null
  br i1 %.not11.i.i.i.i102, label %.critedge.i114, label %.lr.ph.i.i.i.i103.preheader

.lr.ph.i.i.i.i103.preheader:                      ; preds = %._crit_edge180
  %i.hi = extractelement <2 x float> %i.hg, i64 0 ; 4 uses
  %i.hj = extractelement <2 x float> %i.hg, i64 1
  br label %.lr.ph.i.i.i.i103

.lr.ph.i.i.i.i103:                                ; preds = %.lr.ph.i.i.i.i103.preheader, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107
  %.013.i.i.i.i104 = phi ptr [ %.1.i.i.i.i110, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107 ], [ %i.hh, %.lr.ph.i.i.i.i103.preheader ] ; 5 uses
  %.0812.i.i.i.i105 = phi ptr [ %.19.i.i.i.i109, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107 ], [ %i.a, %.lr.ph.i.i.i.i103.preheader ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i104, i64 32
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !70 ; 2 uses
  %i.hm = fcmp olt float %i.hl, %i.hi
  br i1 %i.hm, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i115, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i103
  %i.hn = fcmp ogt float %i.hl, %i.hi
  br i1 %i.hn, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i106

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i106: ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i104, i64 36
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !71
  %i.hq = fcmp olt float %i.hp, %i.hj
  br i1 %i.hq, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i115, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i115: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i106, %.lr.ph.i.i.i.i103
  br label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i115, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i106, %bb.ab
  %.sink.i.i.i.i108 = phi i64 [ 24, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i115 ], [ 16, %bb.ab ], [ 16, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i106 ]
  %.19.i.i.i.i109 = phi ptr [ %.0812.i.i.i.i105, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.i.i.i115 ], [ %.013.i.i.i.i104, %bb.ab ], [ %.013.i.i.i.i104, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i.i.i.i106 ] ; 9 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i104, i64 %.sink.i.i.i.i108
  %.1.i.i.i.i110 = load ptr, ptr %i.hr, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i111 = icmp eq ptr %.1.i.i.i.i110, null
  br i1 %.not.i.i.i.i111, label %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i112, label %.lr.ph.i.i.i.i103, !llvm.loop !114

_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i112: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread10.i.i.i.i107
  %i.hs = icmp eq ptr %.19.i.i.i.i109, %i.a
  br i1 %i.hs, label %.critedge.i114, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i112
  %i.ht = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i109, i64 32
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !70 ; 2 uses
  %i.hv = fcmp ogt float %i.hu, %i.hi
  br i1 %i.hv, label %.critedge.i114, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hw = fcmp olt float %i.hu, %i.hi
  br i1 %i.hw, label %bb.ak, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i113

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i113:    ; preds = %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i109, i64 36
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !71
  %i.hz = extractelement <2 x float> %i.hg, i64 1
  %i.ia = fcmp ogt float %i.hy, %i.hz
  br i1 %i.ia, label %.critedge.i114, label %bb.ak

.critedge.i114:                                   ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i113, %bb.ac, %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i112, %._crit_edge180
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.a, %._crit_edge180 ], [ %.19.i.i.i.i109, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i113 ], [ %.19.i.i.i.i109, %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEE11lower_boundERS4_.exit.i112 ], [ %.19.i.i.i.i109, %bb.ac ]
  %i.ib = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc129 unwind label %bb.al ; 7 uses

.noexc129:                                        ; preds = %.critedge.i114
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32 ; 3 uses
  store <2 x float> %i.hg, ptr %i.ic, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  store <2 x float> zeroinitializer, ptr %i.id, align 4, !tbaa !10
  %i.ie = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 4 dereferenceable(8) %i.ic)
          to label %bb.ae unwind label %_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.ae:                                            ; preds = %.noexc129
  %i.if = extractvalue { ptr, ptr } %i.ie, 0      ; 2 uses
  %i.ig = extractvalue { ptr, ptr } %i.ie, 1      ; 5 uses
  %.not.i127 = icmp eq ptr %i.ig, null
  br i1 %.not.i127, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i128 = icmp ne ptr %i.if, null
  %i.ih = icmp eq ptr %i.ig, %i.a
  %or.cond.i.i.i = or i1 %.not.i.i.i128, %i.ih
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ij = load float, ptr %i.ic, align 4, !tbaa !70 ; 2 uses
  %i.ik = load float, ptr %i.ii, align 4, !tbaa !70 ; 2 uses
  %i.il = fcmp olt float %i.ij, %i.ik
  br i1 %i.il, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.im = fcmp olt float %i.ik, %i.ij
  br i1 %i.im, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 36
  %i.io = load float, ptr %i.in, align 4, !tbaa !71
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 36
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !71
  %i.ir = fcmp olt float %i.io, %i.iq
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.is = phi i1 [ %i.ir, %bb.ai ], [ true, %bb.af ], [ true, %bb.ag ], [ false, %bb.ah ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.is, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #21
  %i.it = load i64, ptr %i.e, align 8, !tbaa !37
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %i.e, align 8, !tbaa !37
  br label %bb.ak

_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc129
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef 48) #23
  br label %.body130

bb.aj:                                            ; preds = %bb.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef 48) #23
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i113, %bb.ad, %bb.aj, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i109, %bb.ad ], [ %.19.i.i.i.i109, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i113 ], [ %i.ib, %.thread.i ], [ %i.if, %bb.aj ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.ix = load i32, ptr %i.fi, align 4, !tbaa !45
  %i.iy = icmp slt i32 %i.ix, 2
  %i.iz = load ptr, ptr %i.fj, align 8, !tbaa !46
  %i.ja = load i64, ptr %i.fk, align 8
  %i.jb = mul i64 %i.ja, %indvars.iv210
  %.sink.idx.i117 = select i1 %i.iy, i64 0, i64 %i.jb
  %.sink.i118 = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.sink.idx.i117
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i118, i64 %indvars.iv
  %i.jd = load <2 x float>, ptr %i.iw, align 4
  %i.je = fsub <2 x float> %i.jd, %i.hg
  store <2 x float> %i.je, ptr %i.jc, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jf = load i32, ptr %i.fe, align 4, !tbaa !25 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next, %i.jg
  br i1 %i.jh, label %.preheader, label %._crit_edge186.loopexit, !llvm.loop !130

bb.al:                                            ; preds = %.critedge.i114
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body130

.body130:                                         ; preds = %_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i, %bb.al
  %eh.lpad-body131 = phi { ptr, i32 } [ %i.ji, %bb.al ], [ %i.iv, %_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #21
  br label %bb.ap

._crit_edge188:                                   ; preds = %._crit_edge186, %.preheader144.lr.ph, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.jj = load ptr, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.jj)
          to label %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %._crit_edge188
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #24
  unreachable

_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit: ; preds = %._crit_edge188
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.not.i.i.i119 = icmp eq ptr %.sroa.0136.0.lcssa, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit
  %i.jm = ptrtoint ptr %.sroa.11.0.lcssa to i64
  %i.jn = ptrtoint ptr %.sroa.0136.0.lcssa to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.0.lcssa, i64 noundef %i.jo) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit, %bb.an
  %i.jp = load ptr, ptr %8, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i120 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit121, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !16
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit121

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

bb.ap:                                            ; preds = %.body130, %.body
  %.pn62.pn = phi { ptr, i32 } [ %eh.lpad-body131, %.body130 ], [ %.pn, %.body ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.z
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %bb.ap ], [ %i.fs, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.y
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn, %bb.aq ], [ %i.fr, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.n, %bb.ar
  %.sroa.0136.0162 = phi ptr [ %.sroa.0136.0.lcssa, %bb.ar ], [ %.sroa.0136.0169, %bb.n ], [ %.sroa.0136.0169, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.11.0151 = phi ptr [ %.sroa.11.0.lcssa, %bb.ar ], [ %.sroa.11.0171, %bb.n ], [ %.sroa.11.0171, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn70.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %bb.ar ], [ %i.dl, %bb.n ], [ %lpad.loopexit.split-lp311, %.loopexit.split-lp.loopexit.split-lp ]
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.jv)
          to label %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit122 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #24
  unreachable

_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit122: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.not.i.i.i123 = icmp eq ptr %.sroa.0136.0162, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit124, label %bb.au

bb.au:                                            ; preds = %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit122
  %i.jy = ptrtoint ptr %.sroa.11.0151 to i64
  %i.jz = ptrtoint ptr %.sroa.0136.0162 to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.0162, i64 noundef %i.ka) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit124

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit124: ; preds = %_ZNSt3mapISt4pairIffES1_St4lessIS1_ESaIS0_IKS1_S1_EEED2Ev.exit122, %bb.au
  %i.kb = load ptr, ptr %8, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit126, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit124
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !16
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit126

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit126: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit124, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn70.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIfSt4pairIKfN2cv3VecIiLi2EEEESt10_Select1stIS5_ESt4lessIfESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  tail call void @_ZNSt8_Rb_treeIfSt4pairIKfN2cv3VecIiLi2EEEESt10_Select1stIS5_ESt4lessIfESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !42     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !147

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !146
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !42
  store i32 %i.s, ptr %i.d, align 4, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !146
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !147

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !42
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !42
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !42
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !138

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !139

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !42
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !141

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !146
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !147

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !146
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !42
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !146
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !42
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !42
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !142

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !42
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !143

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !63    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !42
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !42
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !144

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !145

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !147

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !42
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !42
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !147

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !42
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !42
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !63
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !146
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !68
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !148
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !67
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !74
  %i.g = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.g, ptr %i.b, align 8, !tbaa !47
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.i, ptr %i.h, align 1, !tbaa !47
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !149
  %i.l = load ptr, ptr %0, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  tail call void @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE22_M_emplace_hint_uniqueIJS0_IS1_S1_EEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load <2 x i64>, ptr %2, align 4
  store <2 x i64> %i.c, ptr %i.b, align 4
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load float, ptr %i.b, align 4, !tbaa !70 ; 2 uses
  %i.k = load float, ptr %i.i, align 4, !tbaa !70 ; 2 uses
  %i.l = fcmp olt float %i.j, %i.k
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp olt float %i.k, %i.j
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.o = load float, ptr %i.n, align 4, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.q = load float, ptr %i.p, align 4, !tbaa !71
  %i.r = fcmp olt float %i.o, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.s = phi i1 [ %i.r, %bb.f ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !37
  br label %_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #23
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #23
  br label %_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit7: ; preds = %.thread, %bb.g
  %.sroa.011.015 = phi ptr [ %i.a, %.thread ], [ %i.e, %bb.g ]
  ret ptr %.sroa.011.015
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIffES0_IKS1_S1_ESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !70 ; 2 uses
  %i.i = load float, ptr %2, align 4, !tbaa !70   ; 2 uses
  %i.j = fcmp olt float %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt float %i.i, %i.h
  br i1 %i.k, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread79, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit:         ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.m = load float, ptr %i.l, align 4, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !71
  %i.p = fcmp olt float %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread79

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread79: ; preds = %bb.d, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i = load ptr, ptr %i.q, align 8, !tbaa !43 ; 2 uses
  %.not25.i = icmp eq ptr %.02124.i, null
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread79
  %i.r = load float, ptr %2, align 4, !tbaa !70   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load float, ptr %i.s, align 4
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02126.i = phi ptr [ %.02124.i, %.lr.ph.i ], [ %.02126.i.be, %.backedge.backedge ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02126.i, i64 32
  %i.v = load float, ptr %i.u, align 4, !tbaa !70 ; 3 uses
  %i.w = fcmp olt float %i.r, %i.v
  br i1 %i.w, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.x = fcmp olt float %i.v, %i.r
  br i1 %i.x, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i:       ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.02126.i, i64 36
  %i.z = load float, ptr %i.y, align 4, !tbaa !71
  %i.aa = fcmp olt float %i.t, %i.z
  br i1 %i.aa, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i, %.backedge
  %i.ab = getelementptr inbounds nuw i8, ptr %.02126.i, i64 16
  %.021.i = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread
  %.02126.i.be = phi ptr [ %.021.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i ], [ %.021.i81, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread ]
  br label %.backedge, !llvm.loop !151

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread: ; preds = %bb.e, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.02126.i, i64 24
  %.021.i81 = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %.not.i82 = icmp eq ptr %.021.i81, null
  br i1 %.not.i82, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread79
  %.020.lcssa34.i = phi ptr [ %i.a, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread79 ], [ %.02126.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = icmp eq ptr %.020.lcssa34.i, %i.ae
  br i1 %i.af, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.ag = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i) #26 ; 2 uses
  %.phi.trans.insert105 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.pre106 = load float, ptr %.phi.trans.insert105, align 4, !tbaa !70
  %.pre107 = load float, ptr %2, align 4, !tbaa !70
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread, %bb.f
  %i.ah = phi float [ %.pre107, %bb.f ], [ %i.r, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %i.ai = phi float [ %.pre106, %bb.f ], [ %i.v, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %.020.lcssa33.i = phi ptr [ %.020.lcssa34.i, %bb.f ], [ %.02126.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.ag, %bb.f ], [ %.02126.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %i.aj = fcmp olt float %i.ai, %i.ah
  br i1 %i.aj, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.thread
  %i.ak = fcmp olt float %i.ah, %i.ai
  br i1 %i.ak, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i:      ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 36
  %i.am = load float, ptr %i.al, align 4, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !71
  %i.ap = fcmp olt float %i.am, %i.ao
  br i1 %i.ap, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i, %bb.g
  br label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load float, ptr %2, align 4, !tbaa !70  ; 14 uses
  %i.as = load float, ptr %i.aq, align 4, !tbaa !70 ; 2 uses
  %i.at = fcmp olt float %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fcmp olt float %i.as, %i.ar
  br i1 %i.au, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10:       ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !71
  %i.az = fcmp olt float %i.aw, %i.ay
  br i1 %i.az, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10.thread: ; preds = %bb.h, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, %1
  br i1 %i.bc, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10.thread
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load float, ptr %i.be, align 4, !tbaa !70 ; 2 uses
  %i.bg = fcmp olt float %i.bf, %i.ar
  br i1 %i.bg, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = fcmp olt float %i.ar, %i.bf
  br i1 %i.bh, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread84, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11:       ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !71
  %i.bm = fcmp olt float %i.bj, %i.bl
  br i1 %i.bm, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread84

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread: ; preds = %bb.j, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !75
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  %spec.select = select i1 %i.bp, ptr null, ptr %1
  %spec.select92 = select i1 %i.bp, ptr %i.bd, ptr %1
  br label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread84: ; preds = %bb.k, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i12 = load ptr, ptr %i.bq, align 8, !tbaa !43 ; 2 uses
  %.not25.i13 = icmp eq ptr %.02124.i12, null
  br i1 %.not25.i13, label %._crit_edge.thread.i31, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread84
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bs = load float, ptr %i.br, align 4
  br label %.backedge95

.backedge95:                                      ; preds = %.backedge95.backedge, %.lr.ph.i14
  %.02126.i15 = phi ptr [ %.02124.i12, %.lr.ph.i14 ], [ %.02126.i15.be, %.backedge95.backedge ] ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02126.i15, i64 32
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !70 ; 3 uses
  %i.bv = fcmp olt float %i.ar, %i.bu
  br i1 %i.bv, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18, label %bb.l

bb.l:                                             ; preds = %.backedge95
  %i.bw = fcmp olt float %i.bu, %i.ar
  br i1 %i.bw, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i16

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i16:     ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.02126.i15, i64 36
  %i.by = load float, ptr %i.bx, align 4, !tbaa !71
  %i.bz = fcmp olt float %i.bs, %i.by
  br i1 %i.bz, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i16, %.backedge95
  %i.ca = getelementptr inbounds nuw i8, ptr %.02126.i15, i64 16
  %.021.i20 = load ptr, ptr %i.ca, align 8, !tbaa !43 ; 2 uses
  %.not.i21 = icmp eq ptr %.021.i20, null
  br i1 %.not.i21, label %._crit_edge.thread.i31, label %.backedge95.backedge

.backedge95.backedge:                             ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread
  %.02126.i15.be = phi ptr [ %.021.i20, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18 ], [ %.021.i2086, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread ]
  br label %.backedge95, !llvm.loop !151

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread: ; preds = %bb.l, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i16
  %i.cb = getelementptr inbounds nuw i8, ptr %.02126.i15, i64 24
  %.021.i2086 = load ptr, ptr %i.cb, align 8, !tbaa !43 ; 2 uses
  %.not.i2187 = icmp eq ptr %.021.i2086, null
  br i1 %.not.i2187, label %._crit_edge.i22.thread, label %.backedge95.backedge

._crit_edge.thread.i31:                           ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread84
  %.020.lcssa34.i32 = phi ptr [ %i.a, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread84 ], [ %.02126.i15, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18 ] ; 4 uses
  %i.cc = icmp eq ptr %.020.lcssa34.i32, %i.bb
  br i1 %i.cc, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i31
  %i.cd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i32) #26 ; 2 uses
  %.phi.trans.insert103 = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.pre104 = load float, ptr %.phi.trans.insert103, align 4, !tbaa !70
  br label %._crit_edge.i22.thread

._crit_edge.i22.thread:                           ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread, %bb.m
  %i.ce = phi float [ %.pre104, %bb.m ], [ %i.bu, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread ] ; 2 uses
  %.020.lcssa33.i23 = phi ptr [ %.020.lcssa34.i32, %bb.m ], [ %.02126.i15, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread ] ; 2 uses
  %.sroa.06.0.i24 = phi ptr [ %i.cd, %bb.m ], [ %.02126.i15, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i18.thread ] ; 2 uses
  %i.cf = fcmp olt float %i.ce, %i.ar
  br i1 %i.cf, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i22.thread
  %i.cg = fcmp olt float %i.ar, %i.ce
  br i1 %i.cg, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i26, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i25

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i25:    ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i24, i64 36
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !71
  %i.cl = fcmp olt float %i.ci, %i.ck
  br i1 %i.cl, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i26

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i26: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i25, %bb.n
  br label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34:       ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !71
  %i.cq = fcmp olt float %i.cn, %i.cp
  br i1 %i.cq, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34.thread: ; preds = %bb.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %1
  br i1 %i.ct, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34.thread
  %i.cu = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !70 ; 2 uses
  %i.cx = fcmp olt float %i.ar, %i.cw
  br i1 %i.cx, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = fcmp olt float %i.cw, %i.ar
  br i1 %i.cy, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread88, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35:       ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  %i.dc = load float, ptr %i.db, align 4, !tbaa !71
  %i.dd = fcmp olt float %i.da, %i.dc
  br i1 %i.dd, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread88

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread: ; preds = %bb.o, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !75
  %i.dg = icmp eq ptr %i.df, null                 ; 2 uses
  %spec.select93 = select i1 %i.dg, ptr null, ptr %i.cu
  %spec.select94 = select i1 %i.dg, ptr %1, ptr %i.cu
  br label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread88: ; preds = %bb.p, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i36 = load ptr, ptr %i.dh, align 8, !tbaa !43 ; 2 uses
  %.not25.i37 = icmp eq ptr %.02124.i36, null
  br i1 %.not25.i37, label %._crit_edge.thread.i55, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread88
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dj = load float, ptr %i.di, align 4
  br label %.backedge96

.backedge96:                                      ; preds = %.backedge96.backedge, %.lr.ph.i38
  %.02126.i39 = phi ptr [ %.02124.i36, %.lr.ph.i38 ], [ %.02126.i39.be, %.backedge96.backedge ] ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 32
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !70 ; 3 uses
  %i.dm = fcmp olt float %i.ar, %i.dl
  br i1 %i.dm, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42, label %bb.q

bb.q:                                             ; preds = %.backedge96
  %i.dn = fcmp olt float %i.dl, %i.ar
  br i1 %i.dn, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i40

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i40:     ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 36
  %i.dp = load float, ptr %i.do, align 4, !tbaa !71
  %i.dq = fcmp olt float %i.dj, %i.dp
  br i1 %i.dq, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i40, %.backedge96
  %i.dr = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 16
  %.021.i44 = load ptr, ptr %i.dr, align 8, !tbaa !43 ; 2 uses
  %.not.i45 = icmp eq ptr %.021.i44, null
  br i1 %.not.i45, label %._crit_edge.thread.i55, label %.backedge96.backedge

.backedge96.backedge:                             ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread
  %.02126.i39.be = phi ptr [ %.021.i44, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42 ], [ %.021.i4490, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread ]
  br label %.backedge96, !llvm.loop !151

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread: ; preds = %bb.q, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.i40
  %i.ds = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 24
  %.021.i4490 = load ptr, ptr %i.ds, align 8, !tbaa !43 ; 2 uses
  %.not.i4591 = icmp eq ptr %.021.i4490, null
  br i1 %.not.i4591, label %._crit_edge.i46.thread, label %.backedge96.backedge

._crit_edge.thread.i55:                           ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread88
  %.020.lcssa34.i56 = phi ptr [ %i.a, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread88 ], [ %.02126.i39, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42 ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !35
  %i.dv = icmp eq ptr %.020.lcssa34.i56, %i.du
  br i1 %i.dv, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i55
  %i.dw = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i56) #26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !70
  br label %._crit_edge.i46.thread

._crit_edge.i46.thread:                           ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread, %bb.r
  %i.dx = phi float [ %.pre, %bb.r ], [ %i.dl, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread ] ; 2 uses
  %.020.lcssa33.i47 = phi ptr [ %.020.lcssa34.i56, %bb.r ], [ %.02126.i39, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread ] ; 2 uses
  %.sroa.06.0.i48 = phi ptr [ %i.dw, %bb.r ], [ %.02126.i39, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread.i42.thread ] ; 2 uses
  %i.dy = fcmp olt float %i.dx, %i.ar
  br i1 %i.dy, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i46.thread
  %i.dz = fcmp olt float %i.ar, %i.dx
  br i1 %i.dz, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i50, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i49

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i49:    ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i48, i64 36
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !71
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !71
  %i.ee = fcmp olt float %i.eb, %i.ed
  br i1 %i.ee, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread, label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i50

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i50: ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i49, %bb.s
  br label %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread

_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit.thread:  ; preds = %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i50, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i49, %._crit_edge.i46.thread, %._crit_edge.thread.i55, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i26, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i25, %._crit_edge.i22.thread, %._crit_edge.thread.i31, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread, %bb.c, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34.thread, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10.thread, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit
  %.sroa.078.2 = phi ptr [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34.thread ], [ %spec.select, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit ], [ %spec.select93, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread ], [ %1, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10.thread ], [ null, %bb.c ], [ null, %._crit_edge.i22.thread ], [ %.sroa.06.0.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i ], [ %.sroa.06.0.i24, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i26 ], [ null, %._crit_edge.thread.i31 ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i25 ], [ %.sroa.06.0.i48, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i50 ], [ null, %._crit_edge.thread.i55 ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i49 ], [ null, %._crit_edge.i46.thread ]
  %.sroa.12.2 = phi ptr [ %i.cs, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34.thread ], [ %spec.select92, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit11.thread ], [ %i.f, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit ], [ %spec.select94, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit35.thread ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit34 ], [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit10.thread ], [ %i.f, %bb.c ], [ %.020.lcssa33.i23, %._crit_edge.i22.thread ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ], [ %.020.lcssa33.i, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i26 ], [ %.020.lcssa34.i32, %._crit_edge.thread.i31 ], [ %.020.lcssa33.i23, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i25 ], [ null, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.thread23.i50 ], [ %.020.lcssa34.i56, %._crit_edge.thread.i55 ], [ %.020.lcssa33.i47, %_ZNKSt4lessISt4pairIffEEclERKS1_S4_.exit5.i49 ], [ %.020.lcssa33.i47, %._crit_edge.i46.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !44}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN2cv6Point_IfEE", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!13, !12, i64 16}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!19 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!20 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!21 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !20, i64 4, !6, i64 8, !5, i64 12}
!22 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!23 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !18, i64 56, !19, i64 64, !21, i64 72, !22, i64 128}
!24 = !{!23, !6, i64 8}
!25 = !{!23, !6, i64 12}
!26 = !{!"double", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!29 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!30 = !{!"_ZTSSt18_Rb_tree_node_base", !28, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!31 = !{!"long", !5, i64 0}
!32 = !{!"_ZTSSt15_Rb_tree_header", !30, i64 0, !31, i64 32}
!33 = !{!32, !28, i64 0}
!34 = !{!32, !29, i64 8}
!35 = !{!32, !29, i64 16}
!36 = !{!32, !29, i64 24}
!37 = !{!32, !31, i64 32}
!38 = !{!"_ZTSN2cv4MatxIiLi2ELi1EEE", !5, i64 0}
!39 = !{!"_ZTSN2cv3VecIiLi2EEE", !38, i64 0}
!40 = !{!"_ZTSSt4pairIKfN2cv3VecIiLi2EEEE", !9, i64 0, !39, i64 4}
!41 = !{!40, !9, i64 0}
!42 = !{!6, !6, i64 0}
!43 = !{!29, !29, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!23, !6, i64 4}
!46 = !{!23, !17, i64 24}
!47 = !{!5, !5, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!49 = !{!48, !17, i64 0}
!50 = !{!"_ZTSN2cv6Point_IfEE", !9, i64 0, !9, i64 4}
!51 = !{!50, !9, i64 4}
!52 = !{!50, !9, i64 0}
!53 = !{!"p1 _ZTSN2cv5MatOpE", !11, i64 0}
!54 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !5, i64 0}
!55 = !{!"_ZTSN2cv3VecIdLi4EEE", !54, i64 0}
!56 = !{!"_ZTSN2cv7Scalar_IdEE", !55, i64 0}
!57 = !{!"_ZTSN2cv7MatExprE", !53, i64 0, !6, i64 8, !23, i64 16, !23, i64 224, !23, i64 432, !26, i64 640, !26, i64 648, !56, i64 656}
!58 = !{!57, !53, i64 0}
!59 = !{!"vtable pointer", !4, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 int", !11, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!62, !61, i64 0}
!64 = !{!"llvm.loop.unswitch.partial.disable"}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!31, !31, i64 0}
!68 = !{!62, !61, i64 16}
!69 = !{!"_ZTSSt4pairIffE", !9, i64 0, !9, i64 4}
!70 = !{!69, !9, i64 0}
!71 = !{!69, !9, i64 4}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !72, i64 0, !31, i64 8, !5, i64 16}
!74 = !{!73, !17, i64 0}
!75 = !{!30, !29, i64 24}
!76 = !{!30, !29, i64 16}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = !{!12, !12, i64 0}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!89 = distinct !{!89, !88, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44, !64}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !44, !65, !66}
!96 = distinct !{!96, !44, !65}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !44}
!99 = distinct !{!99, !44}
!100 = distinct !{!100, !44}
!101 = distinct !{!101, !44}
!102 = distinct !{!102, !44, !64}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44}
!105 = !{!89}
!106 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !62, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !106, i64 0}
!108 = !{!"_ZTSSt6vectorIiSaIiEE", !107, i64 0}
!109 = !{!"_ZTSN2cv7optflow12Graph_helperE", !108, i64 0, !6, i64 24}
!110 = !{!109, !6, i64 24}
!111 = !{!93}
!112 = !{!94}
!113 = !{!23, !6, i64 0}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!116 = distinct !{!116, !115, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!117 = distinct !{!117, !115, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!118 = distinct !{!118, !44, !65, !66}
!119 = distinct !{!119, !44, !65}
!120 = distinct !{!120, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!121 = distinct !{!121, !120, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!122 = distinct !{!122, !120, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!123 = distinct !{!123, !44, !65, !66}
!124 = distinct !{!124, !44, !65}
!125 = distinct !{!125, !44}
!126 = distinct !{!126, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!127 = distinct !{!127, !126, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!128 = distinct !{!128, !44}
!129 = distinct !{!129, !44, !64}
!130 = distinct !{!130, !44}
!131 = !{!116}
!132 = !{!117}
!133 = !{!121}
!134 = !{!122}
!135 = !{!21, !6, i64 0}
!136 = !{!127}
!137 = distinct !{!137, !44}
!138 = distinct !{!138, !44, !65, !66}
!139 = distinct !{!139, !44, !66, !65}
!140 = distinct !{!140, !44, !65, !66}
!141 = distinct !{!141, !44, !66, !65}
!142 = distinct !{!142, !44, !65, !66}
!143 = distinct !{!143, !44, !66, !65}
!144 = distinct !{!144, !44, !65, !66}
!145 = distinct !{!145, !44, !66, !65}
!146 = !{!62, !61, i64 8}
!147 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!148 = !{!72, !17, i64 0}
!149 = !{!73, !31, i64 8}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
end_hunk_0
