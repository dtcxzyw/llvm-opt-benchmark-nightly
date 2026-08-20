inline.NumInlined: 1322
inline.NumDeleted: 252
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK5Ipopt4TNLP16get_curr_iterateEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_iS6_S6_:bb.a
  invoke fastcc void @_ZN5IpoptL8curr_y_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext false)
          to label %bb.bo unwind label %bb.cg

bb.bo:                                            ; preds = %bb.bn
  %i.fm = load ptr, ptr %29, align 8, !tbaa !71   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  invoke fastcc void @_ZN5IpoptL8curr_y_dEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext false)
          to label %bb.bp unwind label %bb.ch

bb.bp:                                            ; preds = %bb.bo
  %i.fn = load ptr, ptr %30, align 8, !tbaa !71   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  invoke fastcc void @_ZN5IpoptL8curr_z_LEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %31, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext true)
          to label %bb.bq unwind label %bb.ci

bb.bq:                                            ; preds = %bb.bp
  %i.fo = load ptr, ptr %31, align 8, !tbaa !71   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  invoke fastcc void @_ZN5IpoptL8curr_z_UEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %32, ptr noundef nonnull %1, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext true)
          to label %bb.br unwind label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340

bb.br:                                            ; preds = %bb.bq
  %i.fp = load ptr, ptr %32, align 8, !tbaa !71   ; 7 uses
  %i.fq = invoke noundef zeroext i1 @_ZN5Ipopt11TNLPAdapter22ResortBoundMultipliersERKNS_6VectorES3_S3_S3_PdS3_S4_(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %i.fl, ptr noundef nonnull align 8 dereferenceable(205) %i.fm, ptr noundef nonnull align 8 dereferenceable(205) %i.fn, ptr noundef nonnull align 8 dereferenceable(205) %i.fo, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(205) %i.fp, ptr noundef nonnull %7)
          to label %bb.bs unwind label %bb.cj     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !15
  %i.ft = add nsw i32 %i.fs, -1                   ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !15
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void %i.fx(ptr noundef nonnull align 8 dereferenceable(248) %i.fp) #15, !inline_history !74
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !15
  %i.ga = add nsw i32 %i.fz, -1                   ; 2 uses
  store i32 %i.ga, ptr %i.fy, align 8, !tbaa !15
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gc = load ptr, ptr %i.fo, align 8, !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(248) %i.fo) #15, !inline_history !74
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !15
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %i.gf, align 8, !tbaa !15
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.fn, align 8, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(248) %i.fn) #15, !inline_history !74
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !15
  %i.go = add nsw i32 %i.gn, -1                   ; 2 uses
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !15
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gq = load ptr, ptr %i.fm, align 8, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  tail call void %i.gs(ptr noundef nonnull align 8 dereferenceable(248) %i.fm) #15, !inline_history !74
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !15
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 8, !tbaa !15
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.cb, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336

bb.cb:                                            ; preds = %bb.ca
  %i.gx = load ptr, ptr %i.fl, align 8, !tbaa !17
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  tail call void %i.gz(ptr noundef nonnull align 8 dereferenceable(248) %i.fl) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.ha = getelementptr inbounds nuw i8, ptr %.0172, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !78, !noalias !81 ; 10 uses
  %.not.i.i.i.i337 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i337, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !15, !noalias !81
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 8, !tbaa !15, !noalias !81
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit:          ; preds = %bb.cc, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !84
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef double %i.hh(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cd unwind label %bb.ct     ; 14 uses

bb.cd:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !15
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  store i32 %i.hl, ptr %i.hj, align 8, !tbaa !15
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.ce, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

bb.ce:                                            ; preds = %bb.cd
  %i.hn = load ptr, ptr %i.hb, align 8, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(24) %i.hb) #15, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit: ; preds = %bb.cd, %bb.ce
  %i.hq = fcmp une double %i.hi, 1.000000e+00
  %i.hr = icmp sgt i32 %i.dw, 0
  %or.cond509 = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %or.cond509, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit
  %i.hs = fcmp ogt double %i.hi, 0.000000e+00
  %wide.trip.count515 = zext nneg i32 %i.dw to i64 ; 4 uses
  br i1 %i.hs, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count515, 1
  %i.ht = icmp eq i32 %i.dw, 1
  br i1 %i.ht, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count515, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter580 = and i64 %wide.trip.count515, 1
  %i.hu = icmp eq i32 %i.dw, 1
  br i1 %i.hu, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter583 = and i64 %wide.trip.count515, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv512 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next513.1, %.lr.ph.split.us ] ; 3 uses
  %niter584 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter584.next.1, %.lr.ph.split.us ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv512
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !86
  %i.hx = sext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %6, i64 %i.hx ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !84
  %i.ia = fmul double %i.hi, %i.hz
  store double %i.ia, ptr %i.hy, align 8, !tbaa !84
  %i.ib = getelementptr inbounds [8 x i8], ptr %7, i64 %i.hx ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !84
  %i.id = fmul double %i.hi, %i.ic
  store double %i.id, ptr %i.ib, align 8, !tbaa !84
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv512
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !86
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ih ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !84
  %i.ik = fmul double %i.hi, %i.ij
  store double %i.ik, ptr %i.ii, align 8, !tbaa !84
  %i.il = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ih ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !84
  %i.in = fmul double %i.hi, %i.im
  store double %i.in, ptr %i.il, align 8, !tbaa !84
  %indvars.iv.next513.1 = add nuw nsw i64 %indvars.iv512, 2 ; 2 uses
  %niter584.next.1 = add nuw i64 %niter584, 2     ; 2 uses
  %niter584.ncmp.1 = icmp eq i64 %niter584.next.1, %unroll_iter583
  br i1 %niter584.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !87

bb.cf:                                            ; preds = %bb.bm
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348

bb.cg:                                            ; preds = %bb.bn
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346

bb.ch:                                            ; preds = %bb.bo
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344

bb.ci:                                            ; preds = %bb.bp
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342

bb.cj:                                            ; preds = %bb.br
  %i.is = landingpad { ptr, i32 }
          cleanup
  %i.it = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !15
  %i.iv = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !15
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.ck, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread

bb.ck:                                            ; preds = %bb.cj
  %i.ix = load ptr, ptr %i.fp, align 8, !tbaa !17
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  tail call void %i.iz(ptr noundef nonnull align 8 dereferenceable(248) %i.fp) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  br label %bb.cl

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340: ; preds = %bb.bq
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  %.not.i.i341 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i341, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342, label %bb.cl

bb.cl:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340
  %.pn237569 = phi { ptr, i32 } [ %i.is, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340.thread ], [ %i.ja, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !15
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  store i32 %i.jd, ptr %i.jb, align 8, !tbaa !15
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.cm, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342

bb.cm:                                            ; preds = %bb.cl
  %i.jf = load ptr, ptr %i.fo, align 8, !tbaa !17
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(248) %i.fo) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342: ; preds = %bb.cm, %bb.cl, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340, %bb.ci
  %.pn237.pn = phi { ptr, i32 } [ %i.ir, %bb.ci ], [ %i.ja, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit340 ], [ %.pn237569, %bb.cl ], [ %.pn237569, %bb.cm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %.not.i.i343 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i343, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344, label %bb.cn

bb.cn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !15
  %i.jk = add nsw i32 %i.jj, -1                   ; 2 uses
  store i32 %i.jk, ptr %i.ji, align 8, !tbaa !15
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.co, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344

bb.co:                                            ; preds = %bb.cn
  %i.jm = load ptr, ptr %i.fn, align 8, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  tail call void %i.jo(ptr noundef nonnull align 8 dereferenceable(248) %i.fn) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344: ; preds = %bb.co, %bb.cn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342, %bb.ch
  %.pn237.pn.pn = phi { ptr, i32 } [ %i.iq, %bb.ch ], [ %.pn237.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit342 ], [ %.pn237.pn, %bb.cn ], [ %.pn237.pn, %bb.co ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  %.not.i.i345 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i345, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346, label %bb.cp

bb.cp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !15
  %i.jr = add nsw i32 %i.jq, -1                   ; 2 uses
  store i32 %i.jr, ptr %i.jp, align 8, !tbaa !15
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.cq, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346

bb.cq:                                            ; preds = %bb.cp
  %i.jt = load ptr, ptr %i.fm, align 8, !tbaa !17
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  tail call void %i.jv(ptr noundef nonnull align 8 dereferenceable(248) %i.fm) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346: ; preds = %bb.cq, %bb.cp, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344, %bb.cg
  %.pn237.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.cg ], [ %.pn237.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit344 ], [ %.pn237.pn.pn, %bb.cp ], [ %.pn237.pn.pn, %bb.cq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %.not.i.i347 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i347, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348, label %bb.cr

bb.cr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346
  %i.jw = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !15
  %i.jy = add nsw i32 %i.jx, -1                   ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 8, !tbaa !15
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.cs, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348

bb.cs:                                            ; preds = %bb.cr
  %i.ka = load ptr, ptr %i.fl, align 8, !tbaa !17
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  tail call void %i.kc(ptr noundef nonnull align 8 dereferenceable(248) %i.fl) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit348: ; preds = %bb.cs, %bb.cr, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346, %bb.cf
  %.pn237.pn.pn.pn.pn = phi { ptr, i32 } [ %i.io, %bb.cf ], [ %.pn237.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit346 ], [ %.pn237.pn.pn.pn, %bb.cr ], [ %.pn237.pn.pn.pn, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.ct:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !15
  %i.kg = add nsw i32 %i.kf, -1                   ; 2 uses
  store i32 %i.kg, ptr %i.ke, align 8, !tbaa !15
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.cu, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.cu:                                            ; preds = %bb.ct
  %i.ki = load ptr, ptr %i.hb, align 8, !tbaa !17
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(24) %i.hb) #15, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !86
  %i.kn = sext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %6, i64 %i.kn ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !84
  %i.kq = fneg double %i.kp
  %i.kr = fmul double %i.hi, %i.kq
  %i.ks = getelementptr inbounds [8 x i8], ptr %7, i64 %i.kn ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !84
  %i.ku = fneg double %i.kt
  %i.kv = fmul double %i.hi, %i.ku
  store double %i.kv, ptr %i.ko, align 8, !tbaa !84
  store double %i.kr, ptr %i.ks, align 8, !tbaa !84
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !86
  %i.kz = sext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %6, i64 %i.kz ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !84
  %i.lc = fneg double %i.lb
  %i.ld = fmul double %i.hi, %i.lc
  %i.le = getelementptr inbounds [8 x i8], ptr %7, i64 %i.kz ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !84
  %i.lg = fneg double %i.lf
  %i.lh = fmul double %i.hi, %i.lg
  store double %i.lh, ptr %i.la, align 8, !tbaa !84
  store double %i.ld, ptr %i.le, align 8, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit578.unr-lcssa, label %.lr.ph.split, !llvm.loop !87

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split.us
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  br i1 %lcmp.mod581.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv512.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next513.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod582 = trunc i32 %i.dw to i1
  call void @llvm.assume(i1 %lcmp.mod582)
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv512.epil.init
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !86
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds [8 x i8], ptr %6, i64 %i.lk ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !84
  %i.ln = fmul double %i.hi, %i.lm
  store double %i.ln, ptr %i.ll, align 8, !tbaa !84
  %i.lo = getelementptr inbounds [8 x i8], ptr %7, i64 %i.lk ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !84
  %i.lq = fmul double %i.hi, %i.lp
  store double %i.lq, ptr %i.lo, align 8, !tbaa !84
  br label %.loopexit

.loopexit.loopexit578.unr-lcssa:                  ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.loopexit.loopexit578.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit578.unr-lcssa ]
  %lcmp.mod579 = trunc i32 %i.dw to i1
  call void @llvm.assume(i1 %lcmp.mod579)
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.epil.init
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !86
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %6, i64 %i.lt ; 2 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !84
  %i.lw = fneg double %i.lv
  %i.lx = fmul double %i.hi, %i.lw
  %i.ly = getelementptr inbounds [8 x i8], ptr %7, i64 %i.lt ; 2 uses
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !84
  %i.ma = fneg double %i.lz
  %i.mb = fmul double %i.hi, %i.ma
  store double %i.mb, ptr %i.lu, align 8, !tbaa !84
  store double %i.lx, ptr %i.ly, align 8, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.epil.preheader, %.loopexit.loopexit578.unr-lcssa, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit322, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit, %bb.ay
  %.not249 = icmp eq ptr %9, null
  br i1 %.not249, label %bb.fa, label %bb.cv

bb.cv:                                            ; preds = %.loopexit
  br i1 %3, label %bb.cw, label %.critedge280.thread

bb.cw:                                            ; preds = %bb.cv
  %i.mc = getelementptr inbounds nuw i8, ptr %.0172, i64 16 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !78, !noalias !89 ; 10 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i351, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !15, !noalias !89
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 8, !tbaa !15, !noalias !89
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352:       ; preds = %bb.cx, %bb.cw
  %i.mh = load ptr, ptr %i.md, align 8, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 192
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = invoke noundef zeroext i1 %i.mj(ptr noundef nonnull align 8 dereferenceable(24) %i.md)
          to label %bb.cy unwind label %bb.df     ; 2 uses

bb.cy:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !15
  %i.mn = add nsw i32 %i.mm, -1                   ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 8, !tbaa !15
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %.split, label %.critedge280

.split:                                           ; preds = %bb.cy
  %i.mp = load ptr, ptr %i.md, align 8, !tbaa !17
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(24) %i.md) #15, !inline_history !85
  br i1 %i.mk, label %bb.dm, label %.critedge280.thread

