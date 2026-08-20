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
  br i1 %i.dg, label %.split1228.split.split.preheader, label %.split1230.us.thread

.split1228.split.split.preheader:                 ; preds = %.split1228.split
  %80 = load ptr, ptr %i.pn, align 8, !tbaa !92
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 12
  %82 = load i32, ptr %81, align 4, !tbaa !93
  %invariant.op = sub i32 %82, %i.da              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.da to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.qt = icmp eq i32 %i.da, 1
  br i1 %i.qt, label %.split1228.split.split.epil.preheader, label %.split1228.split.split.preheader.new

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
  %i.qu = fcmp ogt double %.0208.us1233.epil, 0.000000e+00
  %.sroa.speculated.i486.us1234.epil = select i1 %i.qu, double %.0208.us1233.epil, double 0.000000e+00
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1256.epil.init
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !86
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %6, i64 %i.qx
  store double %.sroa.speculated.i486.us1234.epil, ptr %i.qy, align 8, !tbaa !84
  br label %.split1230.us.thread

.split1230.us.thread.loopexit1515.unr-lcssa:      ; preds = %.split1228.split.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split1230.us.thread, label %.split1228.split.split.epil.preheader

.split1228.split.split.epil.preheader:            ; preds = %.split1230.us.thread.loopexit1515.unr-lcssa, %.split1228.split.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.split1228.split.split.preheader ], [ %indvars.iv.next.1, %.split1230.us.thread.loopexit1515.unr-lcssa ] ; 2 uses
  %lcmp.mod1516 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1516)
  %i.qz = trunc i64 %indvars.iv.epil.init to i32
  %.reass.epil = add i32 %invariant.op, %i.qz
  %i.ra = sext i32 %.reass.epil to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.ra
  %.0208.epil = load double, ptr %i.rb, align 8, !tbaa !84 ; 2 uses
  %i.rc = fcmp ogt double %.0208.epil, 0.000000e+00
  %.sroa.speculated.i486.epil = select i1 %i.rc, double %.0208.epil, double 0.000000e+00
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.epil.init
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !86
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [8 x i8], ptr %6, i64 %i.rf
  store double %.sroa.speculated.i486.epil, ptr %i.rg, align 8, !tbaa !84
  br label %.split1230.us.thread

.split1230.us.thread:                             ; preds = %.split1228.split.split.epil.preheader, %.split1230.us.thread.loopexit1515.unr-lcssa, %.split1228.split.us.split.epil.preheader, %.split1230.us.thread.loopexit.unr-lcssa, %.split1228.split, %.split1228.split.us, %.split1230.us
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !15
  %i.rj = add nsw i32 %i.ri, -1                   ; 2 uses
  store i32 %i.rj, ptr %i.rh, align 8, !tbaa !15
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.eb, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479

bb.eb:                                            ; preds = %.split1230.us.thread
  %i.rl = load ptr, ptr %i.pi, align 8, !tbaa !17
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(248) %i.pi) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479: ; preds = %.split1230.us, %.split1230.us.thread, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  br label %bb.eg

bb.ec:                                            ; preds = %bb.ce, %bb.cb
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ed:                                            ; preds = %_ZN5IpoptL13curr_x_U_violEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.rp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.098.1.i452, i64 8 ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !15
  %i.rs = add nsw i32 %i.rr, -1                   ; 2 uses
  store i32 %i.rs, ptr %i.rq, align 8, !tbaa !15
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.ee, label %.body.thread

bb.ee:                                            ; preds = %bb.ed
  %i.ru = load ptr, ptr %.sroa.098.1.i452, align 8, !tbaa !17
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8
  call void %i.rw(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.098.1.i452) #15, !inline_history !74
  br label %.body.thread

.body:                                            ; preds = %bb.ec, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440
  %.pn = phi { ptr, i32 } [ %.pn29.pn.i438, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit85.i440 ], [ %i.ro, %bb.ec ] ; 2 uses
  br i1 %.not.i.i86.i, label %common.resume, label %.body.thread

.body.thread:                                     ; preds = %bb.ed, %bb.ee, %.body
  %.pn1171 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.rp, %bb.ee ], [ %i.rp, %bb.ed ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.098.1.i, i64 8 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !15
  %i.rz = add nsw i32 %i.ry, -1                   ; 2 uses
  store i32 %i.rz, ptr %i.rx, align 8, !tbaa !15
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %bb.ef, label %common.resume

bb.ef:                                            ; preds = %.body.thread
  %i.sb = load ptr, ptr %.sroa.098.1.i, align 8, !tbaa !17
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.098.1.i) #15, !inline_history !74
  br label %common.resume

.split1228.split.split:                           ; preds = %.split1228.split.split, %.split1228.split.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.split1228.split.split.preheader.new ], [ %indvars.iv.next.1, %.split1228.split.split ] ; 4 uses
  %niter = phi i64 [ 0, %.split1228.split.split.preheader.new ], [ %niter.next.1, %.split1228.split.split ]
  %i.se = trunc i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.se
  %i.sf = sext i32 %.reass to i64
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.sf
  %.0208 = load double, ptr %i.sg, align 8, !tbaa !84 ; 2 uses
  %i.sh = fcmp ogt double %.0208, 0.000000e+00
  %.sroa.speculated.i486 = select i1 %i.sh, double %.0208, double 0.000000e+00
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !86
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %6, i64 %i.sk
  store double %.sroa.speculated.i486, ptr %i.sl, align 8, !tbaa !84
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.sm = trunc i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.sm
  %i.sn = sext i32 %.reass.1 to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.sn
  %.0208.1 = load double, ptr %i.so, align 8, !tbaa !84 ; 2 uses
  %i.sp = fcmp ogt double %.0208.1, 0.000000e+00
  %.sroa.speculated.i486.1 = select i1 %i.sp, double %.0208.1, double 0.000000e+00
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !86
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ss
  store double %.sroa.speculated.i486.1, ptr %i.st, align 8, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split1230.us.thread.loopexit1515.unr-lcssa, label %.split1228.split.split, !llvm.loop !468

bb.eg:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit477, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit479, %bb.af
  %i.su = icmp ne ptr %7, null                    ; 2 uses
  %i.sv = icmp ne ptr %8, null                    ; 3 uses
  %or.cond15 = or i1 %i.su, %i.sv
  br i1 %or.cond15, label %bb.eh, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !469
  br i1 %3, label %.thread.i504, label %bb.ei

.thread.i504:                                     ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !469
  br label %.critedge.i

bb.ei:                                            ; preds = %bb.eh
  %i.sw = getelementptr inbounds nuw i8, ptr %.0216, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !78, !noalias !472 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !15, !noalias !472
  %i.ta = add nsw i32 %i.sz, 1
  store i32 %i.ta, ptr %i.sy, align 8, !tbaa !15, !noalias !472
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487:     ; preds = %bb.ej, %bb.ei
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !84, !noalias !469
  %i.tb = load ptr, ptr %i.sx, align 8, !tbaa !17, !noalias !469
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !noalias !469
  %i.te = invoke noundef double %i.td(ptr noundef nonnull align 8 dereferenceable(24) %i.sx, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ek unwind label %bb.fi, !noalias !469 ; 2 uses

bb.ek:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !469
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !15, !noalias !469
  %i.th = add nsw i32 %i.tg, -1                   ; 2 uses
  store i32 %i.th, ptr %i.tf, align 8, !tbaa !15, !noalias !469
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %bb.el, label %.critedge.i

bb.el:                                            ; preds = %bb.ek
  %i.tj = load ptr, ptr %i.sx, align 8, !tbaa !17, !noalias !469
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !noalias !469
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(24) %i.sx) #15, !noalias !469, !inline_history !475
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.el, %bb.ek, %.thread.i504
  %i.tm = phi double [ 1.000000e+00, %.thread.i504 ], [ %i.te, %bb.ek ], [ %i.te, %bb.el ] ; 4 uses
  %i.tn = icmp eq ptr %.0215, null                ; 2 uses
  br i1 %i.tn, label %bb.em, label %bb.fm

bb.em:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !469
  call void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_compl_x_LEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %26, ptr noundef nonnull align 8 dereferenceable(2185) %2), !noalias !469
  %i.to = load ptr, ptr %26, align 8, !tbaa !108, !noalias !469 ; 27 uses
  %.not.i.i.i.i500 = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i.i500, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !15, !noalias !469
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.eo, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501

bb.eo:                                            ; preds = %bb.en
  %i.ts = load ptr, ptr %i.to, align 8, !tbaa !17, !noalias !469
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !noalias !469
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(205) %i.to) #15, !noalias !469, !inline_history !476
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501:   ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !469
  %i.tv = fcmp une double %i.tm, 1.000000e+00
  br i1 %i.tv, label %bb.ep, label %.thread148.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread.i: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !469
  %i.tw = fcmp une double %i.tm, 1.000000e+00
  br i1 %i.tw, label %bb.ep, label %_ZN5IpoptL14curr_compl_x_LEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

bb.ep:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i501
  %i.tx = getelementptr inbounds nuw i8, ptr %i.to, i64 56
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !92, !noalias !469 ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !17, !noalias !469
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !noalias !469
  %i.uc = invoke noundef ptr %i.ub(ptr noundef nonnull align 8 dereferenceable(16) %i.ty)
          to label %.noexc.i unwind label %bb.fj, !noalias !469, !inline_history !198 ; 33 uses

.noexc.i:                                         ; preds = %bb.ep
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !17, !noalias !469
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8, !noalias !469
  invoke void %i.uf(ptr noundef nonnull align 8 dereferenceable(205) %i.uc, ptr noundef nonnull align 8 dereferenceable(205) %i.to)
          to label %.noexc46.i unwind label %bb.fj, !noalias !469, !inline_history !198

