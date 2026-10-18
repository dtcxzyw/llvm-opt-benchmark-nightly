Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dis_flow?download=true
inline.NumInlined: 856
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv18DISOpticalFlowImpl14prepareBuffersERNS_3MatES2_S2_b:bb.a
  %i.qq = load ptr, ptr %i.qp, align 8
  invoke void %i.qq(ptr noundef nonnull align 8 dereferenceable(8) %i.qm, float noundef %i.qn)
          to label %bb.cd unwind label %bb.ba

bb.cd:                                            ; preds = %bb.cc
  %i.qr = load ptr, ptr %i.gp, align 8, !tbaa !78
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %indvars.iv
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !71 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !14
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 112
  %i.qw = load ptr, ptr %i.qv, align 8
  invoke void %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qt, i32 noundef 5)
          to label %bb.ce unwind label %bb.ba

bb.ce:                                            ; preds = %bb.cd
  %i.qx = load ptr, ptr %i.gp, align 8, !tbaa !78
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %indvars.iv
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !71 ; 2 uses
  %i.ra = load i32, ptr %i.gu, align 8, !tbaa !54
  %i.rb = load ptr, ptr %i.qz, align 8, !tbaa !14
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 96
  %i.rd = load ptr, ptr %i.rc, align 8
  invoke void %i.rd(ptr noundef nonnull align 8 dereferenceable(8) %i.qz, i32 noundef %i.ra)
          to label %bb.cf unwind label %bb.ba

bb.cf:                                            ; preds = %bb.ce
  br i1 %4, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  store i32 0, ptr %i.gv, align 8, !tbaa !91
  store i32 0, ptr %i.gw, align 4, !tbaa !92
  store i32 16842752, ptr %31, align 8, !tbaa !94
  store ptr %16, ptr %i.gx, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  %i.re = load ptr, ptr %i.gy, align 8, !tbaa !79
  %i.rf = getelementptr inbounds nuw [208 x i8], ptr %i.re, i64 %indvars.iv
  store i64 0, ptr %i.ha, align 8
  store i32 -2113863675, ptr %32, align 8, !tbaa !94
  store ptr %i.rf, ptr %i.gz, align 8, !tbaa !95
  %.sroa.2295.0.insert.ext = zext i32 %i.os to i64
  %.sroa.2295.0.insert.shift = shl nuw i64 %.sroa.2295.0.insert.ext, 32
  %.sroa.0294.0.insert.ext = zext i32 %i.ou to i64
  %.sroa.0294.0.insert.insert = or disjoint i64 %.sroa.2295.0.insert.shift, %.sroa.0294.0.insert.ext ; 2 uses
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 %.sroa.0294.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.ch unwind label %bb.cn

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.rg = uitofp nneg i32 %.0126315 to double
  %i.rh = load ptr, ptr %i.gy, align 8, !tbaa !79
  %i.ri = getelementptr inbounds nuw [208 x i8], ptr %i.rh, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 0, ptr %i.hc, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !94
  store ptr %i.ri, ptr %i.hb, align 8, !tbaa !95
  %i.rj = fdiv double 1.000000e+00, %i.rg         ; 2 uses
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.ri, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1, double noundef %i.rj, double noundef 0.000000e+00)
          to label %bb.ci unwind label %bb.co

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  store i32 0, ptr %i.hd, align 8, !tbaa !91
  store i32 0, ptr %i.he, align 4, !tbaa !92
  store i32 16842752, ptr %33, align 8, !tbaa !94
  store ptr %.ptr.1, ptr %i.hf, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.rk = load ptr, ptr %i.hg, align 8, !tbaa !79
  %i.rl = getelementptr inbounds nuw [208 x i8], ptr %i.rk, i64 %indvars.iv
  store i64 0, ptr %i.hi, align 8
  store i32 -2113863675, ptr %34, align 8, !tbaa !94
  store ptr %i.rl, ptr %i.hh, align 8, !tbaa !95
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, i64 %.sroa.0294.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.rm = load ptr, ptr %i.hg, align 8, !tbaa !79
  %i.rn = getelementptr inbounds nuw [208 x i8], ptr %i.rm, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 0, ptr %i.hk, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !94
  store ptr %i.rn, ptr %i.hj, align 8, !tbaa !95
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.rn, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1, double noundef %i.rj, double noundef 0.000000e+00)
          to label %bb.ck unwind label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.cr

bb.cl:                                            ; preds = %bb.bw
  %i.ro = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.cu

bb.cm:                                            ; preds = %bb.by
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.cu

bb.cn:                                            ; preds = %bb.cg
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.cu

bb.co:                                            ; preds = %bb.ch
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cp:                                            ; preds = %bb.ci
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cj
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cf, %bb.ck, %_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit
  %i.ru = shl nsw i32 %.0126315, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.rv = load i32, ptr %i.b, align 4, !tbaa !88
  %i.rw = sext i32 %i.rv to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.rw
  br i1 %.not.not, label %bb.ag, label %.preheader, !llvm.loop !153

bb.cs:                                            ; preds = %.preheader
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %15)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rx = landingpad { ptr, i32 }
          catch ptr null
  %i.ry = extractvalue { ptr, i32 } %i.rx, 0
  call void @__clang_call_terminate(ptr %i.ry) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.preheader, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  ret void

bb.cu:                                            ; preds = %bb.ba, %.body, %.body229, %.body266, %.body279, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.af
  %.pn160.pn = phi { ptr, i32 } [ %i.eq, %bb.af ], [ %i.rt, %bb.cq ], [ %i.rs, %bb.cp ], [ %i.rr, %bb.co ], [ %i.rq, %bb.cn ], [ %i.lv, %bb.ba ], [ %i.rp, %bb.cm ], [ %i.ro, %bb.cl ], [ %.pn143, %.body229 ], [ %.pn140, %.body ], [ %.pn137, %.body279 ], [ %.pn, %.body266 ]
  %i.rz = getelementptr inbounds nuw i8, ptr %16, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.rz) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ae
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %bb.cu ], [ %i.ep, %bb.ae ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105  ; 6 uses
  %14 = insertelement <3 x ptr> poison, ptr %i.e, i64 0
  %15 = insertelement <3 x ptr> %14, ptr %i.k, i64 1
  %16 = insertelement <3 x ptr> %15, ptr %i.n, i64 2
  %17 = ptrtoaddr <3 x ptr> %16 to <3 x i64>
  %18 = shufflevector <3 x i64> %17, <3 x i64> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.o = ptrtoaddr ptr %i.n to i64                ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 22 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105  ; 22 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105  ; 22 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 22 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105  ; 22 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !106 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph327, label %.._crit_edge328_crit_edge

.._crit_edge328_crit_edge:                        ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !107 ; 2 uses
  %.pre406 = sext i32 %.pre to i64
  br label %._crit_edge328

.lr.ph327:                                        ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !108
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !109 ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !107 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !110 ; 2 uses
  %i.ar = icmp slt i32 %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = sext i32 %i.al to i64                   ; 2 uses
  %i.au = sext i32 %i.ao to i64                   ; 2 uses
  %wide.trip.count361 = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext nneg i32 %i.al to i64
  %wide.trip.count356 = sext i32 %i.aq to i64
  br label %bb.c

._crit_edge328:                                   ; preds = %._crit_edge324, %.._crit_edge328_crit_edge
  %.pre-phi = phi i64 [ %.pre406, %.._crit_edge328_crit_edge ], [ %i.au, %._crit_edge324 ] ; 4 uses
  %i.av = phi i32 [ %.pre, %.._crit_edge328_crit_edge ], [ %i.ao, %._crit_edge324 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !196
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i = icmp ugt i32 %i.av, 264
  store i64 %.pre-phi, ptr %i.ay, align 8, !tbaa !197
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread:      ; preds = %._crit_edge328
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.az, ptr %10, align 8, !tbaa !196
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.pre-phi, ptr %i.ba, align 8, !tbaa !197
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit261.thread

bb.b:                                             ; preds = %._crit_edge328
  %i.bb = icmp slt i32 %i.av, 0
  %i.bc = shl nuw nsw i64 %.pre-phi, 2
  %i.bd = select i1 %i.bb, i64 -1, i64 %i.bc
  %i.be = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #25
          to label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit unwind label %bb.k

bb.c:                                             ; preds = %.lr.ph327, %._crit_edge324
  %indvars.iv358 = phi i64 [ 0, %.lr.ph327 ], [ %indvars.iv.next359, %._crit_edge324 ] ; 4 uses
  %i.bf = mul i64 %i.af, %indvars.iv358
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf ; 3 uses
  %i.bh = mul i64 %i.aj, %indvars.iv358
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bh ; 3 uses
  br i1 %i.am, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0234.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.cp, %.lr.ph ] ; 2 uses
  %i.bj = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.cn, %.lr.ph ] ; 5 uses
  %i.bk = mul nsw i64 %indvars.iv358, %i.au       ; 6 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bk
  %i.bm = extractelement <4 x float> %i.bj, i64 3
  store float %i.bm, ptr %i.bl, align 4, !tbaa !55
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bk
  %i.bo = extractelement <4 x float> %i.bj, i64 2
  store float %i.bo, ptr %i.bn, align 4, !tbaa !55
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bk
  %i.bq = extractelement <4 x float> %i.bj, i64 1
  store float %i.bq, ptr %i.bp, align 4, !tbaa !55
  %i.br = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.bk
  %i.bs = extractelement <4 x float> %i.bj, i64 0
  store float %i.bs, ptr %i.br, align 4, !tbaa !55
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bk
  store float %.0234.lcssa, ptr %i.bt, align 4, !tbaa !55
  br i1 %i.ar, label %.lr.ph323, label %._crit_edge324