.critedge280:                                     ; preds = %bb.cy
  br i1 %i.mk, label %bb.dm, label %.critedge280.thread

.critedge280.thread:                              ; preds = %bb.cv, %.split, %.critedge280
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  invoke fastcc void @_ZN5IpoptL6curr_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %33, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.cz unwind label %bb.dh

bb.cz:                                            ; preds = %.critedge280.thread
  %i.ms = load ptr, ptr %33, align 8, !tbaa !71   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  invoke fastcc void @_ZN5IpoptL6curr_dEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0172, ptr noundef %.0171, i1 noundef zeroext %3)
          to label %bb.da unwind label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362

bb.da:                                            ; preds = %bb.cz
  %i.mt = load ptr, ptr %34, align 8, !tbaa !71   ; 7 uses
  invoke void @_ZN5Ipopt11TNLPAdapter7ResortGERKNS_6VectorES3_Pdb(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(205) %i.ms, ptr noundef nonnull align 8 dereferenceable(205) %i.mt, ptr noundef nonnull %9, i1 noundef zeroext true)
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %bb.da
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !15
  %i.mw = add nsw i32 %i.mv, -1                   ; 2 uses
  store i32 %i.mw, ptr %i.mu, align 8, !tbaa !15
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.my = load ptr, ptr %i.mt, align 8, !tbaa !17
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(248) %i.mt) #15, !inline_history !74
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !15
  %i.nd = add nsw i32 %i.nc, -1                   ; 2 uses
  store i32 %i.nd, ptr %i.nb, align 8, !tbaa !15
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.de, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit358

bb.de:                                            ; preds = %bb.dd
  %i.nf = load ptr, ptr %i.ms, align 8, !tbaa !17
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8
  call void %i.nh(ptr noundef nonnull align 8 dereferenceable(248) %i.ms) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit358

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit358: ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  br label %bb.fa

bb.df:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit352
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !15
  %i.nl = add nsw i32 %i.nk, -1                   ; 2 uses
  store i32 %i.nl, ptr %i.nj, align 8, !tbaa !15
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.dg, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.dg:                                            ; preds = %bb.df
  %i.nn = load ptr, ptr %i.md, align 8, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(24) %i.md) #15, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit350

bb.dh:                                            ; preds = %.critedge280.thread
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364

bb.di:                                            ; preds = %bb.da
  %i.nr = landingpad { ptr, i32 }
          cleanup
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !15
  %i.nu = add nsw i32 %i.nt, -1                   ; 2 uses
  store i32 %i.nu, ptr %i.ns, align 8, !tbaa !15
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.dj, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread

bb.dj:                                            ; preds = %bb.di
  %i.nw = load ptr, ptr %i.mt, align 8, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(248) %i.mt) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  br label %bb.dk

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362: ; preds = %bb.cz
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  %.not.i.i363 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i363, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit364, label %bb.dk

bb.dk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362
  %.pn264483 = phi { ptr, i32 } [ %i.nr, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362.thread ], [ %i.nz, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit362 ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !15
  %i.oc = add nsw i32 %i.ob, -1                   ; 2 uses
  store i32 %i.oc, ptr %i.oa, align 8, !tbaa !15
  %i.od = icmp eq i32 %i.oc, 0
end_hunk_0
begin_hunk_1_@_ZNK5Ipopt4TNLP19get_curr_violationsEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_S6_S6_iS6_S6_:bb.a
  %i.nw = load ptr, ptr %30, align 8, !tbaa !108, !noalias !436 ; 4 uses
  %.not.i.i82.i450 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i82.i450, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit83.i451, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !15, !noalias !436
  %i.nz = add nsw i32 %i.ny, -1                   ; 2 uses
  store i32 %i.nz, ptr %i.nx, align 8, !tbaa !15, !noalias !436
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.dm, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit83.i451

bb.dm:                                            ; preds = %bb.dl
  %i.ob = load ptr, ptr %i.nw, align 8, !tbaa !17, !noalias !436
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !noalias !436
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(205) %i.nw) #15, !noalias !436, !inline_history !439
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit83.i451

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit83.i451: ; preds = %bb.dm, %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15, !noalias !436
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dj, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit79.i437, %bb.cr
  %.pn29.pn.i438 = phi { ptr, i32 } [ %i.ll, %bb.cr ], [ %i.nv, %bb.dj ], [ %i.nn, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit79.i437 ]
  %i.oe = load ptr, ptr %30, align 8, !tbaa !108, !noalias !436 ; 4 uses
  %.not.i.i84.i439 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i84.i439, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !15, !noalias !436
  %i.oh = add nsw i32 %i.og, -1                   ; 2 uses
  store i32 %i.oh, ptr %i.of, align 8, !tbaa !15, !noalias !436
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.dp, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440

bb.dp:                                            ; preds = %bb.do
  %i.oj = load ptr, ptr %i.oe, align 8, !tbaa !17, !noalias !436
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !noalias !436
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(205) %i.oe) #15, !noalias !436, !inline_history !439
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440: ; preds = %bb.dp, %bb.do, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15, !noalias !436
  br label %.body

bb.dq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit83.i451, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit46.i471, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i473
  %.sroa.098.1.i452 = phi ptr [ %i.ja, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i473 ], [ %i.jh, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit46.i471 ], [ %.sroa.098.0.i449, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit83.i451 ] ; 11 uses
  %.not.i.i86.i453 = icmp eq ptr %.sroa.098.1.i452, null
  br i1 %.not.i.i86.i453, label %_ZN5IpoptL13curr_x_U_violEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.098.1.i452, i64 8
  %i.on = load i32, ptr %i.om, align 8, !tbaa !15, !noalias !436
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %bb.ds, label %_ZN5IpoptL13curr_x_U_violEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

bb.ds:                                            ; preds = %bb.dr
  %i.op = load ptr, ptr %.sroa.098.1.i452, align 8, !tbaa !17, !noalias !436
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !436
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.098.1.i452) #15, !noalias !436, !inline_history !439
  br label %_ZN5IpoptL13curr_x_U_violEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

_ZN5IpoptL13curr_x_U_violEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit: ; preds = %bb.ds, %bb.dr, %bb.dq
  invoke void @_ZN5Ipopt11TNLPAdapter12ResortBoundsERKNS_6VectorEPdS3_S4_(ptr noundef nonnull align 8 dereferenceable(600) %i.ab, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.098.1.i, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.098.1.i452, ptr noundef %6)
          to label %bb.dt unwind label %bb.ed

bb.dt:                                            ; preds = %_ZN5IpoptL13curr_x_U_violEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.098.1.i452, i64 8 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !15
  %i.ou = add nsw i32 %i.ot, -1                   ; 2 uses
  store i32 %i.ou, ptr %i.os, align 8, !tbaa !15
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.du, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit

bb.du:                                            ; preds = %bb.dt
  %i.ow = load ptr, ptr %.sroa.098.1.i452, align 8, !tbaa !17
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.098.1.i452) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit:  ; preds = %bb.du, %bb.dt
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.098.1.i, i64 8 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !15
  %i.pb = add nsw i32 %i.pa, -1                   ; 2 uses
  store i32 %i.pb, ptr %i.oz, align 8, !tbaa !15
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.dv, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit477

bb.dv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit
  %i.pd = load ptr, ptr %.sroa.098.1.i, align 8, !tbaa !17
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.098.1.i) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit477

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit477: ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit, %bb.dv
  %i.pg = icmp sgt i32 %i.da, 0
  %i.ph = icmp eq i32 %i.de, 2
  %or.cond13 = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond13, label %bb.dw, label %bb.eg

bb.dw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit477
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  call fastcc void @_ZN5IpoptL6curr_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %52, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0216, ptr noundef %.0215, i1 noundef zeroext %3)
  %i.pi = load ptr, ptr %52, align 8, !tbaa !71   ; 8 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 233
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !463, !range !466, !noundef !122
  %i.pl = trunc nuw i8 %i.pk to i1                ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 216 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 56 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 240 ; 4 uses
  br i1 %i.df, label %.split1228.us.preheader, label %.split1228

.split1228.us.preheader:                          ; preds = %bb.dw
  %wide.trip.count1264 = zext nneg i32 %i.da to i64
  br label %.split1228.us

.split1228.us:                                    ; preds = %.split1228.us.preheader, %bb.ea
  %indvars.iv1261 = phi i64 [ 0, %.split1228.us.preheader ], [ %indvars.iv.next1262, %bb.ea ] ; 3 uses
  br i1 %i.pl, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split1228.us
  %i.pp = load ptr, ptr %i.pm, align 8, !tbaa !467
  %i.pq = load ptr, ptr %i.pn, align 8, !tbaa !92
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !93
  %i.pt = trunc i64 %indvars.iv1261 to i32
  %i.pu = sub i32 %i.pt, %i.da
  %i.pv = add i32 %i.pu, %i.ps
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.pw
  br label %bb.dy

bb.dy:                                            ; preds = %.split1228.us, %bb.dx
  %.0208.in.us = phi ptr [ %i.px, %bb.dx ], [ %i.po, %.split1228.us ]
  %.0208.us = load double, ptr %.0208.in.us, align 8, !tbaa !84 ; 4 uses
  %i.py = fneg double %.0208.us
  %i.pz = fcmp olt double %.0208.us, 0.000000e+00
  %.sroa.speculated.i.us = select i1 %i.pz, double %i.py, double 0.000000e+00
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1261
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !86
  %i.qc = sext i32 %i.qb to i64                   ; 2 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %5, i64 %i.qc
  store double %.sroa.speculated.i.us, ptr %i.qd, align 8, !tbaa !84
  br i1 %i.dg, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qe = fcmp ogt double %.0208.us, 0.000000e+00
  %.sroa.speculated.i486.us = select i1 %i.qe, double %.0208.us, double 0.000000e+00
  %i.qf = getelementptr inbounds [8 x i8], ptr %6, i64 %i.qc
  store double %.sroa.speculated.i486.us, ptr %i.qf, align 8, !tbaa !84
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %indvars.iv.next1262 = add nuw nsw i64 %indvars.iv1261, 1 ; 2 uses
  %exitcond1265.not = icmp eq i64 %indvars.iv.next1262, %wide.trip.count1264
  br i1 %exitcond1265.not, label %.split1230.us, label %.split1228.us, !llvm.loop !468

.split1228:                                       ; preds = %bb.dw
  br i1 %i.pl, label %.split1228.split.us, label %.split1228.split

.split1228.split.us:                              ; preds = %.split1228
  br i1 %i.dg, label %.split1228.split.us.split.preheader, label %.split1230.us.thread

.split1228.split.us.split.preheader:              ; preds = %.split1228.split.us
  %wide.trip.count1259 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1517 = and i64 %wide.trip.count1259, 1
  %i.qg = icmp eq i32 %i.da, 1
  br i1 %i.qg, label %.split1228.split.us.split.epil.preheader, label %.split1228.split.us.split.preheader.new

.split1228.split.us.split.preheader.new:          ; preds = %.split1228.split.us.split.preheader
  %unroll_iter1520 = and i64 %wide.trip.count1259, 2147483646
  br label %.split1228.split.us.split

