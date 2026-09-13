Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN2cv7detailsL16findHomography1DERKNS_11_InputArrayES3_:bb.a
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit205 unwind label %.body203

.body203:                                         ; preds = %bb.ew
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #33
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %48) #33
  br label %bb.ey

_ZNK2cv7MatExprcvNS_3MatEEv.exit205:              ; preds = %bb.ew
  %i.uy = getelementptr inbounds nuw i8, ptr %48, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.uy) #33
  %i.uz = getelementptr inbounds nuw i8, ptr %48, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.uz) #33
  %i.va = getelementptr inbounds nuw i8, ptr %48, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.va) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

bb.ex:                                            ; preds = %bb.ev
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ey:                                            ; preds = %.body203, %bb.ex
  %.pn123 = phi { ptr, i32 } [ %i.ux, %.body203 ], [ %i.vb, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.ep
  %.pn123.pn = phi { ptr, i32 } [ %.pn123, %bb.ey ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.uk, %bb.ep ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #33
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.eo
  %.pn123.pn.pn = phi { ptr, i32 } [ %.pn123.pn, %bb.ez ], [ %.pn114.pn.pn.pn, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #33
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.eh
  %.pn123.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn, %bb.fa ], [ %.pn111.pn, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #33
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.cp
  %.pn123.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn, %bb.fb ], [ %i.nt, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #33
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.co
  %.pn123.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn, %bb.fc ], [ %.pn108.pn, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.ck
  %.pn123.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn.pn, %bb.fd ], [ %i.nq, %bb.ck ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn123.pn.pn.pn.pn.pn.pn, %bb.fe ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #33
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.ap
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.ff ], [ %.pn101, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #33
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.an
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.fg ], [ %.pn99, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.al, %bb.ak
  %.pn131.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn, %bb.fh ], [ %i.gg, %bb.al ], [ %i.gf, %bb.ak ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.w, %bb.s, %bb.l
  %.pn131.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn, %bb.fi ], [ %i.ae, %bb.w ], [ %.pn89, %bb.s ], [ %.pn, %bb.l ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #33
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.i
  %.pn131.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn.pn, %bb.fj ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn131.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(28) %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %"class.cv::Point_", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !40
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %6)
  br i1 %i.a, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_RS4_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %6)
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %5, %bb.b ], [ %0, %bb.c ]
  %i.c = load <2 x float>, ptr %6, align 8, !tbaa !40 ; 2 uses
  %i.d = load <2 x float>, ptr %.sink, align 4, !tbaa !40
  %i.e = fsub <2 x float> %i.c, %i.d              ; 3 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  %i.g = fpext float %i.f to double               ; 2 uses
  %i.h = extractelement <2 x float> %i.e, i64 1
  %i.i = fpext float %i.h to double               ; 2 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.j)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.k)
  %i.l = fptrunc double %sqrt.i to float
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.e, %i.n              ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = tail call noundef float @acosf(float noundef %i.p) #33 ; 2 uses
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  %i.t = fpext float %i.q to double
  %i.u = fsub double f0x401921FB54442D18, %i.t
  %i.v = fptrunc double %i.u to float
  %.023 = select i1 %i.s, float %i.v, float %i.q  ; 2 uses
  %i.w = load <2 x float>, ptr %2, align 4, !tbaa !40
  %i.x = fsub <2 x float> %i.c, %i.w              ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fpext float %i.aa to double             ; 2 uses
  %i.ac = fmul double %i.ab, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ac)
  %sqrt.i47 = tail call noundef double @llvm.sqrt.f64(double %i.ad)
  %i.ae = fptrunc double %sqrt.i47 to float
  %i.af = fmul float %3, %i.ae                    ; 2 uses
  %i.ag = fcmp ogt float %i.af, 3.000000e+00
  %.sroa.speculated55 = select i1 %i.ag, float %i.af, float 3.000000e+00 ; 2 uses
  %i.ah = fpext nnan float %.sroa.speculated55 to double
  %i.ai = fptosi float %.sroa.speculated55 to i32
  %i.aj = fmul nnan double %i.ah, f0x3FD6666660000000 ; 2 uses
  %i.ak = fcmp ogt double %i.aj, 2.000000e+00
  %.sroa.speculated = select i1 %i.ak, double %i.aj, double 2.000000e+00
  %i.al = fptosi double %.sroa.speculated to i32
  %7 = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.al, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x float>
  %i.am = load i64, ptr %6, align 8
  %i.an = fneg float %.023                        ; 2 uses
  %i.ao = tail call noundef float @cosf(float noundef %i.an) #33
  %i.ap = tail call noundef float @sinf(float noundef %i.an) #33
  store i64 %i.am, ptr %4, align 4
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %9, ptr %.sroa.453.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %.023, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !40
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.ao, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.ap, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv7details10Chessboard5Board14checkRowColumnERKSt6vectorINS_6Point_IfEESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.cv::Point_", align 8        ; 6 uses
  %2 = alloca %"class.cv::Point_", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.c = load ptr, ptr %0, align 8, !tbaa !215    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp ult i64 %i.f, 32
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.f, 24
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !40
  %i.l = call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_RS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.j, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br i1 %i.l, label %bb.d, label %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit

