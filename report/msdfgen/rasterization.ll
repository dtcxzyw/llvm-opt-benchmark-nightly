Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/rasterization?download=true
begin_hunk_0_@_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE:bb.a
  %wide.trip.count = zext nneg i32 %.fr35 to i64
  br label %.lr.ph30.split.us

.lr.ph30.split.us:                                ; preds = %.lr.ph30.split.us.preheader, %._crit_edge.us
  %indvars.iv39 = phi i64 [ 0, %.lr.ph30.split.us.preheader ], [ %indvars.iv.next40, %._crit_edge.us ] ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv39 to i32
  %i.y = uitofp nneg i32 %i.x to double
  %i.z = fadd double %i.y, 5.000000e-01
  %i.aa = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z)
          to label %bb.c unwind label %.split.us

bb.c:                                             ; preds = %.lr.ph30.split.us
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.aa)
          to label %.preheader.us unwind label %.split.us

bb.d:                                             ; preds = %.preheader.us, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = uitofp nneg i32 %i.ab to double
  %i.ad = fadd double %i.ac, 5.000000e-01
  %i.ae = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.ad)
          to label %bb.e unwind label %.split33.us

bb.e:                                             ; preds = %bb.d
  %i.af = invoke noundef zeroext i1 @_ZNK7msdfgen8Scanline6filledEdNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.ae, i32 noundef %4)
          to label %bb.f unwind label %.split33.us

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !16 ; 2 uses
  %i.ai = fcmp ule float %i.ah, %3
  %.not.us = xor i1 %i.af, %i.ai
  br i1 %.not.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = fsub float %i.o, %i.ah
  store float %i.aj, ptr %i.ag, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond38.not, label %._crit_edge.us, label %bb.d, !llvm.loop !25

.preheader.us:                                    ; preds = %bb.c
  %i.ak = mul nsw i64 %indvars.iv39, %i.w
  %i.al = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ak
  br label %bb.d

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge31, label %.lr.ph30.split.us, !llvm.loop !26

.split.us:                                        ; preds = %bb.c, %.lr.ph30.split.us
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.split33.us:                                      ; preds = %bb.e, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge31:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge31
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #8
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

_ZN7msdfgen8ScanlineD2Ev.exit:                    ; preds = %._crit_edge31, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void

.lr.ph30.split:                                   ; preds = %.lr.ph30, %.preheader
  %.029 = phi i32 [ %i.ax, %.preheader ], [ 0, %.lr.ph30 ] ; 2 uses
  %i.au = uitofp nneg i32 %.029 to double
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.av)
          to label %bb.j unwind label %.split

bb.j:                                             ; preds = %.lr.ph30.split
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.aw)
          to label %.preheader unwind label %.split

.preheader:                                       ; preds = %bb.j
  %i.ax = add nuw nsw i32 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.n
  br i1 %exitcond.not, label %._crit_edge31, label %.lr.ph30.split, !llvm.loop !26

.split:                                           ; preds = %bb.j, %.lr.ph30.split
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.split, %.split.us, %.split33.us
  %.pn = phi { ptr, i32 } [ %i.an, %.split33.us ], [ %i.ay, %.split ], [ %i.am, %.split.us ]
  %i.az = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i26, label %_ZN7msdfgen8ScanlineD2Ev.exit27, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !24
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #8
  br label %_ZN7msdfgen8ScanlineD2Ev.exit27