.split1228.split.us.split:                        ; preds = %.split1228.split.us.split, %.split1228.split.us.split.preheader.new
  %indvars.iv1256 = phi i64 [ 0, %.split1228.split.us.split.preheader.new ], [ %indvars.iv.next1257.1, %.split1228.split.us.split ] ; 3 uses
  %niter1521 = phi i64 [ 0, %.split1228.split.us.split.preheader.new ], [ %niter1521.next.1, %.split1228.split.us.split ]
  %.0208.us1233 = load double, ptr %i.po, align 8, !tbaa !84 ; 2 uses
  %i.qh = fcmp ogt double %.0208.us1233, 0.000000e+00
  %.sroa.speculated.i486.us1234 = select i1 %i.qh, double %.0208.us1233, double 0.000000e+00
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1256
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !86
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [8 x i8], ptr %6, i64 %i.qk
  store double %.sroa.speculated.i486.us1234, ptr %i.ql, align 8, !tbaa !84
  %.0208.us1233.1 = load double, ptr %i.po, align 8, !tbaa !84 ; 2 uses
  %i.qm = fcmp ogt double %.0208.us1233.1, 0.000000e+00
  %.sroa.speculated.i486.us1234.1 = select i1 %i.qm, double %.0208.us1233.1, double 0.000000e+00
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1256
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !86
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %6, i64 %i.qq
  store double %.sroa.speculated.i486.us1234.1, ptr %i.qr, align 8, !tbaa !84
  %indvars.iv.next1257.1 = add nuw nsw i64 %indvars.iv1256, 2 ; 2 uses
  %niter1521.next.1 = add nuw i64 %niter1521, 2   ; 2 uses
  %niter1521.ncmp.1 = icmp eq i64 %niter1521.next.1, %unroll_iter1520
  br i1 %niter1521.ncmp.1, label %.split1230.us.thread.loopexit.unr-lcssa, label %.split1228.split.us.split, !llvm.loop !468

.split1228.split:                                 ; preds = %.split1228
  %i.qs = load ptr, ptr %i.pm, align 8, !tbaa !467 ; 3 uses
  %i.qt = load ptr, ptr %i.pn, align 8, !tbaa !92
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !93
  %invariant.op = sub i32 %i.qv, %i.da            ; 3 uses
  br i1 %i.dg, label %.split1228.split.split.preheader, label %.split1230.us.thread

.split1228.split.split.preheader:                 ; preds = %.split1228.split
  %wide.trip.count = zext nneg i32 %i.da to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.qw = icmp eq i32 %i.da, 1
  br i1 %i.qw, label %.split1228.split.split.epil.preheader, label %.split1228.split.split.preheader.new

.split1228.split.split.preheader.new:             ; preds = %.split1228.split.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.split1228.split.split

.split1230.us:                                    ; preds = %bb.ea
  %.not.i.i478 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i478, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479, label %.split1230.us.thread

.split1230.us.thread.loopexit.unr-lcssa:          ; preds = %.split1228.split.us.split
  %lcmp.mod1518.not = icmp eq i64 %xtraiter1517, 0
  br i1 %lcmp.mod1518.not, label %.split1230.us.thread, label %.split1228.split.us.split.epil.preheader

.split1228.split.us.split.epil.preheader:         ; preds = %.split1230.us.thread.loopexit.unr-lcssa, %.split1228.split.us.split.preheader
  %indvars.iv1256.epil.init = phi i64 [ 0, %.split1228.split.us.split.preheader ], [ %indvars.iv.next1257.1, %.split1230.us.thread.loopexit.unr-lcssa ]
  %lcmp.mod1519 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1519)
  %.0208.us1233.epil = load double, ptr %i.po, align 8, !tbaa !84 ; 2 uses
  %i.qx = fcmp ogt double %.0208.us1233.epil, 0.000000e+00
  %.sroa.speculated.i486.us1234.epil = select i1 %i.qx, double %.0208.us1233.epil, double 0.000000e+00
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1256.epil.init
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !86
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ra
  store double %.sroa.speculated.i486.us1234.epil, ptr %i.rb, align 8, !tbaa !84
  br label %.split1230.us.thread

.split1230.us.thread.loopexit1515.unr-lcssa:      ; preds = %.split1228.split.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split1230.us.thread, label %.split1228.split.split.epil.preheader

.split1228.split.split.epil.preheader:            ; preds = %.split1230.us.thread.loopexit1515.unr-lcssa, %.split1228.split.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.split1228.split.split.preheader ], [ %indvars.iv.next.1, %.split1230.us.thread.loopexit1515.unr-lcssa ] ; 2 uses
  %lcmp.mod1516 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1516)
  %i.rc = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.reass.epil = add i32 %invariant.op, %i.rc
  %i.rd = sext i32 %.reass.epil to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.rd
  %.0208.epil = load double, ptr %i.re, align 8, !tbaa !84 ; 2 uses
  %i.rf = fcmp ogt double %.0208.epil, 0.000000e+00
  %.sroa.speculated.i486.epil = select i1 %i.rf, double %.0208.epil, double 0.000000e+00
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.epil.init
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !86
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ri
  store double %.sroa.speculated.i486.epil, ptr %i.rj, align 8, !tbaa !84
  br label %.split1230.us.thread

.split1230.us.thread:                             ; preds = %.split1228.split.split.epil.preheader, %.split1230.us.thread.loopexit1515.unr-lcssa, %.split1228.split.us.split.epil.preheader, %.split1230.us.thread.loopexit.unr-lcssa, %.split1228.split, %.split1228.split.us, %.split1230.us
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !15
  %i.rm = add nsw i32 %i.rl, -1                   ; 2 uses
  store i32 %i.rm, ptr %i.rk, align 8, !tbaa !15
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %bb.eb, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479

bb.eb:                                            ; preds = %.split1230.us.thread
  %i.ro = load ptr, ptr %i.pi, align 8, !tbaa !17
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8
  call void %i.rq(ptr noundef nonnull align 8 dereferenceable(248) %i.pi) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479: ; preds = %.split1230.us, %.split1230.us.thread, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  br label %bb.eg

bb.ec:                                            ; preds = %bb.ce, %bb.cb
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ed:                                            ; preds = %_ZN5IpoptL13curr_x_U_violEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.rs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.098.1.i452, i64 8 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !15
  %i.rv = add nsw i32 %i.ru, -1                   ; 2 uses
  store i32 %i.rv, ptr %i.rt, align 8, !tbaa !15
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %bb.ee, label %.body.thread

bb.ee:                                            ; preds = %bb.ed
  %i.rx = load ptr, ptr %.sroa.098.1.i452, align 8, !tbaa !17
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8
  call void %i.rz(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.098.1.i452) #15, !inline_history !74
  br label %.body.thread

.body:                                            ; preds = %bb.ec, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440
  %.pn = phi { ptr, i32 } [ %.pn29.pn.i438, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440 ], [ %i.rr, %bb.ec ] ; 2 uses
  br i1 %.not.i.i86.i, label %common.resume, label %.body.thread

.body.thread:                                     ; preds = %bb.ed, %bb.ee, %.body
  %.pn1171 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.rs, %bb.ee ], [ %i.rs, %bb.ed ] ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.098.1.i, i64 8 ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !15
  %i.sc = add nsw i32 %i.sb, -1                   ; 2 uses
  store i32 %i.sc, ptr %i.sa, align 8, !tbaa !15
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %bb.ef, label %common.resume

bb.ef:                                            ; preds = %.body.thread
  %i.se = load ptr, ptr %.sroa.098.1.i, align 8, !tbaa !17
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.098.1.i) #15, !inline_history !74
  br label %common.resume

.split1228.split.split:                           ; preds = %.split1228.split.split, %.split1228.split.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.split1228.split.split.preheader.new ], [ %indvars.iv.next.1, %.split1228.split.split ] ; 4 uses
  %niter = phi i64 [ 0, %.split1228.split.split.preheader.new ], [ %niter.next.1, %.split1228.split.split ]
  %i.sh = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.sh
  %i.si = sext i32 %.reass to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.si
  %.0208 = load double, ptr %i.sj, align 8, !tbaa !84 ; 2 uses
  %i.sk = fcmp ogt double %.0208, 0.000000e+00
  %.sroa.speculated.i486 = select i1 %i.sk, double %.0208, double 0.000000e+00
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !86
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %6, i64 %i.sn
  store double %.sroa.speculated.i486, ptr %i.so, align 8, !tbaa !84
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.sp = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.sp
  %i.sq = sext i32 %.reass.1 to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.sq
  %.0208.1 = load double, ptr %i.sr, align 8, !tbaa !84 ; 2 uses
  %i.ss = fcmp ogt double %.0208.1, 0.000000e+00
  %.sroa.speculated.i486.1 = select i1 %i.ss, double %.0208.1, double 0.000000e+00
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next
  %i.su = load i32, ptr %i.st, align 4, !tbaa !86
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %6, i64 %i.sv
  store double %.sroa.speculated.i486.1, ptr %i.sw, align 8, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split1230.us.thread.loopexit1515.unr-lcssa, label %.split1228.split.split, !llvm.loop !468

bb.eg:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit477, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479, %bb.af
  %i.sx = icmp ne ptr %7, null                    ; 2 uses
  %i.sy = icmp ne ptr %8, null                    ; 3 uses
  %or.cond15 = or i1 %i.sx, %i.sy
  br i1 %or.cond15, label %bb.eh, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !469
  br i1 %3, label %.thread.i504, label %bb.ei

.thread.i504:                                     ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !469
  br label %.critedge.i

bb.ei:                                            ; preds = %bb.eh
  %i.sz = getelementptr inbounds nuw i8, ptr %.0216, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !78, !noalias !472 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ta, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !15, !noalias !472
  %i.td = add nsw i32 %i.tc, 1
  store i32 %i.td, ptr %i.tb, align 8, !tbaa !15, !noalias !472
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487:     ; preds = %bb.ej, %bb.ei
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !84, !noalias !469
  %i.te = load ptr, ptr %i.ta, align 8, !tbaa !17, !noalias !469
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tg = load ptr, ptr %i.tf, align 8, !noalias !469
  %i.th = invoke noundef double %i.tg(ptr noundef nonnull align 8 dereferenceable(24) %i.ta, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ek unwind label %bb.fi, !noalias !469 ; 2 uses

bb.ek:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !469
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !15, !noalias !469
  %i.tk = add nsw i32 %i.tj, -1                   ; 2 uses
  store i32 %i.tk, ptr %i.ti, align 8, !tbaa !15, !noalias !469
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %bb.el, label %.critedge.i

bb.el:                                            ; preds = %bb.ek
  %i.tm = load ptr, ptr %i.ta, align 8, !tbaa !17, !noalias !469
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !noalias !469
  call void %i.to(ptr noundef nonnull align 8 dereferenceable(24) %i.ta) #15, !noalias !469, !inline_history !475
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.el, %bb.ek, %.thread.i504
  %i.tp = phi double [ 1.000000e+00, %.thread.i504 ], [ %i.th, %bb.ek ], [ %i.th, %bb.el ] ; 4 uses
  %i.tq = icmp eq ptr %.0215, null                ; 2 uses
  br i1 %i.tq, label %bb.em, label %bb.fm

bb.em:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !469
  call void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_compl_x_LEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %26, ptr noundef nonnull align 8 dereferenceable(2185) %2), !noalias !469
  %i.tr = load ptr, ptr %26, align 8, !tbaa !108, !noalias !469 ; 27 uses
  %.not.i.i.i.i500 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i.i500, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !15, !noalias !469
  %i.tu = icmp eq i32 %i.tt, 0
  br i1 %i.tu, label %bb.eo, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501

bb.eo:                                            ; preds = %bb.en
  %i.tv = load ptr, ptr %i.tr, align 8, !tbaa !17, !noalias !469
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !noalias !469
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(205) %i.tr) #15, !noalias !469, !inline_history !476
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501:   ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !469
  %i.ty = fcmp une double %i.tp, 1.000000e+00
  br i1 %i.ty, label %bb.ep, label %.thread148.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread.i: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !469
  %i.tz = fcmp une double %i.tp, 1.000000e+00
  br i1 %i.tz, label %bb.ep, label %_ZN5IpoptL14curr_compl_x_LEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

bb.ep:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !92, !noalias !469 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !17, !noalias !469
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8, !noalias !469
  %i.uf = invoke noundef ptr %i.ue(ptr noundef nonnull align 8 dereferenceable(16) %i.ub)
          to label %.noexc.i unwind label %bb.fj, !noalias !469, !inline_history !198 ; 33 uses

.noexc.i:                                         ; preds = %bb.ep
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !17, !noalias !469
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !noalias !469
  invoke void %i.ui(ptr noundef nonnull align 8 dereferenceable(205) %i.uf, ptr noundef nonnull align 8 dereferenceable(205) %i.tr)
          to label %.noexc46.i unwind label %bb.fj, !noalias !469, !inline_history !198

