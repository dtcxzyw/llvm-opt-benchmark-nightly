Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/blenders?download=true
inline.NumInlined: 723
inline.NumDeleted: 215
begin_hunk_0_@_ZN2cv6detail16MultiBandBlender4feedERKNS_11_InputArrayES4_NS_6Point_IiEE:bb.a
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.au

bb.at:                                            ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn185.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.at ], [ %i.do, %bb.as ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.bw

bb.av:                                            ; preds = %bb.af, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %i.dq = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 0, ptr %i.dq, align 8, !tbaa !49
  %i.dr = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %i.dr, align 4, !tbaa !50
  store i32 17432576, ptr %29, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %15, ptr %i.ds, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.dt = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 0, ptr %i.du, align 8
  store i32 34209792, ptr %30, align 8, !tbaa !36
  store ptr %.pr.i, ptr %i.dt, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30, i32 noundef %i.bg, i32 noundef %i.bj, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  %i.dv = load i32, ptr %i.y, align 4, !tbaa !72
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aw
  %i.dx = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %32, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %34, i64 4
  br label %bb.ay

._crit_edge:                                      ; preds = %bb.az, %bb.aw
  %i.ed = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv6detail17stitchingLogLevelEv()
          to label %bb.bb unwind label %bb.bv     ; 0 uses

bb.ax:                                            ; preds = %bb.av
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.bw

bb.ay:                                            ; preds = %.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  %i.ef = getelementptr inbounds nuw [184 x i8], ptr %.pr.i, i64 %indvars.iv
  store i32 0, ptr %i.dx, align 8, !tbaa !49
  store i32 0, ptr %i.dy, align 4, !tbaa !50
  store i32 17432576, ptr %32, align 8, !tbaa !36
  store ptr %i.ef, ptr %i.dz, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [184 x i8], ptr %.pr.i, i64 %indvars.iv.next
  store i64 0, ptr %i.eb, align 8
  store i32 34209792, ptr %33, align 8, !tbaa !36
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  store i32 0, ptr %34, align 4, !tbaa !49
  store i32 0, ptr %i.ec, align 4, !tbaa !50
  invoke void @_ZN2cv7pyrDownERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 4 dereferenceable(8) %34, i32 noundef 4)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %i.eh = load i32, ptr %i.y, align 4, !tbaa !72
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next, %i.ei
  br i1 %i.ej, label %bb.ay, label %._crit_edge, !llvm.loop !163

bb.ba:                                            ; preds = %bb.ay
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.bw

bb.bb:                                            ; preds = %._crit_edge
  %i.el = load i32, ptr %i.y, align 4, !tbaa !72
  %.not306 = icmp slt i32 %i.el, 0
  br i1 %.not306, label %._crit_edge314, label %.lr.ph313

.lr.ph313:                                        ; preds = %bb.bb
  %i.em = load <2 x i32>, ptr %i.aa, align 8, !tbaa !38
  %i.en = shufflevector <2 x i32> %i.em, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eo = shufflevector <2 x i32> %i.be, <2 x i32> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ep = sub nsw <4 x i32> %i.eo, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.eu = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %36, i64 128 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %37, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %37, i64 128 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %39, i64 128 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %40, i64 128 ; 2 uses
  br label %bb.bc

._crit_edge314:                                   ; preds = %.loopexit, %bb.bb
  %i.fc = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv6detail17stitchingLogLevelEv()
          to label %bb.bs unwind label %bb.bv     ; 0 uses

bb.bc:                                            ; preds = %.lr.ph313, %.loopexit
  %indvars.iv335 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next336, %.loopexit ] ; 6 uses
  %i.fd = phi <4 x i32> [ %i.ep, %.lr.ph313 ], [ %i.wa, %.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.fe = shufflevector <4 x i32> %i.fd, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ff = shufflevector <4 x i32> %i.fd, <4 x i32> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.fg = sub <2 x i32> %i.fe, %i.ff              ; 2 uses
  %i.fh = extractelement <2 x i32> %i.fg, i64 1   ; 3 uses
  %i.fi = extractelement <2 x i32> %i.fg, i64 0   ; 4 uses
  store <2 x i32> %i.ff, ptr %35, align 8, !tbaa !38
  store i32 %i.fi, ptr %i.eq, align 8, !tbaa !187
  store i32 %i.fh, ptr %i.er, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  %i.fj = load ptr, ptr %13, align 8, !tbaa !63
  %i.fk = getelementptr inbounds nuw [184 x i8], ptr %i.fj, i64 %indvars.iv335
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %36, ptr noundef nonnull align 8 dereferenceable(184) %i.fk, i32 noundef 16777216)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.fl = load ptr, ptr %i.es, align 8, !tbaa !63
  %i.fm = getelementptr inbounds nuw [184 x i8], ptr %i.fl, i64 %indvars.iv335
  invoke void @_ZN2cv4UMatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(184) %38, ptr noundef nonnull align 8 dereferenceable(184) %i.fm, ptr noundef nonnull align 4 dereferenceable(16) %35)
          to label %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit unwind label %bb.bi

