Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/linemod?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2cv7linemod8Detector5matchERKSt6vectorINS_3MatESaIS3_EEfRS2_INS0_5MatchESaIS8_EERKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EERKNS_12_OutputArrayES7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.fo

bb.az:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  invoke void @_ZNSt6vectorIS_IS_IN2cv3MatESaIS1_EESaIS3_EESaIS5_EEC2EmRKS5_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %38, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.gc = load ptr, ptr %39, align 8, !tbaa !209  ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !210 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gc, %i.ge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ba, %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gp, %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i ], [ %i.gc, %bb.ba ] ; 5 uses
  %i.gf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !200 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !199 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.gf, %i.gh
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gf, %.lr.ph.i.i.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i.i.i) #28
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gi, %i.gh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !200
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gj = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.gf, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !201
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #30
  br label %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bb, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.gp, %i.ge
  br i1 %.not.i.i.i135, label %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %39, align 8, !tbaa !209
  br label %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.ba
  %i.gq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.gc, %bb.ba ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !211
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  %i.gw = load ptr, ptr %40, align 8, !tbaa !200  ; 3 uses
  %i.gx = load ptr, ptr %i.bj, align 8, !tbaa !199 ; 2 uses
  %.not4.i.i.i136 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not4.i.i.i136, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i137

.lr.ph.i.i.i137:                                  ; preds = %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit, %.lr.ph.i.i.i137
  %.05.i.i.i138 = phi ptr [ %i.gy, %.lr.ph.i.i.i137 ], [ %i.gw, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i138) #28
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i138, i64 208 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.gy, %i.gx
  br i1 %.not.i.i.i139, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i137, !llvm.loop !9

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i137
  %.pr.i140 = load ptr, ptr %40, align 8, !tbaa !200
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit
  %i.gz = phi ptr [ %.pr.i140, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.gw, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i141 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i1.i141, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ha = load ptr, ptr %i.bl, align 8, !tbaa !201
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hd) #30
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %i.he = load i32, ptr %i.bf, align 8, !tbaa !189
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph540, label %._crit_edge541

.lr.ph540:                                        ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %44, i64 72 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %44, i64 84 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %21, i64 432
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 224
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %44, i64 128
  %i.hr = getelementptr inbounds nuw i8, ptr %45, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.ht = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 11 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %45, i64 12 ; 11 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 10 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %45, i64 84 ; 10 uses
  %.sroa.gep340 = getelementptr inbounds nuw i8, ptr %45, i64 88 ; 10 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %45, i64 128
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 9 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 9 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.ic = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %.sroa.gep681 = getelementptr inbounds nuw i8, ptr %44, i64 88
  %.sroa.gep679 = getelementptr inbounds nuw i8, ptr %44, i64 88
  br label %bb.bj

._crit_edge541:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit222, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.ig = load ptr, ptr %4, align 8, !tbaa !213   ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !213 ; 3 uses
  %i.ij = icmp eq ptr %i.ig, %i.ii
  br i1 %i.ij, label %bb.ev, label %.preheader

.preheader:                                       ; preds = %._crit_edge541
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ig to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = lshr exact i64 %i.im, 5
  %i.io = trunc i64 %i.in to i32
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph543, label %.loopexit373

.lr.ph543:                                        ; preds = %.preheader
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.ex

bb.be:                                            ; preds = %._crit_edge
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bf:                                            ; preds = %.noexc
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn84 = phi { ptr, i32 } [ %i.iu, %bb.bg ], [ %i.it, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %bb.bh ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  br label %bb.fn

bb.bj:                                            ; preds = %.lr.ph540, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit222
  %indvars.iv673 = phi i64 [ 0, %.lr.ph540 ], [ %indvars.iv.next674, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit222 ] ; 5 uses
  %i.iv = load ptr, ptr %i.hg, align 8, !tbaa !176
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv673
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !55 ; 9 uses
  %i.iy = load ptr, ptr %38, align 8, !tbaa !216
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %indvars.iv673
  %.not = icmp eq i64 %indvars.iv673, 0
  br i1 %.not, label %.loopexit406, label %.preheader405

.preheader405:                                    ; preds = %bb.bj
  %i.ja = load ptr, ptr %i.hh, align 8, !tbaa !205
  %i.jb = load ptr, ptr %30, align 8, !tbaa !217  ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = lshr exact i64 %i.je, 4
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph527, label %.loopexit406

.lr.ph527:                                        ; preds = %.preheader405, %bb.bk
  %indvars.iv664 = phi i64 [ %indvars.iv.next665, %bb.bk ], [ 0, %.preheader405 ] ; 2 uses
  %i.ji = phi ptr [ %i.jp, %bb.bk ], [ %i.jb, %.preheader405 ]
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %indvars.iv664
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !141 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !39
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8
  invoke void %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.jk)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %.lr.ph527
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %i.jo = load ptr, ptr %i.hh, align 8, !tbaa !205
  %i.jp = load ptr, ptr %30, align 8, !tbaa !217  ; 2 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = shl i64 %i.js, 28
  %i.ju = ashr i64 %i.jt, 32
  %i.jv = icmp slt i64 %indvars.iv.next665, %i.ju
  br i1 %i.jv, label %.lr.ph527, label %.loopexit406, !llvm.loop !356

.loopexit406:                                     ; preds = %bb.bk, %.preheader405, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %44) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %45) #28
  %i.jw = load ptr, ptr %i.hh, align 8, !tbaa !205
  %i.jx = load ptr, ptr %30, align 8, !tbaa !217  ; 2 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = lshr exact i64 %i.ka, 4
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %.lr.ph534, label %._crit_edge535