.noexc46.i:                                       ; preds = %.noexc.i
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.uf)
          to label %.noexc47.i unwind label %bb.fj, !noalias !469

.noexc47.i:                                       ; preds = %.noexc46.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tr, i64 48
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !199, !noalias !469 ; 7 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tr, i64 88
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !208, !noalias !469
  %i.un = icmp eq i32 %i.uk, %i.um
  br i1 %i.un, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.noexc47.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uf, i64 48
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !199, !noalias !469
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uf, i64 88
  store i32 %i.up, ptr %i.uq, align 8, !tbaa !208, !noalias !469
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tr, i64 96
  %i.us = load double, ptr %i.ur, align 8, !tbaa !212, !noalias !469
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uf, i64 96
  store double %i.us, ptr %i.ut, align 8, !tbaa !212, !noalias !469
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.noexc47.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tr, i64 104
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !213, !noalias !469
  %i.uw = icmp eq i32 %i.uk, %i.uv
  br i1 %i.uw, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uf, i64 48
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !199, !noalias !469
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uf, i64 104
  store i32 %i.uy, ptr %i.uz, align 8, !tbaa !213, !noalias !469
  %i.va = getelementptr inbounds nuw i8, ptr %i.tr, i64 112
  %i.vb = load double, ptr %i.va, align 8, !tbaa !214, !noalias !469
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uf, i64 112
  store double %i.vb, ptr %i.vc, align 8, !tbaa !214, !noalias !469
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tr, i64 120
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !215, !noalias !469
  %i.vf = icmp eq i32 %i.uk, %i.ve
  br i1 %i.vf, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uf, i64 48
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !199, !noalias !469
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uf, i64 120
  store i32 %i.vh, ptr %i.vi, align 8, !tbaa !215, !noalias !469
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tr, i64 128
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !216, !noalias !469
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uf, i64 128
  store double %i.vk, ptr %i.vl, align 8, !tbaa !216, !noalias !469
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.vm = getelementptr inbounds nuw i8, ptr %i.tr, i64 136
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !217, !noalias !469
  %i.vo = icmp eq i32 %i.uk, %i.vn
  br i1 %i.vo, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uf, i64 48
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !199, !noalias !469
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uf, i64 136
  store i32 %i.vq, ptr %i.vr, align 8, !tbaa !217, !noalias !469
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tr, i64 144
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !218, !noalias !469
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uf, i64 144
  store double %i.vt, ptr %i.vu, align 8, !tbaa !218, !noalias !469
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tr, i64 152
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !219, !noalias !469
  %i.vx = icmp eq i32 %i.uk, %i.vw
  br i1 %i.vx, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uf, i64 48
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !199, !noalias !469
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uf, i64 152
  store i32 %i.vz, ptr %i.wa, align 8, !tbaa !219, !noalias !469
  %i.wb = getelementptr inbounds nuw i8, ptr %i.tr, i64 160
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !220, !noalias !469
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uf, i64 160
  store double %i.wc, ptr %i.wd, align 8, !tbaa !220, !noalias !469
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.we = getelementptr inbounds nuw i8, ptr %i.tr, i64 168
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !221, !noalias !469
  %i.wg = icmp eq i32 %i.uk, %i.wf
end_hunk_1
begin_hunk_2_@_ZNK5Ipopt4TNLP19get_curr_violationsEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_S6_S6_iS6_S6_:bb.a
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 8
  %i.azr = load ptr, ptr %i.azq, align 8
  call void %i.azr(ptr noundef nonnull align 8 dereferenceable(248) %i.aze) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602: ; preds = %bb.kp, %bb.ks, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  %i.azs = load ptr, ptr %i.atc, align 8, !tbaa !17
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 88
  %i.azu = load ptr, ptr %i.azt, align 8
  invoke void %i.azu(ptr noundef nonnull align 8 dereferenceable(205) %i.atc, ptr noundef nonnull align 8 dereferenceable(205) %i.aze)
          to label %.noexc603 unwind label %bb.lo, !inline_history !498

.noexc603:                                        ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.atc)
          to label %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit unwind label %bb.lo

_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit: ; preds = %.noexc603
  %i.azv = load ptr, ptr %i.awa, align 8, !tbaa !17
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 88
  %i.azx = load ptr, ptr %i.azw, align 8
  invoke void %i.azx(ptr noundef nonnull align 8 dereferenceable(205) %i.awa, ptr noundef nonnull align 8 dereferenceable(205) %i.aze)
          to label %.noexc605 unwind label %bb.lo, !inline_history !498

.noexc605:                                        ; preds = %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.awa)
          to label %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607 unwind label %bb.lo

_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607: ; preds = %.noexc605
  %i.azy = getelementptr inbounds nuw i8, ptr %i.atc, i64 232 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 8, !tbaa !535, !range !466, !noundef !122
  %i.baa = trunc nuw i8 %i.azz to i1
  %i.bab = getelementptr inbounds nuw i8, ptr %i.atc, i64 233 ; 2 uses
  %i.bac = load i8, ptr %i.bab, align 1, !range !466
  %i.bad = trunc nuw i8 %i.bac to i1
  %or.cond.i.i = select i1 %i.baa, i1 %i.bad, i1 false
  br i1 %or.cond.i.i, label %bb.ku, label %.noexc608

bb.ku:                                            ; preds = %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607
  invoke void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %i.atc)
          to label %.noexc608 unwind label %bb.lp

.noexc608:                                        ; preds = %bb.ku, %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %i.atc)
          to label %.noexc609 unwind label %bb.lp

.noexc609:                                        ; preds = %.noexc608
  store i8 1, ptr %i.azy, align 8, !tbaa !535
  store i8 0, ptr %i.bab, align 1, !tbaa !463
  %i.bae = getelementptr inbounds nuw i8, ptr %i.atc, i64 216 ; 2 uses
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !467 ; 2 uses
  %i.bag = icmp eq ptr %i.baf, null
  br i1 %i.bag, label %bb.kv, label %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit

bb.kv:                                            ; preds = %.noexc609
  %i.bah = getelementptr inbounds nuw i8, ptr %i.atc, i64 208
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !536
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 12
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !93 ; 2 uses
  %i.bal = icmp sgt i32 %i.bak, 0
  br i1 %i.bal, label %bb.kw, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i

bb.kw:                                            ; preds = %bb.kv
  %i.bam = zext nneg i32 %i.bak to i64
  %i.ban = shl nuw nsw i64 %i.bam, 3
  %i.bao = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ban) #18
          to label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i unwind label %bb.lp

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i: ; preds = %bb.kw, %bb.kv
  %.0.i.i.i.i = phi ptr [ null, %bb.kv ], [ %i.bao, %bb.kw ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %i.bae, align 8, !tbaa !467
  br label %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit

_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit:    ; preds = %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i, %.noexc609
  %i.bap = phi ptr [ %i.baf, %.noexc609 ], [ %.0.i.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i ] ; 4 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %i.awa, i64 232 ; 2 uses
  %i.bar = load i8, ptr %i.baq, align 8, !tbaa !535, !range !466, !noundef !122
  %i.bas = trunc nuw i8 %i.bar to i1
  %i.bat = getelementptr inbounds nuw i8, ptr %i.awa, i64 233 ; 2 uses
  %i.bau = load i8, ptr %i.bat, align 1, !range !466
  %i.bav = trunc nuw i8 %i.bau to i1
  %or.cond.i.i611 = select i1 %i.bas, i1 %i.bav, i1 false
  br i1 %or.cond.i.i611, label %bb.kx, label %.noexc614

bb.kx:                                            ; preds = %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit
  invoke void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %i.awa)
          to label %.noexc614 unwind label %bb.lq

.noexc614:                                        ; preds = %bb.kx, %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %i.awa)
          to label %.noexc615 unwind label %bb.lq

.noexc615:                                        ; preds = %.noexc614
  store i8 1, ptr %i.baq, align 8, !tbaa !535
  store i8 0, ptr %i.bat, align 1, !tbaa !463
  %i.baw = getelementptr inbounds nuw i8, ptr %i.awa, i64 216 ; 2 uses
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !467 ; 2 uses
  %i.bay = icmp eq ptr %i.bax, null
  br i1 %i.bay, label %bb.ky, label %.lr.ph

bb.ky:                                            ; preds = %.noexc615
  %i.baz = getelementptr inbounds nuw i8, ptr %i.awa, i64 208
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !536
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 12
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !93 ; 2 uses
  %i.bbd = icmp sgt i32 %i.bbc, 0
  br i1 %i.bbd, label %bb.kz, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612

bb.kz:                                            ; preds = %bb.ky
  %i.bbe = zext nneg i32 %i.bbc to i64
  %i.bbf = shl nuw nsw i64 %i.bbe, 3
  %i.bbg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bbf) #18
          to label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612 unwind label %bb.lq

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612: ; preds = %bb.kz, %bb.ky
  %.0.i.i.i.i613 = phi ptr [ null, %bb.ky ], [ %i.bbg, %bb.kz ] ; 2 uses
  store ptr %.0.i.i.i.i613, ptr %i.baw, align 8, !tbaa !467
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612, %.noexc615
  %i.bbh = phi ptr [ %i.bax, %.noexc615 ], [ %.0.i.i.i.i613, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612 ] ; 4 uses
  br i1 %i.sx, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.awa, i64 56
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !92
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 12
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !93
  %invariant.op1238 = sub i32 %i.bbl, %i.da       ; 4 uses
  br i1 %i.sy, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %wide.trip.count1275 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1527 = and i64 %wide.trip.count1275, 1
  %i.bbm = icmp eq i32 %i.da, 1
  br i1 %i.bbm, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter1530 = and i64 %wide.trip.count1275, 2147483646
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.bbn = load ptr, ptr %i.aym, align 8, !tbaa !92
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 12
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !93
  %invariant.op1240 = sub i32 %i.bbp, %i.da
  %wide.trip.count1281 = zext nneg i32 %i.da to i64
  br label %bb.la

bb.la:                                            ; preds = %bb.la, %.lr.ph.split.us.split.us
  %indvars.iv1277 = phi i64 [ %indvars.iv.next1278, %bb.la ], [ 0, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.bbq = trunc nuw nsw i64 %indvars.iv1277 to i32 ; 2 uses
  %.reass1239.us = add i32 %invariant.op1238, %i.bbq
  %i.bbr = sext i32 %.reass1239.us to i64
  %i.bbs = getelementptr inbounds [8 x i8], ptr %i.bbh, i64 %i.bbr
  %i.bbt = load double, ptr %i.bbs, align 8, !tbaa !84
  %i.bbu = fneg double %i.bbt
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1277
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !86
  %i.bbx = sext i32 %i.bbw to i64                 ; 2 uses
  %i.bby = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bbx
  store double %i.bbu, ptr %i.bby, align 8, !tbaa !84
  %.reass1241 = add i32 %invariant.op1240, %i.bbq
  %i.bbz = sext i32 %.reass1241 to i64
  %i.bca = getelementptr inbounds [8 x i8], ptr %i.bap, i64 %i.bbz
  %i.bcb = load double, ptr %i.bca, align 8, !tbaa !84
  %i.bcc = fneg double %i.bcb
  %i.bcd = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bbx
  store double %i.bcc, ptr %i.bcd, align 8, !tbaa !84
  %indvars.iv.next1278 = add nuw nsw i64 %indvars.iv1277, 1 ; 2 uses
  %exitcond1282.not = icmp eq i64 %indvars.iv.next1278, %wide.trip.count1281
  br i1 %exitcond1282.not, label %._crit_edge, label %bb.la, !llvm.loop !537

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.preheader.new
  %indvars.iv1271 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next1272.1, %.lr.ph.split.us.split ] ; 4 uses
  %niter1531 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter1531.next.1, %.lr.ph.split.us.split ]
  %i.bce = trunc nuw nsw i64 %indvars.iv1271 to i32
  %.reass1239 = add i32 %invariant.op1238, %i.bce
  %i.bcf = sext i32 %.reass1239 to i64
  %i.bcg = getelementptr inbounds [8 x i8], ptr %i.bbh, i64 %i.bcf
  %i.bch = load double, ptr %i.bcg, align 8, !tbaa !84
  %i.bci = fneg double %i.bch
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1271
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !86
  %i.bcl = sext i32 %i.bck to i64
  %i.bcm = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bcl
  store double %i.bci, ptr %i.bcm, align 8, !tbaa !84
  %indvars.iv.next1272 = or disjoint i64 %indvars.iv1271, 1 ; 2 uses
  %i.bcn = trunc nuw nsw i64 %indvars.iv.next1272 to i32
  %.reass1239.1 = add i32 %invariant.op1238, %i.bcn
  %i.bco = sext i32 %.reass1239.1 to i64
  %i.bcp = getelementptr inbounds [8 x i8], ptr %i.bbh, i64 %i.bco
  %i.bcq = load double, ptr %i.bcp, align 8, !tbaa !84
  %i.bcr = fneg double %i.bcq
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1272
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !86
  %i.bcu = sext i32 %i.bct to i64
  %i.bcv = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bcu
  store double %i.bcr, ptr %i.bcv, align 8, !tbaa !84
  %indvars.iv.next1272.1 = add nuw nsw i64 %indvars.iv1271, 2 ; 2 uses
  %niter1531.next.1 = add nuw i64 %niter1531, 2   ; 2 uses
  %niter1531.ncmp.1 = icmp eq i64 %niter1531.next.1, %unroll_iter1530
  br i1 %niter1531.ncmp.1, label %._crit_edge.loopexit1513.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !537

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.sy, label %.lr.ph.split.split, label %._crit_edge

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bcw = load ptr, ptr %i.aym, align 8, !tbaa !92
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 12
  %i.bcy = load i32, ptr %i.bcx, align 4, !tbaa !93
  %invariant.op1236 = sub i32 %i.bcy, %i.da       ; 3 uses
  %wide.trip.count1269 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1522 = and i64 %wide.trip.count1269, 1
  %i.bcz = icmp eq i32 %i.da, 1
  br i1 %i.bcz, label %.epil.preheader, label %.lr.ph.split.split.new

