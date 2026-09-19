Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/transpose_layer?download=true
inline.NumInlined: 721
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3dnn18TransposeLayerImpl5runOpERKNS_3MatERS2_:bb.a
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !66
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul nsw i64 %i.jh, %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv352.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 28
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !66
  %i.jq = sext i32 %i.jp to i64
  %i.jr = mul nsw i64 %i.jm, %i.jq                ; 3 uses
  %indvars.iv.next353.i.7 = add nuw nsw i64 %indvars.iv352.i, 8 ; 2 uses
  %niter61.next.7 = add i64 %niter61, 8           ; 2 uses
  %niter61.ncmp.7 = icmp eq i64 %niter61.next.7, %unroll_iter60
  br i1 %niter61.ncmp.7, label %._crit_edge338.i.unr-lcssa, label %.lr.ph337.i, !llvm.loop !142

bb.ab:                                            ; preds = %._crit_edge338.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.js = mul nuw nsw i64 %i.gr, %i.al            ; 2 uses
  store i64 %i.js, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !77
  store ptr %i.ju, ptr %i.d, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !77
  store ptr %i.jw, ptr %i.e, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.jx = trunc i64 %.lcssa to i32
  store i32 0, ptr %19, align 4, !tbaa !16
  %i.jy = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !17
  %i.jz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  %i.ka = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19
          to label %bb.ad unwind label %bb.ac     ; 9 uses

bb.ac:                                            ; preds = %bb.ab
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body177.i

bb.ad:                                            ; preds = %bb.ab
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.a, ptr %i.ka, align 16, !tbaa !42
  %.sroa.5303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %18, ptr %.sroa.5303.0..sroa_idx.i, align 8, !tbaa !82
  %.sroa.6304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store ptr %17, ptr %.sroa.6304.0..sroa_idx.i, align 16, !tbaa !84
  %.sroa.7305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  store ptr %i.w, ptr %.sroa.7305.0..sroa_idx.i, align 8, !tbaa !82
  %.sroa.8306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  store ptr %i.e, ptr %.sroa.8306.0..sroa_idx.i, align 16, !tbaa !86
  %.sroa.9307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  store ptr %i.c, ptr %.sroa.9307.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.10308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  store ptr %i.d, ptr %.sroa.10308.0..sroa_idx.i, align 16, !tbaa !86
  %.sroa.11309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 56
  store ptr %i.b, ptr %.sroa.11309.0..sroa_idx.i, align 8, !tbaa !19
  store ptr %i.ka, ptr %20, align 8, !tbaa !23
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.kc, align 8, !tbaa !26
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS6_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.jz, align 8, !tbaa !27
  %i.kd = uitofp nneg i64 %.lcssa to double
  %i.ke = uitofp nneg i64 %i.js to double
  %i.kf = fmul nnan double %i.ke, %i.kd
  %i.kg = fmul nnan double %i.kf, f0x3F10000000000000 ; 2 uses
  %i.kh = fcmp ogt double %i.kg, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.kh, double %i.kg, double 1.000000e+00
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef align 8 %20, double noundef %.sroa.speculated.i)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !27 ; 2 uses
  %.not.i182.i = icmp eq ptr %i.ki, null
  br i1 %.not.i182.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kj = invoke noundef zeroext i1 %i.ki(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.km = load ptr, ptr %18, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.kn = load ptr, ptr %i.gv, align 8, !tbaa !44
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.km to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.kq) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.ah, %_ZNSt14_Function_baseD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.kr = load ptr, ptr %17, align 8, !tbaa !79   ; 3 uses
  %.not.i.i.i183.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i183.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ks = load ptr, ptr %i.er, align 8, !tbaa !144
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kr to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.kv) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %_ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_.exit