_ZN7msdfgen8ScanlineD2Ev.exit27:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapSection.5") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 11 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !27 ; 6 uses
  %.fr165.i = freeze i32 %.sroa.2.0.copyload      ; 6 uses
  %i.a = icmp ne i32 %.fr165.i, 0
  %i.b = icmp ne i32 %.sroa.3.0.copyload, 0
  %or.cond.i = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN7msdfgenL27multiDistanceSignCorrectionILi3EEEvNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27 ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %0, align 8, !tbaa !29
  %i.c = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload, %i.c ; 2 uses
  %i.d = add nsw i32 %.sroa.3.0.copyload, -1      ; 2 uses
  %i.e = mul nsw i32 %.sroa.4.0.copyload, %i.d
  %i.f = sub nsw i32 0, %.sroa.4.0.copyload
  %.sroa.8.0 = select i1 %.not.i.i, i32 %.sroa.4.0.copyload, i32 %i.f
  %narrow = select i1 %.not.i.i, i32 0, i32 %i.e
  %.sroa.0.0.idx = sext i32 %narrow to i64
  %.sroa.0.0 = getelementptr inbounds [4 x i8], ptr %.sroa.05.0.copyload, i64 %.sroa.0.0.idx ; 2 uses
  %i.g = fadd float %3, %3                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  %i.h = mul nsw i32 %.sroa.3.0.copyload, %.fr165.i ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.c, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
          to label %.noexc.i unwind label %.thread126.i

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #10
          to label %.noexc107.i unwind label %.thread126.i ; 6 uses

.noexc107.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  store i8 0, ptr %i.k, align 1, !tbaa !30
  %i.l = add nsw i64 %i.i, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc107.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc107.i
  %i.o = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.o, label %.lr.ph150.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.lr.ph150.i:                                      ; preds = %bb.e
  %i.p = icmp sgt i32 %.fr165.i, 0
  br i1 %i.p, label %.lr.ph150.split.us.preheader.i, label %.lr.ph150.split.i

.lr.ph150.split.us.preheader.i:                   ; preds = %.lr.ph150.i
  %wide.trip.count.i = zext nneg i32 %.fr165.i to i64 ; 9 uses
  %i.q = sext i32 %.sroa.8.0 to i64               ; 2 uses
  %i.r = zext nneg i32 %.sroa.3.0.copyload to i64 ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.g, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph150.split.us.i

.lr.ph150.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph150.split.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us.i ], [ 0, %.lr.ph150.split.us.preheader.i ] ; 3 uses
  %.082148.us.i = phi i1 [ %.284.us.i, %._crit_edge.us.i ], [ false, %.lr.ph150.split.us.preheader.i ]
  %.093146.us.i = phi ptr [ %i.ax, %._crit_edge.us.i ], [ %i.k, %.lr.ph150.split.us.preheader.i ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fadd double %i.v, 5.000000e-01
  %i.x = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.w)
          to label %bb.f unwind label %.split.us.i

bb.f:                                             ; preds = %.lr.ph150.split.us.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.x)
          to label %.preheader137.us.i.preheader unwind label %.split.us.i

.preheader137.us.i.preheader:                     ; preds = %bb.f
  %i.y = mul nsw i64 %indvars.iv, %i.q
  %i.z = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.y
  br label %.preheader137.us.i

.preheader137.us.i:                               ; preds = %.preheader137.us.i.preheader, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %.preheader137.us.i.preheader ] ; 3 uses
  %.183144.us.i = phi i1 [ %.284.us.i, %bb.k ], [ %.082148.us.i, %.preheader137.us.i.preheader ]
  %.194142.us.i = phi ptr [ %i.ax, %bb.k ], [ %.093146.us.i, %.preheader137.us.i.preheader ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.ac)
          to label %bb.g unwind label %.split154.us.i

bb.g:                                             ; preds = %.preheader137.us.i
  %i.ae = invoke noundef zeroext i1 @_ZNK7msdfgen8Scanline6filledEdNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.ad, i32 noundef %4)
          to label %bb.h unwind label %.split154.us.i

