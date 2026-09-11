Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_calib?download=true
inline.NumInlined: 964
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZL11StereoCalibRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEN2cv5Size_IiEES5_ffNSA_5aruco24PredefinedDictionaryTypeES5_bbb:bb.a
  store i32 -2096955355, ptr %41, align 8, !tbaa !164
  store ptr %i.ja, ptr %i.gs, align 8, !tbaa !165
  invoke void @_ZN2cv12cornerSubPixERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Size_IiEES7_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, i64 47244640267, i64 -1, i64 128849018883, double 1.000000e-02)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597.thread846

bb.ca:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597.thread
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit583: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit591
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597.thread846: ; preds = %bb.by, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597, %bb.bz
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br i1 %i.gy, label %bb.af, label %.loopexit879.thread, !llvm.loop !107

.body:                                            ; preds = %.loopexit880, %.loopexit.split-lp881, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i566, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bx, %bb.ca
  %.pn521.pn.pn.pn = phi { ptr, i32 } [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn518.pn, %bb.bx ], [ %i.iy, %bb.bd ], [ %i.ne, %bb.ca ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i566 ], [ %i.hz, %bb.at ], [ %lpad.loopexit882, %.loopexit880 ], [ %lpad.loopexit.split-lp883, %.loopexit.split-lp881 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #24
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.ak
  %.pn521.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn521.pn.pn.pn, %.body ], [ %i.hf, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.iv

.loopexit879:                                     ; preds = %bb.ah, %bb.bw, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit581
  %.sroa.0779.3.ph = phi i32 [ %.sroa.0779.2, %bb.bw ], [ %.sroa.0779.11033, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit581 ], [ %.sroa.0779.11033, %bb.ah ]
  %.sroa.16.3.ph = phi i32 [ %.sroa.16.2, %bb.bw ], [ %.sroa.16.11034, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit581 ], [ %.sroa.16.11034, %bb.ah ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.ck

.loopexit879.thread:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit597.thread846
  %i.nf = load ptr, ptr %0, align 8, !tbaa !57
  %i.ng = getelementptr inbounds nuw [32 x i8], ptr %i.nf, i64 %i.gw ; 3 uses
  %i.nh = load ptr, ptr %i.gu, align 8, !tbaa !30 ; 8 uses
  %i.ni = load ptr, ptr %i.gv, align 8, !tbaa !31
  %.not.i598 = icmp eq ptr %i.nh, %i.ni
  br i1 %.not.i598, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %.loopexit879.thread
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 3 uses
  store ptr %i.nj, ptr %i.nh, align 8, !tbaa !18
  %i.nk = load ptr, ptr %i.ng, align 8, !tbaa !24 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.nm, ptr %i.b, align 8, !tbaa !23
  %i.nn = icmp ugt i64 %i.nm, 15
  br i1 %i.nn, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.cc
  %i.no = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.nh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc599 unwind label %.loopexit885 ; 2 uses

.noexc599:                                        ; preds = %.noexc.i.i
  store ptr %i.no, ptr %i.nh, align 8, !tbaa !24
  %i.np = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.np, ptr %i.nj, align 8, !tbaa !22
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc599, %bb.cc
  %i.nq = phi ptr [ %i.no, %.noexc599 ], [ %i.nj, %bb.cc ] ; 2 uses
  switch i64 %i.nm, label %bb.ce [
    i64 1, label %bb.cd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.cd:                                            ; preds = %._crit_edge.i.i.i
  %i.nr = load i8, ptr %i.nk, align 1, !tbaa !22
  store i8 %i.nr, ptr %i.nq, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ce:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nq, ptr align 1 %i.nk, i64 %i.nm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ce, %bb.cd, %._crit_edge.i.i.i
  %i.ns = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !21
  %i.nu = load ptr, ptr %i.nh, align 8, !tbaa !24
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.ns
  store i8 0, ptr %i.nv, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.nw = load ptr, ptr %i.gu, align 8, !tbaa !30
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32 ; 2 uses
  store ptr %i.nx, ptr %i.gu, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.cf:                                            ; preds = %.loopexit879.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.nh, ptr noundef nonnull align 8 dereferenceable(32) %i.ng)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge unwind label %.loopexit885

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge: ; preds = %bb.cf
  %.pre1241 = load ptr, ptr %i.gu, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ny = phi ptr [ %.pre1241, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge ], [ %i.nx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 8 uses
  %i.nz = load ptr, ptr %0, align 8, !tbaa !57
  %i.oa = getelementptr inbounds nuw [32 x i8], ptr %i.nz, i64 %i.gw ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32 ; 2 uses
  %i.oc = load ptr, ptr %i.gv, align 8, !tbaa !31
  %.not.i601 = icmp eq ptr %i.ny, %i.oc
  br i1 %.not.i601, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 16 ; 3 uses
  store ptr %i.od, ptr %i.ny, align 8, !tbaa !18
  %i.oe = load ptr, ptr %i.ob, align 8, !tbaa !24 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 40
  %i.og = load i64, ptr %i.of, align 8, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.og, ptr %i.a, align 8, !tbaa !23
  %i.oh = icmp ugt i64 %i.og, 15
  br i1 %i.oh, label %.noexc.i.i604, label %._crit_edge.i.i.i602

.noexc.i.i604:                                    ; preds = %bb.cg
  %i.oi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc605 unwind label %.loopexit885 ; 2 uses

.noexc605:                                        ; preds = %.noexc.i.i604
  store ptr %i.oi, ptr %i.ny, align 8, !tbaa !24
  %i.oj = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.oj, ptr %i.od, align 8, !tbaa !22
  br label %._crit_edge.i.i.i602

._crit_edge.i.i.i602:                             ; preds = %.noexc605, %bb.cg
  %i.ok = phi ptr [ %i.oi, %.noexc605 ], [ %i.od, %bb.cg ] ; 2 uses
  switch i64 %i.og, label %bb.ci [
    i64 1, label %bb.ch
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i603
  ]

bb.ch:                                            ; preds = %._crit_edge.i.i.i602
  %i.ol = load i8, ptr %i.oe, align 1, !tbaa !22
  store i8 %i.ol, ptr %i.ok, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i603

bb.ci:                                            ; preds = %._crit_edge.i.i.i602
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ok, ptr align 1 %i.oe, i64 %i.og, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i603: ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i.i602
  %i.om = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store i64 %i.om, ptr %i.on, align 8, !tbaa !21
  %i.oo = load ptr, ptr %i.ny, align 8, !tbaa !24
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.om
  store i8 0, ptr %i.op, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.oq = load ptr, ptr %i.gu, align 8, !tbaa !30
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  store ptr %i.or, ptr %i.gu, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit607

bb.cj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.ny, ptr noundef nonnull align 8 dereferenceable(32) %i.ob)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit607 unwind label %.loopexit885

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit607: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i603, %bb.cj
  %i.os = add nsw i32 %.03481038, 1
  br label %bb.ck

.loopexit885:                                     ; preds = %.noexc.i.i, %bb.cf, %.noexc.i.i604, %bb.cj
  %lpad.loopexit887 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

.loopexit.split-lp886:                            ; preds = %._crit_edge, %bb.cn, %bb.co, %bb.cp, %bb.cl, %bb.cm, %._crit_edge1047.split
  %lpad.loopexit.split-lp888 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.ck:                                            ; preds = %.loopexit879, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit607
  %.sroa.16.41356 = phi i32 [ %.sroa.16.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit607 ], [ %.sroa.16.3.ph, %.loopexit879 ] ; 2 uses
  %.sroa.0779.41354 = phi i32 [ %.sroa.0779.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit607 ], [ %.sroa.0779.3.ph, %.loopexit879 ] ; 2 uses
  %.1349 = phi i32 [ %i.os, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit607 ], [ %.03481038, %.loopexit879 ] ; 2 uses
  %indvars.iv.next1198 = add nuw nsw i64 %indvars.iv1197, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1198, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader878, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.ck, %bb.ae
  %.sroa.0779.0.lcssa = phi i32 [ 0, %bb.ae ], [ %.sroa.0779.41354, %bb.ck ] ; 3 uses
  %.sroa.16.0.lcssa = phi i32 [ 0, %bb.ae ], [ %.sroa.16.41356, %bb.ck ] ; 3 uses
  %.0348.lcssa = phi i32 [ 0, %bb.ae ], [ %.1349, %bb.ck ] ; 5 uses
  %i.ot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0348.lcssa)
          to label %bb.cl unwind label %.loopexit.split-lp886

bb.cl:                                            ; preds = %._crit_edge
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, ptr noundef nonnull @.str.59, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609 unwind label %.loopexit.split-lp886 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609: ; preds = %bb.cl
  %i.ov = icmp slt i32 %.0348.lcssa, 2
  br i1 %i.ov, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609
  %i.ow = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.60, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit611 unwind label %.loopexit.split-lp886 ; 0 uses

bb.cn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit609
  %i.ox = zext nneg i32 %.0348.lcssa to i64       ; 4 uses
  invoke void @_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %i.ox)
          to label %bb.co unwind label %.loopexit.split-lp886

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %i.ox)
          to label %bb.cp unwind label %.loopexit.split-lp886

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZNSt6vectorIS_IN2cv7Point3_IfEESaIS2_EESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.ox)
          to label %.preheader871.lr.ph unwind label %.loopexit.split-lp886

