Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/cartpole_example?download=true
inline.NumInlined: 1646
inline.NumDeleted: 850
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@main:bb.a
_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i179: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i172
  store ptr %i.df, ptr %13, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.di, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 9, ptr %i.dj, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i64 72, i1 false)
  %i.dk = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #17 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i179
  %i.dm = call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dm, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
          to label %.noexc184 unwind label %bb.at

.noexc184:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i179
  store ptr %i.dk, ptr %14, align 8, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.dn, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 9, ptr %i.do, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i64 72, i1 false)
  %i.dp = invoke i32 @tiny_set_bound_constraints(ptr noundef %i.cu, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %12, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ag unwind label %bb.au     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dq = load ptr, ptr %14, align 8, !tbaa !21
  call void @free(ptr noundef %i.dq) #16
  %i.dr = load ptr, ptr %13, align 8, !tbaa !21
  call void @free(ptr noundef %i.dr) #16
  %i.ds = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.ds) #16
  %i.dt = load ptr, ptr %11, align 8, !tbaa !21
  call void @free(ptr noundef %i.dt) #16
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i32 100, ptr %i.dx, align 8, !tbaa !52
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !53 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store double 5.000000e-01, ptr %15, align 16, !tbaa !12, !noalias !54
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store double 1.000000e+00, ptr %16, align 16, !tbaa !12, !noalias !55
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  store ptr %16, ptr %17, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9ReplicateINS2_IdLi4ELi1ELi0ELi4ELi1EEELi1ELi10EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(10) %17, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.ah unwind label %bb.ay

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 1232
  %i.ef = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 1160
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 40 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 1184
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 48
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 56
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 72
  br label %bb.az

bb.ai:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @free(ptr noundef %i.bu) #16
  call void @free(ptr noundef %i.bq) #16
  call void @free(ptr noundef %i.at) #16
  call void @free(ptr noundef %i.w) #16
  %i.el = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.el) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.em = load ptr, ptr %2, align 8, !tbaa !18
  call void @free(ptr noundef %i.em) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @free(ptr noundef %i.e) #16
  call void @free(ptr noundef %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0

bb.aj:                                            ; preds = %.invoke
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ak:                                            ; preds = %bb.x
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %.sink.split.i152
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %bb.aa
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit103
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %9, align 8, !tbaa !21
  call void @free(ptr noundef %i.es) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.er, %bb.an ], [ %i.eq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.et = load ptr, ptr %7, align 8, !tbaa !21
  call void @free(ptr noundef %i.et) #16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ao ], [ %i.ep, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.eu = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.eu) #16
  br label %.body101

.body101:                                         ; preds = %bb.z, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ap ], [ %i.cm, %bb.z ]
  %i.ev = load ptr, ptr %5, align 8, !tbaa !21
  call void @free(ptr noundef %i.ev) #16
  br label %bb.aq

bb.aq:                                            ; preds = %.body101, %bb.ak
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body101 ], [ %i.eo, %bb.ak ]
  %i.ew = load ptr, ptr %4, align 8, !tbaa !21
  call void @free(ptr noundef %i.ew) #16
  br label %bb.bm

bb.ar:                                            ; preds = %bb.ac
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %bb.ad
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.at:                                            ; preds = %bb.ae
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %14, align 8, !tbaa !21
  call void @free(ptr noundef %i.fb) #16
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn41 = phi { ptr, i32 } [ %i.fa, %bb.au ], [ %i.ez, %bb.at ]
  %i.fc = load ptr, ptr %13, align 8, !tbaa !21
  call void @free(ptr noundef %i.fc) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %bb.av ], [ %i.ey, %bb.as ]
  %i.fd = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.fd) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %bb.aw ], [ %i.ex, %bb.ar ]
  %i.fe = load ptr, ptr %11, align 8, !tbaa !21
  call void @free(ptr noundef %i.fe) #16
  br label %bb.bm

bb.ay:                                            ; preds = %bb.ag
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %.body134

bb.az:                                            ; preds = %bb.ah, %bb.bj
  %.0342 = phi i32 [ 0, %bb.ah ], [ %i.hb, %bb.bj ]
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 16)
          to label %bb.ba unwind label %20        ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.fh = load ptr, ptr %i.ed, align 8, !tbaa !21, !noalias !56
  %i.fi = load i64, ptr %i.ee, align 8, !tbaa !22, !noalias !56
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = load <2 x double>, ptr %15, align 16, !tbaa !13
  %i.fl = load <2 x double>, ptr %i.fj, align 1, !tbaa !13
  %i.fm = fsub <2 x double> %i.fk, %i.fl          ; 2 uses
  %i.fn = fmul <2 x double> %i.fm, %i.fm
  %i.fo = load <2 x double>, ptr %i.eb, align 16, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fq = load <2 x double>, ptr %i.fp, align 1, !tbaa !13
  %i.fr = fsub <2 x double> %i.fo, %i.fq          ; 2 uses
  %i.fs = fmul <2 x double> %i.fr, %i.fr
  %i.ft = fadd <2 x double> %i.fn, %i.fs          ; 2 uses
  %shift = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ft, %shift
  %i.fu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.fu)
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %.scalar.i)
          to label %_ZNSolsEd.exit unwind label %.loopexit ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %bb.ba
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !10
  %i.fx = getelementptr i8, ptr %i.fw, i64 -24
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !72 ; 6 uses
  %.not.i.i.i186 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i186, label %bb.bb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bb:                                            ; preds = %_ZNSolsEd.exit
  invoke void @_ZSt16__throw_bad_castv() #18
          to label %.noexc187 unwind label %.loopexit.split-lp