bb.aj:                                            ; preds = %bb.ad
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kx = load ptr, ptr %i.jz, align 8, !tbaa !27 ; 2 uses
  %.not.i184.i = icmp eq ptr %i.kx, null
  br i1 %.not.i184.i, label %.body177.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ky = invoke noundef zeroext i1 %i.kx(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %.body177.i unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.kz = landingpad { ptr, i32 }
          catch ptr null
  %i.la = extractvalue { ptr, i32 } %i.kz, 0
  call void @__clang_call_terminate(ptr %i.la) #20
  unreachable

.body177.i:                                       ; preds = %bb.ak, %bb.aj, %bb.ac
  %.pn127.i = phi { ptr, i32 } [ %i.kb, %bb.ac ], [ %i.kw, %bb.ak ], [ %i.kw, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.pre372.i = load ptr, ptr %18, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i186.i = icmp eq ptr %.pre372.i, null
  br i1 %.not.i.i.i186.i, label %.body165.i, label %.body177.i..body177.thread.i_crit_edge

.body177.i..body177.thread.i_crit_edge:           ; preds = %.body177.i
  %.pre = load ptr, ptr %i.gv, align 8, !tbaa !44
  br label %.body177.thread.i

.body177.thread.i:                                ; preds = %.body177.i..body177.thread.i_crit_edge, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i174.i
  %i.lb = phi ptr [ %.pre, %.body177.i..body177.thread.i_crit_edge ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i174.i ], [ %i.gu, %bb.aa ]
  %.pn144447.i = phi { ptr, i32 } [ %.pn127.i, %.body177.i..body177.thread.i_crit_edge ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i174.i ], [ %i.hy, %bb.aa ]
  %i.lc = phi ptr [ %.pre372.i, %.body177.i..body177.thread.i_crit_edge ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i174.i ], [ %i.gt, %bb.aa ] ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lf) #21
  br label %.body165.i

.body165.i:                                       ; preds = %.body177.thread.i, %.body177.i, %bb.v
  %.pn144.pn.i = phi { ptr, i32 } [ %i.hn, %bb.v ], [ %.pn127.i, %.body177.i ], [ %.pn144447.i, %.body177.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %.pre373.i = load ptr, ptr %17, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i188.i = icmp eq ptr %.pre373.i, null
  br i1 %.not.i.i.i188.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit189.i, label %.body165.i..body165.thread.i_crit_edge

.body165.i..body165.thread.i_crit_edge:           ; preds = %.body165.i
  %.pre6 = load ptr, ptr %i.er, align 8, !tbaa !144
  br label %.body165.thread.i

.body165.thread.i:                                ; preds = %.body165.i..body165.thread.i_crit_edge, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162.i
  %i.lg = phi ptr [ %.pre6, %.body165.i..body165.thread.i_crit_edge ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162.i ], [ %i.eq, %bb.u ]
  %.pn148450.i = phi { ptr, i32 } [ %.pn144.pn.i, %.body165.i..body165.thread.i_crit_edge ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162.i ], [ %i.go, %bb.u ]
  %i.lh = phi ptr [ %.pre373.i, %.body165.i..body165.thread.i_crit_edge ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i162.i ], [ %i.ep, %bb.u ] ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lk) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit189.i

_ZNSt6vectorIlSaIlEED2Ev.exit189.i:               ; preds = %.body165.thread.i, %.body165.i, %bb.q
  %.pn148.pn.i = phi { ptr, i32 } [ %i.fj, %bb.q ], [ %.pn144.pn.i, %.body165.i ], [ %.pn148450.i, %.body165.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.em

_ZNSt6vectorIlSaIlEED2Ev.exit193.i:               ; preds = %._crit_edge338.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gs) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eo) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit193.i, %bb.o, %bb.n, %bb.m, %_ZN2cv3dnnL13isSwapLastTwoERKNS_8MatShapeERKSt6vectorIiSaIiEEiRlS9_S9_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.ll = sub nsw i32 7, %i.z                     ; 8 uses
  %i.lm = icmp slt i32 %i.z, 8
  br i1 %i.lm, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 129) #22
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i

bb.ar:                                            ; preds = %bb.ao
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %21, align 8, !tbaa !39   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i: ; preds = %bb.ar
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !38
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i, %bb.aq
  %.pn130.i = phi { ptr, i32 } [ %i.ln, %bb.aq ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i ], [ %i.lo, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.el

bb.as:                                            ; preds = %bb.am
  %i.lu = load i32, ptr %1, align 8, !tbaa !143
  %i.lv = and i32 %i.lu, 16384
  %.not325.i = icmp eq i32 %i.lv, 0
  br i1 %.not325.i, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 130) #22
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i

bb.ax:                                            ; preds = %bb.au
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ly = load ptr, ptr %23, align 8, !tbaa !39   ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197.i: ; preds = %bb.ax
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !38
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197.i, %bb.aw
  %.pn132.i = phi { ptr, i32 } [ %i.lw, %bb.aw ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197.i ], [ %i.lx, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.el

bb.ay:                                            ; preds = %bb.as
  %i.md = load i32, ptr %2, align 8, !tbaa !143
  %i.me = and i32 %i.md, 16384
  %.not326.i = icmp eq i32 %i.me, 0
  br i1 %.not326.i, label %bb.az, label %.preheader327.preheader.i

.preheader327.preheader.i:                        ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, i8 0, i64 48, i1 false), !tbaa !14
  %i.mf = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.f, align 16, !tbaa !66
  %i.mm = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store <4 x i32> splat (i32 1), ptr %i.h, align 16, !tbaa !66
  %i.mn = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store <4 x i32> splat (i32 1), ptr %i.g, align 16, !tbaa !66
  %i.mo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i32 4, ptr %i.mo, align 16, !tbaa !66
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i32 1, ptr %i.mp, align 16, !tbaa !66
  %i.mq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i32 1, ptr %i.mq, align 16, !tbaa !66
  %i.mr = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  store i32 5, ptr %i.mr, align 4, !tbaa !66
  %i.ms = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  store i32 1, ptr %i.ms, align 4, !tbaa !66
  %i.mt = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 1, ptr %i.mt, align 4, !tbaa !66
  %i.mu = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i32 6, ptr %i.mu, align 8, !tbaa !66
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i32 1, ptr %i.mv, align 8, !tbaa !66
  %i.mw = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i32 1, ptr %i.mw, align 8, !tbaa !66
  %i.mx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 1, ptr %i.mx, align 16, !tbaa !14
  %i.my = icmp sgt i32 %i.z, 0
  br i1 %i.my, label %.lr.ph343.i, label %.split154.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 131) #22
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i

