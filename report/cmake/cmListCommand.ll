Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmListCommand?download=true
inline.NumInlined: 2142
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.mp = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.gc

bb.aa:                                            ; preds = %.noexc.i361
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

.loopexit846:                                     ; preds = %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEclES7_S7_.exit.i.i.i
  %lpad.loopexit848 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp847:                            ; preds = %.invoke, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEclES7_S7_.exit.i.i
  %lpad.loopexit.split-lp849 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp847, %.loopexit846
  %lpad.phi850 = phi { ptr, i32 } [ %lpad.loopexit848, %.loopexit846 ], [ %lpad.loopexit.split-lp849, %.loopexit.split-lp847 ] ; 2 uses
  %i.ms = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.il
  br i1 %i.mt, label %_ZZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusEN16ActionDescriptorD2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415: ; preds = %bb.ab
  %i.mu = load i64, ptr %i.il, align 8, !tbaa !25
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #26
  br label %_ZZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusEN16ActionDescriptorD2Ev.exit417

_ZZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusEN16ActionDescriptorD2Ev.exit417: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415
  %i.mw = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.hy
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %_ZZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusEN16ActionDescriptorD2Ev.exit417
  %i.my = load i64, ptr %i.hy, align 8, !tbaa !25
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %_ZZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusEN16ActionDescriptorD2Ev.exit417, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %bb.aa
  %.pn226 = phi { ptr, i32 } [ %i.mr, %bb.aa ], [ %lpad.phi850, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %lpad.phi850, %_ZZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatusEN16ActionDescriptorD2Ev.exit417 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.gb

bb.ac:                                            ; preds = %bb.w
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

bb.ad:                                            ; preds = %bb.x
  %i.nb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nc = load ptr, ptr %21, align 8, !tbaa !24   ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.ad
  %i.nf = load i64, ptr %i.nd, align 8, !tbaa !25
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.ng) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.ac
  %.pn263 = phi { ptr, i32 } [ %i.na, %bb.ac ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %i.nb, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.gb

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %i.nh = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.ni = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = ashr exact i64 %i.nl, 5
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 68
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !281 ; 3 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = add nsw i64 %i.np, 3                    ; 3 uses
  %i.nr = icmp ult i64 %i.nm, %i.nq
  br i1 %i.nr, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !293
  store i64 30, ptr %4, align 8, !tbaa !22, !alias.scope !294, !noalias !293
  %.sroa.4.0..sroa_idx.i.i424 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.52, ptr %.sroa.4.0..sroa_idx.i.i424, align 8, !tbaa !47, !alias.scope !294, !noalias !293
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.nt, align 8, !tbaa !49, !alias.scope !294, !noalias !293
  %i.nu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.nv = load ptr, ptr %i.ns, align 8, !tbaa !24, !noalias !293
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !26, !noalias !293
  store i64 %i.nx, ptr %i.nu, align 8, !tbaa !22, !alias.scope !295, !noalias !293
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.nv, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !47, !alias.scope !295, !noalias !293
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.ny, align 8, !tbaa !49, !alias.scope !295, !noalias !293
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 9, ptr %i.nz, align 8, !tbaa !22, !alias.scope !296, !noalias !293
  %.sroa.4.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.53, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !47, !alias.scope !296, !noalias !293
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.oa, align 8, !tbaa !49, !alias.scope !296, !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !293
  invoke void @_ZN10cmAlphaNumC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.no)
          to label %.noexc425 unwind label %bb.ah

.noexc425:                                        ; preds = %bb.af
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.oc = load ptr, ptr %5, align 8, !tbaa !54, !noalias !298 ; 4 uses
  %.not.i.i21.i = icmp eq ptr %i.oc, null         ; 2 uses
  %.sroa.3.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pn.in.i.i24.i = select i1 %.not.i.i21.i, ptr %.sroa.3.0..sroa_idx.i.i22.i, ptr %i.oc
  %.pn.i.i25.i = load ptr, ptr %.pn.in.i.i24.i, align 8, !tbaa !47, !noalias !298
  %.pn3.i.i23.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i21.i, ptr %5, ptr %i.oc
  %.pn3.i.i23.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i23.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i27.i = load i64, ptr %.pn3.i.i23.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !22, !noalias !298
  store i64 %.pn2.i.i27.i, ptr %i.ob, align 8, !tbaa !22, !alias.scope !297, !noalias !293
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %.pn.i.i25.i, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !tbaa !47, !alias.scope !297, !noalias !293
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.oc, ptr %i.od, align 8, !tbaa !49, !alias.scope !297, !noalias !293
  %i.oe = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 13, ptr %i.oe, align 8, !tbaa !22, !alias.scope !299, !noalias !293
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr @.str.54, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !tbaa !47, !alias.scope !299, !noalias !293
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.of, align 8, !tbaa !49, !alias.scope !299, !noalias !293
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nonnull %4, i64 5)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc425
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !293
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.og, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit428 unwind label %bb.ai

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit428: ; preds = %bb.ag
  %i.oh = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit428
  %i.ok = load i64, ptr %i.oi, align 8, !tbaa !25
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ol) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.fy