.lr.ph534:                                        ; preds = %.loopexit406
  %i.ke = icmp sgt i32 %i.ix, 0                   ; 2 uses
  %wide.trip.count33.i = zext nneg i32 %i.ix to i64 ; 6 uses
  %i.kf = mul nsw i32 %i.ix, %i.ix
  %i.kg = trunc nuw nsw i64 %indvars.iv673 to i32
  %47 = insertelement <2 x i32> poison, i32 %i.ix, i64 0
  %48 = shufflevector <2 x i32> %47, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.br

._crit_edge535:                                   ; preds = %bb.en, %.loopexit406
  %.sroa.0295.0.lcssa = phi ptr [ null, %.loopexit406 ], [ %.sroa.0295.5, %bb.en ] ; 7 uses
  %.sroa.28.0.lcssa = phi ptr [ null, %.loopexit406 ], [ %.sroa.28.5, %bb.en ] ; 4 uses
  %.sroa.35.0.lcssa = phi ptr [ null, %.loopexit406 ], [ %.sroa.35.5, %bb.en ] ; 3 uses
  %i.kh = load i32, ptr %i.hi, align 8, !tbaa !88 ; 6 uses
  %i.ki = icmp slt i32 %i.kh, 3
  br i1 %i.ki, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge535
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc149 unwind label %.loopexit.split-lp411.loopexit.split-lp

.noexc149:                                        ; preds = %bb.bl
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.41, i32 noundef 109) #29
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %.noexc149
  unreachable

bb.bn:                                            ; preds = %.noexc149
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = load ptr, ptr %22, align 8, !tbaa !53   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142: ; preds = %bb.bn
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !54
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.body154

bb.bo:                                            ; preds = %._crit_edge535
  %i.kp = icmp sgt i32 %i.kh, 0
  br i1 %i.kp, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kq = icmp eq i32 %i.kh, 2
  %.sroa.gep679.val = load i32, ptr %.sroa.gep679, align 8
  %.val812 = load i32, ptr %i.hj, align 4
  %i.kr = select i1 %i.kq, i32 %.sroa.gep679.val, i32 %.val812
  br label %bb.eo

bb.bq:                                            ; preds = %bb.bo
  %i.ks = icmp eq i32 %i.kh, 0
  %i.kt = zext i1 %i.ks to i32
  br label %bb.eo

bb.br:                                            ; preds = %.lr.ph534, %bb.en
  %indvars.iv670 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next671, %bb.en ] ; 4 uses
  %i.ku = phi ptr [ %i.jx, %.lr.ph534 ], [ %i.ahd, %bb.en ]
  %.sroa.35.0531 = phi ptr [ null, %.lr.ph534 ], [ %.sroa.35.5, %bb.en ] ; 13 uses
  %.sroa.28.0530 = phi ptr [ null, %.lr.ph534 ], [ %.sroa.28.5, %bb.en ] ; 16 uses
  %.sroa.0295.0529 = phi ptr [ null, %.lr.ph534 ], [ %.sroa.0295.5, %bb.en ] ; 18 uses
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %indvars.iv670
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !141 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !39
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull align 8 dereferenceable(208) %44)
          to label %bb.bs unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.la = load i32, ptr %i.hi, align 8, !tbaa !88 ; 6 uses
  %i.lb = icmp slt i32 %i.la, 3
  br i1 %i.lb, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc153 unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc153:                                        ; preds = %bb.bt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.41, i32 noundef 109) #29
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc153
  unreachable

bb.bv:                                            ; preds = %.noexc153
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bv
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !54
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.body154

bb.bw:                                            ; preds = %bb.bs
  %i.li = icmp sgt i32 %i.la, 0
  br i1 %i.li, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.lj = icmp eq i32 %i.la, 2
  %.sroa.gep681.val = load i32, ptr %.sroa.gep681, align 8
  %.val811 = load i32, ptr %i.hj, align 4
  %i.lk = select i1 %i.lj, i32 %.sroa.gep681.val, i32 %.val811
  br label %_ZNK2cv8MatShapeclEv.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.ll = icmp eq i32 %i.la, 0
  %i.lm = zext i1 %i.ll to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i

_ZNK2cv8MatShapeclEv.exit.i:                      ; preds = %bb.by, %bb.bx
  %i.ln = phi i32 [ %i.lk, %bb.bx ], [ %i.lm, %bb.by ]
  %i.lo = icmp eq i32 %i.la, 2
  %i.lp = load i32, ptr %i.hj, align 4
  %i.lq = icmp sgt i32 %i.la, -1
  %i.lr = zext i1 %i.lq to i32
  %i.ls = select i1 %i.lo, i32 %i.lp, i32 %i.lr
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ls to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ln to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 0)
          to label %.noexc156 unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc156:                                        ; preds = %_ZNK2cv8MatShapeclEv.exit.i
  %i.lt = load ptr, ptr %21, align 8, !tbaa !99   ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !39
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %45, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i unwind label %bb.bz, !inline_history !3

_ZN2cv3MataSERKNS_7MatExprE.exit.i:               ; preds = %.noexc156
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hk) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hl) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hm) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br i1 %i.ke, label %.lr.ph.i, label %_ZN2cv7linemodL6spreadERKNS_3MatERS1_i.exit

bb.bz:                                            ; preds = %.noexc156
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %.body154

