Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bardetect?download=true
inline.NumInlined: 949
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv7barcode6Detect10preprocessEd:bb.a
  store float 0.000000e+00, ptr %i.bp, align 4, !tbaa !71
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !71
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.br = load float, ptr %i.bp, align 4, !tbaa !71 ; 2 uses
  %i.bs = fcmp olt float %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = fneg float %i.br
  store float %i.bt, ptr %i.bp, align 4, !tbaa !71
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !71
  %i.bw = fneg float %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !71
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !102

._crit_edge85.split:                              ; preds = %._crit_edge, %.lr.ph84, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.bx, align 8, !tbaa !61
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.by, align 4, !tbaa !62
  store i32 16842752, ptr %17, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %2, ptr %i.bz, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.cb, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !64
  store ptr %4, ptr %i.ca, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.ce, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !64
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !65
  invoke void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 5, i32 noundef 5)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %._crit_edge85.split
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.cf = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.cf, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.cg, align 4, !tbaa !62
  store i32 16842752, ptr %20, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %3, ptr %i.ch, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.cj, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !64
  store ptr %4, ptr %i.ci, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.cl = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.cm, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !64
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !65
  invoke void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 5, i32 noundef 5)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.cn, align 8, !tbaa !61
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !62
  store i32 16842752, ptr %25, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %3, ptr %i.cp, align 8, !tbaa !65
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %24, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %25, double noundef 1.000000e+00)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(688) %24)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.cr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.cs, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !64
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.cu, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !64
  store ptr %4, ptr %i.ct, align 8, !tbaa !65
  invoke void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayES5_ii(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef 5, i32 noundef 5)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  %i.cv = getelementptr inbounds nuw i8, ptr %24, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cv) #20
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cw) #20
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.x:                                             ; preds = %._crit_edge85.split
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ae

bb.y:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ae

bb.z:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn74.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.ab ], [ %i.db, %bb.aa ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %24) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.z ], [ %.pn74.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y, %bb.x, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.pn74.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn, %bb.ad ], [ %i.cz, %bb.y ], [ %i.cy, %bb.x ], [ %i.bf, %bb.m ], [ %i.be, %bb.l ], [ %i.bd, %bb.k ], [ %i.bc, %bb.j ], [ %i.bb, %bb.i ], [ %i.ba, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7barcode6Detect12calCoherenceEi(ptr noundef nonnull align 8 dereferenceable(2016) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = mul nsw i32 %1, %1
  %i.b = uitofp nneg i32 %i.a to float
  %i.c = fmul nnan float %i.b, 4.200000e-01
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %5 = load i32, ptr %i.d, align 4, !tbaa !58
  %.fr = freeze i32 %5
  %6 = sdiv i32 %.fr, %1                          ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = sdiv i32 %8, %1                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %.sroa.8.0.insert.ext162 = zext i32 %9 to i64   ; 2 uses
  %.sroa.8.0.insert.shift163 = shl nuw i64 %.sroa.8.0.insert.ext162, 32
  %.sroa.0.0.insert.ext155 = zext i32 %6 to i64   ; 2 uses
  %.sroa.0.0.insert.insert157 = or disjoint i64 %.sroa.8.0.insert.shift163, %.sroa.0.0.insert.ext155 ; 3 uses
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %.sroa.0.0.insert.insert157, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.f = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.b unwind label %bb.m       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %3, i64 %.sroa.0.0.insert.insert157, i32 noundef 5)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.h = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.d unwind label %bb.o       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %4, i64 %.sroa.0.0.insert.insert157, i32 noundef 5)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.j = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.f unwind label %bb.q       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.k = load i32, ptr %i.d, align 4, !tbaa !58
  %i.l = add nsw i32 %i.k, 1                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %i.u = icmp sgt i32 %9, 0
  br i1 %i.u, label %.lr.ph182, label %._crit_edge

.lr.ph182:                                        ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ab = icmp sgt i32 %6, 0
  br i1 %i.ab, label %.lr.ph182.split.us.preheader, label %._crit_edge

