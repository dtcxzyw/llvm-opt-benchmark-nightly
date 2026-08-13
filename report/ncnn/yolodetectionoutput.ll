inline.NumInlined: 658
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn19YoloDetectionOutput15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE:bb.a
  br i1 %.not89.not270, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

thread-pre-split:                                 ; preds = %bb.z, %.loopexit.split-lp221, %.loopexit220
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit222, %.loopexit220 ], [ %i.di, %bb.z ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp221 ]
  %.pr416 = load ptr, ptr %7, align 8, !tbaa !65
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split, %.loopexit230
  %i.et = phi ptr [ %.pr416, %thread-pre-split ], [ null, %.loopexit230 ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %thread-pre-split ], [ %lpad.loopexit232, %.loopexit230 ]
  %.not.i.i.i113 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIiSaIiEED2Ev.exit114, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit114

_ZNSt6vectorIiSaIiEED2Ev.exit114:                 ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit225, %.loopexit.split-lp226, %_ZNSt6vectorIiSaIiEED2Ev.exit114
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit114 ], [ %lpad.loopexit227, %.loopexit225 ], [ %lpad.loopexit.split-lp228, %.loopexit.split-lp226 ]
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZNSt6vectorImSaImEED2Ev.exit136

.thread209:                                       ; preds = %bb.b
  %i.ey = icmp eq ptr %.pre, %i.dq
  br i1 %i.ey, label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread209
  %i.ez = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !78 ; 2 uses
  %i.fc = icmp eq ptr %i.ez, %i.fb
  br i1 %i.fc, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.ez to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = lshr exact i64 %i.ff, 2
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = add i32 %i.fh, -1
  call fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i32 noundef 0, i32 noundef %i.fi)
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %bb.ai, %bb.aj
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !42
  %i.fl = ptrtoint ptr %i.dq to i64
  %i.fm = ptrtoint ptr %.pre to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 2 uses
  %i.fo = sdiv exact i64 %i.fn, 20                ; 11 uses
  %i.fp = icmp ugt i64 %i.fo, 2305843009213693951
  br i1 %i.fp, label %.noexc.i, label %.noexc44.i

.noexc.i:                                         ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc117 unwind label %.body.thread

.noexc117:                                        ; preds = %.noexc.i
  unreachable

.noexc44.i:                                       ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  %i.fq = shl nuw nsw i64 %i.fo, 2                ; 3 uses
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #21
          to label %.noexc118 unwind label %.body.thread ; 12 uses

.noexc118:                                        ; preds = %.noexc44.i
  store float 0.000000e+00, ptr %i.fr, align 4, !tbaa !76
  %i.fs = add nsw i64 %i.fo, -1                   ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.preheader.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc118
  %i.fu = getelementptr i8, ptr %i.fr, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !76
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc118
  %min.iters.check = icmp ult i64 %i.fo, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.fv = shl nuw nsw i64 %i.fo, 2
  %scevgep = getelementptr i8, ptr %i.fr, i64 %i.fv
  %i.fw = getelementptr i8, ptr %.pre, i64 %i.fn
  %scevgep522 = getelementptr i8, ptr %i.fw, i64 -4
  %bound0 = icmp ult ptr %i.fr, %scevgep522
  %bound1 = icmp ult ptr %.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fx = and i64 %i.fo, 3                        ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = select i1 %i.fy, i64 4, i64 %i.fx
  %n.vec = sub nsw i64 %i.fo, %i.fz               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ga = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.gb = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gd = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 60
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 68
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !87, !alias.scope !89
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !87, !alias.scope !89
  %i.gn = load float, ptr %i.gj, align 4, !tbaa !87, !alias.scope !89
  %i.go = load float, ptr %i.gk, align 4, !tbaa !87, !alias.scope !89
  %i.gp = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gq = insertelement <4 x float> %i.gp, float %i.gm, i64 1
  %i.gr = insertelement <4 x float> %i.gq, float %i.gn, i64 2
  %i.gs = insertelement <4 x float> %i.gr, float %i.go, i64 3
  %i.gt = load float, ptr %i.ga, align 4, !tbaa !92, !alias.scope !89
  %i.gu = load float, ptr %i.gc, align 4, !tbaa !92, !alias.scope !89
  %i.gv = load float, ptr %i.ge, align 4, !tbaa !92, !alias.scope !89
  %i.gw = load float, ptr %i.gg, align 4, !tbaa !92, !alias.scope !89
  %i.gx = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 3
  %i.hb = fsub fast <4 x float> %i.gs, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.gd, i64 52
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !93, !alias.scope !89
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !93, !alias.scope !89
  %i.hi = load float, ptr %i.he, align 4, !tbaa !93, !alias.scope !89
  %i.hj = load float, ptr %i.hf, align 4, !tbaa !93, !alias.scope !89
  %i.hk = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 1
  %i.hm = insertelement <4 x float> %i.hl, float %i.hi, i64 2
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gd, i64 44
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.hs = load float, ptr %i.ho, align 4, !tbaa !94, !alias.scope !89
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !94, !alias.scope !89
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !94, !alias.scope !89
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !94, !alias.scope !89
  %i.hw = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 1
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 2
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 3
  %i.ia = fsub fast <4 x float> %i.hn, %i.hz
  %i.ib = fmul fast <4 x float> %i.ia, %i.hb
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index
  store <4 x float> %i.ib, ptr %i.ic, align 4, !tbaa !76, !alias.scope !95, !noalias !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !97

