Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/yolodetectionoutput?download=true
inline.NumInlined: 658
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn19YoloDetectionOutput15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE:bb.a
  %i.ez = sext i32 %i.ey to i64
  %.not89.not = icmp slt i64 %indvars.iv.next, %i.ez
  br i1 %.not89.not, label %.lr.ph, label %._crit_edge, !llvm.loop !84

.loopexit221:                                     ; preds = %bb.u
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cx, ptr %3, align 8
  br label %bb.am

.loopexit.split-lp222:                            ; preds = %bb.t
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.fa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.eo, ptr %3, align 8
  br label %bb.am

._crit_edge:                                      ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fb = phi ptr [ %i.aa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.en, %bb.af ] ; 2 uses
  %.lcssa280 = phi ptr [ %.promoted, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.eo, %bb.af ] ; 3 uses
  store ptr %.lcssa280, ptr %3, align 8
  %.pr = load ptr, ptr %7, align 8, !tbaa !65     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph
  store ptr %i.cx, ptr %3, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %._crit_edge
  %.promoted359 = phi ptr [ %.lcssa280, %._crit_edge ], [ %i.cx, %.thread.loopexit ]
  %i.fc = phi ptr [ %i.fb, %._crit_edge ], [ %i.cw, %.thread.loopexit ]
  %.not89.not270 = phi i1 [ false, %._crit_edge ], [ true, %.thread.loopexit ]
  %.1203 = phi i32 [ %.0291, %._crit_edge ], [ %i.da, %.thread.loopexit ]
  %i.fd = phi ptr [ %.pr, %._crit_edge ], [ %i.cy, %.thread.loopexit ] ; 2 uses
  %i.fe = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %.thread
  %.pre = phi ptr [ %.lcssa280, %._crit_edge ], [ %.promoted359, %.thread ] ; 13 uses
  %i.fi = phi ptr [ %i.fb, %._crit_edge ], [ %i.fc, %.thread ] ; 3 uses
  %.not89.not271 = phi i1 [ false, %._crit_edge ], [ %.not89.not270, %.thread ]
  %.1204 = phi i32 [ %.0291, %._crit_edge ], [ %.1203, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.fj = load ptr, ptr %6, align 8, !tbaa !59    ; 3 uses
  %i.fk = load ptr, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fj, %i.fk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fr, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i ], [ %i.fj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.fl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !63
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #20
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i:  ; preds = %bb.ah, %.lr.ph.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.fr, %i.fk
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ft = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #20
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.fx = load ptr, ptr %5, align 8, !tbaa !53    ; 3 uses
  %i.fy = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not4.i.i.i106 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not4.i.i.i106, label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i107

.lr.ph.i.i.i107:                                  ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i108 = phi ptr [ %i.gf, %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i.i ], [ %i.fx, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.fz = load ptr, ptr %.05.i.i.i108, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i.i.i.i.i109 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i109, label %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i107
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i108, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !68
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #20
  br label %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i107
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i108, i64 24 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.gf, %i.fy
  br i1 %.not.i.i.i110, label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i107, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i111 = load ptr, ptr %5, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit
  %i.gg = phi ptr [ %.pr.i111, %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.fx, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i112 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1.i112, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.gh = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not89.not271, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.am:                                            ; preds = %.loopexit221, %.loopexit.split-lp222, %.loopexit231, %.loopexit.split-lp232, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp234, %.loopexit.split-lp232 ], [ %i.fa, %bb.ag ], [ %lpad.loopexit233, %.loopexit231 ], [ %lpad.loopexit223, %.loopexit221 ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp222 ]
  %i.gl = load ptr, ptr %7, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIiSaIiEED2Ev.exit114, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gm = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gp) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit114

_ZNSt6vectorIiSaIiEED2Ev.exit114:                 ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit226, %.loopexit.split-lp227, %_ZNSt6vectorIiSaIiEED2Ev.exit114
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit114 ], [ %lpad.loopexit228, %.loopexit226 ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp227 ]
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZNSt6vectorImSaImEED2Ev.exit136

.thread210:                                       ; preds = %bb.b
  %i.gq = icmp eq ptr %.pre, %i.fi
  br i1 %i.gq, label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread210
  %i.gr = load ptr, ptr %4, align 8, !tbaa !99    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !99 ; 2 uses
  %i.gu = icmp eq ptr %i.gr, %i.gt
  br i1 %i.gu, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gr to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = lshr exact i64 %i.gx, 2
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = add i32 %i.gz, -1
  call fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i32 noundef 0, i32 noundef %i.ha)
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %bb.ap, %bb.aq
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !43
  %i.hd = ptrtoint ptr %i.fi to i64
  %i.he = ptrtoint ptr %.pre to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 2 uses
  %8 = sdiv exact i64 %i.hf, 20                   ; 11 uses
  %9 = icmp ugt i64 %8, 2305843009213693951
  br i1 %9, label %.noexc.i, label %.noexc44.i