.lr.ph182.split.us.preheader:                     ; preds = %.lr.ph182
  %i.ac = sext i32 %1 to i64                      ; 2 uses
  %i.ad = sext i32 %i.l to i64
  br label %.lr.ph182.split.us

.lr.ph182.split.us:                               ; preds = %.lr.ph182.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv186 = phi i64 [ 0, %.lr.ph182.split.us.preheader ], [ %i.at, %..loopexit_crit_edge.us ] ; 5 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.af = load i64, ptr %i.w, align 8, !tbaa !73
  %i.ag = mul i64 %i.af, %indvars.iv186
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.aj = load i64, ptr %i.y, align 8, !tbaa !73
  %i.ak = mul i64 %i.aj, %indvars.iv186
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !72
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !73
  %i.ao = mul i64 %i.an, %indvars.iv186
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = mul nsw i64 %indvars.iv186, %i.ac       ; 2 uses
  %i.ar = load i32, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %.not.us = icmp slt i64 %i.aq, %i.as
  %i.at = add nuw nsw i64 %indvars.iv186, 1       ; 3 uses
  br i1 %.not.us, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %.lr.ph182.split.us
  %i.au = trunc i64 %i.at to i32
  %i.av = mul i32 %1, %i.au
  %.sroa.speculated149.us = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ar)
  %i.aw = mul nsw i64 %i.aq, %i.ad                ; 4 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.n, i64 %i.aw ; 2 uses
  %i.ax = mul nsw i32 %.sroa.speculated149.us, %i.l
  %i.ay = sext i32 %i.ax to i64                   ; 4 uses
  %invariant.gep167.us = getelementptr [4 x i8], ptr %i.n, i64 %i.ay ; 2 uses
  %invariant.gep169.us = getelementptr [4 x i8], ptr %i.p, i64 %i.aw ; 2 uses
  %invariant.gep171.us = getelementptr [4 x i8], ptr %i.p, i64 %i.ay ; 2 uses
  %invariant.gep173.us = getelementptr [4 x i8], ptr %i.r, i64 %i.aw ; 2 uses
  %invariant.gep175.us = getelementptr [4 x i8], ptr %i.r, i64 %i.ay ; 2 uses
  %invariant.gep177.us = getelementptr [4 x i8], ptr %i.t, i64 %i.aw ; 2 uses
  %invariant.gep179.us = getelementptr [4 x i8], ptr %i.t, i64 %i.ay ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.us, %._crit_edge191
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %i.bc, %._crit_edge191 ] ; 6 uses
  %i.az = mul nsw i64 %indvars.iv, %i.ac          ; 9 uses
  %i.ba = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not145.us = icmp slt i64 %i.az, %i.bb
  %i.bc = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  br i1 %.not145.us, label %bb.h, label %._crit_edge191