.lr.ph.i:                                         ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i, %._crit_edge.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %._crit_edge.i ], [ 0, %_ZN2cv3MataSERKNS_7MatExprE.exit.i ] ; 3 uses
  %i.ly = load i32, ptr %i.hn, align 8, !tbaa !100
  %i.lz = trunc nuw nsw i64 %indvars.iv30.i to i32
  %i.ma = sub nsw i32 %i.ly, %i.lz
  %.fr26.i = freeze i32 %i.ma                     ; 3 uses
  %i.mb = icmp sgt i32 %.fr26.i, 0
  br i1 %i.mb, label %.preheader.lr.ph.i.us.i.preheader, label %_ZN2cv7linemodL13orUnaligned8uEPKhiPhiii.exit.i

.preheader.lr.ph.i.us.i.preheader:                ; preds = %.lr.ph.i
  %i.mc = add nsw i32 %.fr26.i, -1
  %i.md = zext i32 %i.mc to i64                   ; 2 uses
  br label %.preheader.lr.ph.i.us.i

.preheader.lr.ph.i.us.i:                          ; preds = %.preheader.lr.ph.i.us.i.preheader, %_ZN2cv7linemodL13orUnaligned8uEPKhiPhiii.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2cv7linemodL13orUnaligned8uEPKhiPhiii.exit.us.i ], [ 0, %.preheader.lr.ph.i.us.i.preheader ] ; 4 uses
  %i.me = load i32, ptr %i.ho, align 4, !tbaa !116
  %i.mf = load ptr, ptr %i.hp, align 8, !tbaa !102 ; 2 uses
  %i.mg = load i64, ptr %i.hq, align 8
  %i.mh = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %44, i32 noundef 0)
          to label %.noexc157 unwind label %.loopexit.split-lp381.loopexit.loopexit.split-lp

.noexc157:                                        ; preds = %.preheader.lr.ph.i.us.i
  %i.mi = load ptr, ptr %i.hr, align 8, !tbaa !102 ; 3 uses
  %i.mj = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %45, i32 noundef 0)
          to label %.noexc158 unwind label %.loopexit.split-lp381.loopexit.loopexit.split-lp

.noexc158:                                        ; preds = %.noexc157
  %i.mk = load i32, ptr %i.hs, align 4, !tbaa !101
  %i.ml = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.mm = sub nsw i32 %i.mk, %i.ml                ; 4 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  %i.mo = shl i64 %i.mh, 32
  %i.mp = ashr exact i64 %i.mo, 32                ; 3 uses
  %i.mq = shl i64 %i.mj, 32
  %i.mr = ashr exact i64 %i.mq, 32                ; 3 uses
  br i1 %i.mn, label %.preheader.preheader.i.us.i, label %_ZN2cv7linemodL13orUnaligned8uEPKhiPhiii.exit.us.i

end_hunk_0
begin_hunk_1_@_ZNK2cv7linemod8Detector5matchERKSt6vectorINS_3MatESaIS3_EEfRS2_INS0_5MatchESaIS8_EERKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EERKNS_12_OutputArrayES7_:bb.a
  %i.yy = sext i32 %i.yx to i64
  %i.yz = icmp slt i64 %indvars.iv.next93.2.i, %i.yy
  br i1 %i.yz, label %.lr.ph83.2.i, label %._crit_edge84.2.i, !llvm.loop !370

._crit_edge84.2.i:                                ; preds = %.lr.ph83.2.i
  %.pre106.i = load ptr, ptr %i.hy, align 8, !tbaa !102
  %.pre107.i = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.za = icmp sgt i32 %i.yx, 0
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.0295.5, i64 648
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !102
  br i1 %i.za, label %.lr.ph83.3.i, label %.loopexit392

.lr.ph83.3.i:                                     ; preds = %._crit_edge84.2.i, %.lr.ph83.3.i
  %indvars.iv92.3.i = phi i64 [ %indvars.iv.next93.3.i, %.lr.ph83.3.i ], [ 0, %._crit_edge84.2.i ] ; 4 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.pre106.i, i64 %indvars.iv92.3.i
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !54
  %i.zf = zext i8 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 96), i64 %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %.pre107.i, i64 %indvars.iv92.3.i
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !54
  %i.zj = zext i8 %i.zi to i64
  %i.zk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 112), i64 %i.zj
  %i.zl = load i8, ptr %i.zg, align 1, !tbaa !54
  %i.zm = load i8, ptr %i.zk, align 1, !tbaa !54
  %i.zn = call i8 @llvm.umax.i8(i8 %i.zl, i8 %i.zm)
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zc, i64 %indvars.iv92.3.i
  store i8 %i.zn, ptr %i.zo, align 1, !tbaa !54
  %indvars.iv.next93.3.i = add nuw nsw i64 %indvars.iv92.3.i, 1 ; 2 uses
  %i.zp = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.zq = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.zr = mul nsw i32 %i.zq, %i.zp                ; 2 uses
  %i.zs = sext i32 %i.zr to i64
  %i.zt = icmp slt i64 %indvars.iv.next93.3.i, %i.zs
  br i1 %i.zt, label %.lr.ph83.3.i, label %._crit_edge84.3.i, !llvm.loop !370

._crit_edge84.3.i:                                ; preds = %.lr.ph83.3.i
  %.pre109.i = load ptr, ptr %i.hy, align 8, !tbaa !102
  %.pre110.i = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.zu = icmp sgt i32 %i.zr, 0
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0295.5, i64 856
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !102
  br i1 %i.zu, label %.lr.ph83.4.i, label %.loopexit392

