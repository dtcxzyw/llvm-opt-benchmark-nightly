Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/blobdetector?download=true
inline.NumInlined: 1111
inline.NumDeleted: 533
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv22SimpleBlobDetectorImpl6detectERKNS_11_InputArrayERSt6vectorINS_8KeyPointESaIS5_EES3_:bb.a
  store i32 0, ptr %i.dt, align 4, !tbaa !78
  store i32 16842752, ptr %16, align 8, !tbaa !79
  store ptr %7, ptr %i.du, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i64 0, ptr %i.dw, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !79
  store ptr %15, ptr %i.dv, align 8, !tbaa !60
  %i.es = invoke noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, double noundef %.0125723, double noundef 2.550000e+02, i32 noundef 0)
          to label %bb.bd unwind label %bb.bf     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store i32 0, ptr %i.dx, align 8, !tbaa !77
  store i32 0, ptr %i.dy, align 4, !tbaa !78
  store i32 16842752, ptr %21, align 8, !tbaa !79
  store ptr %7, ptr %i.dz, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 0, ptr %i.ea, align 8, !tbaa !77
  store i32 0, ptr %i.eb, align 4, !tbaa !78
  store i32 16842752, ptr %22, align 8, !tbaa !79
  store ptr %15, ptr %i.ec, align 8, !tbaa !60
  %i.et = load ptr, ptr %0, align 8, !tbaa !42
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 152
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.ew = load ptr, ptr %i.ed, align 8, !tbaa !64
  %i.ex = load ptr, ptr %18, align 8, !tbaa !63   ; 2 uses
  %.not740 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not740, label %._crit_edge713, label %.preheader444

.preheader444:                                    ; preds = %bb.be, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit
  %i.ey = phi ptr [ %i.nq, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ %i.ex, %bb.be ] ; 3 uses
  %.0126712 = phi i64 [ %i.no, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.be ] ; 11 uses
  %.sroa.14.0709 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.be ] ; 15 uses
  %.sroa.9412.0708 = phi ptr [ %.sroa.9412.1, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.be ] ; 5 uses
  %.sroa.0408.0705 = phi ptr [ %.sroa.0408.1, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.be ] ; 16 uses
  %.sroa.19.0702 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.be ] ; 13 uses
  %.sroa.11422.0699 = phi ptr [ %.sroa.11422.1, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.be ] ; 11 uses
  %.sroa.0418.0696 = phi ptr [ %.sroa.0418.1, %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.be ] ; 13 uses
  %i.ez = load ptr, ptr %i.ee, align 8, !tbaa !112 ; 2 uses
  %i.fa = load ptr, ptr %14, align 8, !tbaa !113  ; 4 uses
  %.not741 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not741, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader444
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sdiv exact i64 %i.fd, 24
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %.0126712 ; 5 uses
  %.val177 = load double, ptr %i.ff, align 8, !tbaa !223
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %.val178 = load double, ptr %i.fg, align 8, !tbaa !224
  %i.fh = load float, ptr %i.ef, align 8, !tbaa !225
  %i.fi = fpext float %i.fh to double
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bc
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.ea

bb.bg:                                            ; preds = %bb.bd
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZNSt6vectorIS_IN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EESaIS4_EED2Ev.exit302

bb.bh:                                            ; preds = %.lr.ph, %.critedge175
  %.0129688 = phi i64 [ 0, %.lr.ph ], [ %i.ku, %.critedge175 ] ; 8 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %.0129688 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !64 ; 5 uses
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !63 ; 5 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = ashr exact i64 %i.fs, 5                 ; 4 uses
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fu ; 3 uses
  %.val = load double, ptr %i.fv, align 8, !tbaa !223
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %.val176 = load double, ptr %i.fw, align 8, !tbaa !224
  %i.fx = fsub double %.val, %.val177             ; 2 uses
  %i.fy = fsub double %.val176, %.val178          ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = call double @llvm.fmuladd.f64(double %i.fx, double %i.fx, double %i.fz)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.ga) ; 3 uses
  %i.gb = fcmp ult double %sqrt.i, %i.fi
  br i1 %i.gb, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !227
  %i.ge = fcmp ult double %sqrt.i, %i.gd
  br i1 %i.ge, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gf = load double, ptr %i.fj, align 8, !tbaa !227
  %i.gg = fcmp ult double %sqrt.i, %i.gf
  br i1 %i.gg, label %.thread, label %.critedge175