bb.h:                                             ; preds = %bb.g
  %i.bd = trunc i64 %i.bc to i32
  %i.be = mul i32 %1, %i.bd
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.ba)
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.az
  %i.bf = load float, ptr %gep.us, align 4, !tbaa !71
  %i.bg = sext i32 %.sroa.speculated.us to i64    ; 8 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %invariant.gep.us, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !71
  %gep168.us = getelementptr [4 x i8], ptr %invariant.gep167.us, i64 %i.bg
  %i.bj = load float, ptr %gep168.us, align 4, !tbaa !71
  %i.bk = getelementptr inbounds [4 x i8], ptr %invariant.gep167.us, i64 %i.az
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !71
  %i.bm = fsub float %i.bj, %i.bl
  %i.bn = fsub float %i.bm, %i.bi
  %i.bo = fadd float %i.bf, %i.bn                 ; 2 uses
  %i.bp = fcmp olt float %i.bo, %i.c
  br i1 %i.bp, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %gep170.us = getelementptr [4 x i8], ptr %invariant.gep169.us, i64 %i.az
  %i.bq = load float, ptr %gep170.us, align 4, !tbaa !71
  %i.br = getelementptr inbounds [4 x i8], ptr %invariant.gep169.us, i64 %i.bg
  %i.bs = load float, ptr %i.br, align 4, !tbaa !71
  %gep172.us = getelementptr [4 x i8], ptr %invariant.gep171.us, i64 %i.bg
  %i.bt = load float, ptr %gep172.us, align 4, !tbaa !71
  %i.bu = getelementptr inbounds [4 x i8], ptr %invariant.gep171.us, i64 %i.az
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !71
  %i.bw = fsub float %i.bt, %i.bv
  %i.bx = fsub float %i.bw, %i.bs
  %i.by = fadd float %i.bq, %i.bx                 ; 2 uses
  %gep174.us = getelementptr [4 x i8], ptr %invariant.gep173.us, i64 %i.az
  %i.bz = load float, ptr %gep174.us, align 4, !tbaa !71
  %i.ca = getelementptr inbounds [4 x i8], ptr %invariant.gep173.us, i64 %i.bg
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !71
  %gep176.us = getelementptr [4 x i8], ptr %invariant.gep175.us, i64 %i.bg
  %i.cc = load float, ptr %gep176.us, align 4, !tbaa !71
  %i.cd = getelementptr inbounds [4 x i8], ptr %invariant.gep175.us, i64 %i.az
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !71
  %i.cf = fsub float %i.cc, %i.ce
  %i.cg = fsub float %i.cf, %i.cb
  %i.ch = fadd float %i.bz, %i.cg                 ; 2 uses
  %gep178.us = getelementptr [4 x i8], ptr %invariant.gep177.us, i64 %i.az
  %i.ci = load float, ptr %gep178.us, align 4, !tbaa !71
  %i.cj = getelementptr inbounds [4 x i8], ptr %invariant.gep177.us, i64 %i.bg
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !71
  %gep180.us = getelementptr [4 x i8], ptr %invariant.gep179.us, i64 %i.bg
  %i.cl = load float, ptr %gep180.us, align 4, !tbaa !71
  %i.cm = getelementptr inbounds [4 x i8], ptr %invariant.gep179.us, i64 %i.az
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !71
  %i.co = fsub float %i.cl, %i.cn
  %i.cp = fsub float %i.co, %i.ck
  %i.cq = fadd float %i.ci, %i.cp                 ; 3 uses
  %i.cr = fsub float %i.by, %i.ch                 ; 3 uses
  %i.cs = fmul float %i.cq, 4.000000e+00
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.ct)
  %i.cv = call noundef float @sqrtf(float noundef %i.cu) #20
  %i.cw = fadd float %i.by, %i.ch
  %i.cx = fdiv float %i.cv, %i.cw
  %i.cy = fcmp ogt float %i.cx, f0x3F666666
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv ; 2 uses
  br i1 %i.cy, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.cz, align 1, !tbaa !27
  br label %._crit_edge191

bb.k:                                             ; preds = %bb.i
  store i8 -1, ptr %i.cz, align 1, !tbaa !27
  %i.da = fpext float %i.cr to double
  %i.db = fmul float %i.cq, 2.000000e+00
  %i.dc = fpext float %i.db to double
  %i.dd = call double @atan2(double noundef %i.da, double noundef %i.dc) #20
  %i.de = fmul double %i.dd, 5.000000e-01
  %i.df = fptrunc double %i.de to float
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float %i.df, ptr %i.dg, align 4, !tbaa !71
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  store float %i.bo, ptr %i.dh, align 4, !tbaa !71
  br label %._crit_edge191

bb.l:                                             ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  store i8 0, ptr %i.di, align 1, !tbaa !27
  br label %._crit_edge191

._crit_edge191:                                   ; preds = %bb.g, %bb.l, %bb.k, %bb.j
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.0.0.insert.ext155
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !103

..loopexit_crit_edge.us:                          ; preds = %._crit_edge191, %.lr.ph182.split.us
  %exitcond190.not = icmp eq i64 %i.at, %.sroa.8.0.insert.ext162
  br i1 %exitcond190.not, label %._crit_edge, label %.lr.ph182.split.us, !llvm.loop !104

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph182, %bb.f
  ret void

bb.m:                                             ; preds = %bb.a
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.b
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.c
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.q ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.dl, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.dk, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.t ], [ %i.dj, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7barcode6Detect12barcodeErodeEv(ptr noundef nonnull align 8 dereferenceable(2016) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
end_hunk_0