.noexc46.i:                                       ; preds = %.noexc.i
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.uc)
          to label %.noexc47.i unwind label %bb.fj, !noalias !469

.noexc47.i:                                       ; preds = %.noexc46.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.to, i64 48
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !199, !noalias !469 ; 7 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.to, i64 88
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !208, !noalias !469
  %i.uk = icmp eq i32 %i.uh, %i.uj
  br i1 %i.uk, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.noexc47.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uc, i64 48
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !199, !noalias !469
  %i.un = getelementptr inbounds nuw i8, ptr %i.uc, i64 88
  store i32 %i.um, ptr %i.un, align 8, !tbaa !208, !noalias !469
  %i.uo = getelementptr inbounds nuw i8, ptr %i.to, i64 96
  %i.up = load double, ptr %i.uo, align 8, !tbaa !212, !noalias !469
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uc, i64 96
  store double %i.up, ptr %i.uq, align 8, !tbaa !212, !noalias !469
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.noexc47.i
  %i.ur = getelementptr inbounds nuw i8, ptr %i.to, i64 104
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !213, !noalias !469
  %i.ut = icmp eq i32 %i.uh, %i.us
  br i1 %i.ut, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uc, i64 48
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !199, !noalias !469
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uc, i64 104
  store i32 %i.uv, ptr %i.uw, align 8, !tbaa !213, !noalias !469
  %i.ux = getelementptr inbounds nuw i8, ptr %i.to, i64 112
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !214, !noalias !469
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uc, i64 112
  store double %i.uy, ptr %i.uz, align 8, !tbaa !214, !noalias !469
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.va = getelementptr inbounds nuw i8, ptr %i.to, i64 120
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !215, !noalias !469
  %i.vc = icmp eq i32 %i.uh, %i.vb
  br i1 %i.vc, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uc, i64 48
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !199, !noalias !469
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uc, i64 120
  store i32 %i.ve, ptr %i.vf, align 8, !tbaa !215, !noalias !469
  %i.vg = getelementptr inbounds nuw i8, ptr %i.to, i64 128
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !216, !noalias !469
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uc, i64 128
  store double %i.vh, ptr %i.vi, align 8, !tbaa !216, !noalias !469
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.vj = getelementptr inbounds nuw i8, ptr %i.to, i64 136
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !217, !noalias !469
  %i.vl = icmp eq i32 %i.uh, %i.vk
  br i1 %i.vl, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uc, i64 48
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !199, !noalias !469
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uc, i64 136
  store i32 %i.vn, ptr %i.vo, align 8, !tbaa !217, !noalias !469
  %i.vp = getelementptr inbounds nuw i8, ptr %i.to, i64 144
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !218, !noalias !469
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uc, i64 144
  store double %i.vq, ptr %i.vr, align 8, !tbaa !218, !noalias !469
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.vs = getelementptr inbounds nuw i8, ptr %i.to, i64 152
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !219, !noalias !469
  %i.vu = icmp eq i32 %i.uh, %i.vt
  br i1 %i.vu, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uc, i64 48
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !199, !noalias !469
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uc, i64 152
  store i32 %i.vw, ptr %i.vx, align 8, !tbaa !219, !noalias !469
  %i.vy = getelementptr inbounds nuw i8, ptr %i.to, i64 160
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !220, !noalias !469
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uc, i64 160
  store double %i.vz, ptr %i.wa, align 8, !tbaa !220, !noalias !469
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.wb = getelementptr inbounds nuw i8, ptr %i.to, i64 168
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !221, !noalias !469
  %i.wd = icmp eq i32 %i.uh, %i.wc
end_hunk_1
begin_hunk_2_@_ZNK5Ipopt4TNLP19get_curr_violationsEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_S6_S6_iS6_S6_:bb.a
.noexc593:                                        ; preds = %_ZN5Ipopt6Vector3SetEd.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.asz)
          to label %_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit unwind label %bb.lm

_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit:      ; preds = %.noexc593
  %i.ayy = load ptr, ptr %i.avx, align 8, !tbaa !17
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 112
  %i.aza = load ptr, ptr %i.ayz, align 8
  invoke void %i.aza(ptr noundef nonnull align 8 dereferenceable(205) %i.avx, ptr noundef nonnull align 8 dereferenceable(205) %i.ayo)
          to label %.noexc595 unwind label %bb.lm, !inline_history !534

.noexc595:                                        ; preds = %_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.avx)
          to label %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit unwind label %bb.lm

_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit:      ; preds = %.noexc595
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #15
  invoke fastcc void @_ZN5IpoptL6curr_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %54, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %.0216, ptr noundef %.0215, i1 noundef zeroext %3)
          to label %bb.kp unwind label %bb.ln

bb.kp:                                            ; preds = %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit
  %i.azb = load ptr, ptr %54, align 8, !tbaa !71  ; 14 uses
  %.not.i.i.i597 = icmp eq ptr %i.azb, null
  br i1 %.not.i.i.i597, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 8 ; 4 uses
  %i.azd = load i32, ptr %i.azc, align 8, !tbaa !15 ; 2 uses
  %i.aze = add nsw i32 %i.azd, 1                  ; 2 uses
  store i32 %i.aze, ptr %i.azc, align 8, !tbaa !15
  %i.azf = icmp eq i32 %i.aze, 0
  br i1 %i.azf, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.azg = load ptr, ptr %i.azb, align 8, !tbaa !17
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azi = load ptr, ptr %i.azh, align 8
  call void %i.azi(ptr noundef nonnull align 8 dereferenceable(205) %i.azb) #15, !inline_history !530
  %.pre1300 = load i32, ptr %i.azc, align 8, !tbaa !15
  %i.azj = add nsw i32 %.pre1300, -1
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.azk = phi i32 [ %i.azj, %bb.kr ], [ %i.azd, %bb.kq ] ; 2 uses
  store i32 %i.azk, ptr %i.azc, align 8, !tbaa !15
  %i.azl = icmp eq i32 %i.azk, 0
  br i1 %i.azl, label %bb.kt, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602

bb.kt:                                            ; preds = %bb.ks
  %i.azm = load ptr, ptr %i.azb, align 8, !tbaa !17
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 8
  %i.azo = load ptr, ptr %i.azn, align 8
  call void %i.azo(ptr noundef nonnull align 8 dereferenceable(248) %i.azb) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602: ; preds = %bb.kp, %bb.ks, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  %i.azp = load ptr, ptr %i.asz, align 8, !tbaa !17
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 88
  %i.azr = load ptr, ptr %i.azq, align 8
  invoke void %i.azr(ptr noundef nonnull align 8 dereferenceable(205) %i.asz, ptr noundef nonnull align 8 dereferenceable(205) %i.azb)
          to label %.noexc603 unwind label %bb.lo, !inline_history !498

.noexc603:                                        ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.asz)
          to label %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit unwind label %bb.lo

_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit: ; preds = %.noexc603
  %i.azs = load ptr, ptr %i.avx, align 8, !tbaa !17
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 88
  %i.azu = load ptr, ptr %i.azt, align 8
  invoke void %i.azu(ptr noundef nonnull align 8 dereferenceable(205) %i.avx, ptr noundef nonnull align 8 dereferenceable(205) %i.azb)
          to label %.noexc605 unwind label %bb.lo, !inline_history !498

.noexc605:                                        ; preds = %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.avx)
          to label %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607 unwind label %bb.lo

_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607: ; preds = %.noexc605
  %i.azv = getelementptr inbounds nuw i8, ptr %i.asz, i64 232 ; 2 uses
  %i.azw = load i8, ptr %i.azv, align 8, !tbaa !535, !range !466, !noundef !122
  %i.azx = trunc nuw i8 %i.azw to i1
  %i.azy = getelementptr inbounds nuw i8, ptr %i.asz, i64 233 ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !range !466
  %i.baa = trunc nuw i8 %i.azz to i1
  %or.cond.i.i = select i1 %i.azx, i1 %i.baa, i1 false
  br i1 %or.cond.i.i, label %bb.ku, label %.noexc608

bb.ku:                                            ; preds = %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607
  invoke void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %i.asz)
          to label %.noexc608 unwind label %bb.lp

.noexc608:                                        ; preds = %bb.ku, %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit607
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %i.asz)
          to label %.noexc609 unwind label %bb.lp

.noexc609:                                        ; preds = %.noexc608
  store i8 1, ptr %i.azv, align 8, !tbaa !535
  store i8 0, ptr %i.azy, align 1, !tbaa !463
  %i.bab = getelementptr inbounds nuw i8, ptr %i.asz, i64 216 ; 2 uses
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !467 ; 2 uses
  %i.bad = icmp eq ptr %i.bac, null
  br i1 %i.bad, label %bb.kv, label %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit

bb.kv:                                            ; preds = %.noexc609
  %i.bae = getelementptr inbounds nuw i8, ptr %i.asz, i64 208
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !536
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 12
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !93 ; 2 uses
  %i.bai = icmp sgt i32 %i.bah, 0
  br i1 %i.bai, label %bb.kw, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i

bb.kw:                                            ; preds = %bb.kv
  %i.baj = zext nneg i32 %i.bah to i64
  %i.bak = shl nuw nsw i64 %i.baj, 3
  %i.bal = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bak) #18
          to label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i unwind label %bb.lp

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i: ; preds = %bb.kw, %bb.kv
  %.0.i.i.i.i = phi ptr [ null, %bb.kv ], [ %i.bal, %bb.kw ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %i.bab, align 8, !tbaa !467
  br label %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit

_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit:    ; preds = %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i, %.noexc609
  %i.bam = phi ptr [ %i.bac, %.noexc609 ], [ %.0.i.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i ] ; 4 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.avx, i64 232 ; 2 uses
  %i.bao = load i8, ptr %i.ban, align 8, !tbaa !535, !range !466, !noundef !122
  %i.bap = trunc nuw i8 %i.bao to i1
  %i.baq = getelementptr inbounds nuw i8, ptr %i.avx, i64 233 ; 2 uses
  %i.bar = load i8, ptr %i.baq, align 1, !range !466
  %i.bas = trunc nuw i8 %i.bar to i1
  %or.cond.i.i611 = select i1 %i.bap, i1 %i.bas, i1 false
  br i1 %or.cond.i.i611, label %bb.kx, label %.noexc614

bb.kx:                                            ; preds = %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit
  invoke void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %i.avx)
          to label %.noexc614 unwind label %bb.lq

