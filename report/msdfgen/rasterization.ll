Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/rasterization?download=true
inline.NumInlined: 106
inline.NumDeleted: 58
begin_hunk_0_@_ZNK7msdfgen10Projection10unprojectYEd
declare noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZNK7msdfgen8Scanline6filledEdNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28), double noundef, i32 noundef) local_unnamed_addr #1

declare noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr nofree noundef byval(%"struct.msdfgen::BitmapSection") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 11 uses
  %i.a = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not.i = icmp eq i32 %i.c, %i.a
  br i1 %.not.i, label %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !13
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 2 uses
  %i.h = add nsw i32 %i.g, -1
  %i.i = mul nsw i32 %i.h, %i.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  store ptr %i.l, ptr %0, align 8, !tbaa !15
  %i.m = sub nsw i32 0, %i.e
  store i32 %i.m, ptr %i.d, align 8, !tbaa !14
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.n = phi i32 [ %.pre, %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = fadd float %3, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %.fr35 = freeze i32 %i.r                        ; 2 uses
  %i.s = icmp sgt i32 %.fr35, 0
  %i.t = load ptr, ptr %0, align 8
  br i1 %i.s, label %.lr.ph30.split.us.preheader, label %.lr.ph30.split

.lr.ph30.split.us.preheader:                      ; preds = %.lr.ph30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = sext i32 %i.v to i64
  %wide.trip.count42 = zext nneg i32 %i.n to i64
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
  %.02429 = phi i32 [ %i.ax, %.preheader ], [ 0, %.lr.ph30 ] ; 2 uses
  %i.au = uitofp nneg i32 %.02429 to double
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.av)
          to label %bb.j unwind label %.split

bb.j:                                             ; preds = %.lr.ph30.split
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.aw)
          to label %.preheader unwind label %.split

.preheader:                                       ; preds = %bb.j
  %i.ax = add nuw nsw i32 %.02429, 1              ; 2 uses
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
  %.fr170.i = freeze i32 %.sroa.2.0.copyload      ; 6 uses
  %i.a = icmp ne i32 %.fr170.i, 0
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
  %i.h = mul nsw i32 %.sroa.3.0.copyload, %.fr170.i ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.c, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
          to label %.noexc112.i unwind label %.thread131.i

.noexc112.i:                                      ; preds = %bb.c
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #10
          to label %.noexc113.i unwind label %.thread131.i ; 6 uses

.noexc113.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  store i8 0, ptr %i.k, align 1, !tbaa !30
  %i.l = add nsw i64 %i.i, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc113.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc113.i
  %i.o = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.o, label %.lr.ph155.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.lr.ph155.i:                                      ; preds = %bb.e
  %i.p = icmp sgt i32 %.fr170.i, 0
  br i1 %i.p, label %.lr.ph155.split.us.preheader.i, label %.lr.ph155.split.i

.lr.ph155.split.us.preheader.i:                   ; preds = %.lr.ph155.i
  %wide.trip.count.i = zext nneg i32 %.fr170.i to i64 ; 9 uses
  %i.q = sext i32 %.sroa.8.0 to i64               ; 2 uses
  %i.r = zext nneg i32 %.sroa.3.0.copyload to i64 ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.g, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph155.split.us.i

.lr.ph155.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph155.split.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us.i ], [ 0, %.lr.ph155.split.us.preheader.i ] ; 3 uses
  %.084152.us.i = phi ptr [ %i.ax, %._crit_edge.us.i ], [ %i.k, %.lr.ph155.split.us.preheader.i ]
  %.094151.us.i = phi i1 [ %.296.us.i, %._crit_edge.us.i ], [ false, %.lr.ph155.split.us.preheader.i ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fadd double %i.v, 5.000000e-01
  %i.x = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.w)
          to label %bb.f unwind label %.split.us.i

bb.f:                                             ; preds = %.lr.ph155.split.us.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.x)
          to label %.preheader142.us.i.preheader unwind label %.split.us.i