bb.bd:                                            ; preds = %bb.ba
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nb = load ptr, ptr %25, align 8, !tbaa !39   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i: ; preds = %bb.bd
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !38
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.nf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i, %bb.bc
  %.pn134.i = phi { ptr, i32 } [ %i.mz, %bb.bc ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i ], [ %i.na, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.el

.lr.ph343.i:                                      ; preds = %.preheader327.preheader.i
  %i.ng = load ptr, ptr %i.w, align 8, !tbaa !42  ; 8 uses
  %i.nh = load ptr, ptr %i.aw, align 8, !tbaa !42
  %i.ni = icmp eq ptr %i.ng, %i.nh                ; 7 uses
  %i.nj = load i32, ptr %13, align 4              ; 7 uses
  %narrow.i206.i = call i32 @llvm.smax.i32(i32 %i.nj, i32 1) ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 8 uses
  %i.nl = load i32, ptr %14, align 4              ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %14, i64 12
  %39 = sext i32 %i.ll to i64                     ; 9 uses
  br i1 %i.ni, label %bb.be, label %bb.bf

.preheader.loopexit.i:                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.6, %_ZN2cv8MatShapeixEm.exit232.i.5, %_ZN2cv8MatShapeixEm.exit232.i.4, %_ZN2cv8MatShapeixEm.exit232.i.3, %_ZN2cv8MatShapeixEm.exit232.i.2, %_ZN2cv8MatShapeixEm.exit232.i.1, %_ZN2cv8MatShapeixEm.exit232.i
  %.pre374.i = load i32, ptr %i.mw, align 8, !tbaa !66
  %.pre375.i = load i32, ptr %i.mt, align 4, !tbaa !66
  %.pre376.i = load i32, ptr %i.mq, align 16, !tbaa !66
  %.pre377.i = load i32, ptr %i.mn, align 4, !tbaa !66
  %.pre378.i = load i32, ptr %i.mk, align 8, !tbaa !66
  %.pre379.i = load i32, ptr %i.mh, align 4, !tbaa !66
  %.pre380.i = load i32, ptr %i.h, align 16, !tbaa !66
  %.pre381.i = load i32, ptr %i.mg, align 4, !tbaa !66
  %.pre382.i = load i32, ptr %i.mj, align 8, !tbaa !66
  %.pre383.i = load i32, ptr %i.mm, align 4, !tbaa !66
  %.pre384.i = load i32, ptr %i.mp, align 16, !tbaa !66
  %.pre385.i = load i32, ptr %i.ms, align 4, !tbaa !66
  %.pre386.i = load i32, ptr %i.mv, align 8, !tbaa !66
  %.pre387.i = load i32, ptr %i.f, align 16, !tbaa !66
  %.pre388.i = load i32, ptr %i.mf, align 4, !tbaa !66
  %.pre389.i = load i32, ptr %i.mi, align 8, !tbaa !66
  %.pre390.i = load i32, ptr %i.ml, align 4, !tbaa !66
  %.pre391.i = load i32, ptr %i.mo, align 16, !tbaa !66
  %.pre392.i = load i32, ptr %i.mr, align 4, !tbaa !66
  %.pre393.i = load i32, ptr %i.mu, align 8, !tbaa !66
  %i.nn = sext i32 %.pre374.i to i64              ; 2 uses
  %i.no = sext i32 %.pre375.i to i64
  %i.np = mul nsw i64 %i.no, %i.nn                ; 2 uses
  %i.nq = sext i32 %.pre376.i to i64
  %i.nr = mul i64 %i.np, %i.nq                    ; 2 uses
  %i.ns = sext i32 %.pre377.i to i64
  %i.nt = mul i64 %i.nr, %i.ns                    ; 2 uses
  %i.nu = sext i32 %.pre378.i to i64
  %i.nv = mul i64 %i.nt, %i.nu                    ; 2 uses
  %i.nw = sext i32 %.pre379.i to i64
  %i.nx = mul i64 %i.nv, %i.nw
  %i.ny = sext i32 %.pre387.i to i64
  %i.nz = sext i32 %.pre388.i to i64
  %i.oa = sext i32 %.pre389.i to i64
  %i.ob = sext i32 %.pre390.i to i64
  %i.oc = sext i32 %.pre391.i to i64
  %i.od = sext i32 %.pre392.i to i64
  %i.oe = sext i32 %.pre393.i to i64
  %i.of = zext i32 %.pre380.i to i64
  br label %.split154.i

bb.be:                                            ; preds = %.lr.ph343.i
  %i.og = add nsw i32 %i.z, -1
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph343.i
  %i.oh = load i32, ptr %i.ng, align 4, !tbaa !66
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.oi = phi i32 [ %i.og, %bb.be ], [ %i.oh, %bb.bf ] ; 2 uses
  %i.oj = icmp slt i32 %i.oi, 0
  %i.ok = select i1 %i.oj, i32 %i.z, i32 0
  %.095.i = add nsw i32 %i.ok, %i.oi              ; 4 uses
  %or.cond.i = icmp ult i32 %.095.i, %i.z
  br i1 %or.cond.i, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.di, %bb.dc, %bb.cw, %bb.cq, %bb.ck, %bb.ce, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 144) #22
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