.noexc614:                                        ; preds = %bb.kx, %_ZN5Ipopt11DenseVector14ExpandedValuesEv.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %i.avx)
          to label %.noexc615 unwind label %bb.lq

.noexc615:                                        ; preds = %.noexc614
  store i8 1, ptr %i.ban, align 8, !tbaa !535
  store i8 0, ptr %i.baq, align 1, !tbaa !463
  %i.bat = getelementptr inbounds nuw i8, ptr %i.avx, i64 216 ; 2 uses
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !467 ; 2 uses
  %i.bav = icmp eq ptr %i.bau, null
  br i1 %i.bav, label %bb.ky, label %.lr.ph

bb.ky:                                            ; preds = %.noexc615
  %i.baw = getelementptr inbounds nuw i8, ptr %i.avx, i64 208
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !536
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 12
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !93 ; 2 uses
  %i.bba = icmp sgt i32 %i.baz, 0
  br i1 %i.bba, label %bb.kz, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612

bb.kz:                                            ; preds = %bb.ky
  %i.bbb = zext nneg i32 %i.baz to i64
  %i.bbc = shl nuw nsw i64 %i.bbb, 3
  %i.bbd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bbc) #18
          to label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612 unwind label %bb.lq

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612: ; preds = %bb.kz, %bb.ky
  %.0.i.i.i.i613 = phi ptr [ null, %bb.ky ], [ %i.bbd, %bb.kz ] ; 2 uses
  store ptr %.0.i.i.i.i613, ptr %i.bat, align 8, !tbaa !467
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612, %.noexc615
  %i.bbe = phi ptr [ %i.bau, %.noexc615 ], [ %.0.i.i.i.i613, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i.i612 ] ; 4 uses
  br i1 %i.su, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.avx, i64 56
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !92
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 12
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !93
  %invariant.op1238 = sub i32 %i.bbi, %i.da       ; 4 uses
  br i1 %i.sv, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %wide.trip.count1275 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1527 = and i64 %wide.trip.count1275, 1
  %i.bbj = icmp eq i32 %i.da, 1
  br i1 %i.bbj, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter1530 = and i64 %wide.trip.count1275, 2147483646
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.bbk = load ptr, ptr %i.ayj, align 8, !tbaa !92
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 12
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !93
  %invariant.op1240 = sub i32 %i.bbm, %i.da
  %wide.trip.count1281 = zext nneg i32 %i.da to i64
  br label %bb.la

bb.la:                                            ; preds = %bb.la, %.lr.ph.split.us.split.us
  %indvars.iv1277 = phi i64 [ %indvars.iv.next1278, %bb.la ], [ 0, %.lr.ph.split.us.split.us ] ; 4 uses
  %i.bbn = trunc i64 %indvars.iv1277 to i32
  %.reass1239.us = add i32 %invariant.op1238, %i.bbn
  %i.bbo = sext i32 %.reass1239.us to i64
  %i.bbp = getelementptr inbounds [8 x i8], ptr %i.bbe, i64 %i.bbo
  %i.bbq = load double, ptr %i.bbp, align 8, !tbaa !84
  %i.bbr = fneg double %i.bbq
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1277
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !86
  %i.bbu = sext i32 %i.bbt to i64                 ; 2 uses
  %i.bbv = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bbu
  store double %i.bbr, ptr %i.bbv, align 8, !tbaa !84
  %83 = trunc i64 %indvars.iv1277 to i32
  %.reass1241 = add i32 %invariant.op1240, %83
  %i.bbw = sext i32 %.reass1241 to i64
  %i.bbx = getelementptr inbounds [8 x i8], ptr %i.bam, i64 %i.bbw
  %i.bby = load double, ptr %i.bbx, align 8, !tbaa !84
  %i.bbz = fneg double %i.bby
  %i.bca = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bbu
  store double %i.bbz, ptr %i.bca, align 8, !tbaa !84
  %indvars.iv.next1278 = add nuw nsw i64 %indvars.iv1277, 1 ; 2 uses
  %exitcond1282.not = icmp eq i64 %indvars.iv.next1278, %wide.trip.count1281
  br i1 %exitcond1282.not, label %._crit_edge, label %bb.la, !llvm.loop !537

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.preheader.new
  %indvars.iv1271 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next1272.1, %.lr.ph.split.us.split ] ; 4 uses
  %niter1531 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter1531.next.1, %.lr.ph.split.us.split ]
  %i.bcb = trunc i64 %indvars.iv1271 to i32
  %.reass1239 = add i32 %invariant.op1238, %i.bcb
  %i.bcc = sext i32 %.reass1239 to i64
  %i.bcd = getelementptr inbounds [8 x i8], ptr %i.bbe, i64 %i.bcc
  %i.bce = load double, ptr %i.bcd, align 8, !tbaa !84
  %i.bcf = fneg double %i.bce
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1271
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !86
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bci
  store double %i.bcf, ptr %i.bcj, align 8, !tbaa !84
  %indvars.iv.next1272 = or disjoint i64 %indvars.iv1271, 1 ; 2 uses
  %i.bck = trunc i64 %indvars.iv.next1272 to i32
  %.reass1239.1 = add i32 %invariant.op1238, %i.bck
  %i.bcl = sext i32 %.reass1239.1 to i64
  %i.bcm = getelementptr inbounds [8 x i8], ptr %i.bbe, i64 %i.bcl
  %i.bcn = load double, ptr %i.bcm, align 8, !tbaa !84
  %i.bco = fneg double %i.bcn
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1272
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !86
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bcr
  store double %i.bco, ptr %i.bcs, align 8, !tbaa !84
  %indvars.iv.next1272.1 = add nuw nsw i64 %indvars.iv1271, 2 ; 2 uses
  %niter1531.next.1 = add nuw i64 %niter1531, 2   ; 2 uses
  %niter1531.ncmp.1 = icmp eq i64 %niter1531.next.1, %unroll_iter1530
  br i1 %niter1531.ncmp.1, label %._crit_edge.loopexit1513.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !537

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.sv, label %.lr.ph.split.split, label %._crit_edge

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bct = load ptr, ptr %i.ayj, align 8, !tbaa !92
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 12
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !93
  %invariant.op1236 = sub i32 %i.bcv, %i.da       ; 3 uses
  %wide.trip.count1269 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1522 = and i64 %wide.trip.count1269, 1
  %i.bcw = icmp eq i32 %i.da, 1
  br i1 %i.bcw, label %.epil.preheader, label %.lr.ph.split.split.new

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
  %i.bcx = trunc i64 %indvars.iv1271.epil.init to i32
  %.reass1239.epil = add i32 %invariant.op1238, %i.bcx
  %i.bcy = sext i32 %.reass1239.epil to i64
  %i.bcz = getelementptr inbounds [8 x i8], ptr %i.bbe, i64 %i.bcy
  %i.bda = load double, ptr %i.bcz, align 8, !tbaa !84
  %i.bdb = fneg double %i.bda
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1271.epil.init
  %i.bdd = load i32, ptr %i.bdc, align 4, !tbaa !86
  %i.bde = sext i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bde
  store double %i.bdb, ptr %i.bdf, align 8, !tbaa !84
  br label %._crit_edge

._crit_edge.loopexit1514.unr-lcssa:               ; preds = %bb.lr
  %lcmp.mod1523.not = icmp eq i64 %xtraiter1522, 0
  br i1 %lcmp.mod1523.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit1514.unr-lcssa, %.lr.ph.split.split
  %indvars.iv1266.epil.init = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next1267.1, %._crit_edge.loopexit1514.unr-lcssa ] ; 2 uses
  %lcmp.mod1524 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1524)
  %i.bdg = trunc i64 %indvars.iv1266.epil.init to i32
  %.reass1237.epil = add i32 %invariant.op1236, %i.bdg
  %i.bdh = sext i32 %.reass1237.epil to i64
  %i.bdi = getelementptr inbounds [8 x i8], ptr %i.bam, i64 %i.bdh
  %i.bdj = load double, ptr %i.bdi, align 8, !tbaa !84
  %i.bdk = fneg double %i.bdj
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1266.epil.init
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !86
  %i.bdn = sext i32 %i.bdm to i64
  %i.bdo = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bdn
  store double %i.bdk, ptr %i.bdo, align 8, !tbaa !84
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit1514.unr-lcssa, %.lr.ph.split.us.split.epil.preheader, %._crit_edge.loopexit1513.unr-lcssa, %bb.la, %.lr.ph.split
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.azb, i64 8 ; 2 uses
  %i.bdq = load i32, ptr %i.bdp, align 8, !tbaa !15
  %i.bdr = add nsw i32 %i.bdq, -1                 ; 2 uses
  store i32 %i.bdr, ptr %i.bdp, align 8, !tbaa !15
  %i.bds = icmp eq i32 %i.bdr, 0
  br i1 %i.bds, label %bb.lb, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.lb:                                            ; preds = %._crit_edge
  %i.bdt = load ptr, ptr %i.azb, align 8, !tbaa !17
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8
  %i.bdv = load ptr, ptr %i.bdu, align 8
  call void %i.bdv(ptr noundef nonnull align 8 dereferenceable(205) %i.azb) #15, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.lb, %._crit_edge
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8 ; 2 uses
  %i.bdx = load i32, ptr %i.bdw, align 8, !tbaa !15
  %i.bdy = add nsw i32 %i.bdx, -1                 ; 2 uses
  store i32 %i.bdy, ptr %i.bdw, align 8, !tbaa !15
  %i.bdz = icmp eq i32 %i.bdy, 0
  br i1 %i.bdz, label %bb.lc, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.lc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.bea = load ptr, ptr %i.ayo, align 8, !tbaa !17
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 8
  %i.bec = load ptr, ptr %i.beb, align 8
  call void %i.bec(ptr noundef nonnull align 8 dereferenceable(205) %i.ayo) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.lc, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.bed = load i32, ptr %i.ayg, align 8, !tbaa !15
  %i.bee = add nsw i32 %i.bed, -1                 ; 2 uses
  store i32 %i.bee, ptr %i.ayg, align 8, !tbaa !15
  %i.bef = icmp eq i32 %i.bee, 0
  br i1 %i.bef, label %bb.ld, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621

