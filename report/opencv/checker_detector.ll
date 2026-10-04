Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/checker_detector?download=true
inline.NumInlined: 3254
inline.NumDeleted: 1191
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN2cv3mcc20CCheckerDetectorImpl13cost_functionERKNS_11_InputArrayERKNS_17_InputOutputArrayES4_RKSt6vectorINS_6Point_IfEESaISA_EE:bb.a

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv3mcc24transform_points_forwardERKNS_4MatxIfLi3ELi3EEERKSt6vectorINS_6Point_IfEESaIS7_EERS9_(ptr noundef nonnull align 4 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %.preheader unwind label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.fw = load ptr, ptr %14, align 8, !tbaa !159  ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 2 uses
  %i.ga = load <2 x float>, ptr %i.fw, align 4, !tbaa !63 ; 2 uses
  %i.gb = fadd <2 x float> %i.ga, zeroinitializer
  %i.gc = load <2 x float>, ptr %i.fx, align 4, !tbaa !63 ; 2 uses
  %i.gd = fadd <2 x float> %i.gb, %i.gc
  %i.ge = load <2 x float>, ptr %i.fy, align 4, !tbaa !63 ; 2 uses
  %i.gf = fadd <2 x float> %i.gd, %i.ge
  %i.gg = load <2 x float>, ptr %i.fz, align 4, !tbaa !63 ; 2 uses
  %i.gh = fadd <2 x float> %i.gf, %i.gg
  %i.gi = fmul <2 x float> %i.gh, splat (float 2.500000e-01) ; 8 uses
  %i.gj = fsub <2 x float> %i.ga, %i.gi
  %i.gk = fmul <2 x float> %i.gj, splat (float 7.500000e-01)
  %i.gl = fadd <2 x float> %i.gi, %i.gk
  store <2 x float> %i.gl, ptr %i.fw, align 4, !tbaa !63
  %i.gm = fsub <2 x float> %i.gc, %i.gi
  %i.gn = fmul <2 x float> %i.gm, splat (float 7.500000e-01)
  %i.go = fadd <2 x float> %i.gi, %i.gn
  store <2 x float> %i.go, ptr %i.fx, align 4, !tbaa !63
  %i.gp = fsub <2 x float> %i.ge, %i.gi
  %i.gq = fmul <2 x float> %i.gp, splat (float 7.500000e-01)
  %i.gr = fadd <2 x float> %i.gi, %i.gq
  store <2 x float> %i.gr, ptr %i.fy, align 4, !tbaa !63
  %i.gs = fsub <2 x float> %i.gg, %i.gi
  %i.gt = fmul <2 x float> %i.gs, splat (float 7.500000e-01)
  %i.gu = fadd <2 x float> %i.gi, %i.gt
  store <2 x float> %i.gu, ptr %i.fz, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.gv = load i32, ptr %i.ce, align 8, !tbaa !124 ; 6 uses
  %i.gw = icmp slt i32 %i.gv, 3
  br i1 %i.gw, label %bb.as, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ap:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc143 unwind label %.loopexit.split-lp

.noexc143:                                        ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #31
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc143
  unreachable

bb.ar:                                            ; preds = %.noexc143
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = load ptr, ptr %5, align 8, !tbaa !128   ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ar
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !69
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body

bb.as:                                            ; preds = %.preheader
  %i.he = icmp sgt i32 %i.gv, 0
  br i1 %i.he, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hf = icmp eq i32 %i.gv, 2
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.cf, align 4
  %i.hg = select i1 %i.hf, i32 %.sroa.gep.val, i32 %.val
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.hh = icmp eq i32 %i.gv, 0
  %i.hi = zext i1 %i.hh to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hj = phi i32 [ %i.hg, %bb.at ], [ %i.hi, %bb.au ]
  %i.hk = icmp eq i32 %i.gv, 2
  %i.hl = load i32, ptr %i.cf, align 4
  %i.hm = icmp sgt i32 %i.gv, -1
  %i.hn = zext i1 %i.hm to i32
  %i.ho = select i1 %i.hk, i32 %i.hl, i32 %i.hn
  %.sroa.2.0.insert.ext.i = zext i32 %i.ho to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.hj to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.hp = invoke { i64, i64 } @_ZN2cv3mcc9poly2maskERKSt6vectorINS_6Point_IfEESaIS3_EENS_5Size_IiEERKNS_17_InputOutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.aw unwind label %.loopexit ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.hq = extractvalue { i64, i64 } %i.hp, 0
  store i64 %i.hq, ptr %19, align 8
  %i.hr = extractvalue { i64, i64 } %i.hp, 1      ; 3 uses
  store i64 %i.hr, ptr %i.cg, align 8
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = icmp slt i32 %i.hs, 1
  %i.hu = lshr i64 %i.hr, 32
  %i.hv = trunc nuw i64 %i.hu to i32
  %i.hw = icmp slt i32 %i.hv, 1
  %i.hx = select i1 %i.ht, i1 true, i1 %i.hw
  br i1 %i.hx, label %bb.bn, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.hy = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc145 unwind label %bb.be

.noexc145:                                        ; preds = %bb.ax
  %i.hz = icmp eq i32 %i.hy, 65536
  br i1 %i.hz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc145
  %i.ia = load ptr, ptr %i.ch, align 8, !tbaa !75, !noalias !341
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.ia)
          to label %_ZNK2cv11_InputArray6getMatEi.exit148 unwind label %bb.be