bb.bl:                                            ; preds = %bb.bi
  %i.om = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.on = load ptr, ptr %27, align 8, !tbaa !39   ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i: ; preds = %bb.bl
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !38
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.or) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i, %bb.bk
  %.pn138.i = phi { ptr, i32 } [ %i.ol, %bb.bk ], [ %i.om, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i ], [ %i.om, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.el

bb.bm:                                            ; preds = %bb.bg
  %i.os = add nuw nsw i32 %.095.i, %i.ll
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.f, i64 %39
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !66
  %i.ou = icmp ult i32 %.095.i, %narrow.i206.i
  br i1 %i.ou, label %_ZN2cv8MatShapeixEm.exit217.i, label %bb.bn

bb.bn:                                            ; preds = %bb.dj, %bb.dd, %bb.cx, %bb.cr, %bb.cl, %bb.cf, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #22
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ov = landingpad { ptr, i32 }
          cleanup
  %i.ow = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i: ; preds = %bb.bp
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !38
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i

common.resume.i:                                  ; preds = %bb.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i ], [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i ], [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i ], [ %.pn148.pn.pn.pn.i, %bb.em ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %common.resume.i

bb.bq:                                            ; preds = %_ZN2cv8MatShapeixEm.exit211.i.6, %_ZN2cv8MatShapeixEm.exit211.i.5, %_ZN2cv8MatShapeixEm.exit211.i.4, %_ZN2cv8MatShapeixEm.exit211.i.3, %_ZN2cv8MatShapeixEm.exit211.i.2, %_ZN2cv8MatShapeixEm.exit211.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #22
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.pb = landingpad { ptr, i32 }
          cleanup
  %i.pc = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214.i: ; preds = %bb.bs
  %i.pf = load i64, ptr %i.pd, align 8, !tbaa !38
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume.i

_ZN2cv8MatShapeixEm.exit217.i:                    ; preds = %bb.bm
  %i.ph = zext nneg i32 %.095.i to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !66 ; 2 uses
  %i.pk = load i32, ptr %i.nm, align 4, !tbaa !66
  %i.pl = icmp eq i32 %i.pj, %i.pk
  br i1 %i.pl, label %_ZN2cv8MatShapeixEm.exit232.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.6, %_ZN2cv8MatShapeixEm.exit217.i.5, %_ZN2cv8MatShapeixEm.exit217.i.4, %_ZN2cv8MatShapeixEm.exit217.i.3, %_ZN2cv8MatShapeixEm.exit217.i.2, %_ZN2cv8MatShapeixEm.exit217.i.1, %_ZN2cv8MatShapeixEm.exit217.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 148) #22
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i

bb.bx:                                            ; preds = %bb.bu
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.po = load ptr, ptr %29, align 8, !tbaa !39   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i: ; preds = %bb.bx
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !38
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i, %bb.bw
  %.pn140.i = phi { ptr, i32 } [ %i.pm, %bb.bw ], [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i ], [ %i.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.el

bb.by:                                            ; preds = %bb.dk, %bb.de, %bb.cy, %bb.cs, %bb.cm, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #22
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.pt = landingpad { ptr, i32 }
          cleanup
  %i.pu = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223.i: ; preds = %bb.ca
  %i.px = load i64, ptr %i.pv, align 8, !tbaa !38
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.py) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume.i

_ZN2cv8MatShapeixEm.exit232.i:                    ; preds = %_ZN2cv8MatShapeixEm.exit217.i
  %i.pz = load i32, ptr %i.nk, align 4, !tbaa !66
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.g, i64 %39
  store i32 %i.pz, ptr %i.qa, align 4, !tbaa !66
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.h, i64 %39
  store i32 %i.pj, ptr %i.qb, align 4, !tbaa !66
  %exitcond367.not.i = icmp eq i32 %i.z, 1
  br i1 %exitcond367.not.i, label %.preheader.loopexit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i
  br i1 %i.ni, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !66
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.qe = add nsw i32 %i.z, -2
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.qf = phi i32 [ %i.qe, %bb.cd ], [ %i.qd, %bb.cc ] ; 2 uses
  %i.qg = icmp slt i32 %i.qf, 0
  %i.qh = select i1 %i.qg, i32 %i.z, i32 0
  %.095.i.1 = add nsw i32 %i.qh, %i.qf            ; 4 uses
  %or.cond.i.1 = icmp ult i32 %.095.i.1, %i.z
  br i1 %or.cond.i.1, label %bb.cf, label %bb.bh

