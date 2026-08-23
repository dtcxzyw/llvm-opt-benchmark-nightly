Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/simpleflow?download=true
inline.NumInlined: 521
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv7optflowL24selectPointsToRecalcFlowERKNS_3MatEifiiS3_RS1_S4_:bb.a

.split.1:                                         ; preds = %bb.ak, %.split.preheader
  %i.kf = or disjoint i64 %.pre321, 1             ; 2 uses
  %i.kg = trunc nuw i64 %i.kf to i32
  %i.kh = icmp sgt i32 %4, %i.kg
  br i1 %i.kh, label %bb.al, label %.split267.us

bb.al:                                            ; preds = %.split.1
  %i.ki = load i32, ptr %i.eg, align 4, !tbaa !110
  %i.kj = icmp slt i32 %i.ki, 2
  %i.kk = load ptr, ptr %i.eh, align 8, !tbaa !108
  %i.kl = load i64, ptr %i.ei, align 8
  %i.km = mul i64 %i.kl, %i.fc
  %.sink.idx.i209.1 = select i1 %i.kj, i64 0, i64 %i.km
  %.sink.i210.1 = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.sink.idx.i209.1
  %i.kn = getelementptr inbounds nuw i8, ptr %.sink.i210.1, i64 %i.kf
  store i8 -1, ptr %i.kn, align 1, !tbaa !27
  br label %.split267.us

.loopexit:                                        ; preds = %._crit_edge257, %._crit_edge262, %.split267.us, %bb.aj, %.split.1.1, %bb.af, %.preheader239.lr.ph, %.preheader241, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ko = load i32, ptr %i.ds, align 4, !tbaa !66 ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = icmp slt i64 %indvars.iv.next, %i.kp
  %indvars.iv.next294 = add nuw i32 %indvars.iv293, 2
  br i1 %i.kq, label %bb.ab, label %._crit_edge272.loopexit, !llvm.loop !142