_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit:              ; preds = %bb.bd
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %37, ptr noundef nonnull align 8 dereferenceable(184) %38, i32 noundef 50331648)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  %i.fn = getelementptr inbounds nuw [184 x i8], ptr %.pr.i, i64 %indvars.iv335
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %39, ptr noundef nonnull align 8 dereferenceable(184) %i.fn, i32 noundef 16777216)
          to label %bb.bf unwind label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.fo = load ptr, ptr %i.et, align 8, !tbaa !63
  %i.fp = getelementptr inbounds nuw [184 x i8], ptr %i.fo, i64 %indvars.iv335
  invoke void @_ZN2cv4UMatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(184) %41, ptr noundef nonnull align 8 dereferenceable(184) %i.fp, ptr noundef nonnull align 4 dereferenceable(16) %35)
          to label %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit239 unwind label %bb.bm

_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit239:           ; preds = %bb.bf
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %40, ptr noundef nonnull align 8 dereferenceable(184) %41, i32 noundef 50331648)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit239
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  %i.fq = load i32, ptr %i.cn, align 4, !tbaa !70
  %i.fr = icmp eq i32 %i.fq, 5
  br i1 %i.fr, label %.preheader, label %.preheader290

.preheader290:                                    ; preds = %bb.bg
  %i.fs = icmp sgt i32 %i.fh, 0
  br i1 %i.fs, label %.lr.ph299, label %.loopexit

.lr.ph299:                                        ; preds = %.preheader290
  %i.ft = load ptr, ptr %i.eu, align 8, !tbaa !45 ; 4 uses
  %i.fu = load i64, ptr %i.ev, align 8, !tbaa !32 ; 4 uses
  %i.fv = load ptr, ptr %i.ew, align 8, !tbaa !45 ; 5 uses
  %i.fw = load i64, ptr %i.ex, align 8, !tbaa !32 ; 5 uses
  %i.fx = load ptr, ptr %i.ey, align 8, !tbaa !45 ; 4 uses
  %i.fy = load i64, ptr %i.ez, align 8, !tbaa !32 ; 4 uses
  %i.fz = load ptr, ptr %i.fa, align 8, !tbaa !45 ; 5 uses
  %i.ga = load i64, ptr %i.fb, align 8, !tbaa !32 ; 5 uses
  %i.gb = icmp sgt i32 %i.fi, 0
  br i1 %i.gb, label %.lr.ph296.preheader, label %.loopexit

