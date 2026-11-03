Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gauge?download=true
inline.NumInlined: 415
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:.noexc.i
  store i32 %i.fo, ptr %i.fr, align 8, !tbaa !88, !alias.scope !67
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17, !noalias !67
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.ft, align 8, !noalias !67
  store i32 50397184, ptr %21, align 8, !tbaa !79, !noalias !67
  store ptr %14, ptr %i.fs, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17, !noalias !67
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false), !noalias !67
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.fu, align 8, !tbaa !89, !noalias !67
  %.sroa.0203.0.insert.insert.i = bitcast <2 x i32> %i.fn to i64 ; 2 uses
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %.sroa.0203.0.insert.insert.i, i32 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17, !noalias !67
  %i.fv = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.fw, align 8, !noalias !67
  store i32 50397184, ptr %23, align 8, !tbaa !79, !noalias !67
  store ptr %14, ptr %i.fv, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17, !noalias !67
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %24, align 16, !tbaa !89, !noalias !67
  %i.fx = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false), !noalias !67
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 %.sroa.0203.0.insert.insert.i, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17, !noalias !67
  %i.fy = invoke noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #21
          to label %bb.ai unwind label %bb.an     ; 6 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %i.fy, i8 0, i64 576, i1 false)
  %i.fz = invoke noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #21
          to label %bb.aj unwind label %bb.ao     ; 5 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %i.fz, i8 0, i64 576, i1 false)
  %i.ga = invoke noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #21
          to label %bb.ak unwind label %bb.ap     ; 5 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %i.ga, i8 0, i64 576, i1 false)
  %i.gb = sitofp i32 %i.fo to double              ; 3 uses
  %i.gc = fmul nnan double %i.gb, 9.000000e-01
  %i.gd = sitofp <2 x i32> %i.fn to <2 x double>  ; 3 uses
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.aq

.preheader206.i:                                  ; preds = %bb.aq
  %i.gg = fmul nnan double %i.gb, 1.200000e+00
  %i.gh = add nsw <2 x i32> %i.fn, <i32 -10, i32 5>
  %i.gi = sitofp <2 x i32> %i.gh to <2 x double>
  %i.gj = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ar

bb.al:                                            ; preds = %.loopexit.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17, !noalias !67
  br label %bb.bh

bb.am:                                            ; preds = %bb.ag
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17, !noalias !67
  br label %bb.bh

bb.an:                                            ; preds = %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119.i, %bb.ac
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ao:                                            ; preds = %bb.ai
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit165.i

bb.ap:                                            ; preds = %bb.aj
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit163.i

bb.aq:                                            ; preds = %bb.aq, %bb.ak
  %indvars.iv.i = phi i64 [ 0, %bb.ak ], [ %indvars.iv.next.i.1, %bb.aq ] ; 4 uses
  %i.gs = trunc i64 %indvars.iv.i to i32
  %i.gt = mul nuw nsw i32 %i.gs, 10
  %i.gu = uitofp nneg i32 %i.gt to double
  %i.gv = fmul nnan double %i.gu, f0x400921FB54442D18
  %i.gw = fdiv double %i.gv, 1.800000e+02         ; 2 uses
  %i.gx = call double @cos(double noundef %i.gw) #17
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv.i
  %i.gz = call double @sin(double noundef %i.gw) #17
  %i.ha = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.hb, <2 x double> %i.gd)
  store <2 x double> %i.hc, ptr %i.gy, align 8, !tbaa !89
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.hd = trunc i64 %indvars.iv.next.i to i32
  %i.he = mul nuw nsw i32 %i.hd, 10
  %i.hf = uitofp nneg i32 %i.he to double
  %i.hg = fmul nnan double %i.hf, f0x400921FB54442D18
  %i.hh = fdiv double %i.hg, 1.800000e+02         ; 2 uses
  %i.hi = call double @cos(double noundef %i.hh) #17
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv.next.i
  %i.hk = call double @sin(double noundef %i.hh) #17
  %i.hl = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hk, i64 1
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.hm, <2 x double> %i.gd)
  store <2 x double> %i.hn, ptr %i.hj, align 8, !tbaa !89
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 36
  br i1 %exitcond.not.i.1, label %.preheader206.i, label %bb.aq, !llvm.loop !26

.preheader.i:                                     ; preds = %bb.ar
  %i.ho = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 5 uses
  br label %bb.as