.preheader142.us.i.preheader:                     ; preds = %bb.f
  %i.y = mul nsw i64 %indvars.iv, %i.q
  %i.z = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.y
  br label %.preheader142.us.i

.preheader142.us.i:                               ; preds = %.preheader142.us.i.preheader, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %.preheader142.us.i.preheader ] ; 3 uses
  %.185148.us.i = phi ptr [ %i.ax, %bb.k ], [ %.084152.us.i, %.preheader142.us.i.preheader ] ; 2 uses
  %.195147.us.i = phi i1 [ %.296.us.i, %bb.k ], [ %.094151.us.i, %.preheader142.us.i.preheader ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.ac)
          to label %bb.g unwind label %.split159.us.i

bb.g:                                             ; preds = %.preheader142.us.i
  %i.ae = invoke noundef zeroext i1 @_ZNK7msdfgen8Scanline6filledEdNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.ad, i32 noundef %4)
          to label %bb.h unwind label %.split159.us.i

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
  store i8 %.sink.i, ptr %.185148.us.i, align 1, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h
  %.296.us.i = phi i1 [ true, %bb.h ], [ %.195147.us.i, %.sink.split.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.185148.us.i, i64 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond175.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond175.not.i, label %._crit_edge.us.i, label %.preheader142.us.i, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond176.not.i, label %._crit_edge156.i, label %.lr.ph155.split.us.i, !llvm.loop !32

.split.us.i:                                      ; preds = %bb.f, %.lr.ph155.split.us.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

.split159.us.i:                                   ; preds = %bb.g, %.preheader142.us.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

._crit_edge156.i:                                 ; preds = %._crit_edge.us.i
  br i1 %.296.us.i, label %.preheader.preheader.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.preheader.preheader.i:                           ; preds = %._crit_edge156.i
  %i.ba = sub nsw i64 0, %wide.trip.count.i       ; 2 uses
  %i.bb = add nsw i32 %.fr170.i, -1               ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = zext nneg i32 %i.d to i64
  %.not206.i = icmp eq i32 %i.bb, 0               ; 2 uses
  %exitcond181.peel.not.i = icmp eq i32 %.fr170.i, 1 ; 2 uses
  br label %.preheader.i

.thread131.i:                                     ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit108.i

.lr.ph155.split.i:                                ; preds = %.lr.ph155.i, %.preheader142.i
  %.083153.i = phi i32 [ %i.bi, %.preheader142.i ], [ 0, %.lr.ph155.i ] ; 2 uses
  %i.bf = uitofp nneg i32 %.083153.i to double
  %i.bg = fadd double %i.bf, 5.000000e-01
  %i.bh = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.bg)
          to label %bb.l unwind label %.split.i

bb.l:                                             ; preds = %.lr.ph155.split.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.bh)
          to label %.preheader142.i unwind label %.split.i

.preheader142.i:                                  ; preds = %bb.l
  %i.bi = add nuw nsw i32 %.083153.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bi, %.sroa.3.0.copyload
  br i1 %exitcond.not.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %.lr.ph155.split.i, !llvm.loop !32

.split.i:                                         ; preds = %bb.l, %.lr.ph155.split.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv190.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next191.i, %._crit_edge.i ] ; 4 uses
  %.286167.i = phi ptr [ %i.k, %.preheader.preheader.i ], [ %.us-phi166.i, %._crit_edge.i ] ; 9 uses
  %.not102.i = icmp eq i64 %indvars.iv190.i, 0
  %i.bk = icmp samesign ult i64 %indvars.iv190.i, %i.bd ; 4 uses
  %i.bl = mul nsw i64 %indvars.iv190.i, %i.q
  %i.bm = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.bl ; 8 uses
  %i.bn = load i8, ptr %.286167.i, align 1, !tbaa !30
  %.not.us.peel.i = icmp eq i8 %i.bn, 0           ; 2 uses
  br i1 %.not102.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.preheader.i
  br i1 %.not.us.peel.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.lr.ph.split.preheader.i
  br i1 %.not206.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.286167.i, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !30
  %i.bq = sext i8 %i.bp to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.peel.i = phi i32 [ %i.bq, %bb.n ], [ 0, %bb.m ]