bb.cf:                                            ; preds = %bb.ce
  %i.qi = add nuw nsw i32 %.095.i.1, %i.ll
  %i.qj = add nuw nsw i64 %39, 1                  ; 3 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.qj
  store i32 %i.qi, ptr %i.qk, align 4, !tbaa !66
  %i.ql = icmp ult i32 %.095.i.1, %narrow.i206.i
  br i1 %i.ql, label %_ZN2cv8MatShapeixEm.exit211.i.1, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.1:                  ; preds = %bb.cf
  %exitcond363.not.i.1 = icmp slt i32 %i.nl, 2
  br i1 %exitcond363.not.i.1, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.1

_ZN2cv8MatShapeixEm.exit217.i.1:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.1
  %i.qm = zext nneg i32 %.095.i.1 to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !66 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !66
  %i.qr = icmp eq i32 %i.qo, %i.qq
  br i1 %i.qr, label %bb.cg, label %bb.bt

bb.cg:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.1
  %exitcond365.not.i.1 = icmp slt i32 %i.nj, 2
  br i1 %exitcond365.not.i.1, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.1

_ZN2cv8MatShapeixEm.exit232.i.1:                  ; preds = %bb.cg
  %i.qs = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !66
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.qj
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !66
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.qj
  store i32 %i.qo, ptr %i.qv, align 4, !tbaa !66
  %exitcond367.not.i.1 = icmp eq i32 %i.z, 2
  br i1 %exitcond367.not.i.1, label %.preheader.loopexit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.1
  br i1 %i.ni, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !66
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.qy = add nsw i32 %i.z, -3
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.qz = phi i32 [ %i.qy, %bb.cj ], [ %i.qx, %bb.ci ] ; 2 uses
  %i.ra = icmp slt i32 %i.qz, 0
  %i.rb = select i1 %i.ra, i32 %i.z, i32 0
  %.095.i.2 = add nsw i32 %i.rb, %i.qz            ; 4 uses
  %or.cond.i.2 = icmp ult i32 %.095.i.2, %i.z
  br i1 %or.cond.i.2, label %bb.cl, label %bb.bh

bb.cl:                                            ; preds = %bb.ck
  %i.rc = add nuw nsw i32 %.095.i.2, %i.ll
  %i.rd = add nuw nsw i64 %39, 2                  ; 3 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.rd
  store i32 %i.rc, ptr %i.re, align 4, !tbaa !66
  %i.rf = icmp ult i32 %.095.i.2, %narrow.i206.i
  br i1 %i.rf, label %_ZN2cv8MatShapeixEm.exit211.i.2, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.2:                  ; preds = %bb.cl
  %exitcond363.not.i.2 = icmp eq i32 %i.nl, 2
  br i1 %exitcond363.not.i.2, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.2

_ZN2cv8MatShapeixEm.exit217.i.2:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.2
  %i.rg = zext nneg i32 %.095.i.2 to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !66 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !66
  %i.rl = icmp eq i32 %i.ri, %i.rk
  br i1 %i.rl, label %bb.cm, label %bb.bt

bb.cm:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.2
  %exitcond365.not.i.2 = icmp eq i32 %i.nj, 2
  br i1 %exitcond365.not.i.2, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.2

_ZN2cv8MatShapeixEm.exit232.i.2:                  ; preds = %bb.cm
  %i.rm = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !66
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.rd
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !66
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.rd
  store i32 %i.ri, ptr %i.rp, align 4, !tbaa !66
  %exitcond367.not.i.2 = icmp eq i32 %i.z, 3
  br i1 %exitcond367.not.i.2, label %.preheader.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.2
  br i1 %i.ni, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !66
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.rs = add nsw i32 %i.z, -4
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.rt = phi i32 [ %i.rs, %bb.cp ], [ %i.rr, %bb.co ] ; 2 uses
  %i.ru = icmp slt i32 %i.rt, 0
  %i.rv = select i1 %i.ru, i32 %i.z, i32 0
  %.095.i.3 = add nsw i32 %i.rv, %i.rt            ; 4 uses
  %or.cond.i.3 = icmp ult i32 %.095.i.3, %i.z
  br i1 %or.cond.i.3, label %bb.cr, label %bb.bh

bb.cr:                                            ; preds = %bb.cq
  %i.rw = add nuw nsw i32 %.095.i.3, %i.ll
  %i.rx = add nuw nsw i64 %39, 3                  ; 3 uses
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.rx
  store i32 %i.rw, ptr %i.ry, align 4, !tbaa !66
  %i.rz = icmp ult i32 %.095.i.3, %narrow.i206.i
  br i1 %i.rz, label %_ZN2cv8MatShapeixEm.exit211.i.3, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.3:                  ; preds = %bb.cr
  %exitcond363.not.i.3 = icmp eq i32 %i.nl, 3
  br i1 %exitcond363.not.i.3, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.3