bb.am:                                            ; preds = %bb.aa, %bb.x
  %.pn167.pn.pn.pn = phi { ptr, i32 } [ %.pn152, %bb.x ], [ %.pn154, %bb.aa ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.u
  %.pn167.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn, %bb.am ], [ %.pn150, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.s
  %.pn167.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn.pn.pn.pn, %bb.an ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv7optflowL18upscaleOpticalFlowEiiRKNS_3MatES3_RS1_iff(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !57
  store i32 16842752, ptr %10, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !57
  store i32 16842752, ptr %11, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !58
  store ptr %5, ptr %i.g, align 8, !tbaa !11
  %i.i = fpext float %8 to double
  %i.j = fpext float %7 to double
  call fastcc void @_ZN2cv7optflowL20crossBilateralFilterERKNS_11_InputArrayES3_RKNS_17_InputOutputArrayEiddb(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %6, double noundef %i.i, double noundef %i.j, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !57
  store i32 16842752, ptr %13, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !58
  store ptr %0, ptr %i.n, align 8, !tbaa !11
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.0.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !58
  store ptr %0, ptr %i.p, align 8, !tbaa !11
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef -1, double noundef 2.000000e+00, double noundef 0.000000e+00)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn22 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #20
  resume { ptr, i32 } %.pn22
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv7optflowL14calcConfidenceERKNS_3MatES3_S3_RS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, i32 noundef %i.b, i32 noundef %i.d, i32 noundef 5)
  %i.e = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.b, !inline_history !109

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #20
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.l = icmp sgt i32 %i.b, 0
  br i1 %i.l, label %.preheader139.lr.ph, label %._crit_edge159.split

.preheader139.lr.ph:                              ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.m = icmp sgt i32 %i.d, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  br i1 %i.m, label %.preheader139.lr.ph.split, label %._crit_edge159.split

.preheader139.lr.ph.split:                        ; preds = %.preheader139.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !110
  %i.aa = icmp slt i32 %i.z, 2
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !110
  %i.ad = icmp slt i32 %i.ac, 2                   ; 2 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !108 ; 2 uses
  %wide.trip.count172 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.lr.ph.split, %._crit_edge157
  %indvars.iv168 = phi i64 [ 0, %.preheader139.lr.ph.split ], [ %indvars.iv.next169, %._crit_edge157 ] ; 7 uses
  %8 = sub nsw i64 0, %indvars.iv168              ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv168 to i32 ; 3 uses
  %i.ag = xor i32 %i.af, -1
  %i.ah = add nsw i32 %i.b, %i.ag
  %9 = trunc nsw i64 %8 to i32
  br label %bb.d

._crit_edge159.split:                             ; preds = %._crit_edge157, %.preheader139.lr.ph, %_ZN2cv3MataSERKNS_7MatExprE.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.k

bb.c:                                             ; preds = %._crit_edge152
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge157, label %bb.d, !llvm.loop !143

._crit_edge157:                                   ; preds = %bb.c
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge159.split, label %.preheader139, !llvm.loop !144

bb.d:                                             ; preds = %.preheader139, %bb.c
  %indvars.iv165 = phi i64 [ 0, %.preheader139 ], [ %indvars.iv.next166, %bb.c ] ; 7 uses
  %i.aj = load i64, ptr %i.n, align 8
  %i.ak = mul i64 %i.aj, %indvars.iv168
  %.sink.idx.i = select i1 %i.aa, i64 0, i64 %i.ak
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink.idx.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %indvars.iv165 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !111
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !111
  %i.ap = insertelement <4 x float> poison, float %i.am, i64 0
  %i.aq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ap) ; 2 uses
  %10 = sext i32 %i.aq to i64
  %11 = icmp slt i64 %10, %8
  %spec.select = select i1 %11, i32 %9, i32 %i.aq ; 2 uses
  %i.ar = add nsw i32 %spec.select, %i.af
  %.not = icmp slt i32 %i.ar, %i.b
  %.182 = select i1 %.not, i32 %spec.select, i32 %i.ah
  %i.as = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.at = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.as) ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv165 to i32 ; 4 uses
  %i.av = add nsw i32 %i.at, %i.au
  %i.aw = icmp slt i32 %i.av, 0
  %12 = trunc i64 %indvars.iv165 to i32
  %13 = sub i32 0, %12
  %.079 = select i1 %i.aw, i32 %13, i32 %i.at     ; 2 uses
  %i.ax = add nsw i32 %.079, %i.au
  %.not93 = icmp slt i32 %i.ax, %i.d
  %i.ay = xor i32 %i.au, -1
  %i.az = add nsw i32 %i.d, %i.ay
  %.180 = select i1 %.not93, i32 %.079, i32 %i.az
  %i.ba = add nsw i32 %.182, %i.af                ; 3 uses
  %.sroa.speculated126 = call i32 @llvm.smin.i32(i32 %4, i32 %i.ba) ; 3 uses
  %i.bb = sub nsw i32 0, %.sroa.speculated126
  %i.bc = xor i32 %i.ba, -1
  %i.bd = add i32 %i.b, %i.bc
  %.sroa.speculated122 = call i32 @llvm.smin.i32(i32 %4, i32 %i.bd) ; 3 uses
  %i.be = add i32 %.180, %i.au                    ; 3 uses
  %.sroa.speculated118 = call i32 @llvm.smin.i32(i32 %4, i32 %i.be) ; 3 uses
  %i.bf = xor i32 %i.be, -1
  %i.bg = add i32 %i.d, %i.bf
  %.sroa.speculated114 = call i32 @llvm.smin.i32(i32 %4, i32 %i.bg) ; 4 uses
  %.not94147 = icmp slt i32 %.sroa.speculated122, %i.bb
  %i.bh = sub nsw i32 0, %.sroa.speculated118
  %.not97140 = icmp slt i32 %.sroa.speculated114, %i.bh
  %or.cond = select i1 %.not94147, i1 true, i1 %.not97140
  br i1 %or.cond, label %._crit_edge152, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %bb.d
  %i.bi = load i32, ptr %i.o, align 4, !tbaa !110
  %i.bj = icmp slt i32 %i.bi, 2
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.bl = load i64, ptr %i.q, align 8
  %i.bm = mul i64 %i.bl, %indvars.iv168
  %.sink.idx.i101 = select i1 %i.bj, i64 0, i64 %i.bm
  %.sink.i102 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sink.idx.i101
  %i.bn = getelementptr inbounds nuw [3 x i8], ptr %.sink.i102, i64 %indvars.iv165 ; 3 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !110
  %i.bp = icmp slt i32 %i.bo, 2
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !108
  %i.br = load i64, ptr %i.t, align 8
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !27
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !27
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !27
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = sub i32 0, %.sroa.speculated118         ; 2 uses
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = sext i32 %i.be to i64                   ; 2 uses
  %i.cd = sext i32 %.sroa.speculated114 to i64
  %i.ce = sub i32 0, %.sroa.speculated126
  %i.cf = sext i32 %i.ce to i64
  %i.cg = sext i32 %i.ba to i64
  %i.ch = sext i32 %.sroa.speculated122 to i64
  %.not97.not.peel = icmp sgt i32 %.sroa.speculated114, %i.ca
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv163 = phi i64 [ %i.cf, %.preheader.lr.ph.split ], [ %indvars.iv.next164, %._crit_edge ] ; 3 uses
  %.075150 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %.2.lcssa, %._crit_edge ]
  %.076149 = phi i1 [ true, %.preheader.lr.ph.split ], [ false, %._crit_edge ] ; 2 uses
  %.0137148 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %storemerge.lcssa, %._crit_edge ]
  %i.ci = add nsw i64 %indvars.iv163, %i.cg
  %i.cj = mul i64 %i.br, %i.ci
  %.sink.idx.i103 = select i1 %i.bp, i64 0, i64 %i.cj
  %.sink.i104 = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink.idx.i103 ; 2 uses
  %i.ck = getelementptr [3 x i8], ptr %.sink.i104, i64 %i.cb
  %i.cl = getelementptr [3 x i8], ptr %i.ck, i64 %i.cc ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !27
  %i.cn = zext i8 %i.cm to i32
  %i.co = sub nsw i32 %i.bt, %i.cn                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !27
  %i.cr = zext i8 %i.cq to i32
  %i.cs = sub nsw i32 %i.bw, %i.cr                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !27
  %i.cv = zext i8 %i.cu to i32
  %i.cw = sub nsw i32 %i.bz, %i.cv                ; 2 uses
  %i.cx = mul nsw i32 %i.co, %i.co
  %i.cy = mul nsw i32 %i.cs, %i.cs
  %i.cz = add nuw nsw i32 %i.cy, %i.cx
  %i.da = mul nsw i32 %i.cw, %i.cw
  %i.db = add nuw nsw i32 %i.cz, %i.da            ; 3 uses
  %.sroa.speculated.peel = call i32 @llvm.smin.i32(i32 %i.db, i32 %.0137148)
  %storemerge.peel = select i1 %.076149, i32 %i.db, i32 %.sroa.speculated.peel ; 2 uses
  %i.dc = select i1 %.076149, i32 0, i32 %.075150
  %.2.peel = add nsw i32 %i.db, %i.dc             ; 2 uses
  br i1 %.not97.not.peel, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %.preheader
  %invariant.gep = getelementptr [3 x i8], ptr %.sink.i104, i64 %i.cc
  br label %bb.e

