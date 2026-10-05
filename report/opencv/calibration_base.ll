Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.bz

bb.bc:                                            ; preds = %bb.ar, %bb.ap
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bd:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.be:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit91
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bf:                                            ; preds = %bb.av
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bg:                                            ; preds = %bb.aw
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bh:                                            ; preds = %bb.ax
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bi:                                            ; preds = %bb.ay
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ba, %bb.az
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn61.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.bj ], [ %i.cp, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #20
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn, %bb.bk ], [ %i.co, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bl ], [ %i.cn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bf
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %i.cm, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.be
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.cl, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bd
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bo ], [ %i.ck, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.ca

bb.bq:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i32 0, ptr %i.cr, align 8, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %40, i64 20
  store i32 0, ptr %i.cs, align 4, !tbaa !52
  store i32 16842752, ptr %40, align 8, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %18, ptr %i.ct, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %41, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !52
  store i32 16842752, ptr %41, align 8, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %26, ptr %i.cw, align 8, !tbaa !12
  %i.cx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq
  %i.cy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.cz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %bb.bs
  %i.da = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.db = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.dc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_S5_S5_S5_S5_S5_d(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, double noundef %7)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx, %bb.bb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  ret void

bb.ca:                                            ; preds = %bb.bc, %bb.bp, %bb.by, %bb.ao
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.ao ], [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %i.cj, %bb.bc ], [ %i.dd, %bb.by ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #20
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.an
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %i.az, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.am
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cb ], [ %i.ay, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.h, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.cc, %bb.g
  %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cc ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.r, %bb.h ], [ %.pn54, %bb.y ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv22getUndistortRectanglesERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEERNS_5Rect_IdEES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.split.us.8:
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::TermCriteria", align 8 ; 4 uses
  %.sroa.2.0.extract.shift = lshr i64 %4, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 1, i32 noundef 32, i32 noundef 38)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 55 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4133.0..sroa_idx.us.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4133.0..sroa_idx.us.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4133.0..sroa_idx.us.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.4133.0..sroa_idx.us.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.4133.0..sroa_idx.us.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.4133.0..sroa_idx.us.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.4133.0..sroa_idx.us.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.4133.0..sroa_idx.us.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.4133.0..sroa_idx.1163 = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %11 = trunc i64 %4 to i32
  %12 = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %13 = insertelement <2 x i32> poison, i32 %12, i64 0
  %14 = insertelement <2 x i32> %13, i32 %11, i64 1
  %15 = add nsw <2 x i32> %14, splat (i32 -1)
  %i.l = sitofp <2 x i32> %15 to <2 x double>
  %i.m = fmul nnan <2 x double> %i.l, <double 1.000000e+00, double 1.250000e-01> ; 5 uses
  %i.n = extractelement <2 x double> %i.m, i64 1  ; 17 uses
  %i.o = fmul nnan <2 x double> %i.m, <double 1.250000e-01, double 8.000000e+00> ; 3 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = shufflevector <2 x double> %i.m, <2 x double> %i.o, <2 x i32> <i32 1, i32 2>
  %i.r = call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.q) ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 1  ; 8 uses
  store <2 x double> %i.r, ptr %i.b, align 8, !tbaa !31
  store double %i.n, ptr %i.c, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.1, align 8, !tbaa !31
  %i.t = fmul nnan double %i.n, 2.000000e+00
  store double %i.t, ptr %i.d, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.2, align 8, !tbaa !31
  %i.u = fmul nnan double %i.n, 3.000000e+00
  store double %i.u, ptr %i.e, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.3, align 8, !tbaa !31
  %i.v = fmul nnan double %i.n, 4.000000e+00
  store double %i.v, ptr %i.f, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.4, align 8, !tbaa !31
  %i.w = fmul nnan double %i.n, 5.000000e+00
  store double %i.w, ptr %i.g, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.5, align 8, !tbaa !31
  %i.x = fmul nnan double %i.n, 6.000000e+00
  store double %i.x, ptr %i.h, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.6, align 8, !tbaa !31
  %i.y = fmul nnan double %i.n, 7.000000e+00
  store double %i.y, ptr %i.i, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.7, align 8, !tbaa !31
  %i.z = fmul nnan double %i.n, 8.000000e+00
  store double %i.z, ptr %i.j, align 8, !tbaa !31
  store double %i.s, ptr %.sroa.4133.0..sroa_idx.us.8, align 8, !tbaa !31
  %i.aa = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  store double %i.aa, ptr %i.k, align 8, !tbaa !31
  store <2 x double> %i.o, ptr %.sroa.4133.0..sroa_idx.1163, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.8.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store double %i.p, ptr %.sroa.4133.0..sroa_idx.8.1, align 8, !tbaa !31
  %i.ab = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store double %i.ab, ptr %i.ac, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.2168 = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ad = fmul nnan <2 x double> %i.m, <double 1.250000e-01, double 1.000000e+00> ; 7 uses
  %i.ae = fmul nnan <2 x double> %i.ad, <double 2.000000e+00, double 8.000000e+00> ; 2 uses
  store <2 x double> %i.ae, ptr %.sroa.4133.0..sroa_idx.2168, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.8.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.af = extractelement <2 x double> %i.ae, i64 0
  store double %i.af, ptr %.sroa.4133.0..sroa_idx.8.2, align 8, !tbaa !31
  %i.ag = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store double %i.ag, ptr %i.ah, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.3173 = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ai = fmul nnan <2 x double> %i.ad, <double 3.000000e+00, double 8.000000e+00> ; 2 uses
  store <2 x double> %i.ai, ptr %.sroa.4133.0..sroa_idx.3173, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.8.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  store double %i.aj, ptr %.sroa.4133.0..sroa_idx.8.3, align 8, !tbaa !31
  %i.ak = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store double %i.ak, ptr %i.al, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.4178 = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.am = fmul nnan <2 x double> %i.ad, <double 4.000000e+00, double 8.000000e+00> ; 2 uses
  store <2 x double> %i.am, ptr %.sroa.4133.0..sroa_idx.4178, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.8.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.an = extractelement <2 x double> %i.am, i64 0
  store double %i.an, ptr %.sroa.4133.0..sroa_idx.8.4, align 8, !tbaa !31
  %i.ao = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store double %i.ao, ptr %i.ap, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.5183 = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.aq = fmul nnan <2 x double> %i.ad, <double 5.000000e+00, double 8.000000e+00> ; 2 uses
  store <2 x double> %i.aq, ptr %.sroa.4133.0..sroa_idx.5183, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.8.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  store double %i.ar, ptr %.sroa.4133.0..sroa_idx.8.5, align 8, !tbaa !31
  %i.as = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store double %i.as, ptr %i.at, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.6188 = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.au = fmul nnan <2 x double> %i.ad, <double 6.000000e+00, double 8.000000e+00> ; 2 uses
  store <2 x double> %i.au, ptr %.sroa.4133.0..sroa_idx.6188, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.8.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.av = extractelement <2 x double> %i.au, i64 0
  store double %i.av, ptr %.sroa.4133.0..sroa_idx.8.6, align 8, !tbaa !31
  %i.aw = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store double %i.aw, ptr %i.ax, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.7193 = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.ay = fmul nnan <2 x double> %i.ad, <double 7.000000e+00, double 8.000000e+00> ; 2 uses
  store <2 x double> %i.ay, ptr %.sroa.4133.0..sroa_idx.7193, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.8.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.az = extractelement <2 x double> %i.ay, i64 0
  store double %i.az, ptr %.sroa.4133.0..sroa_idx.8.7, align 8, !tbaa !31
  %i.ba = call nnan double @llvm.copysign.f64(double 0.000000e+00, double %i.n)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store double %i.ba, ptr %i.bb, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.us.8201 = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store double %i.n, ptr %i.bc, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.us.1.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.bd = fmul nnan <2 x double> %i.ad, <double 8.000000e+00, double 2.000000e+00> ; 3 uses
  store <2 x double> %i.bd, ptr %.sroa.4133.0..sroa_idx.us.1.8, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.us.2.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> %i.m, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 3 uses
  %i.bf = fmul nnan <4 x double> %i.be, <double 1.000000e+00, double 3.000000e+00, double 1.000000e+00, double 4.000000e+00>
  store <4 x double> %i.bf, ptr %.sroa.4133.0..sroa_idx.us.2.8, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.us.4.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.bg = fmul nnan <4 x double> %i.be, <double 1.000000e+00, double 5.000000e+00, double 1.000000e+00, double 6.000000e+00>
  store <4 x double> %i.bg, ptr %.sroa.4133.0..sroa_idx.us.4.8, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.us.6.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.bh = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  store double %i.bh, ptr %.sroa.4133.0..sroa_idx.us.8201, align 8, !tbaa !31
  %i.bi = fmul nnan <4 x double> %i.be, <double 1.000000e+00, double 7.000000e+00, double 1.000000e+00, double 8.000000e+00>
  store <4 x double> %i.bi, ptr %.sroa.4133.0..sroa_idx.us.6.8, align 8, !tbaa !31
  %.sroa.4133.0..sroa_idx.us.8.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store double %i.bh, ptr %.sroa.4133.0..sroa_idx.us.8.8, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.bj, align 8, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.bk, align 4, !tbaa !52
  store i32 16842752, ptr %8, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.bl, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bn, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !50
  store ptr %7, ptr %i.bm, align 8, !tbaa !12
  store i32 1, ptr %10, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 5, ptr %i.bo, align 4, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double 1.000000e-02, ptr %i.bp, align 8, !tbaa !64
  invoke void @_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %10)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.split.us.8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit, %bb.a
  %.0101153 = phi double [ f0xC7EFFFFFE0000000, %bb.a ], [ %.2103.7, %.loopexit ] ; 2 uses
  %.0109151 = phi double [ f0xC7EFFFFFE0000000, %bb.a ], [ %.2111.peel, %.loopexit ] ; 2 uses
  %.3120150 = phi i32 [ 0, %bb.a ], [ %i.hk, %.loopexit ] ; 3 uses
  %.1122149 = phi i32 [ 0, %bb.a ], [ %i.ia, %.loopexit ] ; 4 uses
  %i.bq = phi <4 x double> [ <double f0xC7EFFFFFE0000000, double f0xC7EFFFFFE0000000, double f0x47EFFFFFE0000000, double f0x47EFFFFFE0000000>, %bb.a ], [ %i.ht, %.loopexit ] ; 3 uses
  %i.br = phi <2 x double> [ splat (double f0x47EFFFFFE0000000), %bb.a ], [ %i.hz, %.loopexit ] ; 2 uses
  %i.bs = and i32 %.1122149, 7
  %.not = icmp eq i32 %i.bs, 0                    ; 7 uses
  %i.bt = icmp eq i32 %.1122149, 0                ; 9 uses
  %i.bu = icmp eq i32 %.1122149, 8                ; 9 uses
  %i.bv = add nsw i32 %.3120150, 1                ; 2 uses
  %i.bw = sext i32 %.3120150 to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.bw
  %i.by = load <2 x double>, ptr %i.bx, align 8, !tbaa !31 ; 3 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ca = fcmp ogt <4 x double> %i.bq, %i.bz
  %i.cb = fcmp olt <4 x double> %i.bq, %i.bz
  %i.cc = shufflevector <4 x i1> %i.cb, <4 x i1> %i.ca, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cd = select <4 x i1> %i.cc, <4 x double> %i.bz, <4 x double> %i.bq ; 4 uses
  %i.ce = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.cf = fcmp olt double %.0109151, %i.ce
  %.2111.peel = select i1 %i.cf, double %i.ce, double %.0109151 ; 3 uses
  %i.cg = extractelement <2 x double> %i.by, i64 1 ; 4 uses
  %i.ch = fcmp olt double %.0101153, %i.cg
  %i.ci = select i1 %i.bt, i1 %i.ch, i1 false
  %.2103.peel = select i1 %i.ci, double %i.cg, double %.0101153 ; 3 uses
  %i.cj = extractelement <2 x double> %i.br, i64 1 ; 2 uses
  %i.ck = fcmp ogt double %i.cj, %i.cg
  %i.cl = select i1 %i.bu, i1 %i.ck, i1 false
  %.2100.peel = select i1 %i.cl, double %i.cg, double %i.cj
  %i.cm = insertelement <2 x double> %i.br, double %.2100.peel, i64 1 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split.us.8
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %i.cn

bb.c:                                             ; preds = %.peel.next
  %i.co = add nsw i32 %.3120150, 2
  %i.cp = sext i32 %i.bv to i64
  %i.cq = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.cp
  %i.cr = load <2 x double>, ptr %i.cq, align 8, !tbaa !31 ; 4 uses
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ct = extractelement <2 x double> %i.cr, i64 1 ; 2 uses
  %i.cu = fcmp ogt <4 x double> %i.cd, %i.cs
  %i.cv = fcmp olt <4 x double> %i.cd, %i.cs
  %i.cw = shufflevector <4 x i1> %i.cv, <4 x i1> %i.cu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cx = select <4 x i1> %i.cw, <4 x double> %i.cs, <4 x double> %i.cd
  %i.cy = fcmp ogt <2 x double> %i.cm, %i.cr
  %i.cz = insertelement <2 x i1> <i1 false, i1 poison>, i1 %i.bu, i64 1
  %i.da = select <2 x i1> %i.cz, <2 x i1> %i.cy, <2 x i1> zeroinitializer
  %i.db = fcmp olt double %.2103.peel, %i.ct
  %i.dc = select i1 %i.bt, i1 %i.db, i1 false
end_hunk_0