.lr.ph.split.split.new:                           ; preds = %.lr.ph.split.split
  %unroll_iter1525 = and i64 %wide.trip.count1269, 2147483646
  br label %bb.lr

._crit_edge.loopexit1513.unr-lcssa:               ; preds = %.lr.ph.split.us.split
  %lcmp.mod1528.not = icmp eq i64 %xtraiter1527, 0
  br i1 %lcmp.mod1528.not, label %._crit_edge, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %._crit_edge.loopexit1513.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv1271.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next1272.1, %._crit_edge.loopexit1513.unr-lcssa ] ; 2 uses
  %lcmp.mod1529 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1529)
  %i.bda = trunc nuw nsw i64 %indvars.iv1271.epil.init to i32
  %.reass1239.epil = add i32 %invariant.op1238, %i.bda
  %i.bdb = sext i32 %.reass1239.epil to i64
  %i.bdc = getelementptr inbounds [8 x i8], ptr %i.bbh, i64 %i.bdb
  %i.bdd = load double, ptr %i.bdc, align 8, !tbaa !84
  %i.bde = fneg double %i.bdd
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1271.epil.init
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !86
  %i.bdh = sext i32 %i.bdg to i64
  %i.bdi = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bdh
  store double %i.bde, ptr %i.bdi, align 8, !tbaa !84
  br label %._crit_edge

._crit_edge.loopexit1514.unr-lcssa:               ; preds = %bb.lr
  %lcmp.mod1523.not = icmp eq i64 %xtraiter1522, 0
  br i1 %lcmp.mod1523.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit1514.unr-lcssa, %.lr.ph.split.split
  %indvars.iv1266.epil.init = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next1267.1, %._crit_edge.loopexit1514.unr-lcssa ] ; 2 uses
  %lcmp.mod1524 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1524)
  %i.bdj = trunc nuw nsw i64 %indvars.iv1266.epil.init to i32
  %.reass1237.epil = add i32 %invariant.op1236, %i.bdj
  %i.bdk = sext i32 %.reass1237.epil to i64
  %i.bdl = getelementptr inbounds [8 x i8], ptr %i.bap, i64 %i.bdk
  %i.bdm = load double, ptr %i.bdl, align 8, !tbaa !84
  %i.bdn = fneg double %i.bdm
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1266.epil.init
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !86
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bdq
  store double %i.bdn, ptr %i.bdr, align 8, !tbaa !84
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit1514.unr-lcssa, %.lr.ph.split.us.split.epil.preheader, %._crit_edge.loopexit1513.unr-lcssa, %bb.la, %.lr.ph.split
  %i.bds = getelementptr inbounds nuw i8, ptr %i.aze, i64 8 ; 2 uses
  %i.bdt = load i32, ptr %i.bds, align 8, !tbaa !15
  %i.bdu = add nsw i32 %i.bdt, -1                 ; 2 uses
  store i32 %i.bdu, ptr %i.bds, align 8, !tbaa !15
  %i.bdv = icmp eq i32 %i.bdu, 0
  br i1 %i.bdv, label %bb.lb, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.lb:                                            ; preds = %._crit_edge
  %i.bdw = load ptr, ptr %i.aze, align 8, !tbaa !17
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8
  %i.bdy = load ptr, ptr %i.bdx, align 8
  call void %i.bdy(ptr noundef nonnull align 8 dereferenceable(205) %i.aze) #15, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.lb, %._crit_edge
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8 ; 2 uses
  %i.bea = load i32, ptr %i.bdz, align 8, !tbaa !15
  %i.beb = add nsw i32 %i.bea, -1                 ; 2 uses
  store i32 %i.beb, ptr %i.bdz, align 8, !tbaa !15
  %i.bec = icmp eq i32 %i.beb, 0
  br i1 %i.bec, label %bb.lc, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.lc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.bed = load ptr, ptr %i.ayr, align 8, !tbaa !17
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 8
  %i.bef = load ptr, ptr %i.bee, align 8
  call void %i.bef(ptr noundef nonnull align 8 dereferenceable(205) %i.ayr) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.lc, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.beg = load i32, ptr %i.ayj, align 8, !tbaa !15
  %i.beh = add nsw i32 %i.beg, -1                 ; 2 uses
  store i32 %i.beh, ptr %i.ayj, align 8, !tbaa !15
  %i.bei = icmp eq i32 %i.beh, 0
  br i1 %i.bei, label %bb.ld, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621

bb.ld:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.bej = load ptr, ptr %i.awa, align 8, !tbaa !17
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  %i.bel = load ptr, ptr %i.bek, align 8
  call void %i.bel(ptr noundef nonnull align 8 dereferenceable(205) %i.awa) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621:      ; preds = %bb.ld, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.bem = load i32, ptr %i.avt, align 8, !tbaa !15
  %i.ben = add nsw i32 %i.bem, -1                 ; 2 uses
  store i32 %i.ben, ptr %i.avt, align 8, !tbaa !15
  %i.beo = icmp eq i32 %i.ben, 0
  br i1 %i.beo, label %bb.le, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623

bb.le:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621
  %i.bep = load ptr, ptr %i.atc, align 8, !tbaa !17
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 8
  %i.ber = load ptr, ptr %i.beq, align 8
  call void %i.ber(ptr noundef nonnull align 8 dereferenceable(205) %i.atc) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623:      ; preds = %bb.le, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621
  %i.bes = getelementptr inbounds nuw i8, ptr %i.asj, i64 8 ; 2 uses
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !15
  %i.beu = add nsw i32 %i.bet, -1                 ; 2 uses
  store i32 %i.beu, ptr %i.bes, align 8, !tbaa !15
  %i.bev = icmp eq i32 %i.beu, 0
  br i1 %i.bev, label %bb.lf, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625

bb.lf:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623
  %i.bew = load ptr, ptr %i.asj, align 8, !tbaa !17
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 8
  %i.bey = load ptr, ptr %i.bex, align 8
  call void %i.bey(ptr noundef nonnull align 8 dereferenceable(205) %i.asj) #15, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625

bb.lg:                                            ; preds = %bb.gx
  %i.bez = landingpad { ptr, i32 }
          cleanup
  br label %.body568

bb.lh:                                            ; preds = %_ZN5IpoptL14curr_compl_x_UEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.bfa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfb = load i32, ptr %i.arh, align 8, !tbaa !15
  %i.bfc = add nsw i32 %i.bfb, -1                 ; 2 uses
  store i32 %i.bfc, ptr %i.arh, align 8, !tbaa !15
  %i.bfd = icmp eq i32 %i.bfc, 0
  br i1 %i.bfd, label %bb.li, label %.body568.thread

bb.li:                                            ; preds = %bb.lh
  %i.bfe = load ptr, ptr %.sroa.0127.0.ph.sink.i544, align 8, !tbaa !17
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  %i.bfg = load ptr, ptr %i.bff, align 8
  call void %i.bfg(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0127.0.ph.sink.i544) #15, !inline_history !74
  br label %.body568.thread

.body568:                                         ; preds = %bb.lg, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit104.sink.split.i509, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit53.thread158.i557, %bb.jc, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97.i525, %bb.ht
  %.pn309 = phi { ptr, i32 } [ %.pn42155.ph.i511, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit104.sink.split.i509 ], [ %i.bez, %bb.lg ], [ %.pn42163.i558, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit53.thread158.i557 ], [ %.pn32.pn.pn.i526, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97.i525 ], [ %i.akb, %bb.ht ], [ %.pn32.pn.pn.i526, %bb.jc ] ; 2 uses
  %.not.i.i628 = icmp eq ptr %.sroa.01101.0, null
  br i1 %.not.i.i628, label %common.resume, label %.body568.thread

.body568.thread:                                  ; preds = %bb.lh, %bb.li, %.body568
  %.pn3091189 = phi { ptr, i32 } [ %.pn309, %.body568 ], [ %i.bfa, %bb.li ], [ %i.bfa, %bb.lh ] ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sroa.01101.0, i64 8 ; 2 uses
  %i.bfi = load i32, ptr %i.bfh, align 8, !tbaa !15
  %i.bfj = add nsw i32 %i.bfi, -1                 ; 2 uses
  store i32 %i.bfj, ptr %i.bfh, align 8, !tbaa !15
  %i.bfk = icmp eq i32 %i.bfj, 0
  br i1 %i.bfk, label %bb.lj, label %common.resume

bb.lj:                                            ; preds = %.body568.thread
  %i.bfl = load ptr, ptr %.sroa.01101.0, align 8, !tbaa !17
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8
  %i.bfn = load ptr, ptr %i.bfm, align 8
  call void %i.bfn(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.01101.0) #15, !inline_history !74
  br label %common.resume

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit577, %.noexc578, %.noexc579
  %i.bfo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641

bb.lk:                                            ; preds = %.noexc583, %.noexc582, %bb.jz
  %i.bfp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639

bb.ll:                                            ; preds = %bb.kn
  %i.bfq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637

bb.lm:                                            ; preds = %.noexc595, %_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit, %.noexc593, %_ZN5Ipopt6Vector3SetEd.exit, %.noexc591, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit590
  %i.bfr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

bb.ln:                                            ; preds = %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit
  %i.bfs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

bb.lo:                                            ; preds = %.noexc605, %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit, %.noexc603, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602
  %i.bft = landingpad { ptr, i32 }
          cleanup
  br label %.thread1201

bb.lp:                                            ; preds = %bb.kw, %.noexc608, %bb.ku
  %i.bfu = landingpad { ptr, i32 }
          cleanup
  br label %.thread1201

bb.lq:                                            ; preds = %bb.kz, %.noexc614, %bb.kx
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  br label %.thread1201

bb.lr:                                            ; preds = %bb.lr, %.lr.ph.split.split.new
  %indvars.iv1266 = phi i64 [ 0, %.lr.ph.split.split.new ], [ %indvars.iv.next1267.1, %bb.lr ] ; 4 uses
  %niter1526 = phi i64 [ 0, %.lr.ph.split.split.new ], [ %niter1526.next.1, %bb.lr ]
  %i.bfw = trunc nuw nsw i64 %indvars.iv1266 to i32
  %.reass1237 = add i32 %invariant.op1236, %i.bfw
  %i.bfx = sext i32 %.reass1237 to i64
  %i.bfy = getelementptr inbounds [8 x i8], ptr %i.bap, i64 %i.bfx
  %i.bfz = load double, ptr %i.bfy, align 8, !tbaa !84
  %i.bga = fneg double %i.bfz
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1266
  %i.bgc = load i32, ptr %i.bgb, align 4, !tbaa !86
  %i.bgd = sext i32 %i.bgc to i64
  %i.bge = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bgd
  store double %i.bga, ptr %i.bge, align 8, !tbaa !84
  %indvars.iv.next1267 = or disjoint i64 %indvars.iv1266, 1 ; 2 uses
  %i.bgf = trunc nuw nsw i64 %indvars.iv.next1267 to i32
  %.reass1237.1 = add i32 %invariant.op1236, %i.bgf
  %i.bgg = sext i32 %.reass1237.1 to i64
  %i.bgh = getelementptr inbounds [8 x i8], ptr %i.bap, i64 %i.bgg
  %i.bgi = load double, ptr %i.bgh, align 8, !tbaa !84
  %i.bgj = fneg double %i.bgi
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1267
  %i.bgl = load i32, ptr %i.bgk, align 4, !tbaa !86
  %i.bgm = sext i32 %i.bgl to i64
  %i.bgn = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bgm
  store double %i.bgj, ptr %i.bgn, align 8, !tbaa !84
  %indvars.iv.next1267.1 = add nuw nsw i64 %indvars.iv1266, 2 ; 2 uses
  %niter1526.next.1 = add nuw i64 %niter1526, 2   ; 2 uses
  %niter1526.ncmp.1 = icmp eq i64 %niter1526.next.1, %unroll_iter1525
  br i1 %niter1526.ncmp.1, label %._crit_edge.loopexit1514.unr-lcssa, label %bb.lr, !llvm.loop !537