bb.ld:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.beg = load ptr, ptr %i.avx, align 8, !tbaa !17
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 8
  %i.bei = load ptr, ptr %i.beh, align 8
  call void %i.bei(ptr noundef nonnull align 8 dereferenceable(205) %i.avx) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621:      ; preds = %bb.ld, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.bej = load i32, ptr %i.avq, align 8, !tbaa !15
  %i.bek = add nsw i32 %i.bej, -1                 ; 2 uses
  store i32 %i.bek, ptr %i.avq, align 8, !tbaa !15
  %i.bel = icmp eq i32 %i.bek, 0
  br i1 %i.bel, label %bb.le, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623

bb.le:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621
  %i.bem = load ptr, ptr %i.asz, align 8, !tbaa !17
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8
  call void %i.beo(ptr noundef nonnull align 8 dereferenceable(205) %i.asz) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623:      ; preds = %bb.le, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit621
  %i.bep = getelementptr inbounds nuw i8, ptr %i.asg, i64 8 ; 2 uses
  %i.beq = load i32, ptr %i.bep, align 8, !tbaa !15
  %i.ber = add nsw i32 %i.beq, -1                 ; 2 uses
  store i32 %i.ber, ptr %i.bep, align 8, !tbaa !15
  %i.bes = icmp eq i32 %i.ber, 0
  br i1 %i.bes, label %bb.lf, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625

bb.lf:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623
  %i.bet = load ptr, ptr %i.asg, align 8, !tbaa !17
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 8
  %i.bev = load ptr, ptr %i.beu, align 8
  call void %i.bev(ptr noundef nonnull align 8 dereferenceable(205) %i.asg) #15, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625

bb.lg:                                            ; preds = %bb.gx
  %i.bew = landingpad { ptr, i32 }
          cleanup
  br label %.body568

bb.lh:                                            ; preds = %_ZN5IpoptL14curr_compl_x_UEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.bex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bey = load i32, ptr %i.are, align 8, !tbaa !15
  %i.bez = add nsw i32 %i.bey, -1                 ; 2 uses
  store i32 %i.bez, ptr %i.are, align 8, !tbaa !15
  %i.bfa = icmp eq i32 %i.bez, 0
  br i1 %i.bfa, label %bb.li, label %.body568.thread

bb.li:                                            ; preds = %bb.lh
  %i.bfb = load ptr, ptr %.sroa.0127.0.ph.sink.i544, align 8, !tbaa !17
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8
  %i.bfd = load ptr, ptr %i.bfc, align 8
  call void %i.bfd(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0127.0.ph.sink.i544) #15, !inline_history !74
  br label %.body568.thread

.body568:                                         ; preds = %bb.lg, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit104.sink.split.i509, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit53.thread158.i557, %bb.jc, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97.i525, %bb.ht
  %.pn309 = phi { ptr, i32 } [ %.pn42155.ph.i511, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit104.sink.split.i509 ], [ %i.bew, %bb.lg ], [ %.pn42163.i558, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit53.thread158.i557 ], [ %.pn32.pn.pn.i526, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit97.i525 ], [ %i.ajy, %bb.ht ], [ %.pn32.pn.pn.i526, %bb.jc ] ; 2 uses
  %.not.i.i628 = icmp eq ptr %.sroa.01101.0, null
  br i1 %.not.i.i628, label %common.resume, label %.body568.thread

.body568.thread:                                  ; preds = %bb.lh, %bb.li, %.body568
  %.pn3091189 = phi { ptr, i32 } [ %.pn309, %.body568 ], [ %i.bex, %bb.li ], [ %i.bex, %bb.lh ] ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %.sroa.01101.0, i64 8 ; 2 uses
  %i.bff = load i32, ptr %i.bfe, align 8, !tbaa !15
  %i.bfg = add nsw i32 %i.bff, -1                 ; 2 uses
  store i32 %i.bfg, ptr %i.bfe, align 8, !tbaa !15
  %i.bfh = icmp eq i32 %i.bfg, 0
  br i1 %i.bfh, label %bb.lj, label %common.resume

bb.lj:                                            ; preds = %.body568.thread
  %i.bfi = load ptr, ptr %.sroa.01101.0, align 8, !tbaa !17
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  %i.bfk = load ptr, ptr %i.bfj, align 8
  call void %i.bfk(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.01101.0) #15, !inline_history !74
  br label %common.resume

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit577, %.noexc578, %.noexc579
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641

bb.lk:                                            ; preds = %.noexc583, %.noexc582, %bb.jz
  %i.bfm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639

bb.ll:                                            ; preds = %bb.kn
  %i.bfn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637

bb.lm:                                            ; preds = %.noexc595, %_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit, %.noexc593, %_ZN5Ipopt6Vector3SetEd.exit, %.noexc591, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit590
  %i.bfo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

bb.ln:                                            ; preds = %_ZN5Ipopt6Vector14ElementWiseMinERKS0_.exit
  %i.bfp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

bb.lo:                                            ; preds = %.noexc605, %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit, %.noexc603, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit602
  %i.bfq = landingpad { ptr, i32 }
          cleanup
  br label %.thread1201

bb.lp:                                            ; preds = %bb.kw, %.noexc608, %bb.ku
  %i.bfr = landingpad { ptr, i32 }
          cleanup
  br label %.thread1201

bb.lq:                                            ; preds = %bb.kz, %.noexc614, %bb.kx
  %i.bfs = landingpad { ptr, i32 }
          cleanup
  br label %.thread1201

bb.lr:                                            ; preds = %bb.lr, %.lr.ph.split.split.new
  %indvars.iv1266 = phi i64 [ 0, %.lr.ph.split.split.new ], [ %indvars.iv.next1267.1, %bb.lr ] ; 4 uses
  %niter1526 = phi i64 [ 0, %.lr.ph.split.split.new ], [ %niter1526.next.1, %bb.lr ]
  %i.bft = trunc i64 %indvars.iv1266 to i32
  %.reass1237 = add i32 %invariant.op1236, %i.bft
  %i.bfu = sext i32 %.reass1237 to i64
  %i.bfv = getelementptr inbounds [8 x i8], ptr %i.bam, i64 %i.bfu
  %i.bfw = load double, ptr %i.bfv, align 8, !tbaa !84
  %i.bfx = fneg double %i.bfw
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1266
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !86
  %i.bga = sext i32 %i.bfz to i64
  %i.bgb = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bga
  store double %i.bfx, ptr %i.bgb, align 8, !tbaa !84
  %indvars.iv.next1267 = or disjoint i64 %indvars.iv1266, 1 ; 2 uses
  %i.bgc = trunc i64 %indvars.iv.next1267 to i32
  %.reass1237.1 = add i32 %invariant.op1236, %i.bgc
  %i.bgd = sext i32 %.reass1237.1 to i64
  %i.bge = getelementptr inbounds [8 x i8], ptr %i.bam, i64 %i.bgd
  %i.bgf = load double, ptr %i.bge, align 8, !tbaa !84
  %i.bgg = fneg double %i.bgf
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1267
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !86
  %i.bgj = sext i32 %i.bgi to i64
  %i.bgk = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bgj
  store double %i.bgg, ptr %i.bgk, align 8, !tbaa !84
  %indvars.iv.next1267.1 = add nuw nsw i64 %indvars.iv1266, 2 ; 2 uses
  %niter1526.next.1 = add nuw i64 %niter1526, 2   ; 2 uses
  %niter1526.ncmp.1 = icmp eq i64 %niter1526.next.1, %unroll_iter1525
  br i1 %niter1526.ncmp.1, label %._crit_edge.loopexit1514.unr-lcssa, label %bb.lr, !llvm.loop !537

.thread1201:                                      ; preds = %bb.lq, %bb.lp, %bb.lo
  %.pn377.pn.pn1199 = phi { ptr, i32 } [ %i.bfq, %bb.lo ], [ %i.bfs, %bb.lq ], [ %i.bfr, %bb.lp ] ; 2 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.azb, i64 8 ; 2 uses
  %i.bgm = load i32, ptr %i.bgl, align 8, !tbaa !15
  %i.bgn = add nsw i32 %i.bgm, -1                 ; 2 uses
  store i32 %i.bgn, ptr %i.bgl, align 8, !tbaa !15
  %i.bgo = icmp eq i32 %i.bgn, 0
  br i1 %i.bgo, label %bb.ls, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