.lr.ph323:                                        ; preds = %._crit_edge
  %i.bu = load i32, ptr %i.as, align 8, !tbaa !52
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %.0234308 = phi float [ %i.cp, %.lr.ph ], [ 0.000000e+00, %bb.c ]
  %i.bv = phi <4 x float> [ %i.cn, %.lr.ph ], [ zeroinitializer, %bb.c ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !112 ; 2 uses
  %i.by = sext i16 %i.bx to i32                   ; 3 uses
  %i.bz = mul nsw i32 %i.by, %i.by
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !112 ; 2 uses
  %i.cd = sext i16 %i.cc to i32                   ; 3 uses
  %i.ce = mul nsw i32 %i.cd, %i.cd
  %i.cf = uitofp nneg i32 %i.ce to float
  %i.cg = mul nsw i32 %i.cd, %i.by
  %i.ch = sitofp i32 %i.cg to float
  %i.ci = sitofp i16 %i.bx to float
  %i.cj = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.ch, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.cf, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ca, i64 3
  %i.cn = fadd <4 x float> %i.bv, %i.cm           ; 2 uses
  %i.co = sitofp i16 %i.cc to float
  %i.cp = fadd float %.0234308, %i.co             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !154

._crit_edge324:                                   ; preds = %bb.f, %._crit_edge
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count361
  br i1 %exitcond362.not, label %._crit_edge328, label %bb.c, !llvm.loop !155

bb.d:                                             ; preds = %.lr.ph323, %bb.f
  %indvars.iv353 = phi i64 [ %i.at, %.lr.ph323 ], [ %indvars.iv.next354, %bb.f ] ; 4 uses
  %.0231320 = phi i32 [ 1, %.lr.ph323 ], [ %.1232, %bb.f ] ; 3 uses
  %.1235319 = phi float [ %.0234.lcssa, %.lr.ph323 ], [ %i.dq, %bb.f ]
  %i.cq = phi <4 x float> [ %i.bj, %.lr.ph323 ], [ %i.do, %bb.f ]
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %indvars.iv353
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !112
  %i.ct = sext i16 %i.cs to i32                   ; 3 uses
  %i.cu = sub nsw i64 %indvars.iv353, %i.at       ; 3 uses
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !112
  %i.cx = sext i16 %i.cw to i32                   ; 3 uses
  %add = add nsw i32 %i.cx, %i.ct
  %sub = sub nsw i32 %i.ct, %i.cx                 ; 2 uses
  %i.cy = mul nsw i32 %add, %sub
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %indvars.iv353
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !112
  %i.db = sext i16 %i.da to i32                   ; 3 uses
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.cu
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !112
  %i.de = sext i16 %i.dd to i32                   ; 3 uses
  %add257 = add nsw i32 %i.de, %i.db
  %sub258 = sub nsw i32 %i.db, %i.de              ; 2 uses
  %i.df = mul nsw i32 %add257, %sub258
  %i.dg = mul nsw i32 %i.db, %i.ct
  %i.dh = mul nsw i32 %i.de, %i.cx
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = insertelement <4 x i32> poison, i32 %sub, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.di, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.df, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.cy, i64 3
  %i.dn = sitofp <4 x i32> %i.dm to <4 x float>
  %i.do = fadd <4 x float> %i.cq, %i.dn           ; 5 uses
  %i.dp = sitofp i32 %sub258 to float
  %i.dq = fadd float %.1235319, %i.dp             ; 2 uses
  %i.dr = trunc i64 %i.cu to i32
  %i.ds = add i32 %i.dr, 1
  %i.dt = srem i32 %i.ds, %i.bu
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dv = sext i32 %.0231320 to i64
  %i.dw = add nsw i64 %i.bk, %i.dv                ; 5 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dw
  %i.dy = extractelement <4 x float> %i.do, i64 3
  store float %i.dy, ptr %i.dx, align 4, !tbaa !55
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.dw
  %i.ea = extractelement <4 x float> %i.do, i64 2
  store float %i.ea, ptr %i.dz, align 4, !tbaa !55
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dw
  %i.ec = extractelement <4 x float> %i.do, i64 1
  store float %i.ec, ptr %i.eb, align 4, !tbaa !55
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.dw
  %i.ee = extractelement <4 x float> %i.do, i64 0
  store float %i.ee, ptr %i.ed, align 4, !tbaa !55
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dw
  store float %i.dq, ptr %i.ef, align 4, !tbaa !55
  %i.eg = add nsw i32 %.0231320, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_0
begin_hunk_1_@_ZN2cv18DISOpticalFlowImpl25precomputeStructureTensorERNS_3MatES2_S2_S2_S2_S2_S2_:bb.a
  %i.lb = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %i.lc = load ptr, ptr %11, align 8, !tbaa !196  ; 3 uses
  %i.ld = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %wide.trip.count379 = zext nneg i32 %i.fq to i64 ; 3 uses
  %min.iters.check699 = icmp ult i32 %i.fq, 116
  br i1 %min.iters.check699, label %scalar.ph698.preheader, label %vector.memcheck700

vector.memcheck700:                               ; preds = %.preheader298
  %.pre402.pre697 = ptrtoaddr ptr %.pre402.pre to i64 ; 5 uses
  %i.le = ptrtoaddr ptr %i.ld to i64              ; 5 uses
  %i.lf = ptrtoaddr ptr %i.lc to i64              ; 5 uses
  %i.lg = ptrtoaddr ptr %i.lb to i64              ; 5 uses
  %i.lh = ptrtoaddr ptr %i.la to i64              ; 5 uses
  %i.li = sub i64 %i.c, %i.f
  %diff.check = icmp ugt i64 %i.li, -16
  %i.lj = sub i64 %i.c, %i.i
  %diff.check701 = icmp ugt i64 %i.lj, -16
  %conflict.rdx702 = or i1 %diff.check, %diff.check701
  %i.lk = sub i64 %i.c, %i.l
  %diff.check703 = icmp ugt i64 %i.lk, -16
  %conflict.rdx704 = or i1 %conflict.rdx702, %diff.check703
  %i.ll = sub i64 %i.c, %i.o
  %diff.check705 = icmp ugt i64 %i.ll, -16
  %conflict.rdx706 = or i1 %conflict.rdx704, %diff.check705
  %i.lm = sub i64 %i.lh, %i.c
  %diff.check707 = icmp ugt i64 %i.lm, -16
  %conflict.rdx708 = or i1 %conflict.rdx706, %diff.check707
  %i.ln = sub i64 %i.c, %i.lg
  %diff.check709 = icmp ugt i64 %i.ln, -16
  %conflict.rdx710 = or i1 %conflict.rdx708, %diff.check709
  %i.lo = sub i64 %i.c, %i.lf
  %diff.check711 = icmp ugt i64 %i.lo, -16
  %conflict.rdx712 = or i1 %conflict.rdx710, %diff.check711
  %i.lp = sub i64 %i.c, %i.le
  %diff.check713 = icmp ugt i64 %i.lp, -16
  %conflict.rdx714 = or i1 %conflict.rdx712, %diff.check713
  %i.lq = sub i64 %i.c, %.pre402.pre697
  %diff.check715 = icmp ugt i64 %i.lq, -16
  %conflict.rdx716 = or i1 %conflict.rdx714, %diff.check715
  %i.lr = sub i64 %i.f, %i.i
  %diff.check717 = icmp ugt i64 %i.lr, -16
  %conflict.rdx718 = or i1 %conflict.rdx716, %diff.check717
  %i.ls = sub i64 %i.f, %i.l
  %diff.check719 = icmp ugt i64 %i.ls, -16
  %conflict.rdx720 = or i1 %conflict.rdx718, %diff.check719
  %i.lt = sub i64 %i.f, %i.o
  %diff.check721 = icmp ugt i64 %i.lt, -16
  %conflict.rdx722 = or i1 %conflict.rdx720, %diff.check721
  %i.lu = sub i64 %i.lh, %i.f
  %diff.check723 = icmp ugt i64 %i.lu, -16
  %conflict.rdx724 = or i1 %conflict.rdx722, %diff.check723
  %i.lv = sub i64 %i.lg, %i.f
  %diff.check725 = icmp ugt i64 %i.lv, -16
  %conflict.rdx726 = or i1 %conflict.rdx724, %diff.check725
  %i.lw = sub i64 %i.f, %i.lf
  %diff.check727 = icmp ugt i64 %i.lw, -16
  %conflict.rdx728 = or i1 %conflict.rdx726, %diff.check727
  %i.lx = sub i64 %i.f, %i.le
  %diff.check729 = icmp ugt i64 %i.lx, -16
  %conflict.rdx730 = or i1 %conflict.rdx728, %diff.check729
  %i.ly = sub i64 %i.f, %.pre402.pre697
  %diff.check731 = icmp ugt i64 %i.ly, -16
  %conflict.rdx732 = or i1 %conflict.rdx730, %diff.check731
  %i.lz = sub i64 %i.i, %i.l
  %diff.check733 = icmp ugt i64 %i.lz, -16
  %conflict.rdx734 = or i1 %conflict.rdx732, %diff.check733
  %i.ma = sub i64 %i.i, %i.o
  %diff.check735 = icmp ugt i64 %i.ma, -16
  %conflict.rdx736 = or i1 %conflict.rdx734, %diff.check735
  %i.mb = sub i64 %i.lh, %i.i
  %diff.check737 = icmp ugt i64 %i.mb, -16
  %conflict.rdx738 = or i1 %conflict.rdx736, %diff.check737
  %i.mc = sub i64 %i.lg, %i.i
  %diff.check739 = icmp ugt i64 %i.mc, -16
  %conflict.rdx740 = or i1 %conflict.rdx738, %diff.check739
  %i.md = sub i64 %i.lf, %i.i
  %diff.check741 = icmp ugt i64 %i.md, -16
  %conflict.rdx742 = or i1 %conflict.rdx740, %diff.check741
  %i.me = sub i64 %i.i, %i.le
  %diff.check743 = icmp ugt i64 %i.me, -16
  %conflict.rdx744 = or i1 %conflict.rdx742, %diff.check743
  %i.mf = sub i64 %i.i, %.pre402.pre697
  %diff.check745 = icmp ugt i64 %i.mf, -16
  %conflict.rdx746 = or i1 %conflict.rdx744, %diff.check745
  %i.mg = sub i64 %i.l, %i.o
  %diff.check747 = icmp ugt i64 %i.mg, -16
  %conflict.rdx748 = or i1 %conflict.rdx746, %diff.check747
  %i.mh = sub i64 %i.lh, %i.l
  %diff.check749 = icmp ugt i64 %i.mh, -16
  %conflict.rdx750 = or i1 %conflict.rdx748, %diff.check749
  %i.mi = sub i64 %i.lg, %i.l
  %diff.check751 = icmp ugt i64 %i.mi, -16
  %conflict.rdx752 = or i1 %conflict.rdx750, %diff.check751
  %i.mj = sub i64 %i.lf, %i.l
  %diff.check753 = icmp ugt i64 %i.mj, -16
  %conflict.rdx754 = or i1 %conflict.rdx752, %diff.check753
  %i.mk = sub i64 %i.le, %i.l
  %diff.check755 = icmp ugt i64 %i.mk, -16
  %conflict.rdx756 = or i1 %conflict.rdx754, %diff.check755
  %i.ml = sub i64 %i.l, %.pre402.pre697
  %diff.check757 = icmp ugt i64 %i.ml, -16
  %conflict.rdx758 = or i1 %conflict.rdx756, %diff.check757
  %i.mm = sub i64 %i.lh, %i.o
  %diff.check759 = icmp ugt i64 %i.mm, -16
  %conflict.rdx760 = or i1 %conflict.rdx758, %diff.check759
  %i.mn = sub i64 %i.lg, %i.o
  %diff.check761 = icmp ugt i64 %i.mn, -16
  %conflict.rdx762 = or i1 %conflict.rdx760, %diff.check761
  %i.mo = sub i64 %i.lf, %i.o
  %diff.check763 = icmp ugt i64 %i.mo, -16
  %conflict.rdx764 = or i1 %conflict.rdx762, %diff.check763
  %i.mp = sub i64 %i.le, %i.o
  %diff.check765 = icmp ugt i64 %i.mp, -16
  %conflict.rdx766 = or i1 %conflict.rdx764, %diff.check765
  %i.mq = sub i64 %.pre402.pre697, %i.o
  %diff.check767 = icmp ugt i64 %i.mq, -16
  %conflict.rdx768 = or i1 %conflict.rdx766, %diff.check767
  br i1 %conflict.rdx768, label %scalar.ph698.preheader, label %vector.ph769

vector.ph769:                                     ; preds = %vector.memcheck700
  %n.vec770 = and i64 %wide.trip.count379, 2147483644 ; 3 uses
  br label %vector.body771

vector.body771:                                   ; preds = %vector.body771, %vector.ph769
  %index772 = phi i64 [ 0, %vector.ph769 ], [ %index.next778, %vector.body771 ] ; 11 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %index772
  %wide.load773 = load <4 x float>, ptr %i.mr, align 4, !tbaa !55
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index772
  store <4 x float> %wide.load773, ptr %i.ms, align 4, !tbaa !55
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index772
  %wide.load774 = load <4 x float>, ptr %i.mt, align 4, !tbaa !55
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index772
  store <4 x float> %wide.load774, ptr %i.mu, align 4, !tbaa !55
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index772
  %wide.load775 = load <4 x float>, ptr %i.mv, align 4, !tbaa !55
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index772
  store <4 x float> %wide.load775, ptr %i.mw, align 4, !tbaa !55
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index772
  %wide.load776 = load <4 x float>, ptr %i.mx, align 4, !tbaa !55
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index772
  store <4 x float> %wide.load776, ptr %i.my, align 4, !tbaa !55
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre, i64 %index772
  %wide.load777 = load <4 x float>, ptr %i.mz, align 4, !tbaa !55
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index772
  store <4 x float> %wide.load777, ptr %i.na, align 4, !tbaa !55
  %index.next778 = add nuw i64 %index772, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next778, %n.vec770
  br i1 %i.nb, label %middle.block779, label %vector.body771, !llvm.loop !169

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
  %i.nc = add nuw nsw i64 %indvars.iv366, %i.ki   ; 5 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nc
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !55
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv366 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !55
  %i.nh = fadd float %i.ne, %i.ng
  store float %i.nh, ptr %i.nf, align 4, !tbaa !55
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.nc
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !55
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv366 ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !55
  %i.nm = fadd float %i.nj, %i.nl
  store float %i.nm, ptr %i.nk, align 4, !tbaa !55
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.nc
  %i.no = load float, ptr %i.nn, align 4, !tbaa !55
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv366 ; 2 uses
  %i.nq = load float, ptr %i.np, align 4, !tbaa !55
  %i.nr = fadd float %i.no, %i.nq
  store float %i.nr, ptr %i.np, align 4, !tbaa !55
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.nc
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !55
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv366 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !55
  %i.nw = fadd float %i.nt, %i.nv
  store float %i.nw, ptr %i.nu, align 4, !tbaa !55
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.nc
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !55
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre.pre403.pre, i64 %indvars.iv366 ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !55
  %i.ob = fadd float %i.ny, %i.oa
  store float %i.ob, ptr %i.nz, align 4, !tbaa !55
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %i.gh
  br i1 %exitcond370.not, label %._crit_edge334, label %scalar.ph, !llvm.loop !171

.preheader297:                                    ; preds = %scalar.ph698, %middle.block779, %.preheader300.thread
  %.pre402.pre461 = phi ptr [ %i.fp, %.preheader300.thread ], [ %.pre402.pre, %middle.block779 ], [ %.pre402.pre, %scalar.ph698 ] ; 16 uses
  %i.oc = phi i32 [ %i.gc, %.preheader300.thread ], [ %i.fz, %middle.block779 ], [ %i.fz, %scalar.ph698 ] ; 4 uses
  %i.od = load i32, ptr %i.z, align 8, !tbaa !106 ; 2 uses
  %i.oe = icmp slt i32 %i.oc, %i.od
  br i1 %i.oe, label %.preheader296.lr.ph, label %._crit_edge347

.preheader296.lr.ph:                              ; preds = %.preheader297
  %i.of = load ptr, ptr %9, align 8               ; 10 uses
  %i.og = load ptr, ptr %10, align 8              ; 10 uses
  %i.oh = load ptr, ptr %11, align 8              ; 10 uses
  %i.oi = ptrtoaddr ptr %i.of to i64              ; 5 uses
  %i.oj = load ptr, ptr %12, align 8              ; 13 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !52 ; 2 uses
  %i.om = sext i32 %i.oc to i64                   ; 4 uses
  %i.on = sext i32 %i.fq to i64                   ; 5 uses
  %wide.trip.count394 = sext i32 %i.od to i64     ; 3 uses
  %wide.trip.count384 = zext i32 %i.fq to i64     ; 7 uses
  %wide.trip.count389 = zext nneg i32 %i.fq to i64
  %i.oo = sub i64 %i.c, %i.oi
  %i.op = sub i64 %i.f, %i.oi
  %i.oq = sub i64 %i.i, %i.oi
  %i.or = sub i64 %i.l, %i.oi
  %19 = ptrtoaddr ptr %i.oh to i64                ; 2 uses
  %20 = insertelement <2 x ptr> poison, ptr %i.og, i64 0
  %21 = insertelement <2 x ptr> %20, ptr %i.oh, i64 1 ; 2 uses
  %22 = ptrtoaddr ptr %i.og to i64                ; 4 uses
  %.pre402.pre461798 = ptrtoaddr ptr %.pre402.pre461 to i64 ; 4 uses
  %23 = insertelement <2 x ptr> poison, ptr %i.oj, i64 0 ; 2 uses
  %24 = insertelement <2 x ptr> %23, ptr %.pre402.pre461, i64 1
  %25 = ptrtoaddr ptr %i.oj to i64                ; 3 uses
  %i.os = sub i64 %i.f, %22
  %i.ot = sub i64 %i.i, %22
  %i.ou = sub i64 %i.i, %19
  %i.ov = sub i64 %i.l, %22
  %26 = shufflevector <2 x ptr> %21, <2 x ptr> %23, <8 x i32> <i32 poison, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = ptrtoaddr <8 x ptr> %26 to <8 x i64>      ; 2 uses
  %28 = insertelement <8 x i64> %27, i64 0, i64 0
  %29 = insertelement <8 x i64> %28, i64 %i.oi, i64 3
  %30 = shufflevector <2 x ptr> %24, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %31 = ptrtoaddr <8 x ptr> %30 to <8 x i64>
  %32 = shufflevector <8 x i64> %29, <8 x i64> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 8, i32 9>
  %33 = shufflevector <2 x ptr> %21, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %34 = ptrtoaddr <8 x ptr> %33 to <8 x i64>
  %35 = shufflevector <8 x i64> %32, <8 x i64> %34, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ow = shl nuw nsw i64 %wide.trip.count384, 2  ; 6 uses
  %scevgep869 = getelementptr i8, ptr %i.of, i64 %i.ow ; 4 uses
  %scevgep870 = getelementptr i8, ptr %i.og, i64 %i.ow ; 3 uses
  %scevgep871 = getelementptr i8, ptr %i.oh, i64 %i.ow ; 3 uses
  %scevgep872 = getelementptr i8, ptr %i.oj, i64 %i.ow ; 6 uses
  %scevgep873 = getelementptr i8, ptr %.pre402.pre461, i64 %i.ow ; 6 uses
  %i.ox = xor i64 %i.om, -1
  %i.oy = add nsw i64 %i.ox, %wide.trip.count394
  %i.oz = mul i64 %i.oy, %i.on
  %i.pa = add i64 %i.oz, %wide.trip.count384
  %i.pb = shl i64 %i.pa, 2                        ; 5 uses
  %scevgep874 = getelementptr i8, ptr %i.q, i64 %i.pb ; 5 uses
  %i.pc = mul nsw i64 %i.on, %i.om
  %i.pd = shl i64 %i.pc, 2                        ; 5 uses
  %scevgep875 = getelementptr i8, ptr %i.q, i64 %i.pd ; 5 uses
  %i.pe = shl nsw i64 %wide.trip.count394, 2
  %i.pf = add nsw i64 %i.pe, -4
  %i.pg = mul i64 %i.pf, %i.on
  %i.ph = add i64 %i.pg, %i.ow                    ; 5 uses
  %scevgep876 = getelementptr i8, ptr %i.q, i64 %i.ph ; 5 uses
  %scevgep877 = getelementptr i8, ptr %i.s, i64 %i.pb ; 5 uses
  %scevgep878 = getelementptr i8, ptr %i.s, i64 %i.pd ; 5 uses
  %scevgep879 = getelementptr i8, ptr %i.s, i64 %i.ph ; 5 uses
  %scevgep880 = getelementptr i8, ptr %i.u, i64 %i.pb ; 5 uses
  %scevgep881 = getelementptr i8, ptr %i.u, i64 %i.pd ; 5 uses
  %scevgep882 = getelementptr i8, ptr %i.u, i64 %i.ph ; 5 uses
  %scevgep883 = getelementptr i8, ptr %i.w, i64 %i.pb ; 5 uses
  %scevgep884 = getelementptr i8, ptr %i.w, i64 %i.pd ; 5 uses
  %i.pi = insertelement <4 x ptr> poison, ptr %i.q, i64 0
  %i.pj = insertelement <4 x ptr> %i.pi, ptr %i.s, i64 1
  %i.pk = insertelement <4 x ptr> %i.pj, ptr %i.u, i64 2
  %i.pl = insertelement <4 x ptr> %i.pk, ptr %i.w, i64 3
  %i.pm = insertelement <4 x ptr> poison, ptr %scevgep875, i64 0
  %i.pn = insertelement <4 x ptr> %i.pm, ptr %scevgep878, i64 1
  %i.po = insertelement <4 x ptr> %i.pn, ptr %scevgep881, i64 2
  %i.pp = insertelement <4 x ptr> %i.po, ptr %scevgep884, i64 3
  %i.pq = shufflevector <4 x ptr> %i.pl, <4 x ptr> %i.pp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %scevgep885 = getelementptr i8, ptr %i.w, i64 %i.ph ; 5 uses
  %scevgep886 = getelementptr i8, ptr %i.y, i64 %i.pb ; 5 uses
  %scevgep887 = getelementptr i8, ptr %i.y, i64 %i.pd ; 5 uses
  %scevgep888 = getelementptr i8, ptr %i.y, i64 %i.ph ; 5 uses
  %36 = shufflevector <8 x i64> %27, <8 x i64> <i64 poison, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <8 x i32> <i32 1, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pr = insertelement <8 x ptr> poison, ptr %i.of, i64 0
  %i.ps = shufflevector <8 x ptr> %i.pr, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.pt = insertelement <8 x ptr> poison, ptr %scevgep870, i64 0 ; 2 uses
  %i.pu = insertelement <8 x ptr> %i.pt, ptr %scevgep871, i64 1
  %i.pv = insertelement <8 x ptr> %i.pu, ptr %scevgep872, i64 2
  %i.pw = insertelement <8 x ptr> %i.pv, ptr %scevgep873, i64 3
  %i.px = insertelement <8 x ptr> %i.pw, ptr %scevgep874, i64 4
  %i.py = insertelement <8 x ptr> %i.px, ptr %scevgep876, i64 5
  %i.pz = insertelement <8 x ptr> %i.py, ptr %scevgep877, i64 6
  %i.qa = insertelement <8 x ptr> %i.pz, ptr %scevgep879, i64 7
  %i.qb = insertelement <8 x ptr> poison, ptr %i.og, i64 0 ; 2 uses
  %i.qc = insertelement <8 x ptr> %i.qb, ptr %i.oh, i64 1
  %i.qd = insertelement <8 x ptr> %i.qc, ptr %i.oj, i64 2
  %i.qe = insertelement <8 x ptr> %i.qd, ptr %.pre402.pre461, i64 3
  %i.qf = insertelement <8 x ptr> %i.qe, ptr %i.q, i64 4
  %i.qg = insertelement <8 x ptr> %i.qf, ptr %scevgep875, i64 5
  %i.qh = insertelement <8 x ptr> %i.qg, ptr %i.s, i64 6
  %i.qi = insertelement <8 x ptr> %i.qh, ptr %scevgep878, i64 7
  %i.qj = insertelement <8 x ptr> poison, ptr %scevgep869, i64 0
  %i.qk = shufflevector <8 x ptr> %i.qj, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ql = shufflevector <8 x ptr> %i.qb, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qm = insertelement <8 x ptr> poison, ptr %scevgep871, i64 0 ; 2 uses
  %i.qn = insertelement <8 x ptr> %i.qm, ptr %scevgep872, i64 1
  %i.qo = insertelement <8 x ptr> %i.qn, ptr %scevgep873, i64 2
  %i.qp = insertelement <8 x ptr> %i.qo, ptr %scevgep874, i64 3
  %i.qq = insertelement <8 x ptr> %i.qp, ptr %scevgep876, i64 4
  %i.qr = insertelement <8 x ptr> %i.qq, ptr %scevgep877, i64 5
  %i.qs = insertelement <8 x ptr> %i.qr, ptr %scevgep879, i64 6
  %i.qt = insertelement <8 x ptr> %i.qs, ptr %scevgep880, i64 7
  %i.qu = insertelement <8 x ptr> poison, ptr %i.oh, i64 0 ; 2 uses
  %i.qv = insertelement <8 x ptr> %i.qu, ptr %i.oj, i64 1
  %i.qw = insertelement <8 x ptr> %i.qv, ptr %.pre402.pre461, i64 2
  %i.qx = insertelement <8 x ptr> %i.qw, ptr %i.q, i64 3
  %i.qy = insertelement <8 x ptr> %i.qx, ptr %scevgep875, i64 4
  %i.qz = insertelement <8 x ptr> %i.qy, ptr %i.s, i64 5
  %i.ra = insertelement <8 x ptr> %i.qz, ptr %scevgep878, i64 6
  %i.rb = insertelement <8 x ptr> %i.ra, ptr %i.u, i64 7
  %i.rc = shufflevector <8 x ptr> %i.pt, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.rd = shufflevector <8 x ptr> %i.qu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.re = insertelement <8 x ptr> poison, ptr %scevgep872, i64 0 ; 2 uses
  %i.rf = insertelement <8 x ptr> %i.re, ptr %scevgep873, i64 1
  %i.rg = insertelement <8 x ptr> %i.rf, ptr %scevgep874, i64 2
  %i.rh = insertelement <8 x ptr> %i.rg, ptr %scevgep876, i64 3
  %i.ri = insertelement <8 x ptr> %i.rh, ptr %scevgep877, i64 4
  %i.rj = insertelement <8 x ptr> %i.ri, ptr %scevgep879, i64 5
  %i.rk = insertelement <8 x ptr> %i.rj, ptr %scevgep880, i64 6
  %i.rl = insertelement <8 x ptr> %i.rk, ptr %scevgep882, i64 7
  %i.rm = insertelement <8 x ptr> poison, ptr %i.oj, i64 0 ; 2 uses
  %i.rn = insertelement <8 x ptr> %i.rm, ptr %.pre402.pre461, i64 1
  %i.ro = insertelement <8 x ptr> %i.rn, ptr %i.q, i64 2
  %i.rp = insertelement <8 x ptr> %i.ro, ptr %scevgep875, i64 3
  %i.rq = insertelement <8 x ptr> %i.rp, ptr %i.s, i64 4
  %i.rr = insertelement <8 x ptr> %i.rq, ptr %scevgep878, i64 5
  %i.rs = insertelement <8 x ptr> %i.rr, ptr %i.u, i64 6
  %i.rt = insertelement <8 x ptr> %i.rs, ptr %scevgep881, i64 7
  %i.ru = shufflevector <8 x ptr> %i.qm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.rv = shufflevector <8 x ptr> %i.rm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.rw = insertelement <8 x ptr> poison, ptr %scevgep873, i64 0 ; 2 uses
  %i.rx = insertelement <8 x ptr> %i.rw, ptr %scevgep874, i64 1
  %i.ry = insertelement <8 x ptr> %i.rx, ptr %scevgep876, i64 2
  %i.rz = insertelement <8 x ptr> %i.ry, ptr %scevgep877, i64 3
  %i.sa = insertelement <8 x ptr> %i.rz, ptr %scevgep879, i64 4
  %i.sb = insertelement <8 x ptr> %i.sa, ptr %scevgep880, i64 5
  %i.sc = insertelement <8 x ptr> %i.sb, ptr %scevgep882, i64 6
  %i.sd = insertelement <8 x ptr> %i.sc, ptr %scevgep883, i64 7
  %i.se = insertelement <8 x ptr> poison, ptr %.pre402.pre461, i64 0 ; 2 uses
  %i.sf = insertelement <8 x ptr> %i.se, ptr %i.q, i64 1
  %i.sg = insertelement <8 x ptr> %i.sf, ptr %scevgep875, i64 2
  %i.sh = insertelement <8 x ptr> %i.sg, ptr %i.s, i64 3
  %i.si = insertelement <8 x ptr> %i.sh, ptr %scevgep878, i64 4
  %i.sj = insertelement <8 x ptr> %i.si, ptr %i.u, i64 5
  %i.sk = insertelement <8 x ptr> %i.sj, ptr %scevgep881, i64 6
  %i.sl = insertelement <8 x ptr> %i.sk, ptr %i.w, i64 7
  %i.sm = shufflevector <8 x ptr> %i.re, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.sn = shufflevector <8 x ptr> %i.se, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.so = insertelement <8 x ptr> poison, ptr %scevgep874, i64 0
  %i.sp = insertelement <8 x ptr> %i.so, ptr %scevgep877, i64 1
  %i.sq = insertelement <8 x ptr> %i.sp, ptr %scevgep880, i64 2
  %i.sr = insertelement <8 x ptr> %i.sq, ptr %scevgep883, i64 3
  %i.ss = insertelement <8 x ptr> %i.sr, ptr %scevgep876, i64 4
  %i.st = insertelement <8 x ptr> %i.ss, ptr %scevgep879, i64 5
  %i.su = insertelement <8 x ptr> %i.st, ptr %scevgep882, i64 6
  %i.sv = insertelement <8 x ptr> %i.su, ptr %scevgep885, i64 7
  %i.sw = shufflevector <8 x ptr> %i.rw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.sx = insertelement <4 x ptr> poison, ptr %i.of, i64 0
  %i.sy = shufflevector <4 x ptr> %i.sx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.sz = insertelement <4 x ptr> poison, ptr %scevgep880, i64 0
  %i.ta = insertelement <4 x ptr> %i.sz, ptr %scevgep882, i64 1
  %i.tb = insertelement <4 x ptr> %i.ta, ptr %scevgep883, i64 2
  %i.tc = insertelement <4 x ptr> %i.tb, ptr %scevgep885, i64 3
  %i.td = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.te = insertelement <4 x ptr> %i.td, ptr %scevgep881, i64 1
  %i.tf = insertelement <4 x ptr> %i.te, ptr %i.w, i64 2
  %i.tg = insertelement <4 x ptr> %i.tf, ptr %scevgep884, i64 3
  %i.th = insertelement <4 x ptr> poison, ptr %scevgep869, i64 0
  %i.ti = shufflevector <4 x ptr> %i.th, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tj = insertelement <4 x ptr> poison, ptr %i.og, i64 0
  %i.tk = shufflevector <4 x ptr> %i.tj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tl = insertelement <4 x ptr> poison, ptr %scevgep882, i64 0
  %i.tm = insertelement <4 x ptr> %i.tl, ptr %scevgep883, i64 1
  %i.tn = insertelement <4 x ptr> %i.tm, ptr %scevgep885, i64 2
  %i.to = insertelement <4 x ptr> %i.tn, ptr %scevgep886, i64 3
  %i.tp = insertelement <4 x ptr> poison, ptr %scevgep881, i64 0
  %i.tq = insertelement <4 x ptr> %i.tp, ptr %i.w, i64 1
  %i.tr = insertelement <4 x ptr> %i.tq, ptr %scevgep884, i64 2
  %i.ts = insertelement <4 x ptr> %i.tr, ptr %i.y, i64 3
  %i.tt = insertelement <4 x ptr> poison, ptr %scevgep870, i64 0
  %i.tu = shufflevector <4 x ptr> %i.tt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tv = insertelement <4 x ptr> poison, ptr %i.oh, i64 0
  %i.tw = shufflevector <4 x ptr> %i.tv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tx = insertelement <4 x ptr> poison, ptr %scevgep883, i64 0
  %i.ty = insertelement <4 x ptr> %i.tx, ptr %scevgep885, i64 1
  %i.tz = insertelement <4 x ptr> %i.ty, ptr %scevgep886, i64 2
  %i.ua = insertelement <4 x ptr> %i.tz, ptr %scevgep888, i64 3
  %i.ub = insertelement <4 x ptr> poison, ptr %i.w, i64 0
  %i.uc = insertelement <4 x ptr> %i.ub, ptr %scevgep884, i64 1
  %i.ud = insertelement <4 x ptr> %i.uc, ptr %i.y, i64 2
  %i.ue = insertelement <4 x ptr> %i.ud, ptr %scevgep887, i64 3
  %i.uf = insertelement <4 x ptr> poison, ptr %scevgep871, i64 0
  %i.ug = shufflevector <4 x ptr> %i.uf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %invariant.op = sub i32 1, %i.oc
  %min.iters.check1178 = icmp ult i32 %i.fq, 40
  %i.uh = icmp ult <8 x ptr> %i.ps, %i.qa
  %i.ui = icmp ult <8 x ptr> %i.qi, %i.qk
  %i.uj = and <8 x i1> %i.uh, %i.ui
  %i.uk = icmp ult <4 x ptr> %i.sy, %i.tc
  %i.ul = icmp ult <4 x ptr> %i.tg, %i.ti
  %i.um = and <4 x i1> %i.uk, %i.ul
  %bound0943 = icmp ult ptr %i.of, %scevgep886
  %bound1944 = icmp ult ptr %i.y, %scevgep869
  %found.conflict945 = and i1 %bound0943, %bound1944
  %bound0948 = icmp ult ptr %i.of, %scevgep888
  %bound1949 = icmp ult ptr %scevgep887, %scevgep869
  %found.conflict950 = and i1 %bound0948, %bound1949
  %i.un = icmp ult <8 x ptr> %i.ql, %i.qt
  %i.uo = icmp ult <8 x ptr> %i.rb, %i.rc
  %i.up = and <8 x i1> %i.un, %i.uo
  %i.uq = icmp ult <4 x ptr> %i.tk, %i.to
  %i.ur = icmp ult <4 x ptr> %i.ts, %i.tu
  %i.us = and <4 x i1> %i.uq, %i.ur
  %bound01010 = icmp ult ptr %i.og, %scevgep888
  %bound11011 = icmp ult ptr %scevgep887, %scevgep870
  %found.conflict1012 = and i1 %bound01010, %bound11011
  %i.ut = icmp ult <8 x ptr> %i.rd, %i.rl
  %i.uu = icmp ult <8 x ptr> %i.rt, %i.ru
  %i.uv = and <8 x i1> %i.ut, %i.uu
  %i.uw = icmp ult <4 x ptr> %i.tw, %i.ua
  %i.ux = icmp ult <4 x ptr> %i.ue, %i.ug
  %i.uy = and <4 x i1> %i.uw, %i.ux
  %i.uz = icmp ult <8 x ptr> %i.rv, %i.sd
  %i.va = icmp ult <8 x ptr> %i.sl, %i.sm
  %i.vb = and <8 x i1> %i.uz, %i.va
  %bound01112 = icmp ult ptr %i.oj, %scevgep885
  %bound11113 = icmp ult ptr %scevgep884, %scevgep872
  %found.conflict1114 = and i1 %bound01112, %bound11113
  %bound01117 = icmp ult ptr %i.oj, %scevgep886
  %bound11118 = icmp ult ptr %i.y, %scevgep872
  %found.conflict1119 = and i1 %bound01117, %bound11118
  %bound01122 = icmp ult ptr %i.oj, %scevgep888
  %bound11123 = icmp ult ptr %scevgep887, %scevgep872
  %found.conflict1124 = and i1 %bound01122, %bound11123
  %i.vc = icmp ult <8 x ptr> %i.sn, %i.sv
  %i.vd = icmp ult <8 x ptr> %i.pq, %i.sw
  %i.ve = and <8 x i1> %i.vc, %i.vd
  %bound01167 = icmp ult ptr %.pre402.pre461, %scevgep886
  %bound11168 = icmp ult ptr %i.y, %scevgep873
  %found.conflict1169 = and i1 %bound01167, %bound11168
  %bound01172 = icmp ult ptr %.pre402.pre461, %scevgep888
  %bound11173 = icmp ult ptr %scevgep887, %scevgep873
  %found.conflict1174 = and i1 %bound01172, %bound11173
  %rdx.op = or <8 x i1> %i.uj, %i.up
  %rdx.op1220 = or <8 x i1> %rdx.op, %i.uv
  %rdx.op1221 = or <8 x i1> %rdx.op1220, %i.vb
  %rdx.op1222 = or <8 x i1> %rdx.op1221, %i.ve
  %i.vf = bitcast <8 x i1> %rdx.op1222 to i8
  %i.vg = icmp ne i8 %i.vf, 0
  %rdx.op1243 = or <4 x i1> %i.um, %i.us
  %rdx.op1244 = or <4 x i1> %rdx.op1243, %i.uy
  %i.vh = bitcast <4 x i1> %rdx.op1244 to i4
  %i.vi = icmp ne i4 %i.vh, 0
  %op.rdx1245 = or i1 %i.vi, %found.conflict945
  %op.rdx1246 = or i1 %found.conflict950, %found.conflict1012
  %op.rdx1247 = or i1 %found.conflict1114, %found.conflict1119
  %op.rdx1248 = or i1 %found.conflict1124, %found.conflict1169
  %op.rdx1249 = or i1 %found.conflict1174, %i.vg
  %op.rdx1250 = or i1 %op.rdx1245, %op.rdx1246
  %op.rdx1251 = or i1 %op.rdx1247, %op.rdx1248
  %op.rdx1252 = or i1 %op.rdx1250, %op.rdx1251
  %op.rdx1253 = or i1 %op.rdx1252, %op.rdx1249
  %n.vec1180 = and i64 %wide.trip.count384, 2147483644 ; 3 uses
  %cmp.n1200 = icmp eq i64 %n.vec1180, %wide.trip.count384
  %invariant.op1267 = sub i32 1, %i.oc
  %min.iters.check854 = icmp ult i32 %i.fq, 52
  %i.vj = sub i64 %i.c, %i.f
  %diff.check783 = icmp ugt i64 %i.vj, -16
  %i.vk = sub i64 %i.c, %i.i
  %diff.check784 = icmp ugt i64 %i.vk, -16
  %i.vl = sub i64 %i.c, %i.l
  %diff.check786 = icmp ugt i64 %i.vl, -16
  %i.vm = sub i64 %i.c, %i.o
  %diff.check788 = icmp ugt i64 %i.vm, -16
  %i.vn = sub i64 %i.f, %i.i
  %diff.check801 = icmp ugt i64 %i.vn, -16
  %i.vo = sub i64 %i.f, %i.l
  %diff.check803 = icmp ugt i64 %i.vo, -16
  %i.vp = sub i64 %i.f, %i.o
  %diff.check805 = icmp ugt i64 %i.vp, -16
  %invariant.op1268 = add i64 %i.oo, -1
  %invariant.op1269 = sub i64 %i.c, %22
  %invariant.op1271 = sub i64 %i.c, %19
  %invariant.op1273 = sub i64 %i.c, %25
  %invariant.op1275 = sub i64 %i.c, %.pre402.pre461798
  %invariant.op1277 = add i64 %i.op, -1
  %invariant.op1279 = add i64 %i.os, -1
  %invariant.op1283 = sub i64 %i.f, %25
  %invariant.op1285 = sub i64 %i.f, %.pre402.pre461798
  %i.vq = sub i64 %i.i, %i.l
  %diff.check817 = icmp ugt i64 %i.vq, -16
  %i.vr = sub i64 %i.i, %i.o
  %diff.check819 = icmp ugt i64 %i.vr, -16
  %invariant.op1287 = add i64 %i.oq, -1
  %invariant.op1289 = add i64 %i.ot, -1
  %invariant.op1291 = add i64 %i.ou, -1
  %invariant.op1293 = sub i64 %i.i, %25
  %invariant.op1295 = sub i64 %i.i, %.pre402.pre461798
  %i.vs = sub i64 %i.l, %i.o
  %diff.check831 = icmp ugt i64 %i.vs, -16
  %invariant.op1301 = add i64 %i.or, -1
  %invariant.op1303 = add i64 %i.ov, -1
  %invariant.op1305 = sub i64 %i.l, %.pre402.pre461798
  %i.vt = insertelement <8 x i1> poison, i1 %diff.check817, i64 2
  %i.vu = insertelement <8 x i1> %i.vt, i1 %diff.check819, i64 3
  %i.vv = insertelement <8 x i1> %i.vu, i1 %diff.check831, i64 6
  %37 = add <8 x i64> %35, %36
  %invariant.op1313 = sub <8 x i64> %18, %37
  %op.rdx1202 = or i1 %diff.check784, %diff.check786
  %op.rdx1206 = or i1 %diff.check803, %diff.check805
  %invariant.op1317 = or i1 %diff.check783, %op.rdx1202
  %invariant.op1318 = or i1 %diff.check801, %op.rdx1206
  %n.vec856 = and i64 %wide.trip.count384, 2147483644 ; 3 uses
  %cmp.n866 = icmp eq i64 %n.vec856, %wide.trip.count384
  br label %.preheader296

scalar.ph698:                                     ; preds = %scalar.ph698.preheader, %scalar.ph698
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph698 ], [ %indvars.iv376.ph, %scalar.ph698.preheader ] ; 11 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv376
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !55
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv376
  store float %i.vx, ptr %i.vy, align 4, !tbaa !55
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv376
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !55
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv376
  store float %i.wa, ptr %i.wb, align 4, !tbaa !55
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv376
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !55
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv376
  store float %i.wd, ptr %i.we, align 4, !tbaa !55
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv376
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !55
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv376
  store float %i.wg, ptr %i.wh, align 4, !tbaa !55
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre, i64 %indvars.iv376
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !55
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv376
  store float %i.wj, ptr %i.wk, align 4, !tbaa !55
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.preheader297, label %scalar.ph698, !llvm.loop !172