.thread1201:                                      ; preds = %bb.lq, %bb.lp, %bb.lo
  %.pn377.pn.pn1199 = phi { ptr, i32 } [ %i.bft, %bb.lo ], [ %i.bfv, %bb.lq ], [ %i.bfu, %bb.lp ] ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.aze, i64 8 ; 2 uses
  %i.bgp = load i32, ptr %i.bgo, align 8, !tbaa !15
  %i.bgq = add nsw i32 %i.bgp, -1                 ; 2 uses
  store i32 %i.bgq, ptr %i.bgo, align 8, !tbaa !15
  %i.bgr = icmp eq i32 %i.bgq, 0
  br i1 %i.bgr, label %bb.ls, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

bb.ls:                                            ; preds = %.thread1201
  %i.bgs = load ptr, ptr %i.aze, align 8, !tbaa !17
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 8
  %i.bgu = load ptr, ptr %i.bgt, align 8
  call void %i.bgu(ptr noundef nonnull align 8 dereferenceable(205) %i.aze) #15, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635:     ; preds = %bb.lm, %bb.ls, %.thread1201, %bb.ln
  %.pn377.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfr, %bb.lm ], [ %i.bfs, %bb.ln ], [ %.pn377.pn.pn1199, %.thread1201 ], [ %.pn377.pn.pn1199, %bb.ls ] ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8 ; 2 uses
  %i.bgw = load i32, ptr %i.bgv, align 8, !tbaa !15
  %i.bgx = add nsw i32 %i.bgw, -1                 ; 2 uses
  store i32 %i.bgx, ptr %i.bgv, align 8, !tbaa !15
  %i.bgy = icmp eq i32 %i.bgx, 0
  br i1 %i.bgy, label %bb.lt, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637

bb.lt:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635
  %i.bgz = load ptr, ptr %i.ayr, align 8, !tbaa !17
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  %i.bhb = load ptr, ptr %i.bha, align 8
  call void %i.bhb(ptr noundef nonnull align 8 dereferenceable(205) %i.ayr) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637:      ; preds = %bb.ll, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635, %bb.lt
  %.pn377.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfq, %bb.ll ], [ %.pn377.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635 ], [ %.pn377.pn.pn.pn.pn, %bb.lt ] ; 2 uses
  %i.bhc = load i32, ptr %i.ayj, align 8, !tbaa !15
  %i.bhd = add nsw i32 %i.bhc, -1                 ; 2 uses
  store i32 %i.bhd, ptr %i.ayj, align 8, !tbaa !15
  %i.bhe = icmp eq i32 %i.bhd, 0
  br i1 %i.bhe, label %bb.lu, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639

bb.lu:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637
  %i.bhf = load ptr, ptr %i.awa, align 8, !tbaa !17
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8
  %i.bhh = load ptr, ptr %i.bhg, align 8
  call void %i.bhh(ptr noundef nonnull align 8 dereferenceable(205) %i.awa) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639:      ; preds = %bb.lk, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637, %bb.lu
  %.pn377.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfp, %bb.lk ], [ %.pn377.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637 ], [ %.pn377.pn.pn.pn.pn.pn, %bb.lu ] ; 2 uses
  %i.bhi = load i32, ptr %i.avt, align 8, !tbaa !15
  %i.bhj = add nsw i32 %i.bhi, -1                 ; 2 uses
  store i32 %i.bhj, ptr %i.avt, align 8, !tbaa !15
  %i.bhk = icmp eq i32 %i.bhj, 0
  br i1 %i.bhk, label %bb.lv, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641

bb.lv:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639
  %i.bhl = load ptr, ptr %i.atc, align 8, !tbaa !17
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  %i.bhn = load ptr, ptr %i.bhm, align 8
  call void %i.bhn(ptr noundef nonnull align 8 dereferenceable(205) %i.atc) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639, %bb.lv, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641.thread
  %.pn377.pn.pn.pn.pn.pn.pn.pn1210 = phi { ptr, i32 } [ %i.bfo, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641.thread ], [ %.pn377.pn.pn.pn.pn.pn.pn, %bb.lv ], [ %.pn377.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639 ] ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.asj, i64 8 ; 2 uses
  %i.bhp = load i32, ptr %i.bho, align 8, !tbaa !15
  %i.bhq = add nsw i32 %i.bhp, -1                 ; 2 uses
  store i32 %i.bhq, ptr %i.bho, align 8, !tbaa !15
  %i.bhr = icmp eq i32 %i.bhq, 0
  br i1 %i.bhr, label %bb.lw, label %common.resume

bb.lw:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641
  %i.bhs = load ptr, ptr %i.asj, align 8, !tbaa !17
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 8
  %i.bhu = load ptr, ptr %i.bht, align 8
  call void %i.bhu(ptr noundef nonnull align 8 dereferenceable(205) %i.asj) #15, !inline_history !112
  br label %common.resume

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625:     ; preds = %bb.lf, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit573, %bb.eg
  %.not313 = icmp eq ptr %9, null
  br i1 %.not313, label %bb.px, label %bb.lx

bb.lx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !538
  store ptr null, ptr %13, align 8, !tbaa !108, !noalias !538
  %i.bhv = icmp eq ptr %.0215, null
  br i1 %i.bhv, label %bb.ly, label %bb.mb

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15, !noalias !538
  call void @_ZN5Ipopt25IpoptCalculatedQuantities15curr_grad_lag_xEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %14, ptr noundef nonnull align 8 dereferenceable(2185) %2), !noalias !538
  %i.bhw = load ptr, ptr %14, align 8, !tbaa !108, !noalias !538 ; 6 uses
  %.not.i.i.i.i654 = icmp eq ptr %i.bhw, null
  br i1 %.not.i.i.i.i654, label %.thread205.i, label %bb.lz

.thread205.i:                                     ; preds = %bb.ly
  store ptr null, ptr %13, align 8, !tbaa !108, !noalias !538
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i655

bb.lz:                                            ; preds = %bb.ly
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 8
  %i.bhy = load i32, ptr %i.bhx, align 8, !tbaa !15, !noalias !538
  store ptr %i.bhw, ptr %13, align 8, !tbaa !108, !noalias !538
  %i.bhz = icmp eq i32 %i.bhy, 0
  br i1 %i.bhz, label %bb.ma, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i655

bb.ma:                                            ; preds = %bb.lz
  %i.bia = load ptr, ptr %i.bhw, align 8, !tbaa !17, !noalias !538
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 8
  %i.bic = load ptr, ptr %i.bib, align 8, !noalias !538
  call void %i.bic(ptr noundef nonnull align 8 dereferenceable(205) %i.bhw) #15, !noalias !538, !inline_history !541
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i655

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i655:   ; preds = %bb.ma, %bb.lz, %.thread205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !538
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit.i650

bb.mb:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15, !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15, !noalias !538
  invoke fastcc void @_ZN5IpoptL6curr_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull readonly %1, ptr noundef nonnull %.0216, ptr noundef nonnull readnone %.0215, i1 noundef zeroext true)
          to label %bb.mc unwind label %bb.ns, !noalias !538

bb.mc:                                            ; preds = %bb.mb
  %i.bid = load ptr, ptr %16, align 8, !tbaa !71, !noalias !538 ; 7 uses
  %i.bie = load ptr, ptr %.0216, align 8, !tbaa !17, !noalias !538
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 48
  %i.big = load ptr, ptr %i.bif, align 8, !noalias !538
  invoke void %i.big(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %15, ptr noundef nonnull align 8 dereferenceable(544) %.0216, ptr noundef nonnull align 8 dereferenceable(205) %i.bid)
          to label %bb.md unwind label %bb.nt, !noalias !538

bb.md:                                            ; preds = %bb.mc
  %i.bih = load ptr, ptr %15, align 8, !tbaa !108, !noalias !538 ; 17 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 56
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !92, !noalias !538 ; 2 uses
  %i.bik = load ptr, ptr %i.bij, align 8, !tbaa !17, !noalias !538
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 16
  %i.bim = load ptr, ptr %i.bil, align 8, !noalias !538
  %i.bin = invoke noundef ptr %i.bim(ptr noundef nonnull align 8 dereferenceable(16) %i.bij)
          to label %.noexc.i644 unwind label %bb.nu, !noalias !538, !inline_history !198 ; 42 uses

.noexc.i644:                                      ; preds = %bb.md
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !17, !noalias !538
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 16
  %i.biq = load ptr, ptr %i.bip, align 8, !noalias !538
  invoke void %i.biq(ptr noundef nonnull align 8 dereferenceable(205) %i.bin, ptr noundef nonnull align 8 dereferenceable(205) %i.bih)
          to label %.noexc75.i645 unwind label %bb.nu, !noalias !538, !inline_history !198

.noexc75.i645:                                    ; preds = %.noexc.i644
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.bin)
          to label %.noexc76.i646 unwind label %bb.nu, !noalias !538

.noexc76.i646:                                    ; preds = %.noexc75.i645
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bih, i64 48
  %i.bis = load i32, ptr %i.bir, align 8, !tbaa !199, !noalias !538 ; 7 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bih, i64 88
  %i.biu = load i32, ptr %i.bit, align 8, !tbaa !208, !noalias !538
  %i.biv = icmp eq i32 %i.bis, %i.biu
  br i1 %i.biv, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %.noexc76.i646
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bin, i64 48
  %i.bix = load i32, ptr %i.biw, align 8, !tbaa !199, !noalias !538
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bin, i64 88
  store i32 %i.bix, ptr %i.biy, align 8, !tbaa !208, !noalias !538
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bih, i64 96
  %i.bja = load double, ptr %i.biz, align 8, !tbaa !212, !noalias !538
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bin, i64 96
  store double %i.bja, ptr %i.bjb, align 8, !tbaa !212, !noalias !538
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %.noexc76.i646
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bih, i64 104
  %i.bjd = load i32, ptr %i.bjc, align 8, !tbaa !213, !noalias !538
  %i.bje = icmp eq i32 %i.bis, %i.bjd
  br i1 %i.bje, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bin, i64 48
  %i.bjg = load i32, ptr %i.bjf, align 8, !tbaa !199, !noalias !538
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bin, i64 104
  store i32 %i.bjg, ptr %i.bjh, align 8, !tbaa !213, !noalias !538
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bih, i64 112
  %i.bjj = load double, ptr %i.bji, align 8, !tbaa !214, !noalias !538
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bin, i64 112
  store double %i.bjj, ptr %i.bjk, align 8, !tbaa !214, !noalias !538
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bih, i64 120
  %i.bjm = load i32, ptr %i.bjl, align 8, !tbaa !215, !noalias !538
  %i.bjn = icmp eq i32 %i.bis, %i.bjm
  br i1 %i.bjn, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bin, i64 48
  %i.bjp = load i32, ptr %i.bjo, align 8, !tbaa !199, !noalias !538
end_hunk_2
begin_hunk_3_@_ZNK5Ipopt4TNLP19get_curr_violationsEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_S6_S6_iS6_S6_:bb.a
  %i.bux = getelementptr inbounds nuw i8, ptr %i.btw, i64 8 ; 2 uses
  %i.buy = load i32, ptr %i.bux, align 8, !tbaa !15, !noalias !538
  %i.buz = add nsw i32 %i.buy, -1                 ; 2 uses
  store i32 %i.buz, ptr %i.bux, align 8, !tbaa !15, !noalias !538
  %i.bva = icmp eq i32 %i.buz, 0
  br i1 %i.bva, label %bb.ph, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i