bb.ar:                                            ; preds = %bb.ar, %.preheader206.i
  %indvars.iv227.i = phi i64 [ 0, %.preheader206.i ], [ %indvars.iv.next228.i, %bb.ar ] ; 4 uses
  %i.hu = trunc i64 %indvars.iv227.i to i32
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv227.i
  %i.hw = mul i32 %i.hu, 10                       ; 2 uses
  %i.hx = uitofp nneg i32 %i.hw to double
  %i.hy = add i32 %i.hw, 90
  %i.hz = uitofp nneg i32 %i.hy to double
  %i.ia = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %i.hz, i64 1
  %i.ic = fmul nnan <2 x double> %i.ib, splat (double f0x400921FB54442D18)
  %i.id = fdiv <2 x double> %i.ic, splat (double 1.800000e+02) ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0 ; 2 uses
  %i.if = call double @cos(double noundef %i.ie) #17
  %i.ig = call double @sin(double noundef %i.ie) #17
  %i.ih = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.ig, i64 1
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.ii, <2 x double> %i.gd)
  store <2 x double> %i.ij, ptr %i.hv, align 8, !tbaa !89
  %i.ik = extractelement <2 x double> %i.id, i64 1 ; 2 uses
  %i.il = call double @cos(double noundef %i.ik) #17
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv227.i
  %i.in = call double @sin(double noundef %i.ik) #17
  %i.io = insertelement <2 x double> poison, double %i.il, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.in, i64 1
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.ip, <2 x double> %i.gi)
  store <2 x double> %i.iq, ptr %i.im, align 8, !tbaa !89
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next228.i, 36
  br i1 %exitcond230.not.i, label %.preheader.i, label %bb.ar, !llvm.loop !27

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17, !noalias !67
  %i.ir = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.ir, ptr %30, align 8, !tbaa !35, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !67
  store i64 21, ptr %i.a, align 8, !tbaa !37, !noalias !67
  %i.is = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i61 unwind label %bb.bd ; 2 uses

.noexc.i61:                                       ; preds = %.noexc.i.i
  store ptr %i.is, ptr %30, align 8, !tbaa !39, !noalias !67
  %i.it = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !67 ; 3 uses
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !40, !noalias !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.is, ptr noundef nonnull align 1 dereferenceable(21) @.str.8, i64 21, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !41, !noalias !67
  %i.iv = load ptr, ptr %30, align 8, !tbaa !39, !noalias !67
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.it
  store i8 0, ptr %i.iw, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17, !noalias !67
  %i.ix = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 0, ptr %i.ix, align 8, !tbaa !76, !noalias !67
  %i.iy = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i32 0, ptr %i.iy, align 4, !tbaa !77, !noalias !67
  store i32 16842752, ptr %31, align 8, !tbaa !79, !noalias !67
  %i.iz = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %14, ptr %i.iz, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17, !noalias !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false), !noalias !67
  %i.ja = invoke noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.ba unwind label %bb.be     ; 0 uses

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60, %.preheader.i
  %indvars.iv231.i.a = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next232.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17, !noalias !67
  store i64 0, ptr %i.hp, align 8, !noalias !67
  store i32 50397184, ptr %25, align 8, !tbaa !79, !noalias !67
  store ptr %14, ptr %i.ho, align 8, !tbaa !80, !noalias !67
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv231.i.a
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv231.i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17, !noalias !67
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %26, align 16, !tbaa !89, !noalias !67
  %i.jd = load <2 x double>, ptr %i.jb, align 8, !tbaa !89
  %i.je = fptosi <2 x double> %i.jd to <2 x i32>
  %.sroa.0171.0.insert.insert.i = bitcast <2 x i32> %i.je to i64
  %i.jf = load <2 x double>, ptr %i.jc, align 8, !tbaa !89
  %i.jg = fptosi <2 x double> %i.jf to <2 x i32>
  %.sroa.0169.0.insert.insert.i = bitcast <2 x i32> %i.jg to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false), !noalias !67
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 %.sroa.0171.0.insert.insert.i, i64 %.sroa.0169.0.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i unwind label %bb.ay

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17, !noalias !67
  store i64 0, ptr %i.hs, align 8, !noalias !67
  store i32 50397184, ptr %27, align 8, !tbaa !79, !noalias !67
  store ptr %14, ptr %i.hr, align 8, !tbaa !80, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17, !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.jh = icmp eq i64 %indvars.iv231.i.a, 0
  %i.ji = icmp samesign ult i64 %indvars.iv231.i.a, 10
  %42 = select i1 %i.ji, i64 2, i64 3
  %i.jj = select i1 %i.jh, i64 1, i64 %42
  store ptr %i.ht, ptr %28, align 8, !tbaa !35, !alias.scope !90, !noalias !67
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef %i.jj, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i unwind label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.jk = load ptr, ptr %28, align 8, !tbaa !39, !alias.scope !90, !noalias !67 ; 4 uses
  %i.jl = icmp samesign ugt i64 %indvars.iv231.i.a, 9
  %i.jm = trunc i64 %indvars.iv231.i.a to i32
  %i.jn = mul i32 %i.jm, 10                       ; 2 uses
  br i1 %i.jl, label %.lr.ph.i11.i.i, label %._crit_edge.i.i125.i