bb.az:                                            ; preds = %.noexc145
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit148 unwind label %bb.be

_ZNK2cv11_InputArray6getMatEi.exit148:            ; preds = %bb.ay, %bb.az
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.bf

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %_ZNK2cv11_InputArray6getMatEi.exit148
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  store i32 0, ptr %i.ci, align 8, !tbaa !78
  store i32 0, ptr %i.cj, align 4, !tbaa !79
  store i32 16842752, ptr %22, align 8, !tbaa !80
  store ptr %23, ptr %i.ck, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  store i32 -1040056314, ptr %24, align 8, !tbaa !80
  store ptr %17, ptr %i.cl, align 8, !tbaa !75
  store i64 17179869185, ptr %i.cm, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  store i32 -1040056314, ptr %25, align 8, !tbaa !80
  store ptr %18, ptr %i.cn, align 8, !tbaa !75
  store i64 17179869185, ptr %i.co, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  store i32 0, ptr %i.cp, align 8, !tbaa !78
  store i32 0, ptr %i.cq, align 4, !tbaa !79
  store i32 16842752, ptr %26, align 8, !tbaa !80
  store ptr %20, ptr %i.cr, align 8, !tbaa !75
  invoke void @_ZN2cv10meanStdDevERKNS_11_InputArrayERKNS_12_OutputArrayES5_S2_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %27, align 8, !tbaa !80
  store ptr %28, ptr %i.ct, align 8, !tbaa !75
  store i64 17179869185, ptr %i.cs, align 8, !tbaa !64
  %i.ib = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.ic = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %bb.bd unwind label %bb.bk     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %i.id = fpext float %i.ff to double             ; 2 uses
  %i.ie = fpext float %i.fh to double             ; 2 uses
  %i.if = fpext float %i.fj to double             ; 3 uses
  %i.ig = load double, ptr %i.cv, align 8, !tbaa !61 ; 2 uses
  %i.ih = load double, ptr %i.cw, align 8, !tbaa !61 ; 2 uses
  %i.ii = load double, ptr %17, align 8, !tbaa !61 ; 3 uses
  %i.ij = call double @llvm.fmuladd.f64(double %i.ii, double %i.id, double 0.000000e+00)
  %i.ik = load double, ptr %i.cu, align 8, !tbaa !61 ; 3 uses
  %i.il = call double @llvm.fmuladd.f64(double %i.ik, double %i.ie, double %i.ij)
  %i.im = call double @llvm.fmuladd.f64(double %i.ig, double %i.if, double %i.il)
  %i.in = call noundef double @llvm.fmuladd.f64(double %i.ih, double 0.000000e+00, double %i.im)
  %i.io = call double @llvm.fmuladd.f64(double %i.ii, double %i.ii, double 0.000000e+00)
  %i.ip = call double @llvm.fmuladd.f64(double %i.ik, double %i.ik, double %i.io)
  %29 = insertelement <2 x double> poison, double %i.ig, i64 0
  %30 = insertelement <2 x double> %29, double %i.id, i64 1 ; 2 uses
  %i.iq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ip, i64 0
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %30, <2 x double> %i.iq)
  %i.ir = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.ie, i64 1 ; 2 uses
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.is, <2 x double> %31) ; 2 uses
  %i.iu = extractelement <2 x double> %i.it, i64 1
  %i.iv = call noundef double @llvm.fmuladd.f64(double %i.if, double %i.if, double %i.iu)
  %i.iw = insertelement <2 x double> %i.it, double %i.iv, i64 1
  %32 = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.iw) ; 2 uses
  %33 = load double, ptr %18, align 8, !tbaa !61
  %34 = insertelement <2 x double> %32, double %33, i64 1 ; 2 uses
  %35 = shufflevector <2 x double> %34, <2 x double> %32, <2 x i32> <i32 3, i32 1>
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %35, <2 x double> <double f0x3E80000000000000, double 0.000000e+00>) ; 2 uses
  %i.ix = extractelement <2 x double> %36, i64 0
  %i.iy = fdiv double %i.in, %i.ix
  %i.iz = fptrunc double %i.iy to float
  %i.ja = fadd float %i.iz, 1.000000e+00
  %i.jb = fmul float %i.ja, 5.000000e-01
  %i.jc = fsub float 1.000000e+00, %i.jb
  %i.jd = load double, ptr %i.cx, align 8, !tbaa !61 ; 2 uses
  %37 = extractelement <2 x double> %36, i64 1
  %i.je = call double @llvm.fmuladd.f64(double %i.jd, double %i.jd, double %37)
  %i.jf = load double, ptr %i.cy, align 8, !tbaa !61 ; 2 uses
  %i.jg = call double @llvm.fmuladd.f64(double %i.jf, double %i.jf, double %i.je)
  %i.jh = load double, ptr %i.cz, align 8, !tbaa !61 ; 2 uses
  %i.ji = call noundef double @llvm.fmuladd.f64(double %i.jh, double %i.jh, double %i.jg)
  %i.jj = fptrunc double %i.ji to float
  %i.jk = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.jl = insertelement <2 x float> %i.jk, float %i.jj, i64 1
  %i.jm = fadd <2 x float> %i.ec, %i.jl
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.bn