._crit_edge152.loopexit160:                       ; preds = %._crit_edge
  %i.dd = sitofp i32 %.2.lcssa to float
  %i.de = sitofp i32 %storemerge.lcssa to float
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit160, %bb.d
  %.0137.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.de, %._crit_edge152.loopexit160 ]
  %.075.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.dd, %._crit_edge152.loopexit160 ]
  %i.df = add i32 %.sroa.speculated126, 1
  %i.dg = add i32 %i.df, %.sroa.speculated122
  %i.dh = add i32 %.sroa.speculated118, 1
  %i.di = add i32 %i.dh, %.sroa.speculated114
  %i.dj = mul nsw i32 %i.di, %i.dg                ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = sitofp i32 %i.dj to float
  %i.dm = fdiv float %.075.lcssa, %i.dl
  %i.dn = fsub float %i.dm, %.0137.lcssa
  %i.do = select i1 %i.dk, float 0.000000e+00, float %i.dn
  %i.dp = load i64, ptr %i.u, align 8
  %i.dq = mul i64 %i.dp, %indvars.iv168
  %.sink.idx.i106 = select i1 %i.ad, i64 0, i64 %i.dq
  %.sink.i107 = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink.idx.i106
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i107, i64 %indvars.iv165
  store float %i.do, ptr %i.dr, align 4, !tbaa !111
  %i.ds = load i64, ptr %i.u, align 8
  %i.dt = mul i64 %i.ds, %indvars.iv168
  %.sink.idx.i108 = select i1 %i.ad, i64 0, i64 %i.dt
  %.sink.i109 = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink.idx.i108
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sink.i109, i64 %indvars.iv165
  %i.dv = load float, ptr %i.du, align 4, !tbaa !111
  %i.dw = fcmp ult float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.f, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %storemerge.lcssa = phi i32 [ %storemerge.peel, %.preheader ], [ %.sroa.speculated, %bb.e ] ; 2 uses
  %.2.lcssa = phi i32 [ %.2.peel, %.preheader ], [ %.2, %bb.e ] ; 2 uses
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1
  %.not94.not = icmp slt i64 %indvars.iv163, %i.ch
  br i1 %.not94.not, label %.preheader, label %._crit_edge152.loopexit160, !llvm.loop !145

