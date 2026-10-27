Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv26findExtrinsicCameraParams2ERKNS_3MatES2_S2_S2_RS0_S3_i:bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %81, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hh) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20
  br label %bb.dq

bb.dl:                                            ; preds = %bb.dg
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.dm:                                            ; preds = %bb.dh
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.dn:                                            ; preds = %bb.dj
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %bb.dk
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %81) #20
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn348 = phi { ptr, i32 } [ %i.hl, %bb.do ], [ %i.hk, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #20
  br label %bb.gi

bb.dq:                                            ; preds = %bb.di, %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #20
  %i.hm = getelementptr inbounds nuw i8, ptr %82, i64 16
  store i32 0, ptr %i.hm, align 8, !tbaa !51
  %i.hn = getelementptr inbounds nuw i8, ptr %82, i64 20
  store i32 0, ptr %i.hn, align 4, !tbaa !52
  store i32 16842752, ptr %82, align 8, !tbaa !50
  %i.ho = getelementptr inbounds nuw i8, ptr %82, i64 8
  store ptr %79, ptr %i.ho, align 8, !tbaa !12
  %i.hp = invoke noundef double @_ZN2cv11determinantERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %82)
          to label %bb.dr unwind label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.hq = fcmp olt double %i.hp, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20
  br i1 %i.hq, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.hr = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.hs, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !50
  store ptr %79, ptr %i.hr, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %79, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef -1, double noundef -1.000000e+00, double noundef 0.000000e+00)
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.dw

bb.du:                                            ; preds = %bb.dq
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #20
  br label %bb.gi

bb.dv:                                            ; preds = %bb.ds
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.dw:                                            ; preds = %bb.dt, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #20
  %i.hv = getelementptr inbounds nuw i8, ptr %83, i64 16
  store i32 0, ptr %i.hv, align 8, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %83, i64 20
  store i32 0, ptr %i.hw, align 4, !tbaa !52
  store i32 16842752, ptr %83, align 8, !tbaa !50
  %i.hx = getelementptr inbounds nuw i8, ptr %83, i64 8
  store ptr %79, ptr %i.hx, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #20
  %i.hy = getelementptr inbounds nuw i8, ptr %84, i64 16
  store i32 0, ptr %i.hy, align 8, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %84, i64 20
  store i32 0, ptr %i.hz, align 4, !tbaa !52
  store i32 16842752, ptr %84, align 8, !tbaa !50
  %i.ia = getelementptr inbounds nuw i8, ptr %84, i64 8
  store ptr %67, ptr %i.ia, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %86) #20
  %i.ib = getelementptr inbounds nuw i8, ptr %85, i64 16
  store i32 0, ptr %i.ib, align 8, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %85, i64 20
  store i32 0, ptr %i.ic, align 4, !tbaa !52
  store i32 16842752, ptr %85, align 8, !tbaa !50
  %i.id = getelementptr inbounds nuw i8, ptr %85, i64 8
  store ptr %86, ptr %i.id, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #20
  %i.ie = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %87, i64 16
  store i64 0, ptr %i.if, align 8
  store i32 33619968, ptr %87, align 8, !tbaa !50
  store ptr %80, ptr %i.ie, align 8, !tbaa !12
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %83, ptr noundef nonnull align 8 dereferenceable(24) %84, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %85, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %87, i32 noundef 2)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  %i.ig = getelementptr inbounds nuw i8, ptr %79, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !29 ; 9 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %80, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #20
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %88, i32 noundef %., i32 noundef 1, i32 noundef 38)
          to label %.lr.ph480 unwind label %bb.dz