bb.ph:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i
  %i.bvb = load ptr, ptr %i.btw, align 8, !tbaa !17, !noalias !538
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 8
  %i.bvd = load ptr, ptr %i.bvc, align 8, !noalias !538
  call void %i.bvd(ptr noundef nonnull align 8 dereferenceable(24) %i.btw) #15, !noalias !538, !inline_history !559
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i: ; preds = %bb.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15, !noalias !538
  %.pre182.i = load ptr, ptr %13, align 8, !tbaa !108, !noalias !538
  br label %bb.pk

bb.pi:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i651
  %i.bve = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.btw, i64 8 ; 2 uses
  %i.bvg = load i32, ptr %i.bvf, align 8, !tbaa !15, !noalias !538
  %i.bvh = add nsw i32 %i.bvg, -1                 ; 2 uses
  store i32 %i.bvh, ptr %i.bvf, align 8, !tbaa !15, !noalias !538
  %i.bvi = icmp eq i32 %i.bvh, 0
  br i1 %i.bvi, label %bb.pj, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i

bb.pj:                                            ; preds = %bb.pi
  %i.bvj = load ptr, ptr %i.btw, align 8, !tbaa !17, !noalias !538
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 8
  %i.bvl = load ptr, ptr %i.bvk, align 8, !noalias !538
  call void %i.bvl(ptr noundef nonnull align 8 dereferenceable(24) %i.btw) #15, !noalias !538, !inline_history !559
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i

bb.pk:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit.i650
  %i.bvm = phi ptr [ %.pre182.i, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i ], [ %i.btu, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit.i650 ] ; 11 uses
  %.not.i.i155.i = icmp eq ptr %i.bvm, null
  br i1 %.not.i.i155.i, label %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 8
  %i.bvo = load i32, ptr %i.bvn, align 8, !tbaa !15, !noalias !538
  %i.bvp = icmp eq i32 %i.bvo, 0
  br i1 %i.bvp, label %bb.pm, label %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

bb.pm:                                            ; preds = %bb.pl
  %i.bvq = load ptr, ptr %i.bvm, align 8, !tbaa !17, !noalias !538
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 8
  %i.bvs = load ptr, ptr %i.bvr, align 8, !noalias !538
  call void %i.bvs(ptr noundef nonnull align 8 dereferenceable(205) %i.bvm) #15, !noalias !538, !inline_history !541
  br label %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i:    ; preds = %bb.pj, %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15, !noalias !538
  %.pre180.i = load ptr, ptr %13, align 8, !tbaa !108, !noalias !538 ; 4 uses
  %.not.i.i158.i = icmp eq ptr %.pre180.i, null
  br i1 %.not.i.i158.i, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i, label %bb.pn

bb.pn:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i
  %i.bvt = getelementptr inbounds nuw i8, ptr %.pre180.i, i64 8 ; 2 uses
  %i.bvu = load i32, ptr %i.bvt, align 8, !tbaa !15, !noalias !538
  %i.bvv = add nsw i32 %i.bvu, -1                 ; 2 uses
  store i32 %i.bvv, ptr %i.bvt, align 8, !tbaa !15, !noalias !538
  %i.bvw = icmp eq i32 %i.bvv, 0
  br i1 %i.bvw, label %bb.po, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i

bb.po:                                            ; preds = %bb.pn
  %i.bvx = load ptr, ptr %.pre180.i, align 8, !tbaa !17, !noalias !538
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvx, i64 8
  %i.bvz = load ptr, ptr %i.bvy, align 8, !noalias !538
  call void %i.bvz(ptr noundef nonnull align 8 dereferenceable(205) %.pre180.i) #15, !noalias !538, !inline_history !541
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i:   ; preds = %bb.po, %bb.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i, %bb.ow, %bb.ov, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit123.i
  %.pn71219.i = phi { ptr, i32 } [ %i.bve, %bb.po ], [ %i.bve, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i ], [ %i.bve, %bb.pn ], [ %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ov ], [ %.pn.pn.i, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit123.i ], [ %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ow ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !538
  br label %common.resume

_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit: ; preds = %bb.pk, %bb.pl, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !538
  invoke void @_ZN5Ipopt11TNLPAdapter7ResortXERKNS_6VectorEPdb(ptr noundef nonnull align 8 dereferenceable(600) %i.ab, ptr noundef nonnull align 8 dereferenceable(205) %i.bvm, ptr noundef nonnull %9, i1 noundef zeroext false)
          to label %bb.pp unwind label %bb.ps

bb.pp:                                            ; preds = %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvm, i64 8 ; 2 uses
  %i.bwb = load i32, ptr %i.bwa, align 8, !tbaa !15
  %i.bwc = add nsw i32 %i.bwb, -1                 ; 2 uses
  store i32 %i.bwc, ptr %i.bwa, align 8, !tbaa !15
  %i.bwd = icmp eq i32 %i.bwc, 0
  br i1 %i.bwd, label %bb.pq, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657

bb.pq:                                            ; preds = %bb.pp
  %i.bwe = load ptr, ptr %i.bvm, align 8, !tbaa !17
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  %i.bwg = load ptr, ptr %i.bwf, align 8
  call void %i.bwg(ptr noundef nonnull align 8 dereferenceable(248) %i.bvm) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657: ; preds = %bb.pp, %bb.pq
  %i.bwh = icmp sgt i32 %i.da, 0
  %i.bwi = icmp eq i32 %i.de, 2
  %or.cond19 = select i1 %i.bwh, i1 %i.bwi, i1 false
  br i1 %or.cond19, label %bb.pr, label %bb.px

bb.pr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  call fastcc void @_ZN5IpoptL8curr_y_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %55, ptr noundef nonnull %1, ptr noundef %.0216, ptr noundef %.0215, i1 noundef zeroext %3)
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.bwk = load ptr, ptr %i.bwj, align 8, !tbaa !104 ; 6 uses
  %i.bwl = load ptr, ptr %55, align 8, !tbaa !71  ; 8 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 233
  %i.bwn = load i8, ptr %i.bwm, align 1, !tbaa !463, !range !466, !noundef !122
  %i.bwo = trunc nuw i8 %i.bwn to i1
  br i1 %i.bwo, label %.lr.ph1247, label %.lr.ph1243

.lr.ph1243:                                       ; preds = %bb.pr
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwl, i64 216
  %i.bwq = load ptr, ptr %i.bwp, align 8, !tbaa !467 ; 3 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwl, i64 56
  %i.bws = load ptr, ptr %i.bwr, align 8, !tbaa !92
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 12
  %i.bwu = load i32, ptr %i.bwt, align 4, !tbaa !93
  %invariant.op1244 = sub i32 %i.bwu, %i.da       ; 3 uses
  %wide.trip.count1286 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1533 = and i64 %wide.trip.count1286, 1
  %i.bwv = icmp eq i32 %i.da, 1
  br i1 %i.bwv, label %.epil.preheader1532, label %.lr.ph1243.new

.lr.ph1243.new:                                   ; preds = %.lr.ph1243
  %unroll_iter1536 = and i64 %wide.trip.count1286, 2147483646
  br label %bb.pv

.lr.ph1247:                                       ; preds = %bb.pr
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwl, i64 240 ; 3 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bwl, i64 56
  %i.bwy = load ptr, ptr %i.bwx, align 8, !tbaa !92
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 12
  %i.bxa = load i32, ptr %i.bwz, align 4, !tbaa !93
  %invariant.op1248 = sub i32 %i.bxa, %i.da       ; 3 uses
  %wide.trip.count1291 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1539 = and i64 %wide.trip.count1291, 1
  %i.bxb = icmp eq i32 %i.da, 1
  br i1 %i.bxb, label %.epil.preheader1538, label %.lr.ph1247.new

.lr.ph1247.new:                                   ; preds = %.lr.ph1247
  %unroll_iter1542 = and i64 %wide.trip.count1291, 2147483646
  br label %bb.pu

bb.ps:                                            ; preds = %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.bxc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bvm, i64 8 ; 2 uses
  %i.bxe = load i32, ptr %i.bxd, align 8, !tbaa !15
  %i.bxf = add nsw i32 %i.bxe, -1                 ; 2 uses
  store i32 %i.bxf, ptr %i.bxd, align 8, !tbaa !15
  %i.bxg = icmp eq i32 %i.bxf, 0
  br i1 %i.bxg, label %bb.pt, label %common.resume

bb.pt:                                            ; preds = %bb.ps
  %i.bxh = load ptr, ptr %i.bvm, align 8, !tbaa !17
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 8
  %i.bxj = load ptr, ptr %i.bxi, align 8
  call void %i.bxj(ptr noundef nonnull align 8 dereferenceable(248) %i.bvm) #15, !inline_history !74
  br label %common.resume

bb.pu:                                            ; preds = %bb.pu, %.lr.ph1247.new
  %indvars.iv1288 = phi i64 [ 0, %.lr.ph1247.new ], [ %indvars.iv.next1289.1, %bb.pu ] ; 4 uses
  %niter1543 = phi i64 [ 0, %.lr.ph1247.new ], [ %niter1543.next.1, %bb.pu ]
  %i.bxk = load double, ptr %i.bww, align 8, !tbaa !560
  %i.bxl = trunc nuw nsw i64 %indvars.iv1288 to i32
  %.reass1249 = add i32 %invariant.op1248, %i.bxl
  %i.bxm = sext i32 %.reass1249 to i64
  %i.bxn = getelementptr inbounds [8 x i8], ptr %i.bwk, i64 %i.bxm
  %i.bxo = load double, ptr %i.bxn, align 8, !tbaa !84
  %i.bxp = fsub double 1.000000e+00, %i.bxo
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1288
  %i.bxr = load i32, ptr %i.bxq, align 4, !tbaa !86
  %i.bxs = sext i32 %i.bxr to i64
  %i.bxt = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bxs ; 2 uses
  %i.bxu = load double, ptr %i.bxt, align 8, !tbaa !84
  %i.bxv = call double @llvm.fmuladd.f64(double %i.bxk, double %i.bxp, double %i.bxu)
  store double %i.bxv, ptr %i.bxt, align 8, !tbaa !84
  %indvars.iv.next1289 = or disjoint i64 %indvars.iv1288, 1 ; 2 uses
  %i.bxw = load double, ptr %i.bww, align 8, !tbaa !560
  %i.bxx = trunc nuw nsw i64 %indvars.iv.next1289 to i32
  %.reass1249.1 = add i32 %invariant.op1248, %i.bxx
  %i.bxy = sext i32 %.reass1249.1 to i64
  %i.bxz = getelementptr inbounds [8 x i8], ptr %i.bwk, i64 %i.bxy
  %i.bya = load double, ptr %i.bxz, align 8, !tbaa !84
  %i.byb = fsub double 1.000000e+00, %i.bya
  %i.byc = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1289
  %i.byd = load i32, ptr %i.byc, align 4, !tbaa !86
  %i.bye = sext i32 %i.byd to i64
  %i.byf = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bye ; 2 uses
  %i.byg = load double, ptr %i.byf, align 8, !tbaa !84
  %i.byh = call double @llvm.fmuladd.f64(double %i.bxw, double %i.byb, double %i.byg)
  store double %i.byh, ptr %i.byf, align 8, !tbaa !84
  %indvars.iv.next1289.1 = add nuw nsw i64 %indvars.iv1288, 2 ; 2 uses
  %niter1543.next.1 = add nuw i64 %niter1543, 2   ; 2 uses
  %niter1543.ncmp.1 = icmp eq i64 %niter1543.next.1, %unroll_iter1542
  br i1 %niter1543.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.pu, !llvm.loop !561

