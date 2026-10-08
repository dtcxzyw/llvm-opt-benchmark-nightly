Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibinit?download=true
inline.NumInlined: 5554
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 77
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZN2cv21findChessboardCornersERKNS_11_InputArrayENS_5Size_IiEERKNS_12_OutputArrayEi:bb.a
bb.fg:                                            ; preds = %bb.ev
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #37
  br label %bb.fj

bb.fh:                                            ; preds = %bb.fe, %bb.fd
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.dy
  %i.sz = add nuw nsw i32 %.093301, 1             ; 2 uses
  %.not394 = icmp samesign ult i32 %i.sz, %i.pw
  br i1 %.not394, label %.preheader282, label %.thread, !llvm.loop !665

bb.fj:                                            ; preds = %bb.ei, %bb.ej, %bb.ek, %bb.ep, %bb.eq, %bb.fh, %bb.fg, %bb.eu
  %.pn211 = phi { ptr, i32 } [ %i.sy, %bb.fh ], [ %i.sx, %bb.fg ], [ %i.sn, %bb.eu ], [ %i.sk, %bb.ek ], [ %i.sj, %bb.ej ], [ %i.si, %bb.ei ], [ %i.sm, %bb.eq ], [ %i.sl, %bb.ep ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #37
  br label %bb.fk

bb.fk:                                            ; preds = %bb.dv, %bb.dw, %bb.fj
  %.pn211.pn = phi { ptr, i32 } [ %.pn211, %bb.fj ], [ %i.pu, %bb.dv ], [ %i.pv, %bb.dw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  br label %bb.fz

.thread:                                          ; preds = %bb.fi
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #37
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  br label %.thread279

.thread272.critedge:                              ; preds = %bb.ff
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #37
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  br label %.thread272

.thread272:                                       ; preds = %bb.dg, %.thread272.critedge, %bb.cs
  %i.ta = call noundef zeroext i1 @_ZN2cv18ChessBoardDetector18checkBoardMonotonyERKSt6vectorINS_6Point_IfEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(3316) %23, ptr noundef nonnull align 8 dereferenceable(24) %18)
  br i1 %i.ta, label %.preheader, label %.thread279

.preheader:                                       ; preds = %.thread272
  %i.tb = load i32, ptr %11, align 8, !tbaa !170  ; 3 uses
  %i.tc = load i32, ptr %i.s, align 4, !tbaa !171 ; 3 uses
  %i.td = mul nsw i32 %i.tc, %i.tb                ; 7 uses
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph303, label %._crit_edge

.lr.ph303:                                        ; preds = %.preheader
  %i.tf = load ptr, ptr %18, align 8, !tbaa !98
  %i.tg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.th = load <2 x i32>, ptr %i.tg, align 8
  %i.ti = add nsw <2 x i32> %i.th, splat (i32 -8)
  %i.tj = sitofp <2 x i32> %i.ti to <2 x float>   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.td to i64
  %i.tk = extractelement <2 x float> %i.tj, i64 0
  %i.tl = extractelement <2 x float> %i.tj, i64 1
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond328.not, label %._crit_edge, label %bb.fm, !llvm.loop !666

bb.fm:                                            ; preds = %.lr.ph303, %bb.fl
  %indvars.iv = phi i64 [ 0, %.lr.ph303 ], [ %indvars.iv.next, %bb.fl ] ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv ; 2 uses
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !167 ; 2 uses
  %i.to = fcmp ole float %i.tn, 8.000000e+00
  %i.tp = fcmp ogt float %i.tn, %i.tl
  %or.cond = select i1 %i.to, i1 true, i1 %i.tp
  br i1 %or.cond, label %.thread279, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !163 ; 2 uses
  %i.ts = fcmp ole float %i.tr, 8.000000e+00
  %i.tt = fcmp ogt float %i.tr, %i.tk
  %or.cond308 = select i1 %i.ts, i1 true, i1 %i.tt
  br i1 %or.cond308, label %.thread279, label %bb.fl

._crit_edge:                                      ; preds = %bb.fl, %.preheader
  %i.tu = or i32 %i.tc, %i.tb
  %i.tv = and i32 %i.tu, 1
  %or.cond393 = icmp eq i32 %i.tv, 0
  br i1 %or.cond393, label %bb.fo, label %.loopexit

bb.fo:                                            ; preds = %._crit_edge
  %i.tw = add nsw i32 %i.tc, -1
  %i.tx = mul nsw i32 %i.tb, %i.tw
  %i.ty = sext i32 %i.tx to i64
  %i.tz = load ptr, ptr %18, align 8, !tbaa !98   ; 8 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ty
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !163
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !163
  %i.uf = fcmp olt float %i.uc, %i.ue
  br i1 %i.uf, label %bb.fp, label %.loopexit

bb.fp:                                            ; preds = %bb.fo
  %i.ug = ashr exact i32 %i.td, 1                 ; 3 uses
  %i.uh = icmp sgt i32 %i.ug, 0
  br i1 %i.uh, label %.lr.ph306.preheader, label %.loopexit

.lr.ph306.preheader:                              ; preds = %bb.fp
  %wide.trip.count332 = zext nneg i32 %i.ug to i64 ; 2 uses
  %xtraiter419 = and i64 %wide.trip.count332, 1
  %i.ui = icmp eq i32 %i.td, 2
  br i1 %i.ui, label %.lr.ph306.epil.preheader, label %.lr.ph306.preheader.new

.lr.ph306.preheader.new:                          ; preds = %.lr.ph306.preheader
  %unroll_iter423 = and i64 %wide.trip.count332, 2147483646
  br label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph306, %.lr.ph306.preheader.new
  %indvars.iv329 = phi i64 [ 0, %.lr.ph306.preheader.new ], [ %indvars.iv.next330.1, %.lr.ph306 ] ; 4 uses
  %niter424 = phi i64 [ 0, %.lr.ph306.preheader.new ], [ %niter424.next.1, %.lr.ph306 ]
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv329 ; 2 uses
  %i.uk = trunc i64 %indvars.iv329 to i32
  %i.ul = xor i32 %i.uk, -1
  %i.um = add i32 %i.td, %i.ul
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.un ; 2 uses
  %i.up = load i64, ptr %i.uj, align 4, !tbaa !102
  %i.uq = load i64, ptr %i.uo, align 4, !tbaa !102
  store i64 %i.uq, ptr %i.uj, align 4, !tbaa !102
  store i64 %i.up, ptr %i.uo, align 4, !tbaa !102
  %indvars.iv.next330 = or disjoint i64 %indvars.iv329, 1 ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.next330 ; 2 uses
  %i.us = trunc i64 %indvars.iv.next330 to i32
  %i.ut = xor i32 %i.us, -1
  %i.uu = add i32 %i.td, %i.ut
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.uv ; 2 uses
  %i.ux = load i64, ptr %i.ur, align 4, !tbaa !102
  %i.uy = load i64, ptr %i.uw, align 4, !tbaa !102
  store i64 %i.uy, ptr %i.ur, align 4, !tbaa !102
  store i64 %i.ux, ptr %i.uw, align 4, !tbaa !102
  %indvars.iv.next330.1 = add nuw nsw i64 %indvars.iv329, 2 ; 2 uses
  %niter424.next.1 = add i64 %niter424, 2         ; 2 uses
  %niter424.ncmp.1 = icmp eq i64 %niter424.next.1, %unroll_iter423
  br i1 %niter424.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph306, !llvm.loop !667

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph306
  %lcmp.mod421.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod421.not, label %.loopexit, label %.lr.ph306.epil.preheader

.lr.ph306.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph306.preheader
  %indvars.iv329.epil.init = phi i64 [ 0, %.lr.ph306.preheader ], [ %indvars.iv.next330.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod422 = trunc i32 %i.ug to i1
  call void @llvm.assume(i1 %lcmp.mod422)
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv329.epil.init ; 2 uses
  %i.va = trunc i64 %indvars.iv329.epil.init to i32
  %i.vb = xor i32 %i.va, -1
  %i.vc = add i32 %i.td, %i.vb
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.vd ; 2 uses
  %i.vf = load i64, ptr %i.uz, align 4, !tbaa !102
  %i.vg = load i64, ptr %i.ve, align 4, !tbaa !102
  store i64 %i.vg, ptr %i.uz, align 4, !tbaa !102
  store i64 %i.vf, ptr %i.ve, align 4, !tbaa !102
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph306.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.fp, %bb.fo, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #37
  %i.vh = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i32 0, ptr %i.vh, align 8, !tbaa !170
  %i.vi = getelementptr inbounds nuw i8, ptr %61, i64 20
  store i32 0, ptr %i.vi, align 4, !tbaa !171
  store i32 16842752, ptr %61, align 8, !tbaa !172
  %i.vj = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %13, ptr %i.vj, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #37
  %i.vk = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.vl = getelementptr inbounds nuw i8, ptr %62, i64 16
  store i64 0, ptr %i.vl, align 8
  store i32 -2096955355, ptr %62, align 8, !tbaa !172
  store ptr %18, ptr %i.vk, align 8, !tbaa !169
  invoke void @_ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %62, i64 8589934594, i64 -1, i64 64424509443, double 1.000000e-01)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #37
  br label %.thread279

bb.fr:                                            ; preds = %.loopexit
  %i.vm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #37
  br label %bb.fz

.thread279:                                       ; preds = %bb.fn, %bb.fm, %.thread, %bb.ct, %.thread272, %bb.fq
  %i.vn = phi i1 [ true, %bb.fq ], [ false, %.thread272 ], [ false, %.thread ], [ false, %bb.ct ], [ false, %bb.fm ], [ false, %bb.fn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #37
  store i32 1124024357, ptr %63, align 8, !tbaa !104
  %i.vo = getelementptr inbounds nuw i8, ptr %63, i64 4
  store i32 1, ptr %i.vo, align 4, !tbaa !105
  %i.vp = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 1, ptr %i.vp, align 8, !tbaa !106
  %i.vq = getelementptr inbounds nuw i8, ptr %63, i64 12 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !99
  %i.vt = load ptr, ptr %18, align 8, !tbaa !98
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = lshr exact i64 %i.vw, 3
  %i.vy = trunc i64 %i.vx to i32
  store i32 %i.vy, ptr %i.vq, align 4, !tbaa !107
  %i.vz = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i32 153, ptr %i.vz, align 8, !tbaa !108
  %i.wa = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %63, i64 32
  %i.wc = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.wd = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.we = getelementptr inbounds nuw i8, ptr %63, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.wa, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.we, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc240 unwind label %bb.fw

.noexc240:                                        ; preds = %.thread279
  %i.wf = getelementptr inbounds nuw i8, ptr %63, i64 128
  %i.wg = getelementptr inbounds nuw i8, ptr %63, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.wg, i8 0, i64 72, i1 false), !tbaa !109
  %i.wh = load i32, ptr %i.vq, align 4, !tbaa !107 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %i.wh, ptr %i.wi, align 4, !tbaa !110
  store i64 8, ptr %i.wf, align 8, !tbaa !109
  %i.wj = load ptr, ptr %18, align 8, !tbaa !111  ; 4 uses
  %i.wk = load ptr, ptr %i.vr, align 8, !tbaa !111
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit, label %bb.fs

bb.fs:                                            ; preds = %.noexc240
  store ptr %i.wj, ptr %i.wa, align 8, !tbaa !112
  store ptr %i.wj, ptr %i.wb, align 8, !tbaa !113
  %i.wm = sext i32 %i.wh to i64
  %i.wn = shl nsw i64 %i.wm, 3
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wn ; 2 uses
  store ptr %i.wo, ptr %i.wc, align 8, !tbaa !114
  store ptr %i.wo, ptr %i.wd, align 8, !tbaa !115
  br label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit

_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit: ; preds = %bb.fs, %.noexc240
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %63, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ft unwind label %bb.fx

bb.ft:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #37
  %i.wp = load ptr, ptr %i.nl, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i241 = icmp eq ptr %i.wp, %.ptr.i5.i
  %i.wq = icmp eq ptr %i.wp, null
  %or.cond.i.i242 = or i1 %.not.i.i.i241, %i.wq
  br i1 %or.cond.i.i242, label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EED2Ev.exit.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @_ZdaPv(ptr noundef nonnull %i.wp) #36
  br label %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EED2Ev.exit.i

_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EED2Ev.exit.i: ; preds = %bb.fu, %bb.ft
  %i.wr = load ptr, ptr %i.le, align 8, !tbaa !92 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wr, %.ptr.i.i
  %i.ws = icmp eq ptr %i.wr, null
  %or.cond.i2.i = or i1 %.not.i.i1.i, %i.ws
  br i1 %or.cond.i2.i, label %_ZN2cv18ChessBoardDetectorD2Ev.exit, label %bb.fv

bb.fv:                                            ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.wr) #36
  br label %_ZN2cv18ChessBoardDetectorD2Ev.exit