_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = load <2 x float>, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.n = load <2 x float>, ptr %i.k, align 4, !tbaa !40
  %i.o = fsub <2 x float> %i.m, %i.n              ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = fpext float %i.p to double               ; 2 uses
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = fpext float %i.r to double               ; 2 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.t)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.u)
  %i.v = fptrunc double %sqrt.i.i to float
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x float> %i.o, %i.x              ; 2 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = tail call noundef float @acosf(float noundef %i.z) #33 ; 2 uses
  %i.ab = extractelement <2 x float> %i.y, i64 1
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  %i.ad = fpext float %i.aa to double
  %i.ae = fsub double f0x401921FB54442D18, %i.ad
  %i.af = fptrunc double %i.ae to float
  %.023.i = select i1 %i.ac, float %i.af, float %i.aa
  %i.ag = load <2 x float>, ptr %i.i, align 4, !tbaa !40
  %i.ah = fsub <2 x float> %i.m, %i.ag            ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = fpext float %i.ai to double             ; 2 uses
  %i.ak = extractelement <2 x float> %i.ah, i64 1
  %i.al = fpext float %i.ak to double             ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.am)
  %sqrt.i47.i = tail call noundef double @llvm.sqrt.f64(double %i.an)
  %i.ao = fptrunc double %sqrt.i47.i to float
  %i.ap = fmul float %i.ao, 1.500000e+00          ; 2 uses
  %i.aq = fcmp ogt float %i.ap, 3.000000e+00
  %.sroa.speculated55.i = select i1 %i.aq, float %i.ap, float 3.000000e+00 ; 2 uses
  %i.ar = fpext nnan float %.sroa.speculated55.i to double
  %i.as = fptosi float %.sroa.speculated55.i to i32
  %i.at = fmul nnan double %i.ar, f0x3FD6666660000000 ; 2 uses
  %i.au = fcmp ogt double %i.at, 2.000000e+00
  %.sroa.speculated.i = select i1 %i.au, double %i.at, double 2.000000e+00
  %i.av = fptosi double %.sroa.speculated.i to i32
  %3 = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %4 = insertelement <2 x i32> %3, i32 %i.av, i64 1
  %5 = sitofp <2 x i32> %4 to <2 x float>         ; 2 uses
  %i.aw = fneg float %.023.i                      ; 2 uses
  %i.ax = tail call noundef float @cosf(float noundef %i.aw) #33 ; 2 uses
  %i.ay = tail call noundef float @sinf(float noundef %i.aw) #33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.az = load <2 x float>, ptr %i.c, align 4, !tbaa !40
  %i.ba = fsub <2 x float> %i.az, %i.m            ; 2 uses
  %i.bb = fneg float %i.ay
  %i.bc = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.ax, i64 1
  %i.be = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul <2 x float> %i.bd, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.bb, i64 1
  %i.bi = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bi, <2 x float> %i.bf) ; 2 uses
  %i.bk = fmul <2 x float> %i.bj, %i.bj
  %i.bl = fmul nnan <2 x float> %5, %5
  %i.bm = fdiv <2 x float> %i.bk, %i.bl
  %i.bn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bm)
  %i.bo = fcmp ugt float %i.bn, 1.000000e+00
  br i1 %i.bo, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not76 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not76, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.028.080, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not = icmp eq ptr %i.br, %i.bs
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !500

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.050.081 = phi ptr [ %.sroa.047.077, %bb.f ], [ %i.c, %bb.e ] ; 2 uses
  %.sroa.028.080 = phi ptr [ %i.br, %bb.f ], [ %i.bp, %bb.e ] ; 3 uses
  %.sroa.041.079 = phi ptr [ %.sroa.028.080, %bb.f ], [ %i.k, %bb.e ] ; 3 uses
  %.sroa.044.078 = phi ptr [ %.sroa.041.079, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.047.077 = phi ptr [ %.sroa.044.078, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !40
  %i.bt = call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_S6_RS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %.sroa.050.081, ptr noundef nonnull readonly align 4 dereferenceable(8) %.sroa.047.077, ptr noundef nonnull readonly align 4 dereferenceable(8) %.sroa.044.078, ptr noundef nonnull readonly align 4 dereferenceable(8) %.sroa.041.079, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br i1 %i.bt, label %bb.g, label %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit23

_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit23: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.bu = load <2 x float>, ptr %1, align 8, !tbaa !40 ; 3 uses
  %i.bv = load <2 x float>, ptr %.sroa.050.081, align 4, !tbaa !40
  %i.bw = fsub <2 x float> %i.bu, %i.bv           ; 3 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = fpext float %i.bx to double             ; 2 uses
  %i.bz = extractelement <2 x float> %i.bw, i64 1
  %i.ca = fpext float %i.bz to double             ; 2 uses
  %i.cb = fmul double %i.ca, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.cb)
  %sqrt.i.i10 = tail call noundef double @llvm.sqrt.f64(double %i.cc)
  %i.cd = fptrunc double %sqrt.i.i10 to float
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fdiv <2 x float> %i.bw, %i.cf           ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = tail call noundef float @acosf(float noundef %i.ch) #33 ; 2 uses
  %i.cj = extractelement <2 x float> %i.cg, i64 1
  %i.ck = fcmp ogt float %i.cj, 0.000000e+00
  %i.cl = fpext float %i.ci to double
  %i.cm = fsub double f0x401921FB54442D18, %i.cl
  %i.cn = fptrunc double %i.cm to float
  %.023.i11 = select i1 %i.ck, float %i.cn, float %i.ci
  %i.co = load <2 x float>, ptr %.sroa.041.079, align 4, !tbaa !40
  %i.cp = fsub <2 x float> %i.bu, %i.co           ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0
  %i.cr = fpext float %i.cq to double             ; 2 uses
  %i.cs = extractelement <2 x float> %i.cp, i64 1
  %i.ct = fpext float %i.cs to double             ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %i.cu)
  %sqrt.i47.i14 = tail call noundef double @llvm.sqrt.f64(double %i.cv)
  %i.cw = fptrunc double %sqrt.i47.i14 to float
  %i.cx = fmul float %i.cw, 5.000000e-01          ; 2 uses
  %i.cy = fcmp ogt float %i.cx, 3.000000e+00
  %.sroa.speculated55.i15 = select i1 %i.cy, float %i.cx, float 3.000000e+00 ; 2 uses
  %i.cz = fpext nnan float %.sroa.speculated55.i15 to double
  %i.da = fptosi float %.sroa.speculated55.i15 to i32
  %i.db = fmul nnan double %i.cz, f0x3FD6666660000000 ; 2 uses
  %i.dc = fcmp ogt double %i.db, 2.000000e+00
  %.sroa.speculated.i16 = select i1 %i.dc, double %i.db, double 2.000000e+00
  %i.dd = fptosi double %.sroa.speculated.i16 to i32
  %6 = insertelement <2 x i32> poison, i32 %i.da, i64 0
  %7 = insertelement <2 x i32> %6, i32 %i.dd, i64 1
  %8 = sitofp <2 x i32> %7 to <2 x float>         ; 2 uses
  %i.de = fneg float %.023.i11                    ; 2 uses
  %i.df = tail call noundef float @cosf(float noundef %i.de) #33 ; 2 uses
  %i.dg = tail call noundef float @sinf(float noundef %i.de) #33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.dh = load <2 x float>, ptr %.sroa.028.080, align 4, !tbaa !40
  %i.di = fsub <2 x float> %i.dh, %i.bu           ; 2 uses
  %i.dj = fneg float %i.dg
  %i.dk = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.df, i64 1
  %i.dm = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %i.dl, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dj, i64 1
  %i.dq = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.dq, <2 x float> %i.dn) ; 2 uses
  %i.ds = fmul <2 x float> %i.dr, %i.dr
  %i.dt = fmul nnan <2 x float> %8, %8
  %i.du = fdiv <2 x float> %i.ds, %i.dt
  %i.dv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.du)
  %i.dw = fcmp ole float %i.dv, 1.000000e+00      ; 3 uses
  br i1 %i.dw, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g, %bb.e, %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit23, %bb.d, %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit, %bb.b
  %.2 = phi i1 [ %i.h, %bb.b ], [ false, %bb.d ], [ false, %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit ], [ false, %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit23 ], [ true, %bb.e ], [ %i.dw, %bb.g ], [ %i.dw, %bb.f ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details10Chessboard5Board11isCellBlackEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK2cv7details10Chessboard5Board7getCellEii(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i32 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !210, !range !90, !noundef !91
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13hasCellMarkerEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK2cv7details10Chessboard5Board7getCellEii(ptr noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef %1, i32 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.c = load i8, ptr %i.b, align 1, !tbaa !211, !range !90, !noundef !91
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv7details10Chessboard5Board13detectMarkersERKNS_11_InputArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %20 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %21 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %23 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.std::vector.34", align 8   ; 15 uses
  %29 = alloca %"class.std::vector.34", align 8   ; 18 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %35 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %45 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %46 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %51 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %52 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %53 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %54 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %55 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %56 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %57 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %58 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !526
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !526
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr %6, align 8, !tbaa !67
  %i.f = and i32 %i.e, 4095                       ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.e:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.f, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv7details10Chessboard5Board13detectMarkersERKNS_11_InputArrayEE16__cv_check__2192) #32
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.i = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  br i1 %i.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv7details10Chessboard5Board13detectMarkersERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 2194) #32
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %7, align 8, !tbaa !71     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.o = load i64, ptr %i.m, align 8, !tbaa !72
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn161 = phi { ptr, i32 } [ %i.j, %bb.l ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.df

bb.n:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !196
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !196
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7details10Chessboard5Board13detectMarkersERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 2196) #32
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.s:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %9, align 8, !tbaa !71     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
end_hunk_0
begin_hunk_1_@_ZNK2cv7details10Chessboard5Board18estimateHomographyENS_5Rect_IiEEi:bb.a
bb.s:                                             ; preds = %bb.q
  store i32 -2130509787, ptr %9, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.cw, align 8, !tbaa !63
  %i.cx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv14findHomographyERKNS_11_InputArrayES2_idRKNS_12_OutputArrayEid(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 4, double noundef 3.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i32 noundef 2000, double noundef f0x3FEFD70A3D70A3D7)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %.pre88 = load ptr, ptr %7, align 8, !tbaa !215
  br label %bb.aa

bb.v:                                             ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.s
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.da, %bb.x ], [ %i.cz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.cy, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ae

bb.aa:                                            ; preds = %bb.u, %bb.n
  %i.db = phi ptr [ %.pre88, %bb.u ], [ %i.ac, %bb.n ] ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !218
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.dh = load ptr, ptr %6, align 8, !tbaa !215   ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !218
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45:  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.dn = load ptr, ptr %5, align 8, !tbaa !215   ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !218
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47:  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.ai

bb.ae:                                            ; preds = %.loopexit71, %.loopexit.split-lp72, %.loopexit, %.loopexit.split-lp, %bb.z
  %.pn31.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit73, %.loopexit71 ], [ %lpad.loopexit.split-lp74, %.loopexit.split-lp72 ]
  %i.dt = load ptr, ptr %7, align 8, !tbaa !215   ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !218
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49:  ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.dz = load ptr, ptr %6, align 8, !tbaa !215   ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit51, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !218
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit51

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit51:  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ef = load ptr, ptr %5, align 8, !tbaa !215   ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit53, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit51
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !218
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit53

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit53:  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit51, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn31.pn