.lr.ph83.4.i:                                     ; preds = %._crit_edge84.3.i, %.lr.ph83.4.i
  %indvars.iv92.4.i = phi i64 [ %indvars.iv.next93.4.i, %.lr.ph83.4.i ], [ 0, %._crit_edge84.3.i ] ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.pre109.i, i64 %indvars.iv92.4.i
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !54
  %i.zz = zext i8 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 128), i64 %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %.pre110.i, i64 %indvars.iv92.4.i
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !54
  %i.aad = zext i8 %i.aac to i64
  %i.aae = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 144), i64 %i.aad
  %i.aaf = load i8, ptr %i.aaa, align 1, !tbaa !54
  %i.aag = load i8, ptr %i.aae, align 1, !tbaa !54
  %i.aah = call i8 @llvm.umax.i8(i8 %i.aaf, i8 %i.aag)
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zw, i64 %indvars.iv92.4.i
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !54
  %indvars.iv.next93.4.i = add nuw nsw i64 %indvars.iv92.4.i, 1 ; 2 uses
  %i.aaj = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.aak = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.aal = mul nsw i32 %i.aak, %i.aaj             ; 2 uses
  %i.aam = sext i32 %i.aal to i64
  %i.aan = icmp slt i64 %indvars.iv.next93.4.i, %i.aam
  br i1 %i.aan, label %.lr.ph83.4.i, label %._crit_edge84.4.i, !llvm.loop !370

._crit_edge84.4.i:                                ; preds = %.lr.ph83.4.i
  %.pre112.i = load ptr, ptr %i.hy, align 8, !tbaa !102
  %.pre113.i = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.aao = icmp sgt i32 %i.aal, 0
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0295.5, i64 1064
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !102
  br i1 %i.aao, label %.lr.ph83.5.i, label %.loopexit392

.lr.ph83.5.i:                                     ; preds = %._crit_edge84.4.i, %.lr.ph83.5.i
  %indvars.iv92.5.i = phi i64 [ %indvars.iv.next93.5.i, %.lr.ph83.5.i ], [ 0, %._crit_edge84.4.i ] ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.pre112.i, i64 %indvars.iv92.5.i
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !54
  %i.aat = zext i8 %i.aas to i64
  %i.aau = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 160), i64 %i.aat
  %i.aav = getelementptr inbounds nuw i8, ptr %.pre113.i, i64 %indvars.iv92.5.i
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !54
  %i.aax = zext i8 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 176), i64 %i.aax
  %i.aaz = load i8, ptr %i.aau, align 1, !tbaa !54
  %i.aba = load i8, ptr %i.aay, align 1, !tbaa !54
  %i.abb = call i8 @llvm.umax.i8(i8 %i.aaz, i8 %i.aba)
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %indvars.iv92.5.i
  store i8 %i.abb, ptr %i.abc, align 1, !tbaa !54
  %indvars.iv.next93.5.i = add nuw nsw i64 %indvars.iv92.5.i, 1 ; 2 uses
  %i.abd = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.abe = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.abf = mul nsw i32 %i.abe, %i.abd             ; 2 uses
  %i.abg = sext i32 %i.abf to i64
  %i.abh = icmp slt i64 %indvars.iv.next93.5.i, %i.abg
  br i1 %i.abh, label %.lr.ph83.5.i, label %._crit_edge84.5.i, !llvm.loop !370

._crit_edge84.5.i:                                ; preds = %.lr.ph83.5.i
  %.pre115.i = load ptr, ptr %i.hy, align 8, !tbaa !102
  %.pre116.i = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.abi = icmp sgt i32 %i.abf, 0
  %i.abj = getelementptr inbounds nuw i8, ptr %.sroa.0295.5, i64 1272
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !102
  br i1 %i.abi, label %.lr.ph83.6.i, label %.loopexit392

.lr.ph83.6.i:                                     ; preds = %._crit_edge84.5.i, %.lr.ph83.6.i
  %indvars.iv92.6.i = phi i64 [ %indvars.iv.next93.6.i, %.lr.ph83.6.i ], [ 0, %._crit_edge84.5.i ] ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.pre115.i, i64 %indvars.iv92.6.i
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !54
  %i.abn = zext i8 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 192), i64 %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %.pre116.i, i64 %indvars.iv92.6.i
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !54
  %i.abr = zext i8 %i.abq to i64
  %i.abs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 208), i64 %i.abr
  %i.abt = load i8, ptr %i.abo, align 1, !tbaa !54
  %i.abu = load i8, ptr %i.abs, align 1, !tbaa !54
  %i.abv = call i8 @llvm.umax.i8(i8 %i.abt, i8 %i.abu)
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abk, i64 %indvars.iv92.6.i
  store i8 %i.abv, ptr %i.abw, align 1, !tbaa !54
  %indvars.iv.next93.6.i = add nuw nsw i64 %indvars.iv92.6.i, 1 ; 2 uses
  %i.abx = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.aby = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.abz = mul nsw i32 %i.aby, %i.abx             ; 2 uses
  %i.aca = sext i32 %i.abz to i64
  %i.acb = icmp slt i64 %indvars.iv.next93.6.i, %i.aca
  br i1 %i.acb, label %.lr.ph83.6.i, label %._crit_edge84.6.i, !llvm.loop !370

._crit_edge84.6.i:                                ; preds = %.lr.ph83.6.i
  %.pre118.i = load ptr, ptr %i.hy, align 8, !tbaa !102
  %.pre119.i = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.acc = icmp sgt i32 %i.abz, 0
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.0295.5, i64 1480
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !102
  br i1 %i.acc, label %.lr.ph83.7.i, label %.loopexit392

