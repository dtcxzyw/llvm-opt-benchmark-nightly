Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dis_flow?download=true
inline.NumInlined: 856
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv18DISOpticalFlowImpl14prepareBuffersERNS_3MatES2_S2_b:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.qi = load ptr, ptr %i.go, align 8, !tbaa !78
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %indvars.iv
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !71 ; 2 uses
  %i.ql = load float, ptr %i.gs, align 8, !tbaa !104
  %i.qm = load ptr, ptr %i.qk, align 8, !tbaa !14
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 192
  %i.qo = load ptr, ptr %i.qn, align 8
  invoke void %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, float noundef %i.ql)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca
  %i.qp = load ptr, ptr %i.go, align 8, !tbaa !78
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %indvars.iv
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !71 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !14
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 112
  %i.qu = load ptr, ptr %i.qt, align 8
  invoke void %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, i32 noundef 5)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.cb
  %i.qv = load ptr, ptr %i.go, align 8, !tbaa !78
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %indvars.iv
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !71 ; 2 uses
  %i.qy = load i32, ptr %i.gt, align 8, !tbaa !54
  %i.qz = load ptr, ptr %i.qx, align 8, !tbaa !14
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 96
  %i.rb = load ptr, ptr %i.ra, align 8
  invoke void %i.rb(ptr noundef nonnull align 8 dereferenceable(8) %i.qx, i32 noundef %i.qy)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  br i1 %4, label %bb.ce, label %bb.cn

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  store i32 0, ptr %i.gu, align 8, !tbaa !91
  store i32 0, ptr %i.gv, align 4, !tbaa !92
  store i32 16842752, ptr %31, align 8, !tbaa !94
  store ptr %16, ptr %i.gw, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  %i.rc = load ptr, ptr %i.gx, align 8, !tbaa !79
  %i.rd = getelementptr inbounds nuw [208 x i8], ptr %i.rc, i64 %indvars.iv
  store i64 0, ptr %i.gz, align 8
  store i32 -2113863675, ptr %32, align 8, !tbaa !94
  store ptr %i.rd, ptr %i.gy, align 8, !tbaa !95
  %.sroa.2295.0.insert.ext = zext i32 %i.oq to i64
  %.sroa.2295.0.insert.shift = shl nuw i64 %.sroa.2295.0.insert.ext, 32
  %.sroa.0294.0.insert.ext = zext i32 %i.os to i64
  %.sroa.0294.0.insert.insert = or disjoint i64 %.sroa.2295.0.insert.shift, %.sroa.0294.0.insert.ext ; 2 uses
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 %.sroa.0294.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.re = uitofp nneg i32 %.0126320 to double
  %i.rf = load ptr, ptr %i.gx, align 8, !tbaa !79
  %i.rg = getelementptr inbounds nuw [208 x i8], ptr %i.rf, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 0, ptr %i.hb, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !94
  store ptr %i.rg, ptr %i.ha, align 8, !tbaa !95
  %i.rh = fdiv double 1.000000e+00, %i.re         ; 2 uses
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.rg, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1, double noundef %i.rh, double noundef 0.000000e+00)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  store i32 0, ptr %i.hc, align 8, !tbaa !91
  store i32 0, ptr %i.hd, align 4, !tbaa !92
  store i32 16842752, ptr %33, align 8, !tbaa !94
  store ptr %.ptr.1, ptr %i.he, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.ri = load ptr, ptr %i.hf, align 8, !tbaa !79
  %i.rj = getelementptr inbounds nuw [208 x i8], ptr %i.ri, i64 %indvars.iv
  store i64 0, ptr %i.hh, align 8
  store i32 -2113863675, ptr %34, align 8, !tbaa !94
  store ptr %i.rj, ptr %i.hg, align 8, !tbaa !95
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, i64 %.sroa.0294.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.ch unwind label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.rk = load ptr, ptr %i.hf, align 8, !tbaa !79
  %i.rl = getelementptr inbounds nuw [208 x i8], ptr %i.rk, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 0, ptr %i.hj, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !94
  store ptr %i.rl, ptr %i.hi, align 8, !tbaa !95
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.rl, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1, double noundef %i.rh, double noundef 0.000000e+00)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bu
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %.loopexit.split-lp

bb.ck:                                            ; preds = %bb.bw
  %i.rn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ce
  %i.ro = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cg
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cf, %_ZN2cv4Mat_IfE6createEii.exit288, %bb.bx, %_ZN2cv4Mat_IsE6createEii.exit, %bb.bv, %bb.bt, %bb.bj, %bb.ba, %_ZN2cv4Mat_IfE6createEii.exit254, %_ZN2cv4Mat_IfE6createEii.exit252, %_ZN2cv4Mat_IfE6createEii.exit250, %_ZN2cv4Mat_IfE6createEii.exit248, %_ZN2cv4Mat_IfE6createEii.exit246, %_ZN2cv4Mat_IfE6createEii.exit244, %_ZN2cv4Mat_IfE6createEii.exit242, %_ZN2cv4Mat_IfE6createEii.exit240, %_ZN2cv4Mat_IfE6createEii.exit238, %_ZN2cv4Mat_IfE6createEii.exit236, %_ZN2cv4Mat_IfE6createEii.exit234, %_ZN2cv4Mat_IfE6createEii.exit, %bb.ay, %bb.ap, %bb.ag, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %_ZN2cv4Mat_IfE6createEii.exit290, %bb.ch, %bb.ab, %bb.y, %bb.w
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cd, %bb.ci, %_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit
  %i.rq = shl nsw i32 %.0126320, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.rr = load i32, ptr %i.b, align 4, !tbaa !88
  %i.rs = sext i32 %i.rr to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.rs
  br i1 %.not.not, label %bb.af, label %.preheader, !llvm.loop !153

bb.co:                                            ; preds = %.preheader
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %15)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.rt = landingpad { ptr, i32 }
          catch ptr null
  %i.ru = extractvalue { ptr, i32 } %i.rt, 0
  call void @__clang_call_terminate(ptr %i.ru) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.preheader, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %.body229, %.body266, %.body279, %bb.cj, %bb.ck, %bb.cl, %bb.cm
  %.pn160.pn = phi { ptr, i32 } [ %.pn, %.body266 ], [ %.pn143, %.body229 ], [ %i.rp, %bb.cm ], [ %.pn140, %.body ], [ %i.ro, %bb.cl ], [ %.pn137, %.body279 ], [ %i.rn, %bb.ck ], [ %i.rm, %bb.cj ], [ %lpad.loopexit.split-lp410, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.rv = getelementptr inbounds nuw i8, ptr %16, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.rv) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp, %bb.ae
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %.loopexit.split-lp ], [ %i.ep, %bb.ae ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  resume { ptr, i32 } %.pn160.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN2cv15spatialGradientERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18DISOpticalFlowImpl25precomputeStructureTensorERNS_3MatES2_S2_S2_S2_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3024) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"class.cv::AutoBuffer", align 8    ; 13 uses
  %10 = alloca %"class.cv::AutoBuffer", align 8   ; 17 uses
  %11 = alloca %"class.cv::AutoBuffer", align 8   ; 17 uses
  %12 = alloca %"class.cv::AutoBuffer", align 8   ; 17 uses
  %13 = alloca %"class.cv::AutoBuffer", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv18DISOpticalFlowImpl25precomputeStructureTensorERNS_3MatES2_S2_S2_S2_S2_S2_E25__cv_trace_location_fn341)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 6 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 6 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 6 uses
  %14 = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %15 = insertelement <4 x ptr> %14, ptr %i.b, i64 1
  %16 = insertelement <4 x ptr> %15, ptr %i.e, i64 2
  %17 = insertelement <4 x ptr> %16, ptr %i.h, i64 3
  %18 = ptrtoaddr <4 x ptr> %17 to <4 x i64>
  %19 = shufflevector <4 x i64> %18, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 0>
  %20 = ptrtoaddr ptr %i.k to i64                 ; 16 uses
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %22 = load ptr, ptr %21, align 8, !tbaa !105    ; 5 uses
  %i.l = ptrtoaddr ptr %22 to i64                 ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105  ; 22 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105  ; 22 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105  ; 22 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105  ; 22 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105  ; 22 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !106  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph327, label %.._crit_edge328_crit_edge

.._crit_edge328_crit_edge:                        ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !107 ; 2 uses
  %.pre406 = sext i32 %.pre to i64
  br label %._crit_edge328

.lr.ph327:                                        ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !109 ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !107 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = load i32, ptr %i.am, align 4, !tbaa !110 ; 2 uses
  %i.ao = icmp slt i32 %i.ai, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = sext i32 %i.ai to i64                   ; 2 uses
  %i.ar = sext i32 %i.al to i64                   ; 2 uses
  %wide.trip.count361 = zext nneg i32 %i.x to i64
  %wide.trip.count = zext nneg i32 %i.ai to i64
  %wide.trip.count356 = sext i32 %i.an to i64
  br label %bb.c

._crit_edge328:                                   ; preds = %._crit_edge324, %.._crit_edge328_crit_edge
  %.pre-phi = phi i64 [ %.pre406, %.._crit_edge328_crit_edge ], [ %i.ar, %._crit_edge324 ] ; 4 uses
  %i.as = phi i32 [ %.pre, %.._crit_edge328_crit_edge ], [ %i.al, %._crit_edge324 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.au, ptr %9, align 8, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i = icmp ugt i32 %i.as, 264
  store i64 %.pre-phi, ptr %i.av, align 8, !tbaa !197
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread:      ; preds = %._crit_edge328
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.aw, ptr %10, align 8, !tbaa !196
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.pre-phi, ptr %i.ax, align 8, !tbaa !197
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread

bb.b:                                             ; preds = %._crit_edge328
  %i.ay = icmp slt i32 %i.as, 0
  %i.az = shl nuw nsw i64 %.pre-phi, 2
  %i.ba = select i1 %i.ay, i64 -1, i64 %i.az
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #25
          to label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit unwind label %bb.k

bb.c:                                             ; preds = %.lr.ph327, %._crit_edge324
  %indvars.iv358 = phi i64 [ 0, %.lr.ph327 ], [ %indvars.iv.next359, %._crit_edge324 ] ; 4 uses
  %i.bc = mul i64 %i.ac, %indvars.iv358
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bc ; 3 uses
  %i.be = mul i64 %i.ag, %indvars.iv358
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.be ; 3 uses
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0234.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.cm, %.lr.ph ] ; 2 uses
  %i.bg = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.ck, %.lr.ph ] ; 5 uses
  %i.bh = mul nsw i64 %indvars.iv358, %i.ar       ; 6 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bh
  %i.bj = extractelement <4 x float> %i.bg, i64 3
  store float %i.bj, ptr %i.bi, align 4, !tbaa !55
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bh
  %i.bl = extractelement <4 x float> %i.bg, i64 2
  store float %i.bl, ptr %i.bk, align 4, !tbaa !55
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bh
  %i.bn = extractelement <4 x float> %i.bg, i64 1
  store float %i.bn, ptr %i.bm, align 4, !tbaa !55
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bh
  %i.bp = extractelement <4 x float> %i.bg, i64 0
  store float %i.bp, ptr %i.bo, align 4, !tbaa !55
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bh
  store float %.0234.lcssa, ptr %i.bq, align 4, !tbaa !55
  br i1 %i.ao, label %.lr.ph323, label %._crit_edge324