.preheader871.lr.ph:                              ; preds = %bb.cp
  %i.oy = icmp slt i32 %.sroa.9.0, 1
  %i.oz = icmp slt i32 %.sroa.0776.0, 1
  %brmerge = select i1 %i.oy, i1 true, i1 %i.oz
  br i1 %brmerge, label %._crit_edge1047.split, label %.preheader871

.preheader871:                                    ; preds = %.preheader871.lr.ph, %._crit_edge1045
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %._crit_edge1045 ], [ 0, %.preheader871.lr.ph ] ; 2 uses
  br label %.preheader865

.preheader865:                                    ; preds = %.preheader871, %._crit_edge1043
  %.23501044 = phi i32 [ 0, %.preheader871 ], [ %i.qg, %._crit_edge1043 ] ; 2 uses
  %i.pa = uitofp nneg i32 %.23501044 to float
  %i.pb = fmul float %3, %i.pa                    ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader865, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backEOS2_.exit
  %.13551042 = phi i32 [ 0, %.preheader865 ], [ %i.qf, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.pc = load ptr, ptr %16, align 8, !tbaa !70
  %i.pd = getelementptr inbounds nuw [24 x i8], ptr %i.pc, i64 %indvars.iv1202 ; 4 uses
  %i.pe = uitofp nneg i32 %.13551042 to float
  %i.pf = fmul float %3, %i.pe                    ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 3 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !178 ; 8 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 16 ; 3 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !73
  %.not.i.i612 = icmp eq ptr %i.ph, %i.pj
  br i1 %.not.i.i612, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store float %i.pf, ptr %i.ph, align 4, !tbaa !27
  %.sroa.6752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store float %i.pb, ptr %.sroa.6752.0..sroa_idx, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !27
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store ptr %i.pk, ptr %i.pg, align 8, !tbaa !178
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backEOS2_.exit

bb.cs:                                            ; preds = %bb.cq
  %i.pl = load ptr, ptr %i.pd, align 8, !tbaa !74 ; 5 uses
  %i.pm = ptrtoint ptr %i.ph to i64
  %i.pn = ptrtoint ptr %i.pl to i64               ; 2 uses
  %i.po = sub i64 %i.pm, %i.pn                    ; 3 uses
  %i.pp = icmp eq i64 %i.po, 9223372036854775800
  br i1 %i.pp, label %bb.ct, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #26
          to label %.noexc614 unwind label %.loopexit.split-lp867

.noexc614:                                        ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cs
  %i.pq = sdiv exact i64 %i.po, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pq, i64 1)
  %i.pr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pq ; 2 uses
  %i.ps = icmp ult i64 %i.pr, %i.pq
  %i.pt = call i64 @llvm.umin.i64(i64 %i.pr, i64 768614336404564650)
  %i.pu = select i1 %i.ps, i64 768614336404564650, i64 %i.pt ; 3 uses
  %.not.i.i.i.i613 = icmp ne i64 %i.pu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i613)
  %i.pv = mul nuw nsw i64 %i.pu, 12
  %i.pw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pv) #27
          to label %.noexc615 unwind label %.loopexit866 ; 5 uses