end_hunk_0
begin_hunk_1_@_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE:bb.a
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
  br i1 %exitcond181.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.z, %bb.ag
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i, %bb.ag ], [ 1, %bb.z ] ; 3 uses
  %.387162.us.pn.i = phi ptr [ %.387162.us.i, %bb.ag ], [ %.286167.i, %bb.z ] ; 3 uses
  %.387162.us.i = getelementptr inbounds nuw i8, ptr %.387162.us.pn.i, i64 1 ; 3 uses
  %i.cs = load i8, ptr %.387162.us.i, align 1, !tbaa !30
  %.not.us.i = icmp eq i8 %i.cs, 0
  br i1 %.not.us.i, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %.lr.ph.split.us.i
  %i.ct = load i8, ptr %.387162.us.pn.i, align 1, !tbaa !30
  %i.cu = sext i8 %i.ct to i32                    ; 2 uses
  %i.cv = icmp samesign ult i64 %indvars.iv183.i, %i.bc
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %.387162.us.pn.i, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30
  %i.cy = sext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, %i.cu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.us.i = phi i32 [ %i.cz, %bb.ab ], [ %i.cu, %bb.aa ] ; 2 uses
  br i1 %i.bk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %.387162.us.i, i64 %wide.trip.count.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !30
  %i.dc = sext i8 %i.db to i32
  %i.dd = add nsw i32 %.1.us.i, %i.dc
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3.us.i = phi i32 [ %i.dd, %bb.ad ], [ %.1.us.i, %bb.ac ]
  %i.de = icmp slt i32 %.3.us.i, 0
  br i1 %i.de, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.idx209.i = mul nuw nsw i64 %indvars.iv183.i, 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx209.i ; 3 uses
  %i.dg = load <2 x float>, ptr %i.df, align 4, !tbaa !16
  %i.dh = fsub <2 x float> %i.t, %i.dg
  store <2 x float> %i.dh, ptr %i.df, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !16
  %i.dk = fsub float %i.g, %i.dj
  store float %i.dk, ptr %i.di, align 4, !tbaa !16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph.split.us.i
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next184.i, %wide.trip.count.i
  br i1 %exitcond188.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.an, %bb.ag, %bb.z, %bb.s
  %.us-phi166.i = getelementptr i8, ptr %.286167.i, i64 %wide.trip.count.i
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %indvars.iv.next191.i, %i.r
  br i1 %exitcond194.not.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %.preheader.i, !llvm.loop !35

.lr.ph.split.i:                                   ; preds = %bb.s, %bb.an
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %bb.an ], [ 1, %bb.s ] ; 3 uses
  %.387162.pn.i = phi ptr [ %.387162.i, %bb.an ], [ %.286167.i, %bb.s ] ; 3 uses
  %.387162.i = getelementptr inbounds nuw i8, ptr %.387162.pn.i, i64 1 ; 4 uses
  %i.dl = load i8, ptr %.387162.i, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %.lr.ph.split.i
  %i.dm = load i8, ptr %.387162.pn.i, align 1, !tbaa !30
  %i.dn = sext i8 %i.dm to i32                    ; 2 uses
  %i.do = icmp samesign ult i64 %indvars.iv177.i, %i.bc
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.387162.pn.i, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !30
  %i.dr = sext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, %i.dn
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i32 [ %i.ds, %bb.ai ], [ %i.dn, %bb.ah ]
  %i.dt = getelementptr inbounds i8, ptr %.387162.i, i64 %i.ba
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !30
  %i.dv = sext i8 %i.du to i32
  %i.dw = add nsw i32 %.1.i, %i.dv                ; 2 uses
  br i1 %i.bk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %.387162.i, i64 %wide.trip.count.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !30
  %i.dz = sext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dw, %i.dz
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.3.i = phi i32 [ %i.ea, %bb.ak ], [ %i.dw, %bb.aj ]
  %i.eb = icmp slt i32 %.3.i, 0
  br i1 %i.eb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.idx207.i = mul nuw nsw i64 %indvars.iv177.i, 12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx207.i ; 3 uses
  %i.ed = load <2 x float>, ptr %i.ec, align 4, !tbaa !16
  %i.ee = fsub <2 x float> %i.t, %i.ed
  store <2 x float> %i.ee, ptr %i.ec, align 4, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !16
  %i.eh = fsub float %i.g, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.lr.ph.split.i
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count.i
  br i1 %exitcond181.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !36

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %.preheader142.i, %._crit_edge.i, %._crit_edge156.i, %bb.e
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