.lr.ph323:                                        ; preds = %._crit_edge
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !52
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %.0234308 = phi float [ %i.cm, %.lr.ph ], [ 0.000000e+00, %bb.c ]
  %i.bs = phi <4 x float> [ %i.ck, %.lr.ph ], [ zeroinitializer, %bb.c ]
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !112 ; 2 uses
  %i.bv = sext i16 %i.bu to i32                   ; 3 uses
  %i.bw = mul nsw i32 %i.bv, %i.bv
  %i.bx = uitofp nneg i32 %i.bw to float
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !112 ; 2 uses
  %i.ca = sext i16 %i.bz to i32                   ; 3 uses
  %i.cb = mul nsw i32 %i.ca, %i.ca
  %i.cc = uitofp nneg i32 %i.cb to float
  %i.cd = mul nsw i32 %i.ca, %i.bv
  %i.ce = sitofp i32 %i.cd to float
  %i.cf = sitofp i16 %i.bu to float
  %i.cg = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %i.ce, i64 1
  %i.ci = insertelement <4 x float> %i.ch, float %i.cc, i64 2
  %i.cj = insertelement <4 x float> %i.ci, float %i.bx, i64 3
  %i.ck = fadd <4 x float> %i.bs, %i.cj           ; 2 uses
  %i.cl = sitofp i16 %i.bz to float
  %i.cm = fadd float %.0234308, %i.cl             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !154

._crit_edge324:                                   ; preds = %bb.f, %._crit_edge
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count361
  br i1 %exitcond362.not, label %._crit_edge328, label %bb.c, !llvm.loop !155

bb.d:                                             ; preds = %.lr.ph323, %bb.f
  %indvars.iv353 = phi i64 [ %i.aq, %.lr.ph323 ], [ %indvars.iv.next354, %bb.f ] ; 4 uses
  %.0231320 = phi i32 [ 1, %.lr.ph323 ], [ %.1232, %bb.f ] ; 3 uses
  %.1235319 = phi float [ %.0234.lcssa, %.lr.ph323 ], [ %i.dn, %bb.f ]
  %i.cn = phi <4 x float> [ %i.bg, %.lr.ph323 ], [ %i.dl, %bb.f ]
  %i.co = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %indvars.iv353
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !112
  %i.cq = sext i16 %i.cp to i32                   ; 3 uses
  %i.cr = sub nsw i64 %indvars.iv353, %i.aq       ; 3 uses
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !112
  %i.cu = sext i16 %i.ct to i32                   ; 3 uses
  %add = add nsw i32 %i.cu, %i.cq
  %sub = sub nsw i32 %i.cq, %i.cu                 ; 2 uses
  %i.cv = mul nsw i32 %add, %sub
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %indvars.iv353
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !112
  %i.cy = sext i16 %i.cx to i32                   ; 3 uses
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.cr
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !112
  %i.db = sext i16 %i.da to i32                   ; 3 uses
  %add257 = add nsw i32 %i.db, %i.cy
  %sub258 = sub nsw i32 %i.cy, %i.db              ; 2 uses
  %i.dc = mul nsw i32 %add257, %sub258
  %i.dd = mul nsw i32 %i.cy, %i.cq
  %i.de = mul nsw i32 %i.db, %i.cu
  %i.df = sub nsw i32 %i.dd, %i.de
  %i.dg = insertelement <4 x i32> poison, i32 %sub, i64 0
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.df, i64 1
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.dc, i64 2
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.cv, i64 3
  %i.dk = sitofp <4 x i32> %i.dj to <4 x float>
  %i.dl = fadd <4 x float> %i.cn, %i.dk           ; 5 uses
  %i.dm = sitofp i32 %sub258 to float
  %i.dn = fadd float %.1235319, %i.dm             ; 2 uses
  %i.do = trunc i64 %i.cr to i32
  %i.dp = add i32 %i.do, 1
  %i.dq = srem i32 %i.dp, %i.br
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ds = sext i32 %.0231320 to i64
  %i.dt = add nsw i64 %i.bh, %i.ds                ; 5 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.dt
  %i.dv = extractelement <4 x float> %i.dl, i64 3
  store float %i.dv, ptr %i.du, align 4, !tbaa !55
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.dt
  %i.dx = extractelement <4 x float> %i.dl, i64 2
  store float %i.dx, ptr %i.dw, align 4, !tbaa !55
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.dt
  %i.dz = extractelement <4 x float> %i.dl, i64 1
  store float %i.dz, ptr %i.dy, align 4, !tbaa !55
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dt
  %i.eb = extractelement <4 x float> %i.dl, i64 0
  store float %i.eb, ptr %i.ea, align 4, !tbaa !55
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.dt
  store float %i.dn, ptr %i.ec, align 4, !tbaa !55
  %i.ed = add nsw i32 %.0231320, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_0
begin_hunk_1_@_ZN2cv18DISOpticalFlowImpl25precomputeStructureTensorERNS_3MatES2_S2_S2_S2_S2_S2_:bb.a
  %i.ht = shufflevector <8 x ptr> %i.gk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hu = insertelement <4 x ptr> poison, ptr %i.gc, i64 0
  %i.hv = shufflevector <4 x ptr> %i.hu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hw = insertelement <4 x ptr> poison, ptr %scevgep476, i64 0 ; 2 uses
  %i.hx = insertelement <4 x ptr> %i.hw, ptr %scevgep477, i64 1
  %i.hy = insertelement <4 x ptr> %i.hx, ptr %scevgep478, i64 2
  %i.hz = insertelement <4 x ptr> %i.hy, ptr %scevgep479, i64 3
  %i.ia = insertelement <4 x ptr> poison, ptr %i.gd, i64 0 ; 2 uses
  %i.ib = insertelement <4 x ptr> %i.ia, ptr %.pre402.pre.pre403.pre, i64 1
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %i.n, i64 2
  %i.id = insertelement <4 x ptr> %i.ic, ptr %i.p, i64 3
  %i.ie = insertelement <4 x ptr> poison, ptr %scevgep475, i64 0
  %i.if = shufflevector <4 x ptr> %i.ie, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ig = shufflevector <4 x ptr> %i.ia, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ih = insertelement <4 x ptr> poison, ptr %scevgep477, i64 0 ; 2 uses
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %scevgep478, i64 1
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep479, i64 2
  %i.ik = insertelement <4 x ptr> %i.ij, ptr %scevgep480, i64 3
  %i.il = insertelement <4 x ptr> poison, ptr %.pre402.pre.pre403.pre, i64 0 ; 2 uses
  %i.im = insertelement <4 x ptr> %i.il, ptr %i.n, i64 1
  %i.in = insertelement <4 x ptr> %i.im, ptr %i.p, i64 2
  %i.io = insertelement <4 x ptr> %i.in, ptr %i.r, i64 3
  %i.ip = shufflevector <4 x ptr> %i.hw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.iq = shufflevector <4 x ptr> %i.il, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ir = insertelement <4 x ptr> poison, ptr %scevgep478, i64 0
  %i.is = insertelement <4 x ptr> %i.ir, ptr %scevgep479, i64 1
  %i.it = insertelement <4 x ptr> %i.is, ptr %scevgep480, i64 2
  %i.iu = insertelement <4 x ptr> %i.it, ptr %scevgep481, i64 3
  %i.iv = insertelement <4 x ptr> poison, ptr %i.n, i64 0
  %i.iw = insertelement <4 x ptr> %i.iv, ptr %i.p, i64 1
  %i.ix = insertelement <4 x ptr> %i.iw, ptr %i.r, i64 2
  %i.iy = insertelement <4 x ptr> %i.ix, ptr %i.t, i64 3
  %i.iz = shufflevector <4 x ptr> %i.ih, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.fn, 28
  %i.ja = icmp ult <8 x ptr> %i.gj, %i.gr
  %i.jb = icmp ult <8 x ptr> %i.gz, %i.hb
  %i.jc = and <8 x i1> %i.ja, %i.jb
  %bound0510 = icmp ult ptr %i.ga, %scevgep482
  %bound1511 = icmp ult ptr %i.v, %scevgep
  %found.conflict512 = and i1 %bound0510, %bound1511
  %i.jd = icmp ult <8 x ptr> %i.hc, %i.hk
  %i.je = icmp ult <8 x ptr> %i.hs, %i.ht
  %i.jf = and <8 x i1> %i.jd, %i.je
  %i.jg = icmp ult <4 x ptr> %i.hv, %i.hz
  %i.jh = icmp ult <4 x ptr> %i.id, %i.if
  %i.ji = and <4 x i1> %i.jg, %i.jh
  %bound0562 = icmp ult ptr %i.gc, %scevgep480
  %bound1563 = icmp ult ptr %i.r, %scevgep475
  %found.conflict564 = and i1 %bound0562, %bound1563
  %bound0566 = icmp ult ptr %i.gc, %scevgep481
  %bound1567 = icmp ult ptr %i.t, %scevgep475
  %found.conflict568 = and i1 %bound0566, %bound1567
  %bound0570 = icmp ult ptr %i.gc, %scevgep482
  %bound1571 = icmp ult ptr %i.v, %scevgep475
  %found.conflict572 = and i1 %bound0570, %bound1571
  %i.jj = icmp ult <4 x ptr> %i.ig, %i.ik
  %i.jk = icmp ult <4 x ptr> %i.io, %i.ip
  %i.jl = and <4 x i1> %i.jj, %i.jk
  %bound0590 = icmp ult ptr %i.gd, %scevgep481
  %bound1591 = icmp ult ptr %i.t, %scevgep476
  %found.conflict592 = and i1 %bound0590, %bound1591
  %bound0594 = icmp ult ptr %i.gd, %scevgep482
  %bound1595 = icmp ult ptr %i.v, %scevgep476
  %found.conflict596 = and i1 %bound0594, %bound1595
  %i.jm = icmp ult <4 x ptr> %i.iq, %i.iu
  %i.jn = icmp ult <4 x ptr> %i.iy, %i.iz
  %i.jo = and <4 x i1> %i.jm, %i.jn
  %bound0614 = icmp ult ptr %.pre402.pre.pre403.pre, %scevgep482
  %bound1615 = icmp ult ptr %i.v, %scevgep477
  %found.conflict616 = and i1 %bound0614, %bound1615
  %rdx.op1216 = or <8 x i1> %i.jc, %i.jf          ; 2 uses
  %i.jp = shufflevector <4 x i1> %i.ji, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <4 x i1> %i.jl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jr = or <8 x i1> %i.jp, %i.jq
  %i.js = shufflevector <4 x i1> %i.jo, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jt = or <8 x i1> %i.jr, %i.js
  %i.ju = or <8 x i1> %i.jt, %rdx.op1216
  %i.jv = shufflevector <8 x i1> %i.ju, <8 x i1> %rdx.op1216, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.jw = bitcast <8 x i1> %i.jv to i8
  %i.jx = icmp ne i8 %i.jw, 0
  %op.rdx = or i1 %i.jx, %found.conflict512
  %op.rdx1220.a = or i1 %found.conflict564, %found.conflict568
  %op.rdx1221.a = or i1 %found.conflict572, %found.conflict592
  %op.rdx1222.a = or i1 %found.conflict596, %found.conflict616
  %op.rdx1223.a = or i1 %op.rdx, %op.rdx1220.a
  %op.rdx1224 = or i1 %op.rdx1221.a, %op.rdx1222.a
  %op.rdx1225 = or i1 %op.rdx1223.a, %op.rdx1224
  %n.vec = and i64 %i.ge, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ge
  br label %.preheader299