.noexc615:                                        ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.po ; 3 uses
  store float %i.pf, ptr %i.px, align 4, !tbaa !27
  %.sroa.6752.0..sroa_idx753 = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  store float %i.pb, ptr %.sroa.6752.0..sroa_idx753, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx755 = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx755, align 4, !tbaa !27
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.pl, %i.ph
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc615, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.pz, %.lr.ph.i.i.i.i.i.i ], [ %i.pw, %.noexc615 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i.i ], [ %i.pl, %.noexc615 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !179, !alias.scope !180
  %i.py = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.py, %i.ph
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !112

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc615
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.pw, %.noexc615 ], [ %i.pz, %.lr.ph.i.i.i.i.i.i ]
  %i.qa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %i.pl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.qb = load ptr, ptr %i.pi, align 8, !tbaa !73
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = sub i64 %i.qc, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.qd) #25
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.cu, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.pw, ptr %i.pd, align 8, !tbaa !74
  store ptr %i.qa, ptr %i.pg, align 8, !tbaa !178
  %i.qe = getelementptr inbounds nuw [12 x i8], ptr %i.pw, i64 %i.pu
  store ptr %i.qe, ptr %i.pi, align 8, !tbaa !73
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.cr
  %i.qf = add nuw nsw i32 %.13551042, 1           ; 2 uses
  %exitcond1200.not = icmp eq i32 %i.qf, %.sroa.0776.0
  br i1 %exitcond1200.not, label %._crit_edge1043, label %bb.cq, !llvm.loop !113

.loopexit866:                                     ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit868 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

.loopexit.split-lp867:                            ; preds = %bb.ct
  %lpad.loopexit.split-lp869 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

._crit_edge1043:                                  ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE9push_backEOS2_.exit
  %i.qg = add nuw nsw i32 %.23501044, 1           ; 2 uses
  %exitcond1201.not = icmp eq i32 %i.qg, %.sroa.9.0
  br i1 %exitcond1201.not, label %._crit_edge1045, label %.preheader865, !llvm.loop !114

._crit_edge1045:                                  ; preds = %._crit_edge1043
  %indvars.iv.next1203 = add nuw nsw i64 %indvars.iv1202, 1 ; 2 uses
  %exitcond1206.not = icmp eq i64 %indvars.iv.next1203, %i.ox
  br i1 %exitcond1206.not, label %._crit_edge1047.split, label %.preheader871, !llvm.loop !115

._crit_edge1047.split:                            ; preds = %._crit_edge1045, %.preheader871.lr.ph
  %i.qh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.61, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617 unwind label %.loopexit.split-lp886 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617: ; preds = %._crit_edge1047.split
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %42) #24
  %.ptr386.1 = getelementptr inbounds nuw i8, ptr %42, i64 208 ; 8 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr386.1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %43) #24
  %.ptr390.1 = getelementptr inbounds nuw i8, ptr %43, i64 208 ; 6 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr390.1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.qi = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 0, ptr %i.qi, align 8, !tbaa !126
  %i.qj = getelementptr inbounds nuw i8, ptr %45, i64 20
  store i32 0, ptr %i.qj, align 4, !tbaa !127
  store i32 -2130444219, ptr %45, align 8, !tbaa !164
  %i.qk = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %16, ptr %i.qk, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.ql = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i32 0, ptr %i.ql, align 8, !tbaa !126
  %i.qm = getelementptr inbounds nuw i8, ptr %46, i64 20
  store i32 0, ptr %i.qm, align 4, !tbaa !127
  store i32 -2130444251, ptr %46, align 8, !tbaa !164
  %i.qn = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %15, ptr %i.qn, align 8, !tbaa !165
  %.sroa.16.0.insert.ext819 = zext i32 %.sroa.16.0.lcssa to i64
  %.sroa.16.0.insert.shift820 = shl nuw i64 %.sroa.16.0.insert.ext819, 32
  %.sroa.0779.0.insert.ext796 = zext i32 %.sroa.0779.0.lcssa to i64
  %.sroa.0779.0.insert.insert798 = or disjoint i64 %.sroa.16.0.insert.shift820, %.sroa.0779.0.insert.ext796 ; 7 uses
  invoke void @_ZN2cv18initCameraMatrix2DERKNS_11_InputArrayES2_NS_5Size_IiEEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 %.sroa.0779.0.insert.insert798, double noundef 0.000000e+00)
          to label %bb.cv unwind label %bb.dg

