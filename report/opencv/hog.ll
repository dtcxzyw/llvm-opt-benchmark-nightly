Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hog?download=true
inline.NumInlined: 1398
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8HOGCache4initEPKNS_13HOGDescriptorERKNS_3MatERKNS_5Size_IiEESA_bSA_:bb.a
.preheader291.us:                                 ; preds = %.preheader291.lr.ph.split, %._crit_edge.split.us.us
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %._crit_edge.split.us.us ], [ 0, %.preheader291.lr.ph.split ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv344
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader291.us
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %bb.l ], [ 0, %.preheader291.us ] ; 3 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !54
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv339
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !54
  %i.fa = fadd float %i.ex, %i.ez
  %i.fb = fneg float %i.fa
  %i.fc = fmul float %i.cq, %i.fb
  %i.fd = call noundef float @expf(float noundef %i.fc) #23
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv339
  store float %i.fd, ptr %i.fe, align 4, !tbaa !54
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340, %wide.trip.count342
  br i1 %exitcond343.not, label %._crit_edge.split.us.us, label %bb.l, !llvm.loop !238

._crit_edge.split.us.us:                          ; preds = %bb.l
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count347
  br i1 %exitcond348.not, label %._crit_edge302.split, label %.preheader291.us, !llvm.loop !239

.lr.ph298:                                        ; preds = %.lr.ph298.preheader439, %.lr.ph298
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %.lr.ph298 ], [ %indvars.iv324.ph, %.lr.ph298.preheader439 ] ; 3 uses
  %i.ff = trunc nuw nsw i64 %indvars.iv324 to i32
  %i.fg = uitofp nneg i32 %i.ff to float
  %i.fh = fsub float %i.fg, %i.dl                 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv324
  %i.fj = fmul float %i.fh, %i.fh
  store float %i.fj, ptr %i.fi, align 4, !tbaa !54
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.preheader292, label %.lr.ph298, !llvm.loop !240