bb.ai:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13findNextPointERNS_5flann5IndexERKNS_3MatERKNS_6Point_IfEESC_SC_fffRSA_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, float noundef %5, float noundef %6, float noundef %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %8) local_unnamed_addr #4 align 2 {
bb.a:
  %9 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %10 = alloca %"class.cv::details::Ellipse", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !40
  %i.a = call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board13estimatePointERKNS_6Point_IfEES6_S6_RS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %2, ptr noundef nonnull readonly align 4 dereferenceable(8) %3, ptr noundef nonnull readonly align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %9)
  br i1 %i.a, label %bb.b, label %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit

_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x float>, ptr %9, align 8, !tbaa !40 ; 2 uses
  %i.c = load <2 x float>, ptr %2, align 4, !tbaa !40
  %i.d = fsub <2 x float> %i.b, %i.c              ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = extractelement <2 x float> %i.d, i64 1
  %i.h = fpext float %i.g to double               ; 2 uses
  %i.i = fmul double %i.h, %i.h
  %i.j = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.i)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.j)
  %i.k = fptrunc double %sqrt.i.i to float
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.d, %i.m              ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = tail call noundef float @acosf(float noundef %i.o) #33 ; 2 uses
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  %i.s = fpext float %i.p to double
  %i.t = fsub double f0x401921FB54442D18, %i.s
  %i.u = fptrunc double %i.t to float
  %.023.i = select i1 %i.r, float %i.u, float %i.p ; 2 uses
  %i.v = load <2 x float>, ptr %4, align 4, !tbaa !40
  %i.w = fsub <2 x float> %i.b, %i.v              ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fpext float %i.x to double               ; 2 uses
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fpext float %i.z to double              ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.ab)
  %sqrt.i47.i = tail call noundef double @llvm.sqrt.f64(double %i.ac)
  %i.ad = fptrunc double %sqrt.i47.i to float
  %i.ae = fmul float %i.ad, 4.000000e-01          ; 2 uses
  %i.af = fcmp ogt float %i.ae, 3.000000e+00
  %.sroa.speculated55.i = select i1 %i.af, float %i.ae, float 3.000000e+00 ; 2 uses
  %i.ag = fpext nnan float %.sroa.speculated55.i to double
  %i.ah = fptosi float %.sroa.speculated55.i to i32
  %i.ai = fmul nnan double %i.ag, f0x3FD6666660000000 ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 2.000000e+00
  %.sroa.speculated.i = select i1 %i.aj, double %i.ai, double 2.000000e+00
  %i.ak = fptosi double %.sroa.speculated.i to i32
  %11 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %12 = insertelement <2 x i32> %11, i32 %i.ak, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %i.al = load i64, ptr %9, align 8
  %i.am = fneg float %.023.i                      ; 2 uses
  %i.an = tail call noundef float @cosf(float noundef %i.am) #33
  %i.ao = tail call noundef float @sinf(float noundef %i.am) #33
  store i64 %i.al, ptr %10, align 8
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %13, ptr %.sroa.453.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store float %.023.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  store float %i.an, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !40
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store float %i.ao, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.ap = call noundef float @_ZN2cv7details10Chessboard5Board12findMaxPointERNS_5flann5IndexERKNS_3MatERKNS0_7EllipseEffRNS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(28) %10, float noundef %5, float noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %8)
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = fcmp ule float %7, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit, %bb.b
  %.0 = phi i1 [ %i.ar, %bb.b ], [ false, %_ZN2cv7details10Chessboard5Board18estimateSearchAreaERKNS_6Point_IfEES6_S6_fRNS0_7EllipseEPS5_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv7details10Chessboard5Board4growERKNS_3MatERNS_5flann5IndexE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !196
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv7details10Chessboard5Board4growERKNS_3MatERNS_5flann5IndexE, ptr noundef nonnull @.str.1, i32 noundef 3178) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.f