bb.k:                                             ; preds = %bb.b
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295

bb.l:                                             ; preds = %bb.g
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292

bb.m:                                             ; preds = %bb.h
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289

bb.n:                                             ; preds = %bb.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

bb.o:                                             ; preds = %bb.j
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.kd = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %.not.i.i271 = icmp eq ptr %i.kd, %i.eu
  %i.ke = icmp eq ptr %i.kd, null
  %or.cond.i = or i1 %.not.i.i271, %i.ke
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.kd) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

.preheader299:                                    ; preds = %.preheader299.preheader, %._crit_edge334
  %indvars.iv371 = phi i64 [ 0, %.preheader299.preheader ], [ %indvars.iv.next372, %._crit_edge334 ] ; 2 uses
  %i.kf = mul nuw nsw i64 %indvars.iv371, %i.ge   ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx1225
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader299, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader299 ] ; 7 uses
  %i.kg = add nuw nsw i64 %index, %i.kf           ; 5 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.kg
  %wide.load = load <4 x float>, ptr %i.kh, align 4, !tbaa !55, !alias.scope !198
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index ; 2 uses
  %wide.load618 = load <4 x float>, ptr %i.ki, align 4, !tbaa !55, !alias.scope !199, !noalias !200
  %i.kj = fadd <4 x float> %wide.load, %wide.load618
  store <4 x float> %i.kj, ptr %i.ki, align 4, !tbaa !55, !alias.scope !199, !noalias !200
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.kg
  %wide.load619 = load <4 x float>, ptr %i.kk, align 4, !tbaa !55, !alias.scope !201
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %index ; 2 uses
  %wide.load620 = load <4 x float>, ptr %i.kl, align 4, !tbaa !55, !alias.scope !202, !noalias !203
  %i.km = fadd <4 x float> %wide.load619, %wide.load620
  store <4 x float> %i.km, ptr %i.kl, align 4, !tbaa !55, !alias.scope !202, !noalias !203
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.kg
  %wide.load621 = load <4 x float>, ptr %i.kn, align 4, !tbaa !55, !alias.scope !204
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %index ; 2 uses
  %wide.load622 = load <4 x float>, ptr %i.ko, align 4, !tbaa !55, !alias.scope !205, !noalias !206
  %i.kp = fadd <4 x float> %wide.load621, %wide.load622
  store <4 x float> %i.kp, ptr %i.ko, align 4, !tbaa !55, !alias.scope !205, !noalias !206
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kg
  %wide.load623 = load <4 x float>, ptr %i.kq, align 4, !tbaa !55, !alias.scope !207
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index ; 2 uses
  %wide.load624 = load <4 x float>, ptr %i.kr, align 4, !tbaa !55, !alias.scope !208, !noalias !209
  %i.ks = fadd <4 x float> %wide.load623, %wide.load624
  store <4 x float> %i.ks, ptr %i.kr, align 4, !tbaa !55, !alias.scope !208, !noalias !209
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.kg
  %wide.load625 = load <4 x float>, ptr %i.kt, align 4, !tbaa !55, !alias.scope !210
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre.pre403.pre, i64 %index ; 2 uses
  %wide.load626 = load <4 x float>, ptr %i.ku, align 4, !tbaa !55, !alias.scope !211, !noalias !212
  %i.kv = fadd <4 x float> %wide.load625, %wide.load626
  store <4 x float> %i.kv, ptr %i.ku, align 4, !tbaa !55, !alias.scope !211, !noalias !212
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge334, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader299, %middle.block
  %indvars.iv366.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader299 ]
  br label %scalar.ph

.preheader298.loopexit:                           ; preds = %._crit_edge334
  %.pre402.pre.pre = load ptr, ptr %13, align 8
  br label %.preheader298

.preheader298:                                    ; preds = %.preheader298.loopexit, %.preheader300
  %.pre402.pre = phi ptr [ %.pre402.pre.pre, %.preheader298.loopexit ], [ %.pre402.pre.pre403.pre, %.preheader300 ] ; 5 uses
  %i.kx = load ptr, ptr %9, align 8, !tbaa !196   ; 3 uses
  %i.ky = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %i.kz = load ptr, ptr %11, align 8, !tbaa !196  ; 3 uses
  %i.la = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %wide.trip.count379 = zext nneg i32 %i.fn to i64 ; 3 uses
  %min.iters.check699 = icmp ult i32 %i.fn, 116
  br i1 %min.iters.check699, label %scalar.ph698.preheader, label %vector.memcheck700

vector.memcheck700:                               ; preds = %.preheader298
  %.pre402.pre697 = ptrtoaddr ptr %.pre402.pre to i64 ; 5 uses
  %i.lb = ptrtoaddr ptr %i.la to i64              ; 5 uses
  %i.lc = ptrtoaddr ptr %i.kz to i64              ; 5 uses
  %i.ld = ptrtoaddr ptr %i.ky to i64              ; 5 uses
  %i.le = ptrtoaddr ptr %i.kx to i64              ; 5 uses
  %i.lf = sub i64 %i.c, %i.f
  %diff.check = icmp ugt i64 %i.lf, -16
  %i.lg = sub i64 %i.c, %i.i
  %diff.check701 = icmp ugt i64 %i.lg, -16
  %conflict.rdx702 = or i1 %diff.check, %diff.check701
  %i.lh = sub i64 %i.c, %20
  %diff.check703 = icmp ugt i64 %i.lh, -16
  %conflict.rdx704 = or i1 %conflict.rdx702, %diff.check703
  %i.li = sub i64 %i.c, %i.l
  %diff.check705 = icmp ugt i64 %i.li, -16
  %conflict.rdx706 = or i1 %conflict.rdx704, %diff.check705
  %i.lj = sub i64 %i.le, %i.c
  %diff.check707 = icmp ugt i64 %i.lj, -16
  %conflict.rdx708 = or i1 %conflict.rdx706, %diff.check707
  %i.lk = sub i64 %i.c, %i.ld
  %diff.check709 = icmp ugt i64 %i.lk, -16
  %conflict.rdx710 = or i1 %conflict.rdx708, %diff.check709
  %i.ll = sub i64 %i.c, %i.lc
  %diff.check711 = icmp ugt i64 %i.ll, -16
  %conflict.rdx712 = or i1 %conflict.rdx710, %diff.check711
  %i.lm = sub i64 %i.c, %i.lb
  %diff.check713 = icmp ugt i64 %i.lm, -16
  %conflict.rdx714 = or i1 %conflict.rdx712, %diff.check713
  %i.ln = sub i64 %i.c, %.pre402.pre697
  %diff.check715 = icmp ugt i64 %i.ln, -16
  %conflict.rdx716 = or i1 %conflict.rdx714, %diff.check715
  %i.lo = sub i64 %i.f, %i.i
  %diff.check717 = icmp ugt i64 %i.lo, -16
  %conflict.rdx718 = or i1 %conflict.rdx716, %diff.check717
  %i.lp = sub i64 %i.f, %20
  %diff.check719 = icmp ugt i64 %i.lp, -16
  %conflict.rdx720 = or i1 %conflict.rdx718, %diff.check719
  %i.lq = sub i64 %i.f, %i.l
  %diff.check721 = icmp ugt i64 %i.lq, -16
  %conflict.rdx722 = or i1 %conflict.rdx720, %diff.check721
  %i.lr = sub i64 %i.le, %i.f
  %diff.check723 = icmp ugt i64 %i.lr, -16
  %conflict.rdx724 = or i1 %conflict.rdx722, %diff.check723
  %i.ls = sub i64 %i.ld, %i.f
  %diff.check725 = icmp ugt i64 %i.ls, -16
  %conflict.rdx726 = or i1 %conflict.rdx724, %diff.check725
  %i.lt = sub i64 %i.f, %i.lc
  %diff.check727 = icmp ugt i64 %i.lt, -16
  %conflict.rdx728 = or i1 %conflict.rdx726, %diff.check727
  %i.lu = sub i64 %i.f, %i.lb
  %diff.check729 = icmp ugt i64 %i.lu, -16
  %conflict.rdx730 = or i1 %conflict.rdx728, %diff.check729
  %i.lv = sub i64 %i.f, %.pre402.pre697
  %diff.check731 = icmp ugt i64 %i.lv, -16
  %conflict.rdx732 = or i1 %conflict.rdx730, %diff.check731
  %i.lw = sub i64 %i.i, %20
  %diff.check733 = icmp ugt i64 %i.lw, -16
  %conflict.rdx734 = or i1 %conflict.rdx732, %diff.check733
  %i.lx = sub i64 %i.i, %i.l
  %diff.check735 = icmp ugt i64 %i.lx, -16
  %conflict.rdx736 = or i1 %conflict.rdx734, %diff.check735
  %i.ly = sub i64 %i.le, %i.i
  %diff.check737 = icmp ugt i64 %i.ly, -16
  %conflict.rdx738 = or i1 %conflict.rdx736, %diff.check737
  %i.lz = sub i64 %i.ld, %i.i
  %diff.check739 = icmp ugt i64 %i.lz, -16
  %conflict.rdx740 = or i1 %conflict.rdx738, %diff.check739
  %i.ma = sub i64 %i.lc, %i.i
  %diff.check741 = icmp ugt i64 %i.ma, -16
  %conflict.rdx742 = or i1 %conflict.rdx740, %diff.check741
  %i.mb = sub i64 %i.i, %i.lb
  %diff.check743 = icmp ugt i64 %i.mb, -16
  %conflict.rdx744 = or i1 %conflict.rdx742, %diff.check743
  %i.mc = sub i64 %i.i, %.pre402.pre697
  %diff.check745 = icmp ugt i64 %i.mc, -16
  %conflict.rdx746 = or i1 %conflict.rdx744, %diff.check745
  %i.md = sub i64 %20, %i.l
  %diff.check747 = icmp ugt i64 %i.md, -16
  %conflict.rdx748 = or i1 %conflict.rdx746, %diff.check747
  %i.me = sub i64 %i.le, %20
  %diff.check749 = icmp ugt i64 %i.me, -16
  %conflict.rdx750 = or i1 %conflict.rdx748, %diff.check749
  %i.mf = sub i64 %i.ld, %20
  %diff.check751 = icmp ugt i64 %i.mf, -16
  %conflict.rdx752 = or i1 %conflict.rdx750, %diff.check751
  %i.mg = sub i64 %i.lc, %20
  %diff.check753 = icmp ugt i64 %i.mg, -16
  %conflict.rdx754 = or i1 %conflict.rdx752, %diff.check753
  %i.mh = sub i64 %i.lb, %20
  %diff.check755 = icmp ugt i64 %i.mh, -16
  %conflict.rdx756 = or i1 %conflict.rdx754, %diff.check755
  %i.mi = sub i64 %20, %.pre402.pre697
  %diff.check757 = icmp ugt i64 %i.mi, -16
  %conflict.rdx758 = or i1 %conflict.rdx756, %diff.check757
  %i.mj = sub i64 %i.le, %i.l
  %diff.check759 = icmp ugt i64 %i.mj, -16
  %conflict.rdx760 = or i1 %conflict.rdx758, %diff.check759
  %i.mk = sub i64 %i.ld, %i.l
  %diff.check761 = icmp ugt i64 %i.mk, -16
  %conflict.rdx762 = or i1 %conflict.rdx760, %diff.check761
  %i.ml = sub i64 %i.lc, %i.l
  %diff.check763 = icmp ugt i64 %i.ml, -16
  %conflict.rdx764 = or i1 %conflict.rdx762, %diff.check763
  %i.mm = sub i64 %i.lb, %i.l
  %diff.check765 = icmp ugt i64 %i.mm, -16
  %conflict.rdx766 = or i1 %conflict.rdx764, %diff.check765
  %i.mn = sub i64 %.pre402.pre697, %i.l
  %diff.check767 = icmp ugt i64 %i.mn, -16
  %conflict.rdx768 = or i1 %conflict.rdx766, %diff.check767
  br i1 %conflict.rdx768, label %scalar.ph698.preheader, label %vector.ph769