.preheader296:                                    ; preds = %.preheader296.lr.ph, %bb.x
  %indvars.iv391 = phi i64 [ %i.om, %.preheader296.lr.ph ], [ %indvars.iv.next392, %bb.x ] ; 5 uses
  %.0225345 = phi i32 [ 1, %.preheader296.lr.ph ], [ %.1, %bb.x ] ; 4 uses
  br i1 %i.fr, label %.lr.ph340, label %._crit_edge341.thread

.lr.ph340:                                        ; preds = %.preheader296
  %i.wl = mul nsw i64 %indvars.iv391, %i.on       ; 2 uses
  %i.wm = sub nsw i64 %indvars.iv391, %i.om
  %i.wn = mul nuw nsw i64 %i.wm, %i.on            ; 2 uses
  %brmerge1319 = select i1 %min.iters.check1178, i1 true, i1 %op.rdx1253
  br i1 %brmerge1319, label %scalar.ph1177.preheader, label %vector.body1181

vector.body1181:                                  ; preds = %.lr.ph340, %vector.body1181
  %index1182 = phi i64 [ %index.next1198, %vector.body1181 ], [ 0, %.lr.ph340 ] ; 8 uses
  %i.wo = add nsw i64 %index1182, %i.wl           ; 5 uses
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.wo
  %wide.load1183 = load <4 x float>, ptr %i.wp, align 4, !tbaa !55, !alias.scope !213
  %i.wq = add nsw i64 %index1182, %i.wn           ; 5 uses
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.wq
  %wide.load1184 = load <4 x float>, ptr %i.wr, align 4, !tbaa !55, !alias.scope !214
  %i.ws = fsub <4 x float> %wide.load1183, %wide.load1184
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index1182 ; 2 uses
  %wide.load1185 = load <4 x float>, ptr %i.wt, align 4, !tbaa !55, !alias.scope !215, !noalias !216
  %i.wu = fadd <4 x float> %i.ws, %wide.load1185
  store <4 x float> %i.wu, ptr %i.wt, align 4, !tbaa !55, !alias.scope !215, !noalias !216
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.wo
  %wide.load1186 = load <4 x float>, ptr %i.wv, align 4, !tbaa !55, !alias.scope !217
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.wq
  %wide.load1187 = load <4 x float>, ptr %i.ww, align 4, !tbaa !55, !alias.scope !218
  %i.wx = fsub <4 x float> %wide.load1186, %wide.load1187
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index1182 ; 2 uses
  %wide.load1188 = load <4 x float>, ptr %i.wy, align 4, !tbaa !55, !alias.scope !219, !noalias !220
  %i.wz = fadd <4 x float> %i.wx, %wide.load1188
  store <4 x float> %i.wz, ptr %i.wy, align 4, !tbaa !55, !alias.scope !219, !noalias !220
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.wo
  %wide.load1189 = load <4 x float>, ptr %i.xa, align 4, !tbaa !55, !alias.scope !221
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.wq
  %wide.load1190 = load <4 x float>, ptr %i.xb, align 4, !tbaa !55, !alias.scope !222
  %i.xc = fsub <4 x float> %wide.load1189, %wide.load1190
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index1182 ; 2 uses
  %wide.load1191 = load <4 x float>, ptr %i.xd, align 4, !tbaa !55, !alias.scope !223, !noalias !224
  %i.xe = fadd <4 x float> %i.xc, %wide.load1191
  store <4 x float> %i.xe, ptr %i.xd, align 4, !tbaa !55, !alias.scope !223, !noalias !224
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.wo
  %wide.load1192 = load <4 x float>, ptr %i.xf, align 4, !tbaa !55, !alias.scope !225
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.wq
  %wide.load1193 = load <4 x float>, ptr %i.xg, align 4, !tbaa !55, !alias.scope !226
  %i.xh = fsub <4 x float> %wide.load1192, %wide.load1193
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index1182 ; 2 uses
  %wide.load1194 = load <4 x float>, ptr %i.xi, align 4, !tbaa !55, !alias.scope !227, !noalias !228
  %i.xj = fadd <4 x float> %i.xh, %wide.load1194
  store <4 x float> %i.xj, ptr %i.xi, align 4, !tbaa !55, !alias.scope !227, !noalias !228
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.wo
  %wide.load1195 = load <4 x float>, ptr %i.xk, align 4, !tbaa !55, !alias.scope !229
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.wq
  %wide.load1196 = load <4 x float>, ptr %i.xl, align 4, !tbaa !55, !alias.scope !230
  %i.xm = fsub <4 x float> %wide.load1195, %wide.load1196
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %index1182 ; 2 uses
  %wide.load1197 = load <4 x float>, ptr %i.xn, align 4, !tbaa !55, !alias.scope !231, !noalias !232
  %i.xo = fadd <4 x float> %i.xm, %wide.load1197
  store <4 x float> %i.xo, ptr %i.xn, align 4, !tbaa !55, !alias.scope !231, !noalias !232
  %index.next1198 = add nuw i64 %index1182, 4     ; 2 uses
  %i.xp = icmp eq i64 %index.next1198, %n.vec1180
  br i1 %i.xp, label %middle.block1199, label %vector.body1181, !llvm.loop !189