bb.h:                                             ; preds = %bb.g
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i ; 3 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %i.aj = extractelement <2 x float> %i.ag, i64 0 ; 4 uses
  %i.ak = extractelement <2 x float> %i.ag, i64 1 ; 4 uses
  %i.al = fcmp olt float %i.ak, %i.aj
  %i.am = select i1 %i.al, float %i.ak, float %i.aj ; 2 uses
  %i.an = fcmp olt float %i.aj, %i.ak
  %i.ao = select i1 %i.an, float %i.ak, float %i.aj ; 2 uses
  %i.ap = fcmp olt float %i.ai, %i.ao
  %i.aq = select i1 %i.ap, float %i.ai, float %i.ao ; 2 uses
  %i.ar = fcmp olt float %i.am, %i.aq
  %i.as = select i1 %i.ar, float %i.aq, float %i.am ; 2 uses
  %i.at = fcmp oeq float %i.as, %3
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fcmp ule float %i.as, %3
  %.not106.us.i = xor i1 %i.ae, %i.au
  br i1 %.not106.us.i, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = fsub <2 x float> %i.t, %i.ag
  store <2 x float> %i.av, ptr %i.af, align 4, !tbaa !16
  %i.aw = fsub float %i.g, %i.ai
  store float %i.aw, ptr %i.ah, align 4, !tbaa !16
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sink.i = phi i8 [ -1, %bb.j ], [ 1, %bb.i ]
  store i8 %.sink.i, ptr %.194142.us.i, align 1, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h
  %.284.us.i = phi i1 [ true, %bb.h ], [ %.183144.us.i, %.sink.split.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.194142.us.i, i64 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond170.not.i, label %._crit_edge.us.i, label %.preheader137.us.i, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond171.not.i, label %._crit_edge151.i, label %.lr.ph150.split.us.i, !llvm.loop !32

.split.us.i:                                      ; preds = %bb.f, %.lr.ph150.split.us.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i

.split154.us.i:                                   ; preds = %bb.g, %.preheader137.us.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i

._crit_edge151.i:                                 ; preds = %._crit_edge.us.i
  br i1 %.284.us.i, label %.preheader.preheader.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.preheader.preheader.i:                           ; preds = %._crit_edge151.i
  %i.ba = sub nsw i64 0, %wide.trip.count.i       ; 2 uses
  %i.bb = add nsw i32 %.fr165.i, -1               ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = zext nneg i32 %i.d to i64
  %.not201.i = icmp eq i32 %i.bb, 0               ; 2 uses
  %exitcond176.peel.not.i = icmp eq i32 %.fr165.i, 1 ; 2 uses
  br label %.preheader.i

.thread126.i:                                     ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit109.i

.lr.ph150.split.i:                                ; preds = %.lr.ph150.i, %.preheader137.i
  %.092147.i = phi i32 [ %i.bi, %.preheader137.i ], [ 0, %.lr.ph150.i ] ; 2 uses
  %i.bf = uitofp nneg i32 %.092147.i to double
  %i.bg = fadd double %i.bf, 5.000000e-01
  %i.bh = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.bg)
          to label %bb.l unwind label %.split.i

bb.l:                                             ; preds = %.lr.ph150.split.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.bh)
          to label %.preheader137.i unwind label %.split.i

.preheader137.i:                                  ; preds = %bb.l
  %i.bi = add nuw nsw i32 %.092147.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bi, %.sroa.3.0.copyload
  br i1 %exitcond.not.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %.lr.ph150.split.i, !llvm.loop !32

.split.i:                                         ; preds = %bb.l, %.lr.ph150.split.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv185.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next186.i, %._crit_edge.i ] ; 4 uses
  %.295162.i = phi ptr [ %i.k, %.preheader.preheader.i ], [ %.us-phi161.i, %._crit_edge.i ] ; 9 uses
  %.not102.i = icmp eq i64 %indvars.iv185.i, 0
  %i.bk = icmp samesign ult i64 %indvars.iv185.i, %i.bd ; 4 uses
  %i.bl = mul nsw i64 %indvars.iv185.i, %i.q
  %i.bm = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.bl ; 8 uses
  %i.bn = load i8, ptr %.295162.i, align 1, !tbaa !30
  %.not.us.peel.i = icmp eq i8 %i.bn, 0           ; 2 uses
  br i1 %.not102.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.preheader.i
  br i1 %.not.us.peel.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.lr.ph.split.preheader.i
  br i1 %.not201.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.295162.i, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !30
  %i.bq = sext i8 %i.bp to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.peel.i = phi i32 [ %i.bq, %bb.n ], [ 0, %bb.m ]
  %i.br = getelementptr inbounds i8, ptr %.295162.i, i64 %i.ba
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !30
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add nsw i32 %.1.peel.i, %i.bt           ; 2 uses
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %.295162.i, i64 %wide.trip.count.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.bx = sext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bu, %i.bx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3.peel.i = phi i32 [ %i.by, %bb.p ], [ %i.bu, %bb.o ]
  %i.bz = icmp slt i32 %.3.peel.i, 0
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = load <2 x float>, ptr %i.bm, align 4, !tbaa !16
  %i.cb = fsub <2 x float> %i.t, %i.ca
  store <2 x float> %i.cb, ptr %i.bm, align 4, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !16
  %i.ce = fsub float %i.g, %i.cd
  store float %i.ce, ptr %i.cc, align 4, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph.split.preheader.i
  br i1 %exitcond176.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.preheader.i
  br i1 %.not.us.peel.i, label %bb.t, label %bb.z