_ZN2cv8MatShapeixEm.exit217.i.3:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.3
  %i.sa = zext nneg i32 %.095.i.3 to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !66 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !66
  %i.sf = icmp eq i32 %i.sc, %i.se
  br i1 %i.sf, label %bb.cs, label %bb.bt

bb.cs:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.3
  %exitcond365.not.i.3 = icmp eq i32 %i.nj, 3
  br i1 %exitcond365.not.i.3, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.3

_ZN2cv8MatShapeixEm.exit232.i.3:                  ; preds = %bb.cs
  %i.sg = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !66
  %i.si = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.rx
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !66
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.rx
  store i32 %i.sc, ptr %i.sj, align 4, !tbaa !66
  %exitcond367.not.i.3 = icmp eq i32 %i.z, 4
  br i1 %exitcond367.not.i.3, label %.preheader.loopexit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.3
  br i1 %i.ni, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !66
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.sm = add nsw i32 %i.z, -5
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.sn = phi i32 [ %i.sm, %bb.cv ], [ %i.sl, %bb.cu ] ; 2 uses
  %i.so = icmp slt i32 %i.sn, 0
  %i.sp = select i1 %i.so, i32 %i.z, i32 0
  %.095.i.4 = add nsw i32 %i.sp, %i.sn            ; 4 uses
  %or.cond.i.4 = icmp ult i32 %.095.i.4, %i.z
  br i1 %or.cond.i.4, label %bb.cx, label %bb.bh

bb.cx:                                            ; preds = %bb.cw
  %i.sq = add nuw nsw i32 %.095.i.4, %i.ll
  %i.sr = add nuw nsw i64 %39, 4                  ; 3 uses
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.sr
  store i32 %i.sq, ptr %i.ss, align 4, !tbaa !66
  %i.st = icmp ult i32 %.095.i.4, %narrow.i206.i
  br i1 %i.st, label %_ZN2cv8MatShapeixEm.exit211.i.4, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.4:                  ; preds = %bb.cx
  %exitcond363.not.i.4 = icmp eq i32 %i.nl, 4
  br i1 %exitcond363.not.i.4, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.4

_ZN2cv8MatShapeixEm.exit217.i.4:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.4
  %i.su = zext nneg i32 %.095.i.4 to i64
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !66 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %14, i64 28
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !66
  %i.sz = icmp eq i32 %i.sw, %i.sy
  br i1 %i.sz, label %bb.cy, label %bb.bt

bb.cy:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.4
  %exitcond365.not.i.4 = icmp eq i32 %i.nj, 4
  br i1 %exitcond365.not.i.4, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.4

_ZN2cv8MatShapeixEm.exit232.i.4:                  ; preds = %bb.cy
  %i.ta = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !66
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.sr
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !66
  %i.td = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.sr
  store i32 %i.sw, ptr %i.td, align 4, !tbaa !66
  %exitcond367.not.i.4 = icmp eq i32 %i.z, 5
  br i1 %exitcond367.not.i.4, label %.preheader.loopexit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.4
  br i1 %i.ni, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.te = getelementptr inbounds nuw i8, ptr %i.ng, i64 20
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !66
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.tg = add nsw i32 %i.z, -6
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.th = phi i32 [ %i.tg, %bb.db ], [ %i.tf, %bb.da ] ; 2 uses
  %i.ti = icmp slt i32 %i.th, 0
  %i.tj = select i1 %i.ti, i32 %i.z, i32 0
  %.095.i.5 = add nsw i32 %i.tj, %i.th            ; 4 uses
  %or.cond.i.5 = icmp ult i32 %.095.i.5, %i.z
  br i1 %or.cond.i.5, label %bb.dd, label %bb.bh

bb.dd:                                            ; preds = %bb.dc
  %i.tk = add nuw nsw i32 %.095.i.5, %i.ll
  %i.tl = add nuw nsw i64 %39, 5                  ; 3 uses
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.tl
  store i32 %i.tk, ptr %i.tm, align 4, !tbaa !66
  %i.tn = icmp ult i32 %.095.i.5, %narrow.i206.i
  br i1 %i.tn, label %_ZN2cv8MatShapeixEm.exit211.i.5, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.5:                  ; preds = %bb.dd
  %exitcond363.not.i.5 = icmp eq i32 %i.nl, 5
  br i1 %exitcond363.not.i.5, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.5

_ZN2cv8MatShapeixEm.exit217.i.5:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.5
  %i.to = zext nneg i32 %.095.i.5 to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !66 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !66
  %i.tt = icmp eq i32 %i.tq, %i.ts
  br i1 %i.tt, label %bb.de, label %bb.bt

bb.de:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.5
  %exitcond365.not.i.5 = icmp eq i32 %i.nj, 5
  br i1 %exitcond365.not.i.5, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.5

_ZN2cv8MatShapeixEm.exit232.i.5:                  ; preds = %bb.de
  %i.tu = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !66
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.tl
  store i32 %i.tv, ptr %i.tw, align 4, !tbaa !66
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.tl
  store i32 %i.tq, ptr %i.tx, align 4, !tbaa !66
  %exitcond367.not.i.5 = icmp eq i32 %i.z, 6
  br i1 %exitcond367.not.i.5, label %.preheader.loopexit.i, label %bb.df