.lr.ph.i.preheader:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader.i
  %.03662.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %vector.body ] ; 6 uses
  %i.ie = sub nsw i64 %i.fo, %.03662.i.ph
  %.neg = add nsw i64 %.03662.i.ph, 1
  %xtraiter = and i64 %i.ie, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.if = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %.03662.i.ph ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !76
  %i.ii = load <2 x float>, ptr %i.if, align 4, !tbaa !76
  %i.ij = fsub fast <2 x float> %i.ih, %i.ii
  %i.ik = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.ij)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.03662.i.ph
  store float %i.ik, ptr %i.il, align 4, !tbaa !76
  %i.im = add nuw nsw i64 %.03662.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03662.i.unr = phi i64 [ %.03662.i.ph, %.lr.ph.i.preheader ], [ %i.im, %.lr.ph.i.prol ]
  %i.in = icmp eq i64 %i.fo, %.neg
  br i1 %i.in, label %.lr.ph71.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03662.i = phi i64 [ %i.jb, %.lr.ph.i ], [ %.03662.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.io = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %.03662.i ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load <2 x float>, ptr %i.ip, align 4, !tbaa !76
  %i.ir = load <2 x float>, ptr %i.io, align 4, !tbaa !76
  %i.is = fsub fast <2 x float> %i.iq, %i.ir
  %i.it = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.is)
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.03662.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !76
  %8 = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %.03662.i ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.iw = load <2 x float>, ptr %i.iv, align 4, !tbaa !76
  %i.ix = load <2 x float>, ptr %9, align 4, !tbaa !76
  %i.iy = fsub fast <2 x float> %i.iw, %i.ix
  %i.iz = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.iy)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.03662.i
  %10 = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store float %i.iz, ptr %10, align 4, !tbaa !76
  %i.jb = add nuw i64 %.03662.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.jb, %i.fo
  br i1 %exitcond.not.i.1, label %.lr.ph71.i.preheader, label %.lr.ph.i, !llvm.loop !100

.lr.ph71.i.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  br label %.lr.ph71.i

._crit_edge72.i:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fq) #19
  %i.jc = ptrtoint ptr %.sroa.10191.2 to i64
  br label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  %i.jd = phi ptr [ %i.ll, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ %.pre, %.lr.ph71.i.preheader ] ; 5 uses
  %.sroa.0186.1 = phi ptr [ %.sroa.0186.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph71.i.preheader ] ; 3 uses
  %.sroa.10191.1 = phi ptr [ %.sroa.10191.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph71.i.preheader ]
  %.sroa.15193.1 = phi ptr [ %.sroa.15193.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph71.i.preheader ] ; 4 uses
  %i.je = phi ptr [ %i.lm, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph71.i.preheader ] ; 7 uses
  %i.jf = phi ptr [ %i.ln, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph71.i.preheader ] ; 5 uses
  %storemerge70.i = phi i64 [ %i.lo, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ 0, %.lr.ph71.i.preheader ] ; 5 uses
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 6 uses
  %i.jj = ashr exact i64 %i.ji, 3                 ; 5 uses
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph65.i, label %._crit_edge.thread.i