bb.t:                                             ; preds = %.lr.ph.split.us.preheader.i
  br i1 %.not201.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.295162.i, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !30
  %i.ch = sext i8 %i.cg to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.us.peel.i = phi i32 [ %i.ch, %bb.u ], [ 0, %bb.t ] ; 2 uses
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.295162.i, i64 %wide.trip.count.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !30
  %i.ck = sext i8 %i.cj to i32
  %i.cl = add nsw i32 %.1.us.peel.i, %i.ck
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3.us.peel.i = phi i32 [ %i.cl, %bb.w ], [ %.1.us.peel.i, %bb.v ]
  %i.cm = icmp slt i32 %.3.us.peel.i, 0
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cn = load <2 x float>, ptr %i.bm, align 4, !tbaa !16
  %i.co = fsub <2 x float> %i.t, %i.cn
  store <2 x float> %i.co, ptr %i.bm, align 4, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !16
  %i.cr = fsub float %i.g, %i.cq
  store float %i.cr, ptr %i.cp, align 4, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.lr.ph.split.us.preheader.i
  br i1 %exitcond176.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.z, %bb.ag
  %indvars.iv178.i = phi i64 [ %indvars.iv.next179.i, %bb.ag ], [ 1, %bb.z ] ; 3 uses
  %.396157.us.pn.i = phi ptr [ %.396157.us.i, %bb.ag ], [ %.295162.i, %bb.z ] ; 3 uses
  %.396157.us.i = getelementptr inbounds nuw i8, ptr %.396157.us.pn.i, i64 1 ; 3 uses
  %i.cs = load i8, ptr %.396157.us.i, align 1, !tbaa !30
  %.not.us.i = icmp eq i8 %i.cs, 0
  br i1 %.not.us.i, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %.lr.ph.split.us.i
  %i.ct = load i8, ptr %.396157.us.pn.i, align 1, !tbaa !30
  %i.cu = sext i8 %i.ct to i32                    ; 2 uses
  %i.cv = icmp samesign ult i64 %indvars.iv178.i, %i.bc
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %.396157.us.pn.i, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30
  %i.cy = sext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, %i.cu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.us.i = phi i32 [ %i.cz, %bb.ab ], [ %i.cu, %bb.aa ] ; 2 uses
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %.396157.us.i, i64 %wide.trip.count.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !30
  %i.dc = sext i8 %i.db to i32
  %i.dd = add nsw i32 %.1.us.i, %i.dc
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3.us.i = phi i32 [ %i.dd, %bb.ad ], [ %.1.us.i, %bb.ac ]
  %i.de = icmp slt i32 %.3.us.i, 0
  br i1 %i.de, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.idx204.i = mul nuw nsw i64 %indvars.iv178.i, 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx204.i ; 3 uses
  %i.dg = load <2 x float>, ptr %i.df, align 4, !tbaa !16
  %i.dh = fsub <2 x float> %i.t, %i.dg
  store <2 x float> %i.dh, ptr %i.df, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !16
  %i.dk = fsub float %i.g, %i.dj
  store float %i.dk, ptr %i.di, align 4, !tbaa !16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph.split.us.i
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count.i
  br i1 %exitcond183.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.an, %bb.ag, %bb.z, %bb.s
  %.us-phi161.i = getelementptr i8, ptr %.295162.i, i64 %wide.trip.count.i
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %exitcond189.not.i = icmp eq i64 %indvars.iv.next186.i, %i.r
  br i1 %exitcond189.not.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %.preheader.i, !llvm.loop !35