middle.block1199:                                 ; preds = %vector.body1181
  br i1 %cmp.n1200, label %._crit_edge341, label %scalar.ph1177.preheader

scalar.ph1177.preheader:                          ; preds = %.lr.ph340, %middle.block1199
  %indvars.iv381.ph = phi i64 [ %n.vec1180, %middle.block1199 ], [ 0, %.lr.ph340 ]
  br label %scalar.ph1177

._crit_edge347:                                   ; preds = %bb.x, %.preheader297
  %.not.i.i272 = icmp eq ptr %.pre402.pre461, %i.fl
  %i.xq = icmp eq ptr %.pre402.pre461, null
  %or.cond.i273 = or i1 %.not.i.i272, %i.xq
  br i1 %or.cond.i273, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, label %bb.q

bb.q:                                             ; preds = %._crit_edge347
  call void @_ZdaPv(ptr noundef nonnull %.pre402.pre461) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274

_ZN2cv10AutoBufferIfLm264EED2Ev.exit274:          ; preds = %._crit_edge347, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.xr = load ptr, ptr %12, align 8, !tbaa !196  ; 3 uses
  %.not.i.i275 = icmp eq ptr %i.xr, %i.fo
  %i.xs = icmp eq ptr %i.xr, null
  %or.cond.i276 = or i1 %.not.i.i275, %i.xs
  br i1 %or.cond.i276, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, label %bb.r