.thread136.i:                                     ; preds = %.split.i, %.split159.us.i, %.split.us.i
  %.pn.pn.pn129.i = phi { ptr, i32 } [ %i.az, %.split159.us.i ], [ %i.bj, %.split.i ], [ %i.ay, %.split.us.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.i) #8
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit108.i

_ZNSt6vectorIcSaIcEED2Ev.exit108.i:               ; preds = %.thread136.i, %.thread131.i
  %.pn.pn.pn130.i = phi { ptr, i32 } [ %i.be, %.thread131.i ], [ %.pn.pn.pn129.i, %.thread136.i ]
  %i.eo = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i.i109.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i109.i, label %_ZN7msdfgen8ScanlineD2Ev.exit110.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit108.i
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !24
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #8
  br label %_ZN7msdfgen8ScanlineD2Ev.exit110.i

_ZN7msdfgen8ScanlineD2Ev.exit110.i:               ; preds = %bb.ap, %_ZNSt6vectorIcSaIcEED2Ev.exit108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  resume { ptr, i32 } %.pn.pn.pn130.i

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
  %.fr177.i = freeze i32 %.sroa.2.0.copyload      ; 6 uses
  %i.a = icmp ne i32 %.fr177.i, 0
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
  %i.h = mul nsw i32 %.sroa.3.0.copyload, %.fr177.i ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.c, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
          to label %.noexc119.i unwind label %.thread138.i

.noexc119.i:                                      ; preds = %bb.c
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #10
          to label %.noexc120.i unwind label %.thread138.i ; 6 uses

.noexc120.i:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  store i8 0, ptr %i.k, align 1, !tbaa !30
  %i.l = add nsw i64 %i.i, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc120.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc120.i
  %i.o = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.o, label %.lr.ph162.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.lr.ph162.i:                                      ; preds = %bb.e
  %i.p = icmp sgt i32 %.fr177.i, 0
  br i1 %i.p, label %.lr.ph162.split.us.preheader.i, label %.lr.ph162.split.i

.lr.ph162.split.us.preheader.i:                   ; preds = %.lr.ph162.i
  %wide.trip.count.i = zext nneg i32 %.fr177.i to i64 ; 9 uses
  %i.q = sext i32 %.sroa.8.0 to i64               ; 2 uses
  %i.r = zext nneg i32 %.sroa.3.0.copyload to i64 ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.g, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph162.split.us.i

.lr.ph162.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph162.split.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us.i ], [ 0, %.lr.ph162.split.us.preheader.i ] ; 3 uses
  %.090159.us.i = phi ptr [ %i.bb, %._crit_edge.us.i ], [ %i.k, %.lr.ph162.split.us.preheader.i ]
  %.0100158.us.i = phi i1 [ %.2102.us.i, %._crit_edge.us.i ], [ false, %.lr.ph162.split.us.preheader.i ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fadd double %i.v, 5.000000e-01
  %i.x = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.w)
          to label %bb.f unwind label %.split.us.i

bb.f:                                             ; preds = %.lr.ph162.split.us.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.x)
          to label %.preheader149.us.i.preheader unwind label %.split.us.i

.preheader149.us.i.preheader:                     ; preds = %bb.f
  %i.y = mul nsw i64 %indvars.iv, %i.q
  %i.z = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.y
  br label %.preheader149.us.i