bb.e:                                             ; preds = %.peel.next, %bb.e
  %indvars.iv.in = phi i64 [ %i.cb, %.peel.next ], [ %indvars.iv, %bb.e ]
  %.1143 = phi i32 [ %.2.peel, %.peel.next ], [ %.2, %bb.e ]
  %.1138141 = phi i32 [ %storemerge.peel, %.peel.next ], [ %.sroa.speculated, %bb.e ]
  %indvars.iv = add nsw i64 %indvars.iv.in, 1     ; 3 uses
  %gep = getelementptr [3 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.dx = load i8, ptr %gep, align 1, !tbaa !27
  %i.dy = zext i8 %i.dx to i32
  %i.dz = sub nsw i32 %i.bt, %i.dy                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !27
  %i.ec = zext i8 %i.eb to i32
  %i.ed = sub nsw i32 %i.bw, %i.ec                ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !27
  %i.eg = zext i8 %i.ef to i32
  %i.eh = sub nsw i32 %i.bz, %i.eg                ; 2 uses
  %i.ei = mul nsw i32 %i.dz, %i.dz
  %i.ej = mul nsw i32 %i.ed, %i.ed
  %i.ek = add nuw nsw i32 %i.ej, %i.ei
  %i.el = mul nsw i32 %i.eh, %i.eh
  %i.em = add nuw nsw i32 %i.ek, %i.el            ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.em, i32 %.1138141) ; 2 uses
  %.2 = add nsw i32 %i.em, %.1143                 ; 2 uses
  %.not97.not = icmp slt i64 %indvars.iv, %i.cd
  br i1 %.not97.not, label %bb.e, label %._crit_edge, !llvm.loop !146

bb.f:                                             ; preds = %._crit_edge152
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv7optflowL14calcConfidenceERKNS_3MatES3_S3_RS1_i, ptr noundef nonnull @.str.1, i32 noundef 269) #21
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !27
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.en, %bb.i ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eo, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %bb.b ]
  resume { ptr, i32 } %.pn.pn
}
end_hunk_0
begin_hunk_1_@_ZN2cv7optflowL2wdERNS_3MatEiiiid:bb.a
  %.02734 = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.split ] ; 3 uses
  %i.ai = mul nsw i32 %.02734, %.02734            ; 3 uses
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