.preheader:                                       ; preds = %bb.a, %bb.o
  %.037 = phi i8 [ %.239, %bb.o ], [ 1, %bb.a ]   ; 3 uses
  %.034 = phi i8 [ %.236, %bb.o ], [ 1, %bb.a ]
  %.032 = phi i8 [ %.133, %bb.o ], [ 1, %bb.a ]   ; 4 uses
  %.030 = phi i8 [ %.2, %bb.o ], [ 1, %bb.a ]     ; 2 uses
  %.0 = phi i32 [ %.1, %bb.o ], [ 0, %bb.a ]      ; 5 uses
  %i.l = trunc nuw i8 %.034 to i1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.preheader
  %i.m = tail call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board7growTopERKNS_3MatERNS_5flann5IndexE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(240) %2)
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %.0, 1
  br label %bb.o

bb.g:                                             ; preds = %bb.e, %.preheader
  %i.o = trunc nuw i8 %.030 to i1
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = tail call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board10growBottomERKNS_3MatERNS_5flann5IndexE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(240) %2)
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %.0, 1
  br label %bb.o

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.r = trunc nuw i8 %.037 to i1
  br i1 %i.r, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.s = tail call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board8growLeftERKNS_3MatERNS_5flann5IndexE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(240) %2)
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %.0, 1
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.u = trunc nuw i8 %.032 to i1
  br i1 %i.u, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN2cv7details10Chessboard5Board9growRightERKNS_3MatERNS_5flann5IndexE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) ; 2 uses
  %i.w = zext i1 %i.v to i8
  %i.x = zext i1 %i.v to i32
  %spec.select = add nsw i32 %.0, %i.x
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.f
  %.239 = phi i8 [ %.037, %bb.f ], [ %.037, %bb.i ], [ 1, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.236 = phi i8 [ 1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.133 = phi i8 [ %.032, %bb.f ], [ %.032, %bb.i ], [ %.032, %bb.l ], [ 0, %bb.m ], [ %i.w, %bb.n ] ; 2 uses
  %.2 = phi i8 [ %.030, %bb.f ], [ 1, %bb.i ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %i.n, %bb.f ], [ %i.q, %bb.i ], [ %i.t, %bb.l ], [ %.0, %bb.m ], [ %spec.select, %bb.n ] ; 2 uses
  %i.y = or i8 %.236, %.239
  %or.cond = icmp ne i8 %i.y, 0
  %i.z = trunc nuw i8 %.133 to i1
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.z
  %i.aa = trunc nuw i8 %.2 to i1
  %i.ab = select i1 %or.cond3, i1 true, i1 %i.aa
  br i1 %i.ab, label %.preheader, label %bb.p, !llvm.loop !689

bb.p:                                             ; preds = %bb.o
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details10Chessboard5Board10getMappingEv(ptr dead_on_unwind noalias writable sret(%"class.std::map.83") align 8 initializes((8, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.34", align 8    ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !206
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !207
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNK2cv7details10Chessboard5Board10getCornersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !175    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175  ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !48
  %.not13 = icmp eq ptr %i.g, %i.i
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.n) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit8

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %i.p = phi i32 [ %i.w, %bb.g ], [ 0, %bb.b ]
  %.015 = phi i32 [ %.1, %bb.g ], [ 0, %bb.b ]    ; 3 uses
  %.sroa.09.014 = phi ptr [ %i.v, %bb.g ], [ %i.g, %bb.b ] ; 2 uses
  %i.q = load float, ptr %.sroa.09.014, align 4, !tbaa !164
  %i.r = fcmp uno float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %.015, 1
  store i32 %.015, ptr %i.s, align 4, !tbaa !48
  %.pre = load i32, ptr %i.a, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.u = phi i32 [ %i.p, %.lr.ph ], [ %.pre, %bb.f ]
end_hunk_1
begin_hunk_2_@_ZN2cv7details10Chessboard5Board17calcEdgeSharpnessERKNS_11_InputArrayEfbRKNS_12_OutputArrayE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0263.1429.us, i64 noundef %i.ch) #34
  br label %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.us

_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.us: ; preds = %bb.ag, %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.us
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cn
  br label %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE9push_backEOS4_.exit.us

_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE9push_backEOS4_.exit.us: ; preds = %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.us, %bb.ae
  %.sroa.22.6.us = phi ptr [ %i.ct, %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.us ], [ %.sroa.22.1427.us, %bb.ae ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us = phi ptr [ %.0.lcssa.i.i.i.i.i.i.us, %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.us ], [ %.sroa.12.1428.us, %bb.ae ]
  %.sroa.0263.6.us = phi ptr [ %i.cp, %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.us ], [ %.sroa.0263.1429.us, %bb.ae ] ; 3 uses
  %.sroa.12.5.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 16 ; 3 uses
  %i.cu = add nuw nsw i32 %.096430.us, 1
  %exitcond508.not = icmp eq i32 %.096430.us, %i.bz
  br i1 %exitcond508.not, label %._crit_edge.us442, label %bb.ad, !llvm.loop !711

._crit_edge.us442:                                ; preds = %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE9push_backEOS4_.exit.us
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %exitcond513.not = icmp eq i64 %indvars.iv.next510, %wide.trip.count512
  br i1 %exitcond513.not, label %.loopexit303, label %.lr.ph.us, !llvm.loop !712

.loopexit298.split.us:                            ; preds = %_ZNKSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit300.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.split.us444:                                     ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc unwind label %.loopexit.split-lp299

.noexc:                                           ; preds = %.split.us444
  unreachable

.loopexit.split-lp299:                            ; preds = %.split.us444
  %lpad.loopexit.split-lp301 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.split.us:                                        ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc172 unwind label %.loopexit.split-lp306

.noexc172:                                        ; preds = %.split.us
  unreachable

.loopexit.split-lp306:                            ; preds = %.split.us
  %lpad.loopexit.split-lp308 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.loopexit303:                                     ; preds = %._crit_edge.us, %._crit_edge.us442, %.preheader310, %.preheader
  %.sroa.22.4 = phi ptr [ %.sroa.22.6.us, %._crit_edge.us442 ], [ null, %.preheader ], [ null, %.preheader310 ], [ %.sroa.22.7.us, %._crit_edge.us ] ; 2 uses
  %.sroa.12.4 = phi ptr [ %.sroa.12.5.us, %._crit_edge.us442 ], [ null, %.preheader ], [ null, %.preheader310 ], [ %.sroa.12.6.us, %._crit_edge.us ] ; 3 uses
  %.sroa.0263.4 = phi ptr [ %.sroa.0263.6.us, %._crit_edge.us442 ], [ null, %.preheader ], [ null, %.preheader310 ], [ %.sroa.0263.7.us, %._crit_edge.us ] ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !74
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  %i.cz = ptrtoint ptr %.sroa.12.4 to i64
  %i.da = ptrtoint ptr %.sroa.0263.4 to i64       ; 2 uses
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 4
  %i.dd = trunc i64 %i.dc to i32
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %23, i32 noundef %i.dd, i32 noundef 5, i32 noundef 5)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %.loopexit303
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #33
  %i.de = load ptr, ptr %23, align 8, !tbaa !80, !noalias !722 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(688) %23, ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #33
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %23) #33
  br label %bb.al

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %23, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dj) #33
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dk) #33
  %i.dl = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dl) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  %.not279456 = icmp eq ptr %.sroa.0263.4, %.sroa.12.4
  br i1 %.not279456, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.dm = sitofp i32 %i.cw to double              ; 5 uses
  %i.dn = sitofp i32 %i.cy to double              ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.dy = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.eb = fpext float %3 to double
  %i.ec = fcmp ole float %3, 0.000000e+00
  %i.ed = fcmp ogt float %3, 1.000000e+00
  %or.cond102.i = or i1 %i.ec, %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ej = fsub double 1.000000e+00, %i.eb
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %29, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 128 ; 5 uses
  %i.ev = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.db
  %.083460 = phi float [ 0.000000e+00, %.lr.ph ], [ %.285, %bb.db ] ; 4 uses
  %.089458 = phi i32 [ 0, %.lr.ph ], [ %.291, %bb.db ] ; 5 uses
  %.sroa.0220.0457 = phi ptr [ %.sroa.0263.4, %.lr.ph ], [ %i.tw, %bb.db ] ; 7 uses
  %i.ex = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.tv, %bb.db ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0220.0457, i64 4
  %i.ez = load <2 x float>, ptr %.sroa.0220.0457, align 4, !tbaa !40 ; 3 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0 ; 2 uses
  %i.fb = fpext float %i.fa to double
  %i.fc = extractelement <2 x float> %i.ez, i64 1 ; 2 uses
  %i.fd = fpext float %i.fc to double
  %i.fe = fcmp oge float %i.fa, 0.000000e+00
  %i.ff = fcmp ogt double %i.dm, %i.fb
  %or.cond.i.not4.not7.i = select i1 %i.fe, i1 %i.ff, i1 false
  %i.fg = fcmp oge float %i.fc, 0.000000e+00
  %or.cond.not.i = select i1 %or.cond.i.not4.not7.i, i1 %i.fg, i1 false
  %i.fh = fcmp ogt double %i.dn, %i.fd
  %i.fi = select i1 %or.cond.not.i, i1 %i.fh, i1 false
  br i1 %i.fi, label %bb.aj, label %bb.db

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0220.0457, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0220.0457, i64 12
  %i.fl = load <2 x float>, ptr %i.fj, align 4, !tbaa !40 ; 3 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  %i.fn = fpext float %i.fm to double
  %i.fo = extractelement <2 x float> %i.fl, i64 1 ; 2 uses
  %i.fp = fpext float %i.fo to double
  %i.fq = fcmp oge float %i.fm, 0.000000e+00
  %i.fr = fcmp ogt double %i.dm, %i.fn
  %or.cond.i.not4.not7.i175 = select i1 %i.fq, i1 %i.fr, i1 false
  %i.fs = fcmp oge float %i.fo, 0.000000e+00
  %or.cond.not.i176 = select i1 %or.cond.i.not4.not7.i175, i1 %i.fs, i1 false
  %i.ft = fcmp ogt double %i.dn, %i.fp
  %i.fu = select i1 %or.cond.not.i176, i1 %i.ft, i1 false
  br i1 %i.fu, label %bb.an, label %bb.db