.lr.ph296.preheader:                              ; preds = %.lr.ph299
  %wide.trip.count323 = zext nneg i32 %i.fh to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fi to i64   ; 5 uses
  %i.gc = add nsw i64 %wide.trip.count323, -1     ; 4 uses
  %i.gd = mul i64 %i.fw, %i.gc
  %i.ge = mul nuw nsw i64 %wide.trip.count, 6     ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fv, i64 %i.gd
  %scevgep386 = getelementptr i8, ptr %i.gf, i64 %i.ge ; 3 uses
  %i.gg = mul i64 %i.ga, %i.gc
  %i.gh = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fz, i64 %i.gg
  %scevgep387 = getelementptr i8, ptr %i.gi, i64 %i.gh ; 3 uses
  %i.gj = mul i64 %i.fu, %i.gc
  %i.gk = getelementptr i8, ptr %i.ft, i64 %i.gj
  %scevgep388 = getelementptr i8, ptr %i.gk, i64 %i.ge ; 2 uses
  %i.gl = mul i64 %i.fy, %i.gc
  %i.gm = getelementptr i8, ptr %i.fx, i64 %i.gl
  %scevgep389 = getelementptr i8, ptr %i.gm, i64 %i.gh ; 2 uses
  %min.iters.check420 = icmp ult i32 %i.fi, 16
  %bound0390 = icmp ult ptr %i.fv, %scevgep387
  %bound1391 = icmp ult ptr %i.fz, %scevgep386
  %found.conflict392 = and i1 %bound0390, %bound1391
  %i.gn = or i64 %i.ga, %i.fw
  %i.go = icmp slt i64 %i.gn, 0
  %i.gp = or i1 %found.conflict392, %i.go
  %bound0395 = icmp ult ptr %i.fv, %scevgep388
  %bound1396 = icmp ult ptr %i.ft, %scevgep386
  %found.conflict397 = and i1 %bound0395, %bound1396
  %42 = or i64 %i.fu, %i.fw
  %i.gq = icmp slt i64 %42, 0
  %i.gr = or i1 %found.conflict397, %i.gq
  %conflict.rdx400.a = or i1 %i.gp, %i.gr
  %bound0401.a = icmp ult ptr %i.fv, %scevgep389
  %bound1402.a = icmp ult ptr %i.fx, %scevgep386
  %found.conflict403.a = and i1 %bound0401.a, %bound1402.a
  %43 = or i64 %i.fy, %i.fw
  %i.gs = icmp slt i64 %43, 0
  %i.gt = or i1 %found.conflict403.a, %i.gs
  %conflict.rdx406 = or i1 %conflict.rdx400.a, %i.gt
  %bound0407 = icmp ult ptr %i.fz, %scevgep388
  %bound1408 = icmp ult ptr %i.ft, %scevgep387
  %found.conflict409 = and i1 %bound0407, %bound1408
  %44 = or i64 %i.fu, %i.ga
  %45 = icmp slt i64 %44, 0
  %46 = or i1 %found.conflict409, %45
  %conflict.rdx412 = or i1 %conflict.rdx406, %46
  %bound0413 = icmp ult ptr %i.fz, %scevgep389
  %bound1414 = icmp ult ptr %i.fx, %scevgep387
  %found.conflict415 = and i1 %bound0413, %bound1414
  %47 = or i64 %i.fy, %i.ga
  %48 = icmp slt i64 %47, 0
  %49 = or i1 %found.conflict415, %48
  %conflict.rdx418 = or i1 %conflict.rdx412, %49
  %n.vec422 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n431 = icmp eq i64 %n.vec422, %wide.trip.count
  br label %.lr.ph296

.preheader:                                       ; preds = %bb.bg
  %i.gu = load i32, ptr %i.er, align 4, !tbaa !188 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph305, label %.loopexit

.lr.ph305:                                        ; preds = %.preheader
  %i.gw = load ptr, ptr %i.eu, align 8, !tbaa !45 ; 6 uses
  %i.gx = load i64, ptr %i.ev, align 8, !tbaa !32 ; 3 uses
  %i.gy = load ptr, ptr %i.ew, align 8, !tbaa !45 ; 6 uses
  %i.gz = load i64, ptr %i.ex, align 8, !tbaa !32 ; 3 uses
  %i.ha = load ptr, ptr %i.ey, align 8, !tbaa !45 ; 3 uses
  %i.hb = load i64, ptr %i.ez, align 8, !tbaa !32 ; 3 uses
  %i.hc = load ptr, ptr %i.fa, align 8, !tbaa !45 ; 3 uses
  %i.hd = load i64, ptr %i.fb, align 8, !tbaa !32 ; 3 uses
  %i.he = load i32, ptr %i.eq, align 8, !tbaa !187 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph302.preheader, label %.loopexit