vector.ph769:                                     ; preds = %vector.memcheck700
  %n.vec770 = and i64 %wide.trip.count379, 2147483644 ; 3 uses
  br label %vector.body771

vector.body771:                                   ; preds = %vector.body771, %vector.ph769
  %index772 = phi i64 [ 0, %vector.ph769 ], [ %index.next778, %vector.body771 ] ; 11 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %index772
  %wide.load773 = load <4 x float>, ptr %i.mo, align 4, !tbaa !55
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index772
  store <4 x float> %wide.load773, ptr %i.mp, align 4, !tbaa !55
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index772
  %wide.load774 = load <4 x float>, ptr %i.mq, align 4, !tbaa !55
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index772
  store <4 x float> %wide.load774, ptr %i.mr, align 4, !tbaa !55
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index772
  %wide.load775 = load <4 x float>, ptr %i.ms, align 4, !tbaa !55
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index772
  store <4 x float> %wide.load775, ptr %i.mt, align 4, !tbaa !55
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %index772
  %wide.load776 = load <4 x float>, ptr %i.mu, align 4, !tbaa !55
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index772
  store <4 x float> %wide.load776, ptr %i.mv, align 4, !tbaa !55
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre, i64 %index772
  %wide.load777 = load <4 x float>, ptr %i.mw, align 4, !tbaa !55
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %index772
  store <4 x float> %wide.load777, ptr %i.mx, align 4, !tbaa !55
  %index.next778 = add nuw i64 %index772, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next778, %n.vec770
  br i1 %i.my, label %middle.block779, label %vector.body771, !llvm.loop !169

middle.block779:                                  ; preds = %vector.body771
  %cmp.n780 = icmp eq i64 %n.vec770, %wide.trip.count379
  br i1 %cmp.n780, label %.preheader297, label %scalar.ph698.preheader

scalar.ph698.preheader:                           ; preds = %vector.memcheck700, %.preheader298, %middle.block779
  %indvars.iv376.ph = phi i64 [ 0, %vector.memcheck700 ], [ 0, %.preheader298 ], [ %n.vec770, %middle.block779 ]
  br label %scalar.ph698

._crit_edge334:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %.preheader298.loopexit, label %.preheader299, !llvm.loop !170

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %scalar.ph ], [ %indvars.iv366.ph, %scalar.ph.preheader ] ; 7 uses
  %i.mz = add nuw nsw i64 %indvars.iv366, %i.kf   ; 5 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.mz
  %i.nb = load float, ptr %i.na, align 4, !tbaa !55
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv366 ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !55
  %i.ne = fadd float %i.nb, %i.nd
  store float %i.ne, ptr %i.nc, align 4, !tbaa !55
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mz
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !55
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv366 ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !55
  %i.nj = fadd float %i.ng, %i.ni
  store float %i.nj, ptr %i.nh, align 4, !tbaa !55
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.mz
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !55
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv366 ; 2 uses
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !55
  %i.no = fadd float %i.nl, %i.nn
  store float %i.no, ptr %i.nm, align 4, !tbaa !55
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mz
  %i.nq = load float, ptr %i.np, align 4, !tbaa !55
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv366 ; 2 uses
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !55
  %i.nt = fadd float %i.nq, %i.ns
  store float %i.nt, ptr %i.nr, align 4, !tbaa !55
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.mz
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !55
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre.pre403.pre, i64 %indvars.iv366 ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !55
  %i.ny = fadd float %i.nv, %i.nx
  store float %i.ny, ptr %i.nw, align 4, !tbaa !55
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %i.ge
  br i1 %exitcond370.not, label %._crit_edge334, label %scalar.ph, !llvm.loop !171

.preheader297:                                    ; preds = %scalar.ph698, %middle.block779, %.preheader300.thread
  %.pre402.pre461 = phi ptr [ %i.fm, %.preheader300.thread ], [ %.pre402.pre, %middle.block779 ], [ %.pre402.pre, %scalar.ph698 ] ; 15 uses
  %i.nz = phi i32 [ %i.fz, %.preheader300.thread ], [ %i.fw, %middle.block779 ], [ %i.fw, %scalar.ph698 ] ; 4 uses
  %i.oa = load i32, ptr %i.w, align 8, !tbaa !106 ; 2 uses
  %i.ob = icmp slt i32 %i.nz, %i.oa
  br i1 %i.ob, label %.preheader296.lr.ph, label %._crit_edge347