bb.ak:                                            ; preds = %.loopexit303
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.body, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.di, %.body ], [ %i.fv, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %bb.dp

bb.am:                                            ; preds = %bb.dk, %bb.di
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.an:                                            ; preds = %bb.aj
  %i.fx = fsub <2 x float> %i.fl, %i.ez           ; 3 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = fpext float %i.fy to double             ; 2 uses
  %i.ga = extractelement <2 x float> %i.fx, i64 1
  %i.gb = fpext float %i.ga to double             ; 2 uses
  %i.gc = fmul double %i.gb, %i.gb
  %i.gd = call double @llvm.fmuladd.f64(double %i.fz, double %i.fz, double %i.gc)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.gd)
  %i.ge = fptosi double %sqrt.i to i32            ; 3 uses
  %30 = icmp slt i32 %i.ge, 10
  br i1 %30, label %bb.db, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = uitofp nneg i32 %i.ge to float
  %i.gg = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fdiv <2 x float> %i.fx, %i.gh           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #33
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gk = fneg <2 x float> %i.gi
  %i.gl = shufflevector <2 x float> %i.gi, <2 x float> %i.gk, <2 x i32> <i32 1, i32 2>
  %shift = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.ar

bb.ap:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  store i32 0, ptr %i.dw, align 8, !tbaa !137
  store i32 0, ptr %i.dx, align 4, !tbaa !138
  %i.gm = load ptr, ptr %24, align 8, !tbaa !724
  %i.gn = ptrtoint ptr %i.jn to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %.not.i = icmp ugt i64 %i.gp, 2147483647
  br i1 %.not.i, label %bb.aq, label %bb.bh

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.gp, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1IhEERKSt6vectorIT_SaIS3_EEE15__cv_check__174) #32
          to label %.noexc177 unwind label %bb.dc