bb.r:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  call void @_ZdaPv(ptr noundef nonnull %i.xr) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277

_ZN2cv10AutoBufferIfLm264EED2Ev.exit277:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.xt = load ptr, ptr %11, align 8, !tbaa !196  ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.xt, %i.fm
  %i.xu = icmp eq ptr %i.xt, null
  %or.cond.i279 = or i1 %.not.i.i278, %i.xu
  br i1 %or.cond.i279, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, label %bb.s

bb.s:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277
  call void @_ZdaPv(ptr noundef nonnull %i.xt) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280

_ZN2cv10AutoBufferIfLm264EED2Ev.exit280:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.xv = load ptr, ptr %10, align 8, !tbaa !196  ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.xv, %i.fn
  %i.xw = icmp eq ptr %i.xv, null
  %or.cond.i282 = or i1 %.not.i.i281, %i.xw
  br i1 %or.cond.i282, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, label %bb.t

bb.t:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280
  call void @_ZdaPv(ptr noundef nonnull %i.xv) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283

_ZN2cv10AutoBufferIfLm264EED2Ev.exit283:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.xx = load ptr, ptr %9, align 8, !tbaa !196   ; 3 uses
  %.not.i.i284 = icmp eq ptr %i.xx, %i.ax
  %i.xy = icmp eq ptr %i.xx, null
  %or.cond.i285 = or i1 %.not.i.i284, %i.xy
  br i1 %or.cond.i285, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, label %bb.u

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283
  call void @_ZdaPv(ptr noundef nonnull %i.xx) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286