.loopexit:                                        ; preds = %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit148
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn66 = phi { ptr, i32 } [ %i.jo, %bb.bf ], [ %i.jn, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.bm

bb.bh:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.ba
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jq, %bb.bi ], [ %i.jp, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bc, %bb.bb
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn76 = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn, %bb.bj ], [ %i.jr, %bb.bk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #27
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bg
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.bl ], [ %.pn66, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.body

bb.bn:                                            ; preds = %bb.bd, %bb.aw
  %i.js = phi <2 x float> [ %i.ec, %bb.aw ], [ %i.jm, %bb.bd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.af, !llvm.loop !337

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bm
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.bm ], [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.bo

bb.bo:                                            ; preds = %.body, %bb.ao
  %.pn82.pn = phi { ptr, i32 } [ %i.gx, %bb.ao ], [ %.pn76.pn.pn, %.body ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #27
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ae
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.bo ], [ %i.eb, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #27
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.ad
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %bb.bp ], [ %i.ea, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.jt = load ptr, ptr %14, align 8, !tbaa !159  ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ju = load ptr, ptr %i.bj, align 8, !tbaa !160
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jx) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154: ; preds = %bb.br, %bb.bq, %bb.ac
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ac ], [ %.pn82.pn.pn.pn, %bb.bq ], [ %.pn82.pn.pn.pn, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.jy = load ptr, ptr %13, align 8, !tbaa !159  ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154
  %i.jz = load ptr, ptr %i.bf, align 8, !tbaa !160
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kc) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156: ; preds = %bb.bs, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154, %bb.ab
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.ab ], [ %.pn82.pn.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit154 ], [ %.pn82.pn.pn.pn.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156, %bb.aa
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit156 ], [ %.pn.pn.pn, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.not.i.i.i157 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158: ; preds = %bb.bu, %bb.bt, %bb.u
  %.pn82.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.u ], [ %.pn82.pn.pn.pn.pn.pn.pn, %bb.bt ], [ %.pn82.pn.pn.pn.pn.pn.pn, %bb.bu ] ; 2 uses
  %i.kd = load ptr, ptr %8, align 8, !tbaa !159   ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit160, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158
  %i.ke = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kd to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.kh) #29
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit160

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit160: ; preds = %bb.bv, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158, %bb.t
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.t ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit158 ], [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN2cv3mcc11CChartModelD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3mcc20CCheckerDetectorImpl11get_profileERKSt6vectorINS_6Point_IfEESaIS4_EERKNS_12_OutputArrayESB_RKNS_11_InputArrayESE_RS2_INS_3MatESaISF_EESI_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::mcc::CChartModel", align 8 ; 10 uses
  %9 = alloca %"class.std::vector.40", align 8    ; 11 uses
  %10 = alloca %"class.cv::Matx.72", align 4      ; 5 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.std::vector.40", align 8   ; 11 uses
  %18 = alloca %"class.std::vector.40", align 8   ; 11 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %21 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %23 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %24 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %i.b = alloca [3 x double], align 16            ; 7 uses
  %i.c = alloca [3 x double], align 16            ; 7 uses
  %i.d = alloca [3 x double], align 16            ; 7 uses
  %25 = alloca %"class.cv::Rect_", align 8        ; 14 uses
  %26 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %28 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 7 uses
end_hunk_0