.noexc177:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ao, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %.079455 = phi i32 [ 0, %bb.ao ], [ %i.jo, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.gq = uitofp nneg i32 %.079455 to float
  %i.gr = load <2 x float>, ptr %.sroa.0220.0457, align 4, !tbaa !40
  %i.gs = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gt, <2 x float> %i.gr) ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %i.gu, %shift ; 2 uses
  %i.gv = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift643 = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop644 = fadd <2 x float> %shift643, %i.gi ; 2 uses
  %i.gw = extractelement <2 x float> %foldExtExtBinop644, i64 0 ; 2 uses
  %i.gx = fpext float %i.gv to double
  %i.gy = fpext float %i.gw to double
  %i.gz = fcmp oge float %i.gv, 0.000000e+00
  %i.ha = fcmp ogt double %i.dm, %i.gx
  %or.cond.i.not4.not7.i183 = select i1 %i.gz, i1 %i.ha, i1 false
  %i.hb = fcmp oge float %i.gw, 0.000000e+00
  %or.cond.not.i184 = select i1 %or.cond.i.not4.not7.i183, i1 %i.hb, i1 false
  %i.hc = fcmp ogt double %i.dn, %i.gy
  %i.hd = select i1 %or.cond.not.i184, i1 %i.hc, i1 false
  br i1 %i.hd, label %bb.ax, label %bb.az