.thread:                                          ; preds = %bb.bh, %bb.bi, %bb.bj
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 3 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !103
  %.not.i = icmp eq ptr %i.fo, %i.gj
  br i1 %.not.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 32, i1 false), !tbaa.struct !104
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 2 uses
  store ptr %i.gl, ptr %i.gh, align 8, !tbaa !64
  br label %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE9push_backERKS2_.exit

bb.bl:                                            ; preds = %.thread
  %i.gm = icmp eq i64 %i.fs, 9223372036854775776
  br i1 %i.gm, label %bb.bm, label %_ZNKSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #26
          to label %.noexc199 unwind label %.loopexit.split-lp465

.noexc199:                                        ; preds = %bb.bm
  unreachable

_ZNKSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bl
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i, %i.ft ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.ft
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 288230376151711743)
  %i.gq = select i1 %i.go, i64 288230376151711743, i64 %i.gp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gr = shl nuw nsw i64 %i.gq, 5
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #29
          to label %.noexc200 unwind label %.loopexit464 ; 5 uses

.noexc200:                                        ; preds = %_ZNKSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 32, i1 false), !tbaa.struct !104
  %.not10.i.i.i.i.i = icmp eq ptr %i.fp, %i.fo
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc200, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i ], [ %i.gs, %.noexc200 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i ], [ %i.fp, %.noexc200 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !104, !alias.scope !228
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gu, %i.fo
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc200
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gs, %.noexc200 ], [ %i.gv, %.lr.ph.i.i.i.i.i ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %i.gx = load ptr, ptr %i.gi, align 8, !tbaa !103
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.gz) #27
  store ptr %i.gs, ptr %i.fm, align 8, !tbaa !63
  store ptr %i.gw, ptr %i.gh, align 8, !tbaa !64
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gq
  store ptr %i.ha, ptr %i.gi, align 8, !tbaa !103
  %.pre923 = load ptr, ptr %14, align 8, !tbaa !113 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre923, i64 %.0129688
  %.phi.trans.insert924 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre925 = load ptr, ptr %.phi.trans.insert924, align 8, !tbaa !64
  %.pre927.pre.pre = load ptr, ptr %18, align 8, !tbaa !63
  br label %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bk
  %.pre927.pre.a = phi ptr [ %.pre927.pre.pre, %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ey, %bb.bk ] ; 6 uses
  %i.hb = phi ptr [ %.pre925, %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gl, %bb.bk ]
  %i.hc = phi ptr [ %.pre923, %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.fa, %bb.bk ] ; 5 uses
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %.0129688 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !63
  %i.hf = ptrtoint ptr %i.hb to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = ashr exact i64 %i.hh, 5
  %.0130689 = add nsw i64 %i.hi, -1               ; 2 uses
  %.not159690 = icmp eq i64 %.0130689, 0
  br i1 %.not159690, label %.critedge, label %.lr.ph693

.lr.ph693:                                        ; preds = %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE9push_backERKS2_.exit
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %.pre927.pre.a, i64 %.0126712
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph693, %bb.bo
  %.0130.in691 = phi i64 [ %.0130689, %.lr.ph693 ], [ %.0130, %bb.bo ] ; 4 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !227
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 2 uses
  %i.hn = getelementptr [32 x i8], ptr %i.hm, i64 %.0130.in691 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 -16
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !227
  %i.hq = fcmp olt double %i.hl, %i.hp
  br i1 %i.hq, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %bb.bn
  %i.hr = getelementptr i8, ptr %i.hn, i64 -32
  %i.hs = getelementptr inbounds nuw [32 x i8], ptr %i.hm, i64 %.0130.in691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %i.hr, i64 32, i1 false), !tbaa.struct !104
  %.0130 = add i64 %.0130.in691, -1               ; 2 uses
  %.not159 = icmp eq i64 %.0130, 0
  br i1 %.not159, label %.critedge, label %bb.bn, !llvm.loop !170