bb.cv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617
  %i.qo = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %44)
          to label %bb.cw unwind label %bb.dh     ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  %i.qp = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.qp, align 8, !tbaa !126
  %i.qq = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.qq, align 4, !tbaa !127
  store i32 -2130444219, ptr %48, align 8, !tbaa !164
  %i.qr = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %16, ptr %i.qr, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #24
  %i.qs = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i32 0, ptr %i.qs, align 8, !tbaa !126
  %i.qt = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i32 0, ptr %i.qt, align 4, !tbaa !127
  store i32 -2130444251, ptr %49, align 8, !tbaa !164
  %i.qu = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %i.w, ptr %i.qu, align 8, !tbaa !165
  invoke void @_ZN2cv18initCameraMatrix2DERKNS_11_InputArrayES2_NS_5Size_IiEEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %47, ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %49, i64 %.sroa.0779.0.insert.insert798, double noundef 0.000000e+00)
          to label %bb.cx unwind label %bb.dj

bb.cx:                                            ; preds = %bb.cw
  %i.qv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.ptr386.1, ptr noundef nonnull align 8 dereferenceable(208) %47)
          to label %bb.cy unwind label %bb.dk     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %50) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %51) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %52) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %53) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  %i.qw = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 0, ptr %i.qw, align 8, !tbaa !126
  %i.qx = getelementptr inbounds nuw i8, ptr %54, i64 20
  store i32 0, ptr %i.qx, align 4, !tbaa !127
  store i32 -2130444219, ptr %54, align 8, !tbaa !164
  %i.qy = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %16, ptr %i.qy, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  %i.qz = getelementptr inbounds nuw i8, ptr %55, i64 16
  store i32 0, ptr %i.qz, align 8, !tbaa !126
  %i.ra = getelementptr inbounds nuw i8, ptr %55, i64 20
  store i32 0, ptr %i.ra, align 4, !tbaa !127
  store i32 -2130444251, ptr %55, align 8, !tbaa !164
  %i.rb = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %15, ptr %i.rb, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  %i.rc = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i32 0, ptr %i.rc, align 8, !tbaa !126
  %i.rd = getelementptr inbounds nuw i8, ptr %56, i64 20
  store i32 0, ptr %i.rd, align 4, !tbaa !127
  store i32 -2130444251, ptr %56, align 8, !tbaa !164
  %i.re = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %i.w, ptr %i.re, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24
  %i.rf = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i64 0, ptr %i.rg, align 8
  store i32 50397184, ptr %57, align 8, !tbaa !164
  store ptr %42, ptr %i.rf, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  %i.rh = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ri = getelementptr inbounds nuw i8, ptr %58, i64 16
  store i64 0, ptr %i.ri, align 8
  store i32 50397184, ptr %58, align 8, !tbaa !164
  store ptr %43, ptr %i.rh, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  %i.rj = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.rk = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i64 0, ptr %i.rk, align 8
  store i32 50397184, ptr %59, align 8, !tbaa !164
  store ptr %.ptr386.1, ptr %i.rj, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  %i.rl = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %60, i64 16
  store i64 0, ptr %i.rm, align 8
  store i32 50397184, ptr %60, align 8, !tbaa !164
  store ptr %.ptr390.1, ptr %i.rl, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #24
  %i.rn = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i64 0, ptr %i.ro, align 8
  store i32 33619968, ptr %61, align 8, !tbaa !164
  store ptr %50, ptr %i.rn, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  %i.rp = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.rq = getelementptr inbounds nuw i8, ptr %62, i64 16
  store i64 0, ptr %i.rq, align 8
  store i32 33619968, ptr %62, align 8, !tbaa !164
  store ptr %51, ptr %i.rp, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %i.rr = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %63, i64 16
  store i64 0, ptr %i.rs, align 8
  store i32 33619968, ptr %63, align 8, !tbaa !164
  store ptr %52, ptr %i.rr, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #24
  %i.rt = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 0, ptr %i.ru, align 8
  store i32 33619968, ptr %64, align 8, !tbaa !164
  store ptr %53, ptr %i.rt, align 8, !tbaa !165
  store i32 3, ptr %65, align 8, !tbaa !182
  %i.rv = getelementptr inbounds nuw i8, ptr %65, i64 4
  store i32 100, ptr %i.rv, align 4, !tbaa !183
  %i.rw = getelementptr inbounds nuw i8, ptr %65, i64 8
  store double 1.000000e-05, ptr %i.rw, align 8, !tbaa !184
  %i.rx = invoke noundef double @_ZN2cv15stereoCalibrateERKNS_11_InputArrayES2_S2_RKNS_17_InputOutputArrayES5_S5_S5_NS_5Size_IiEERKNS_12_OutputArrayESA_SA_SA_iNS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %60, i64 %.sroa.0779.0.insert.insert798, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %64, i32 noundef 23179, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %65)
          to label %bb.cz unwind label %bb.dm

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  %i.ry = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.62, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619 unwind label %bb.dn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619: ; preds = %bb.cz
  %i.rz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.rx)
          to label %_ZNSolsEd.exit unwind label %bb.dn

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619
  %i.sa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.rz)
          to label %.lr.ph1057 unwind label %bb.dn, !inline_history !116 ; 0 uses

.lr.ph1057:                                       ; preds = %_ZNSolsEd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %66, i8 0, i64 48, i1 false)
  %i.sb = getelementptr inbounds nuw i8, ptr %68, i64 4 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %68, i64 12 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %68, i64 32 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %68, i64 40 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %68, i64 48 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %68, i64 72 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %68, i64 128 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %68, i64 136 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %68, i64 84 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %69, i64 20 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %71, i64 20 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %72, i64 20 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %73, i64 20 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %75, i64 20 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %76, i64 4 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %77, i64 20 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %78, i64 20 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %66, i64 24 ; 2 uses
  %wide.trip.count1218 = zext nneg i32 %.0348.lcssa to i64
  %.ptr489.1 = getelementptr inbounds nuw i8, ptr %67, i64 208 ; 5 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %67, i64 208
  br label %.preheader863.preheader