.lr.ph.split.i:                                   ; preds = %bb.s, %bb.an
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i, %bb.an ], [ 1, %bb.s ] ; 3 uses
  %.396157.pn.i = phi ptr [ %.396157.i, %bb.an ], [ %.295162.i, %bb.s ] ; 3 uses
  %.396157.i = getelementptr inbounds nuw i8, ptr %.396157.pn.i, i64 1 ; 4 uses
  %i.dl = load i8, ptr %.396157.i, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %.lr.ph.split.i
  %i.dm = load i8, ptr %.396157.pn.i, align 1, !tbaa !30
  %i.dn = sext i8 %i.dm to i32                    ; 2 uses
  %i.do = icmp samesign ult i64 %indvars.iv172.i, %i.bc
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.396157.pn.i, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !30
  %i.dr = sext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, %i.dn
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i32 [ %i.ds, %bb.ai ], [ %i.dn, %bb.ah ]
  %i.dt = getelementptr inbounds i8, ptr %.396157.i, i64 %i.ba
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !30
  %i.dv = sext i8 %i.du to i32
  %i.dw = add nsw i32 %.1.i, %i.dv                ; 2 uses
  br i1 %i.bk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %.396157.i, i64 %wide.trip.count.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !30
  %i.dz = sext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dw, %i.dz
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.3.i = phi i32 [ %i.ea, %bb.ak ], [ %i.dw, %bb.aj ]
  %i.eb = icmp slt i32 %.3.i, 0
  br i1 %i.eb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.idx202.i = mul nuw nsw i64 %indvars.iv172.i, 12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx202.i ; 3 uses
  %i.ed = load <2 x float>, ptr %i.ec, align 4, !tbaa !16
  %i.ee = fsub <2 x float> %i.t, %i.ed
  store <2 x float> %i.ee, ptr %i.ec, align 4, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !16
  %i.eh = fsub float %i.g, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.lr.ph.split.i
  %indvars.iv.next173.i = add nuw nsw i64 %indvars.iv172.i, 1 ; 2 uses
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next173.i, %wide.trip.count.i
  br i1 %exitcond176.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !36

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %.preheader137.i, %._crit_edge.i, %._crit_edge151.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.i) #8
  %i.ei = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #8
  br label %_ZN7msdfgen8ScanlineD2Ev.exit.i

_ZN7msdfgen8ScanlineD2Ev.exit.i:                  ; preds = %bb.ao, %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZN7msdfgenL27multiDistanceSignCorrectionILi3EEEvNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE.exit

.thread131.i:                                     ; preds = %.split.i, %.split154.us.i, %.split.us.i
  %.pn.pn.pn124.i = phi { ptr, i32 } [ %i.az, %.split154.us.i ], [ %i.bj, %.split.i ], [ %i.ay, %.split.us.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.i) #8
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit109.i

_ZNSt6vectorIcSaIcEED2Ev.exit109.i:               ; preds = %.thread131.i, %.thread126.i
  %.pn.pn.pn125.i = phi { ptr, i32 } [ %i.be, %.thread126.i ], [ %.pn.pn.pn124.i, %.thread131.i ]
  %i.eo = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i.i110.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i110.i, label %_ZN7msdfgen8ScanlineD2Ev.exit111.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit109.i
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !24
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #8
  br label %_ZN7msdfgen8ScanlineD2Ev.exit111.i

_ZN7msdfgen8ScanlineD2Ev.exit111.i:               ; preds = %bb.ap, %_ZNSt6vectorIcSaIcEED2Ev.exit109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  resume { ptr, i32 } %.pn.pn.pn125.i