.preheader149.us.i:                               ; preds = %.preheader149.us.i.preheader, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 0, %.preheader149.us.i.preheader ] ; 3 uses
  %.191155.us.i = phi ptr [ %i.bb, %bb.m ], [ %.090159.us.i, %.preheader149.us.i.preheader ] ; 2 uses
  %.1101154.us.i = phi i1 [ %.2102.us.i, %bb.m ], [ %.0100158.us.i, %.preheader149.us.i.preheader ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.ac)
          to label %bb.g unwind label %.split166.us.i

bb.g:                                             ; preds = %.preheader149.us.i
  %i.ae = invoke noundef zeroext i1 @_ZNK7msdfgen8Scanline6filledEdNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.ad, i32 noundef %4)
          to label %bb.h unwind label %.split166.us.i ; 2 uses

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
  store i8 %.sink.i, ptr %.191155.us.i, align 1, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h
  %.2102.us.i = phi i1 [ true, %bb.h ], [ %.1101154.us.i, %.sink.split.i ] ; 3 uses
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
  %i.bb = getelementptr inbounds nuw i8, ptr %.191155.us.i, i64 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond182.not.i, label %._crit_edge.us.i, label %.preheader149.us.i, !llvm.loop !37

._crit_edge.us.i:                                 ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond183.not.i, label %._crit_edge163.i, label %.lr.ph162.split.us.i, !llvm.loop !38

.split.us.i:                                      ; preds = %bb.f, %.lr.ph162.split.us.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.i

.split166.us.i:                                   ; preds = %bb.g, %.preheader149.us.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.i

._crit_edge163.i:                                 ; preds = %._crit_edge.us.i
  br i1 %.2102.us.i, label %.preheader.preheader.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

.preheader.preheader.i:                           ; preds = %._crit_edge163.i
  %i.be = sub nsw i64 0, %wide.trip.count.i       ; 2 uses
  %i.bf = add nsw i32 %.fr177.i, -1               ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = zext nneg i32 %i.d to i64
  %.not213.i = icmp eq i32 %i.bf, 0               ; 2 uses
  %exitcond188.peel.not.i = icmp eq i32 %.fr177.i, 1 ; 2 uses
  br label %.preheader.i

.thread138.i:                                     ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i, %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit115.i

.lr.ph162.split.i:                                ; preds = %.lr.ph162.i, %.preheader149.i
  %.089160.i = phi i32 [ %i.bm, %.preheader149.i ], [ 0, %.lr.ph162.i ] ; 2 uses
  %i.bj = uitofp nneg i32 %.089160.i to double
  %i.bk = fadd double %i.bj, 5.000000e-01
  %i.bl = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.bk)
          to label %bb.n unwind label %.split.i

bb.n:                                             ; preds = %.lr.ph162.split.i
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.bl)
          to label %.preheader149.i unwind label %.split.i

.preheader149.i:                                  ; preds = %bb.n
  %i.bm = add nuw nsw i32 %.089160.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bm, %.sroa.3.0.copyload
  br i1 %exitcond.not.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %.lr.ph162.split.i, !llvm.loop !38

.split.i:                                         ; preds = %bb.n, %.lr.ph162.split.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv197.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next198.i, %._crit_edge.i ] ; 4 uses
  %.292174.i = phi ptr [ %i.k, %.preheader.preheader.i ], [ %.us-phi173.i, %._crit_edge.i ] ; 9 uses
  %.not108.i = icmp eq i64 %indvars.iv197.i, 0
  %i.bo = icmp samesign ult i64 %indvars.iv197.i, %i.bh ; 4 uses
  %i.bp = mul nsw i64 %indvars.iv197.i, %i.q
  %i.bq = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.bp ; 8 uses
  %i.br = load i8, ptr %.292174.i, align 1, !tbaa !30
  %.not.us.peel.i = icmp eq i8 %i.br, 0           ; 2 uses
  br i1 %.not108.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.preheader.i
  br i1 %.not.us.peel.i, label %bb.o, label %bb.u