bb.df:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.5
  br i1 %i.ni, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !66
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.ua = add nsw i32 %i.z, -7
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ub = phi i32 [ %i.ua, %bb.dh ], [ %i.tz, %bb.dg ] ; 2 uses
  %i.uc = icmp slt i32 %i.ub, 0
  %i.ud = select i1 %i.uc, i32 %i.z, i32 0
  %.095.i.6 = add nsw i32 %i.ud, %i.ub            ; 4 uses
  %or.cond.i.6 = icmp ult i32 %.095.i.6, %i.z
  br i1 %or.cond.i.6, label %bb.dj, label %bb.bh

bb.dj:                                            ; preds = %bb.di
  %i.ue = add nuw nsw i32 %.095.i.6, %i.ll
  %i.uf = add nuw nsw i64 %39, 6                  ; 3 uses
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.uf
  store i32 %i.ue, ptr %i.ug, align 4, !tbaa !66
  %i.uh = icmp ult i32 %.095.i.6, %narrow.i206.i
  br i1 %i.uh, label %_ZN2cv8MatShapeixEm.exit211.i.6, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.6:                  ; preds = %bb.dj
  %exitcond363.not.i.6 = icmp eq i32 %i.nl, 6
  br i1 %exitcond363.not.i.6, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.6

_ZN2cv8MatShapeixEm.exit217.i.6:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.6
  %i.ui = zext nneg i32 %.095.i.6 to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !66 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !66
  %i.un = icmp eq i32 %i.uk, %i.um
  br i1 %i.un, label %bb.dk, label %bb.bt

bb.dk:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.6
  %exitcond365.not.i.6 = icmp eq i32 %i.nj, 6
  br i1 %exitcond365.not.i.6, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.6

_ZN2cv8MatShapeixEm.exit232.i.6:                  ; preds = %bb.dk
  %i.uo = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !66
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.uf
  store i32 %i.up, ptr %i.uq, align 4, !tbaa !66
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.uf
  store i32 %i.uk, ptr %i.ur, align 4, !tbaa !66
  br label %.preheader.loopexit.i