bb.pv:                                            ; preds = %bb.pv, %.lr.ph1243.new
  %indvars.iv1283 = phi i64 [ 0, %.lr.ph1243.new ], [ %indvars.iv.next1284.1, %bb.pv ] ; 4 uses
  %niter1537 = phi i64 [ 0, %.lr.ph1243.new ], [ %niter1537.next.1, %bb.pv ]
  %i.byi = trunc nuw nsw i64 %indvars.iv1283 to i32
  %.reass1245 = add i32 %invariant.op1244, %i.byi
  %i.byj = sext i32 %.reass1245 to i64            ; 2 uses
  %i.byk = getelementptr inbounds [8 x i8], ptr %i.bwq, i64 %i.byj
  %i.byl = load double, ptr %i.byk, align 8, !tbaa !84
  %i.bym = getelementptr inbounds [8 x i8], ptr %i.bwk, i64 %i.byj
  %i.byn = load double, ptr %i.bym, align 8, !tbaa !84
  %i.byo = fsub double 1.000000e+00, %i.byn
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1283
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !86
  %i.byr = sext i32 %i.byq to i64
  %i.bys = getelementptr inbounds [8 x i8], ptr %9, i64 %i.byr ; 2 uses
  %i.byt = load double, ptr %i.bys, align 8, !tbaa !84
  %i.byu = call double @llvm.fmuladd.f64(double %i.byl, double %i.byo, double %i.byt)
  store double %i.byu, ptr %i.bys, align 8, !tbaa !84
  %indvars.iv.next1284 = or disjoint i64 %indvars.iv1283, 1 ; 2 uses
  %i.byv = trunc nuw nsw i64 %indvars.iv.next1284 to i32
  %.reass1245.1 = add i32 %invariant.op1244, %i.byv
  %i.byw = sext i32 %.reass1245.1 to i64          ; 2 uses
  %i.byx = getelementptr inbounds [8 x i8], ptr %i.bwq, i64 %i.byw
  %i.byy = load double, ptr %i.byx, align 8, !tbaa !84
  %i.byz = getelementptr inbounds [8 x i8], ptr %i.bwk, i64 %i.byw
  %i.bza = load double, ptr %i.byz, align 8, !tbaa !84
  %i.bzb = fsub double 1.000000e+00, %i.bza
  %i.bzc = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1284
  %i.bzd = load i32, ptr %i.bzc, align 4, !tbaa !86
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bze ; 2 uses
  %i.bzg = load double, ptr %i.bzf, align 8, !tbaa !84
  %i.bzh = call double @llvm.fmuladd.f64(double %i.byy, double %i.bzb, double %i.bzg)
  store double %i.bzh, ptr %i.bzf, align 8, !tbaa !84
  %indvars.iv.next1284.1 = add nuw nsw i64 %indvars.iv1283, 2 ; 2 uses
  %niter1537.next.1 = add nuw i64 %niter1537, 2   ; 2 uses
  %niter1537.ncmp.1 = icmp eq i64 %niter1537.next.1, %unroll_iter1536
  br i1 %niter1537.ncmp.1, label %.loopexit.loopexit1512.unr-lcssa, label %bb.pv, !llvm.loop !562

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.pu
  %lcmp.mod1540.not = icmp eq i64 %xtraiter1539, 0
  br i1 %lcmp.mod1540.not, label %.loopexit, label %.epil.preheader1538

.epil.preheader1538:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1247
  %indvars.iv1288.epil.init = phi i64 [ 0, %.lr.ph1247 ], [ %indvars.iv.next1289.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1541 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1541)
  %i.bzi = load double, ptr %i.bww, align 8, !tbaa !560
  %i.bzj = trunc nuw nsw i64 %indvars.iv1288.epil.init to i32
  %.reass1249.epil = add i32 %invariant.op1248, %i.bzj
  %i.bzk = sext i32 %.reass1249.epil to i64
  %i.bzl = getelementptr inbounds [8 x i8], ptr %i.bwk, i64 %i.bzk
  %i.bzm = load double, ptr %i.bzl, align 8, !tbaa !84
  %i.bzn = fsub double 1.000000e+00, %i.bzm
  %i.bzo = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1288.epil.init
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !86
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bzq ; 2 uses
  %i.bzs = load double, ptr %i.bzr, align 8, !tbaa !84
  %i.bzt = call double @llvm.fmuladd.f64(double %i.bzi, double %i.bzn, double %i.bzs)
  store double %i.bzt, ptr %i.bzr, align 8, !tbaa !84
  br label %.loopexit

.loopexit.loopexit1512.unr-lcssa:                 ; preds = %bb.pv
  %lcmp.mod1534.not = icmp eq i64 %xtraiter1533, 0
  br i1 %lcmp.mod1534.not, label %.loopexit, label %.epil.preheader1532

.epil.preheader1532:                              ; preds = %.loopexit.loopexit1512.unr-lcssa, %.lr.ph1243
  %indvars.iv1283.epil.init = phi i64 [ 0, %.lr.ph1243 ], [ %indvars.iv.next1284.1, %.loopexit.loopexit1512.unr-lcssa ] ; 2 uses
  %lcmp.mod1535 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1535)
  %i.bzu = trunc nuw nsw i64 %indvars.iv1283.epil.init to i32
  %.reass1245.epil = add i32 %invariant.op1244, %i.bzu
  %i.bzv = sext i32 %.reass1245.epil to i64       ; 2 uses
  %i.bzw = getelementptr inbounds [8 x i8], ptr %i.bwq, i64 %i.bzv
  %i.bzx = load double, ptr %i.bzw, align 8, !tbaa !84
  %i.bzy = getelementptr inbounds [8 x i8], ptr %i.bwk, i64 %i.bzv
  %i.bzz = load double, ptr %i.bzy, align 8, !tbaa !84
  %i.caa = fsub double 1.000000e+00, %i.bzz
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1283.epil.init
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !86
  %i.cad = sext i32 %i.cac to i64
  %i.cae = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cad ; 2 uses
  %i.caf = load double, ptr %i.cae, align 8, !tbaa !84
  %i.cag = call double @llvm.fmuladd.f64(double %i.bzx, double %i.caa, double %i.caf)
  store double %i.cag, ptr %i.cae, align 8, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader1532, %.loopexit.loopexit1512.unr-lcssa, %.epil.preheader1538, %.loopexit.loopexit.unr-lcssa
  %i.cah = getelementptr inbounds nuw i8, ptr %i.bwl, i64 8 ; 2 uses
  %i.cai = load i32, ptr %i.cah, align 8, !tbaa !15
  %i.caj = add nsw i32 %i.cai, -1                 ; 2 uses
  store i32 %i.caj, ptr %i.cah, align 8, !tbaa !15
  %i.cak = icmp eq i32 %i.caj, 0
  br i1 %i.cak, label %bb.pw, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661

bb.pw:                                            ; preds = %.loopexit
  %i.cal = load ptr, ptr %i.bwl, align 8, !tbaa !17
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  %i.can = load ptr, ptr %i.cam, align 8
  call void %i.can(ptr noundef nonnull align 8 dereferenceable(248) %i.bwl) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661: ; preds = %.loopexit, %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  br label %bb.px

bb.px:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625
  %i.cao = icmp ne ptr %11, null                  ; 2 uses
  %i.cap = icmp ne ptr %12, null                  ; 2 uses
  %or.cond21 = or i1 %i.cao, %i.cap
  br i1 %or.cond21, label %bb.py, label %.critedge.thread

bb.py:                                            ; preds = %bb.px
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #15
  call fastcc void @_ZN5IpoptL6curr_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %56, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0216, ptr noundef %.0215, i1 noundef zeroext %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  invoke fastcc void @_ZN5IpoptL6curr_dEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %57, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0216, ptr noundef %.0215, i1 noundef zeroext true)
          to label %bb.pz unwind label %bb.rf

bb.pz:                                            ; preds = %bb.py
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #15
  store ptr null, ptr %58, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #15
  %i.caq = load ptr, ptr %.0216, align 8, !tbaa !17
  %i.car = getelementptr inbounds nuw i8, ptr %i.caq, i64 320
  %i.cas = load ptr, ptr %i.car, align 8
  invoke void %i.cas(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %59, ptr noundef nonnull align 8 dereferenceable(544) %.0216)
          to label %bb.qa unwind label %bb.rg

bb.qa:                                            ; preds = %bb.pz
  %i.cat = load ptr, ptr %59, align 8, !tbaa !108 ; 7 uses
  %.not.i.i.i664 = icmp eq ptr %i.cat, null
  br i1 %.not.i.i.i664, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 8 ; 2 uses
  %i.cav = load i32, ptr %i.cau, align 8, !tbaa !15
  %i.caw = add nsw i32 %i.cav, 1
  store i32 %i.caw, ptr %i.cau, align 8, !tbaa !15
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  %i.cax = load ptr, ptr %58, align 8, !tbaa !108 ; 4 uses
  %.not.i.i.i.i665 = icmp eq ptr %i.cax, null
  br i1 %.not.i.i.i.i665, label %bb.qf, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cax, i64 8 ; 2 uses
  %i.caz = load i32, ptr %i.cay, align 8, !tbaa !15
  %i.cba = add nsw i32 %i.caz, -1                 ; 2 uses
  store i32 %i.cba, ptr %i.cay, align 8, !tbaa !15
  %i.cbb = icmp eq i32 %i.cba, 0
  br i1 %i.cbb, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.cbc = load ptr, ptr %i.cax, align 8, !tbaa !17
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 8
  %i.cbe = load ptr, ptr %i.cbd, align 8
  call void %i.cbe(ptr noundef nonnull align 8 dereferenceable(205) %i.cax) #15, !inline_history !160
  %.pre1301 = load ptr, ptr %59, align 8, !tbaa !108
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.qd, %bb.qc
  %i.cbf = phi ptr [ %.pre1301, %bb.qe ], [ %i.cat, %bb.qd ], [ %i.cat, %bb.qc ] ; 4 uses
  store ptr %i.cat, ptr %58, align 8, !tbaa !108
  %.not.i.i666 = icmp eq ptr %i.cbf, null
  br i1 %.not.i.i666, label %thread-pre-split, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 8 ; 2 uses
  %i.cbh = load i32, ptr %i.cbg, align 8, !tbaa !15
  %i.cbi = add nsw i32 %i.cbh, -1                 ; 2 uses
  store i32 %i.cbi, ptr %i.cbg, align 8, !tbaa !15
  %i.cbj = icmp eq i32 %i.cbi, 0
  br i1 %i.cbj, label %bb.qh, label %thread-pre-split

bb.qh:                                            ; preds = %bb.qg
  %i.cbk = load ptr, ptr %i.cbf, align 8, !tbaa !17
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbk, i64 8
  %i.cbm = load ptr, ptr %i.cbl, align 8
  call void %i.cbm(ptr noundef nonnull align 8 dereferenceable(205) %i.cbf) #15, !inline_history !112
  %.pr.pre = load ptr, ptr %58, align 8, !tbaa !108
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.qh, %bb.qg, %bb.qf
  %i.cbn = phi ptr [ %i.cat, %bb.qf ], [ %i.cat, %bb.qg ], [ %.pr.pre, %bb.qh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #15
  %.not1223 = icmp eq ptr %i.cbn, null
  br i1 %.not1223, label %bb.rt, label %bb.qi

bb.qi:                                            ; preds = %thread-pre-split
  %i.cbo = getelementptr inbounds nuw i8, ptr %.0216, i64 16 ; 2 uses
  %i.cbp = load ptr, ptr %i.cbo, align 8, !tbaa !78, !noalias !563 ; 10 uses
  %.not.i.i.i.i668 = icmp eq ptr %i.cbp, null
  br i1 %.not.i.i.i.i668, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbp, i64 8 ; 2 uses
  %i.cbr = load i32, ptr %i.cbq, align 8, !tbaa !15, !noalias !563
  %i.cbs = add nsw i32 %i.cbr, 1
  store i32 %i.cbs, ptr %i.cbq, align 8, !tbaa !15, !noalias !563
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit:          ; preds = %bb.qj, %bb.qi
  %i.cbt = load ptr, ptr %i.cbp, align 8, !tbaa !17
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbt, i64 200
  %i.cbv = load ptr, ptr %i.cbu, align 8
  %i.cbw = invoke noundef zeroext i1 %i.cbv(ptr noundef nonnull align 8 dereferenceable(24) %i.cbp)
          to label %bb.qk unwind label %bb.ri

bb.qk:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbp, i64 8 ; 2 uses
  %i.cby = load i32, ptr %i.cbx, align 8, !tbaa !15
  %i.cbz = add nsw i32 %i.cby, -1                 ; 2 uses
  store i32 %i.cbz, ptr %i.cbx, align 8, !tbaa !15
  %i.cca = icmp eq i32 %i.cbz, 0
  br i1 %i.cca, label %bb.ql, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

bb.ql:                                            ; preds = %bb.qk
  %i.ccb = load ptr, ptr %i.cbp, align 8, !tbaa !17
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 8
  %i.ccd = load ptr, ptr %i.ccc, align 8
  call void %i.ccd(ptr noundef nonnull align 8 dereferenceable(24) %i.cbp) #15, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit: ; preds = %bb.qk, %bb.ql
  br i1 %i.cbw, label %bb.qm, label %bb.sd

bb.qm:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  %i.cce = load ptr, ptr %i.cbo, align 8, !tbaa !78, !noalias !566 ; 9 uses
  %.not.i.i.i.i670 = icmp eq ptr %i.cce, null     ; 2 uses
  br i1 %.not.i.i.i.i670, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit671, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
end_hunk_3