.noexc187:                                        ; preds = %bb.bb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEd.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !78
  %.not.i1.i.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i1.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 67
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !13
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gb)
          to label %.noexc188 unwind label %.loopexit

.noexc188:                                        ; preds = %bb.bd
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke noundef signext i8 %i.gi(ptr noundef nonnull align 8 dereferenceable(570) %i.gb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !44

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc188, %bb.bc
  %.0.i.i.i = phi i8 [ %i.gf, %bb.bc ], [ %i.gj, %.noexc188 ]
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i8 noundef signext %.0.i.i.i)
          to label %.noexc190 unwind label %.loopexit

.noexc190:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc190
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.gn = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #17 ; 4 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.gp = call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gp, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.gp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
          to label %.noexc.i.i133 unwind label %bb.bf

.noexc.i.i133:                                    ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.gr) #16
  br label %.body134

bb.bg:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  store ptr %i.gn, ptr %18, align 8, !tbaa !18
  store i64 4, ptr %i.ef, align 8, !tbaa !19
  %i.gs = load <2 x double>, ptr %15, align 16, !tbaa !13
  store <2 x double> %i.gs, ptr %i.gn, align 16, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gu = load <2 x double>, ptr %i.eb, align 16, !tbaa !13
  store <2 x double> %i.gu, ptr %i.gt, align 16, !tbaa !13
  %i.gv = invoke i32 @tiny_set_x0(ptr noundef %i.gm, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.bh unwind label %bb.bk     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gw = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.gw) #16
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.gy = invoke i32 @tiny_solve(ptr noundef %i.gx)
          to label %bb.bi unwind label %20        ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.gz = load ptr, ptr %i.eh, align 8, !tbaa !21, !noalias !79
  %i.ha = load i64, ptr %i.ei, align 8, !tbaa !22, !noalias !79 ; 2 uses
  store ptr %i.eg, ptr %19, align 8
  store ptr %15, ptr %.sroa.5200.0..sroa_idx, align 8
  store ptr %i.ej, ptr %i.ek, align 8
  store ptr %i.gz, ptr %.sroa.5194.0..sroa_idx, align 8
  store i64 %i.ha, ptr %.sroa.6195.0..sroa_idx, align 8
  store ptr %i.eh, ptr %.sroa.8197.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9198.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.ha, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEKNS7_IS8_NS_5BlockIS8_Lin1ELi1ELb1EEELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NSt9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 16 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(81) %19, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef null)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.hb = add nuw nsw i32 %.0342, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hb, 390
  br i1 %exitcond.not, label %bb.ai, label %bb.az, !llvm.loop !47

20:                                               ; preds = %bb.az, %bb.bh
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.loopexit:                                        ; preds = %bb.ba, %bb.bd, %.noexc188, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc190
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.loopexit.split-lp:                               ; preds = %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body134

bb.bk:                                            ; preds = %bb.bg
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.hd) #16
  br label %.body134

bb.bl:                                            ; preds = %bb.bi
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %.body134

.body134:                                         ; preds = %.loopexit, %.loopexit.split-lp, %20, %bb.bf, %bb.bk, %bb.bl, %bb.ay
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.bf ], [ %i.ff, %bb.ay ], [ %21, %20 ], [ %i.he, %bb.bl ], [ %i.hc, %bb.bk ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.bm

bb.bm:                                            ; preds = %.body134, %bb.ax, %bb.aq, %bb.aj
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn, %.body134 ], [ %.pn41.pn.pn, %bb.ax ], [ %i.en, %bb.aj ], [ %.pn.pn.pn.pn, %bb.aq ]
  call void @free(ptr noundef %i.bu) #16
  br label %.body96

.body96:                                          ; preds = %bb.v, %bb.bm
  %.pn53.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn, %bb.bm ], [ %i.bx, %bb.v ]
  call void @free(ptr noundef %i.bq) #16
  br label %.body85

.body85:                                          ; preds = %bb.s, %.body96
  %.pn53.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn, %.body96 ], [ %i.bt, %bb.s ]
  call void @free(ptr noundef %i.at) #16
  br label %.body81

.body81:                                          ; preds = %bb.p, %.body85
  %.pn53.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn, %.body85 ], [ %i.aw, %bb.p ]
  call void @free(ptr noundef %i.w) #16
  br label %.body78

.body78:                                          ; preds = %bb.m, %.body81
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn, %.body81 ], [ %i.z, %bb.m ]
  %i.hf = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.hf) #16
  br label %.body75

.body75:                                          ; preds = %bb.j, %.body78
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn, %.body78 ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.hg = load ptr, ptr %2, align 8, !tbaa !18
  call void @free(ptr noundef %i.hg) #16
  br label %.body72

.body72:                                          ; preds = %bb.g, %.body75
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body75 ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @free(ptr noundef %i.e) #16
  br label %.body

.body:                                            ; preds = %bb.d, %.body72
  %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body72 ], [ %i.h, %bb.d ]
  call void @free(ptr noundef %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare i32 @tiny_setup(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tiny_set_bound_constraints(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @tiny_set_x0(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @tiny_solve(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.f) #16
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #17 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !22
  store i64 %3, ptr %i.c, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 7 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %i.c
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.g = mul nsw i64 %i.c, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.c, i64 noundef %i.c)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.e

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !27, !nonnull !28, !align !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 7 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.l = sdiv i64 9223372036854775807, %i.j
  %i.m = icmp sgt i64 %i.j, %i.l
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.c, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.o = mul nsw i64 %i.j, %i.j
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.j, i64 noundef %i.j)
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.e:                                             ; preds = %.invoke, %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  call void @free(ptr noundef %i.q) #16
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