_ZN7msdfgenL27multiDistanceSignCorrectionILi3EEEvNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE.exit: ; preds = %bb.a, %_ZN7msdfgen8ScanlineD2Ev.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapSection.6") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 11 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !27 ; 6 uses
  %.fr172.i = freeze i32 %.sroa.2.0.copyload      ; 6 uses
  %i.a = icmp ne i32 %.fr172.i, 0
  %i.b = icmp ne i32 %.sroa.3.0.copyload, 0
  %or.cond.i = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN7msdfgenL27multiDistanceSignCorrectionILi4EEEvNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27 ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %0, align 8, !tbaa !29
  %i.c = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload, %i.c ; 2 uses
  %i.d = add nsw i32 %.sroa.3.0.copyload, -1      ; 2 uses
  %i.e = mul nsw i32 %.sroa.4.0.copyload, %i.d
  %i.f = sub nsw i32 0, %.sroa.4.0.copyload
  %.sroa.8.0 = select i1 %.not.i.i, i32 %.sroa.4.0.copyload, i32 %i.f
  %narrow = select i1 %.not.i.i, i32 0, i32 %i.e
  %.sroa.0.0.idx = sext i32 %narrow to i64
  %.sroa.0.0 = getelementptr inbounds [4 x i8], ptr %.sroa.05.0.copyload, i64 %.sroa.0.0.idx ; 2 uses
  %i.g = fadd float %3, %3                        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  %i.h = mul nsw i32 %.sroa.3.0.copyload, %.fr172.i ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.c, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
          to label %.noexc.i unwind label %.thread133.i

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #10
          to label %.noexc114.i unwind label %.thread133.i ; 6 uses

.noexc114.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  store i8 0, ptr %i.k, align 1, !tbaa !30
  %i.l = add nsw i64 %i.i, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc114.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc114.i
  %i.o = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.o, label %.lr.ph157.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.lr.ph157.i:                                      ; preds = %bb.e
  %i.p = icmp sgt i32 %.fr172.i, 0
  br i1 %i.p, label %.lr.ph157.split.us.preheader.i, label %.lr.ph157.split.i

.lr.ph157.split.us.preheader.i:                   ; preds = %.lr.ph157.i
  %wide.trip.count.i = zext nneg i32 %.fr172.i to i64 ; 9 uses
  %i.q = sext i32 %.sroa.8.0 to i64               ; 2 uses
  %i.r = zext nneg i32 %.sroa.3.0.copyload to i64 ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.g, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph157.split.us.i

.lr.ph157.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph157.split.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us.i ], [ 0, %.lr.ph157.split.us.preheader.i ] ; 3 uses
  %.088155.us.i = phi i1 [ %.290.us.i, %._crit_edge.us.i ], [ false, %.lr.ph157.split.us.preheader.i ]
  %.099153.us.i = phi ptr [ %i.bb, %._crit_edge.us.i ], [ %i.k, %.lr.ph157.split.us.preheader.i ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fadd double %i.v, 5.000000e-01
  %i.x = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.w)
          to label %bb.f unwind label %.split.us.i

bb.f:                                             ; preds = %.lr.ph157.split.us.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.x)
          to label %.preheader144.us.i.preheader unwind label %.split.us.i

.preheader144.us.i.preheader:                     ; preds = %bb.f
  %i.y = mul nsw i64 %indvars.iv, %i.q
  %i.z = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.y
  br label %.preheader144.us.i

.preheader144.us.i:                               ; preds = %.preheader144.us.i.preheader, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 0, %.preheader144.us.i.preheader ] ; 3 uses
  %.189151.us.i = phi i1 [ %.290.us.i, %bb.m ], [ %.088155.us.i, %.preheader144.us.i.preheader ]
  %.1100149.us.i = phi ptr [ %i.bb, %bb.m ], [ %.099153.us.i, %.preheader144.us.i.preheader ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.ac)
          to label %bb.g unwind label %.split161.us.i

