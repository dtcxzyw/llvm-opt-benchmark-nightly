Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/PnPProblem?download=true
inline.NumInlined: 458
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10PnPProblem18backproject2DPointEPK4MeshRKN2cv6Point_IfEERNS3_7Point3_IfEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, ptr noundef nonnull align 8 dereferenceable(208) %i.da, i32 noundef 0)
          to label %bb.w unwind label %bb.av

bb.w:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit130
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #21
  %i.dq = load ptr, ptr %18, align 8, !tbaa !11, !noalias !116 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef -1)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body131

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 -1056833530, ptr %19, align 8, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.a, ptr %i.dw, align 8, !tbaa !53
  store i64 4294967297, ptr %i.dv, align 8
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, double noundef 1.000000e+00)
          to label %bb.z unwind label %bb.aw

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(688) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.db)
          to label %bb.aa unwind label %bb.ax

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #21
  %i.dx = load ptr, ptr %15, align 8, !tbaa !11, !noalias !119 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit136 unwind label %.body134

.body134:                                         ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #21
  br label %bb.ay

_ZNK2cv7MatExprcvNS_3MatEEv.exit136:              ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ec) #21
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ed) #21
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ee) #21
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ef) #21
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eg) #21
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eh) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #21
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ei) #21
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ej) #21
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ek) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  invoke void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ab unwind label %bb.bb

bb.ab:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit136
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %20) #21
  %i.el = load ptr, ptr %21, align 8, !tbaa !11, !noalias !122 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %20, i32 noundef -1)
          to label %bb.ac unwind label %.body137

.body137:                                         ; preds = %bb.ab
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #21
  br label %bb.bc

bb.ac:                                            ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %21, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eq) #21
  %i.er = getelementptr inbounds nuw i8, ptr %21, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.er) #21
  %i.es = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.es) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.et = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.et, align 8, !tbaa !44
  %i.eu = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.eu, align 4, !tbaa !46
  store i32 16842752, ptr %23, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %20, ptr %i.ev, align 8, !tbaa !53
  %i.ew = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ad unwind label %bb.bd

bb.ad:                                            ; preds = %bb.ac
  %i.ex = invoke noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24) %23, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %bb.ae unwind label %bb.bd

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cvdvERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(208) %20, double noundef %i.ex)
          to label %bb.af unwind label %bb.bd

bb.af:                                            ; preds = %bb.ae
  %i.ey = load ptr, ptr %22, align 8, !tbaa !11   ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  invoke void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(688) %22, ptr noundef nonnull align 8 dereferenceable(208) %20, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.be, !inline_history !26

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %22, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fc) #21
  %i.fd = getelementptr inbounds nuw i8, ptr %22, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fd) #21
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fe) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.10") align 4 %26, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ag unwind label %bb.bg

bb.ag:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.ff = load <2 x float>, ptr %26, align 8, !tbaa !77
  store <2 x float> %i.ff, ptr %25, align 8, !tbaa !77
  %i.fg = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.fi = load float, ptr %i.fh, align 8, !tbaa !77
  store float %i.fi, ptr %i.fg, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec.10") align 4 %28, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.ah unwind label %bb.bh

bb.ah:                                            ; preds = %bb.ag
  %i.fj = load <2 x float>, ptr %28, align 8, !tbaa !77
  store <2 x float> %i.fj, ptr %27, align 8, !tbaa !77
  %i.fk = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !77
  store float %i.fm, ptr %i.fk, align 8, !tbaa !95
  invoke void @_ZN3RayC1ERKN2cv7Point3_IfEES4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(12) %25, ptr noundef nonnull align 4 dereferenceable(12) %27)
          to label %bb.ai unwind label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %.not = icmp eq ptr %i.r, %i.n
  br i1 %.not, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %32, i64 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %32, i64 20
  %.sroa.22.0..sroa_idx.i157.i = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %32, i64 32
  %.sroa.22.0..sroa_idx.i162.i = getelementptr inbounds nuw i8, ptr %32, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %24, i64 20
  %.sroa.22.0..sroa_idx.i172.i = getelementptr inbounds nuw i8, ptr %24, i64 28
  %.sroa.22.0..sroa_idx.i167.i = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.bj

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit
  %.not273 = icmp ne ptr %.sroa.15.1.a, %.sroa.10.1 ; 2 uses
  %33 = ptrtoint ptr %.sroa.0190.1 to i64
  br i1 %.not273, label %.thread, label %bb.bw