.lr.ph480:                                        ; preds = %bb.dx
  %i.ik = getelementptr inbounds nuw i8, ptr %88, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !29 ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !29 ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 24 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 32 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 40 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.iu = add i32 %., -1                          ; 2 uses
  %i.iv = zext i32 %i.iu to i64                   ; 3 uses
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.iu, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph480
  %i.ix = shl nuw nsw i64 %i.iv, 4
  %i.iy = getelementptr i8, ptr %i.il, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 16     ; 3 uses
  %i.ja = getelementptr i8, ptr %i.ih, i64 48
  %i.jb = mul nuw nsw i64 %i.iv, 24
  %i.jc = getelementptr i8, ptr %i.in, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 24
  %i.je = getelementptr i8, ptr %i.ij, i64 16
  %bound0 = icmp ult ptr %i.il, %i.ja
  %bound1 = icmp ult ptr %i.ih, %i.iz
  %found.conflict = and i1 %bound0, %bound1
  %bound0513 = icmp ult ptr %i.il, %i.jd
  %bound1514 = icmp ult ptr %i.in, %i.iz
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx = or i1 %found.conflict, %found.conflict515
  %bound0516 = icmp ult ptr %i.il, %i.je
  %bound1517 = icmp ult ptr %i.ij, %i.iz
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx, %found.conflict518
  br i1 %conflict.rdx519, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iw, 8589934590              ; 5 uses
  %i.jf = trunc i64 %n.vec to i32
  %i.jg = shl nuw nsw i64 %n.vec, 4
  %i.jh = getelementptr i8, ptr %i.il, i64 %i.jg
  %i.ji = mul nuw nsw i64 %n.vec, 24
  %i.jj = getelementptr i8, ptr %i.in, i64 %i.ji
  %i.jk = load double, ptr %i.ih, align 8, !tbaa !31, !alias.scope !238
  %broadcast.splatinsert522 = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat523 = shufflevector <2 x double> %broadcast.splatinsert522, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = load double, ptr %i.io, align 8, !tbaa !31, !alias.scope !238
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = load double, ptr %i.ip, align 8, !tbaa !31, !alias.scope !238
  %broadcast.splatinsert524 = insertelement <2 x double> poison, double %i.jm, i64 0
  %broadcast.splat525 = shufflevector <2 x double> %broadcast.splatinsert524, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = load double, ptr %i.ij, align 8, !tbaa !31, !alias.scope !239
  %broadcast.splatinsert526 = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.jo = load double, ptr %i.iq, align 8, !tbaa !31, !alias.scope !238
  %broadcast.splatinsert530 = insertelement <2 x double> poison, double %i.jo, i64 0
  %broadcast.splat531 = shufflevector <2 x double> %broadcast.splatinsert530, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = load double, ptr %i.ir, align 8, !tbaa !31, !alias.scope !238
  %broadcast.splatinsert528 = insertelement <2 x double> poison, double %i.jp, i64 0
  %broadcast.splat529 = shufflevector <2 x double> %broadcast.splatinsert528, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = load double, ptr %i.is, align 8, !tbaa !31, !alias.scope !238
  %broadcast.splatinsert532 = insertelement <2 x double> poison, double %i.jq, i64 0
  %broadcast.splat533 = shufflevector <2 x double> %broadcast.splatinsert532, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = load double, ptr %i.it, align 8, !tbaa !31, !alias.scope !239
  %broadcast.splatinsert534 = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.js = shufflevector <2 x double> %broadcast.splatinsert526, <2 x double> %broadcast.splatinsert534, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jt = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.il, i64 %i.jt
  %i.ju = mul i64 %index, 24                      ; 2 uses
  %next.gep520 = getelementptr i8, ptr %i.in, i64 %i.ju ; 4 uses
  %i.jv = getelementptr i8, ptr %i.in, i64 %i.ju  ; 3 uses
  %next.gep521 = getelementptr i8, ptr %i.jv, i64 24 ; 2 uses
  %i.jw = load double, ptr %next.gep520, align 8, !tbaa !31, !alias.scope !240
  %i.jx = load double, ptr %next.gep521, align 8, !tbaa !31, !alias.scope !240
  %i.jy = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.jx, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %next.gep520, i64 8 ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jv, i64 32     ; 2 uses
  %i.kc = load double, ptr %i.ka, align 8, !tbaa !31, !alias.scope !240
  %i.kd = load double, ptr %i.kb, align 8, !tbaa !31, !alias.scope !240
  %i.ke = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.kd, i64 1
  %i.kg = fmul <2 x double> %broadcast.splat, %i.kf
  %i.kh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat523, <2 x double> %i.jz, <2 x double> %i.kg)
  %i.ki = getelementptr inbounds nuw i8, ptr %next.gep520, i64 16 ; 2 uses
  %i.kj = getelementptr i8, ptr %i.jv, i64 40     ; 2 uses
  %i.kk = load double, ptr %i.ki, align 8, !tbaa !31, !alias.scope !240
  %i.kl = load double, ptr %i.kj, align 8, !tbaa !31, !alias.scope !240
  %i.km = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %i.kl, i64 1
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat525, <2 x double> %i.kn, <2 x double> %i.kh)
  %148 = load double, ptr %next.gep520, align 8, !tbaa !31, !alias.scope !240
  %149 = load double, ptr %next.gep521, align 8, !tbaa !31, !alias.scope !240
  %150 = insertelement <2 x double> poison, double %148, i64 0
  %151 = insertelement <2 x double> %150, double %149, i64 1
  %152 = load double, ptr %i.ka, align 8, !tbaa !31, !alias.scope !240
  %153 = load double, ptr %i.kb, align 8, !tbaa !31, !alias.scope !240
  %154 = insertelement <2 x double> poison, double %152, i64 0
  %155 = insertelement <2 x double> %154, double %153, i64 1
  %i.kp = fmul <2 x double> %broadcast.splat529, %155
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat531, <2 x double> %151, <2 x double> %i.kp)
  %156 = load double, ptr %i.ki, align 8, !tbaa !31, !alias.scope !240
  %157 = load double, ptr %i.kj, align 8, !tbaa !31, !alias.scope !240
  %158 = insertelement <2 x double> poison, double %156, i64 0
  %159 = insertelement <2 x double> %158, double %157, i64 1
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat533, <2 x double> %159, <2 x double> %i.kq)
  %i.ks = shufflevector <2 x double> %i.ko, <2 x double> %i.kr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = fadd <4 x double> %i.ks, %i.js
  store <4 x double> %interleaved.vec, ptr %next.gep, align 8, !tbaa !31, !alias.scope !241, !noalias !242
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kt = icmp eq i64 %index.next, %n.vec
  br i1 %i.kt, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iw, %n.vec
  br i1 %cmp.n, label %._crit_edge481, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph480, %middle.block
  %.0478.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph480 ], [ %i.jf, %middle.block ]
  %.0146477.ph = phi ptr [ %i.il, %vector.memcheck ], [ %i.il, %.lr.ph480 ], [ %i.jh, %middle.block ]
  %.0147476.ph = phi ptr [ %i.in, %vector.memcheck ], [ %i.in, %.lr.ph480 ], [ %i.jj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0478 = phi i32 [ %i.lt, %scalar.ph ], [ %.0478.ph, %scalar.ph.preheader ]
  %.0146477 = phi ptr [ %i.lv, %scalar.ph ], [ %.0146477.ph, %scalar.ph.preheader ] ; 3 uses
  %.0147476 = phi ptr [ %i.lu, %scalar.ph ], [ %.0147476.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ku = load double, ptr %i.ih, align 8, !tbaa !31
  %i.kv = load double, ptr %.0147476, align 8, !tbaa !31
  %i.kw = load double, ptr %i.io, align 8, !tbaa !31
  %i.kx = getelementptr inbounds nuw i8, ptr %.0147476, i64 8 ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !31
  %i.kz = fmul double %i.kw, %i.ky
  %i.la = call double @llvm.fmuladd.f64(double %i.ku, double %i.kv, double %i.kz)
  %i.lb = load double, ptr %i.ip, align 8, !tbaa !31
  %i.lc = getelementptr inbounds nuw i8, ptr %.0147476, i64 16 ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !31
  %i.le = call double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %i.la)
  %i.lf = load double, ptr %i.ij, align 8, !tbaa !31
  %i.lg = fadd double %i.le, %i.lf
  store double %i.lg, ptr %.0146477, align 8, !tbaa !31
  %i.lh = load double, ptr %i.iq, align 8, !tbaa !31
  %i.li = load double, ptr %.0147476, align 8, !tbaa !31
  %i.lj = load double, ptr %i.ir, align 8, !tbaa !31
  %i.lk = load double, ptr %i.kx, align 8, !tbaa !31
  %i.ll = fmul double %i.lj, %i.lk
  %i.lm = call double @llvm.fmuladd.f64(double %i.lh, double %i.li, double %i.ll)
  %i.ln = load double, ptr %i.is, align 8, !tbaa !31
  %i.lo = load double, ptr %i.lc, align 8, !tbaa !31
  %i.lp = call double @llvm.fmuladd.f64(double %i.ln, double %i.lo, double %i.lm)
  %i.lq = load double, ptr %i.it, align 8, !tbaa !31
  %i.lr = fadd double %i.lp, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %.0146477, i64 8
  store double %i.lr, ptr %i.ls, align 8, !tbaa !31
  %i.lt = add nuw nsw i32 %.0478, 1               ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0147476, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %.0146477, i64 16
  %exitcond483.not = icmp eq i32 %i.lt, %.
  br i1 %exitcond483.not, label %._crit_edge481, label %scalar.ph, !llvm.loop !220

bb.dy:                                            ; preds = %bb.dw
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  br label %bb.gi

bb.dz:                                            ; preds = %bb.dx
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

._crit_edge481:                                   ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #20
  %i.ly = getelementptr inbounds nuw i8, ptr %90, i64 16
  store i32 0, ptr %i.ly, align 8, !tbaa !51
  %i.lz = getelementptr inbounds nuw i8, ptr %90, i64 20
  store i32 0, ptr %i.lz, align 4, !tbaa !52
  store i32 16842752, ptr %90, align 8, !tbaa !50
  %i.ma = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr %88, ptr %i.ma, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #20
  %i.mb = getelementptr inbounds nuw i8, ptr %91, i64 16
  store i32 0, ptr %i.mb, align 8, !tbaa !51
  %i.mc = getelementptr inbounds nuw i8, ptr %91, i64 20
  store i32 0, ptr %i.mc, align 4, !tbaa !52
  store i32 16842752, ptr %91, align 8, !tbaa !50
  %i.md = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %27, ptr %i.md, align 8, !tbaa !12
  %i.me = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ea unwind label %bb.eh

bb.ea:                                            ; preds = %._crit_edge481
  invoke void @_ZN2cv14findHomographyERKNS_11_InputArrayES2_idRKNS_12_OutputArrayEid(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %89, ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(24) %91, i32 noundef 0, double noundef 3.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %i.me, i32 noundef 2000, double noundef f0x3FEFD70A3D70A3D7)
          to label %bb.eb unwind label %bb.eh

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #20
  %i.mf = getelementptr inbounds nuw i8, ptr %92, i64 16
  store i32 0, ptr %i.mf, align 8, !tbaa !51
  %i.mg = getelementptr inbounds nuw i8, ptr %92, i64 20
  store i32 0, ptr %i.mg, align 4, !tbaa !52
  store i32 16842752, ptr %92, align 8, !tbaa !50
  %i.mh = getelementptr inbounds nuw i8, ptr %92, i64 8
  store ptr %89, ptr %i.mh, align 8, !tbaa !12
  %i.mi = invoke noundef zeroext i1 @_ZN2cv10checkRangeERKNS_11_InputArrayEbPNS_6Point_IiEEdd(ptr noundef nonnull align 8 dereferenceable(24) %92, i1 noundef zeroext true, ptr noundef null, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF)
          to label %bb.ec unwind label %bb.ei

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #20
  br i1 %i.mi, label %bb.ed, label %bb.fx

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !243
  store i64 9223372034707292160, ptr %22, align 8, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !243
  store i32 0, ptr %23, align 4, !tbaa !66, !noalias !243
  %i.mj = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 1, ptr %i.mj, align 4, !tbaa !67, !noalias !243
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %93, ptr noundef nonnull align 8 dereferenceable(208) %89, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23)
          to label %bb.ee unwind label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !244
  store i64 9223372034707292160, ptr %20, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !244
  store i32 1, ptr %21, align 4, !tbaa !66, !noalias !244
  %i.mk = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 2, ptr %i.mk, align 4, !tbaa !67, !noalias !244
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %94, ptr noundef nonnull align 8 dereferenceable(208) %89, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %21)
          to label %bb.ef unwind label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !245
  store i64 9223372034707292160, ptr %18, align 8, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !245
  store i32 2, ptr %19, align 4, !tbaa !66, !noalias !245
  %i.ml = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 3, ptr %i.ml, align 4, !tbaa !67, !noalias !245
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %95, ptr noundef nonnull align 8 dereferenceable(208) %89, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19)
          to label %bb.eg unwind label %bb.el

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !245
  %i.mm = load i32, ptr %89, align 8, !tbaa !20
  %i.mn = and i32 %i.mm, 16384
  %.not473 = icmp eq i32 %i.mn, 0
  br i1 %.not473, label %bb.em, label %bb.er

bb.eh:                                            ; preds = %bb.ea, %._crit_edge481
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #20
  br label %bb.gg

bb.ei:                                            ; preds = %bb.eb
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #20
  br label %bb.gf

bb.ej:                                            ; preds = %bb.ed
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.ek:                                            ; preds = %bb.ee
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.el:                                            ; preds = %bb.ef
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.em:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %97)
          to label %bb.en unwind label %bb.ep

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull @__func__._ZN2cv26findExtrinsicCameraParams2ERKNS_3MatES2_S2_S2_RS0_S3_i, ptr noundef nonnull @.str.1, i32 noundef 1316) #21
          to label %bb.eo unwind label %bb.eq

bb.eo:                                            ; preds = %bb.en
  unreachable

bb.ep:                                            ; preds = %bb.em
end_hunk_0