._crit_edge.split.unr-lcssa:                      ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.split.unr-lcssa ]
  %.02531.epil.init = phi i32 [ %i.b, %.lr.ph ], [ %i.be, %._crit_edge.split.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.aj = mul nsw i32 %.02531.epil.init, %.02531.epil.init
  %i.ak = add nuw nsw i32 %i.ai, %i.aj
  %i.al = sub nsw i32 0, %i.ak
  %i.am = sitofp i32 %i.al to float
  %i.an = load i64, ptr %i.e, align 8
  %i.ao = mul i64 %i.an, %indvars.iv44
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.epil, i64 %indvars.iv.epil.init
  store float %i.am, ptr %i.ap, align 4, !tbaa !111
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.unr-lcssa, %.epil.preheader
  %i.aq = add nsw i32 %.02734, 1
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %._crit_edge38.split, label %.lr.ph, !llvm.loop !175

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.02531 = phi i32 [ %i.be, %.lr.ph.new ], [ %i.b, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ar = mul nsw i32 %.02531, %.02531
  %i.as = add nuw nsw i32 %i.ai, %i.ar
  %i.at = sub nsw i32 0, %i.as
  %i.au = sitofp i32 %i.at to float
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = mul i64 %i.av, %indvars.iv44
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aw
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  store float %i.au, ptr %i.ax, align 4, !tbaa !111
  %.neg = xor i32 %.02531, -1
  %i.ay = add nsw i32 %.02531, 1
  %.neg66 = mul i32 %i.ay, %.neg
  %.neg67 = sub i32 %.neg66, %i.ai
  %i.az = sitofp i32 %.neg67 to float
  %i.ba = load i64, ptr %i.e, align 8
  %i.bb = mul i64 %i.ba, %indvars.iv44
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.1, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store float %i.az, ptr %i.bd, align 4, !tbaa !111
  %i.be = add nsw i32 %.02531, 2                  ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.unr-lcssa, label %.lr.ph.new, !llvm.loop !176

._crit_edge38.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph37, %bb.a
  %i.bf = fmul double %5, 2.000000e+00
  %i.bg = fmul double %5, %i.bf
  %i.bh = fdiv double 1.000000e+00, %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.bj, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !58
  store ptr %0, ptr %i.bi, align 8, !tbaa !11
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1, double noundef %i.bh, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.bl, align 4, !tbaa !57
  store i32 16842752, ptr %7, align 8, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.bm, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.bo, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !58
  store ptr %0, ptr %i.bn, align 8, !tbaa !11
  call void @_ZN2cv3expERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #12

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare void @_ZN2cv3expERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7optflow28CalcOpticalFlowSingleScaleSFINS_3VecIhLi3EEENS2_IfLi2EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7optflow28CalcOpticalFlowSingleScaleSFINS_3VecIhLi3EEENS2_IfLi2EEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 2 uses
  %i.d = or disjoint i32 %i.c, 1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.d, i32 noundef %i.d, i32 noundef 5)
  %i.e = load i32, ptr %1, align 4, !tbaa !96     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !98   ; 2 uses
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %.lr.ph241, label %._crit_edge242

.lr.ph241:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not157193 = icmp slt i32 %i.b, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !177, !nonnull !178, !align !179 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !66
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph241.split.preheader, label %._crit_edge242

.lr.ph241.split.preheader:                        ; preds = %.lr.ph241
  %i.v = sext i32 %i.e to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.w = or disjoint i32 %smax, 1
  %i.x = sext i32 %i.d to i64                     ; 2 uses
  %i.y = icmp sgt i32 %i.b, -1
  %wide.trip.count270 = zext nneg i32 %i.w to i64 ; 2 uses
  br label %.lr.ph241.split

._crit_edge242:                                   ; preds = %._crit_edge238, %.lr.ph241, %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

.lr.ph241.split:                                  ; preds = %.lr.ph241.split.preheader, %._crit_edge238
  %i.z = phi i32 [ %i.g, %.lr.ph241.split.preheader ], [ %i.aw, %._crit_edge238 ]
  %i.aa = phi ptr [ %i.r, %.lr.ph241.split.preheader ], [ %i.ax, %._crit_edge238 ] ; 2 uses
  %i.ab = phi ptr [ %i.r, %.lr.ph241.split.preheader ], [ %i.ay, %._crit_edge238 ] ; 5 uses
  %indvars.iv257 = phi i64 [ %i.v, %.lr.ph241.split.preheader ], [ %indvars.iv.next258, %._crit_edge238 ] ; 10 uses
  %indvars280 = trunc nsw i64 %indvars.iv257 to i32 ; 4 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !180, !nonnull !178, !align !179 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ah = mul i64 %i.ag, %indvars.iv257
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77
  %i.an = mul i64 %i.am, %indvars.iv257
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !66 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph237, label %._crit_edge238

.lr.ph237:                                        ; preds = %.lr.ph241.split
  %i.as = xor i32 %indvars280, -1
  %i.at = add nsw i64 %indvars.iv257, %i.x
  %i.au = trunc i64 %indvars.iv257 to i32
  %i.av = sub i32 0, %i.au
  br label %bb.b

._crit_edge238.loopexit:                          ; preds = %bb.f
  %.pre281 = load i32, ptr %i.f, align 4, !tbaa !98
  br label %._crit_edge238

._crit_edge238:                                   ; preds = %._crit_edge238.loopexit, %.lr.ph241.split
  %i.aw = phi i32 [ %.pre281, %._crit_edge238.loopexit ], [ %i.z, %.lr.ph241.split ] ; 2 uses
  %i.ax = phi ptr [ %i.ik, %._crit_edge238.loopexit ], [ %i.aa, %.lr.ph241.split ]
  %i.ay = phi ptr [ %i.ik, %._crit_edge238.loopexit ], [ %i.ab, %.lr.ph241.split ]
  %indvars.iv.next258 = add nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.az = sext i32 %i.aw to i64
  %i.ba = icmp slt i64 %indvars.iv.next258, %i.az
  br i1 %i.ba, label %.lr.ph241.split, label %._crit_edge242, !llvm.loop !181

bb.b:                                             ; preds = %.lr.ph237, %bb.f
  %i.bb = phi ptr [ %i.aa, %.lr.ph237 ], [ %i.ik, %bb.f ]
  %indvars.iv248 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next249, %bb.f ] ; 11 uses
  %i.bc = phi i32 [ %i.aq, %.lr.ph237 ], [ %i.im, %bb.f ] ; 3 uses
  %i.bd = phi ptr [ %i.ab, %.lr.ph237 ], [ %i.ik, %bb.f ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv248
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !27
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars279 = trunc i64 %indvars.iv248 to i32   ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv248 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !111
  %i.bi = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bj = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bi) ; 2 uses
  %i.bk = add nsw i32 %i.bj, %indvars280
  %i.bl = icmp slt i32 %i.bk, 0
  %spec.select = select i1 %i.bl, i32 %i.av, i32 %i.bj ; 2 uses
  %i.bm = add nsw i32 %spec.select, %indvars280
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !65 ; 3 uses
  %.not150 = icmp slt i32 %i.bm, %i.bo
  %i.bp = add i32 %i.bo, %i.as
  %.1138 = select i1 %.not150, i32 %spec.select, i32 %i.bp ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !111
  %i.bs = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bt = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bs) ; 2 uses
  %i.bu = add nsw i32 %i.bt, %indvars279
  %i.bv = icmp slt i32 %i.bu, 0
  %3 = trunc i64 %indvars.iv248 to i32
  %4 = sub i32 0, %3
  %spec.select159 = select i1 %i.bv, i32 %4, i32 %i.bt ; 2 uses
  %i.bw = add nsw i32 %spec.select159, %indvars279
  %.not151 = icmp slt i32 %i.bw, %i.bc
  %i.bx = trunc i64 %indvars.iv248 to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = add i32 %i.bc, %i.by
  %.1136 = select i1 %.not151, i32 %spec.select159, i32 %i.bz ; 5 uses
  %i.ca = add i32 %.1138, %indvars280             ; 3 uses
  %i.cb = load i32, ptr %i.k, align 4, !tbaa !74  ; 4 uses
  %.sroa.speculated176 = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.ca) ; 2 uses
  %i.cc = sub nsw i32 0, %.sroa.speculated176     ; 2 uses
  %i.cd = xor i32 %i.ca, -1
  %i.ce = add i32 %i.bo, %i.cd
  %.sroa.speculated172 = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.ce) ; 3 uses
  %i.cf = add i32 %.1136, %indvars279             ; 3 uses
  %.sroa.speculated168 = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cf) ; 6 uses
  %i.cg = sub nsw i32 0, %.sroa.speculated168     ; 2 uses
  %i.ch = xor i32 %i.cf, -1
  %i.ci = add i32 %i.bc, %i.ch
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.ci) ; 5 uses
  %i.cj = sitofp i32 %.1138 to float              ; 4 uses
  %i.ck = sitofp i32 %.1136 to float              ; 4 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !182, !nonnull !178, !align !179 ; 3 uses
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !100
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = add nsw i64 %indvars.iv257, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !110
  %i.cr = icmp slt i32 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !108 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 128
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = mul i64 %i.cv, %i.co
  %.sink.idx.i = select i1 %i.cr, i64 0, i64 %i.cw
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sink.idx.i
  %i.cx = getelementptr [3 x i8], ptr %.sink.i, i64 %indvars.iv248
  %i.cy = getelementptr [3 x i8], ptr %i.cx, i64 %i.cn ; 3 uses
  %i.cz = add nsw i64 %indvars.iv248, %i.x
  br i1 %i.y, label %.lr.ph186.split, label %.preheader