bb.ls:                                            ; preds = %.thread1201
  %i.bgp = load ptr, ptr %i.azb, align 8, !tbaa !17
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 8
  %i.bgr = load ptr, ptr %i.bgq, align 8
  call void %i.bgr(ptr noundef nonnull align 8 dereferenceable(205) %i.azb) #15, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635:     ; preds = %bb.lm, %bb.ls, %.thread1201, %bb.ln
  %.pn377.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfo, %bb.lm ], [ %i.bfp, %bb.ln ], [ %.pn377.pn.pn1199, %.thread1201 ], [ %.pn377.pn.pn1199, %bb.ls ] ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8 ; 2 uses
  %i.bgt = load i32, ptr %i.bgs, align 8, !tbaa !15
  %i.bgu = add nsw i32 %i.bgt, -1                 ; 2 uses
  store i32 %i.bgu, ptr %i.bgs, align 8, !tbaa !15
  %i.bgv = icmp eq i32 %i.bgu, 0
  br i1 %i.bgv, label %bb.lt, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637

bb.lt:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635
  %i.bgw = load ptr, ptr %i.ayo, align 8, !tbaa !17
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 8
  %i.bgy = load ptr, ptr %i.bgx, align 8
  call void %i.bgy(ptr noundef nonnull align 8 dereferenceable(205) %i.ayo) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637:      ; preds = %bb.ll, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635, %bb.lt
  %.pn377.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfn, %bb.ll ], [ %.pn377.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit635 ], [ %.pn377.pn.pn.pn.pn, %bb.lt ] ; 2 uses
  %i.bgz = load i32, ptr %i.ayg, align 8, !tbaa !15
  %i.bha = add nsw i32 %i.bgz, -1                 ; 2 uses
  store i32 %i.bha, ptr %i.ayg, align 8, !tbaa !15
  %i.bhb = icmp eq i32 %i.bha, 0
  br i1 %i.bhb, label %bb.lu, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639

bb.lu:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637
  %i.bhc = load ptr, ptr %i.avx, align 8, !tbaa !17
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8
  %i.bhe = load ptr, ptr %i.bhd, align 8
  call void %i.bhe(ptr noundef nonnull align 8 dereferenceable(205) %i.avx) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639:      ; preds = %bb.lk, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637, %bb.lu
  %.pn377.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bfm, %bb.lk ], [ %.pn377.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit637 ], [ %.pn377.pn.pn.pn.pn.pn, %bb.lu ] ; 2 uses
  %i.bhf = load i32, ptr %i.avq, align 8, !tbaa !15
  %i.bhg = add nsw i32 %i.bhf, -1                 ; 2 uses
  store i32 %i.bhg, ptr %i.avq, align 8, !tbaa !15
  %i.bhh = icmp eq i32 %i.bhg, 0
  br i1 %i.bhh, label %bb.lv, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641

bb.lv:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639
  %i.bhi = load ptr, ptr %i.asz, align 8, !tbaa !17
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 8
  %i.bhk = load ptr, ptr %i.bhj, align 8
  call void %i.bhk(ptr noundef nonnull align 8 dereferenceable(205) %i.asz) #15, !inline_history !116
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639, %bb.lv, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641.thread
  %.pn377.pn.pn.pn.pn.pn.pn.pn1210 = phi { ptr, i32 } [ %i.bfl, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641.thread ], [ %.pn377.pn.pn.pn.pn.pn.pn, %bb.lv ], [ %.pn377.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit639 ] ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.asg, i64 8 ; 2 uses
  %i.bhm = load i32, ptr %i.bhl, align 8, !tbaa !15
  %i.bhn = add nsw i32 %i.bhm, -1                 ; 2 uses
  store i32 %i.bhn, ptr %i.bhl, align 8, !tbaa !15
  %i.bho = icmp eq i32 %i.bhn, 0
  br i1 %i.bho, label %bb.lw, label %common.resume

bb.lw:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit641
  %i.bhp = load ptr, ptr %i.asg, align 8, !tbaa !17
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8
  %i.bhr = load ptr, ptr %i.bhq, align 8
  call void %i.bhr(ptr noundef nonnull align 8 dereferenceable(205) %i.asg) #15, !inline_history !112
  br label %common.resume

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625:     ; preds = %bb.lf, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit623, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit573, %bb.eg
  %.not313 = icmp eq ptr %9, null
  br i1 %.not313, label %bb.px, label %bb.lx

bb.lx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !538
  store ptr null, ptr %13, align 8, !tbaa !108, !noalias !538
  %i.bhs = icmp eq ptr %.0215, null
  br i1 %i.bhs, label %bb.ly, label %bb.mb

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15, !noalias !538
  call void @_ZN5Ipopt25IpoptCalculatedQuantities15curr_grad_lag_xEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %14, ptr noundef nonnull align 8 dereferenceable(2185) %2), !noalias !538
  %i.bht = load ptr, ptr %14, align 8, !tbaa !108, !noalias !538 ; 6 uses
  %.not.i.i.i.i654 = icmp eq ptr %i.bht, null
  br i1 %.not.i.i.i.i654, label %.thread205.i, label %bb.lz

.thread205.i:                                     ; preds = %bb.ly
  store ptr null, ptr %13, align 8, !tbaa !108, !noalias !538
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i655

bb.lz:                                            ; preds = %bb.ly
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 8
  %i.bhv = load i32, ptr %i.bhu, align 8, !tbaa !15, !noalias !538
  store ptr %i.bht, ptr %13, align 8, !tbaa !108, !noalias !538
  %i.bhw = icmp eq i32 %i.bhv, 0
  br i1 %i.bhw, label %bb.ma, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i655

bb.ma:                                            ; preds = %bb.lz
  %i.bhx = load ptr, ptr %i.bht, align 8, !tbaa !17, !noalias !538
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8, !noalias !538
  call void %i.bhz(ptr noundef nonnull align 8 dereferenceable(205) %i.bht) #15, !noalias !538, !inline_history !541
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
  %i.bia = load ptr, ptr %16, align 8, !tbaa !71, !noalias !538 ; 7 uses
  %i.bib = load ptr, ptr %.0216, align 8, !tbaa !17, !noalias !538
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 48
  %i.bid = load ptr, ptr %i.bic, align 8, !noalias !538
  invoke void %i.bid(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %15, ptr noundef nonnull align 8 dereferenceable(544) %.0216, ptr noundef nonnull align 8 dereferenceable(205) %i.bia)
          to label %bb.md unwind label %bb.nt, !noalias !538

bb.md:                                            ; preds = %bb.mc
  %i.bie = load ptr, ptr %15, align 8, !tbaa !108, !noalias !538 ; 17 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 56
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !92, !noalias !538 ; 2 uses
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !17, !noalias !538
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 16
  %i.bij = load ptr, ptr %i.bii, align 8, !noalias !538
  %i.bik = invoke noundef ptr %i.bij(ptr noundef nonnull align 8 dereferenceable(16) %i.big)
          to label %.noexc.i644 unwind label %bb.nu, !noalias !538, !inline_history !198 ; 42 uses

.noexc.i644:                                      ; preds = %bb.md
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !17, !noalias !538
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 16
  %i.bin = load ptr, ptr %i.bim, align 8, !noalias !538
  invoke void %i.bin(ptr noundef nonnull align 8 dereferenceable(205) %i.bik, ptr noundef nonnull align 8 dereferenceable(205) %i.bie)
          to label %.noexc75.i645 unwind label %bb.nu, !noalias !538, !inline_history !198

.noexc75.i645:                                    ; preds = %.noexc.i644
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.bik)
          to label %.noexc76.i646 unwind label %bb.nu, !noalias !538

.noexc76.i646:                                    ; preds = %.noexc75.i645
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bie, i64 48
  %i.bip = load i32, ptr %i.bio, align 8, !tbaa !199, !noalias !538 ; 7 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bie, i64 88
  %i.bir = load i32, ptr %i.biq, align 8, !tbaa !208, !noalias !538
  %i.bis = icmp eq i32 %i.bip, %i.bir
  br i1 %i.bis, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %.noexc76.i646
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bik, i64 48
  %i.biu = load i32, ptr %i.bit, align 8, !tbaa !199, !noalias !538
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bik, i64 88
  store i32 %i.biu, ptr %i.biv, align 8, !tbaa !208, !noalias !538
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bie, i64 96
  %i.bix = load double, ptr %i.biw, align 8, !tbaa !212, !noalias !538
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bik, i64 96
  store double %i.bix, ptr %i.biy, align 8, !tbaa !212, !noalias !538
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %.noexc76.i646
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bie, i64 104
  %i.bja = load i32, ptr %i.biz, align 8, !tbaa !213, !noalias !538
  %i.bjb = icmp eq i32 %i.bip, %i.bja
  br i1 %i.bjb, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bik, i64 48
  %i.bjd = load i32, ptr %i.bjc, align 8, !tbaa !199, !noalias !538
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bik, i64 104
  store i32 %i.bjd, ptr %i.bje, align 8, !tbaa !213, !noalias !538
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bie, i64 112
  %i.bjg = load double, ptr %i.bjf, align 8, !tbaa !214, !noalias !538
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bik, i64 112
  store double %i.bjg, ptr %i.bjh, align 8, !tbaa !214, !noalias !538
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bie, i64 120
  %i.bjj = load i32, ptr %i.bji, align 8, !tbaa !215, !noalias !538
  %i.bjk = icmp eq i32 %i.bip, %i.bjj
  br i1 %i.bjk, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bik, i64 48
  %i.bjm = load i32, ptr %i.bjl, align 8, !tbaa !199, !noalias !538