bb.as:                                            ; preds = %bb.bf
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !72
  %i.he = load ptr, ptr %i.du, align 8, !tbaa !725
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1 ; 2 uses
  store ptr %i.hf, ptr %i.du, align 8, !tbaa !725
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.at:                                            ; preds = %bb.bf
  %i.hg = load ptr, ptr %24, align 8, !tbaa !724  ; 4 uses
  %i.hh = ptrtoint ptr %i.jk to i64
  %i.hi = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hj = sub i64 %i.hh, %i.hi                    ; 7 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775807
  br i1 %i.hk, label %bb.au, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc181 unwind label %.loopexit.split-lp

.noexc181:                                        ; preds = %bb.au
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %.sroa.speculated.i.i.i.i179 = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hl = add i64 %.sroa.speculated.i.i.i.i179, %i.hj ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hj
  %i.hn = call i64 @llvm.umin.i64(i64 %i.hl, i64 9223372036854775807)
  %i.ho = select i1 %i.hm, i64 9223372036854775807, i64 %i.hn ; 3 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.ho, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #35
          to label %.noexc182 unwind label %.loopexit ; 4 uses

.noexc182:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hj ; 2 uses
  store i8 %i.jj, ptr %i.hq, align 1, !tbaa !72
  %i.hr = icmp sgt i64 %i.hj, 0
  br i1 %i.hr, label %bb.av, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.av:                                            ; preds = %.noexc182
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hp, ptr align 1 %i.hg, i64 %i.hj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.av, %.noexc182
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.ht = load ptr, ptr %i.dv, align 8, !tbaa !726
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hv) #34
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.hp, ptr %24, align 8, !tbaa !724
  store ptr %i.hs, ptr %i.du, align 8, !tbaa !725
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  store ptr %i.hw, ptr %i.dv, align 8, !tbaa !726
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.ax:                                            ; preds = %bb.ar
  %.sroa.0212.4.vec.insert = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop644, <2 x i32> <i32 0, i32 2>
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  store i32 0, ptr %i.do, align 8, !tbaa !137
  store i32 0, ptr %i.dp, align 4, !tbaa !138
  store i32 16842752, ptr %26, align 8, !tbaa !62
  store ptr %14, ptr %i.dq, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  store i64 0, ptr %i.ds, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !62
  store ptr %25, ptr %i.dr, align 8, !tbaa !63
  invoke void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 4294967297, <2 x float> %.sroa.0212.4.vec.insert, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef -1)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.hx = load ptr, ptr %i.dt, align 8, !tbaa !66
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !72
  %i.hz = uitofp i8 %i.hy to float
  br label %bb.az