.lr.ph186.split:                                  ; preds = %bb.c
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !183, !nonnull !178, !align !179 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !108
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !77
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.dg = load i64, ptr %i.o, align 8, !tbaa !77
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !184, !nonnull !178, !align !179
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !91 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  br label %.lr.ph

.preheader:                                       ; preds = %._crit_edge, %bb.c
  %.not152213 = icmp slt i32 %.sroa.speculated172, %i.cc
  br i1 %.not152213, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %.preheader
  %.not156200 = icmp slt i32 %.sroa.speculated, %i.cg
  %i.dl = load ptr, ptr %i.n, align 8
  %i.dm = load i64, ptr %i.o, align 8
  br i1 %.not156200, label %._crit_edge219, label %.lr.ph218.split

.lr.ph218.split:                                  ; preds = %.lr.ph218
  br i1 %.not157193, label %.lr.ph206.us.preheader, label %.lr.ph218.split.split

.lr.ph206.us.preheader:                           ; preds = %.lr.ph218.split
  %i.dn = sub i32 %.sroa.speculated, %.sroa.speculated168
  %i.do = and i32 %i.dn, 1
  %lcmp.mod.not.not = icmp eq i32 %i.do, 0
  %i.dp = sub nsw i32 %.1136, %.sroa.speculated168
  %i.dq = sitofp i32 %i.dp to float
  %i.dr = sub i32 1, %.sroa.speculated168
  %i.ds = sub i32 0, %.sroa.speculated168
  %i.dt = icmp eq i32 %.sroa.speculated, %i.ds
  br label %.lr.ph206.us