end_hunk_2
begin_hunk_3_@_ZNK5Ipopt4TNLP19get_curr_violationsEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_S6_S6_iS6_S6_:bb.a
  %i.buj = load ptr, ptr %i.bue, align 8, !tbaa !17, !noalias !538
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 8
  %i.bul = load ptr, ptr %i.buk, align 8, !noalias !538
  call void %i.bul(ptr noundef nonnull align 8 dereferenceable(205) %i.bue) #15, !noalias !538, !inline_history !558
  %.pre181.i = load ptr, ptr %23, align 8, !tbaa !108, !noalias !538
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %bb.pb
  %i.bum = phi ptr [ %.pre181.i, %bb.pd ], [ %i.bua, %bb.pc ], [ %i.bua, %bb.pb ] ; 4 uses
  store ptr %i.bua, ptr %13, align 8, !tbaa !108, !noalias !538
  %.not.i.i148.i = icmp eq ptr %i.bum, null
  br i1 %.not.i.i148.i, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 8 ; 2 uses
  %i.buo = load i32, ptr %i.bun, align 8, !tbaa !15, !noalias !538
  %i.bup = add nsw i32 %i.buo, -1                 ; 2 uses
  store i32 %i.bup, ptr %i.bun, align 8, !tbaa !15, !noalias !538
  %i.buq = icmp eq i32 %i.bup, 0
  br i1 %i.buq, label %bb.pg, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i

bb.pg:                                            ; preds = %bb.pf
  %i.bur = load ptr, ptr %i.bum, align 8, !tbaa !17, !noalias !538
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 8
  %i.but = load ptr, ptr %i.bus, align 8, !noalias !538
  call void %i.but(ptr noundef nonnull align 8 dereferenceable(205) %i.bum) #15, !noalias !538, !inline_history !541
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i:   ; preds = %bb.pg, %bb.pf, %bb.pe
  %i.buu = getelementptr inbounds nuw i8, ptr %i.btt, i64 8 ; 2 uses
  %i.buv = load i32, ptr %i.buu, align 8, !tbaa !15, !noalias !538
  %i.buw = add nsw i32 %i.buv, -1                 ; 2 uses
  store i32 %i.buw, ptr %i.buu, align 8, !tbaa !15, !noalias !538
  %i.bux = icmp eq i32 %i.buw, 0
  br i1 %i.bux, label %bb.ph, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i

bb.ph:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i
  %i.buy = load ptr, ptr %i.btt, align 8, !tbaa !17, !noalias !538
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 8
  %i.bva = load ptr, ptr %i.buz, align 8, !noalias !538
  call void %i.bva(ptr noundef nonnull align 8 dereferenceable(24) %i.btt) #15, !noalias !538, !inline_history !559
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i: ; preds = %bb.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15, !noalias !538
  %.pre182.i = load ptr, ptr %13, align 8, !tbaa !108, !noalias !538
  br label %bb.pk

bb.pi:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit.i651
  %i.bvb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.btt, i64 8 ; 2 uses
  %i.bvd = load i32, ptr %i.bvc, align 8, !tbaa !15, !noalias !538
  %i.bve = add nsw i32 %i.bvd, -1                 ; 2 uses
  store i32 %i.bve, ptr %i.bvc, align 8, !tbaa !15, !noalias !538
  %i.bvf = icmp eq i32 %i.bve, 0
  br i1 %i.bvf, label %bb.pj, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i

bb.pj:                                            ; preds = %bb.pi
  %i.bvg = load ptr, ptr %i.btt, align 8, !tbaa !17, !noalias !538
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvg, i64 8
  %i.bvi = load ptr, ptr %i.bvh, align 8, !noalias !538
  call void %i.bvi(ptr noundef nonnull align 8 dereferenceable(24) %i.btt) #15, !noalias !538, !inline_history !559
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i

bb.pk:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit.i650
  %i.bvj = phi ptr [ %.pre182.i, %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit.i ], [ %i.btr, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit.i650 ] ; 11 uses
  %.not.i.i155.i = icmp eq ptr %i.bvj, null
  br i1 %.not.i.i155.i, label %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 8
  %i.bvl = load i32, ptr %i.bvk, align 8, !tbaa !15, !noalias !538
  %i.bvm = icmp eq i32 %i.bvl, 0
  br i1 %i.bvm, label %bb.pm, label %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

bb.pm:                                            ; preds = %bb.pl
  %i.bvn = load ptr, ptr %i.bvj, align 8, !tbaa !17, !noalias !538
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvn, i64 8
  %i.bvp = load ptr, ptr %i.bvo, align 8, !noalias !538
  call void %i.bvp(ptr noundef nonnull align 8 dereferenceable(205) %i.bvj) #15, !noalias !538, !inline_history !541
  br label %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i:    ; preds = %bb.pj, %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15, !noalias !538
  %.pre180.i = load ptr, ptr %13, align 8, !tbaa !108, !noalias !538 ; 4 uses
  %.not.i.i158.i = icmp eq ptr %.pre180.i, null
  br i1 %.not.i.i158.i, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i, label %bb.pn

bb.pn:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i
  %i.bvq = getelementptr inbounds nuw i8, ptr %.pre180.i, i64 8 ; 2 uses
  %i.bvr = load i32, ptr %i.bvq, align 8, !tbaa !15, !noalias !538
  %i.bvs = add nsw i32 %i.bvr, -1                 ; 2 uses
  store i32 %i.bvs, ptr %i.bvq, align 8, !tbaa !15, !noalias !538
  %i.bvt = icmp eq i32 %i.bvs, 0
  br i1 %i.bvt, label %bb.po, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i