.preheader863.preheader:                          ; preds = %.lr.ph1057, %._crit_edge1052
  %indvars.iv1215 = phi i64 [ 0, %.lr.ph1057 ], [ %indvars.iv.next1216, %._crit_edge1052 ] ; 6 uses
  %.03691055 = phi i32 [ 0, %.lr.ph1057 ], [ %i.xc, %._crit_edge1052 ]
  %.03701054 = phi double [ 0.000000e+00, %.lr.ph1057 ], [ %.1371.lcssa, %._crit_edge1052 ] ; 2 uses
  %i.tq = load ptr, ptr %15, align 16, !tbaa !60
  %i.tr = getelementptr inbounds nuw [24 x i8], ptr %i.tq, i64 %indvars.iv1215 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !166
  %i.tu = load ptr, ptr %i.tr, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %67) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr489.1) #24
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = lshr i64 %i.tx, 3                       ; 2 uses
  %i.tz = trunc i64 %i.ty to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  %i.ua = load ptr, ptr %15, align 16, !tbaa !60
  %i.ub = getelementptr inbounds nuw [24 x i8], ptr %i.ua, i64 %indvars.iv1215 ; 3 uses
  store i32 1124024357, ptr %68, align 8, !tbaa !167
  store i32 1, ptr %i.sb, align 4, !tbaa !168
  store i32 1, ptr %i.sc, align 8, !tbaa !169
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !166
  %i.ue = load ptr, ptr %i.ub, align 8, !tbaa !67
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %i.ui = lshr exact i64 %i.uh, 3
  %i.uj = trunc i64 %i.ui to i32
  store i32 %i.uj, ptr %i.sd, align 4, !tbaa !170
  store i32 153, ptr %i.se, align 8, !tbaa !171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sf, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.sj, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc622 unwind label %bb.do

.lr.ph:                                           ; preds = %.preheader862
  %i.uk = load ptr, ptr %15, align 16, !tbaa !60
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %i.uk, i64 %indvars.iv1215
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !67
  %i.un = load ptr, ptr %i.to, align 8, !tbaa !187
  %i.uo = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.up = getelementptr inbounds nuw [24 x i8], ptr %i.uo, i64 %indvars.iv1215
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !67
  %i.ur = load ptr, ptr %66, align 16, !tbaa !187
  %wide.trip.count1213 = and i64 %i.ty, 2147483647
  br label %bb.dt

.noexc622:                                        ; preds = %.preheader863.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.sl, i8 0, i64 72, i1 false), !tbaa !23
  %i.us = load i32, ptr %i.sd, align 4, !tbaa !170 ; 2 uses
  store i32 %i.us, ptr %i.sm, align 4, !tbaa !25
  store i64 8, ptr %i.sk, align 8, !tbaa !23
  %i.ut = load ptr, ptr %i.ub, align 8, !tbaa !64 ; 4 uses
  %i.uu = load ptr, ptr %i.uc, align 8, !tbaa !64
  %i.uv = icmp eq ptr %i.ut, %i.uu
  br i1 %i.uv, label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623, label %bb.da

bb.da:                                            ; preds = %.noexc622
  store ptr %i.ut, ptr %i.sf, align 8, !tbaa !172
  store ptr %i.ut, ptr %i.sg, align 8, !tbaa !173
  %i.uw = sext i32 %i.us to i64
  %i.ux = shl nsw i64 %i.uw, 3
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.ux ; 2 uses
  store ptr %i.uy, ptr %i.sh, align 8, !tbaa !174
  store ptr %i.uy, ptr %i.si, align 8, !tbaa !175
  br label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623

_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623: ; preds = %bb.da, %.noexc622
  %i.uz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %67, ptr noundef nonnull align 8 dereferenceable(208) %68)
          to label %bb.db unwind label %bb.dp     ; 0 uses

bb.db:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #24
  store i32 0, ptr %i.sn, align 8, !tbaa !126
  store i32 0, ptr %i.so, align 4, !tbaa !127
  store i32 16842752, ptr %69, align 8, !tbaa !164
  store ptr %67, ptr %i.sp, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  store i64 0, ptr %i.sr, align 8
  store i32 33619968, ptr %70, align 8, !tbaa !164
  store ptr %67, ptr %i.sq, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24
  store i32 0, ptr %i.ss, align 8, !tbaa !126
  store i32 0, ptr %i.st, align 4, !tbaa !127
  store i32 16842752, ptr %71, align 8, !tbaa !164
  store ptr %42, ptr %i.su, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  store i32 0, ptr %i.sv, align 8, !tbaa !126
  store i32 0, ptr %i.sw, align 4, !tbaa !127
  store i32 16842752, ptr %72, align 8, !tbaa !164
  store ptr %43, ptr %i.sx, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %74) #24
  store i32 0, ptr %i.sy, align 8, !tbaa !126
  store i32 0, ptr %i.sz, align 4, !tbaa !127
  store i32 16842752, ptr %73, align 8, !tbaa !164
  store ptr %74, ptr %i.ta, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #24
  store i32 0, ptr %i.tb, align 8, !tbaa !126
  store i32 0, ptr %i.tc, align 4, !tbaa !127
  store i32 16842752, ptr %75, align 8, !tbaa !164
  store ptr %42, ptr %i.td, align 8, !tbaa !165
  store i32 1, ptr %76, align 8, !tbaa !182
  store i32 5, ptr %i.te, align 4, !tbaa !183
  store double 1.000000e-02, ptr %i.tf, align 8, !tbaa !184
  invoke void @_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %76)
          to label %bb.dc unwind label %bb.dr

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #24
  store i32 0, ptr %i.tg, align 8, !tbaa !126
  store i32 0, ptr %i.th, align 4, !tbaa !127
  store i32 16842752, ptr %77, align 8, !tbaa !164
  store ptr %67, ptr %i.ti, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #24
  store i32 0, ptr %i.tj, align 8, !tbaa !126
  store i32 0, ptr %i.tk, align 4, !tbaa !127
  store i32 16842752, ptr %78, align 8, !tbaa !164
  store ptr %53, ptr %i.tl, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #24
  store i64 0, ptr %i.tn, align 8
  store i32 -2113732539, ptr %79, align 8, !tbaa !164
  store ptr %66, ptr %i.tm, align 8, !tbaa !165
  invoke void @_ZN2cv25computeCorrespondEpilinesERKNS_11_InputArrayEiS2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %77, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %79)
          to label %.preheader863.1 unwind label %bb.ds