.preheader291:                                    ; preds = %.preheader291.lr.ph.split, %._crit_edge.split
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %._crit_edge.split ], [ 0, %.preheader291.lr.ph.split ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv334
  br label %bb.m

bb.m:                                             ; preds = %.preheader291, %bb.m
  %indvars.iv329 = phi i64 [ 0, %.preheader291 ], [ %indvars.iv.next330, %bb.m ] ; 3 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !54
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv329
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !54
  %i.fo = fadd float %i.fl, %i.fn
  %i.fp = fneg float %i.fo
  %i.fq = fmul float %i.cq, %i.fp
  %i.fr = call noundef float @expf(float noundef %i.fq) #23
  %i.fs = load i64, ptr %i.es, align 8
  %i.ft = mul i64 %i.fs, %indvars.iv334
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ft
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv329
  store float %i.fr, ptr %i.fu, align 4, !tbaa !54
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count342
  br i1 %exitcond333.not, label %._crit_edge.split, label %bb.m, !llvm.loop !238

._crit_edge.split:                                ; preds = %bb.m
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count347
  br i1 %exitcond338.not, label %._crit_edge302.split, label %.preheader291, !llvm.loop !239

._crit_edge302.split:                             ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader293, %.preheader293.thread, %.preheader292
  %i.fv = phi i1 [ false, %.preheader293 ], [ false, %.preheader293.thread ], [ true, %.preheader292 ], [ true, %._crit_edge.split.us.us ], [ true, %._crit_edge.split ]
  %.not.i.i269 = icmp eq ptr %i.dg, %i.da
  br i1 %.not.i.i269, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271, label %bb.n

bb.n:                                             ; preds = %._crit_edge302.split
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #25
  %.pre371 = load ptr, ptr %11, align 8, !tbaa !96
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271

_ZN2cv10AutoBufferIfLm264EED2Ev.exit271:          ; preds = %._crit_edge302.split, %bb.n
  %i.fw = phi ptr [ %i.dh, %._crit_edge302.split ], [ %.pre371, %bb.n ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.not.i.i272 = icmp eq ptr %i.fw, %i.cs
  %i.fx = icmp eq ptr %i.fw, null
  %or.cond.i273 = or i1 %.not.i.i272, %i.fx
  br i1 %or.cond.i273, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, label %bb.o

bb.o:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271
  call void @_ZdaPv(ptr noundef nonnull %i.fw) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274

_ZN2cv10AutoBufferIfLm264EED2Ev.exit274:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit271, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fz = load i32, ptr %i.am, align 8, !tbaa !248
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !249
  %i.gc = mul nsw i32 %i.gb, %i.fz
  %i.gd = sext i32 %i.gc to i64                   ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !129 ; 2 uses
  %i.gg = load ptr, ptr %i.fy, align 8, !tbaa !123 ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = sdiv exact i64 %i.gj, 12                ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %i.gd
  br i1 %i.gl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  %i.gm = sub nuw nsw i64 %i.gd, %i.gk
  invoke void @_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i64 noundef %i.gm)
          to label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit unwind label %bb.y

bb.q:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  %i.gn = icmp ugt i64 %i.gk, %i.gd
  br i1 %i.gn, label %bb.r, label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.gd ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.gf, %i.go
  br i1 %.not.i.i275, label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8HOGCache9BlockDataES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8HOGCache9BlockDataES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.go, ptr %i.ge, align 8, !tbaa !129
  br label %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv8HOGCache9BlockDataES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %bb.p
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.gq = mul nsw i32 %i.ac, 3
  %i.gr = sext i32 %i.gq to i64                   ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !130 ; 2 uses
  %i.gu = load ptr, ptr %i.gp, align 8, !tbaa !125 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = sdiv exact i64 %i.gx, 56                ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %i.gr
  br i1 %i.gz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit
  %i.ha = sub nuw nsw i64 %i.gr, %i.gy
  invoke void @_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i64 noundef %i.ha)
          to label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit unwind label %bb.y

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv8HOGCache9BlockDataESaIS2_EE6resizeEm.exit
  %i.hb = icmp ugt i64 %i.gy, %i.gr
  br i1 %i.hb, label %bb.u, label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw [56 x i8], ptr %i.gu, i64 %i.gr ; 2 uses
  %.not.i.i277 = icmp eq ptr %i.gt, %i.hc
  br i1 %.not.i.i277, label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8HOGCache7PixDataES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8HOGCache7PixDataES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.hc, ptr %i.gs, align 8, !tbaa !130
  br label %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv8HOGCache7PixDataES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.u, %bb.t, %bb.s
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 7 uses
  store i32 0, ptr %i.hd, align 4, !tbaa !131
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  store i32 0, ptr %i.he, align 8, !tbaa !132
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 7 uses
  store i32 0, ptr %i.hf, align 4, !tbaa !133
  br i1 %i.fv, label %.preheader290.lr.ph, label %._crit_edge308.split

.preheader290.lr.ph:                              ; preds = %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit
  %i.hg = sitofp i32 %.sroa.0181.0.copyload to float
  %i.hh = sitofp i32 %.sroa.6.0.copyload to float
  %i.hi = shl nsw i32 %i.ac, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 128
  br i1 %i.dm, label %.preheader290.preheader, label %._crit_edge308.split