_ZN2cv10AutoBufferIfLm264EED2Ev.exit286:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.xz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !62
  %.not.i = icmp eq i32 %i.ya, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.yb = landingpad { ptr, i32 }
          catch ptr null
  %i.yc = extractvalue { ptr, i32 } %i.yb, 0
  call void @__clang_call_terminate(ptr %i.yc) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

._crit_edge341:                                   ; preds = %scalar.ph1177, %middle.block1199
  %i.yd = trunc nsw i64 %indvars.iv391 to i32
  %.reass468.reass = add i32 %i.yd, %invariant.op1267
  %i.ye = srem i32 %.reass468.reass, %i.ol
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %.lr.ph343, label %bb.x

._crit_edge341.thread:                            ; preds = %.preheader296
  %i.yg = trunc nsw i64 %indvars.iv391 to i32
  %.reass.reass = add i32 %i.yg, %invariant.op
  %i.yh = srem i32 %.reass.reass, %i.ol
  %i.yi = icmp eq i32 %i.yh, 0
  br i1 %i.yi, label %._crit_edge344, label %bb.x

.lr.ph343:                                        ; preds = %._crit_edge341
  %i.yj = mul nsw i32 %.0225345, %i.fq
  %i.yk = sext i32 %i.yj to i64                   ; 3 uses
  br i1 %min.iters.check854, label %scalar.ph853.preheader, label %vector.memcheck782