.lr.ph83.7.i:                                     ; preds = %._crit_edge84.6.i, %.lr.ph83.7.i
  %indvars.iv92.7.i = phi i64 [ %indvars.iv.next93.7.i, %.lr.ph83.7.i ], [ 0, %._crit_edge84.6.i ] ; 4 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.pre118.i, i64 %indvars.iv92.7.i
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !54
  %i.ach = zext i8 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 224), i64 %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %.pre119.i, i64 %indvars.iv92.7.i
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !54
  %i.acl = zext i8 %i.ack to i64
  %i.acm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 240), i64 %i.acl
  %i.acn = load i8, ptr %i.aci, align 1, !tbaa !54
  %i.aco = load i8, ptr %i.acm, align 1, !tbaa !54
  %i.acp = call i8 @llvm.umax.i8(i8 %i.acn, i8 %i.aco)
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ace, i64 %indvars.iv92.7.i
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !54
  %indvars.iv.next93.7.i = add nuw nsw i64 %indvars.iv92.7.i, 1 ; 2 uses
  %i.acr = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.acs = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.act = mul nsw i32 %i.acs, %i.acr
  %i.acu = sext i32 %i.act to i64
  %i.acv = icmp slt i64 %indvars.iv.next93.7.i, %i.acu
  br i1 %i.acv, label %.lr.ph83.7.i, label %.loopexit392, !llvm.loop !370

.lr.ph83.i:                                       ; preds = %.preheader.i, %.lr.ph83.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.lr.ph83.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.wf, i64 %indvars.iv92.i
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !54
  %i.acy = zext i8 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.wg, i64 %indvars.iv92.i
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !54
  %i.adc = zext i8 %i.adb to i64
  %i.add = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 16), i64 %i.adc
  %i.ade = load i8, ptr %i.acz, align 1, !tbaa !54
  %i.adf = load i8, ptr %i.add, align 1, !tbaa !54
  %i.adg = call i8 @llvm.umax.i8(i8 %i.ade, i8 %i.adf)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.we, i64 %indvars.iv92.i
  store i8 %i.adg, ptr %i.adh, align 1, !tbaa !54
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.adi = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.adj = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.adk = mul nsw i32 %i.adj, %i.adi             ; 2 uses
  %i.adl = sext i32 %i.adk to i64
  %i.adm = icmp slt i64 %indvars.iv.next93.i, %i.adl
  br i1 %i.adm, label %.lr.ph83.i, label %._crit_edge84.i, !llvm.loop !370

.loopexit392:                                     ; preds = %.lr.ph83.7.i, %._crit_edge84.6.i, %._crit_edge84.5.i, %._crit_edge84.4.i, %._crit_edge84.3.i, %._crit_edge84.2.i, %._crit_edge84.1.i, %._crit_edge84.i, %.preheader.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.adn = load ptr, ptr %i.iz, align 8, !tbaa !209
  %i.ado = getelementptr inbounds nuw [24 x i8], ptr %i.adn, i64 %indvars.iv670
  br label %bb.dz

bb.dy:                                            ; preds = %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit
  %i.adp = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ei unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dz:                                            ; preds = %.loopexit392, %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit
  %indvars.iv667 = phi i64 [ 0, %.loopexit392 ], [ %indvars.iv.next668, %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit ] ; 3 uses
  %i.adq = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0295.5, i64 %indvars.iv667 ; 4 uses
  %i.adr = load ptr, ptr %i.ado, align 8, !tbaa !200
  %i.ads = getelementptr inbounds nuw [208 x i8], ptr %i.adr, i64 %indvars.iv667 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 8 ; 4 uses
  %i.adu = load i32, ptr %i.adt, align 8, !tbaa !100
  %i.adv = srem i32 %i.adu, %i.ix
  %i.adw = icmp eq i32 %i.adv, 0
  br i1 %i.adw, label %bb.ed, label %.noexc.i278

.noexc.i278:                                      ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.adx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.adx, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 26, ptr %i.a, align 8, !tbaa !57
  %i.ady = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc279 unwind label %bb.eb ; 2 uses

.noexc279:                                        ; preds = %.noexc.i278
  store ptr %i.ady, ptr %7, align 8, !tbaa !53
  %i.adz = load i64, ptr %i.a, align 8, !tbaa !57 ; 3 uses
  store i64 %i.adz, ptr %i.adx, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ady, ptr noundef nonnull align 1 dereferenceable(26) @.str.45, i64 26, i1 false)
  %i.aea = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.adz, ptr %i.aea, align 8, !tbaa !58
  %i.aeb = load ptr, ptr %7, align 8, !tbaa !53
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.adz
  store i8 0, ptr %i.aec, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv7linemodL9linearizeERKNS_3MatERS1_i, ptr noundef nonnull @.str.11, i32 noundef 1095) #29
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %.noexc279
  unreachable

bb.eb:                                            ; preds = %.noexc.i278
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195