.preheader290.preheader:                          ; preds = %.preheader290.lr.ph
  %wide.trip.count357 = zext nneg i32 %.sroa.0188.0.copyload to i64
  %wide.trip.count352 = zext nneg i32 %.sroa.14.0.copyload to i64
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.preheader, %._crit_edge
  %indvars.iv354 = phi i64 [ 0, %.preheader290.preheader ], [ %indvars.iv.next355, %._crit_edge ] ; 3 uses
  %i.hp = trunc nsw i64 %indvars.iv354 to i32     ; 2 uses
  %i.hq = uitofp nneg i32 %i.hp to float
  %i.hr = fadd float %i.hq, 5.000000e-01
  %i.hs = fdiv float %i.hr, %i.hg
  %i.ht = fadd float %i.hs, -5.000000e-01         ; 2 uses
  %i.hu = call float @llvm.floor.f32(float %i.ht)
  %i.hv = fptosi float %i.hu to i32               ; 7 uses
  %i.hw = add nsw i32 %i.hv, 1                    ; 5 uses
  %i.hx = sitofp i32 %i.hv to float
  %i.hy = fsub float %i.ht, %i.hx                 ; 4 uses
  %i.hz = fsub float 1.000000e+00, %i.hy          ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.hn, i64 %indvars.iv354
  %i.ia = insertelement <2 x i32> poison, i32 %i.hp, i64 0
  %i.ib = shufflevector <2 x i32> %i.ia, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ic = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.id = insertelement <4 x float> %i.ic, float %i.hy, i64 1
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %15 = insertelement <2 x float> poison, float %i.hz, i64 0
  %16 = insertelement <2 x float> %15, float %i.hy, i64 1
  br label %bb.v