.lr.ph65.i:                                       ; preds = %.lr.ph71.i
  %i.jm = getelementptr inbounds nuw [20 x i8], ptr %i.jd, i64 %storemerge70.i ; 4 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !92 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %storemerge70.i
  %i.js = load float, ptr %i.jr, align 4, !tbaa !76
  %wide.trip.count.i = and i64 %i.jj, 2147483647
  br label %bb.ak

._crit_edge.i:                                    ; preds = %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i
  %i.jt = icmp eq i32 %.139.i, 0
  br i1 %i.jt, label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i, label %._crit_edge.thread.i

bb.ak:                                            ; preds = %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, %.lr.ph65.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph65.i ], [ %indvars.iv.next.i, %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i ] ; 2 uses
  %.03863.i = phi i32 [ 1, %.lr.ph65.i ], [ %.139.i, %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !101 ; 2 uses
  %i.jw = getelementptr inbounds nuw [20 x i8], ptr %i.jd, i64 %i.jv ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !87 ; 2 uses
  %i.jz = fcmp fast ogt float %i.jn, %i.jy
  br i1 %i.jz, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ka = load float, ptr %i.jo, align 4, !tbaa !87 ; 2 uses
  %i.kb = load float, ptr %i.jw, align 4, !tbaa !92 ; 2 uses
  %i.kc = fcmp fast olt float %i.ka, %i.kb
  br i1 %i.kc, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kd = load float, ptr %i.jp, align 4, !tbaa !94 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !93 ; 2 uses
  %i.kg = fcmp fast ogt float %i.kd, %i.kf
  br i1 %i.kg, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kh = load float, ptr %i.jq, align 4, !tbaa !93 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !94 ; 2 uses
  %i.kk = fcmp fast olt float %i.kh, %i.kj
  br i1 %i.kk, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kl = call nnan ninf nsz float @llvm.minnum.f32(float %i.jy, float %i.ka)
  %i.km = call nnan ninf nsz float @llvm.maxnum.f32(float %i.jn, float %i.kb)
  %i.kn = fsub fast float %i.kl, %i.km
  %i.ko = call nnan ninf nsz float @llvm.minnum.f32(float %i.kf, float %i.kh)
  %i.kp = call nnan ninf nsz float @llvm.maxnum.f32(float %i.kd, float %i.kj)
  %i.kq = fsub fast float %i.ko, %i.kp
  %i.kr = fmul fast float %i.kq, %i.kn
  br label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i

_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.i = phi nsz float [ %i.kr, %bb.ao ], [ 0.000000e+00, %bb.an ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.ak ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.jv
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !76
  %i.ku = fsub fast float %i.js, %.0.i.i
  %i.kv = fadd fast float %i.ku, %i.kt
  %i.kw = fdiv fast float %.0.i.i, %i.kv
  %i.kx = fcmp fast ogt float %i.kw, %i.fk
  %.139.i = select i1 %i.kx, i32 0, i32 %.03863.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond76.not.i, label %._crit_edge.i, label %bb.ak, !llvm.loop !102

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.lr.ph71.i
  %.not.i.i116 = icmp eq ptr %i.jf, %.sroa.15193.1
  br i1 %.not.i.i116, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread.i
  store i64 %storemerge70.i, ptr %i.jf, align 8, !tbaa !101
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

bb.aq:                                            ; preds = %._crit_edge.thread.i
  %i.kz = icmp eq i64 %i.ji, 9223372036854775800
  br i1 %i.kz, label %bb.ar, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
          to label %.noexc46.i unwind label %.loopexit.split-lp.i

.noexc46.i:                                       ; preds = %bb.ar
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jj, i64 1)
  %i.la = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jj ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.jj
  %i.lc = call i64 @llvm.umin.i64(i64 %i.la, i64 1152921504606846975)
  %i.ld = select i1 %i.lb, i64 1152921504606846975, i64 %i.lc ; 3 uses
  %.not.i.i.i45.i = icmp ne i64 %i.ld, 0
  call void @llvm.assume(i1 %.not.i.i.i45.i)
  %i.le = shl nuw nsw i64 %i.ld, 3
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #21
          to label %.noexc47.i unwind label %.loopexit.i ; 5 uses

.noexc47.i:                                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.ji ; 2 uses
  store i64 %storemerge70.i, ptr %i.lg, align 8, !tbaa !101
  %i.lh = icmp sgt i64 %i.ji, 0
  br i1 %i.lh, label %bb.as, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.as:                                            ; preds = %.noexc47.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lf, ptr align 8 %i.je, i64 %i.ji, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.as, %.noexc47.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.ji) #19
  %.pre357 = load ptr, ptr %3, align 8, !tbaa !85
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.lj = phi ptr [ %.pre357, %bb.at ], [ %i.jd, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ]
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.ld
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49.i