bb.ec:                                            ; preds = %.noexc279
  %i.aee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aef = load ptr, ptr %7, align 8, !tbaa !53   ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.adx
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197: ; preds = %bb.ec
  %i.aeh = load i64, ptr %i.adx, align 8, !tbaa !54
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aei) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197, %bb.eb
  %.pn.i196 = phi { ptr, i32 } [ %i.aed, %bb.eb ], [ %i.aee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197 ], [ %i.aee, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body154

bb.ed:                                            ; preds = %bb.dz
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adq, i64 12 ; 3 uses
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !101
  %i.ael = srem i32 %i.aek, %i.ix
  %i.aem = icmp eq i32 %i.ael, 0
  br i1 %i.aem, label %bb.eh, label %.noexc.i275

.noexc.i275:                                      ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.aen = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.aen, ptr %8, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 26, ptr %i.b, align 8, !tbaa !57
  %i.aeo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc276 unwind label %bb.ef ; 2 uses

.noexc276:                                        ; preds = %.noexc.i275
  store ptr %i.aeo, ptr %8, align 8, !tbaa !53
  %i.aep = load i64, ptr %i.b, align 8, !tbaa !57 ; 3 uses
  store i64 %i.aep, ptr %i.aen, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.aeo, ptr noundef nonnull align 1 dereferenceable(26) @.str.46, i64 26, i1 false)
  %i.aeq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aep, ptr %i.aeq, align 8, !tbaa !58
  %i.aer = load ptr, ptr %8, align 8, !tbaa !53
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aep
  store i8 0, ptr %i.aes, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv7linemodL9linearizeERKNS_3MatERS1_i, ptr noundef nonnull @.str.11, i32 noundef 1096) #29
          to label %bb.ee unwind label %bb.eg

bb.ee:                                            ; preds = %.noexc276
  unreachable

bb.ef:                                            ; preds = %.noexc.i275
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.eg:                                            ; preds = %.noexc276
  %i.aeu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aev = load ptr, ptr %8, align 8, !tbaa !53   ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.aen
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %bb.eg
  %i.aex = load i64, ptr %i.aen, align 8, !tbaa !54
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.ef
  %.pn51.i = phi { ptr, i32 } [ %i.aet, %bb.ef ], [ %i.aeu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %i.aeu, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body154

bb.eh:                                            ; preds = %bb.ed
  %49 = load <2 x i32>, ptr %i.adt, align 8, !tbaa !55
  %50 = sdiv <2 x i32> %49, %48                   ; 2 uses
  %51 = extractelement <2 x i32> %50, i64 0
  %52 = extractelement <2 x i32> %50, i64 1
  %i.aez = mul nsw i32 %51, %52
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.ads, i32 noundef %i.kf, i32 noundef %i.aez, i32 noundef 0)
          to label %.noexc207 unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit

.noexc207:                                        ; preds = %bb.eh
  br i1 %i.ke, label %.preheader.lr.ph.i, label %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit

.preheader.lr.ph.i:                               ; preds = %.noexc207
  %i.afa = getelementptr inbounds nuw i8, ptr %i.ads, i64 24
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ads, i64 128
  %i.afc = getelementptr inbounds nuw i8, ptr %i.adq, i64 24
  %i.afd = getelementptr inbounds nuw i8, ptr %i.adq, i64 128
  %.pre.i199 = load i32, ptr %i.adt, align 8, !tbaa !100 ; 3 uses
  br label %.preheader.i200

.preheader.i200:                                  ; preds = %._crit_edge68.i, %.preheader.lr.ph.i
  %i.afe = phi i32 [ %.pre.i199, %.preheader.lr.ph.i ], [ %i.afl, %._crit_edge68.i ] ; 2 uses
  %i.aff = phi i32 [ %.pre.i199, %.preheader.lr.ph.i ], [ %i.afm, %._crit_edge68.i ] ; 2 uses
  %i.afg = phi i32 [ %.pre.i199, %.preheader.lr.ph.i ], [ %i.afn, %._crit_edge68.i ] ; 2 uses
  %indvars.iv81.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next82.i, %._crit_edge68.i ] ; 3 uses
  %.04270.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.us-phi.i, %._crit_edge68.i ] ; 2 uses
  %indvars91.i = trunc i64 %indvars.iv81.i to i32 ; 2 uses
  %i.afh = icmp sgt i32 %i.afg, %indvars91.i
  br i1 %i.afh, label %.lr.ph67.split.preheader.i, label %.lr.ph67.split.us.preheader.i

.lr.ph67.split.us.preheader.i:                    ; preds = %.preheader.i200
  %i.afi = add i32 %.04270.i, %i.ix
  br label %._crit_edge68.i

.lr.ph67.split.preheader.i:                       ; preds = %.preheader.i200
  %i.afj = sext i32 %.04270.i to i64
  br label %.lr.ph67.split.i

._crit_edge68.loopexit.i:                         ; preds = %._crit_edge63.i
  %i.afk = trunc nsw i64 %indvars.iv.next87.i to i32
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %._crit_edge68.loopexit.i, %.lr.ph67.split.us.preheader.i
  %i.afl = phi i32 [ %i.afx, %._crit_edge68.loopexit.i ], [ %i.afe, %.lr.ph67.split.us.preheader.i ]
  %i.afm = phi i32 [ %i.afy, %._crit_edge68.loopexit.i ], [ %i.aff, %.lr.ph67.split.us.preheader.i ]
  %i.afn = phi i32 [ %i.afy, %._crit_edge68.loopexit.i ], [ %i.afg, %.lr.ph67.split.us.preheader.i ]
  %.us-phi.i = phi i32 [ %i.afk, %._crit_edge68.loopexit.i ], [ %i.afi, %.lr.ph67.split.us.preheader.i ]
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond93.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count33.i
  br i1 %exitcond93.not.i, label %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit, label %.preheader.i200, !llvm.loop !371