.loopexit464:                                     ; preds = %_ZNKSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit466 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp446

.loopexit.split-lp465:                            ; preds = %bb.bm
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp446

.critedge:                                        ; preds = %bb.bn, %bb.bo, %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE9push_backERKS2_.exit
  %.0130.lcssa = phi i64 [ 0, %_ZNSt6vectorIN2cv22SimpleBlobDetectorImpl6CenterESaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.bo ], [ %.0130.in691, %bb.bn ] ; 2 uses
  %i.ht = load i8, ptr %i.eg, align 4, !tbaa !105, !range !51, !noundef !52
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.bp, label %bb.cg

bb.bp:                                            ; preds = %.critedge
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %.pre927.pre.a, i64 %.0126712
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !229 ; 2 uses
  %i.hy = load ptr, ptr %i.hd, align 8, !tbaa !63
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.hy, i64 %.0130.lcssa
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !229 ; 2 uses
  %i.ic = fcmp ogt double %i.hx, %i.ib
  br i1 %i.ic, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.id = fcmp oeq double %i.hx, %i.ib
  br i1 %i.id, label %bb.br, label %bb.cg

bb.br:                                            ; preds = %bb.bq
  %i.ie = load ptr, ptr %20, align 8, !tbaa !76
  %i.if = getelementptr inbounds nuw [192 x i8], ptr %i.ie, i64 %.0126712
  %i.ig = load double, ptr %i.if, align 8, !tbaa !94
  %i.ih = getelementptr inbounds nuw [192 x i8], ptr %.sroa.0431.0722, i64 %.0129688
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !94
  %i.ij = fcmp ogt double %i.ig, %i.ii
  br i1 %i.ij, label %bb.bs, label %bb.cg

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.ik = load ptr, ptr %19, align 8, !tbaa !67
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.ik, i64 %.0126712 ; 4 uses
  %i.im = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.im, i64 %.0129688 ; 9 uses
  %.not.i201 = icmp eq ptr %i.il, %i.in
  br i1 %.not.i201, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSERKS4_.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !84 ; 2 uses
  %i.iq = load ptr, ptr %i.il, align 8, !tbaa !71 ; 7 uses
  %i.ir = ptrtoint ptr %i.ip to i64               ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 9 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !72
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !71 ; 5 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = icmp ugt i64 %i.it, %i.iz
  br i1 %i.ja, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.jb = icmp ugt i64 %i.it, 9223372036854775800
  br i1 %i.jb, label %bb.bv, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i, !prof !106

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc205 unwind label %.loopexit.split-lp470

.noexc205:                                        ; preds = %bb.bv
  unreachable

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bu
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.it) #29
          to label %.noexc206 unwind label %.loopexit469 ; 3 uses

.noexc206:                                        ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.iq, %i.ip
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc206
  %i.jd = add i64 %i.ir, -8
  %i.je = sub i64 %i.jd, %i.is
  %i.jf = and i64 %i.je, -8
  %i.jg = add i64 %i.jf, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jc, ptr align 4 %i.iq, i64 %i.jg, i1 false)
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc206
  %i.jh = load ptr, ptr %i.in, align 8, !tbaa !71 ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i204, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  %i.ji = load ptr, ptr %i.iu, align 8, !tbaa !72
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jh to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jl) #27
  br label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.bw, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  store ptr %i.jc, ptr %i.in, align 8, !tbaa !71
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.it
  store ptr %i.jm, ptr %i.iu, align 8, !tbaa !72
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bx:                                            ; preds = %bb.bt
  %i.jn = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !84
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = sub i64 %i.jp, %i.iy                    ; 4 uses
  %.not24.i = icmp ult i64 %i.jq, %i.it
  br i1 %.not24.i, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jr = icmp sgt i64 %i.it, 8
  br i1 %i.jr, label %bb.bz, label %bb.ca, !prof !114

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iw, ptr align 4 %i.iq, i64 %i.it, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.js = icmp eq i64 %i.it, 8
  br i1 %i.js, label %bb.cb, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.cb:                                            ; preds = %bb.ca
  %i.jt = load i64, ptr %i.iq, align 4
  store i64 %i.jt, ptr %i.iw, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.cc:                                            ; preds = %bb.bx
  %i.ju = icmp sgt i64 %i.jq, 8
  br i1 %i.ju, label %bb.cd, label %bb.ce, !prof !114

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iw, ptr align 4 %i.iq, i64 %i.jq, i1 false)
  br label %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i