bb.g:                                             ; preds = %.preheader144.us.i
  %i.ae = invoke noundef zeroext i1 @_ZNK7msdfgen8Scanline6filledEdNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.ad, i32 noundef %4)
          to label %bb.h unwind label %.split161.us.i ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i ; 4 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %i.aj = extractelement <2 x float> %i.ag, i64 0 ; 4 uses
  %i.ak = extractelement <2 x float> %i.ag, i64 1 ; 4 uses
  %i.al = fcmp olt float %i.ak, %i.aj
  %i.am = select i1 %i.al, float %i.ak, float %i.aj ; 2 uses
  %i.an = fcmp olt float %i.aj, %i.ak
  %i.ao = select i1 %i.an, float %i.ak, float %i.aj ; 2 uses
  %i.ap = fcmp olt float %i.ai, %i.ao
  %i.aq = select i1 %i.ap, float %i.ai, float %i.ao ; 2 uses
  %i.ar = fcmp olt float %i.am, %i.aq
  %i.as = select i1 %i.ar, float %i.aq, float %i.am ; 2 uses
  %i.at = fcmp oeq float %i.as, %3
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fcmp ule float %i.as, %3
  %.not112.us.i = xor i1 %i.ae, %i.au
  br i1 %.not112.us.i, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = fsub <2 x float> %i.t, %i.ag
  store <2 x float> %i.av, ptr %i.af, align 4, !tbaa !16
  %i.aw = fsub float %i.g, %i.ai
  store float %i.aw, ptr %i.ah, align 4, !tbaa !16
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.sink.i = phi i8 [ -1, %bb.j ], [ 1, %bb.i ]
  store i8 %.sink.i, ptr %.1100149.us.i, align 1, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h
  %.290.us.i = phi i1 [ true, %bb.h ], [ %.189151.us.i, %.sink.split.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = fcmp ule float %i.ay, %3
  %.not113.us.i = xor i1 %i.ae, %i.az
  br i1 %.not113.us.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = fsub float %i.g, %i.ay
  store float %i.ba, ptr %i.ax, align 4, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.1100149.us.i, i64 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond177.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond177.not.i, label %._crit_edge.us.i, label %.preheader144.us.i, !llvm.loop !37

._crit_edge.us.i:                                 ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond178.not.i, label %._crit_edge158.i, label %.lr.ph157.split.us.i, !llvm.loop !38

.split.us.i:                                      ; preds = %bb.f, %.lr.ph157.split.us.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i

.split161.us.i:                                   ; preds = %bb.g, %.preheader144.us.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i

._crit_edge158.i:                                 ; preds = %._crit_edge.us.i
  br i1 %.290.us.i, label %.preheader.preheader.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.preheader.preheader.i:                           ; preds = %._crit_edge158.i
  %i.be = sub nsw i64 0, %wide.trip.count.i       ; 2 uses
  %i.bf = add nsw i32 %.fr172.i, -1               ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = zext nneg i32 %i.d to i64
  %.not208.i = icmp eq i32 %i.bf, 0               ; 2 uses
  %exitcond183.peel.not.i = icmp eq i32 %.fr172.i, 1 ; 2 uses
  br label %.preheader.i

.thread133.i:                                     ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit116.i

.lr.ph157.split.i:                                ; preds = %.lr.ph157.i, %.preheader144.i
  %.098154.i = phi i32 [ %i.bm, %.preheader144.i ], [ 0, %.lr.ph157.i ] ; 2 uses
  %i.bj = uitofp nneg i32 %.098154.i to double
  %i.bk = fadd double %i.bj, 5.000000e-01
  %i.bl = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.bk)
          to label %bb.n unwind label %.split.i

bb.n:                                             ; preds = %.lr.ph157.split.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.bl)
          to label %.preheader144.i unwind label %.split.i

.preheader144.i:                                  ; preds = %bb.n
  %i.bm = add nuw nsw i32 %.098154.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bm, %.sroa.3.0.copyload
  br i1 %exitcond.not.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %.lr.ph157.split.i, !llvm.loop !38