vector.memcheck782:                               ; preds = %.lr.ph343
  %i.yl = shl nsw i64 %i.yk, 2                    ; 18 uses
  %.reass = add i64 %i.yl, %invariant.op1268
  %diff.check790 = icmp ult i64 %.reass, 15
  %.reass1270 = add i64 %i.yl, %invariant.op1269
  %diff.check792 = icmp ugt i64 %.reass1270, -16
  %.reass1272 = add i64 %i.yl, %invariant.op1271
  %diff.check794 = icmp ugt i64 %.reass1272, -16
  %.reass1274 = add i64 %i.yl, %invariant.op1273
  %diff.check796 = icmp ugt i64 %.reass1274, -16
  %.reass1276 = add i64 %i.yl, %invariant.op1275
  %diff.check799 = icmp ugt i64 %.reass1276, -16
  %.reass1278 = add i64 %i.yl, %invariant.op1277
  %diff.check807 = icmp ult i64 %.reass1278, 15
  %.reass1280 = add i64 %i.yl, %invariant.op1279
  %diff.check809 = icmp ult i64 %.reass1280, 15
  %.reass1284 = add i64 %i.yl, %invariant.op1283
  %diff.check813 = icmp ugt i64 %.reass1284, -16
  %.reass1286 = add i64 %i.yl, %invariant.op1285
  %diff.check815 = icmp ugt i64 %.reass1286, -16
  %.reass1288 = add i64 %i.yl, %invariant.op1287
  %diff.check821 = icmp ult i64 %.reass1288, 15
  %.reass1290 = add i64 %i.yl, %invariant.op1289
  %diff.check823 = icmp ult i64 %.reass1290, 15
  %.reass1292 = add i64 %i.yl, %invariant.op1291
  %diff.check825 = icmp ult i64 %.reass1292, 15
  %.reass1294 = add i64 %i.yl, %invariant.op1293
  %diff.check827 = icmp ugt i64 %.reass1294, -16
  %.reass1296 = add i64 %i.yl, %invariant.op1295
  %diff.check829 = icmp ugt i64 %.reass1296, -16
  %.reass1302 = add i64 %i.yl, %invariant.op1301
  %diff.check837 = icmp ult i64 %.reass1302, 15
  %.reass1304 = add i64 %i.yl, %invariant.op1303
  %diff.check839 = icmp ult i64 %.reass1304, 15
  %.reass1306 = add i64 %i.yl, %invariant.op1305
  %diff.check841 = icmp ugt i64 %.reass1306, -16
  %i.ym = insertelement <8 x i1> %i.vv, i1 %diff.check813, i64 0
  %i.yn = insertelement <8 x i1> %i.ym, i1 %diff.check815, i64 1
  %i.yo = insertelement <8 x i1> %i.yn, i1 %diff.check827, i64 4
  %i.yp = insertelement <8 x i1> %i.yo, i1 %diff.check829, i64 5
  %i.yq = insertelement <8 x i1> %i.yp, i1 %diff.check841, i64 7
  %i.yr = insertelement <8 x i1> poison, i1 %diff.check790, i64 0
  %i.ys = insertelement <8 x i1> %i.yr, i1 %diff.check807, i64 1
  %i.yt = insertelement <8 x i1> %i.ys, i1 %diff.check809, i64 2
  %i.yu = insertelement <8 x i1> %i.yt, i1 %diff.check821, i64 3
  %i.yv = insertelement <8 x i1> %i.yu, i1 %diff.check823, i64 4
  %i.yw = insertelement <8 x i1> %i.yv, i1 %diff.check825, i64 5
  %i.yx = insertelement <8 x i1> %i.yw, i1 %diff.check837, i64 6
  %i.yy = insertelement <8 x i1> %i.yx, i1 %diff.check839, i64 7
  %i.yz = shufflevector <8 x i1> %i.yq, <8 x i1> %i.yy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %38 = insertelement <8 x i64> poison, i64 %i.yl, i64 0
  %39 = shufflevector <8 x i64> %38, <8 x i64> poison, <8 x i32> zeroinitializer
  %.reass1314 = add <8 x i64> %39, %invariant.op1313 ; 2 uses
  %40 = icmp ugt <8 x i64> %.reass1314, <i64 -16, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15>
  %41 = icmp ult <8 x i64> %.reass1314, <i64 -16, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15, i64 15>
  %42 = shufflevector <8 x i1> %40, <8 x i1> %41, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.za = bitcast <16 x i1> %i.yz to i16
  %i.zb = icmp ne i16 %i.za, 0
  %43 = bitcast <8 x i1> %42 to i8
  %44 = icmp ne i8 %43, 0
  %op.rdx1212 = or i1 %diff.check788, %diff.check792
  %op.rdx1213.reass = or i1 %diff.check794, %diff.check796
  %op.rdx1214 = or i1 %44, %invariant.op1317
  %op.rdx1215 = or i1 %op.rdx1212, %op.rdx1213.reass
  %op.rdx1216 = or i1 %diff.check799, %invariant.op1318
  %op.rdx1217 = or i1 %op.rdx1214, %op.rdx1215
  %op.rdx1218 = or i1 %op.rdx1216, %i.zb
  %op.rdx1219 = or i1 %op.rdx1217, %op.rdx1218
  br i1 %op.rdx1219, label %scalar.ph853.preheader, label %vector.body857