.preheader296.lr.ph:                              ; preds = %.preheader297
  %.pre402.pre461798 = ptrtoaddr ptr %.pre402.pre461 to i64 ; 5 uses
  %i.oc = load ptr, ptr %9, align 8               ; 10 uses
  %23 = ptrtoaddr ptr %i.oc to i64                ; 2 uses
  %i.od = load ptr, ptr %10, align 8              ; 9 uses
  %24 = ptrtoaddr ptr %i.od to i64                ; 4 uses
  %i.oe = load ptr, ptr %11, align 8              ; 9 uses
  %i.of = ptrtoaddr ptr %i.oe to i64              ; 5 uses
  %i.og = load ptr, ptr %12, align 8              ; 12 uses
  %25 = ptrtoaddr ptr %i.og to i64                ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !52 ; 2 uses
  %i.oj = sext i32 %i.nz to i64                   ; 4 uses
  %i.ok = sext i32 %i.fn to i64                   ; 5 uses
  %wide.trip.count394 = sext i32 %i.oa to i64     ; 3 uses
  %wide.trip.count384 = zext i32 %i.fn to i64     ; 7 uses
  %wide.trip.count389 = zext nneg i32 %i.fn to i64
  %26 = insertelement <8 x i64> <i64 0, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison>, i64 %23, i64 1
  %27 = insertelement <8 x i64> %26, i64 %24, i64 2
  %28 = insertelement <8 x i64> %27, i64 %i.of, i64 3
  %29 = shufflevector <8 x i64> %28, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 3, i32 1>
  %i.ol = sub i64 %20, %24
  %i.om = sub i64 %20, %i.of
  %i.on = sub i64 %20, %25
  %i.oo = sub i64 %i.l, %23
  %30 = sub i64 %i.l, %24
  %31 = sub i64 %i.l, %i.of
  %32 = sub i64 %i.l, %25
  %33 = sub i64 %i.l, %.pre402.pre461798
  %i.op = shl nuw nsw i64 %wide.trip.count384, 2  ; 6 uses
  %scevgep869 = getelementptr i8, ptr %i.oc, i64 %i.op ; 4 uses
  %scevgep870 = getelementptr i8, ptr %i.od, i64 %i.op ; 3 uses
  %scevgep871 = getelementptr i8, ptr %i.oe, i64 %i.op ; 3 uses
  %scevgep872 = getelementptr i8, ptr %i.og, i64 %i.op ; 6 uses
  %scevgep873 = getelementptr i8, ptr %.pre402.pre461, i64 %i.op ; 6 uses
  %i.oq = xor i64 %i.oj, -1
  %i.or = add nsw i64 %i.oq, %wide.trip.count394
  %i.os = mul i64 %i.or, %i.ok
  %i.ot = add i64 %i.os, %wide.trip.count384
  %i.ou = shl i64 %i.ot, 2                        ; 5 uses
  %scevgep874 = getelementptr i8, ptr %i.n, i64 %i.ou ; 5 uses
  %i.ov = mul nsw i64 %i.ok, %i.oj
  %i.ow = shl i64 %i.ov, 2                        ; 5 uses
  %scevgep875 = getelementptr i8, ptr %i.n, i64 %i.ow ; 5 uses
  %i.ox = shl nsw i64 %wide.trip.count394, 2
  %i.oy = add nsw i64 %i.ox, -4
  %i.oz = mul i64 %i.oy, %i.ok
  %i.pa = add i64 %i.oz, %i.op                    ; 5 uses
  %scevgep876 = getelementptr i8, ptr %i.n, i64 %i.pa ; 5 uses
  %scevgep877 = getelementptr i8, ptr %i.p, i64 %i.ou ; 5 uses
  %scevgep878 = getelementptr i8, ptr %i.p, i64 %i.ow ; 5 uses
  %scevgep879 = getelementptr i8, ptr %i.p, i64 %i.pa ; 5 uses
  %scevgep880 = getelementptr i8, ptr %i.r, i64 %i.ou ; 5 uses
  %scevgep881 = getelementptr i8, ptr %i.r, i64 %i.ow ; 5 uses
  %scevgep882 = getelementptr i8, ptr %i.r, i64 %i.pa ; 5 uses
  %scevgep883 = getelementptr i8, ptr %i.t, i64 %i.ou ; 5 uses
  %scevgep884 = getelementptr i8, ptr %i.t, i64 %i.ow ; 5 uses
  %i.pb = insertelement <4 x ptr> poison, ptr %i.n, i64 0
  %i.pc = insertelement <4 x ptr> %i.pb, ptr %i.p, i64 1
  %i.pd = insertelement <4 x ptr> %i.pc, ptr %i.r, i64 2
  %i.pe = insertelement <4 x ptr> %i.pd, ptr %i.t, i64 3
  %i.pf = insertelement <4 x ptr> poison, ptr %scevgep875, i64 0
  %i.pg = insertelement <4 x ptr> %i.pf, ptr %scevgep878, i64 1
  %i.ph = insertelement <4 x ptr> %i.pg, ptr %scevgep881, i64 2
  %i.pi = insertelement <4 x ptr> %i.ph, ptr %scevgep884, i64 3
  %i.pj = shufflevector <4 x ptr> %i.pe, <4 x ptr> %i.pi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %scevgep885 = getelementptr i8, ptr %i.t, i64 %i.pa ; 5 uses
  %scevgep886 = getelementptr i8, ptr %i.v, i64 %i.ou ; 5 uses
  %scevgep887 = getelementptr i8, ptr %i.v, i64 %i.ow ; 5 uses
  %scevgep888 = getelementptr i8, ptr %i.v, i64 %i.pa ; 5 uses
  %34 = insertelement <8 x i64> <i64 poison, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, i64 %.pre402.pre461798, i64 0
  %i.pk = insertelement <8 x ptr> poison, ptr %i.oc, i64 0
  %i.pl = shufflevector <8 x ptr> %i.pk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.pm = insertelement <8 x ptr> poison, ptr %scevgep870, i64 0 ; 2 uses
  %i.pn = insertelement <8 x ptr> %i.pm, ptr %scevgep871, i64 1
  %i.po = insertelement <8 x ptr> %i.pn, ptr %scevgep872, i64 2
  %i.pp = insertelement <8 x ptr> %i.po, ptr %scevgep873, i64 3
  %i.pq = insertelement <8 x ptr> %i.pp, ptr %scevgep874, i64 4
  %i.pr = insertelement <8 x ptr> %i.pq, ptr %scevgep876, i64 5
  %i.ps = insertelement <8 x ptr> %i.pr, ptr %scevgep877, i64 6
  %i.pt = insertelement <8 x ptr> %i.ps, ptr %scevgep879, i64 7
  %i.pu = insertelement <8 x ptr> poison, ptr %i.od, i64 0 ; 2 uses
  %i.pv = insertelement <8 x ptr> %i.pu, ptr %i.oe, i64 1
  %i.pw = insertelement <8 x ptr> %i.pv, ptr %i.og, i64 2
  %i.px = insertelement <8 x ptr> %i.pw, ptr %.pre402.pre461, i64 3
  %i.py = insertelement <8 x ptr> %i.px, ptr %i.n, i64 4
  %i.pz = insertelement <8 x ptr> %i.py, ptr %scevgep875, i64 5
  %i.qa = insertelement <8 x ptr> %i.pz, ptr %i.p, i64 6
  %i.qb = insertelement <8 x ptr> %i.qa, ptr %scevgep878, i64 7
  %i.qc = insertelement <8 x ptr> poison, ptr %scevgep869, i64 0
  %i.qd = shufflevector <8 x ptr> %i.qc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qe = shufflevector <8 x ptr> %i.pu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qf = insertelement <8 x ptr> poison, ptr %scevgep871, i64 0 ; 2 uses
  %i.qg = insertelement <8 x ptr> %i.qf, ptr %scevgep872, i64 1
  %i.qh = insertelement <8 x ptr> %i.qg, ptr %scevgep873, i64 2
  %i.qi = insertelement <8 x ptr> %i.qh, ptr %scevgep874, i64 3
  %i.qj = insertelement <8 x ptr> %i.qi, ptr %scevgep876, i64 4
  %i.qk = insertelement <8 x ptr> %i.qj, ptr %scevgep877, i64 5
  %i.ql = insertelement <8 x ptr> %i.qk, ptr %scevgep879, i64 6
  %i.qm = insertelement <8 x ptr> %i.ql, ptr %scevgep880, i64 7
  %i.qn = insertelement <8 x ptr> poison, ptr %i.oe, i64 0 ; 2 uses
  %i.qo = insertelement <8 x ptr> %i.qn, ptr %i.og, i64 1
  %i.qp = insertelement <8 x ptr> %i.qo, ptr %.pre402.pre461, i64 2
  %i.qq = insertelement <8 x ptr> %i.qp, ptr %i.n, i64 3
  %i.qr = insertelement <8 x ptr> %i.qq, ptr %scevgep875, i64 4
  %i.qs = insertelement <8 x ptr> %i.qr, ptr %i.p, i64 5
  %i.qt = insertelement <8 x ptr> %i.qs, ptr %scevgep878, i64 6
  %i.qu = insertelement <8 x ptr> %i.qt, ptr %i.r, i64 7
  %i.qv = shufflevector <8 x ptr> %i.pm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qw = shufflevector <8 x ptr> %i.qn, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qx = insertelement <8 x ptr> poison, ptr %scevgep872, i64 0 ; 2 uses
  %i.qy = insertelement <8 x ptr> %i.qx, ptr %scevgep873, i64 1
  %i.qz = insertelement <8 x ptr> %i.qy, ptr %scevgep874, i64 2
  %i.ra = insertelement <8 x ptr> %i.qz, ptr %scevgep876, i64 3
  %i.rb = insertelement <8 x ptr> %i.ra, ptr %scevgep877, i64 4
  %i.rc = insertelement <8 x ptr> %i.rb, ptr %scevgep879, i64 5
  %i.rd = insertelement <8 x ptr> %i.rc, ptr %scevgep880, i64 6
  %i.re = insertelement <8 x ptr> %i.rd, ptr %scevgep882, i64 7
  %i.rf = insertelement <8 x ptr> poison, ptr %i.og, i64 0 ; 2 uses
  %i.rg = insertelement <8 x ptr> %i.rf, ptr %.pre402.pre461, i64 1
  %i.rh = insertelement <8 x ptr> %i.rg, ptr %i.n, i64 2
  %i.ri = insertelement <8 x ptr> %i.rh, ptr %scevgep875, i64 3
  %i.rj = insertelement <8 x ptr> %i.ri, ptr %i.p, i64 4
  %i.rk = insertelement <8 x ptr> %i.rj, ptr %scevgep878, i64 5
  %i.rl = insertelement <8 x ptr> %i.rk, ptr %i.r, i64 6
  %i.rm = insertelement <8 x ptr> %i.rl, ptr %scevgep881, i64 7
  %i.rn = shufflevector <8 x ptr> %i.qf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ro = shufflevector <8 x ptr> %i.rf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.rp = insertelement <8 x ptr> poison, ptr %scevgep873, i64 0 ; 2 uses
  %i.rq = insertelement <8 x ptr> %i.rp, ptr %scevgep874, i64 1
  %i.rr = insertelement <8 x ptr> %i.rq, ptr %scevgep876, i64 2
  %i.rs = insertelement <8 x ptr> %i.rr, ptr %scevgep877, i64 3
  %i.rt = insertelement <8 x ptr> %i.rs, ptr %scevgep879, i64 4
  %i.ru = insertelement <8 x ptr> %i.rt, ptr %scevgep880, i64 5
  %i.rv = insertelement <8 x ptr> %i.ru, ptr %scevgep882, i64 6
  %i.rw = insertelement <8 x ptr> %i.rv, ptr %scevgep883, i64 7
  %i.rx = insertelement <8 x ptr> poison, ptr %.pre402.pre461, i64 0 ; 2 uses
  %i.ry = insertelement <8 x ptr> %i.rx, ptr %i.n, i64 1
  %i.rz = insertelement <8 x ptr> %i.ry, ptr %scevgep875, i64 2
  %i.sa = insertelement <8 x ptr> %i.rz, ptr %i.p, i64 3
  %i.sb = insertelement <8 x ptr> %i.sa, ptr %scevgep878, i64 4
  %i.sc = insertelement <8 x ptr> %i.sb, ptr %i.r, i64 5
  %i.sd = insertelement <8 x ptr> %i.sc, ptr %scevgep881, i64 6
  %i.se = insertelement <8 x ptr> %i.sd, ptr %i.t, i64 7
  %i.sf = shufflevector <8 x ptr> %i.qx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.sg = shufflevector <8 x ptr> %i.rx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.sh = insertelement <8 x ptr> poison, ptr %scevgep874, i64 0
  %i.si = insertelement <8 x ptr> %i.sh, ptr %scevgep877, i64 1
  %i.sj = insertelement <8 x ptr> %i.si, ptr %scevgep880, i64 2
  %i.sk = insertelement <8 x ptr> %i.sj, ptr %scevgep883, i64 3
  %i.sl = insertelement <8 x ptr> %i.sk, ptr %scevgep876, i64 4
  %i.sm = insertelement <8 x ptr> %i.sl, ptr %scevgep879, i64 5
  %i.sn = insertelement <8 x ptr> %i.sm, ptr %scevgep882, i64 6
  %i.so = insertelement <8 x ptr> %i.sn, ptr %scevgep885, i64 7
  %i.sp = shufflevector <8 x ptr> %i.rp, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.sq = insertelement <4 x ptr> poison, ptr %i.oc, i64 0
  %i.sr = shufflevector <4 x ptr> %i.sq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ss = insertelement <4 x ptr> poison, ptr %scevgep880, i64 0
  %i.st = insertelement <4 x ptr> %i.ss, ptr %scevgep882, i64 1
  %i.su = insertelement <4 x ptr> %i.st, ptr %scevgep883, i64 2
  %i.sv = insertelement <4 x ptr> %i.su, ptr %scevgep885, i64 3
  %i.sw = insertelement <4 x ptr> poison, ptr %i.r, i64 0
  %i.sx = insertelement <4 x ptr> %i.sw, ptr %scevgep881, i64 1
  %i.sy = insertelement <4 x ptr> %i.sx, ptr %i.t, i64 2
  %i.sz = insertelement <4 x ptr> %i.sy, ptr %scevgep884, i64 3
  %i.ta = insertelement <4 x ptr> poison, ptr %scevgep869, i64 0
  %i.tb = shufflevector <4 x ptr> %i.ta, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tc = insertelement <4 x ptr> poison, ptr %i.od, i64 0
  %i.td = shufflevector <4 x ptr> %i.tc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.te = insertelement <4 x ptr> poison, ptr %scevgep882, i64 0
  %i.tf = insertelement <4 x ptr> %i.te, ptr %scevgep883, i64 1
  %i.tg = insertelement <4 x ptr> %i.tf, ptr %scevgep885, i64 2
  %i.th = insertelement <4 x ptr> %i.tg, ptr %scevgep886, i64 3
  %i.ti = insertelement <4 x ptr> poison, ptr %scevgep881, i64 0
  %i.tj = insertelement <4 x ptr> %i.ti, ptr %i.t, i64 1
  %i.tk = insertelement <4 x ptr> %i.tj, ptr %scevgep884, i64 2
  %i.tl = insertelement <4 x ptr> %i.tk, ptr %i.v, i64 3
  %i.tm = insertelement <4 x ptr> poison, ptr %scevgep870, i64 0
  %i.tn = shufflevector <4 x ptr> %i.tm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.to = insertelement <4 x ptr> poison, ptr %i.oe, i64 0
  %i.tp = shufflevector <4 x ptr> %i.to, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tq = insertelement <4 x ptr> poison, ptr %scevgep883, i64 0
  %i.tr = insertelement <4 x ptr> %i.tq, ptr %scevgep885, i64 1
  %i.ts = insertelement <4 x ptr> %i.tr, ptr %scevgep886, i64 2
  %i.tt = insertelement <4 x ptr> %i.ts, ptr %scevgep888, i64 3
  %i.tu = insertelement <4 x ptr> poison, ptr %i.t, i64 0
  %i.tv = insertelement <4 x ptr> %i.tu, ptr %scevgep884, i64 1
  %i.tw = insertelement <4 x ptr> %i.tv, ptr %i.v, i64 2
  %i.tx = insertelement <4 x ptr> %i.tw, ptr %scevgep887, i64 3
  %i.ty = insertelement <4 x ptr> poison, ptr %scevgep871, i64 0
  %i.tz = shufflevector <4 x ptr> %i.ty, <4 x ptr> poison, <4 x i32> zeroinitializer
  %invariant.op = sub i32 1, %i.nz
  %min.iters.check1129 = icmp ult i32 %i.fn, 28
  %i.ua = icmp ult <8 x ptr> %i.pl, %i.pt
  %i.ub = icmp ult <8 x ptr> %i.qb, %i.qd
  %i.uc = and <8 x i1> %i.ua, %i.ub
  %i.ud = icmp ult <4 x ptr> %i.sr, %i.sv
  %i.ue = icmp ult <4 x ptr> %i.sz, %i.tb
  %i.uf = and <4 x i1> %i.ud, %i.ue
  %bound0936 = icmp ult ptr %i.oc, %scevgep886
  %bound1937 = icmp ult ptr %i.v, %scevgep869
  %found.conflict938 = and i1 %bound0936, %bound1937
  %bound0940 = icmp ult ptr %i.oc, %scevgep888
  %bound1941 = icmp ult ptr %scevgep887, %scevgep869
  %found.conflict942 = and i1 %bound0940, %bound1941
  %i.ug = icmp ult <8 x ptr> %i.qe, %i.qm
  %i.uh = icmp ult <8 x ptr> %i.qu, %i.qv
  %i.ui = and <8 x i1> %i.ug, %i.uh
  %i.uj = icmp ult <4 x ptr> %i.td, %i.th
  %i.uk = icmp ult <4 x ptr> %i.tl, %i.tn
  %i.ul = and <4 x i1> %i.uj, %i.uk
  %bound0992 = icmp ult ptr %i.od, %scevgep888
  %bound1993 = icmp ult ptr %scevgep887, %scevgep870
  %found.conflict994 = and i1 %bound0992, %bound1993
  %i.um = icmp ult <8 x ptr> %i.qw, %i.re
  %i.un = icmp ult <8 x ptr> %i.rm, %i.rn
  %i.uo = and <8 x i1> %i.um, %i.un
  %i.up = icmp ult <4 x ptr> %i.tp, %i.tt
  %i.uq = icmp ult <4 x ptr> %i.tx, %i.tz
  %i.ur = and <4 x i1> %i.up, %i.uq
  %i.us = icmp ult <8 x ptr> %i.ro, %i.rw
  %i.ut = icmp ult <8 x ptr> %i.se, %i.sf
  %i.uu = and <8 x i1> %i.us, %i.ut
  %bound01076 = icmp ult ptr %i.og, %scevgep885
  %bound11077 = icmp ult ptr %scevgep884, %scevgep872
  %found.conflict1078 = and i1 %bound01076, %bound11077
  %bound01080 = icmp ult ptr %i.og, %scevgep886
  %bound11081 = icmp ult ptr %i.v, %scevgep872
  %found.conflict1082 = and i1 %bound01080, %bound11081
  %bound01084 = icmp ult ptr %i.og, %scevgep888
  %bound11085 = icmp ult ptr %scevgep887, %scevgep872
  %found.conflict1086 = and i1 %bound01084, %bound11085
  %i.uv = icmp ult <8 x ptr> %i.sg, %i.so
  %i.uw = icmp ult <8 x ptr> %i.pj, %i.sp
  %i.ux = and <8 x i1> %i.uv, %i.uw
  %bound01120 = icmp ult ptr %.pre402.pre461, %scevgep886
  %bound11121 = icmp ult ptr %i.v, %scevgep873
  %found.conflict1122 = and i1 %bound01120, %bound11121
  %bound01124 = icmp ult ptr %.pre402.pre461, %scevgep888
  %bound11125 = icmp ult ptr %scevgep887, %scevgep873
  %found.conflict1126 = and i1 %bound01124, %bound11125
  %rdx.op = or <8 x i1> %i.uc, %i.ui
  %rdx.op1183 = or <8 x i1> %rdx.op, %i.uo
  %rdx.op1184 = or <8 x i1> %rdx.op1183, %i.uu
  %rdx.op1185 = or <8 x i1> %rdx.op1184, %i.ux
  %i.uy = bitcast <8 x i1> %rdx.op1185 to i8
  %i.uz = icmp ne i8 %i.uy, 0
  %rdx.op1205 = or <4 x i1> %i.uf, %i.ul
  %rdx.op1206 = or <4 x i1> %rdx.op1205, %i.ur
  %i.va = bitcast <4 x i1> %rdx.op1206 to i4
  %i.vb = icmp ne i4 %i.va, 0
  %op.rdx1207.a = or i1 %i.vb, %found.conflict938
  %op.rdx1208.a = or i1 %found.conflict942, %found.conflict994
  %op.rdx1209.a = or i1 %found.conflict1078, %found.conflict1082
  %op.rdx1210.a = or i1 %found.conflict1086, %found.conflict1122
  %op.rdx1211.a = or i1 %found.conflict1126, %i.uz
  %op.rdx1212.a = or i1 %op.rdx1207.a, %op.rdx1208.a
  %op.rdx1213 = or i1 %op.rdx1209.a, %op.rdx1210.a
  %op.rdx1214 = or i1 %op.rdx1212.a, %op.rdx1213
  %op.rdx1215 = or i1 %op.rdx1214, %op.rdx1211.a
  %n.vec1131 = and i64 %wide.trip.count384, 2147483644 ; 3 uses
  %cmp.n1151 = icmp eq i64 %n.vec1131, %wide.trip.count384
  %invariant.op1230.a = sub i32 1, %i.nz
  %min.iters.check854 = icmp ult i32 %i.fn, 52
  %i.vc = sub i64 %i.c, %i.f
  %diff.check783 = icmp ugt i64 %i.vc, -16
  %i.vd = sub i64 %i.c, %i.i
  %diff.check784 = icmp ugt i64 %i.vd, -16
  %i.ve = sub i64 %i.c, %20
  %diff.check786 = icmp ugt i64 %i.ve, -16
  %i.vf = sub i64 %i.c, %i.l
  %diff.check788 = icmp ugt i64 %i.vf, -16
  %i.vg = sub i64 %i.c, %24
  %invariant.op1228 = sub i64 %i.c, %i.of
  %i.vh = sub i64 %i.c, %25
  %invariant.op1232 = sub i64 %i.c, %.pre402.pre461798
  %i.vi = sub i64 %i.f, %i.i
  %diff.check805.a = icmp ugt i64 %i.vi, -16
  %invariant.op1234.a = sub i64 %i.f, %20
  %diff.check803 = icmp ugt i64 %invariant.op1234.a, -16
  %invariant.op1238.a = sub i64 %i.f, %i.l
  %diff.check805 = icmp ugt i64 %invariant.op1238.a, -16
  %invariant.op1234 = sub i64 %i.f, %i.of
  %invariant.op1244.a = sub i64 %i.f, %25
  %invariant.op1246.a = sub i64 %i.f, %.pre402.pre461798
  %i.vj = sub i64 %i.i, %20
  %diff.check817 = icmp ugt i64 %i.vj, -16
  %i.vk = sub i64 %i.i, %i.l
  %diff.check819 = icmp ugt i64 %i.vk, -16
  %invariant.op1240 = sub i64 %i.i, %25
  %invariant.op1242 = sub i64 %i.i, %.pre402.pre461798
  %invariant.op1254.a = sub i64 %20, %i.l
  %diff.check831 = icmp ugt i64 %invariant.op1254.a, -16
  %invariant.op1244 = add i64 %i.ol, -1
  %invariant.op1246 = add i64 %i.om, -1
  %invariant.op1258.a = add i64 %i.on, -1
  %35 = add <8 x i64> %29, %34
  %invariant.op1250 = sub <8 x i64> %19, %35
  %invariant.op1252 = add i64 %i.oo, -1
  %invariant.op1254 = add i64 %30, -1
  %invariant.op1256 = add i64 %31, -1
  %invariant.op1258 = add i64 %32, -1
  %invariant.op1260 = add i64 %33, -1
  %op.rdx1172.a = or i1 %diff.check784, %diff.check786
  %op.rdx1176.a = or i1 %diff.check803, %diff.check805
  %invariant.op1266 = or i1 %diff.check783, %op.rdx1172.a
  %invariant.op1267 = or i1 %diff.check805.a, %op.rdx1176.a
  %n.vec856 = and i64 %wide.trip.count384, 2147483644 ; 3 uses
  %cmp.n866 = icmp eq i64 %n.vec856, %wide.trip.count384
  br label %.preheader296