bb.ce:                                            ; preds = %bb.cc
  %i.jv = icmp eq i64 %i.jq, 8
  br i1 %i.jv, label %bb.cf, label %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.jw = load i64, ptr %i.iq, align 4
  store i64 %i.jw, ptr %i.iw, align 4
  br label %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i

_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.jx = load ptr, ptr %i.il, align 8, !tbaa !71
  %i.jy = load ptr, ptr %i.jn, align 8, !tbaa !84 ; 2 uses
  %i.jz = load ptr, ptr %i.in, align 8, !tbaa !71
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kc ; 2 uses
  %i.ke = load ptr, ptr %i.io, align 8, !tbaa !84 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.kd, %i.ke
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i202

.lr.ph.i.i.i.i.i202:                              ; preds = %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i.i.i202
  %.011.i.i.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i202 ], [ %i.jy, %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i202 ], [ %i.kd, %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %i.kf = load i64, ptr %.0810.i.i.i.i.i, align 4
  store i64 %i.kf, ptr %.011.i.i.i.i.i, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i203 = icmp eq ptr %i.kg, %i.ke
  br i1 %.not.i.i.i.i.i203, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i202, !llvm.loop !171

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i202, %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit.i, %bb.cb, %bb.ca, %bb.bz, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.ki = load ptr, ptr %i.in, align 8, !tbaa !71
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.it
  %i.kk = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !84
  %.pre926.pre = load ptr, ptr %18, align 8, !tbaa !63
  %.pre928.pre = load ptr, ptr %14, align 8, !tbaa !113
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSERKS4_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSERKS4_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, %bb.bs
  %.pre928 = phi ptr [ %.pre928.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i ], [ %i.hc, %bb.bs ]
  %.pre926 = phi ptr [ %.pre926.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i ], [ %.pre927.pre.a, %bb.bs ]
  %i.kl = load ptr, ptr %20, align 8, !tbaa !76
  %i.km = getelementptr inbounds nuw [192 x i8], ptr %i.kl, i64 %.0126712
  %i.kn = getelementptr inbounds nuw [192 x i8], ptr %.sroa.0431.0722, i64 %.0129688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.kn, ptr noundef nonnull align 8 dereferenceable(192) %i.km, i64 192, i1 false), !tbaa.struct !109
  br label %bb.cg

.loopexit469:                                     ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit471 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp446

.loopexit.split-lp470:                            ; preds = %bb.bv
  %lpad.loopexit.split-lp472 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp446

bb.cg:                                            ; preds = %bb.bq, %bb.br, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSERKS4_.exit, %.critedge
  %i.ko = phi ptr [ %i.hc, %bb.bq ], [ %i.hc, %bb.br ], [ %.pre928, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSERKS4_.exit ], [ %i.hc, %.critedge ]
  %i.kp = phi ptr [ %.pre927.pre.a, %bb.bq ], [ %.pre927.pre.a, %bb.br ], [ %.pre926, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSERKS4_.exit ], [ %.pre927.pre.a, %.critedge ]
  %i.kq = getelementptr inbounds nuw [32 x i8], ptr %i.kp, i64 %.0126712
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.0129688
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !63
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %i.ks, i64 %.0130.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %i.kq, i64 32, i1 false), !tbaa.struct !104
  br label %_ZNSt6vectorIN2cv7MomentsESaIS1_EE9push_backERKS1_.exit

end_hunk_0