.preheader863.1:                                  ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  %i.va = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.va, i64 %indvars.iv1215 ; 3 uses
  store i32 1124024357, ptr %68, align 8, !tbaa !167
  store i32 1, ptr %i.sb, align 4, !tbaa !168
  store i32 1, ptr %i.sc, align 8, !tbaa !169
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !166
  %i.ve = load ptr, ptr %i.vb, align 8, !tbaa !67
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = lshr exact i64 %i.vh, 3
  %i.vj = trunc i64 %i.vi to i32
  store i32 %i.vj, ptr %i.sd, align 4, !tbaa !170
  store i32 153, ptr %i.se, align 8, !tbaa !171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sf, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.sj, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc622.1 unwind label %bb.do

.noexc622.1:                                      ; preds = %.preheader863.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.sl, i8 0, i64 72, i1 false), !tbaa !23
  %i.vk = load i32, ptr %i.sd, align 4, !tbaa !170 ; 2 uses
  store i32 %i.vk, ptr %i.sm, align 4, !tbaa !25
  store i64 8, ptr %i.sk, align 8, !tbaa !23
  %i.vl = load ptr, ptr %i.vb, align 8, !tbaa !64 ; 4 uses
  %i.vm = load ptr, ptr %i.vc, align 8, !tbaa !64
  %i.vn = icmp eq ptr %i.vl, %i.vm
  br i1 %i.vn, label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623.1, label %bb.dd

bb.dd:                                            ; preds = %.noexc622.1
  store ptr %i.vl, ptr %i.sf, align 8, !tbaa !172
  store ptr %i.vl, ptr %i.sg, align 8, !tbaa !173
  %i.vo = sext i32 %i.vk to i64
  %i.vp = shl nsw i64 %i.vo, 3
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vp ; 2 uses
  store ptr %i.vq, ptr %i.sh, align 8, !tbaa !174
  store ptr %i.vq, ptr %i.si, align 8, !tbaa !175
  br label %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623.1

_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623.1: ; preds = %bb.dd, %.noexc622.1
  %i.vr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.ptr489.1, ptr noundef nonnull align 8 dereferenceable(208) %68)
          to label %bb.de unwind label %bb.dp     ; 0 uses

bb.de:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623.1
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #24
  store i32 0, ptr %i.sn, align 8, !tbaa !126
  store i32 0, ptr %i.so, align 4, !tbaa !127
  store i32 16842752, ptr %69, align 8, !tbaa !164
  store ptr %.ptr489.1, ptr %i.sp, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  store i64 0, ptr %i.sr, align 8
  store i32 33619968, ptr %70, align 8, !tbaa !164
  store ptr %.ptr489.1, ptr %i.sq, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24
  store i32 0, ptr %i.ss, align 8, !tbaa !126
  store i32 0, ptr %i.st, align 4, !tbaa !127
  store i32 16842752, ptr %71, align 8, !tbaa !164
  store ptr %.ptr386.1, ptr %i.su, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  store i32 0, ptr %i.sv, align 8, !tbaa !126
  store i32 0, ptr %i.sw, align 4, !tbaa !127
  store i32 16842752, ptr %72, align 8, !tbaa !164
  store ptr %.ptr390.1, ptr %i.sx, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %74) #24
  store i32 0, ptr %i.sy, align 8, !tbaa !126
  store i32 0, ptr %i.sz, align 4, !tbaa !127
  store i32 16842752, ptr %73, align 8, !tbaa !164
  store ptr %74, ptr %i.ta, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #24
  store i32 0, ptr %i.tb, align 8, !tbaa !126
  store i32 0, ptr %i.tc, align 4, !tbaa !127
  store i32 16842752, ptr %75, align 8, !tbaa !164
  store ptr %.ptr386.1, ptr %i.td, align 8, !tbaa !165
  store i32 1, ptr %76, align 8, !tbaa !182
  store i32 5, ptr %i.te, align 4, !tbaa !183
  store double 1.000000e-02, ptr %i.tf, align 8, !tbaa !184
  invoke void @_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %76)
          to label %bb.df unwind label %bb.dr

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #24
  store i32 0, ptr %i.tg, align 8, !tbaa !126
  store i32 0, ptr %i.th, align 4, !tbaa !127
  store i32 16842752, ptr %77, align 8, !tbaa !164
  store ptr %.ptr489.1, ptr %i.ti, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #24
  store i32 0, ptr %i.tj, align 8, !tbaa !126
  store i32 0, ptr %i.tk, align 4, !tbaa !127
  store i32 16842752, ptr %78, align 8, !tbaa !164
  store ptr %53, ptr %i.tl, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #24
  store i64 0, ptr %i.tn, align 8
  store i32 -2113732539, ptr %79, align 8, !tbaa !164
  store ptr %i.to, ptr %i.tm, align 8, !tbaa !165
  invoke void @_ZN2cv25computeCorrespondEpilinesERKNS_11_InputArrayEiS2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %77, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %79)
          to label %.preheader862 unwind label %bb.ds