_ZN2cv18ChessBoardDetectorD2Ev.exit:              ; preds = %_ZN2cv10AutoBufferINS_16ChessBoardCornerELm29EED2Ev.exit.i, %bb.fv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(3316) %23) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %bb.ga

bb.fw:                                            ; preds = %.thread279
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fx:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #37
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pn217 = phi { ptr, i32 } [ %i.wu, %bb.fx ], [ %i.wt, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #37
  br label %bb.fz

bb.fz:                                            ; preds = %.loopexit320, %.loopexit.split-lp321, %bb.cv, %bb.dh, %bb.fy, %bb.fr, %bb.fk, %bb.dp, %bb.do
  %.pn217.pn = phi { ptr, i32 } [ %.pn217, %bb.fy ], [ %i.vm, %bb.fr ], [ %lpad.loopexit, %bb.cv ], [ %.pn211.pn, %bb.fk ], [ %i.pd, %bb.dp ], [ %.pn170, %bb.do ], [ %lpad.phi319, %bb.dh ], [ %lpad.loopexit322, %.loopexit320 ], [ %lpad.loopexit.split-lp323, %.loopexit.split-lp321 ]
  call void @_ZN2cv18ChessBoardDetectorD2Ev(ptr noundef nonnull align 8 dead_on_return(3316) dereferenceable(3316) %23) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %bb.ge

bb.ga:                                            ; preds = %bb.cg, %_ZN2cv18ChessBoardDetectorD2Ev.exit
  %.095 = phi i1 [ %i.vn, %_ZN2cv18ChessBoardDetectorD2Ev.exit ], [ false, %bb.cg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.wv = load ptr, ptr %18, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i243 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ww = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !100
  %i.wy = ptrtoint ptr %i.wx to i64
  %i.wz = ptrtoint ptr %i.wv to i64
  %i.xa = sub i64 %i.wy, %i.wz
  call void @_ZdlPvm(ptr noundef nonnull %i.wv, i64 noundef %i.xa) #36
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.xb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !188
  %.not.i244 = icmp eq i32 %i.xc, 0
  br i1 %.not.i244, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %12)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.xd = landingpad { ptr, i32 }
          catch ptr null
  %i.xe = extractvalue { ptr, i32 } %i.xd, 0
  call void @__clang_call_terminate(ptr %i.xe) #38
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  ret i1 %.095

bb.ge:                                            ; preds = %bb.ch, %bb.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN2cv10AutoBufferIiLm256EED2Ev.exit150.i, %bb.ca
  %.pn217.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn, %bb.fz ], [ %i.lb, %bb.ch ], [ %i.kt, %bb.ca ], [ %.pn109.i, %_ZN2cv10AutoBufferIiLm256EED2Ev.exit150.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #37
  %.pre335.pre = load ptr, ptr %18, align 8, !tbaa !98 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not.i.i.i245 = icmp eq ptr %.pre335.pre, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit246, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.xf = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !100
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = ptrtoint ptr %.pre335.pre to i64
  %i.xj = sub i64 %i.xh, %i.xi
  call void @_ZdlPvm(ptr noundef nonnull %.pre335.pre, i64 noundef %i.xj) #36
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit246

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit246: ; preds = %bb.aa, %bb.ae, %.thread380, %bb.ge, %bb.gf
  %.pn217.pn.pn.pn.pn.pn379 = phi { ptr, i32 } [ %i.ks, %.thread380 ], [ %.pn217.pn.pn.pn, %bb.ge ], [ %.pn217.pn.pn.pn, %bb.gf ], [ %i.ak, %bb.aa ], [ %i.as, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.gg

bb.gg:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.pn224.pn = phi { ptr, i32 } [ %.pn224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn217.pn.pn.pn.pn.pn379, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit246 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.p, %bb.j ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #37
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.g
  %.pn224.pn.pn = phi { ptr, i32 } [ %.pn224.pn, %bb.gg ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.f
  %.pn224.pn.pn.pn = phi { ptr, i32 } [ %.pn224.pn.pn, %bb.gh ], [ %i.n, %bb.f ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  resume { ptr, i32 } %.pn224.pn.pn.pn
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

end_hunk_0