bb.ah:                                            ; preds = %.noexc425, %bb.af
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

bb.ai:                                            ; preds = %bb.ag
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %bb.ai
  %i.or = load i64, ptr %i.op, align 8, !tbaa !25
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432, %bb.ah
  %.pn261 = phi { ptr, i32 } [ %i.om, %bb.ah ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432 ], [ %i.on, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.gb

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.ot = icmp sgt i32 %i.no, 0
  br i1 %i.ot, label %bb.ak, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %.idx = shl nuw nsw i64 %i.nq, 5                ; 2 uses
  %gepdiff = add nsw i64 %.idx, -96               ; 3 uses
  %56 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff) #28
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ak
  %57 = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.idx
  %58 = getelementptr inbounds nuw i8, ptr %i.ni, i64 96
  %i.ou = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr nonnull %58, ptr nonnull %57, ptr noundef nonnull %56)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEvEET_SE_RKS6_.exit unwind label %bb.al

.thread:                                          ; preds = %bb.ak
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body437

bb.al:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %56, i64 noundef %gepdiff) #26
  br label %.body437

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEvEET_SE_RKS6_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %56, i64 %gepdiff
  %i.ow = load ptr, ptr %23, align 8, !tbaa !17   ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !16 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !45
  store ptr %56, ptr %23, align 8, !tbaa !17
  store ptr %i.ou, ptr %i.ox, align 8, !tbaa !16
  store ptr %i.ov, ptr %i.oz, align 8, !tbaa !45
  %.not4.i.i.i.i.i = icmp eq ptr %i.ow, %i.oy
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i439

.lr.ph.i.i.i.i.i439:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEvEET_SE_RKS6_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.pg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ow, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEvEET_SE_RKS6_.exit ] ; 3 uses
  %i.pb = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i439
  %i.pe = load i64, ptr %i.pc, align 8, !tbaa !25
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pf) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i440 = icmp eq ptr %i.pg, %i.oy
  br i1 %.not.i.i.i.i.i440, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i439, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEvEET_SE_RKS6_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ph = ptrtoint ptr %i.pa to i64
  %i.pi = ptrtoint ptr %i.ow to i64
  %i.pj = sub i64 %i.ph, %i.pi
  call void @_ZdlPvm(ptr noundef nonnull %i.ow, i64 noundef %i.pj) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.am, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.pk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.pk, ptr %24, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.pk, ptr noundef nonnull align 1 dereferenceable(5) @.str.55, i64 5, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i64 5, ptr %i.pl, align 8, !tbaa !26
  %i.pm = getelementptr inbounds nuw i8, ptr %24, i64 21
  store i8 0, ptr %i.pm, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.pn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.pn, ptr %25, align 8, !tbaa !20
  store i16 21569, ptr %i.pn, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store i64 2, ptr %i.po, align 8, !tbaa !26
  %i.pp = getelementptr inbounds nuw i8, ptr %25, i64 18
  store i8 0, ptr %i.pp, align 2, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.pq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.pq, ptr %26, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.pq, ptr noundef nonnull align 1 dereferenceable(3) @.str.57, i64 3, i1 false)
  %i.pr = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  store i64 3, ptr %i.pr, align 8, !tbaa !26
  %i.ps = getelementptr inbounds nuw i8, ptr %26, i64 19
  store i8 0, ptr %i.ps, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.pt = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.pt, ptr %27, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.pt, ptr noundef nonnull align 1 dereferenceable(9) @.str.58, i64 9, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store i64 9, ptr %i.pu, align 8, !tbaa !26
  %i.pv = getelementptr inbounds nuw i8, ptr %27, i64 25
  store i8 0, ptr %i.pv, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.pw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.pw, ptr %28, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.pw, ptr noundef nonnull align 1 dereferenceable(15) @.str.59, i64 15, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 15, ptr %i.px, align 8, !tbaa !26
  %i.py = getelementptr inbounds nuw i8, ptr %28, i64 31
  store i8 0, ptr %i.py, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.pz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  store ptr %i.pz, ptr %29, align 8, !tbaa !20
  %i.qa = load ptr, ptr %i.hw, align 8, !tbaa !24 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store i64 %i.qc, ptr %i.i, align 8, !tbaa !22
  %i.qd = icmp ugt i64 %i.qc, 15
  br i1 %i.qd, label %.noexc.i465, label %._crit_edge.i.i464

.noexc.i465:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.qe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc466 unwind label %.thread837 ; 2 uses