.loopexit.split-lp.i:                             ; preds = %bb.ar
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49.i

_ZNSt6vectorImSaImEE9push_backERKm.exit.i:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ap, %._crit_edge.i
  %i.ll = phi ptr [ %i.jd, %._crit_edge.i ], [ %i.lj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.jd, %bb.ap ]
  %.sroa.0186.2 = phi ptr [ %.sroa.0186.1, %._crit_edge.i ], [ %i.lf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0186.1, %bb.ap ] ; 2 uses
  %.sroa.10191.2 = phi ptr [ %.sroa.10191.1, %._crit_edge.i ], [ %i.li, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ky, %bb.ap ] ; 2 uses
  %.sroa.15193.2 = phi ptr [ %.sroa.15193.1, %._crit_edge.i ], [ %i.lk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.15193.1, %bb.ap ] ; 2 uses
  %i.lm = phi ptr [ %i.je, %._crit_edge.i ], [ %i.lf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.je, %bb.ap ]
  %i.ln = phi ptr [ %i.jf, %._crit_edge.i ], [ %i.li, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ky, %bb.ap ]
  %i.lo = add nuw i64 %storemerge70.i, 1          ; 2 uses
  %exitcond78.not.i = icmp eq i64 %i.lo, %i.fo
  br i1 %exitcond78.not.i, label %._crit_edge72.i, label %.lr.ph71.i, !llvm.loop !103

_ZNSt6vectorIfSaIfEED2Ev.exit49.i:                ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fq) #19
  br label %.body

_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit: ; preds = %bb.a, %.thread209, %._crit_edge72.i
  %.sroa.0186.4 = phi ptr [ %.sroa.0186.2, %._crit_edge72.i ], [ null, %.thread209 ], [ null, %bb.a ] ; 6 uses
  %.sroa.10191.3 = phi i64 [ %i.jc, %._crit_edge72.i ], [ 0, %.thread209 ], [ 0, %bb.a ] ; 2 uses
  %.sroa.15193.4 = phi ptr [ %.sroa.15193.2, %._crit_edge72.i ], [ null, %.thread209 ], [ null, %bb.a ] ; 3 uses
  %i.lp = ptrtoint ptr %.sroa.0186.4 to i64       ; 3 uses
  %.not310 = icmp eq i64 %.sroa.10191.3, %i.lp
  br i1 %.not310, label %._crit_edge301, label %.lr.ph300.preheader

.lr.ph300.preheader:                              ; preds = %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit
  %i.lq = sub i64 %.sroa.10191.3, %i.lp
  %i.lr = ashr exact i64 %i.lq, 3
  br label %.lr.ph300

._crit_edge301.loopexit:                          ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ls = ptrtoint ptr %.sroa.10.1 to i64
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %._crit_edge301.loopexit, %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit
  %.sroa.0177.0.lcssa = phi ptr [ null, %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit ], [ %.sroa.0177.3, %._crit_edge301.loopexit ] ; 5 uses
  %.sroa.10.0.lcssa = phi i64 [ 0, %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit ], [ %i.ls, %._crit_edge301.loopexit ]
end_hunk_0