bb.aj:                                            ; preds = %_ZNK4Mesh16getTrianglesListEv.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.ft, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ch

bb.al:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit124
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %bb.r
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.body125, %bb.am
  %.pn87 = phi { ptr, i32 } [ %i.ct, %.body125 ], [ %i.fv, %bb.am ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.pn87.pn = phi { ptr, i32 } [ %.pn87, %bb.an ], [ %i.fu, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cg

bb.ap:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit127
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aq:                                            ; preds = %bb.t
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %bb.u
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.body128, %bb.ar
  %.pn90 = phi { ptr, i32 } [ %i.dg, %.body128 ], [ %i.fy, %bb.ar ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #21
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %bb.as ], [ %i.fx, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ap
  %.pn90.pn.pn = phi { ptr, i32 } [ %.pn90.pn, %bb.at ], [ %i.fw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cf

bb.av:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit130
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aw:                                            ; preds = %bb.y
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %bb.z
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.body134, %bb.ax
  %.pn94 = phi { ptr, i32 } [ %i.eb, %.body134 ], [ %i.gb, %bb.ax ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #21
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.aw ], [ %.pn94, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %.body131

.body131:                                         ; preds = %bb.x, %bb.az
  %.pn94.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn, %bb.az ], [ %i.du, %bb.x ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #21
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #21
  br label %bb.ba

bb.ba:                                            ; preds = %.body131, %bb.av
  %.pn94.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn.pn, %.body131 ], [ %i.fz, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ce

bb.bb:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit136
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.body137, %bb.bb
  %.pn100 = phi { ptr, i32 } [ %i.ep, %.body137 ], [ %i.gc, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.cd

bb.bd:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.af
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #21
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.pn102.pn = phi { ptr, i32 } [ %i.gd, %bb.bd ], [ %i.ge, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.cc

bb.bg:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.ah, %bb.ag
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn105 = phi { ptr, i32 } [ %i.gg, %bb.bh ], [ %i.gf, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.cb

bb.bj:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit
  %i.gh = phi ptr [ %i.n, %.lr.ph ], [ %i.kg, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit ]
  %i.gi = phi i64 [ 0, %.lr.ph ], [ %i.ke, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit ]
  %.084225 = phi i32 [ 0, %.lr.ph ], [ %i.kd, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit ]
  %.sroa.0190.0224 = phi ptr [ null, %.lr.ph ], [ %.sroa.0190.1, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit ] ; 10 uses
  %.sroa.10.0223 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %.sroa.15.0222 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1.a, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %i.gi ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !125
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !94
  %i.gm = sext i32 %i.gl to i64
  %i.gn = load ptr, ptr %i.fn, align 8, !tbaa !50 ; 3 uses
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %i.gm ; 2 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.go, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !77
  store <2 x float> %.sroa.01.0.copyload.i, ptr %29, align 8
  store float %.sroa.22.0.copyload.i, ptr %.sroa.237.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !125
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !94
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %i.gs ; 2 uses
  %.sroa.01.0.copyload.i140 = load <2 x float>, ptr %i.gt, align 4
  %.sroa.22.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.22.0.copyload.i142 = load float, ptr %.sroa.22.0..sroa_idx.i141, align 4, !tbaa !77
  store <2 x float> %.sroa.01.0.copyload.i140, ptr %30, align 8
  store float %.sroa.22.0.copyload.i142, ptr %.sroa.233.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  %i.gu = load ptr, ptr %i.gj, align 8, !tbaa !125
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !94
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %i.gx ; 2 uses
  %.sroa.01.0.copyload.i145 = load <2 x float>, ptr %i.gy, align 4
  %.sroa.22.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.22.0.copyload.i147 = load float, ptr %.sroa.22.0..sroa_idx.i146, align 4, !tbaa !77
  store <2 x float> %.sroa.01.0.copyload.i145, ptr %31, align 8
  store float %.sroa.22.0.copyload.i147, ptr %.sroa.229.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  invoke void @_ZN8TriangleC1ERKN2cv7Point3_IfEES4_S4_(ptr noundef nonnull align 8 dereferenceable(44) %32, ptr noundef nonnull align 4 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) %30, ptr noundef nonnull align 4 dereferenceable(12) %31)
          to label %bb.bk unwind label %bb.bt

bb.bk:                                            ; preds = %bb.bj
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.fo, align 8 ; 6 uses
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !77 ; 3 uses
  %.sroa.01.0.copyload.i156.i = load <2 x float>, ptr %i.fp, align 4 ; 2 uses
  %.sroa.22.0.copyload.i158.i = load float, ptr %.sroa.22.0..sroa_idx.i157.i, align 4, !tbaa !77
  %.sroa.01.0.copyload.i161.i = load <2 x float>, ptr %i.fq, align 8 ; 2 uses
  %.sroa.22.0.copyload.i163.i = load float, ptr %.sroa.22.0..sroa_idx.i162.i, align 8, !tbaa !77
  %.sroa.01.0.copyload.i171.i = load <2 x float>, ptr %i.fr, align 4 ; 3 uses
  %.sroa.22.0.copyload.i173.i = load float, ptr %.sroa.22.0..sroa_idx.i172.i, align 4, !tbaa !77 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.01.0.copyload.i156.i, %.sroa.01.0.copyload.i.i
  %i.gz = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop291.a = fsub <2 x float> %.sroa.01.0.copyload.i156.i, %.sroa.01.0.copyload.i.i
  %i.ha = extractelement <2 x float> %foldExtExtBinop291.a, i64 1 ; 3 uses
  %i.hb = fsub float %.sroa.22.0.copyload.i158.i, %.sroa.22.0.copyload.i.i ; 3 uses
  %foldExtExtBinop293.a = fsub <2 x float> %.sroa.01.0.copyload.i161.i, %.sroa.01.0.copyload.i.i
  %i.hc = extractelement <2 x float> %foldExtExtBinop293.a, i64 0 ; 3 uses
  %foldExtExtBinop295.a = fsub <2 x float> %.sroa.01.0.copyload.i161.i, %.sroa.01.0.copyload.i.i
  %i.hd = extractelement <2 x float> %foldExtExtBinop295.a, i64 1 ; 3 uses
  %i.he = fsub float %.sroa.22.0.copyload.i163.i, %.sroa.22.0.copyload.i.i ; 3 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i171.i, i64 1 ; 3 uses
  %i.hf = fneg float %i.hd
  %i.hg = fmul float %.sroa.22.0.copyload.i173.i, %i.hf
  %i.hh = call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i, float %i.he, float %i.hg) ; 2 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i171.i, i64 0 ; 3 uses
  %i.hi = fneg float %i.he
  %i.hj = fmul float %.sroa.011.0.vec.extract.i.i, %i.hi
  %i.hk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i173.i, float %i.hc, float %i.hj) ; 2 uses
  %i.hl = fneg float %i.hc
  %i.hm = fmul float %.sroa.011.4.vec.extract.i.i, %i.hl
  %i.hn = call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %i.hd, float %i.hm) ; 2 uses
  %i.ho = fmul float %i.ha, %i.hk
  %i.hp = call float @llvm.fmuladd.f32(float %i.gz, float %i.hh, float %i.ho)
  %i.hq = call float @llvm.fmuladd.f32(float %i.hb, float %i.hn, float %i.hp)
  %i.hr = fpext float %i.hq to double             ; 2 uses
  %i.hs = call double @llvm.fabs.f64(double %i.hr)
  %or.cond.i150 = fcmp olt double %i.hs, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond.i150, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.22.0.copyload.i168.i = load float, ptr %.sroa.22.0..sroa_idx.i167.i, align 8, !tbaa !77 ; 2 uses
  %.sroa.01.0.copyload.i166.i = load <2 x float>, ptr %i.fs, align 8 ; 3 uses
  %i.ht = fdiv double 1.000000e+00, %i.hr         ; 3 uses
  %foldExtExtBinop297.a = fsub <2 x float> %.sroa.01.0.copyload.i166.i, %.sroa.01.0.copyload.i.i
  %i.hu = extractelement <2 x float> %foldExtExtBinop297.a, i64 0 ; 3 uses
  %foldExtExtBinop299.a = fsub <2 x float> %.sroa.01.0.copyload.i166.i, %.sroa.01.0.copyload.i.i
  %i.hv = extractelement <2 x float> %foldExtExtBinop299.a, i64 1 ; 3 uses
  %i.hw = fsub float %.sroa.22.0.copyload.i168.i, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.hx = fmul float %i.hk, %i.hv
  %i.hy = call float @llvm.fmuladd.f32(float %i.hu, float %i.hh, float %i.hx)
  %i.hz = call float @llvm.fmuladd.f32(float %i.hw, float %i.hn, float %i.hy)
  %i.ia = fpext float %i.hz to double
  %i.ib = fmul double %i.ht, %i.ia                ; 3 uses
  %i.ic = fcmp olt double %i.ib, 0.000000e+00
  %i.id = fcmp ogt double %i.ib, 1.000000e+00
  %or.cond3.i = or i1 %i.ic, %i.id
  br i1 %or.cond3.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ie = fneg float %i.ha
  %i.if = fmul float %i.hw, %i.ie
  %i.ig = call float @llvm.fmuladd.f32(float %i.hv, float %i.hb, float %i.if) ; 2 uses
  %i.ih = fneg float %i.hb
  %i.ii = fmul float %i.hu, %i.ih
  %i.ij = call float @llvm.fmuladd.f32(float %i.hw, float %i.gz, float %i.ii) ; 2 uses
  %i.ik = fneg float %i.gz
  %i.il = fmul float %i.hv, %i.ik
  %i.im = call float @llvm.fmuladd.f32(float %i.hu, float %i.ha, float %i.il) ; 2 uses
  %i.in = fmul float %.sroa.011.4.vec.extract.i.i, %i.ij
  %i.io = call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %i.ig, float %i.in)
  %i.ip = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i173.i, float %i.im, float %i.io)
  %i.iq = fpext float %i.ip to double
  %i.ir = fmul double %i.ht, %i.iq                ; 2 uses
  %i.is = fcmp olt double %i.ir, 0.000000e+00
  %i.it = fadd double %i.ib, %i.ir
  %i.iu = fcmp ogt double %i.it, 1.000000e+00
  %or.cond155.i = or i1 %i.is, %i.iu
  br i1 %or.cond155.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iv = fmul float %i.hd, %i.ij
  %i.iw = call float @llvm.fmuladd.f32(float %i.hc, float %i.ig, float %i.iv)
  %i.ix = call float @llvm.fmuladd.f32(float %i.he, float %i.im, float %i.iw)
  %i.iy = fpext float %i.ix to double
  %i.iz = fmul double %i.ht, %i.iy                ; 3 uses
  %i.ja = fcmp ogt double %i.iz, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ja, label %bb.bo, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit

bb.bo:                                            ; preds = %bb.bn
  %i.jb = fpext <2 x float> %.sroa.01.0.copyload.i171.i to <2 x double>
  %i.jc = fpext float %.sroa.22.0.copyload.i173.i to double
  %i.jd = fmul double %i.iz, %i.jc
  %i.je = fptrunc double %i.jd to float
  %i.jf = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x double> %i.jg, %i.jb
  %i.ji = fptrunc <2 x double> %i.jh to <2 x float>
  %i.jj = fadd <2 x float> %.sroa.01.0.copyload.i166.i, %i.ji ; 2 uses
  %i.jk = fadd float %.sroa.22.0.copyload.i168.i, %i.je ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.0223, %.sroa.0190.0224
  br i1 %.not.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store <2 x float> %i.jj, ptr %.sroa.10.0223, align 4
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 8
  store float %i.jk, ptr %.sroa.6187.0..sroa_idx, align 4, !tbaa !77
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.10.0223, i64 12
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.jm = ptrtoint ptr %.sroa.0190.0224 to i64
  %i.jn = ptrtoint ptr %.sroa.15.0222 to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 4 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %bb.br, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.br
  unreachable

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bq
  %i.jq = sdiv exact i64 %i.jo, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 768614336404564650)
  %i.ju = select i1 %i.js, i64 768614336404564650, i64 %i.jt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.jv = mul nuw nsw i64 %i.ju, 12
  %i.jw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #24
          to label %.noexc169 unwind label %.loopexit ; 5 uses

.noexc169:                                        ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jo ; 2 uses
  store <2 x float> %i.jj, ptr %i.jx, align 4
  %.sroa.6187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store float %i.jk, ptr %.sroa.6187.0..sroa_idx188, align 4, !tbaa !77
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.15.0222, %.sroa.0190.0224
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc169, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i ], [ %i.jw, %.noexc169 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i ], [ %.sroa.15.0222, %.noexc169 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !128, !alias.scope !129
  %i.jy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i168 = icmp eq ptr %i.jy, %.sroa.0190.0224
  br i1 %.not.i.i.i.i.i168, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !133

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc169
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.jw, %.noexc169 ], [ %i.jz, %.lr.ph.i.i.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %.sroa.15.0222, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.15.0222, i64 noundef %i.jo) #22
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bs, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.kb = getelementptr inbounds nuw [12 x i8], ptr %i.jw, i64 %i.ju
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit

bb.bt:                                            ; preds = %bb.bj
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %bb.br
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8TriangleD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %32) #21
  br label %bb.bv

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.bn, %bb.bl, %bb.bk, %bb.bm, %bb.bp, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.15.1.a = phi ptr [ %.sroa.15.0222, %bb.bp ], [ %i.jw, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.15.0222, %bb.bm ], [ %.sroa.15.0222, %bb.bk ], [ %.sroa.15.0222, %bb.bl ], [ %.sroa.15.0222, %bb.bn ] ; 9 uses
  %.sroa.10.1 = phi ptr [ %i.jl, %bb.bp ], [ %i.ka, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.10.0223, %bb.bm ], [ %.sroa.10.0223, %bb.bk ], [ %.sroa.10.0223, %bb.bl ], [ %.sroa.10.0223, %bb.bn ] ; 2 uses
  %.sroa.0190.1 = phi ptr [ %.sroa.0190.0224, %bb.bp ], [ %i.kb, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0190.0224, %bb.bm ], [ %.sroa.0190.0224, %bb.bk ], [ %.sroa.0190.0224, %bb.bl ], [ %.sroa.0190.0224, %bb.bn ] ; 2 uses
  call void @_ZN8TriangleD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.kd = add i32 %.084225, 1                     ; 2 uses
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = load ptr, ptr %i.o, align 8, !tbaa !99  ; 2 uses
  %i.kg = load ptr, ptr %4, align 8, !tbaa !100   ; 3 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = sdiv exact i64 %i.kj, 24
  %i.kl = icmp ugt i64 %i.kk, %i.ke
  br i1 %i.kl, label %bb.bj, label %._crit_edge, !llvm.loop !134

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn107.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bu ], [ %i.kc, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %.not.i.i.i179 = icmp eq ptr %.sroa.15.0222, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit180, label %bb.ca

.thread:                                          ; preds = %._crit_edge
  %i.km = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.01.0.copyload.i170 = load <2 x float>, ptr %i.km, align 8 ; 4 uses
  %.sroa.22.0..sroa_idx.i171 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %.sroa.22.0.copyload.i172 = load float, ptr %.sroa.22.0..sroa_idx.i171, align 8, !tbaa !77 ; 2 uses
  %i.kn = load <2 x float>, ptr %.sroa.15.1.a, align 4, !tbaa !77 ; 3 uses
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.15.1.a, i64 8
  %.sroa.613.0.copyload.i = load float, ptr %.sroa.613.0..sroa_idx.i, align 4, !tbaa !77 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.15.1.a, i64 12
  %i.kp = load <2 x float>, ptr %i.ko, align 4, !tbaa !77 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.15.1.a, i64 20
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !77 ; 2 uses
  %foldExtExtBinop301.a = fsub <2 x float> %i.kn, %.sroa.01.0.copyload.i170
  %i.kq = extractelement <2 x float> %foldExtExtBinop301.a, i64 0
  %i.kr = fpext float %i.kq to double
  %i.ks = call noundef double @pow(double noundef %i.kr, double noundef 2.000000e+00) #21
  %foldExtExtBinop303.a = fsub <2 x float> %i.kn, %.sroa.01.0.copyload.i170
  %i.kt = extractelement <2 x float> %foldExtExtBinop303.a, i64 1
  %i.ku = fpext float %i.kt to double
  %i.kv = call noundef double @pow(double noundef %i.ku, double noundef 2.000000e+00) #21
  %i.kw = fadd double %i.ks, %i.kv
  %i.kx = fsub float %.sroa.613.0.copyload.i, %.sroa.22.0.copyload.i172
  %i.ky = fpext float %i.kx to double
  %i.kz = call noundef double @pow(double noundef %i.ky, double noundef 2.000000e+00) #21
  %i.la = fadd double %i.kw, %i.kz
  %i.lb = call double @sqrt(double noundef %i.la) #21
  %foldExtExtBinop305 = fsub <2 x float> %i.kp, %.sroa.01.0.copyload.i170
  %i.lc = extractelement <2 x float> %foldExtExtBinop305, i64 0
  %i.ld = fpext float %i.lc to double
  %i.le = call noundef double @pow(double noundef %i.ld, double noundef 2.000000e+00) #21
  %foldExtExtBinop307 = fsub <2 x float> %i.kp, %.sroa.01.0.copyload.i170
  %i.lf = extractelement <2 x float> %foldExtExtBinop307, i64 1
  %i.lg = fpext float %i.lf to double
  %i.lh = call noundef double @pow(double noundef %i.lg, double noundef 2.000000e+00) #21
  %i.li = fadd double %i.le, %i.lh
  %i.lj = fsub float %.sroa.6.0.copyload.i, %.sroa.22.0.copyload.i172
  %i.lk = fpext float %i.lj to double
  %i.ll = call noundef double @pow(double noundef %i.lk, double noundef 2.000000e+00) #21
  %i.lm = fadd double %i.li, %i.ll
  %i.ln = call double @sqrt(double noundef %i.lm) #21
  %i.lo = fcmp olt double %i.lb, %i.ln            ; 2 uses
  %.sroa.027.0.i = select i1 %i.lo, <2 x float> %i.kn, <2 x float> %i.kp
  %.sroa.533.0.i = select i1 %i.lo, float %.sroa.613.0.copyload.i, float %.sroa.6.0.copyload.i
  store <2 x float> %.sroa.027.0.i, ptr %3, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sroa.533.0.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !77
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge
  %.not.i.i.i177 = icmp eq ptr %.sroa.15.1.a, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %.thread, %bb.bw
  %i.lp = ptrtoint ptr %.sroa.15.1.a to i64
  %i.lq = sub i64 %33, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.15.1.a, i64 noundef %i.lq) #22
  %.pre = load ptr, ptr %4, align 8, !tbaa !100
  %.pre238 = load ptr, ptr %i.o, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit:   ; preds = %bb.ai, %bb.bw, %bb.bx
  %i.lr = phi ptr [ %i.kf, %bb.bw ], [ %.pre238, %bb.bx ], [ %i.n, %bb.ai ] ; 2 uses
  %.pr.i = phi ptr [ %i.kg, %bb.bw ], [ %.pre, %bb.bx ], [ %i.n, %bb.ai ] ; 5 uses
  %.0208 = phi i1 [ false, %bb.bw ], [ %.not273, %bb.bx ], [ false, %bb.ai ]
  call void @_ZN3RayD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.lr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ly, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit ] ; 3 uses
  %i.ls = load ptr, ptr %.05.i.i.i, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !135
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ls to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lx) #22
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.by, %.lr.ph.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %i.ly, %i.lr
  br i1 %.not.i.i.i178, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.lz = load ptr, ptr %i.q, align 8, !tbaa !103
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %.pr.i to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.mc) #22
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.0208