.preheader862:                                    ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24
  %i.vs = icmp sgt i32 %i.tz, 0
  br i1 %i.vs, label %.lr.ph, label %._crit_edge1052

bb.dg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.cv
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #24
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %.pn392.pn = phi { ptr, i32 } [ %i.vt, %bb.dg ], [ %i.vu, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %bb.iu

bb.dj:                                            ; preds = %bb.cw
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.cx
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #24
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %.pn396.pn = phi { ptr, i32 } [ %i.vv, %bb.dj ], [ %i.vw, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  br label %bb.iu

bb.dm:                                            ; preds = %bb.cy
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %bb.it

bb.dn:                                            ; preds = %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit619, %bb.cz
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.do:                                            ; preds = %.preheader863.1, %.preheader863.preheader
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623.1, %_ZN2cv3MatC2INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEb.exit623
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #24
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn491 = phi { ptr, i32 } [ %i.wa, %bb.dp ], [ %i.vz, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %bb.du

bb.dr:                                            ; preds = %bb.de, %bb.db
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  br label %bb.du

bb.ds:                                            ; preds = %bb.df, %bb.dc
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24
  br label %bb.du

bb.dt:                                            ; preds = %.lr.ph, %bb.dt
  %indvars.iv1210 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1211, %bb.dt ] ; 5 uses
  %.13711050 = phi double [ %.03701054, %.lr.ph ], [ %i.xb, %bb.dt ]
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv1210
  %i.we = getelementptr inbounds nuw [12 x i8], ptr %i.un, i64 %indvars.iv1210 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !27
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %indvars.iv1210
  %i.wi = getelementptr inbounds nuw [12 x i8], ptr %i.ur, i64 %indvars.iv1210 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !27
  %i.wl = load <2 x float>, ptr %i.wd, align 4, !tbaa !27 ; 2 uses
  %i.wm = load <2 x float>, ptr %i.we, align 4, !tbaa !27 ; 2 uses
  %i.wn = load <2 x float>, ptr %i.wh, align 4, !tbaa !27 ; 2 uses
  %i.wo = load <2 x float>, ptr %i.wi, align 4, !tbaa !27 ; 2 uses
  %i.wp = shufflevector <2 x float> %i.wl, <2 x float> %i.wn, <2 x i32> <i32 1, i32 3>
  %i.wq = shufflevector <2 x float> %i.wm, <2 x float> %i.wo, <2 x i32> <i32 1, i32 3>
  %i.wr = fmul <2 x float> %i.wp, %i.wq
  %i.ws = shufflevector <2 x float> %i.wl, <2 x float> %i.wn, <2 x i32> <i32 0, i32 2>
  %i.wt = shufflevector <2 x float> %i.wm, <2 x float> %i.wo, <2 x i32> <i32 0, i32 2>
  %i.wu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ws, <2 x float> %i.wt, <2 x float> %i.wr)
  %i.wv = insertelement <2 x float> poison, float %i.wg, i64 0
  %i.ww = insertelement <2 x float> %i.wv, float %i.wk, i64 1
  %i.wx = fadd <2 x float> %i.ww, %i.wu
  %i.wy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wx) ; 2 uses
  %shift = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.wy, %shift
  %i.wz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.xa = fpext float %i.wz to double
  %i.xb = fadd double %.13711050, %i.xa           ; 2 uses
  %indvars.iv.next1211 = add nuw nsw i64 %indvars.iv1210, 1 ; 2 uses
  %exitcond1214.not = icmp eq i64 %indvars.iv.next1211, %wide.trip.count1213
  br i1 %exitcond1214.not, label %._crit_edge1052, label %bb.dt, !llvm.loop !117

._crit_edge1052:                                  ; preds = %bb.dt, %.preheader862
  %.1371.lcssa = phi double [ %.03701054, %.preheader862 ], [ %i.xb, %bb.dt ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.tp) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #24
  %i.xc = add nsw i32 %.03691055, %i.tz           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %indvars.iv.next1216 = add nuw nsw i64 %indvars.iv1215, 1 ; 2 uses
  %exitcond1219.not = icmp eq i64 %indvars.iv.next1216, %wide.trip.count1218
  br i1 %exitcond1219.not, label %._crit_edge1058, label %.preheader863.preheader, !llvm.loop !118

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %.pn500.pn.pn.pn = phi { ptr, i32 } [ %i.wc, %bb.ds ], [ %i.wb, %bb.dr ], [ %.pn491, %bb.dq ]
  %i.xd = getelementptr inbounds nuw i8, ptr %67, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.xd) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  br label %bb.iq

._crit_edge1058:                                  ; preds = %._crit_edge1052
  %i.xe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.63, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625 unwind label %bb.eh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625: ; preds = %._crit_edge1058
  %i.xf = sitofp i32 %i.xc to double
  %i.xg = fdiv double %.1371.lcssa, %i.xf
  %i.xh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.xg)
          to label %_ZNSolsEd.exit627 unwind label %bb.eh

_ZNSolsEd.exit627:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625
  %i.xi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.xh)
          to label %_ZNSolsEPFRSoS_E.exit629 unwind label %bb.eh, !inline_history !116 ; 0 uses

_ZNSolsEPFRSoS_E.exit629:                         ; preds = %_ZNSolsEd.exit627
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @.str.64, ptr noundef nonnull align 1 dereferenceable(1) %82)
          to label %bb.dv unwind label %bb.ei