bb.v:                                             ; preds = %.preheader290, %bb.ad
  %indvars.iv349 = phi i64 [ 0, %.preheader290 ], [ %indvars.iv.next350, %bb.ad ] ; 3 uses
  %i.if = trunc nuw nsw i64 %indvars.iv349 to i32 ; 3 uses
  %i.ig = uitofp nneg i32 %i.if to float
  %i.ih = fadd float %i.ig, 5.000000e-01
  %i.ii = fdiv float %i.ih, %i.hh
  %i.ij = fadd float %i.ii, -5.000000e-01         ; 2 uses
  %i.ik = call float @llvm.floor.f32(float %i.ij)
  %i.il = fptosi float %i.ik to i32               ; 9 uses
  %i.im = add nsw i32 %i.il, 1                    ; 7 uses
  %i.in = sitofp i32 %i.il to float
  %i.io = fsub float %i.ij, %i.in                 ; 8 uses
  %i.ip = load i32, ptr %i.ap, align 8, !tbaa !250 ; 2 uses
  %i.iq = icmp ugt i32 %i.ip, %i.hv               ; 3 uses
  %i.ir = icmp ult i32 %i.hw, %i.ip
  %or.cond = select i1 %i.iq, i1 %i.ir, i1 false
  br i1 %or.cond, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.is = load i32, ptr %i.aq, align 4, !tbaa !251 ; 4 uses
  %i.it = icmp ugt i32 %i.is, %i.il               ; 3 uses
  %i.iu = icmp ult i32 %i.im, %i.is
  %or.cond262 = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %or.cond262, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.iv = load i32, ptr %i.hd, align 4, !tbaa !131 ; 2 uses
  %i.iw = add nsw i32 %i.iv, 1
  store i32 %i.iw, ptr %i.hd, align 4, !tbaa !131
  %i.ix = add nsw i32 %i.iv, %i.hi
  %i.iy = sext i32 %i.ix to i64
  %i.iz = load ptr, ptr %i.gp, align 8, !tbaa !125
  %i.ja = getelementptr inbounds nuw [56 x i8], ptr %i.iz, i64 %i.iy ; 6 uses
  %i.jb = mul nsw i32 %i.is, %i.hv
  %i.jc = add nsw i32 %i.jb, %i.il
  %i.jd = mul nsw i32 %i.jc, %i.ab
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store i32 %i.jd, ptr %i.je, align 8, !tbaa !52
  %i.jf = fsub float 1.000000e+00, %i.io
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jh = load i32, ptr %i.aq, align 4, !tbaa !251
  %i.ji = mul nsw i32 %i.jh, %i.hw
  %i.jj = add nsw i32 %i.ji, %i.il
  %i.jk = mul nsw i32 %i.jj, %i.ab
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !52
  %i.jm = load i32, ptr %i.aq, align 4, !tbaa !251
  %i.jn = mul nsw i32 %i.jm, %i.hv
  %i.jo = add nsw i32 %i.jn, %i.im
  %i.jp = mul nsw i32 %i.jo, %i.ab
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store i32 %i.jp, ptr %i.jq, align 8, !tbaa !52
  %i.jr = load i32, ptr %i.aq, align 4, !tbaa !251
  %i.js = mul nsw i32 %i.jr, %i.hw
  %i.jt = add nsw i32 %i.js, %i.im
  %i.ju = mul nsw i32 %i.jt, %i.ab
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !52
  %i.jw = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jx = insertelement <4 x float> %i.jw, float %i.io, i64 1
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.jz = fmul <4 x float> %i.ie, %i.jy
  store <4 x float> %i.jz, ptr %i.jg, align 8, !tbaa !54
  br label %bb.ad

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.k, %bb.j, %bb.i
  %.pn256 = phi { ptr, i32 } [ %i.em, %bb.i ], [ %i.en, %bb.j ], [ %i.en, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.al

bb.y:                                             ; preds = %bb.s, %bb.p
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.z:                                             ; preds = %bb.w
  %i.kb = load i32, ptr %i.he, align 8, !tbaa !132 ; 2 uses
  %i.kc = add nsw i32 %i.kb, 1
  store i32 %i.kc, ptr %i.he, align 8, !tbaa !132
  %i.kd = add nsw i32 %i.kb, %i.ac
  %i.ke = sext i32 %i.kd to i64
  %i.kf = load ptr, ptr %i.gp, align 8, !tbaa !125
  %i.kg = getelementptr inbounds nuw [56 x i8], ptr %i.kf, i64 %i.ke ; 7 uses
  %i.kh = fsub float 1.000000e+00, %i.io
  %.0219 = select i1 %i.it, float %i.kh, float %i.io
  %.0216 = select i1 %i.it, i32 %i.il, i32 %i.im  ; 2 uses
  %i.ki = mul nsw i32 %i.is, %i.hv
  %i.kj = add nsw i32 %.0216, %i.ki
  %i.kk = mul nsw i32 %i.kj, %i.ab
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i32 %i.kk, ptr %i.kl, align 8, !tbaa !52
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.kn = load i32, ptr %i.aq, align 4, !tbaa !251
  %i.ko = mul nsw i32 %i.kn, %i.hw
  %i.kp = add nsw i32 %i.ko, %.0216
  %i.kq = mul nsw i32 %i.kp, %i.ab
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !52
  %17 = insertelement <2 x float> poison, float %.0219, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x float> %16, %18
  store <2 x float> %19, ptr %i.km, align 8, !tbaa !54
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 28
  store i32 0, ptr %i.ks, align 4, !tbaa !52
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store i32 0, ptr %i.kt, align 8, !tbaa !52
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  store <2 x float> zeroinitializer, ptr %i.ku, align 8, !tbaa !54
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %.0221 = select i1 %i.iq, float %i.hz, float %i.hy ; 3 uses
  %.0218 = select i1 %i.iq, i32 %i.hv, i32 %i.hw  ; 3 uses
  %i.kv = load i32, ptr %i.aq, align 4, !tbaa !251 ; 4 uses
  %i.kw = icmp ugt i32 %i.kv, %i.il               ; 3 uses
  %i.kx = icmp ult i32 %i.im, %i.kv
  %or.cond263 = select i1 %i.kw, i1 %i.kx, i1 false
  br i1 %or.cond263, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ky = load i32, ptr %i.he, align 8, !tbaa !132 ; 2 uses
  %i.kz = add nsw i32 %i.ky, 1
  store i32 %i.kz, ptr %i.he, align 8, !tbaa !132
  %i.la = add nsw i32 %i.ky, %i.ac
  %i.lb = sext i32 %i.la to i64
  %i.lc = load ptr, ptr %i.gp, align 8, !tbaa !125
  %i.ld = getelementptr inbounds nuw [56 x i8], ptr %i.lc, i64 %i.lb ; 8 uses
  %i.le = mul nsw i32 %i.kv, %.0218
  %i.lf = add nsw i32 %i.le, %i.il
  %i.lg = mul nsw i32 %i.lf, %i.ab
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store i32 %i.lg, ptr %i.lh, align 8, !tbaa !52
  %i.li = fsub float 1.000000e+00, %i.io
  %i.lj = fmul float %i.li, %.0221
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  store float %i.lj, ptr %i.lk, align 8, !tbaa !54
  %i.ll = load i32, ptr %i.aq, align 4, !tbaa !251
  %i.lm = mul nsw i32 %i.ll, %.0218
  %i.ln = add nsw i32 %i.lm, %i.im
  %i.lo = mul nsw i32 %i.ln, %i.ab
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !52
  %i.lq = fmul float %i.io, %.0221
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 36
  store float %i.lq, ptr %i.lr, align 4, !tbaa !54
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  store i32 0, ptr %i.ls, align 4, !tbaa !52
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  store i32 0, ptr %i.lt, align 8, !tbaa !52
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  store <2 x float> zeroinitializer, ptr %i.lu, align 8, !tbaa !54
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.lv = load i32, ptr %i.hf, align 4, !tbaa !133 ; 2 uses
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %i.hf, align 4, !tbaa !133
  %i.lx = sext i32 %i.lv to i64
  %i.ly = load ptr, ptr %i.gp, align 8, !tbaa !125
  %i.lz = getelementptr inbounds nuw [56 x i8], ptr %i.ly, i64 %i.lx ; 8 uses
  %i.ma = fsub float 1.000000e+00, %i.io
  %.1220 = select i1 %i.kw, float %i.ma, float %i.io
  %.1217 = select i1 %i.kw, i32 %i.il, i32 %i.im
  %i.mb = mul nsw i32 %i.kv, %.0218
  %i.mc = add nsw i32 %.1217, %i.mb
  %i.md = mul nsw i32 %i.mc, %i.ab
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store i32 %i.md, ptr %i.me, align 8, !tbaa !52
  %i.mf = fmul float %.0221, %.1220
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  store float %i.mf, ptr %i.mg, align 8, !tbaa !54
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 28
  store i32 0, ptr %i.mh, align 4, !tbaa !52
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  store i32 0, ptr %i.mi, align 8, !tbaa !52
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  store i32 0, ptr %i.mj, align 4, !tbaa !52
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 44
  store float 0.000000e+00, ptr %i.mk, align 4, !tbaa !54
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lz, i64 36
  store <2 x float> zeroinitializer, ptr %i.ml, align 4, !tbaa !54
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.x, %bb.z
  %.0222 = phi ptr [ %i.ja, %bb.x ], [ %i.kg, %bb.z ], [ %i.ld, %bb.ab ], [ %i.lz, %bb.ac ] ; 2 uses
  %i.mm = load i32, ptr %i.hj, align 4, !tbaa !247
  %i.mn = load i32, ptr %i.hk, align 4, !tbaa !252
  %i.mo = mul nsw i32 %i.mm, %i.if
  %i.mp = mul nsw i32 %i.mn, %i.if
  %i.mq = insertelement <2 x i32> poison, i32 %i.mo, i64 0
  %i.mr = insertelement <2 x i32> %i.mq, i32 %i.mp, i64 1
  %i.ms = add nsw <2 x i32> %i.mr, %i.ib
  %i.mt = shl nsw <2 x i32> %i.ms, splat (i32 1)
  %i.mu = sext <2 x i32> %i.mt to <2 x i64>
  store <2 x i64> %i.mu, ptr %.0222, align 8, !tbaa !44
  %i.mv = load i32, ptr %i.hl, align 4, !tbaa !134
  %i.mw = icmp slt i32 %i.mv, 2
  %i.mx = load i64, ptr %i.ho, align 8
  %i.my = mul i64 %i.mx, %indvars.iv349
  %.sink.idx.i279 = select i1 %i.mw, i64 0, i64 %i.my
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i279
  %i.mz = load float, ptr %gep, align 4, !tbaa !54
  %i.na = getelementptr inbounds nuw i8, ptr %.0222, i64 48
  store float %i.mz, ptr %i.na, align 8, !tbaa !136
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %wide.trip.count352
  br i1 %exitcond353.not, label %._crit_edge, label %bb.v, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.ad
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %wide.trip.count357
  br i1 %exitcond358.not, label %._crit_edge308.split.loopexit, label %.preheader290, !llvm.loop !242

._crit_edge308.split.loopexit:                    ; preds = %._crit_edge
  %.pre372 = load i32, ptr %i.hf, align 4, !tbaa !133
  %.pre373 = load i32, ptr %i.he, align 8, !tbaa !132
  %.pre374 = load i32, ptr %i.hd, align 4, !tbaa !131
  br label %._crit_edge308.split

._crit_edge308.split:                             ; preds = %._crit_edge308.split.loopexit, %.preheader290.lr.ph, %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit
  %i.nb = phi i32 [ %.pre374, %._crit_edge308.split.loopexit ], [ 0, %.preheader290.lr.ph ], [ 0, %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit ] ; 2 uses
  %i.nc = phi i32 [ %.pre373, %._crit_edge308.split.loopexit ], [ 0, %.preheader290.lr.ph ], [ 0, %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit ] ; 3 uses
  %i.nd = phi i32 [ %.pre372, %._crit_edge308.split.loopexit ], [ 0, %.preheader290.lr.ph ], [ 0, %_ZNSt6vectorIN2cv8HOGCache7PixDataESaIS2_EE6resizeEm.exit ]
  %i.ne = add nsw i32 %i.nc, %i.nd
  %i.nf = add nsw i32 %i.ne, %i.nb
  %i.ng = icmp eq i32 %i.nf, %i.ac
  br i1 %i.ng, label %.preheader289, label %bb.ae

.preheader289:                                    ; preds = %._crit_edge308.split
  %i.nh = icmp sgt i32 %i.nc, 0
  br i1 %i.nh, label %.lr.ph310.preheader, label %.preheader288

.lr.ph310.preheader:                              ; preds = %.preheader289
  %i.ni = sext i32 %i.ac to i64
  br label %.lr.ph310

bb.ae:                                            ; preds = %._crit_edge308.split
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8HOGCache4initEPKNS_13HOGDescriptorERKNS_3MatERKNS_5Size_IiEESA_bSA_, ptr noundef nonnull @.str.1, i32 noundef 856) #24
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ai:                                            ; preds = %bb.af
  %i.nk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nl = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !20
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ah
  %.pn258 = phi { ptr, i32 } [ %i.nj, %bb.ah ], [ %i.nk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.nk, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.al

.preheader288.loopexit:                           ; preds = %.lr.ph310
  %.pre375 = load i32, ptr %i.hd, align 4, !tbaa !131
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %.preheader289
  %i.nq = phi i32 [ %i.oc, %.preheader288.loopexit ], [ %i.nc, %.preheader289 ]
  %i.nr = phi i32 [ %.pre375, %.preheader288.loopexit ], [ %i.nb, %.preheader289 ] ; 2 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %.lr.ph312, label %._crit_edge313

.lr.ph312:                                        ; preds = %.preheader288
  %i.nt = shl nsw i32 %i.ac, 1
  %i.nu = sext i32 %i.nt to i64
  br label %bb.aj

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %.lr.ph310
  %indvars.iv359 = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next360, %.lr.ph310 ] ; 3 uses
  %i.nv = load ptr, ptr %i.gp, align 8, !tbaa !125 ; 2 uses
  %i.nw = getelementptr [56 x i8], ptr %i.nv, i64 %indvars.iv359
  %i.nx = getelementptr [56 x i8], ptr %i.nw, i64 %i.ni
  %i.ny = load i32, ptr %i.hf, align 4, !tbaa !133
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr [56 x i8], ptr %i.nv, i64 %indvars.iv359
  %i.ob = getelementptr [56 x i8], ptr %i.oa, i64 %i.nz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ob, ptr noundef nonnull align 8 dereferenceable(56) %i.nx, i64 56, i1 false), !tbaa.struct !137
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %i.oc = load i32, ptr %i.he, align 8, !tbaa !132 ; 2 uses
  %i.od = sext i32 %i.oc to i64
end_hunk_0
