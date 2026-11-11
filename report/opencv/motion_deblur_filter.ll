Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/motion_deblur_filter?download=true
inline.NumInlined: 284
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z13calcWnrFilterRKN2cv3MatERS0_d:bb.a
          to label %.noexc49 unwind label %bb.ae

.noexc49:                                         ; preds = %bb.r
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i32 noundef -1)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.bf, align 4, !tbaa !51
  store i32 16842752, ptr %22, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %9, ptr %i.bg, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.bh, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.bi, align 4, !tbaa !51
  store i32 16842752, ptr %23, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %17, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.bl, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !48
  store ptr %1, ptr %i.bk, align 8, !tbaa !49
  invoke void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret void

bb.u:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.thread:                                          ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.loopexit

bb.v:                                             ; preds = %bb.d, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit58

.loopexit.loopexit58:                             ; preds = %.body47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.af, %.body47 ], [ %i.bp, %bb.v ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %.loopexit

bb.w:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.loopexit.loopexit

bb.x:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %.loopexit.loopexit

bb.y:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.z:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn33.pn = phi { ptr, i32 } [ %i.bv, %bb.ab ], [ %i.bu, %bb.aa ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %bb.ac ], [ %i.bt, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.ag

bb.ae:                                            ; preds = %.noexc49, %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.ag

bb.af:                                            ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.af ], [ %i.bw, %bb.ae ], [ %.pn33.pn.pn, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ag, %bb.y, %bb.x, %bb.w
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn, %bb.ag ], [ %i.bs, %bb.y ], [ %i.br, %bb.x ], [ %i.bq, %bb.w ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.by) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit58, %.loopexit.loopexit, %.thread54, %.thread
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %.thread ], [ %i.e, %.thread54 ], [ %.pn37.pn.pn.pn.pn, %.loopexit.loopexit ], [ %.pn, %.loopexit.loopexit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.u
  %.pn37.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn.pn, %.loopexit ], [ %i.bn, %bb.u ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z9edgetaperRKN2cv3MatERS0_dd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, double noundef %2, double noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 1, i32 noundef %i.b, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef %i.d, i32 noundef 1, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %13 = sitofp i32 %i.b to double
  %i.i = fdiv double f0x401921FB54442D18, %13
  %i.j = fptrunc double %i.i to float
  %i.k = icmp sgt i32 %i.b, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = fmul double %2, 5.000000e-01             ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.m = insertelement <2 x double> poison, double %3, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %14 = sitofp i32 %i.d to double
  %i.o = fdiv double f0x401921FB54442D18, %14
  %i.p = fptrunc double %i.o to float
  %i.q = icmp sgt i32 %i.d, 0
  br i1 %i.q, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %._crit_edge
  %i.r = fmul double %2, 5.000000e-01             ; 2 uses
  %wide.trip.count63 = zext nneg i32 %i.d to i64
  %i.s = insertelement <2 x double> poison, double %3, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.03752 = phi float [ f0xC0490FDB, %.lr.ph ], [ %i.aj, %bb.d ] ; 2 uses
  %i.v = fpext float %.03752 to double            ; 2 uses
  %i.w = fadd double %i.l, %i.v
  %i.x = fsub double %i.v, %i.l
  %i.y = insertelement <2 x double> poison, double %i.w, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.x, i64 1
  %i.aa = fdiv <2 x double> %i.z, %i.n            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = call double @tanh(double noundef %i.ab) #18
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = call double @tanh(double noundef %i.ad) #18
  %i.af = fsub double %i.ac, %i.ae
  %i.ag = fmul double %i.af, 5.000000e-01
  %i.ah = fptrunc double %i.ag to float
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float %i.ah, ptr %i.ai, align 4, !tbaa !89
  %i.aj = fadd float %.03752, %i.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !81

._crit_edge58:                                    ; preds = %bb.e, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.f unwind label %bb.i

bb.e:                                             ; preds = %.lr.ph57, %bb.e
  %indvars.iv60 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next61, %bb.e ] ; 2 uses
  %.03554 = phi float [ f0xC0490FDB, %.lr.ph57 ], [ %i.ay, %bb.e ] ; 2 uses
  %i.ak = fpext float %.03554 to double           ; 2 uses
  %i.al = fadd double %i.r, %i.ak
  %i.am = fsub double %i.ak, %i.r
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = fdiv <2 x double> %i.ao, %i.t           ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = call double @tanh(double noundef %i.aq) #18
  %i.as = extractelement <2 x double> %i.ap, i64 1
  %i.at = call double @tanh(double noundef %i.as) #18
  %i.au = fsub double %i.ar, %i.at
  %i.av = fmul double %i.au, 5.000000e-01
  %i.aw = fptrunc double %i.av to float
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv60
  store float %i.aw, ptr %i.ax, align 4, !tbaa !89
  %i.ay = fadd float %.03554, %i.p
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge58, label %bb.e, !llvm.loop !82

bb.f:                                             ; preds = %._crit_edge58
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %i.az = load ptr, ptr %9, align 8, !tbaa !63, !noalias !91 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef -1)
          to label %bb.g unwind label %.body

.body:                                            ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #18
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.be) #18
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bg) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.bh, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.bi, align 4, !tbaa !51
  store i32 16842752, ptr %10, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.bl, align 4, !tbaa !51
  store i32 16842752, ptr %11, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %8, ptr %i.bm, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.bo, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !48
  store ptr %1, ptr %i.bn, align 8, !tbaa !49
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.i:                                             ; preds = %._crit_edge58
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bd, %.body ], [ %i.bp, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.pn, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.pn46.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn, %bb.l ], [ %i.u, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn46.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z12filter2DFreqRKN2cv3MatERS0_S2_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca [2 x %"class.cv::Mat"], align 16    ; 13 uses
  %8 = alloca %"class.cv::Mat_", align 8          ; 12 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca [2 x %"class.cv::Mat"], align 16   ; 11 uses
  %16 = alloca %"class.cv::Mat_", align 8         ; 13 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #18
  %i.a = load i32, ptr %8, align 8, !tbaa !64
  %i.b = and i32 %i.a, -4096
  %i.c = or disjoint i32 %i.b, 5
  store i32 %i.c, ptr %8, align 8, !tbaa !64
end_hunk_0