.split154.i:                                      ; preds = %.preheader.loopexit.i, %.preheader327.preheader.i
  %i.us = phi i64 [ %i.oe, %.preheader.loopexit.i ], [ 6, %.preheader327.preheader.i ]
  %i.ut = phi i64 [ %i.od, %.preheader.loopexit.i ], [ 5, %.preheader327.preheader.i ]
  %i.uu = phi i64 [ %i.oc, %.preheader.loopexit.i ], [ 4, %.preheader327.preheader.i ]
  %i.uv = phi i64 [ %i.ob, %.preheader.loopexit.i ], [ 3, %.preheader327.preheader.i ]
  %i.uw = phi i64 [ %i.oa, %.preheader.loopexit.i ], [ 2, %.preheader327.preheader.i ]
  %i.ux = phi i64 [ %i.nz, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.uy = phi i64 [ %i.ny, %.preheader.loopexit.i ], [ 0, %.preheader327.preheader.i ]
  %i.uz = phi i32 [ %.pre386.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.va = phi i32 [ %.pre385.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vb = phi i32 [ %.pre384.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.vc = phi i32 [ %.pre383.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.vd = phi i32 [ %.pre382.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.ve = phi i32 [ %.pre381.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.vf = phi i64 [ %i.of, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vg = phi i64 [ %i.nx, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vh = phi i64 [ %i.nv, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vi = phi i64 [ %i.nt, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vj = phi i64 [ %i.nr, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vk = phi i64 [ %i.np, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vl = phi i64 [ %i.nn, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vm = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.vl, ptr %i.vm, align 8, !tbaa !14
  %i.vn = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.vk, ptr %i.vn, align 16, !tbaa !14
  %i.vo = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.vj, ptr %i.vo, align 8, !tbaa !14
  %i.vp = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.vi, ptr %i.vp, align 16, !tbaa !14
  %i.vq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.vh, ptr %i.vq, align 8, !tbaa !14
  store i64 %i.vg, ptr %i.i, align 16, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i32 %i.ve, ptr %i.j, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i32 %i.vd, ptr %i.k, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store i32 %i.vc, ptr %i.l, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  store i32 %i.vb, ptr %i.m, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  store i32 %i.va, ptr %i.n, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  store i32 %i.uz, ptr %i.o, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uy
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !14
  store i64 %i.vs, ptr %i.p, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ux
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !14
  store i64 %i.vu, ptr %i.q, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uw
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !14
  store i64 %i.vw, ptr %i.r, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uv
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !14
  store i64 %i.vy, ptr %i.s, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uu
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !14
  store i64 %i.wa, ptr %i.t, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  %i.wb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ut
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !14
  store i64 %i.wc, ptr %i.u, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.us
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !14
  store i64 %i.we, ptr %i.v, align 8, !tbaa !14
  %i.wf = zext i32 %i.ve to i64
  %i.wg = zext i32 %i.vd to i64
  %i.wh = zext i32 %i.vc to i64
  %i.wi = zext i32 %i.vb to i64
  %i.wj = mul nuw i64 %i.wh, %i.wi
  %i.wk = mul i64 %i.wj, %i.wg
  %i.wl = mul i64 %i.wk, %i.wf
  %i.wm = mul i64 %i.wl, %i.vf                    ; 4 uses
  %i.wn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.al, i1 true)
  switch i64 %i.wn, label %bb.ej [
    i64 2, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i"
    i64 1, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_2vEEOT_.exit.i"
    i64 0, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_3vEEOT_.exit.i"
    i64 3, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_4vEEOT_.exit.i"
  ]

"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i": ; preds = %.split154.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.wo = trunc i64 %i.wm to i32
  store i32 0, ptr %31, align 4, !tbaa !16
  %i.wp = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 %i.wo, ptr %i.wp, align 4, !tbaa !17
  %i.wq = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 0, ptr %i.wr, align 8
  %i.ws = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #19 ; 16 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %1, ptr %i.ws, align 16, !tbaa !87
  %.sroa.5288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store ptr %2, ptr %.sroa.5288.0..sroa_idx.i, align 8, !tbaa !87
  %.sroa.6289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store ptr %i.m, ptr %.sroa.6289.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.7290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  store ptr %i.l, ptr %.sroa.7290.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.8291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 32
  store ptr %i.k, ptr %.sroa.8291.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.9292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 40
  store ptr %i.j, ptr %.sroa.9292.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.10293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 48
  store ptr %i.p, ptr %.sroa.10293.0..sroa_idx.i, align 16, !tbaa !19
  %.sroa.11294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 56
  store ptr %i.q, ptr %.sroa.11294.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.12295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 64
  store ptr %i.r, ptr %.sroa.12295.0..sroa_idx.i, align 16, !tbaa !19
  %.sroa.13296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 72
  store ptr %i.s, ptr %.sroa.13296.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.14297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 80
  store ptr %i.t, ptr %.sroa.14297.0..sroa_idx.i, align 16, !tbaa !19
  %.sroa.15298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 88
  store ptr %i.n, ptr %.sroa.15298.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.16299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 96
  store ptr %i.o, ptr %.sroa.16299.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.17300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 104
  store ptr %i.u, ptr %.sroa.17300.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.18301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 112
  store ptr %i.v, ptr %.sroa.18301.0..sroa_idx.i, align 16, !tbaa !19
  store ptr %i.ws, ptr %32, align 8, !tbaa !23
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS6_E3$_1E9_M_invokeERKSt9_Any_dataS3_", ptr %i.wt, align 8, !tbaa !26
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS6_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.wq, align 8, !tbaa !27
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %31, ptr noundef align 8 %32, double noundef -1.000000e+00)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i"
  %i.wu = load ptr, ptr %i.wq, align 8, !tbaa !27 ; 2 uses
  %.not.i235.i = icmp eq ptr %i.wu, null
  br i1 %.not.i235.i, label %_ZNSt14_Function_baseD2Ev.exit236.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.wv = invoke noundef zeroext i1 %i.wu(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit236.i unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  call void @__clang_call_terminate(ptr %i.wx) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit236.i:              ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.ej

bb.do:                                            ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i"
  %i.wy = landingpad { ptr, i32 }
          cleanup
  %i.wz = load ptr, ptr %i.wq, align 8, !tbaa !27 ; 2 uses
  %.not.i237.i = icmp eq ptr %i.wz, null
  br i1 %.not.i237.i, label %_ZNSt14_Function_baseD2Ev.exit238.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.xa = invoke noundef zeroext i1 %i.wz(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit238.i unwind label %bb.dq ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.xb = landingpad { ptr, i32 }
          catch ptr null
  %i.xc = extractvalue { ptr, i32 } %i.xb, 0
  call void @__clang_call_terminate(ptr %i.xc) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit238.i:              ; preds = %bb.dp, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.ek

"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_2vEEOT_.exit.i": ; preds = %.split154.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  %i.xd = trunc i64 %i.wm to i32
  store i32 0, ptr %33, align 4, !tbaa !16
  %i.xe = getelementptr inbounds nuw i8, ptr %33, i64 4
  store i32 %i.xd, ptr %i.xe, align 4, !tbaa !17
  %i.xf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.xg, align 8
  %i.xh = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #19 ; 16 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr %1, ptr %i.xh, align 16, !tbaa !87
  %.sroa.5273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  store ptr %2, ptr %.sroa.5273.0..sroa_idx.i, align 8, !tbaa !87
  %.sroa.6274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store ptr %i.m, ptr %.sroa.6274.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.7275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  store ptr %i.l, ptr %.sroa.7275.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.8276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  store ptr %i.k, ptr %.sroa.8276.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.9277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xh, i64 40
end_hunk_0