.lr.ph67.split.i:                                 ; preds = %._crit_edge63.i, %.lr.ph67.split.preheader.i
  %i.afo = phi i32 [ %i.afe, %.lr.ph67.split.preheader.i ], [ %i.afx, %._crit_edge63.i ] ; 3 uses
  %i.afp = phi i32 [ %i.aff, %.lr.ph67.split.preheader.i ], [ %i.afy, %._crit_edge63.i ] ; 3 uses
  %indvars.iv86.i = phi i64 [ %i.afj, %.lr.ph67.split.preheader.i ], [ %indvars.iv.next87.i, %._crit_edge63.i ] ; 2 uses
  %indvars.iv.i201 = phi i64 [ 0, %.lr.ph67.split.preheader.i ], [ %indvars.iv.next.i202, %._crit_edge63.i ] ; 3 uses
  %indvars88.i = trunc i64 %indvars.iv.i201 to i32 ; 2 uses
  %indvars.iv.next87.i = add nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %i.afq = icmp sgt i32 %i.afp, %indvars91.i
  br i1 %i.afq, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.lr.ph67.split.i
  %i.afr = load i32, ptr %i.aej, align 4, !tbaa !101 ; 2 uses
  %i.afs = icmp sgt i32 %i.afr, %indvars88.i
  br i1 %i.afs, label %.lr.ph62.split.preheader.i, label %._crit_edge63.i

.lr.ph62.split.preheader.i:                       ; preds = %.lr.ph62.i
  %i.aft = load ptr, ptr %i.afa, align 8, !tbaa !102
  %i.afu = load i64, ptr %i.afb, align 8, !tbaa !57
  %i.afv = mul i64 %i.afu, %indvars.iv86.i
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afv
  br label %.lr.ph62.split.i

._crit_edge63.i:                                  ; preds = %._crit_edge.i204, %.lr.ph62.i, %.lr.ph67.split.i
  %i.afx = phi i32 [ %i.afo, %.lr.ph67.split.i ], [ %i.afo, %.lr.ph62.i ], [ %i.agg, %._crit_edge.i204 ] ; 2 uses
  %i.afy = phi i32 [ %i.afp, %.lr.ph67.split.i ], [ %i.afp, %.lr.ph62.i ], [ %i.agg, %._crit_edge.i204 ] ; 3 uses
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %indvars.iv.next.i202, %wide.trip.count33.i
  br i1 %exitcond.not.i203, label %._crit_edge68.loopexit.i, label %.lr.ph67.split.i, !llvm.loop !372

.lr.ph62.split.i:                                 ; preds = %._crit_edge.i204, %.lr.ph62.split.preheader.i
  %i.afz = phi i32 [ %i.afo, %.lr.ph62.split.preheader.i ], [ %i.agg, %._crit_edge.i204 ]
  %i.aga = phi i32 [ %i.afr, %.lr.ph62.split.preheader.i ], [ %i.agh, %._crit_edge.i204 ] ; 2 uses
  %indvars.iv83.i = phi i64 [ %indvars.iv81.i, %.lr.ph62.split.preheader.i ], [ %indvars.iv.next84.i, %._crit_edge.i204 ] ; 2 uses
  %.03959.i = phi ptr [ %i.afw, %.lr.ph62.split.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i204 ] ; 2 uses
  %i.agb = load ptr, ptr %i.afc, align 8, !tbaa !102
  %i.agc = load i64, ptr %i.afd, align 8, !tbaa !57
  %i.agd = mul i64 %i.agc, %indvars.iv83.i
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 %i.agd
  %i.agf = icmp sgt i32 %i.aga, %indvars88.i
  br i1 %i.agf, label %.lr.ph.i205, label %._crit_edge.i204

._crit_edge.loopexit.i206:                        ; preds = %.lr.ph.i205
  %.pre94.i = load i32, ptr %i.adt, align 8, !tbaa !100
  br label %._crit_edge.i204

._crit_edge.i204:                                 ; preds = %._crit_edge.loopexit.i206, %.lr.ph62.split.i
  %i.agg = phi i32 [ %i.afz, %.lr.ph62.split.i ], [ %.pre94.i, %._crit_edge.loopexit.i206 ] ; 4 uses
  %i.agh = phi i32 [ %i.aga, %.lr.ph62.split.i ], [ %i.agn, %._crit_edge.loopexit.i206 ]
  %.1.lcssa.i = phi ptr [ %.03959.i, %.lr.ph62.split.i ], [ %i.agm, %._crit_edge.loopexit.i206 ]
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, %wide.trip.count33.i ; 2 uses
  %i.agi = trunc nuw i64 %indvars.iv.next84.i to i32
  %i.agj = icmp sgt i32 %i.agg, %i.agi
  br i1 %i.agj, label %.lr.ph62.split.i, label %._crit_edge63.i, !llvm.loop !373

.lr.ph.i205:                                      ; preds = %.lr.ph62.split.i, %.lr.ph.i205
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %.lr.ph.i205 ], [ %indvars.iv.i201, %.lr.ph62.split.i ] ; 2 uses
  %.157.i = phi ptr [ %i.agm, %.lr.ph.i205 ], [ %.03959.i, %.lr.ph62.split.i ] ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.age, i64 %indvars.iv78.i
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !54
  %i.agm = getelementptr inbounds nuw i8, ptr %.157.i, i64 1 ; 2 uses
  store i8 %i.agl, ptr %.157.i, align 1, !tbaa !54
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, %wide.trip.count33.i ; 2 uses
  %i.agn = load i32, ptr %i.aej, align 4, !tbaa !101 ; 2 uses
  %i.ago = trunc nuw i64 %indvars.iv.next79.i to i32
  %i.agp = icmp sgt i32 %i.agn, %i.ago
  br i1 %i.agp, label %.lr.ph.i205, label %._crit_edge.loopexit.i206, !llvm.loop !374