bb.dv:                                            ; preds = %_ZNSolsEPFRSoS_E.exit629
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #24
  %i.xj = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 6 uses
  store ptr %i.xj, ptr %83, align 8, !tbaa !18
  %i.xk = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 0, ptr %i.xk, align 8, !tbaa !21
  store i8 0, ptr %i.xj, align 8, !tbaa !22
  invoke void @_ZN2cv11FileStorageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_(ptr noundef nonnull align 8 dereferenceable(64) %80, ptr noundef nonnull align 8 dereferenceable(32) %81, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %bb.dw unwind label %bb.ej

bb.dw:                                            ; preds = %bb.dv
  %i.xl = load ptr, ptr %83, align 8, !tbaa !24   ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.xj
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630: ; preds = %bb.dw
  %i.xn = load i64, ptr %i.xj, align 8, !tbaa !22
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #24
  %i.xp = load ptr, ptr %81, align 8, !tbaa !24   ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.xr = icmp eq ptr %i.xp, %i.xq
  br i1 %i.xr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632
  %i.xs = load i64, ptr %i.xq, align 8, !tbaa !22
  %i.xt = add i64 %i.xs, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24
  %i.xu = invoke noundef zeroext i1 @_ZNK2cv11FileStorage8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(64) %80)
          to label %bb.dx unwind label %bb.ek

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635
  br i1 %i.xu, label %bb.dy, label %bb.el

bb.dy:                                            ; preds = %bb.dx
  %i.xv = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %80, ptr noundef nonnull @.str.65)
          to label %bb.dz unwind label %bb.ek     ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.xw = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_(ptr noundef nonnull align 8 dereferenceable(64) %i.xv, ptr noundef nonnull align 8 dereferenceable(208) %42)
          to label %bb.ea unwind label %bb.ek     ; 0 uses

bb.ea:                                            ; preds = %bb.dz
  %i.xx = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.xv, ptr noundef nonnull @.str.66)
          to label %bb.eb unwind label %bb.ek     ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %i.xy = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_(ptr noundef nonnull align 8 dereferenceable(64) %i.xx, ptr noundef nonnull align 8 dereferenceable(208) %43)
          to label %bb.ec unwind label %bb.ek     ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  %i.xz = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.xx, ptr noundef nonnull @.str.67)
          to label %bb.ed unwind label %bb.ek     ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %i.ya = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_(ptr noundef nonnull align 8 dereferenceable(64) %i.xz, ptr noundef nonnull align 8 dereferenceable(208) %.ptr386.1)
          to label %bb.ee unwind label %bb.ek     ; 0 uses

bb.ee:                                            ; preds = %bb.ed
  %i.yb = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.xz, ptr noundef nonnull @.str.68)
          to label %bb.ef unwind label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  %i.yc = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_(ptr noundef nonnull align 8 dereferenceable(64) %i.yb, ptr noundef nonnull align 8 dereferenceable(208) %.ptr390.1)
          to label %bb.eg unwind label %bb.ek     ; 0 uses

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN2cv11FileStorage7releaseEv(ptr noundef nonnull align 8 dereferenceable(64) %80)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit643 unwind label %bb.ek

bb.eh:                                            ; preds = %_ZNSolsEd.exit627, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit625, %._crit_edge1058
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.ei:                                            ; preds = %_ZNSolsEPFRSoS_E.exit629
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641

bb.ej:                                            ; preds = %bb.dv
  %i.yf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yg = load ptr, ptr %83, align 8, !tbaa !24   ; 2 uses
  %i.yh = icmp eq ptr %i.yg, %i.xj
  br i1 %i.yh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636: ; preds = %bb.ej
  %i.yi = load i64, ptr %i.xj, align 8, !tbaa !22
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #24
  %i.yk = load ptr, ptr %81, align 8, !tbaa !24   ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.ym = icmp eq ptr %i.yk, %i.yl
  br i1 %i.ym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638
  %i.yn = load i64, ptr %i.yl, align 8, !tbaa !22
  %i.yo = add i64 %i.yn, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639, %bb.ei
  %.pn416 = phi { ptr, i32 } [ %i.ye, %bb.ei ], [ %i.yf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639 ], [ %i.yf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24
  br label %bb.ip

bb.ek:                                            ; preds = %bb.el, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.el:                                            ; preds = %bb.dx
  %i.yq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.69, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit643 unwind label %bb.ek ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit643: ; preds = %bb.el, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %84) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %85) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %86) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %87) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %88) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %89, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #24
  %i.yr = getelementptr inbounds nuw i8, ptr %90, i64 16
  store i32 0, ptr %i.yr, align 8, !tbaa !126
  %i.ys = getelementptr inbounds nuw i8, ptr %90, i64 20
  store i32 0, ptr %i.ys, align 4, !tbaa !127
  store i32 16842752, ptr %90, align 8, !tbaa !164
  %i.yt = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr %42, ptr %i.yt, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #24
  %i.yu = getelementptr inbounds nuw i8, ptr %91, i64 16
  store i32 0, ptr %i.yu, align 8, !tbaa !126
  %i.yv = getelementptr inbounds nuw i8, ptr %91, i64 20
  store i32 0, ptr %i.yv, align 4, !tbaa !127
  store i32 16842752, ptr %91, align 8, !tbaa !164
  %i.yw = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %43, ptr %i.yw, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #24
  %i.yx = getelementptr inbounds nuw i8, ptr %92, i64 16
  store i32 0, ptr %i.yx, align 8, !tbaa !126
  %i.yy = getelementptr inbounds nuw i8, ptr %92, i64 20
  store i32 0, ptr %i.yy, align 4, !tbaa !127
  store i32 16842752, ptr %92, align 8, !tbaa !164
  %i.yz = getelementptr inbounds nuw i8, ptr %92, i64 8
  store ptr %.ptr386.1, ptr %i.yz, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #24
  %i.za = getelementptr inbounds nuw i8, ptr %93, i64 16
end_hunk_0