.lr.ph.i11.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i, %.lr.ph.i11.i.i
  %.020.i.i.i = phi i32 [ %i.jq, %.lr.ph.i11.i.i ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.kb, %.lr.ph.i11.i.i ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ] ; 3 uses
  %i.jo = urem i32 %.020.i.i.i, 100
  %i.jp = shl nuw nsw i32 %i.jo, 1
  %i.jq = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.jr = zext nneg i32 %i.jp to i64
  %i.js = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !40, !noalias !91
  %i.jv = zext i32 %.01819.i.i.i to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jv
  store i8 %i.ju, ptr %i.jw, align 1, !tbaa !40
  %i.jx = load i8, ptr %i.js, align 2, !tbaa !40, !noalias !91
  %i.jy = add i32 %.01819.i.i.i, -1
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jz
  store i8 %i.jx, ptr %i.ka, align 1, !tbaa !40
  %i.kb = add i32 %.01819.i.i.i, -2
  %i.kc = icmp samesign ugt i32 %.020.i.i.i, 9999
  br i1 %i.kc, label %.lr.ph.i11.i.i, label %._crit_edge.i.i125.i, !llvm.loop !30

._crit_edge.i.i125.i:                             ; preds = %.lr.ph.i11.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ], [ %i.jq, %.lr.ph.i11.i.i ] ; 3 uses
  %i.kd = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.kd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i125.i
  %i.ke = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !40, !noalias !91
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !40
  %i.kk = load i8, ptr %i.kg, align 2, !tbaa !40, !noalias !91
  br label %bb.aw

bb.au:                                            ; preds = %._crit_edge.i.i125.i
  %i.kl = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.km = or disjoint i8 %i.kl, 48
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #22
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at
  %storemerge.i.i.i = phi i8 [ %i.km, %bb.au ], [ %i.kk, %bb.at ]
  store i8 %storemerge.i.i.i, ptr %i.jk, align 1, !tbaa !40
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %indvars.iv231.i.a
  %i.kq = load <2 x double>, ptr %i.kp, align 8, !tbaa !89
  %i.kr = fptosi <2 x double> %i.kq to <2 x i32>
  %.sroa.0168.0.insert.insert.i = bitcast <2 x i32> %i.kr to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, i8 0, i64 32, i1 false), !noalias !67
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 %.sroa.0168.0.insert.insert.i, i32 noundef 0, double noundef 3.000000e-01, ptr noundef nonnull align 8 dead_on_return %29, i32 noundef 1, i32 noundef 16, i1 noundef zeroext false)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ks = load ptr, ptr %28, align 8, !tbaa !39, !noalias !67 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.ht
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %bb.ax
  %i.ku = load i64, ptr %i.ht, align 8, !tbaa !40, !noalias !67
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i60: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17, !noalias !67
  %indvars.iv.next232.i.a = add nuw nsw i64 %indvars.iv231.i.a, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next232.i.a, 36
  br i1 %exitcond234.not.i, label %.noexc.i.i, label %bb.as, !llvm.loop !31

bb.ay:                                            ; preds = %bb.as
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17, !noalias !67
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit161.i

bb.az:                                            ; preds = %bb.aw
  %i.kx = landingpad { ptr, i32 }
          cleanup
  %i.ky = load ptr, ptr %28, align 8, !tbaa !39, !noalias !67 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.ht
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i: ; preds = %bb.az
  %i.la = load i64, ptr %i.ht, align 8, !tbaa !40, !noalias !67
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17, !noalias !67
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit161.i

bb.ba:                                            ; preds = %.noexc.i61
  %i.lc = load ptr, ptr %32, align 8, !tbaa !93, !noalias !67 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ld = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !94, !noalias !67
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17, !noalias !67
  %i.li = load ptr, ptr %30, align 8, !tbaa !39, !noalias !67 ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.ir
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.lk = load i64, ptr %i.ir, align 8, !tbaa !40, !noalias !67
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17, !noalias !67
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i
  %i.ln = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZNSirsERd.exit.i unwind label %bb.bg ; 0 uses