bb.po:                                            ; preds = %bb.pn
  %i.bvu = load ptr, ptr %.pre180.i, align 8, !tbaa !17, !noalias !538
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 8
  %i.bvw = load ptr, ptr %i.bvv, align 8, !noalias !538
  call void %i.bvw(ptr noundef nonnull align 8 dereferenceable(205) %.pre180.i) #15, !noalias !538, !inline_history !541
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit159.i:   ; preds = %bb.po, %bb.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i, %bb.ow, %bb.ov, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit123.i
  %.pn71219.i = phi { ptr, i32 } [ %i.bvb, %bb.po ], [ %i.bvb, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit143.i ], [ %i.bvb, %bb.pn ], [ %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ov ], [ %.pn.pn.i, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit123.i ], [ %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ow ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !538
  br label %common.resume

_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit: ; preds = %bb.pk, %bb.pl, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !538
  invoke void @_ZN5Ipopt11TNLPAdapter7ResortXERKNS_6VectorEPdb(ptr noundef nonnull align 8 dereferenceable(600) %i.ab, ptr noundef nonnull align 8 dereferenceable(205) %i.bvj, ptr noundef nonnull %9, i1 noundef zeroext false)
          to label %bb.pp unwind label %bb.ps

bb.pp:                                            ; preds = %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvj, i64 8 ; 2 uses
  %i.bvy = load i32, ptr %i.bvx, align 8, !tbaa !15
  %i.bvz = add nsw i32 %i.bvy, -1                 ; 2 uses
  store i32 %i.bvz, ptr %i.bvx, align 8, !tbaa !15
  %i.bwa = icmp eq i32 %i.bvz, 0
  br i1 %i.bwa, label %bb.pq, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657

bb.pq:                                            ; preds = %bb.pp
  %i.bwb = load ptr, ptr %i.bvj, align 8, !tbaa !17
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 8
  %i.bwd = load ptr, ptr %i.bwc, align 8
  call void %i.bwd(ptr noundef nonnull align 8 dereferenceable(248) %i.bvj) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657: ; preds = %bb.pp, %bb.pq
  %i.bwe = icmp sgt i32 %i.da, 0
  %i.bwf = icmp eq i32 %i.de, 2
  %or.cond19 = select i1 %i.bwe, i1 %i.bwf, i1 false
  br i1 %or.cond19, label %bb.pr, label %bb.px

bb.pr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  call fastcc void @_ZN5IpoptL8curr_y_cEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb(ptr dead_on_unwind noalias writable align 8 %55, ptr noundef nonnull %1, ptr noundef %.0216, ptr noundef %.0215, i1 noundef zeroext %3)
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.bwh = load ptr, ptr %i.bwg, align 8, !tbaa !104 ; 6 uses
  %i.bwi = load ptr, ptr %55, align 8, !tbaa !71  ; 8 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwi, i64 233
  %i.bwk = load i8, ptr %i.bwj, align 1, !tbaa !463, !range !466, !noundef !122
  %i.bwl = trunc nuw i8 %i.bwk to i1
  br i1 %i.bwl, label %.lr.ph1247, label %.lr.ph1243

.lr.ph1243:                                       ; preds = %bb.pr
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwi, i64 216
  %i.bwn = load ptr, ptr %i.bwm, align 8, !tbaa !467 ; 3 uses
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwi, i64 56
  %i.bwp = load ptr, ptr %i.bwo, align 8, !tbaa !92
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwp, i64 12
  %i.bwr = load i32, ptr %i.bwq, align 4, !tbaa !93
  %invariant.op1244 = sub i32 %i.bwr, %i.da       ; 3 uses
  %wide.trip.count1286 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1533 = and i64 %wide.trip.count1286, 1
  %i.bws = icmp eq i32 %i.da, 1
  br i1 %i.bws, label %.epil.preheader1532, label %.lr.ph1243.new

.lr.ph1243.new:                                   ; preds = %.lr.ph1243
  %unroll_iter1536 = and i64 %wide.trip.count1286, 2147483646
  br label %bb.pv

.lr.ph1247:                                       ; preds = %bb.pr
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwi, i64 240 ; 3 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwi, i64 56
  %i.bwv = load ptr, ptr %i.bwu, align 8, !tbaa !92
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 12
  %i.bwx = load i32, ptr %i.bww, align 4, !tbaa !93
  %invariant.op1248 = sub i32 %i.bwx, %i.da       ; 3 uses
  %wide.trip.count1291 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter1539 = and i64 %wide.trip.count1291, 1
  %i.bwy = icmp eq i32 %i.da, 1
  br i1 %i.bwy, label %.epil.preheader1538, label %.lr.ph1247.new

.lr.ph1247.new:                                   ; preds = %.lr.ph1247
  %unroll_iter1542 = and i64 %wide.trip.count1291, 2147483646
  br label %bb.pu

bb.ps:                                            ; preds = %_ZN5IpoptL15curr_grad_lag_xEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEPNS_12OrigIpoptNLPEPNS_13RestoIpoptNLPEb.exit
  %i.bwz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bvj, i64 8 ; 2 uses
  %i.bxb = load i32, ptr %i.bxa, align 8, !tbaa !15
  %i.bxc = add nsw i32 %i.bxb, -1                 ; 2 uses
  store i32 %i.bxc, ptr %i.bxa, align 8, !tbaa !15
  %i.bxd = icmp eq i32 %i.bxc, 0
  br i1 %i.bxd, label %bb.pt, label %common.resume

bb.pt:                                            ; preds = %bb.ps
  %i.bxe = load ptr, ptr %i.bvj, align 8, !tbaa !17
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 8
  %i.bxg = load ptr, ptr %i.bxf, align 8
  call void %i.bxg(ptr noundef nonnull align 8 dereferenceable(248) %i.bvj) #15, !inline_history !74
  br label %common.resume

bb.pu:                                            ; preds = %bb.pu, %.lr.ph1247.new
  %indvars.iv1288.a = phi i64 [ 0, %.lr.ph1247.new ], [ %indvars.iv.next1289.1.a, %bb.pu ] ; 4 uses
  %niter1543 = phi i64 [ 0, %.lr.ph1247.new ], [ %niter1543.next.1, %bb.pu ]
  %i.bxh = load double, ptr %i.bwt, align 8, !tbaa !560
  %i.bxi = trunc i64 %indvars.iv1288.a to i32
  %.reass1249 = add i32 %invariant.op1248, %i.bxi
  %i.bxj = sext i32 %.reass1249 to i64
  %i.bxk = getelementptr inbounds [8 x i8], ptr %i.bwh, i64 %i.bxj
  %i.bxl = load double, ptr %i.bxk, align 8, !tbaa !84
  %i.bxm = fsub double 1.000000e+00, %i.bxl
  %i.bxn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1288.a
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !86
  %i.bxp = sext i32 %i.bxo to i64
  %i.bxq = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bxp ; 2 uses
  %i.bxr = load double, ptr %i.bxq, align 8, !tbaa !84
  %i.bxs = call double @llvm.fmuladd.f64(double %i.bxh, double %i.bxm, double %i.bxr)
  store double %i.bxs, ptr %i.bxq, align 8, !tbaa !84
  %indvars.iv.next1289.a = or disjoint i64 %indvars.iv1288.a, 1 ; 2 uses
  %i.bxt = load double, ptr %i.bwt, align 8, !tbaa !560
  %i.bxu = trunc i64 %indvars.iv.next1289.a to i32
  %.reass1249.1 = add i32 %invariant.op1248, %i.bxu
  %i.bxv = sext i32 %.reass1249.1 to i64
  %i.bxw = getelementptr inbounds [8 x i8], ptr %i.bwh, i64 %i.bxv
  %i.bxx = load double, ptr %i.bxw, align 8, !tbaa !84
  %i.bxy = fsub double 1.000000e+00, %i.bxx
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1289.a
  %i.bya = load i32, ptr %i.bxz, align 4, !tbaa !86
  %i.byb = sext i32 %i.bya to i64
  %i.byc = getelementptr inbounds [8 x i8], ptr %9, i64 %i.byb ; 2 uses
  %i.byd = load double, ptr %i.byc, align 8, !tbaa !84
  %i.bye = call double @llvm.fmuladd.f64(double %i.bxt, double %i.bxy, double %i.byd)
  store double %i.bye, ptr %i.byc, align 8, !tbaa !84
  %indvars.iv.next1289.1.a = add nuw nsw i64 %indvars.iv1288.a, 2 ; 2 uses
  %niter1543.next.1 = add nuw i64 %niter1543, 2   ; 2 uses
  %niter1543.ncmp.1 = icmp eq i64 %niter1543.next.1, %unroll_iter1542
  br i1 %niter1543.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.pu, !llvm.loop !561

bb.pv:                                            ; preds = %bb.pv, %.lr.ph1243.new
  %indvars.iv1283 = phi i64 [ 0, %.lr.ph1243.new ], [ %indvars.iv.next1284.1, %bb.pv ] ; 4 uses
  %niter1537 = phi i64 [ 0, %.lr.ph1243.new ], [ %niter1537.next.1, %bb.pv ]
  %i.byf = trunc i64 %indvars.iv1283 to i32
  %.reass1245 = add i32 %invariant.op1244, %i.byf
  %i.byg = sext i32 %.reass1245 to i64            ; 2 uses
  %i.byh = getelementptr inbounds [8 x i8], ptr %i.bwn, i64 %i.byg
  %i.byi = load double, ptr %i.byh, align 8, !tbaa !84
  %i.byj = getelementptr inbounds [8 x i8], ptr %i.bwh, i64 %i.byg
  %i.byk = load double, ptr %i.byj, align 8, !tbaa !84
  %i.byl = fsub double 1.000000e+00, %i.byk
  %i.bym = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1283
  %i.byn = load i32, ptr %i.bym, align 4, !tbaa !86
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr inbounds [8 x i8], ptr %9, i64 %i.byo ; 2 uses
  %i.byq = load double, ptr %i.byp, align 8, !tbaa !84
  %i.byr = call double @llvm.fmuladd.f64(double %i.byi, double %i.byl, double %i.byq)
  store double %i.byr, ptr %i.byp, align 8, !tbaa !84
  %indvars.iv.next1284 = or disjoint i64 %indvars.iv1283, 1 ; 2 uses
  %i.bys = trunc i64 %indvars.iv.next1284 to i32
  %.reass1245.1 = add i32 %invariant.op1244, %i.bys
  %i.byt = sext i32 %.reass1245.1 to i64          ; 2 uses
  %i.byu = getelementptr inbounds [8 x i8], ptr %i.bwn, i64 %i.byt
  %i.byv = load double, ptr %i.byu, align 8, !tbaa !84
  %i.byw = getelementptr inbounds [8 x i8], ptr %i.bwh, i64 %i.byt
  %i.byx = load double, ptr %i.byw, align 8, !tbaa !84
  %i.byy = fsub double 1.000000e+00, %i.byx
  %i.byz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next1284
  %i.bza = load i32, ptr %i.byz, align 4, !tbaa !86
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bzb ; 2 uses
  %i.bzd = load double, ptr %i.bzc, align 8, !tbaa !84
  %i.bze = call double @llvm.fmuladd.f64(double %i.byv, double %i.byy, double %i.bzd)
  store double %i.bze, ptr %i.bzc, align 8, !tbaa !84
  %indvars.iv.next1284.1 = add nuw nsw i64 %indvars.iv1283, 2 ; 2 uses
  %niter1537.next.1 = add nuw i64 %niter1537, 2   ; 2 uses
  %niter1537.ncmp.1 = icmp eq i64 %niter1537.next.1, %unroll_iter1536
  br i1 %niter1537.ncmp.1, label %.loopexit.loopexit1512.unr-lcssa, label %bb.pv, !llvm.loop !562

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.pu
  %lcmp.mod1540.not = icmp eq i64 %xtraiter1539, 0
  br i1 %lcmp.mod1540.not, label %.loopexit, label %.epil.preheader1538

.epil.preheader1538:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1247
  %indvars.iv1288.epil.init.a = phi i64 [ 0, %.lr.ph1247 ], [ %indvars.iv.next1289.1.a, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1541 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1541)
  %i.bzf = load double, ptr %i.bwt, align 8, !tbaa !560
  %i.bzg = trunc i64 %indvars.iv1288.epil.init.a to i32
  %.reass1249.epil = add i32 %invariant.op1248, %i.bzg
  %i.bzh = sext i32 %.reass1249.epil to i64
  %i.bzi = getelementptr inbounds [8 x i8], ptr %i.bwh, i64 %i.bzh
  %i.bzj = load double, ptr %i.bzi, align 8, !tbaa !84
  %i.bzk = fsub double 1.000000e+00, %i.bzj
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1288.epil.init.a
  %i.bzm = load i32, ptr %i.bzl, align 4, !tbaa !86
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds [8 x i8], ptr %9, i64 %i.bzn ; 2 uses
  %i.bzp = load double, ptr %i.bzo, align 8, !tbaa !84
  %i.bzq = call double @llvm.fmuladd.f64(double %i.bzf, double %i.bzk, double %i.bzp)
  store double %i.bzq, ptr %i.bzo, align 8, !tbaa !84
  br label %.loopexit

.loopexit.loopexit1512.unr-lcssa:                 ; preds = %bb.pv
  %lcmp.mod1534.not = icmp eq i64 %xtraiter1533, 0
  br i1 %lcmp.mod1534.not, label %.loopexit, label %.epil.preheader1532

.epil.preheader1532:                              ; preds = %.loopexit.loopexit1512.unr-lcssa, %.lr.ph1243
  %indvars.iv1283.epil.init = phi i64 [ 0, %.lr.ph1243 ], [ %indvars.iv.next1284.1, %.loopexit.loopexit1512.unr-lcssa ] ; 2 uses
  %lcmp.mod1535 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod1535)
  %i.bzr = trunc i64 %indvars.iv1283.epil.init to i32
  %.reass1245.epil = add i32 %invariant.op1244, %i.bzr
  %i.bzs = sext i32 %.reass1245.epil to i64       ; 2 uses
  %i.bzt = getelementptr inbounds [8 x i8], ptr %i.bwn, i64 %i.bzs
  %i.bzu = load double, ptr %i.bzt, align 8, !tbaa !84
  %i.bzv = getelementptr inbounds [8 x i8], ptr %i.bwh, i64 %i.bzs
  %i.bzw = load double, ptr %i.bzv, align 8, !tbaa !84
  %i.bzx = fsub double 1.000000e+00, %i.bzw
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv1283.epil.init
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !86
  %i.caa = sext i32 %i.bzz to i64
  %i.cab = getelementptr inbounds [8 x i8], ptr %9, i64 %i.caa ; 2 uses
  %i.cac = load double, ptr %i.cab, align 8, !tbaa !84
  %i.cad = call double @llvm.fmuladd.f64(double %i.bzu, double %i.bzx, double %i.cac)
  store double %i.cad, ptr %i.cab, align 8, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader1532, %.loopexit.loopexit1512.unr-lcssa, %.epil.preheader1538, %.loopexit.loopexit.unr-lcssa
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bwi, i64 8 ; 2 uses
  %i.caf = load i32, ptr %i.cae, align 8, !tbaa !15
  %i.cag = add nsw i32 %i.caf, -1                 ; 2 uses
  store i32 %i.cag, ptr %i.cae, align 8, !tbaa !15
  %i.cah = icmp eq i32 %i.cag, 0
  br i1 %i.cah, label %bb.pw, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661