.noexc.i:                                         ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc117 unwind label %.body.thread

.noexc117:                                        ; preds = %.noexc.i
  unreachable

.noexc44.i:                                       ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  %i.hg = shl nuw nsw i64 %8, 2                   ; 3 uses
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #22
          to label %.noexc118 unwind label %.body.thread ; 12 uses

.noexc118:                                        ; preds = %.noexc44.i
  store float 0.000000e+00, ptr %i.hh, align 4, !tbaa !70
  %i.hi = add nsw i64 %8, -1                      ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc118
  %i.hk = getelementptr i8, ptr %i.hh, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hk, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !70
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc118
  %min.iters.check = icmp ult i64 %8, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.hl = shl nuw nsw i64 %8, 2
  %scevgep = getelementptr i8, ptr %i.hh, i64 %i.hl
  %i.hm = getelementptr i8, ptr %.pre, i64 %i.hf
  %scevgep531 = getelementptr i8, ptr %i.hm, i64 -4
  %bound0 = icmp ult ptr %i.hh, %scevgep531
  %bound1 = icmp ult ptr %.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hn = and i64 %8, 3                           ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = select i1 %i.ho, i64 4, i64 %i.hn
  %n.vec = sub nsw i64 %8, %i.hp                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.hq = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.hr = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  %i.ht = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hv = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 60
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 28
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 68
  %i.ib = load float, ptr %i.hx, align 4, !tbaa !106, !alias.scope !107
  %i.ic = load float, ptr %i.hy, align 4, !tbaa !106, !alias.scope !107
  %i.id = load float, ptr %i.hz, align 4, !tbaa !106, !alias.scope !107
  %i.ie = load float, ptr %i.ia, align 4, !tbaa !106, !alias.scope !107
  %i.if = insertelement <4 x float> poison, float %i.ib, i64 0
  %i.ig = insertelement <4 x float> %i.if, float %i.ic, i64 1
  %i.ih = insertelement <4 x float> %i.ig, float %i.id, i64 2
  %i.ii = insertelement <4 x float> %i.ih, float %i.ie, i64 3
  %i.ij = load float, ptr %i.hq, align 4, !tbaa !108, !alias.scope !107
  %i.ik = load float, ptr %i.hs, align 4, !tbaa !108, !alias.scope !107
  %i.il = load float, ptr %i.hu, align 4, !tbaa !108, !alias.scope !107
  %i.im = load float, ptr %i.hw, align 4, !tbaa !108, !alias.scope !107
  %i.in = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 1
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 2
  %i.iq = insertelement <4 x float> %i.ip, float %i.im, i64 3
  %i.ir = fsub fast <4 x float> %i.ii, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.it = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ht, i64 52
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.iw = load float, ptr %i.is, align 4, !tbaa !109, !alias.scope !107
  %i.ix = load float, ptr %i.it, align 4, !tbaa !109, !alias.scope !107
  %i.iy = load float, ptr %i.iu, align 4, !tbaa !109, !alias.scope !107
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !109, !alias.scope !107
  %i.ja = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.jb = insertelement <4 x float> %i.ja, float %i.ix, i64 1
  %i.jc = insertelement <4 x float> %i.jb, float %i.iy, i64 2
  %i.jd = insertelement <4 x float> %i.jc, float %i.iz, i64 3
  %i.je = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ht, i64 44
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  %i.ji = load float, ptr %i.je, align 4, !tbaa !110, !alias.scope !107
  %i.jj = load float, ptr %i.jf, align 4, !tbaa !110, !alias.scope !107
  %i.jk = load float, ptr %i.jg, align 4, !tbaa !110, !alias.scope !107
  %i.jl = load float, ptr %i.jh, align 4, !tbaa !110, !alias.scope !107
  %i.jm = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.jn = insertelement <4 x float> %i.jm, float %i.jj, i64 1
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.jl, i64 3
  %i.jq = fsub fast <4 x float> %i.jd, %i.jp
  %i.jr = fmul fast <4 x float> %i.jq, %i.ir
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index
  store <4 x float> %i.jr, ptr %i.js, align 4, !tbaa !70, !alias.scope !111, !noalias !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %scalar.ph.preheader, label %vector.body, !llvm.loop !88

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i
  %.03963.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ] ; 6 uses
  %i.ju = sub nsw i64 %8, %.03963.i.ph
  %.neg = add nsw i64 %.03963.i.ph, 1
  %xtraiter = and i64 %i.ju, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jv = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %.03963.i.ph ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load <2 x float>, ptr %i.jw, align 4, !tbaa !70
  %i.jy = load <2 x float>, ptr %i.jv, align 4, !tbaa !70
  %i.jz = fsub fast <2 x float> %i.jx, %i.jy
  %i.ka = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.jz)
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.03963.i.ph
  store float %i.ka, ptr %i.kb, align 4, !tbaa !70
  %i.kc = add nuw nsw i64 %.03963.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03963.i.unr = phi i64 [ %.03963.i.ph, %scalar.ph.preheader ], [ %i.kc, %scalar.ph.prol ]
  %i.kd = icmp eq i64 %8, %.neg
  br i1 %i.kd, label %.lr.ph73.i.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03963.i = phi i64 [ %i.kt, %scalar.ph ], [ %.03963.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ke = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %.03963.i ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load <2 x float>, ptr %i.kf, align 4, !tbaa !70
  %i.kh = load <2 x float>, ptr %i.ke, align 4, !tbaa !70
  %i.ki = fsub fast <2 x float> %i.kg, %i.kh
  %i.kj = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.ki)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.03963.i
  store float %i.kj, ptr %i.kk, align 4, !tbaa !70
  %i.kl = add nuw i64 %.03963.i, 1                ; 2 uses
  %i.km = getelementptr inbounds nuw [20 x i8], ptr %.pre, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load <2 x float>, ptr %i.kn, align 4, !tbaa !70
  %i.kp = load <2 x float>, ptr %i.km, align 4, !tbaa !70
  %i.kq = fsub fast <2 x float> %i.ko, %i.kp
  %i.kr = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.kq)
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.kl
  store float %i.kr, ptr %i.ks, align 4, !tbaa !70
  %i.kt = add nuw i64 %.03963.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.kt, %8
  br i1 %exitcond.not.i.1, label %.lr.ph73.i.preheader, label %scalar.ph, !llvm.loop !89