_ZNSirsERd.exit.i:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136.i unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136.i: ; preds = %_ZNSirsERd.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.lq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %i.lp)
          to label %_ZNSirsERd.exit138.i unwind label %bb.bg ; 0 uses

_ZNSirsERd.exit138.i:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136.i
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140.i unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140.i: ; preds = %_ZNSirsERd.exit138.i
  %i.ls = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.lt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %i.ls)
          to label %_ZNSirsERd.exit142.i unwind label %bb.bg ; 0 uses

_ZNSirsERd.exit142.i:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140.i
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.i unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.i: ; preds = %_ZNSirsERd.exit142.i
  %i.lv = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 2 uses
  %i.lw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %i.lv)
          to label %_ZNSirsERd.exit146.i unwind label %bb.bg ; 0 uses

_ZNSirsERd.exit146.i:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.i
  %i.lx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148.i unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148.i: ; preds = %_ZNSirsERd.exit146.i
  %i.ly = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit153.i unwind label %bb.bg ; 0 uses

_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit153.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 576) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 576) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef 576) #18
  %i.lz = load ptr, ptr %18, align 8, !tbaa !96, !noalias !67 ; 3 uses
  %.not.i.i.i154.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i154.i, label %bb.bm, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit153.i
  %i.ma = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !97, !noalias !67
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.lz to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %i.lz, i64 noundef %i.me) #18
  br label %bb.bm

bb.bd:                                            ; preds = %.noexc.i.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i

bb.be:                                            ; preds = %.noexc.i61
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mh = load ptr, ptr %32, align 8, !tbaa !93, !noalias !67 ; 3 uses
  %.not.i.i.i155.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i155.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit156.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mi = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !94, !noalias !67
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.mh to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.mm) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit156.i

_ZNSt6vectorIiSaIiEED2Ev.exit156.i:               ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17, !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17, !noalias !67
  %i.mn = load ptr, ptr %30, align 8, !tbaa !39, !noalias !67 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ir
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit156.i
  %i.mp = load i64, ptr %i.ir, align 8, !tbaa !40, !noalias !67
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit156.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i, %bb.bd
  %.pn98.pn.i = phi { ptr, i32 } [ %i.mf, %bb.bd ], [ %i.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.i ], [ %i.mg, %_ZNSt6vectorIiSaIiEED2Ev.exit156.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17, !noalias !67
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit161.i

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148.i, %_ZNSirsERd.exit146.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144.i, %_ZNSirsERd.exit142.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140.i, %_ZNSirsERd.exit138.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136.i, %_ZNSirsERd.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit161.i

_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit161.i: ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i, %bb.ay
  %.pn103.pn.pn.i = phi { ptr, i32 } [ %.pn98.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.i ], [ %i.mr, %bb.bg ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i ], [ %i.kw, %bb.ay ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 576) #18
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit163.i

_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit163.i: ; preds = %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit161.i, %bb.ap
  %.pn103.pn.pn.pn.i = phi { ptr, i32 } [ %.pn103.pn.pn.i, %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit161.i ], [ %i.gr, %bb.ap ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 576) #18
  br label %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit165.i

_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit165.i: ; preds = %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit163.i, %bb.ao
  %.pn103.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn103.pn.pn.pn.i, %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit163.i ], [ %i.gq, %bb.ao ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef 576) #18
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit165.i, %bb.an, %bb.am, %bb.al, %bb.ae
  %.pn112.i = phi { ptr, i32 } [ %.pn103.pn.pn.pn.pn.i, %_ZNSt6vectorIN2cv6Point_IdEESaIS2_EED2Ev.exit165.i ], [ %i.du, %bb.ae ], [ %i.gp, %bb.an ], [ %i.gn, %bb.al ], [ %i.go, %bb.am ]
  %i.ms = load ptr, ptr %18, align 8, !tbaa !96, !noalias !67 ; 3 uses
  %.not.i.i.i166.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i166.i, label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit167.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !97, !noalias !67
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #18
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit167.i

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit167.i: ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17, !noalias !67
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit167.i, %bb.ad
  %.pn112.pn.i = phi { ptr, i32 } [ %.pn112.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit167.i ], [ %i.dt, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17, !noalias !67
  br label %bb.bk

end_hunk_0