.lr.ph302.preheader:                              ; preds = %.lr.ph305
  %wide.trip.count333 = zext nneg i32 %i.gu to i64 ; 2 uses
  %wide.trip.count328 = zext nneg i32 %i.he to i64 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.gy, i64 -4
  %i.hg = add nsw i64 %wide.trip.count333, -1     ; 4 uses
  %i.hh = mul i64 %i.gz, %i.hg
  %i.hi = mul nuw nsw i64 %wide.trip.count328, 6  ; 2 uses
  %i.hj = add i64 %i.hh, %i.hi                    ; 3 uses
  %scevgep351 = getelementptr i8, ptr %scevgep, i64 %i.hj
  %scevgep352 = getelementptr i8, ptr %i.gw, i64 -4
  %i.hk = mul i64 %i.gx, %i.hg
  %i.hl = add i64 %i.hk, %i.hi                    ; 3 uses
  %scevgep353 = getelementptr i8, ptr %scevgep352, i64 %i.hl
  %scevgep355 = getelementptr i8, ptr %i.gy, i64 -2
  %scevgep356 = getelementptr i8, ptr %scevgep355, i64 %i.hj
  %i.hm = insertelement <2 x ptr> poison, ptr %i.gy, i64 0
  %i.hn = getelementptr i8, ptr %i.gy, <2 x i64> <i64 0, i64 2>
  %i.ho = insertelement <2 x ptr> poison, ptr %i.gw, i64 0
  %i.hp = getelementptr i8, ptr %i.gw, <2 x i64> <i64 0, i64 2>
  %scevgep358 = getelementptr i8, ptr %i.gw, i64 -2
  %scevgep359 = getelementptr i8, ptr %scevgep358, i64 %i.hl
  %i.hq = insertelement <2 x ptr> %i.hm, ptr %i.hc, i64 1
  %i.hr = getelementptr i8, <2 x ptr> %i.hq, <2 x i64> <i64 4, i64 0>
  %scevgep361 = getelementptr i8, ptr %i.gy, i64 %i.hj
  %i.hs = insertelement <2 x ptr> %i.ho, ptr %i.ha, i64 1
  %i.ht = getelementptr i8, <2 x ptr> %i.hs, <2 x i64> <i64 4, i64 0>
  %scevgep363 = getelementptr i8, ptr %i.gw, i64 %i.hl
  %i.hu = mul i64 %i.hd, %i.hg
  %i.hv = shl nuw nsw i64 %wide.trip.count328, 2  ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hc, i64 %i.hu
  %scevgep364 = getelementptr i8, ptr %i.hw, i64 %i.hv
  %i.hx = mul i64 %i.hb, %i.hg
  %i.hy = getelementptr i8, ptr %i.ha, i64 %i.hx
  %scevgep365 = getelementptr i8, ptr %i.hy, i64 %i.hv
  %i.hz = insertelement <4 x ptr> poison, ptr %scevgep353, i64 0
  %i.ia = insertelement <4 x ptr> %i.hz, ptr %scevgep359, i64 1
  %i.ib = insertelement <4 x ptr> %i.ia, ptr %scevgep363, i64 2
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %scevgep365, i64 3
  %i.id = insertelement <4 x ptr> poison, ptr %scevgep351, i64 0
  %i.ie = insertelement <4 x ptr> %i.id, ptr %scevgep356, i64 1
  %i.if = insertelement <4 x ptr> %i.ie, ptr %scevgep361, i64 2
  %i.ig = insertelement <4 x ptr> %i.if, ptr %scevgep364, i64 3
  %i.ih = shufflevector <2 x ptr> %i.hp, <2 x ptr> %i.ht, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ii = shufflevector <2 x ptr> %i.hn, <2 x ptr> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %min.iters.check = icmp ult i32 %i.he, 4
  %i.ij = icmp ult <4 x ptr> %i.ii, %i.ic
  %i.ik = icmp ult <4 x ptr> %i.ih, %i.ig
  %i.il = or i64 %i.gx, %i.gz
  %i.im = and <4 x i1> %i.ij, %i.ik
  %i.in = bitcast <4 x i1> %i.im to i4
  %i.io = icmp ne i4 %i.in, 0
  %i.ip = or i64 %i.hd, %i.il
  %i.iq = or i64 %i.ip, %i.hb
  %i.ir = icmp slt i64 %i.iq, 0
  %op.rdx435 = or i1 %i.io, %i.ir
  %n.vec = and i64 %wide.trip.count328, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count328
  br label %.lr.ph302

bb.bh:                                            ; preds = %bb.bc
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bi:                                            ; preds = %bb.bd
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %38) #18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn197 = phi { ptr, i32 } [ %i.iu, %bb.bj ], [ %i.it, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.bq