bb.ca:                                            ; preds = %bb.bv
  %i.md = ptrtoint ptr %.sroa.0190.0224 to i64
  %i.me = ptrtoint ptr %.sroa.15.0222 to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.15.0222, i64 noundef %i.mf) #22
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit180

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit180: ; preds = %bb.bv, %bb.ca
  call void @_ZN3RayD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #21
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit180, %bb.bi
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit180 ], [ %.pn105, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bf
  %.pn107.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn, %bb.cb ], [ %.pn102.pn, %bb.bf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #21
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bc
  %.pn107.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn, %bb.cc ], [ %.pn100, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #21
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ba
  %.pn107.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn.pn, %bb.cd ], [ %.pn94.pn.pn.pn.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.au
  %.pn107.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %.pn90.pn.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ao
  %.pn107.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cf ], [ %.pn87.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ak
  %.pn107.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume
}

declare void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cvmlERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #3

declare void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #3

declare void @_ZN2cvdvERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #3

declare noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec.10") align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.19", align 1 ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137  ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.k
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = icmp eq i32 %i.l, 4
  %or.cond15 = select i1 %or.cond13, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi3EEEv, ptr noundef nonnull @.str.1, i32 noundef 1301) #23
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !138    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !141
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.x = and i32 %i.n, 16415
  %or.cond17 = icmp eq i32 %i.x, 16389
  br i1 %or.cond17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load float, ptr %i.b, align 4, !tbaa !77
  store float %i.y, ptr %0, align 4, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ad, ptr %i.ae, align 4, !tbaa !77
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false), !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef 5, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !51
  store ptr %4, ptr %i.af, align 8, !tbaa !53
  %i.ah = load i32, ptr %4, align 8, !tbaa !31
  %i.ai = and i32 %i.ah, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ai, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j
  ret void

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZN3RayC1ERKN2cv7Point3_IfEES4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #3

declare void @_ZN8TriangleC1ERKN2cv7Point3_IfEES4_S4_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN10PnPProblem24intersect_MollerTrumboreER3RayR8TrianglePd(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(840) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.a, align 8 ; 6 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