bb.pw:                                            ; preds = %.loopexit
  %i.cai = load ptr, ptr %i.bwi, align 8, !tbaa !17
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cai, i64 8
  %i.cak = load ptr, ptr %i.caj, align 8
  call void %i.cak(ptr noundef nonnull align 8 dereferenceable(248) %i.bwi) #15, !inline_history !74
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661: ; preds = %.loopexit, %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  br label %bb.px

bb.px:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit657, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit661, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit625
  %i.cal = icmp ne ptr %11, null                  ; 2 uses
  %i.cam = icmp ne ptr %12, null                  ; 2 uses
  %or.cond21 = or i1 %i.cal, %i.cam
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
  %i.can = load ptr, ptr %.0216, align 8, !tbaa !17
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 320
  %i.cap = load ptr, ptr %i.cao, align 8
  invoke void %i.cap(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.19") align 8 %59, ptr noundef nonnull align 8 dereferenceable(544) %.0216)
          to label %bb.qa unwind label %bb.rg

bb.qa:                                            ; preds = %bb.pz
  %i.caq = load ptr, ptr %59, align 8, !tbaa !108 ; 7 uses
  %.not.i.i.i664 = icmp eq ptr %i.caq, null
  br i1 %.not.i.i.i664, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.car = getelementptr inbounds nuw i8, ptr %i.caq, i64 8 ; 2 uses
  %i.cas = load i32, ptr %i.car, align 8, !tbaa !15
  %i.cat = add nsw i32 %i.cas, 1
  store i32 %i.cat, ptr %i.car, align 8, !tbaa !15
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  %i.cau = load ptr, ptr %58, align 8, !tbaa !108 ; 4 uses
  %.not.i.i.i.i665 = icmp eq ptr %i.cau, null
  br i1 %.not.i.i.i.i665, label %bb.qf, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 8 ; 2 uses
  %i.caw = load i32, ptr %i.cav, align 8, !tbaa !15
  %i.cax = add nsw i32 %i.caw, -1                 ; 2 uses
  store i32 %i.cax, ptr %i.cav, align 8, !tbaa !15
  %i.cay = icmp eq i32 %i.cax, 0
  br i1 %i.cay, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.caz = load ptr, ptr %i.cau, align 8, !tbaa !17
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 8
  %i.cbb = load ptr, ptr %i.cba, align 8
  call void %i.cbb(ptr noundef nonnull align 8 dereferenceable(205) %i.cau) #15, !inline_history !160
  %.pre1301 = load ptr, ptr %59, align 8, !tbaa !108
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.qd, %bb.qc
  %i.cbc = phi ptr [ %.pre1301, %bb.qe ], [ %i.caq, %bb.qd ], [ %i.caq, %bb.qc ] ; 4 uses
  store ptr %i.caq, ptr %58, align 8, !tbaa !108
  %.not.i.i666 = icmp eq ptr %i.cbc, null
  br i1 %.not.i.i666, label %thread-pre-split, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 8 ; 2 uses
  %i.cbe = load i32, ptr %i.cbd, align 8, !tbaa !15
  %i.cbf = add nsw i32 %i.cbe, -1                 ; 2 uses
  store i32 %i.cbf, ptr %i.cbd, align 8, !tbaa !15
  %i.cbg = icmp eq i32 %i.cbf, 0
  br i1 %i.cbg, label %bb.qh, label %thread-pre-split

bb.qh:                                            ; preds = %bb.qg
  %i.cbh = load ptr, ptr %i.cbc, align 8, !tbaa !17
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 8
  %i.cbj = load ptr, ptr %i.cbi, align 8
  call void %i.cbj(ptr noundef nonnull align 8 dereferenceable(205) %i.cbc) #15, !inline_history !112
  %.pr.pre = load ptr, ptr %58, align 8, !tbaa !108
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.qh, %bb.qg, %bb.qf
  %i.cbk = phi ptr [ %i.caq, %bb.qf ], [ %i.caq, %bb.qg ], [ %.pr.pre, %bb.qh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #15
  %.not1223 = icmp eq ptr %i.cbk, null
  br i1 %.not1223, label %bb.rt, label %bb.qi

bb.qi:                                            ; preds = %thread-pre-split
  %i.cbl = getelementptr inbounds nuw i8, ptr %.0216, i64 16 ; 2 uses
  %i.cbm = load ptr, ptr %i.cbl, align 8, !tbaa !78, !noalias !563 ; 10 uses
  %.not.i.i.i.i668 = icmp eq ptr %i.cbm, null
  br i1 %.not.i.i.i.i668, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 8 ; 2 uses
  %i.cbo = load i32, ptr %i.cbn, align 8, !tbaa !15, !noalias !563
  %i.cbp = add nsw i32 %i.cbo, 1
  store i32 %i.cbp, ptr %i.cbn, align 8, !tbaa !15, !noalias !563
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit:          ; preds = %bb.qj, %bb.qi
  %i.cbq = load ptr, ptr %i.cbm, align 8, !tbaa !17
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbq, i64 200
  %i.cbs = load ptr, ptr %i.cbr, align 8
  %i.cbt = invoke noundef zeroext i1 %i.cbs(ptr noundef nonnull align 8 dereferenceable(24) %i.cbm)
          to label %bb.qk unwind label %bb.ri

bb.qk:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbm, i64 8 ; 2 uses
  %i.cbv = load i32, ptr %i.cbu, align 8, !tbaa !15
  %i.cbw = add nsw i32 %i.cbv, -1                 ; 2 uses
  store i32 %i.cbw, ptr %i.cbu, align 8, !tbaa !15
  %i.cbx = icmp eq i32 %i.cbw, 0
  br i1 %i.cbx, label %bb.ql, label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

bb.ql:                                            ; preds = %bb.qk
  %i.cby = load ptr, ptr %i.cbm, align 8, !tbaa !17
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 8
  %i.cca = load ptr, ptr %i.cbz, align 8
  call void %i.cca(ptr noundef nonnull align 8 dereferenceable(24) %i.cbm) #15, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit: ; preds = %bb.qk, %bb.ql
  br i1 %i.cbt, label %bb.qm, label %bb.sd

bb.qm:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16NLPScalingObjectEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  %i.ccb = load ptr, ptr %i.cbl, align 8, !tbaa !78, !noalias !566 ; 9 uses
  %.not.i.i.i.i670 = icmp eq ptr %i.ccb, null     ; 2 uses
  br i1 %.not.i.i.i.i670, label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit671, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 8 ; 2 uses
  %i.ccd = load i32, ptr %i.ccc, align 8, !tbaa !15, !noalias !566
  %i.cce = add nsw i32 %i.ccd, 1
  store i32 %i.cce, ptr %i.ccc, align 8, !tbaa !15, !noalias !566
  br label %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit671

_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit671:       ; preds = %bb.qn, %bb.qm
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #15
  %i.ccf = load ptr, ptr %.0216, align 8, !tbaa !17
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.ccf, i64 136
  %i.cch = load ptr, ptr %i.ccg, align 8
  invoke void %i.cch(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.26") align 8 %61, ptr noundef nonnull align 8 dereferenceable(544) %.0216)
          to label %bb.qo unwind label %bb.rk

bb.qo:                                            ; preds = %_ZNK5Ipopt8IpoptNLP11NLP_scalingEv.exit671
  %i.cci = load ptr, ptr %61, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #15
  %i.ccj = load ptr, ptr %.0216, align 8, !tbaa !17
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 336
  %i.ccl = load ptr, ptr %i.cck, align 8
  invoke void %i.ccl(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.23") align 8 %62, ptr noundef nonnull align 8 dereferenceable(544) %.0216)
          to label %bb.qp unwind label %bb.rl

bb.qp:                                            ; preds = %bb.qo
  %i.ccm = load ptr, ptr %62, align 8, !tbaa !92
  invoke void @_ZN5Ipopt16NLPScalingObject34apply_vector_scaling_d_LU_NonConstERKNS_6MatrixERKNS_8SmartPtrIKNS_6VectorEEERKNS_11VectorSpaceE(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.11") align 8 %60, ptr noundef nonnull align 8 dereferenceable(24) %i.ccb, ptr noundef nonnull align 8 dereferenceable(69) %i.cci, ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(16) %i.ccm)
          to label %bb.qq unwind label %bb.rm

bb.qq:                                            ; preds = %bb.qp
  %i.ccn = load ptr, ptr %60, align 8, !tbaa !113 ; 6 uses
  %.not.i.i.i672 = icmp eq ptr %i.ccn, null       ; 2 uses
  br i1 %.not.i.i.i672, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEEC2EPS2_.exit.thread.i, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 8 ; 2 uses
  %i.ccp = load i32, ptr %i.cco, align 8, !tbaa !15
end_hunk_3