.lr.ph206.us:                                     ; preds = %.lr.ph206.us.preheader, %._crit_edge207.split.us.us
  %.0120217.us224 = phi i32 [ %i.ec, %._crit_edge207.split.us.us ], [ %i.cc, %.lr.ph206.us.preheader ] ; 3 uses
  %.0127216.us225 = phi float [ %.2.us.us.lcssa, %._crit_edge207.split.us.us ], [ %i.ck, %.lr.ph206.us.preheader ] ; 2 uses
  %.0129215.us226 = phi float [ %.2131.us.us.lcssa, %._crit_edge207.split.us.us ], [ %i.cj, %.lr.ph206.us.preheader ] ; 2 uses
  %.0132214.us227 = phi float [ %.2134.us.us.lcssa, %._crit_edge207.split.us.us ], [ f0x7F7FFFFF, %.lr.ph206.us.preheader ] ; 3 uses
  %i.du = add nsw i32 %.0120217.us224, %.1138
  %i.dv = sitofp i32 %i.du to float               ; 2 uses
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph206.us
  %i.dw = fcmp ogt float %.0132214.us227, 0.000000e+00 ; 3 uses
  %.2134.us.us.prol = select i1 %i.dw, float 0.000000e+00, float %.0132214.us227 ; 2 uses
  %.2131.us.us.prol = select i1 %i.dw, float %i.dv, float %.0129215.us226 ; 2 uses
  %.2.us.us.prol = select i1 %i.dw, float %i.dq, float %.0127216.us225 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph206.us
  %.0119204.us.us.unr = phi i32 [ %i.cg, %.lr.ph206.us ], [ %i.dr, %.prol.loopexit.unr-lcssa ]
  %.1128203.us.us.unr = phi float [ %.0127216.us225, %.lr.ph206.us ], [ %.2.us.us.prol, %.prol.loopexit.unr-lcssa ]
  %.1130202.us.us.unr = phi float [ %.0129215.us226, %.lr.ph206.us ], [ %.2131.us.us.prol, %.prol.loopexit.unr-lcssa ]
  %.1133201.us.us.unr = phi float [ %.0132214.us227, %.lr.ph206.us ], [ %.2134.us.us.prol, %.prol.loopexit.unr-lcssa ]
  %.2134.us.us.lcssa.unr = phi float [ poison, %.lr.ph206.us ], [ %.2134.us.us.prol, %.prol.loopexit.unr-lcssa ]
  %.2131.us.us.lcssa.unr = phi float [ poison, %.lr.ph206.us ], [ %.2131.us.us.prol, %.prol.loopexit.unr-lcssa ]
  %.2.us.us.lcssa.unr = phi float [ poison, %.lr.ph206.us ], [ %.2.us.us.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.dt, label %._crit_edge207.split.us.us, label %.lr.ph206.us.new

.lr.ph206.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph206.us.new
  %.0119204.us.us = phi i32 [ %i.eb, %.lr.ph206.us.new ], [ %.0119204.us.us.unr, %.prol.loopexit ] ; 3 uses
  %.1128203.us.us = phi float [ %.2.us.us, %.lr.ph206.us.new ], [ %.1128203.us.us.unr, %.prol.loopexit ]
  %.1130202.us.us = phi float [ %.2131.us.us, %.lr.ph206.us.new ], [ %.1130202.us.us.unr, %.prol.loopexit ]
  %.1133201.us.us = phi float [ %.2134.us.us, %.lr.ph206.us.new ], [ %.1133201.us.us.unr, %.prol.loopexit ] ; 2 uses
  %i.dx = fcmp ogt float %.1133201.us.us, 0.000000e+00 ; 3 uses
  %i.dy = add nsw i32 %.0119204.us.us, %.1136
  %i.dz = sitofp i32 %i.dy to float
  %.2134.us.us = select i1 %i.dx, float 0.000000e+00, float %.1133201.us.us ; 2 uses
  %.2131.us.us = select i1 %i.dx, float %i.dv, float %.1130202.us.us ; 2 uses
  %.2.us.us = select i1 %i.dx, float %i.dz, float %.1128203.us.us ; 2 uses
  %i.ea = add nsw i32 %.0119204.us.us, 1
  %i.eb = add nsw i32 %.0119204.us.us, 2
  %.not156.us.us.not.1 = icmp slt i32 %i.ea, %.sroa.speculated
  br i1 %.not156.us.us.not.1, label %.lr.ph206.us.new, label %._crit_edge207.split.us.us, !llvm.loop !185

._crit_edge207.split.us.us:                       ; preds = %.lr.ph206.us.new, %.prol.loopexit
  %.2134.us.us.lcssa = phi float [ %.2134.us.us.lcssa.unr, %.prol.loopexit ], [ %.2134.us.us, %.lr.ph206.us.new ]
  %.2131.us.us.lcssa = phi float [ %.2131.us.us.lcssa.unr, %.prol.loopexit ], [ %.2131.us.us, %.lr.ph206.us.new ] ; 2 uses
  %.2.us.us.lcssa = phi float [ %.2.us.us.lcssa.unr, %.prol.loopexit ], [ %.2.us.us, %.lr.ph206.us.new ] ; 2 uses
  %i.ec = add nsw i32 %.0120217.us224, 1
  %.not152.us228.not = icmp slt i32 %.0120217.us224, %.sroa.speculated172
  br i1 %.not152.us228.not, label %.lr.ph206.us, label %._crit_edge219, !llvm.loop !186

.lr.ph218.split.split:                            ; preds = %.lr.ph218.split
  %i.ed = load ptr, ptr %i.q, align 8, !tbaa !187, !nonnull !178, !align !179 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !108
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 128
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !77
  %i.ei = sub i32 0, %.sroa.speculated168
  %i.ej = sext i32 %i.ei to i64
  %i.ek = sext i32 %i.cf to i64
  %i.el = sext i32 %.sroa.speculated to i64
  %i.em = sub i32 0, %.sroa.speculated176
  %i.en = sext i32 %i.em to i64
  %i.eo = sext i32 %i.ca to i64
  %i.ep = sext i32 %.sroa.speculated172 to i64
  %invariant.gep288 = getelementptr [3 x i8], ptr %i.ct, i64 %indvars.iv248
  %invariant.gep293 = getelementptr [3 x i8], ptr %i.ef, i64 %i.ek
  br label %.lr.ph206

.lr.ph:                                           ; preds = %.lr.ph186.split, %._crit_edge
  %indvars.iv259 = phi i64 [ %indvars.iv257, %.lr.ph186.split ], [ %indvars.iv.next260, %._crit_edge ] ; 2 uses
  %indvars.iv255 = phi i64 [ 0, %.lr.ph186.split ], [ %indvars.iv.next256, %._crit_edge ] ; 3 uses
  %i.eq = mul i64 %i.cv, %indvars.iv259
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.eq
  %i.es = mul i64 %i.de, %indvars.iv255
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.es
  %i.eu = mul i64 %i.dg, %indvars.iv255
  %i.ev = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.eu
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, 1 ; 2 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1
  %i.ew = icmp slt i64 %indvars.iv.next260, %i.at
  br i1 %i.ew, label %.lr.ph, label %.preheader, !llvm.loop !188

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv250 = phi i64 [ %indvars.iv248, %.lr.ph ], [ %indvars.iv.next251, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !111
  %i.ez = fpext float %i.ey to double
  %i.fa = getelementptr inbounds nuw [3 x i8], ptr %i.er, i64 %indvars.iv250 ; 3 uses
  %i.fb = load i8, ptr %i.cy, align 1, !tbaa !27
  %i.fc = zext i8 %i.fb to i32
  %i.fd = load i8, ptr %i.fa, align 1, !tbaa !27
  %i.fe = zext i8 %i.fd to i32
  %i.ff = sub nsw i32 %i.fc, %i.fe
  %i.fg = call i32 @llvm.abs.i32(i32 %i.ff, i1 true)
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !106
  %i.fk = fmul double %i.fj, %i.ez
  %i.fl = load i8, ptr %i.dj, align 1, !tbaa !27
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !27
  %i.fp = zext i8 %i.fo to i32
  %i.fq = sub nsw i32 %i.fm, %i.fp
  %i.fr = call i32 @llvm.abs.i32(i32 %i.fq, i1 true)
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !106
  %i.fv = fmul double %i.fk, %i.fu
  %i.fw = load i8, ptr %i.dk, align 1, !tbaa !27
  %i.fx = zext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !27
  %i.ga = zext i8 %i.fz to i32
  %i.gb = sub nsw i32 %i.fx, %i.ga
  %i.gc = call i32 @llvm.abs.i32(i32 %i.gb, i1 true)
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.gd
end_hunk_1