.split.i:                                         ; preds = %bb.n, %.lr.ph157.split.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv192.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next193.i, %._crit_edge.i ] ; 4 uses
  %.2101169.i = phi ptr [ %i.k, %.preheader.preheader.i ], [ %.us-phi168.i, %._crit_edge.i ] ; 9 uses
  %.not108.i = icmp eq i64 %indvars.iv192.i, 0
  %i.bo = icmp samesign ult i64 %indvars.iv192.i, %i.bh ; 4 uses
  %i.bp = mul nsw i64 %indvars.iv192.i, %i.q
  %i.bq = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.bp ; 8 uses
  %i.br = load i8, ptr %.2101169.i, align 1, !tbaa !30
  %.not.us.peel.i = icmp eq i8 %i.br, 0           ; 2 uses
  br i1 %.not108.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.preheader.i
  br i1 %.not.us.peel.i, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.lr.ph.split.preheader.i
  br i1 %.not208.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.2101169.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !30
  %i.bu = sext i8 %i.bt to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.peel.i = phi i32 [ %i.bu, %bb.p ], [ 0, %bb.o ]
  %i.bv = getelementptr inbounds i8, ptr %.2101169.i, i64 %i.be
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.bx = sext i8 %i.bw to i32
  %i.by = add nsw i32 %.1.peel.i, %i.bx           ; 2 uses
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %.2101169.i, i64 %wide.trip.count.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cb = sext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.by, %i.cb
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3.peel.i = phi i32 [ %i.cc, %bb.r ], [ %i.by, %bb.q ]
  %i.cd = icmp slt i32 %.3.peel.i, 0
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = load <2 x float>, ptr %i.bq, align 4, !tbaa !16
  %i.cf = fsub <2 x float> %i.t, %i.ce
  store <2 x float> %i.cf, ptr %i.bq, align 4, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !16
  %i.ci = fsub float %i.g, %i.ch
  store float %i.ci, ptr %i.cg, align 4, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph.split.preheader.i
  br i1 %exitcond183.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.preheader.i
  br i1 %.not.us.peel.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %.lr.ph.split.us.preheader.i
  br i1 %.not208.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.2101169.i, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !30
  %i.cl = sext i8 %i.ck to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.us.peel.i = phi i32 [ %i.cl, %bb.w ], [ 0, %bb.v ] ; 2 uses
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.2101169.i, i64 %wide.trip.count.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !30
  %i.co = sext i8 %i.cn to i32
  %i.cp = add nsw i32 %.1.us.peel.i, %i.co
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.3.us.peel.i = phi i32 [ %i.cp, %bb.y ], [ %.1.us.peel.i, %bb.x ]
  %i.cq = icmp slt i32 %.3.us.peel.i, 0
  br i1 %i.cq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cr = load <2 x float>, ptr %i.bq, align 4, !tbaa !16
  %i.cs = fsub <2 x float> %i.t, %i.cr
  store <2 x float> %i.cs, ptr %i.bq, align 4, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !16
  %i.cv = fsub float %i.g, %i.cu
  store float %i.cv, ptr %i.ct, align 4, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.split.us.preheader.i
  br i1 %exitcond183.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ab, %bb.ai
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i, %bb.ai ], [ 1, %bb.ab ] ; 3 uses
  %.3102164.us.pn.i = phi ptr [ %.3102164.us.i, %bb.ai ], [ %.2101169.i, %bb.ab ] ; 3 uses
  %.3102164.us.i = getelementptr inbounds nuw i8, ptr %.3102164.us.pn.i, i64 1 ; 3 uses
  %i.cw = load i8, ptr %.3102164.us.i, align 1, !tbaa !30
  %.not.us.i = icmp eq i8 %i.cw, 0
  br i1 %.not.us.i, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %.lr.ph.split.us.i
  %i.cx = load i8, ptr %.3102164.us.pn.i, align 1, !tbaa !30
  %i.cy = sext i8 %i.cx to i32                    ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv185.i, %i.bg
  br i1 %i.cz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %.3102164.us.pn.i, i64 2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !30
  %i.dc = sext i8 %i.db to i32
  %i.dd = add nsw i32 %i.dc, %i.cy
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.us.i = phi i32 [ %i.dd, %bb.ad ], [ %i.cy, %bb.ac ] ; 2 uses
  br i1 %i.bo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.de = getelementptr inbounds nuw i8, ptr %.3102164.us.i, i64 %wide.trip.count.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !30
  %i.dg = sext i8 %i.df to i32
  %i.dh = add nsw i32 %.1.us.i, %i.dg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3.us.i = phi i32 [ %i.dh, %bb.af ], [ %.1.us.i, %bb.ae ]
  %i.di = icmp slt i32 %.3.us.i, 0
  br i1 %i.di, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.idx211.i = shl nuw nsw i64 %indvars.iv185.i, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx211.i ; 3 uses
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !tbaa !16
  %i.dl = fsub <2 x float> %i.t, %i.dk
  store <2 x float> %i.dl, ptr %i.dj, align 4, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !16
  %i.do = fsub float %i.g, %i.dn
end_hunk_0