end_hunk_1
begin_hunk_2_@_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE:bb.a
  %.idx214.i = shl nuw nsw i64 %indvars.iv184.i, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx214.i ; 3 uses
  %i.eh = load <2 x float>, ptr %i.eg, align 4, !tbaa !16
  %i.ei = fsub <2 x float> %i.t, %i.eh
  store <2 x float> %i.ei, ptr %i.eg, align 4, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !16
  %i.el = fsub float %i.g, %i.ek
  store float %i.el, ptr %i.ej, align 4, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.lr.ph.split.i
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i, %wide.trip.count.i
  br i1 %exitcond188.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !41

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %.preheader149.i, %._crit_edge.i, %._crit_edge163.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.i) #8
  %i.em = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !24
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #8
  br label %_ZN7msdfgen8ScanlineD2Ev.exit.i

_ZN7msdfgen8ScanlineD2Ev.exit.i:                  ; preds = %bb.aq, %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZN7msdfgenL27multiDistanceSignCorrectionILi4EEEvNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE.exit

.thread143.i:                                     ; preds = %.split.i, %.split166.us.i, %.split.us.i
  %.pn.pn.pn136.i = phi { ptr, i32 } [ %i.bd, %.split166.us.i ], [ %i.bn, %.split.i ], [ %i.bc, %.split.us.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.i) #8
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit115.i

_ZNSt6vectorIcSaIcEED2Ev.exit115.i:               ; preds = %.thread143.i, %.thread138.i
  %.pn.pn.pn137.i = phi { ptr, i32 } [ %i.bi, %.thread138.i ], [ %.pn.pn.pn136.i, %.thread143.i ]
  %i.es = load ptr, ptr %5, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i.i116.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i116.i, label %_ZN7msdfgen8ScanlineD2Ev.exit117.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit115.i
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !24
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #8
  br label %_ZN7msdfgen8ScanlineD2Ev.exit117.i

_ZN7msdfgen8ScanlineD2Ev.exit117.i:               ; preds = %bb.ar, %_ZNSt6vectorIcSaIcEED2Ev.exit115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  resume { ptr, i32 } %.pn.pn.pn137.i

_ZN7msdfgenL27multiDistanceSignCorrectionILi4EEEvNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE.exit: ; preds = %bb.a, %_ZN7msdfgen8ScanlineD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen9rasterizeERKNS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_7Vector2ES9_NS_8FillRuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 2 uses
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @_ZN7msdfgen9rasterizeENS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionENS_8FillRuleE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %5, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void
}

declare void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionENS_8FillRuleE(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapSection") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef 5.000000e-01, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_8FillRuleE(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapSection.5") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef 5.000000e-01, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_8FillRuleE(ptr nofree noundef readonly byval(%"struct.msdfgen::BitmapSection.6") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef 5.000000e-01, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionERKNS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_7Vector2ES9_NS_8FillRuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 4 uses
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %5, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, float noundef 5.000000e-01, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_7Vector2ES9_NS_8FillRuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.msdfgen::BitmapSection.5", align 8 ; 4 uses
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.5") align 8 %5, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, float noundef 5.000000e-01, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22distanceSignCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_7Vector2ES9_NS_8FillRuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.msdfgen::BitmapSection.6", align 8 ; 4 uses
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.6") align 8 %5, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, float noundef 5.000000e-01, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 20}
!9 = !{!"_ZTSN7msdfgen13BitmapSectionIfLi1EEE", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 20}
!10 = !{!"p1 float", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !6, i64 0}
!13 = !{!9, !5, i64 12}
!14 = !{!9, !5, i64 16}
!15 = !{!9, !10, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN7msdfgen8Scanline12IntersectionE", !11, i64 0}
!24 = !{!22, !23, i64 16}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = !{!5, !5, i64 0}
!28 = !{!12, !12, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!6, !6, i64 0}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19, !34}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19, !34}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19, !34}
!42 = !{i64 0, i64 8, !29, i64 8, i64 4, !27, i64 12, i64 4, !27, i64 16, i64 4, !27, i64 20, i64 4, !28}
end_hunk_2