vector.body857:                                   ; preds = %vector.memcheck782, %vector.body857
  %index858 = phi i64 [ %index.next864, %vector.body857 ], [ 0, %vector.memcheck782 ] ; 7 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index858
  %wide.load859 = load <4 x float>, ptr %i.zc, align 4, !tbaa !55
  %i.zd = add nsw i64 %index858, %i.yk            ; 5 uses
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zd
  store <4 x float> %wide.load859, ptr %i.ze, align 4, !tbaa !55
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index858
  %wide.load860 = load <4 x float>, ptr %i.zf, align 4, !tbaa !55
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.zd
  store <4 x float> %wide.load860, ptr %i.zg, align 4, !tbaa !55
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index858
  %wide.load861 = load <4 x float>, ptr %i.zh, align 4, !tbaa !55
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.zd
  store <4 x float> %wide.load861, ptr %i.zi, align 4, !tbaa !55
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index858
  %wide.load862 = load <4 x float>, ptr %i.zj, align 4, !tbaa !55
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.zd
  store <4 x float> %wide.load862, ptr %i.zk, align 4, !tbaa !55
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %index858
  %wide.load863 = load <4 x float>, ptr %i.zl, align 4, !tbaa !55
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.zd
  store <4 x float> %wide.load863, ptr %i.zm, align 4, !tbaa !55
  %index.next864 = add nuw i64 %index858, 4       ; 2 uses
  %i.zn = icmp eq i64 %index.next864, %n.vec856
  br i1 %i.zn, label %middle.block865, label %vector.body857, !llvm.loop !190

middle.block865:                                  ; preds = %vector.body857
  br i1 %cmp.n866, label %._crit_edge344, label %scalar.ph853.preheader

scalar.ph853.preheader:                           ; preds = %vector.memcheck782, %.lr.ph343, %middle.block865
  %indvars.iv386.ph = phi i64 [ 0, %vector.memcheck782 ], [ 0, %.lr.ph343 ], [ %n.vec856, %middle.block865 ]
  br label %scalar.ph853

scalar.ph1177:                                    ; preds = %scalar.ph1177.preheader, %scalar.ph1177
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %scalar.ph1177 ], [ %indvars.iv381.ph, %scalar.ph1177.preheader ] ; 8 uses
  %i.zo = add nsw i64 %indvars.iv381, %i.wl       ; 5 uses
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.zo
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !55
  %i.zr = add nsw i64 %indvars.iv381, %i.wn       ; 5 uses
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.zr
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !55
  %i.zu = fsub float %i.zq, %i.zt
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv381 ; 2 uses
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !55
  %i.zx = fadd float %i.zu, %i.zw
  store float %i.zx, ptr %i.zv, align 4, !tbaa !55
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.zo
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !55
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.zr
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !55
  %i.aac = fsub float %i.zz, %i.aab
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv381 ; 2 uses
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !55
  %i.aaf = fadd float %i.aac, %i.aae
  store float %i.aaf, ptr %i.aad, align 4, !tbaa !55
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.zo
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !55
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.zr
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !55
  %i.aak = fsub float %i.aah, %i.aaj
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv381 ; 2 uses
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !55
  %i.aan = fadd float %i.aak, %i.aam
  store float %i.aan, ptr %i.aal, align 4, !tbaa !55
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.zo
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !55
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.zr
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !55
  %i.aas = fsub float %i.aap, %i.aar
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv381 ; 2 uses
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !55
  %i.aav = fadd float %i.aas, %i.aau
  store float %i.aav, ptr %i.aat, align 4, !tbaa !55
  %i.aaw = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.zo
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !55
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.zr
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !55
  %i.aba = fsub float %i.aax, %i.aaz
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %indvars.iv381 ; 2 uses
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !55
  %i.abd = fadd float %i.aba, %i.abc
  store float %i.abd, ptr %i.abb, align 4, !tbaa !55
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge341, label %scalar.ph1177, !llvm.loop !191

._crit_edge344:                                   ; preds = %scalar.ph853, %middle.block865, %._crit_edge341.thread
  %i.abe = add nsw i32 %.0225345, 1
  br label %bb.x

scalar.ph853:                                     ; preds = %scalar.ph853.preheader, %scalar.ph853
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %scalar.ph853 ], [ %indvars.iv386.ph, %scalar.ph853.preheader ] ; 7 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv386
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !55
  %i.abh = add nsw i64 %indvars.iv386, %i.yk      ; 5 uses
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abh
  store float %i.abg, ptr %i.abi, align 4, !tbaa !55
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv386
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !55
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.abh
  store float %i.abk, ptr %i.abl, align 4, !tbaa !55
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv386
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !55
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.abh
  store float %i.abn, ptr %i.abo, align 4, !tbaa !55
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv386
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !55
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.abh
  store float %i.abq, ptr %i.abr, align 4, !tbaa !55
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.pre402.pre461, i64 %indvars.iv386
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !55
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.abh
  store float %i.abt, ptr %i.abu, align 4, !tbaa !55
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge344, label %scalar.ph853, !llvm.loop !192

bb.x:                                             ; preds = %._crit_edge341.thread, %._crit_edge341, %._crit_edge344
  %.1 = phi i32 [ %i.abe, %._crit_edge344 ], [ %.0225345, %._crit_edge341 ], [ %.0225345, %._crit_edge341.thread ]
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge347, label %.preheader296, !llvm.loop !193

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ke, %bb.n ], [ %i.kf, %bb.o ], [ %i.kf, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.abv = load ptr, ptr %11, align 8, !tbaa !196 ; 3 uses
  %.not.i.i287 = icmp eq ptr %i.abv, %i.ep
  %i.abw = icmp eq ptr %i.abv, null
  %or.cond.i288 = or i1 %.not.i.i287, %i.abw
  br i1 %or.cond.i288, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289, label %bb.y

bb.y:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.abv) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289

_ZN2cv10AutoBufferIfLm264EED2Ev.exit289:          ; preds = %bb.y, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.kd, %bb.m ], [ %.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit ], [ %.pn, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.abx = load ptr, ptr %10, align 8, !tbaa !196 ; 3 uses
  %.not.i.i290 = icmp eq ptr %i.abx, %i.eh
  %i.aby = icmp eq ptr %i.abx, null
  %or.cond.i291 = or i1 %.not.i.i290, %i.aby
  br i1 %or.cond.i291, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292, label %bb.z

bb.z:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289
  call void @_ZdaPv(ptr noundef nonnull %i.abx) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292

_ZN2cv10AutoBufferIfLm264EED2Ev.exit292:          ; preds = %bb.z, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.kc, %bb.l ], [ %.pn.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289 ], [ %.pn.pn, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.abz = load ptr, ptr %9, align 8, !tbaa !196  ; 3 uses
  %.not.i.i293 = icmp eq ptr %i.abz, %i.ax
  %i.aca = icmp eq ptr %i.abz, null
  %or.cond.i294 = or i1 %.not.i.i293, %i.aca
  br i1 %or.cond.i294, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295, label %bb.aa

bb.aa:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292
  call void @_ZdaPv(ptr noundef nonnull %i.abz) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295

_ZN2cv10AutoBufferIfLm264EED2Ev.exit295:          ; preds = %bb.aa, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.k ], [ %.pn.pn.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292 ], [ %.pn.pn.pn, %bb.aa ]
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
end_hunk_1