bb.az:                                            ; preds = %bb.ar, %bb.ay
  %.178 = phi i32 [ 1, %bb.ay ], [ 0, %bb.ar ]    ; 2 uses
  %.176 = phi float [ %i.hz, %bb.ay ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> zeroinitializer, <2 x float> %i.gu) ; 3 uses
  %i.ib = extractelement <2 x float> %i.ia, i64 0 ; 2 uses
  %i.ic = fpext float %i.ib to double
  %i.id = extractelement <2 x float> %i.ia, i64 1 ; 2 uses
  %i.ie = fpext float %i.id to double
  %i.if = fcmp oge float %i.ib, 0.000000e+00
  %i.ig = fcmp ogt double %i.dm, %i.ic
  %or.cond.i.not4.not7.i183.1 = select i1 %i.if, i1 %i.ig, i1 false
  %i.ih = fcmp oge float %i.id, 0.000000e+00
  %or.cond.not.i184.1 = select i1 %or.cond.i.not4.not7.i183.1, i1 %i.ih, i1 false
  %i.ii = fcmp ogt double %i.dn, %i.ie
  %i.ij = select i1 %or.cond.not.i184.1, i1 %i.ii, i1 false
  br i1 %i.ij, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  store i32 0, ptr %i.do, align 8, !tbaa !137
  store i32 0, ptr %i.dp, align 4, !tbaa !138
  store i32 16842752, ptr %26, align 8, !tbaa !62
  store ptr %14, ptr %i.dq, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  store i64 0, ptr %i.ds, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !62
  store ptr %25, ptr %i.dr, align 8, !tbaa !63
  invoke void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 4294967297, <2 x float> %i.ia, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef -1)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.ik = load ptr, ptr %i.dt, align 8, !tbaa !66
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !72
  %i.im = uitofp i8 %i.il to float
  %i.in = fadd float %.176, %i.im
  %i.io = add nuw nsw i32 %.178, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.178.1 = phi i32 [ %i.io, %bb.bb ], [ %.178, %bb.az ] ; 2 uses
  %.176.1 = phi float [ %i.in, %bb.bb ], [ %.176, %bb.az ] ; 2 uses
  %i.ip = fadd <2 x float> %i.gu, %i.gj           ; 2 uses
  %i.iq = fsub <2 x float> %i.gu, %i.gj           ; 2 uses
  %i.ir = extractelement <2 x float> %i.ip, i64 0 ; 2 uses
  %i.is = fpext float %i.ir to double
  %i.it = extractelement <2 x float> %i.iq, i64 1 ; 2 uses
  %i.iu = fpext float %i.it to double
  %i.iv = fcmp oge float %i.ir, 0.000000e+00
  %i.iw = fcmp ogt double %i.dm, %i.is
  %or.cond.i.not4.not7.i183.2 = select i1 %i.iv, i1 %i.iw, i1 false
  %i.ix = fcmp oge float %i.it, 0.000000e+00
  %or.cond.not.i184.2 = select i1 %or.cond.i.not4.not7.i183.2, i1 %i.ix, i1 false
  %i.iy = fcmp ogt double %i.dn, %i.iu
  %i.iz = select i1 %or.cond.not.i184.2, i1 %i.iy, i1 false
  br i1 %i.iz, label %bb.bd, label %bb.bf

end_hunk_2