bb.bl:                                            ; preds = %bb.be
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bf
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %_ZNK2cv4UMatclERKNS_5Rect_IiEE.exit239
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %41) #18
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn199 = phi { ptr, i32 } [ %i.ix, %bb.bn ], [ %i.iw, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #18
  br label %bb.bp

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %._crit_edge303
  %indvars.iv330 = phi i64 [ 0, %.lr.ph302.preheader ], [ %indvars.iv.next331, %._crit_edge303 ] ; 5 uses
  %i.iy = mul i64 %i.gx, %indvars.iv330
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.iy ; 5 uses
  %i.ja = mul i64 %i.gz, %indvars.iv330
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ja ; 5 uses
  %i.jc = mul i64 %i.hb, %indvars.iv330
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.jc ; 2 uses
  %i.je = mul i64 %i.hd, %indvars.iv330
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.je ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx435
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph302, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph302 ] ; 8 uses
  %i.jg = or disjoint i64 %index, 1               ; 2 uses
  %i.jh = or disjoint i64 %index, 2               ; 2 uses
  %i.ji = or disjoint i64 %index, 3               ; 2 uses
  %i.jj = getelementptr inbounds nuw [6 x i8], ptr %i.iz, i64 %index ; 3 uses
  %i.jk = getelementptr inbounds nuw [6 x i8], ptr %i.iz, i64 %i.jg ; 3 uses
  %i.jl = getelementptr inbounds nuw [6 x i8], ptr %i.iz, i64 %i.jh ; 3 uses
  %i.jm = getelementptr inbounds nuw [6 x i8], ptr %i.iz, i64 %i.ji ; 3 uses
  %i.jn = load i16, ptr %i.jj, align 2, !tbaa !54, !alias.scope !189
  %i.jo = load i16, ptr %i.jk, align 2, !tbaa !54, !alias.scope !189
  %i.jp = load i16, ptr %i.jl, align 2, !tbaa !54, !alias.scope !189
  %i.jq = load i16, ptr %i.jm, align 2, !tbaa !54, !alias.scope !189
  %i.jr = insertelement <4 x i16> poison, i16 %i.jn, i64 0
  %i.js = insertelement <4 x i16> %i.jr, i16 %i.jo, i64 1
  %i.jt = insertelement <4 x i16> %i.js, i16 %i.jp, i64 2
  %i.ju = insertelement <4 x i16> %i.jt, i16 %i.jq, i64 3
  %i.jv = sitofp <4 x i16> %i.ju to <4 x float>
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %index
  %wide.load = load <4 x float>, ptr %i.jw, align 4, !tbaa !55, !alias.scope !190 ; 4 uses
  %i.jx = fmul <4 x float> %wide.load, %i.jv
  %i.jy = fptosi <4 x float> %i.jx to <4 x i16>
  %i.jz = getelementptr inbounds nuw [6 x i8], ptr %i.jb, i64 %index ; 4 uses
  %i.ka = getelementptr inbounds nuw [6 x i8], ptr %i.jb, i64 %i.jg ; 3 uses
  %i.kb = getelementptr inbounds nuw [6 x i8], ptr %i.jb, i64 %i.jh ; 3 uses
  %i.kc = getelementptr inbounds nuw [6 x i8], ptr %i.jb, i64 %i.ji ; 3 uses
  %i.kd = load i16, ptr %i.jz, align 2, !tbaa !54, !alias.scope !191, !noalias !189
  %i.ke = load i16, ptr %i.ka, align 2, !tbaa !54, !alias.scope !191, !noalias !189
  %i.kf = load i16, ptr %i.kb, align 2, !tbaa !54, !alias.scope !191, !noalias !189
  %i.kg = load i16, ptr %i.kc, align 2, !tbaa !54, !alias.scope !191, !noalias !189
  %i.kh = insertelement <4 x i16> poison, i16 %i.kd, i64 0
  %i.ki = insertelement <4 x i16> %i.kh, i16 %i.ke, i64 1
  %i.kj = insertelement <4 x i16> %i.ki, i16 %i.kf, i64 2
  %i.kk = insertelement <4 x i16> %i.kj, i16 %i.kg, i64 3
  %i.kl = add <4 x i16> %i.kk, %i.jy
  %i.km = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.kq = load i16, ptr %i.km, align 2, !tbaa !56, !alias.scope !192
  %i.kr = load i16, ptr %i.kn, align 2, !tbaa !56, !alias.scope !192
  %i.ks = load i16, ptr %i.ko, align 2, !tbaa !56, !alias.scope !192
  %i.kt = load i16, ptr %i.kp, align 2, !tbaa !56, !alias.scope !192
  %i.ku = insertelement <4 x i16> poison, i16 %i.kq, i64 0
  %i.kv = insertelement <4 x i16> %i.ku, i16 %i.kr, i64 1
  %i.kw = insertelement <4 x i16> %i.kv, i16 %i.ks, i64 2
  %i.kx = insertelement <4 x i16> %i.kw, i16 %i.kt, i64 3
  %i.ky = sitofp <4 x i16> %i.kx to <4 x float>
  %i.kz = fmul <4 x float> %wide.load, %i.ky
  %i.la = fptosi <4 x float> %i.kz to <4 x i16>
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.le = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.lf = load i16, ptr %i.lb, align 2, !tbaa !56, !alias.scope !193, !noalias !192
  %i.lg = load i16, ptr %i.lc, align 2, !tbaa !56, !alias.scope !193, !noalias !192
  %i.lh = load i16, ptr %i.ld, align 2, !tbaa !56, !alias.scope !193, !noalias !192
  %i.li = load i16, ptr %i.le, align 2, !tbaa !56, !alias.scope !193, !noalias !192
  %i.lj = insertelement <4 x i16> poison, i16 %i.lf, i64 0
  %i.lk = insertelement <4 x i16> %i.lj, i16 %i.lg, i64 1
  %i.ll = insertelement <4 x i16> %i.lk, i16 %i.lh, i64 2
  %i.lm = insertelement <4 x i16> %i.ll, i16 %i.li, i64 3
end_hunk_0