scalar.ph698:                                     ; preds = %scalar.ph698.preheader, %scalar.ph698
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph698 ], [ %indvars.iv376.ph, %scalar.ph698.preheader ] ; 11 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv376
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !55
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv376
  store float %i.vm, ptr %i.vn, align 4, !tbaa !55
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv376
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !55
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv376
  store float %i.vp, ptr %i.vq, align 4, !tbaa !55
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv376
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !55
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv376
  store float %i.vs, ptr %i.vt, align 4, !tbaa !55
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv376
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !55
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv376
  store float %i.vv, ptr %i.vw, align 4, !tbaa !55
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre, i64 %indvars.iv376
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !55
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv376
  store float %i.vy, ptr %i.vz, align 4, !tbaa !55
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.preheader297, label %scalar.ph698, !llvm.loop !172

.preheader296:                                    ; preds = %.preheader296.lr.ph, %bb.x
  %indvars.iv391 = phi i64 [ %i.oj, %.preheader296.lr.ph ], [ %indvars.iv.next392, %bb.x ] ; 5 uses
  %.0225345 = phi i32 [ 1, %.preheader296.lr.ph ], [ %.1, %bb.x ] ; 4 uses
  br i1 %i.fo, label %.lr.ph340, label %._crit_edge341.thread

.lr.ph340:                                        ; preds = %.preheader296
  %i.wa = mul nsw i64 %indvars.iv391, %i.ok       ; 2 uses
  %i.wb = sub nsw i64 %indvars.iv391, %i.oj
  %i.wc = mul nuw nsw i64 %i.wb, %i.ok            ; 2 uses
  %brmerge1268 = select i1 %min.iters.check1129, i1 true, i1 %op.rdx1215
  br i1 %brmerge1268, label %scalar.ph1128.preheader, label %vector.body1132

vector.body1132:                                  ; preds = %.lr.ph340, %vector.body1132
  %index1133 = phi i64 [ %index.next1149, %vector.body1132 ], [ 0, %.lr.ph340 ] ; 8 uses
  %i.wd = add nsw i64 %index1133, %i.wa           ; 5 uses
  %i.we = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.wd
  %wide.load1134 = load <4 x float>, ptr %i.we, align 4, !tbaa !55, !alias.scope !213
  %i.wf = add nsw i64 %index1133, %i.wc           ; 5 uses
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.wf
  %wide.load1135 = load <4 x float>, ptr %i.wg, align 4, !tbaa !55, !alias.scope !214
  %i.wh = fsub <4 x float> %wide.load1134, %wide.load1135
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %index1133 ; 2 uses
  %wide.load1136 = load <4 x float>, ptr %i.wi, align 4, !tbaa !55, !alias.scope !215, !noalias !216
  %i.wj = fadd <4 x float> %i.wh, %wide.load1136
  store <4 x float> %i.wj, ptr %i.wi, align 4, !tbaa !55, !alias.scope !215, !noalias !216
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.wd
  %wide.load1137 = load <4 x float>, ptr %i.wk, align 4, !tbaa !55, !alias.scope !217
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.wf
  %wide.load1138 = load <4 x float>, ptr %i.wl, align 4, !tbaa !55, !alias.scope !218
  %i.wm = fsub <4 x float> %wide.load1137, %wide.load1138
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %index1133 ; 2 uses
  %wide.load1139 = load <4 x float>, ptr %i.wn, align 4, !tbaa !55, !alias.scope !219, !noalias !220
  %i.wo = fadd <4 x float> %i.wm, %wide.load1139
  store <4 x float> %i.wo, ptr %i.wn, align 4, !tbaa !55, !alias.scope !219, !noalias !220
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.wd
  %wide.load1140 = load <4 x float>, ptr %i.wp, align 4, !tbaa !55, !alias.scope !221
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.wf
  %wide.load1141 = load <4 x float>, ptr %i.wq, align 4, !tbaa !55, !alias.scope !222
  %i.wr = fsub <4 x float> %wide.load1140, %wide.load1141
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %index1133 ; 2 uses
  %wide.load1142 = load <4 x float>, ptr %i.ws, align 4, !tbaa !55, !alias.scope !223, !noalias !224
  %i.wt = fadd <4 x float> %i.wr, %wide.load1142
  store <4 x float> %i.wt, ptr %i.ws, align 4, !tbaa !55, !alias.scope !223, !noalias !224
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.wd
  %wide.load1143 = load <4 x float>, ptr %i.wu, align 4, !tbaa !55, !alias.scope !225
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.wf
  %wide.load1144 = load <4 x float>, ptr %i.wv, align 4, !tbaa !55, !alias.scope !226
  %i.ww = fsub <4 x float> %wide.load1143, %wide.load1144
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index1133 ; 2 uses
  %wide.load1145 = load <4 x float>, ptr %i.wx, align 4, !tbaa !55, !alias.scope !227, !noalias !228
  %i.wy = fadd <4 x float> %i.ww, %wide.load1145
  store <4 x float> %i.wy, ptr %i.wx, align 4, !tbaa !55, !alias.scope !227, !noalias !228
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.wd
  %wide.load1146 = load <4 x float>, ptr %i.wz, align 4, !tbaa !55, !alias.scope !229
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.wf
  %wide.load1147 = load <4 x float>, ptr %i.xa, align 4, !tbaa !55, !alias.scope !230
  %i.xb = fsub <4 x float> %wide.load1146, %wide.load1147
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %index1133 ; 2 uses
  %wide.load1148 = load <4 x float>, ptr %i.xc, align 4, !tbaa !55, !alias.scope !231, !noalias !232
  %i.xd = fadd <4 x float> %i.xb, %wide.load1148
  store <4 x float> %i.xd, ptr %i.xc, align 4, !tbaa !55, !alias.scope !231, !noalias !232
  %index.next1149 = add nuw i64 %index1133, 4     ; 2 uses
  %i.xe = icmp eq i64 %index.next1149, %n.vec1131
  br i1 %i.xe, label %middle.block1150, label %vector.body1132, !llvm.loop !189