_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit:   ; preds = %._crit_edge68.i, %.noexc207
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next668, 8
  br i1 %exitcond.not, label %bb.dy, label %bb.dz, !llvm.loop !375

bb.ei:                                            ; preds = %bb.dy
  br i1 %i.adp, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %i.agq = load ptr, ptr %i.hh, align 8, !tbaa !205
  %i.agr = load ptr, ptr %30, align 8, !tbaa !217
  %i.ags = ptrtoint ptr %i.agq to i64
  %i.agt = ptrtoint ptr %i.agr to i64
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = lshr exact i64 %i.agu, 4
  %i.agw = trunc i64 %i.agv to i32
  %i.agx = mul i32 %i.kg, %i.agw
  %i.agy = trunc nuw nsw i64 %indvars.iv670 to i32
  %i.agz = add i32 %i.agx, %i.agy
  %i.aha = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.agz)
          to label %bb.ek unwind label %bb.em

bb.ek:                                            ; preds = %bb.ej
  store i64 0, ptr %i.id, align 8
  store i32 33619968, ptr %46, align 8, !tbaa !114
  store ptr %i.aha, ptr %i.ic, align 8, !tbaa !115
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %bb.en

.loopexit.split-lp381.loopexit.loopexit.split-lp: ; preds = %.noexc157, %.preheader.lr.ph.i.us.i, %_ZN2cv7linemodL13orUnaligned8uEPKhiPhiii.exit.i, %.noexc159
  %lpad.loopexit.split-lp1051 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.loopexit.split-lp381.loopexit.split-lp.loopexit: ; preds = %bb.eh
  %lpad.loopexit389 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNK2cv8MatShapeclEv.exit74.7.i, %_ZNK2cv8MatShapeclEv.exit74.6.i, %_ZNK2cv8MatShapeclEv.exit74.5.i, %_ZNK2cv8MatShapeclEv.exit74.4.i, %_ZNK2cv8MatShapeclEv.exit74.3.i, %_ZNK2cv8MatShapeclEv.exit74.2.i, %_ZNK2cv8MatShapeclEv.exit74.1.i, %_ZNK2cv8MatShapeclEv.exit74.i, %_ZNK2cv8MatShapeclEv.exit.i172, %_ZNK2cv8MatShapeclEv.exit.i, %bb.br, %bb.dy
  %.sroa.0295.1.ph.ph.ph.ph = phi ptr [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit.i172 ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.7.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.6.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.5.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.4.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.3.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.2.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.1.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.i ], [ %.sroa.0295.0529, %bb.br ], [ %.sroa.0295.0529, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0295.0529, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.0295.5, %bb.dy ]
  %.sroa.28.1.ph.ph.ph.ph = phi ptr [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit.i172 ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.7.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.6.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.5.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.4.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.3.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.2.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.1.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.i ], [ %.sroa.28.0530, %bb.br ], [ %.sroa.28.0530, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.28.0530, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.28.5, %bb.dy ]
  %.sroa.35.1.ph.ph.ph.ph = phi ptr [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit.i172 ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.7.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.6.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.5.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.4.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.3.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.2.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.1.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.i ], [ %.sroa.35.0531, %bb.br ], [ %.sroa.35.0531, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.35.0531, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.35.5, %bb.dy ]
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cw, %bb.ck, %bb.bt
  %.sroa.0295.1.ph.ph.ph.ph394 = phi ptr [ %.sroa.0295.5, %bb.cw ], [ %.sroa.0295.0529, %bb.bt ], [ %.sroa.0295.5, %bb.ck ]
  %.sroa.28.1.ph.ph.ph.ph395 = phi ptr [ %.sroa.28.5, %bb.cw ], [ %.sroa.28.0530, %bb.bt ], [ %.sroa.28.5, %bb.ck ]
  %.sroa.35.1.ph.ph.ph.ph396 = phi ptr [ %.sroa.35.5, %bb.cw ], [ %.sroa.35.0531, %bb.bt ], [ %.sroa.35.5, %bb.ck ]
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.em:                                            ; preds = %bb.ej, %bb.ek
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %.body154

bb.en:                                            ; preds = %bb.el, %bb.ei
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %i.ahc = load ptr, ptr %i.hh, align 8, !tbaa !205
  %i.ahd = load ptr, ptr %30, align 8, !tbaa !217 ; 2 uses
  %i.ahe = ptrtoint ptr %i.ahc to i64
  %i.ahf = ptrtoint ptr %i.ahd to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  %i.ahh = shl i64 %i.ahg, 28
  %i.ahi = ashr i64 %i.ahh, 32
  %i.ahj = icmp slt i64 %indvars.iv.next671, %i.ahi
  br i1 %i.ahj, label %bb.br, label %._crit_edge535, !llvm.loop !376

bb.eo:                                            ; preds = %bb.bq, %bb.bp
  %i.ahk = phi i32 [ %i.kr, %bb.bp ], [ %i.kt, %bb.bq ]
  %i.ahl = icmp eq i32 %i.kh, 2
  %i.ahm = load i32, ptr %i.hj, align 4
  %i.ahn = icmp sgt i32 %i.kh, -1
  %i.aho = zext i1 %i.ahn to i32
  %i.ahp = select i1 %i.ahl, i32 %i.ahm, i32 %i.aho
  %.sroa.2.0.insert.ext.i145 = zext i32 %i.ahp to i64
  %.sroa.2.0.insert.shift.i146 = shl nuw i64 %.sroa.2.0.insert.ext.i145, 32
  %.sroa.0.0.insert.ext.i147 = zext i32 %i.ahk to i64
end_hunk_1