.noexc466:                                        ; preds = %.noexc.i465
  store ptr %i.qe, ptr %29, align 8, !tbaa !24
  %i.qf = load i64, ptr %i.i, align 8, !tbaa !22
  store i64 %i.qf, ptr %i.pz, align 8, !tbaa !25
  br label %._crit_edge.i.i464

._crit_edge.i.i464:                               ; preds = %.noexc466, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.qg = phi ptr [ %i.qe, %.noexc466 ], [ %i.pz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  switch i64 %i.qc, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit467
  ]

bb.an:                                            ; preds = %._crit_edge.i.i464
  %i.qh = load i8, ptr %i.qa, align 1, !tbaa !25
  store i8 %i.qh, ptr %i.qg, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit467

bb.ao:                                            ; preds = %._crit_edge.i.i464
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qg, ptr align 1 %i.qa, i64 %i.qc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit467

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit467: ; preds = %._crit_edge.i.i464, %bb.an, %bb.ao
  %i.qi = load i64, ptr %i.i, align 8, !tbaa !22  ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.qi, ptr %i.qj, align 8, !tbaa !26
  %i.qk = load ptr, ptr %29, align 8, !tbaa !24
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qi
  store i8 0, ptr %i.ql, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %i.qm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.outer

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.outer: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.outer.backedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit467
  %.sroa.0741.0.ph = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit467 ], [ %.sroa.0741.0.ph.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.outer.backedge ] ; 42 uses
  %.0198.ph = phi i64 [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit467 ], [ %.0198.ph.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.outer.backedge ]
  %i.qt = icmp ne ptr %.sroa.0741.0.ph, null
  %.old.not = icmp eq ptr %.sroa.0741.0.ph, null  ; 6 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.outer, %bb.el
  %.0198 = phi i64 [ %i.agd, %bb.el ], [ %.0198.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.outer ] ; 13 uses
  %i.qu = load ptr, ptr %i.n, align 8, !tbaa !16  ; 2 uses
  %i.qv = load ptr, ptr %0, align 8, !tbaa !17    ; 7 uses
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = ashr exact i64 %i.qy, 5                 ; 6 uses
  %i.ra = icmp ugt i64 %i.qz, %.0198
  br i1 %i.ra, label %bb.ap, label %bb.es

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.rb = getelementptr inbounds nuw [32 x i8], ptr %i.qv, i64 %.0198 ; 11 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !26 ; 26 uses
  %i.re = load i64, ptr %i.pl, align 8, !tbaa !26
  %i.rf = icmp eq i64 %i.rd, %i.re                ; 2 uses
  br i1 %i.rf, label %bb.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread791

bb.aq:                                            ; preds = %bb.ap
  %i.rg = icmp eq i64 %i.rd, 0
  br i1 %i.rg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.aq
  %i.rh = load ptr, ptr %24, align 8, !tbaa !24
  %i.ri = load ptr, ptr %i.rb, align 8, !tbaa !24
  %bcmp.i = call i32 @bcmp(ptr %i.ri, ptr %i.rh, i64 %i.rd)
  %i.rj = icmp eq i32 %bcmp.i, 0
  br i1 %i.rj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread791

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread791: ; preds = %bb.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.rk = load i64, ptr %i.po, align 8, !tbaa !26
  %i.rl = icmp eq i64 %i.rd, %i.rk
  br i1 %i.rl, label %bb.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469.thread792

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread791
  %i.rm = icmp eq i64 %i.rd, 0
  br i1 %i.rm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469: ; preds = %bb.ar
  %i.rn = load ptr, ptr %25, align 8, !tbaa !24
  %i.ro = load ptr, ptr %i.rb, align 8, !tbaa !24
  %bcmp.i468 = call i32 @bcmp(ptr %i.ro, ptr %i.rn, i64 %i.rd)
  %i.rp = icmp eq i32 %bcmp.i468, 0
  br i1 %i.rp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469.thread792

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469.thread792: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread791, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469
  %i.rq = load i64, ptr %i.pr, align 8, !tbaa !26
  %i.rr = icmp eq i64 %i.rd, %i.rq
  br i1 %i.rr, label %bb.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit471.thread793

bb.as:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469.thread792
  %i.rs = icmp eq i64 %i.rd, 0
  br i1 %i.rs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit471

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit471: ; preds = %bb.as
  %i.rt = load ptr, ptr %26, align 8, !tbaa !24
  %i.ru = load ptr, ptr %i.rb, align 8, !tbaa !24
  %bcmp.i470 = call i32 @bcmp(ptr %i.ru, ptr %i.rt, i64 %i.rd)
  %i.rv = icmp eq i32 %bcmp.i470, 0
  br i1 %i.rv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit471.thread793

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit471.thread793: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit469.thread792, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit471
  %i.rw = load i64, ptr %i.pu, align 8, !tbaa !26
end_hunk_0