middle.block1150:                                 ; preds = %vector.body1132
  br i1 %cmp.n1151, label %._crit_edge341, label %scalar.ph1128.preheader

scalar.ph1128.preheader:                          ; preds = %.lr.ph340, %middle.block1150
  %indvars.iv381.ph = phi i64 [ %n.vec1131, %middle.block1150 ], [ 0, %.lr.ph340 ]
  br label %scalar.ph1128

._crit_edge347:                                   ; preds = %bb.x, %.preheader297
  %.not.i.i272 = icmp eq ptr %.pre402.pre461, %i.fi
  %i.xf = icmp eq ptr %.pre402.pre461, null
  %or.cond.i273 = or i1 %.not.i.i272, %i.xf
  br i1 %or.cond.i273, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, label %bb.q

bb.q:                                             ; preds = %._crit_edge347
  call void @_ZdaPv(ptr noundef nonnull %.pre402.pre461) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274

_ZN2cv10AutoBufferIfLm264EED2Ev.exit274:          ; preds = %._crit_edge347, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.xg = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %.not.i.i275 = icmp eq ptr %i.xg, %i.fl
  %i.xh = icmp eq ptr %i.xg, null
  %or.cond.i276 = or i1 %.not.i.i275, %i.xh
  br i1 %or.cond.i276, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, label %bb.r

bb.r:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  call void @_ZdaPv(ptr noundef nonnull %i.xg) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277

_ZN2cv10AutoBufferIfLm264EED2Ev.exit277:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.xi = load ptr, ptr %11, align 8, !tbaa !196  ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.xi, %i.fj
  %i.xj = icmp eq ptr %i.xi, null
  %or.cond.i279 = or i1 %.not.i.i278, %i.xj
  br i1 %or.cond.i279, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, label %bb.s

bb.s:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277
  call void @_ZdaPv(ptr noundef nonnull %i.xi) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280

_ZN2cv10AutoBufferIfLm264EED2Ev.exit280:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.xk = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.xk, %i.fk
  %i.xl = icmp eq ptr %i.xk, null
  %or.cond.i282 = or i1 %.not.i.i281, %i.xl
  br i1 %or.cond.i282, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, label %bb.t

bb.t:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280
  call void @_ZdaPv(ptr noundef nonnull %i.xk) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283

_ZN2cv10AutoBufferIfLm264EED2Ev.exit283:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.xm = load ptr, ptr %9, align 8, !tbaa !196   ; 3 uses
  %.not.i.i284 = icmp eq ptr %i.xm, %i.au
  %i.xn = icmp eq ptr %i.xm, null
  %or.cond.i285 = or i1 %.not.i.i284, %i.xn
  br i1 %or.cond.i285, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, label %bb.u

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283
  call void @_ZdaPv(ptr noundef nonnull %i.xm) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286

_ZN2cv10AutoBufferIfLm264EED2Ev.exit286:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.xo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !62
  %.not.i = icmp eq i32 %i.xp, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.xq = landingpad { ptr, i32 }
          catch ptr null
  %i.xr = extractvalue { ptr, i32 } %i.xq, 0
  call void @__clang_call_terminate(ptr %i.xr) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

._crit_edge341:                                   ; preds = %scalar.ph1128, %middle.block1150
  %i.xs = trunc nsw i64 %indvars.iv391 to i32
  %.reass468.reass = add i32 %i.xs, %invariant.op1230.a
  %i.xt = srem i32 %.reass468.reass, %i.oi
  %i.xu = icmp eq i32 %i.xt, 0
  br i1 %i.xu, label %.lr.ph343, label %bb.x

._crit_edge341.thread:                            ; preds = %.preheader296
  %i.xv = trunc nsw i64 %indvars.iv391 to i32
  %.reass.reass = add i32 %i.xv, %invariant.op
  %i.xw = srem i32 %.reass.reass, %i.oi
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %._crit_edge344, label %bb.x

.lr.ph343:                                        ; preds = %._crit_edge341
  %i.xy = mul nsw i32 %.0225345, %i.fn
  %i.xz = sext i32 %i.xy to i64                   ; 3 uses
  br i1 %min.iters.check854, label %scalar.ph853.preheader, label %vector.memcheck782

vector.memcheck782:                               ; preds = %.lr.ph343
  %i.ya = shl nsw i64 %i.xz, 2                    ; 18 uses
  %.reass = add i64 %i.ya, %i.vg
  %diff.check792 = icmp ugt i64 %.reass, -16
  %.reass1233.a = add i64 %i.ya, %invariant.op1228
  %diff.check792.a = icmp ugt i64 %.reass1233.a, -16
  %.reass1235.a = add i64 %i.ya, %i.vh
  %diff.check794 = icmp ugt i64 %.reass1235.a, -16
  %.reass1237.a = add i64 %i.ya, %invariant.op1232
  %diff.check796 = icmp ugt i64 %.reass1237.a, -16
  %.reass1239.a = add i64 %i.ya, %invariant.op1234
  %diff.check799 = icmp ugt i64 %.reass1239.a, -16
  %.reass1241.a = add i64 %i.ya, %invariant.op1244.a
  %diff.check813 = icmp ugt i64 %.reass1241.a, -16
  %.reass1243.a = add i64 %i.ya, %invariant.op1246.a
  %diff.check815 = icmp ugt i64 %.reass1243.a, -16
  %.reass1245.a = add i64 %i.ya, %invariant.op1240
  %diff.check813.a = icmp ugt i64 %.reass1245.a, -16
  %.reass1247.a = add i64 %i.ya, %invariant.op1242
  %diff.check815.a = icmp ugt i64 %.reass1247.a, -16
  %.reass1249.a = add i64 %i.ya, %invariant.op1244
  %diff.check821 = icmp ult i64 %.reass1249.a, 15
  %.reass1251.a = add i64 %i.ya, %invariant.op1246
  %diff.check823 = icmp ult i64 %.reass1251.a, 15
  %.reass1253.a = add i64 %i.ya, %invariant.op1258.a
  %diff.check825 = icmp ult i64 %.reass1253.a, 15
  %36 = insertelement <8 x i64> poison, i64 %i.ya, i64 0
  %37 = shufflevector <8 x i64> %36, <8 x i64> poison, <8 x i32> zeroinitializer
  %.reass1251 = add <8 x i64> %37, %invariant.op1250 ; 2 uses
  %38 = icmp ugt <8 x i64> %.reass1251, <i64 -16, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15>
  %39 = icmp ult <8 x i64> %.reass1251, <i64 -16, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15>
  %40 = shufflevector <8 x i1> %38, <8 x i1> %39, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.reass1261.a = add i64 %i.ya, %invariant.op1252
  %diff.check835 = icmp ult i64 %.reass1261.a, 15
  %.reass1263 = add i64 %i.ya, %invariant.op1254
  %diff.check845 = icmp ult i64 %.reass1263, 15
  %.reass1257 = add i64 %i.ya, %invariant.op1256
  %diff.check847 = icmp ult i64 %.reass1257, 15
  %.reass1259 = add i64 %i.ya, %invariant.op1258
  %diff.check849 = icmp ult i64 %.reass1259, 15
  %.reass1261 = add i64 %i.ya, %invariant.op1260
  %diff.check851 = icmp ult i64 %.reass1261, 15
  %41 = bitcast <8 x i1> %40 to i8
  %42 = icmp ne i8 %41, 0
  %op.rdx1154 = or i1 %diff.check788, %diff.check792
  %op.rdx1155 = or i1 %diff.check792.a, %diff.check794
  %op.rdx1158 = or i1 %diff.check799, %diff.check813
  %op.rdx1159 = or i1 %diff.check815, %diff.check817
  %op.rdx1160 = or i1 %diff.check819, %diff.check813.a
  %op.rdx1161 = or i1 %diff.check815.a, %diff.check831
  %op.rdx1162 = or i1 %diff.check821, %diff.check823
  %op.rdx1163 = or i1 %diff.check825, %diff.check835
  %op.rdx1164 = or i1 %diff.check845, %diff.check847
  %op.rdx1165 = or i1 %diff.check849, %diff.check851
  %op.rdx1166.reass = or i1 %42, %invariant.op1266
  %op.rdx1167 = or i1 %op.rdx1154, %op.rdx1155
  %op.rdx1168.reass = or i1 %diff.check796, %invariant.op1267
  %op.rdx1169 = or i1 %op.rdx1158, %op.rdx1159
  %op.rdx1170 = or i1 %op.rdx1160, %op.rdx1161
  %op.rdx1173.a = or i1 %op.rdx1162, %op.rdx1163
  %op.rdx1174.a = or i1 %op.rdx1164, %op.rdx1165
  %op.rdx1177.reass = or i1 %op.rdx1166.reass, %op.rdx1167
  %op.rdx1178.a = or i1 %op.rdx1168.reass, %op.rdx1169
  %op.rdx1179.reass = or i1 %op.rdx1170, %op.rdx1173.a
  %op.rdx1180 = or i1 %op.rdx1177.reass, %op.rdx1178.a
  %op.rdx1181 = or i1 %op.rdx1179.reass, %op.rdx1174.a
  %op.rdx1182 = or i1 %op.rdx1180, %op.rdx1181
  br i1 %op.rdx1182, label %scalar.ph853.preheader, label %vector.body857