.lr.ph73.i.preheader:                             ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  br label %.lr.ph73.i

._crit_edge74.i:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hg) #20
  %i.ku = ptrtoint ptr %.sroa.11.2 to i64
  br label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  %i.kv = phi ptr [ %i.nf, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ %.pre, %.lr.ph73.i.preheader ] ; 5 uses
  %.sroa.0188.1 = phi ptr [ %.sroa.0188.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 3 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ]
  %.sroa.17.1 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 5 uses
  %i.kw = phi ptr [ %i.ng, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 7 uses
  %i.kx = phi ptr [ %i.nh, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 5 uses
  %storemerge72.i = phi i64 [ %i.ni, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ 0, %.lr.ph73.i.preheader ] ; 5 uses
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kw to i64               ; 2 uses
  %i.la = sub i64 %i.ky, %i.kz                    ; 5 uses
  %i.lb = ashr exact i64 %i.la, 3                 ; 5 uses
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph66.i, label %._crit_edge.thread.i

.lr.ph66.i:                                       ; preds = %.lr.ph73.i
  %i.le = getelementptr inbounds nuw [20 x i8], ptr %i.kv, i64 %storemerge72.i ; 4 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !108 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %storemerge72.i
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !70
  %wide.trip.count.i = and i64 %i.lb, 2147483647
  br label %bb.ar

._crit_edge.i:                                    ; preds = %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i
  %i.ll = icmp eq i32 %spec.select.i, 0
  br i1 %i.ll, label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i, label %._crit_edge.thread.i

bb.ar:                                            ; preds = %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, %.lr.ph66.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i ] ; 2 uses
  %.03464.i = phi i32 [ 1, %.lr.ph66.i ], [ %spec.select.i, %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i ]
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.i
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !114 ; 2 uses
  %i.lo = getelementptr inbounds nuw [20 x i8], ptr %i.kv, i64 %i.ln ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !106 ; 2 uses
  %i.lr = fcmp fast ogt float %i.lf, %i.lq
  br i1 %i.lr, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ls = load float, ptr %i.lg, align 4, !tbaa !106 ; 2 uses
  %i.lt = load float, ptr %i.lo, align 4, !tbaa !108 ; 2 uses
  %i.lu = fcmp fast olt float %i.ls, %i.lt
  br i1 %i.lu, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lv = load float, ptr %i.lh, align 4, !tbaa !110 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !109 ; 2 uses
  %i.ly = fcmp fast ogt float %i.lv, %i.lx
  br i1 %i.ly, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lz = load float, ptr %i.li, align 4, !tbaa !109 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !110 ; 2 uses
  %i.mc = fcmp fast olt float %i.lz, %i.mb
  br i1 %i.mc, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.md = call nnan ninf nsz float @llvm.minnum.f32(float %i.lq, float %i.ls)
  %i.me = call nnan ninf nsz float @llvm.maxnum.f32(float %i.lf, float %i.lt)
  %i.mf = fsub fast float %i.md, %i.me
  %i.mg = call nnan ninf nsz float @llvm.minnum.f32(float %i.lx, float %i.lz)
  %i.mh = call nnan ninf nsz float @llvm.maxnum.f32(float %i.lv, float %i.mb)
  %i.mi = fsub fast float %i.mg, %i.mh
  %i.mj = fmul fast float %i.mi, %i.mf
end_hunk_0