vector.body857:                                   ; preds = %vector.memcheck782, %vector.body857
  %index858 = phi i64 [ %index.next864, %vector.body857 ], [ 0, %vector.memcheck782 ] ; 7 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %index858
  %wide.load859 = load <4 x float>, ptr %i.yb, align 4, !tbaa !55
  %i.yc = add nsw i64 %index858, %i.xz            ; 5 uses
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yc
  store <4 x float> %wide.load859, ptr %i.yd, align 4, !tbaa !55
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %index858
  %wide.load860 = load <4 x float>, ptr %i.ye, align 4, !tbaa !55
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.yc
  store <4 x float> %wide.load860, ptr %i.yf, align 4, !tbaa !55
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %index858
  %wide.load861 = load <4 x float>, ptr %i.yg, align 4, !tbaa !55
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.yc
  store <4 x float> %wide.load861, ptr %i.yh, align 4, !tbaa !55
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index858
  %wide.load862 = load <4 x float>, ptr %i.yi, align 4, !tbaa !55
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.yc
  store <4 x float> %wide.load862, ptr %i.yj, align 4, !tbaa !55
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %index858
  %wide.load863 = load <4 x float>, ptr %i.yk, align 4, !tbaa !55
  %i.yl = getelementptr inbounds [4 x i8], ptr %22, i64 %i.yc
  store <4 x float> %wide.load863, ptr %i.yl, align 4, !tbaa !55
  %index.next864 = add nuw i64 %index858, 4       ; 2 uses
  %i.ym = icmp eq i64 %index.next864, %n.vec856
  br i1 %i.ym, label %middle.block865, label %vector.body857, !llvm.loop !190

middle.block865:                                  ; preds = %vector.body857
  br i1 %cmp.n866, label %._crit_edge344, label %scalar.ph853.preheader

scalar.ph853.preheader:                           ; preds = %vector.memcheck782, %.lr.ph343, %middle.block865
  %indvars.iv386.ph = phi i64 [ 0, %vector.memcheck782 ], [ 0, %.lr.ph343 ], [ %n.vec856, %middle.block865 ]
  br label %scalar.ph853

scalar.ph1128:                                    ; preds = %scalar.ph1128.preheader, %scalar.ph1128
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %scalar.ph1128 ], [ %indvars.iv381.ph, %scalar.ph1128.preheader ] ; 8 uses
  %i.yn = add nsw i64 %indvars.iv381, %i.wa       ; 5 uses
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.yn
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !55
  %i.yq = add nsw i64 %indvars.iv381, %i.wc       ; 5 uses
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !55
  %i.yt = fsub float %i.yp, %i.ys
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv381 ; 2 uses
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !55
  %i.yw = fadd float %i.yt, %i.yv
  store float %i.yw, ptr %i.yu, align 4, !tbaa !55
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.yn
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !55
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.yq
  %i.za = load float, ptr %i.yz, align 4, !tbaa !55
  %i.zb = fsub float %i.yy, %i.za
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv381 ; 2 uses
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !55
  %i.ze = fadd float %i.zb, %i.zd
  store float %i.ze, ptr %i.zc, align 4, !tbaa !55
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.yn
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !55
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.yq
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !55
  %i.zj = fsub float %i.zg, %i.zi
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv381 ; 2 uses
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !55
  %i.zm = fadd float %i.zj, %i.zl
  store float %i.zm, ptr %i.zk, align 4, !tbaa !55
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.yn
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !55
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.yq
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !55
  %i.zr = fsub float %i.zo, %i.zq
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv381 ; 2 uses
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !55
  %i.zu = fadd float %i.zr, %i.zt
  store float %i.zu, ptr %i.zs, align 4, !tbaa !55
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.yn
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !55
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.yq
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !55
  %i.zz = fsub float %i.zw, %i.zy
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %indvars.iv381 ; 2 uses
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !55
  %i.aac = fadd float %i.zz, %i.aab
  store float %i.aac, ptr %i.aaa, align 4, !tbaa !55
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge341, label %scalar.ph1128, !llvm.loop !191

._crit_edge344:                                   ; preds = %scalar.ph853, %middle.block865, %._crit_edge341.thread
  %i.aad = add nsw i32 %.0225345, 1
  br label %bb.x

scalar.ph853:                                     ; preds = %scalar.ph853.preheader, %scalar.ph853
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %scalar.ph853 ], [ %indvars.iv386.ph, %scalar.ph853.preheader ] ; 7 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv386
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !55
  %i.aag = add nsw i64 %indvars.iv386, %i.xz      ; 5 uses
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aag
  store float %i.aaf, ptr %i.aah, align 4, !tbaa !55
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv386
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !55
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aag
  store float %i.aaj, ptr %i.aak, align 4, !tbaa !55
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv386
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !55
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aag
  store float %i.aam, ptr %i.aan, align 4, !tbaa !55
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv386
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !55
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aag
  store float %i.aap, ptr %i.aaq, align 4, !tbaa !55
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %indvars.iv386
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !55
  %i.aat = getelementptr inbounds [4 x i8], ptr %22, i64 %i.aag
  store float %i.aas, ptr %i.aat, align 4, !tbaa !55
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge344, label %scalar.ph853, !llvm.loop !192

bb.x:                                             ; preds = %._crit_edge341.thread, %._crit_edge341, %._crit_edge344
  %.1 = phi i32 [ %i.aad, %._crit_edge344 ], [ %.0225345, %._crit_edge341 ], [ %.0225345, %._crit_edge341.thread ]
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge347, label %.preheader296, !llvm.loop !193

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.kb, %bb.n ], [ %i.kc, %bb.o ], [ %i.kc, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.aau = load ptr, ptr %11, align 8, !tbaa !196 ; 3 uses
  %.not.i.i287 = icmp eq ptr %i.aau, %i.em
  %i.aav = icmp eq ptr %i.aau, null
  %or.cond.i288 = or i1 %.not.i.i287, %i.aav
  br i1 %or.cond.i288, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289, label %bb.y

bb.y:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aau) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289

_ZN2cv10AutoBufferIfLm264EED2Ev.exit289:          ; preds = %bb.y, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ka, %bb.m ], [ %.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit ], [ %.pn, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.aaw = load ptr, ptr %10, align 8, !tbaa !196 ; 3 uses
  %.not.i.i290 = icmp eq ptr %i.aaw, %i.ee
  %i.aax = icmp eq ptr %i.aaw, null
  %or.cond.i291 = or i1 %.not.i.i290, %i.aax
  br i1 %or.cond.i291, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292, label %bb.z

bb.z:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289
  call void @_ZdaPv(ptr noundef nonnull %i.aaw) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292

_ZN2cv10AutoBufferIfLm264EED2Ev.exit292:          ; preds = %bb.z, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.l ], [ %.pn.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289 ], [ %.pn.pn, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aay = load ptr, ptr %9, align 8, !tbaa !196  ; 3 uses
  %.not.i.i293 = icmp eq ptr %i.aay, %i.au
  %i.aaz = icmp eq ptr %i.aay, null
  %or.cond.i294 = or i1 %.not.i.i293, %i.aaz
  br i1 %or.cond.i294, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295, label %bb.aa

bb.aa:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292
  call void @_ZdaPv(ptr noundef nonnull %i.aay) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295

_ZN2cv10AutoBufferIfLm264EED2Ev.exit295:          ; preds = %bb.aa, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jy, %bb.k ], [ %.pn.pn.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292 ], [ %.pn.pn.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_ZN2cv18DISOpticalFlowImpl23autoSelectCoarsestScaleEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3024) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to float
  %i.b = fmul nnan float %i.a, 2.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul nnan float %i.e, 5.000000e+00
  %i.g = fdiv float %i.b, %i.f
  %i.h = tail call noundef float @log2f(float noundef %i.g) #21
  %i.i = tail call noundef float @llvm.floor.f32(float %i.h)
  %i.j = fptosi float %i.i to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN2cv18DISOpticalFlowImpl28autoSelectPatchSizeAndScalesEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3024) initializes((12, 16), (20, 24)) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.d = sitofp i32 %1 to float
  %i.e = fmul nnan float %i.d, 2.000000e+00       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %i.c, align 4, !tbaa !109
  %i.g = fdiv float %i.e, 4.000000e+01
  %i.h = tail call noundef float @log2f(float noundef %i.g) #21
  %i.i = tail call noundef float @llvm.floor.f32(float %i.h)
  %i.j = fptosi float %i.i to i32                 ; 2 uses
  %.sroa.speculated.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.j, i32 0)
  store i32 %.sroa.speculated.i, ptr %i.f, align 4, !tbaa !88
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 2)
  %.sroa.speculated23 = add nsw i32 %i.k, -2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store i32 12, ptr %i.c, align 4, !tbaa !109
  %i.l = fdiv float %i.e, 6.000000e+01
  %i.m = tail call noundef float @log2f(float noundef %i.l) #21
  %i.n = tail call noundef float @llvm.floor.f32(float %i.m)
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %.sroa.speculated.i4 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.o, i32 0)
  store i32 %.sroa.speculated.i4, ptr %i.f, align 4, !tbaa !88
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 4)
  %.sroa.speculated18 = add nsw i32 %i.p, -4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 12, ptr %i.c, align 4, !tbaa !109
  %i.q = fdiv float %i.e, 6.000000e+01
  %i.r = tail call noundef float @log2f(float noundef %i.q) #21
  %i.s = tail call noundef float @llvm.floor.f32(float %i.r)
  %i.t = fptosi float %i.s to i32                 ; 2 uses
  %.sroa.speculated.i6 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.t, i32 0)
  store i32 %.sroa.speculated.i6, ptr %i.f, align 4, !tbaa !88
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 5)
  %.sroa.speculated13 = add nsw i32 %i.u, -5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 8, ptr %i.c, align 4, !tbaa !109
  %i.v = fdiv float %i.e, 4.000000e+01
  %i.w = tail call noundef float @log2f(float noundef %i.v) #21
  %i.x = tail call noundef float @llvm.floor.f32(float %i.w)
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %.sroa.speculated.i8 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.y, i32 0)
  store i32 %.sroa.speculated.i8, ptr %i.f, align 4, !tbaa !88
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 2)
  %.sroa.speculated = add nsw i32 %i.z, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.speculated.sink = phi i32 [ %.sroa.speculated, %bb.e ], [ %.sroa.speculated13, %bb.d ], [ %.sroa.speculated18, %bb.c ], [ %.sroa.speculated23, %bb.b ]
  store i32 %.sroa.speculated.sink, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv18DISOpticalFlowImpl26PatchInverseSearch_ParBodyC2ERS0_iiRNS_3MatES4_S4_S4_S4_S4_S4_S4_ii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(104) initializes((0, 28), (32, 104)) %0, ptr noundef nonnull align 8 dereferenceable(3024) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %12, i32 noundef %13) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv18DISOpticalFlowImpl26PatchInverseSearch_ParBodyE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %i.e, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %6, ptr %i.f, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %7, ptr %i.g, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %8, ptr %i.h, align 8, !tbaa !126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %9, ptr %i.i, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %10, ptr %i.j, align 8, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %11, ptr %i.k, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %12, ptr %i.l, align 8, !tbaa !130
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %13, ptr %i.m, align 4, !tbaa !131
  %i.n = sitofp i32 %3 to double
  %i.o = sitofp i32 %2 to double
  %i.p = fdiv double %i.n, %i.o
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %i.r = fptosi double %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.r, ptr %i.s, align 4, !tbaa !132
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv18DISOpticalFlowImpl26PatchInverseSearch_ParBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %3 = alloca %"class.cv::Range", align 4         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv18DISOpticalFlowImpl26PatchInverseSearch_ParBodyclERKNS_5RangeEE25__cv_trace_location_fn774)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  %i.d = load i8, ptr %i.c, align 1, !tbaa !58, !range !133, !noundef !134
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.f
end_hunk_1
