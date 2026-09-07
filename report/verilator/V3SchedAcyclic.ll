Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SchedAcyclic?download=true
inline.NumInlined: 2951
inline.NumDeleted: 1290
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterISt8functionIFbRKS7_SH_EEEEEvT_SL_T0_T1_:bb.a
bb.bn:                                            ; preds = %bb.bm
  %i.iq = load <2 x ptr>, ptr %i.g, align 8, !tbaa !90
  %i.ir = load ptr, ptr %i.g, align 8, !tbaa !181
  store <2 x ptr> %i.iq, ptr %i.bm, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45

bb.bo:                                            ; preds = %bb.bm
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %i.bm, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i43, label %common.resume, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iu = invoke noundef zeroext i1 %i.it(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %common.resume unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #29
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit40, %bb.bn
  %.val.i.i29.i213 = phi ptr [ null, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit40 ], [ %i.ir, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ix = shl nsw i64 %.0179, 2                   ; 4 uses
  %.not113.i = icmp slt i64 %i.d, %i.ix
  br i1 %.not113.i, label %._crit_edge.i61, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45
  %.idx.i47 = shl nsw i64 %.0179, 5               ; 2 uses
  %.idx79.i = shl nsw i64 %.0179, 6               ; 2 uses
  %.not80.i = icmp eq i64 %.idx.i47, %.idx79.i
  br label %bb.br

bb.br:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit.i59, %.lr.ph.i46
  %.sroa.020.0115.i = phi ptr [ %0, %.lr.ph.i46 ], [ %i.ma, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit.i59 ] ; 2 uses
  %.0114.i = phi ptr [ %2, %.lr.ph.i46 ], [ %i.iz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit.i59 ] ; 4 uses
  %i.iy = getelementptr inbounds i8, ptr %.0114.i, i64 %.idx.i47 ; 4 uses
  %i.iz = getelementptr inbounds i8, ptr %.0114.i, i64 %.idx79.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.val.i.i.i48 = load ptr, ptr %i.bm, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.not.i.i.i49 = icmp eq ptr %.val.i.i.i48, null
  br i1 %.not.i.i.not.i.i.i49, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ja = invoke noundef zeroext i1 %.val.i.i.i48(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 2)
          to label %bb.bt unwind label %bb.bu     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.jb = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !90
  store <2 x ptr> %i.jb, ptr %i.bo, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53

bb.bu:                                            ; preds = %bb.bs
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = load ptr, ptr %i.bo, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i50, label %.body82, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.je = invoke noundef zeroext i1 %i.jd(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body82 unwind label %bb.bw   ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #29
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53: ; preds = %bb.bt, %bb.br
  br i1 %.not80.i, label %._crit_edge.i.i, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53, %.noexc26.i
  %.035.i.i = phi ptr [ %.1.i.i, %.noexc26.i ], [ %.0114.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53 ] ; 3 uses
  %.01634.i.i = phi ptr [ %.117.i.i, %.noexc26.i ], [ %i.iy, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53 ] ; 3 uses
  %.sroa.0.033.i.i = phi ptr [ %i.jl, %.noexc26.i ], [ %.sroa.020.0115.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53 ] ; 3 uses
  %i.jh = load ptr, ptr %i.bo, align 8, !tbaa !181
  %.not.i.i.i.i.i55 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i55, label %bb.bx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEclIPS8_SF_EEbT_T0_.exit.i.i

bb.bx:                                            ; preds = %.lr.ph.i.i54
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc.i81 unwind label %.loopexit.split-lp83.i

.noexc.i81:                                       ; preds = %bb.bx
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEclIPS8_SF_EEbT_T0_.exit.i.i: ; preds = %.lr.ph.i.i54
  %i.ji = load ptr, ptr %i.bp, align 8, !tbaa !314
  %i.jj = invoke noundef zeroext i1 %i.ji(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(12) %.01634.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.035.i.i)
          to label %.noexc26.i unwind label %.loopexit82.i, !inline_history !601 ; 3 uses

.noexc26.i:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEclIPS8_SF_EEbT_T0_.exit.i.i
  %.0.val.sink.in.i.i = select i1 %i.jj, ptr %.01634.i.i, ptr %.035.i.i ; 2 uses
  %.117.idx.i.i = select i1 %i.jj, i64 16, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01634.i.i, i64 %.117.idx.i.i ; 3 uses
  %.1.idx.i.i = select i1 %i.jj, i64 0, i64 16
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 %.1.idx.i.i ; 3 uses
  %.0.val19.sink.in.i.i = getelementptr i8, ptr %.0.val.sink.in.i.i, i64 8
  %.0.val19.sink.i.i = load i32, ptr %.0.val19.sink.in.i.i, align 4, !tbaa !117
  %.0.val.sink.i.i = load ptr, ptr %.0.val.sink.in.i.i, align 8, !tbaa !119
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.033.i.i, align 8, !tbaa !317
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 8
  store i32 %.0.val19.sink.i.i, ptr %i.jk, align 8, !tbaa !318
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 16 ; 2 uses
  %i.jm = icmp ne ptr %.1.i.i, %i.iy
  %i.jn = icmp ne ptr %.117.i.i, %i.iz
  %i.jo = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %i.jo, label %.lr.ph.i.i54, label %._crit_edge.i.i, !llvm.loop !602

._crit_edge.i.i:                                  ; preds = %.noexc26.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.020.0115.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53 ], [ %i.jl, %.noexc26.i ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.iy, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53 ], [ %.117.i.i, %.noexc26.i ] ; 3 uses
  %.0.lcssa.i.i56 = phi ptr [ %.0114.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit.i53 ], [ %.1.i.i, %.noexc26.i ] ; 3 uses
  %i.jp = ptrtoint ptr %i.iy to i64
  %i.jq = ptrtoint ptr %.0.lcssa.i.i56 to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = ashr exact i64 %i.jr, 4                 ; 5 uses
  %i.jt = icmp sgt i64 %i.js, 0
  br i1 %i.jt, label %.lr.ph.i.i.i.i.i.i.i75.preheader, label %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i

.lr.ph.i.i.i.i.i.i.i75.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter350 = and i64 %i.js, 3                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i75.prol

.lr.ph.i.i.i.i.i.i.i75.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i75.preheader, %.lr.ph.i.i.i.i.i.i.i75.prol
  %.013.i.i.i.i.i.i.i76.prol = phi i64 [ %i.jy, %.lr.ph.i.i.i.i.i.i.i75.prol ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i75.preheader ]
  %.0812.i.i.i.i.i.i.i77.prol = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i75.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i75.preheader ] ; 3 uses
  %.0911.i.i.i.i.i.i.i78.prol = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i.i.i75.prol ], [ %.0.lcssa.i.i56, %.lr.ph.i.i.i.i.i.i.i75.preheader ] ; 3 uses
  %prol.iter352 = phi i64 [ %prol.iter352.next, %.lr.ph.i.i.i.i.i.i.i75.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i75.preheader ]
  %.09.val.i.i.i.i.i.i.i79.prol = load ptr, ptr %.0911.i.i.i.i.i.i.i78.prol, align 8, !tbaa !119
  %i.ju = getelementptr i8, ptr %.0911.i.i.i.i.i.i.i78.prol, i64 8
  %.09.val10.i.i.i.i.i.i.i80.prol = load i32, ptr %i.ju, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i.i79.prol, ptr %.0812.i.i.i.i.i.i.i77.prol, align 8, !tbaa !317
  %i.jv = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77.prol, i64 8
  store i32 %.09.val10.i.i.i.i.i.i.i80.prol, ptr %i.jv, align 8, !tbaa !318
  %i.jw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i78.prol, i64 16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77.prol, i64 16 ; 3 uses
  %i.jy = add nsw i64 %.013.i.i.i.i.i.i.i76.prol, -1 ; 2 uses
  %prol.iter352.next = add i64 %prol.iter352, 1   ; 2 uses
  %prol.iter352.cmp.not = icmp eq i64 %prol.iter352.next, %xtraiter350
  br i1 %prol.iter352.cmp.not, label %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i75.prol, !llvm.loop !603

.lr.ph.i.i.i.i.i.i.i75.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i75.prol, %.lr.ph.i.i.i.i.i.i.i75.preheader
  %.013.i.i.i.i.i.i.i76.unr = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i.i.i75.preheader ], [ %i.jy, %.lr.ph.i.i.i.i.i.i.i75.prol ]
  %.0812.i.i.i.i.i.i.i77.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i75.preheader ], [ %i.jx, %.lr.ph.i.i.i.i.i.i.i75.prol ]
  %.0911.i.i.i.i.i.i.i78.unr = phi ptr [ %.0.lcssa.i.i56, %.lr.ph.i.i.i.i.i.i.i75.preheader ], [ %i.jw, %.lr.ph.i.i.i.i.i.i.i75.prol ]
  %.lcssa325.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i75.preheader ], [ %i.jx, %.lr.ph.i.i.i.i.i.i.i75.prol ]
  %i.jz = icmp ult i64 %i.js, 4
  br i1 %i.jz, label %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i75

.lr.ph.i.i.i.i.i.i.i75:                           ; preds = %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i75
  %.013.i.i.i.i.i.i.i76 = phi i64 [ %i.kq, %.lr.ph.i.i.i.i.i.i.i75 ], [ %.013.i.i.i.i.i.i.i76.unr, %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit ] ; 2 uses
  %.0812.i.i.i.i.i.i.i77 = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i.i.i75 ], [ %.0812.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i78 = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i.i75 ], [ %.0911.i.i.i.i.i.i.i78.unr, %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit ] ; 9 uses
  %.09.val.i.i.i.i.i.i.i79 = load ptr, ptr %.0911.i.i.i.i.i.i.i78, align 8, !tbaa !119
  %i.ka = getelementptr i8, ptr %.0911.i.i.i.i.i.i.i78, i64 8
  %.09.val10.i.i.i.i.i.i.i80 = load i32, ptr %i.ka, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i.i79, ptr %.0812.i.i.i.i.i.i.i77, align 8, !tbaa !317
  %i.kb = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 8
  store i32 %.09.val10.i.i.i.i.i.i.i80, ptr %i.kb, align 8, !tbaa !318
  %i.kc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i78, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 16
  %.09.val.i.i.i.i.i.i.i79.1 = load ptr, ptr %i.kc, align 8, !tbaa !119
  %i.ke = getelementptr i8, ptr %.0911.i.i.i.i.i.i.i78, i64 24
  %.09.val10.i.i.i.i.i.i.i80.1 = load i32, ptr %i.ke, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i.i79.1, ptr %i.kd, align 8, !tbaa !317
  %i.kf = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 24
  store i32 %.09.val10.i.i.i.i.i.i.i80.1, ptr %i.kf, align 8, !tbaa !318
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i78, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 32
  %.09.val.i.i.i.i.i.i.i79.2 = load ptr, ptr %i.kg, align 8, !tbaa !119
  %i.ki = getelementptr i8, ptr %.0911.i.i.i.i.i.i.i78, i64 40
  %.09.val10.i.i.i.i.i.i.i80.2 = load i32, ptr %i.ki, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i.i79.2, ptr %i.kh, align 8, !tbaa !317
  %i.kj = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 40
  store i32 %.09.val10.i.i.i.i.i.i.i80.2, ptr %i.kj, align 8, !tbaa !318
  %i.kk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i78, i64 48
  %i.kl = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 48
  %.09.val.i.i.i.i.i.i.i79.3 = load ptr, ptr %i.kk, align 8, !tbaa !119
  %i.km = getelementptr i8, ptr %.0911.i.i.i.i.i.i.i78, i64 56
  %.09.val10.i.i.i.i.i.i.i80.3 = load i32, ptr %i.km, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i.i79.3, ptr %i.kl, align 8, !tbaa !317
  %i.kn = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 56
  store i32 %.09.val10.i.i.i.i.i.i.i80.3, ptr %i.kn, align 8, !tbaa !318
  %i.ko = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i78, i64 64
  %i.kp = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i77, i64 64 ; 2 uses
  %i.kq = add nsw i64 %.013.i.i.i.i.i.i.i76, -4
  %i.kr = icmp sgt i64 %.013.i.i.i.i.i.i.i76, 4
  br i1 %i.kr, label %.lr.ph.i.i.i.i.i.i.i75, label %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, !llvm.loop !13

_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i75, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i57 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa325.unr, %.lr.ph.i.i.i.i.i.i.i75.prol.loopexit ], [ %i.kp, %.lr.ph.i.i.i.i.i.i.i75 ]
  %i.ks = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i57 to i64 ; 2 uses
  %i.kt = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.ku ; 4 uses
  %i.kw = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.kx = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = ashr exact i64 %i.ky, 4                 ; 5 uses
  %i.la = icmp sgt i64 %i.kz, 0
  br i1 %i.la, label %.lr.ph.i.i.i.i.i22.i.i.preheader, label %bb.by

.lr.ph.i.i.i.i.i22.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %xtraiter353 = and i64 %i.kz, 3                 ; 2 uses
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i22.i.i.prol

.lr.ph.i.i.i.i.i22.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i22.i.i.preheader, %.lr.ph.i.i.i.i.i22.i.i.prol
  %.013.i.i.i.i.i23.i.i.prol = phi i64 [ %i.lf, %.lr.ph.i.i.i.i.i22.i.i.prol ], [ %i.kz, %.lr.ph.i.i.i.i.i22.i.i.preheader ]
  %.0812.i.i.i.i.i24.i.i.prol = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i22.i.i.prol ], [ %i.kv, %.lr.ph.i.i.i.i.i22.i.i.preheader ] ; 3 uses
  %.0911.i.i.i.i.i25.i.i.prol = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i22.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i22.i.i.preheader ] ; 3 uses
  %prol.iter355 = phi i64 [ %prol.iter355.next, %.lr.ph.i.i.i.i.i22.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i22.i.i.preheader ]
  %.09.val.i.i.i.i.i26.i.i.prol = load ptr, ptr %.0911.i.i.i.i.i25.i.i.prol, align 8, !tbaa !119
  %i.lb = getelementptr i8, ptr %.0911.i.i.i.i.i25.i.i.prol, i64 8
  %.09.val10.i.i.i.i.i27.i.i.prol = load i32, ptr %i.lb, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i26.i.i.prol, ptr %.0812.i.i.i.i.i24.i.i.prol, align 8, !tbaa !317
  %i.lc = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i.prol, i64 8
  store i32 %.09.val10.i.i.i.i.i27.i.i.prol, ptr %i.lc, align 8, !tbaa !318
  %i.ld = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i25.i.i.prol, i64 16 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i.prol, i64 16 ; 3 uses
  %i.lf = add nsw i64 %.013.i.i.i.i.i23.i.i.prol, -1 ; 2 uses
  %prol.iter355.next = add i64 %prol.iter355, 1   ; 2 uses
  %prol.iter355.cmp.not = icmp eq i64 %prol.iter355.next, %xtraiter353
  br i1 %prol.iter355.cmp.not, label %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i22.i.i.prol, !llvm.loop !604

.lr.ph.i.i.i.i.i22.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i22.i.i.prol, %.lr.ph.i.i.i.i.i22.i.i.preheader
  %.013.i.i.i.i.i23.i.i.unr = phi i64 [ %i.kz, %.lr.ph.i.i.i.i.i22.i.i.preheader ], [ %i.lf, %.lr.ph.i.i.i.i.i22.i.i.prol ]
  %.0812.i.i.i.i.i24.i.i.unr = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i22.i.i.preheader ], [ %i.le, %.lr.ph.i.i.i.i.i22.i.i.prol ]
  %.0911.i.i.i.i.i25.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i22.i.i.preheader ], [ %i.ld, %.lr.ph.i.i.i.i.i22.i.i.prol ]
  %.lcssa326.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i22.i.i.preheader ], [ %i.le, %.lr.ph.i.i.i.i.i22.i.i.prol ]
  %i.lg = icmp ult i64 %i.kz, 4
  br i1 %i.lg, label %bb.by, label %.lr.ph.i.i.i.i.i22.i.i

.lr.ph.i.i.i.i.i22.i.i:                           ; preds = %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i22.i.i
  %.013.i.i.i.i.i23.i.i = phi i64 [ %i.lx, %.lr.ph.i.i.i.i.i22.i.i ], [ %.013.i.i.i.i.i23.i.i.unr, %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit ] ; 2 uses
  %.0812.i.i.i.i.i24.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.i22.i.i ], [ %.0812.i.i.i.i.i24.i.i.unr, %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i25.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i22.i.i ], [ %.0911.i.i.i.i.i25.i.i.unr, %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit ] ; 9 uses
  %.09.val.i.i.i.i.i26.i.i = load ptr, ptr %.0911.i.i.i.i.i25.i.i, align 8, !tbaa !119
  %i.lh = getelementptr i8, ptr %.0911.i.i.i.i.i25.i.i, i64 8
  %.09.val10.i.i.i.i.i27.i.i = load i32, ptr %i.lh, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i26.i.i, ptr %.0812.i.i.i.i.i24.i.i, align 8, !tbaa !317
  %i.li = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 8
  store i32 %.09.val10.i.i.i.i.i27.i.i, ptr %i.li, align 8, !tbaa !318
  %i.lj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i25.i.i, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 16
  %.09.val.i.i.i.i.i26.i.i.1 = load ptr, ptr %i.lj, align 8, !tbaa !119
  %i.ll = getelementptr i8, ptr %.0911.i.i.i.i.i25.i.i, i64 24
  %.09.val10.i.i.i.i.i27.i.i.1 = load i32, ptr %i.ll, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i26.i.i.1, ptr %i.lk, align 8, !tbaa !317
  %i.lm = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 24
  store i32 %.09.val10.i.i.i.i.i27.i.i.1, ptr %i.lm, align 8, !tbaa !318
  %i.ln = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i25.i.i, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 32
  %.09.val.i.i.i.i.i26.i.i.2 = load ptr, ptr %i.ln, align 8, !tbaa !119
  %i.lp = getelementptr i8, ptr %.0911.i.i.i.i.i25.i.i, i64 40
  %.09.val10.i.i.i.i.i27.i.i.2 = load i32, ptr %i.lp, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i26.i.i.2, ptr %i.lo, align 8, !tbaa !317
  %i.lq = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 40
  store i32 %.09.val10.i.i.i.i.i27.i.i.2, ptr %i.lq, align 8, !tbaa !318
  %i.lr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i25.i.i, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 48
  %.09.val.i.i.i.i.i26.i.i.3 = load ptr, ptr %i.lr, align 8, !tbaa !119
  %i.lt = getelementptr i8, ptr %.0911.i.i.i.i.i25.i.i, i64 56
  %.09.val10.i.i.i.i.i27.i.i.3 = load i32, ptr %i.lt, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i26.i.i.3, ptr %i.ls, align 8, !tbaa !317
  %i.lu = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 56
  store i32 %.09.val10.i.i.i.i.i27.i.i.3, ptr %i.lu, align 8, !tbaa !318
  %i.lv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i25.i.i, i64 64
  %i.lw = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i24.i.i, i64 64 ; 2 uses
  %i.lx = add nsw i64 %.013.i.i.i.i.i23.i.i, -4
  %i.ly = icmp sgt i64 %.013.i.i.i.i.i23.i.i, 4
  br i1 %i.ly, label %.lr.ph.i.i.i.i.i22.i.i, label %bb.by, !llvm.loop !13

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i22.i.i, %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %.08.lcssa.i.i.i.i.i21.i.i = phi ptr [ %i.kv, %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i ], [ %.lcssa326.unr, %.lr.ph.i.i.i.i.i22.i.i.prol.loopexit ], [ %i.lw, %.lr.ph.i.i.i.i.i22.i.i ]
  %13 = ptrtoint ptr %.08.lcssa.i.i.i.i.i21.i.i to i64
  %i.lz = sub i64 %13, %i.ks
  %i.ma = getelementptr inbounds i8, ptr %i.kv, i64 %i.lz ; 2 uses
  %i.mb = load ptr, ptr %i.bo, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i58, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit.i59, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mc = invoke noundef zeroext i1 %i.mb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit.i59 unwind label %bb.ca ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #29
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit.i59: ; preds = %bb.bz, %bb.by
  %i.mf = sub i64 %i.bn, %i.kw
  %i.mg = ashr exact i64 %i.mf, 4                 ; 2 uses
  %.not.i60 = icmp slt i64 %i.mg, %i.ix
  br i1 %.not.i60, label %._crit_edge.i61.loopexit, label %bb.br, !llvm.loop !605

.loopexit82.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEclIPS8_SF_EEbT_T0_.exit.i.i
  %lpad.loopexit84.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp83.i:                           ; preds = %bb.bx
  %lpad.loopexit.split-lp85.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp83.i, %.loopexit82.i
  %lpad.phi86.i = phi { ptr, i32 } [ %lpad.loopexit84.i, %.loopexit82.i ], [ %lpad.loopexit.split-lp85.i, %.loopexit.split-lp83.i ] ; 2 uses
  %i.mh = load ptr, ptr %i.bo, align 8, !tbaa !181 ; 2 uses
  %.not.i.i27.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i27.i, label %.body82, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mi = invoke noundef zeroext i1 %i.mh(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body82 unwind label %bb.cd   ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  call void @__clang_call_terminate(ptr %i.mk) #29
  unreachable

._crit_edge.i61.loopexit:                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEED2Ev.exit.i59
  %.val.i.i29.i.pre = load ptr, ptr %i.bm, align 8, !tbaa !181
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.i61.loopexit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45
  %.val.i.i29.i = phi ptr [ %.val.i.i29.i213, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45 ], [ %.val.i.i29.i.pre, %._crit_edge.i61.loopexit ] ; 2 uses
  %.0.lcssa.i62 = phi ptr [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45 ], [ %i.iz, %._crit_edge.i61.loopexit ] ; 3 uses
  %.sroa.020.0.lcssa.i = phi ptr [ %0, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45 ], [ %i.ma, %._crit_edge.i61.loopexit ] ; 2 uses
  %.lcssa91.i = phi i64 [ %i.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit45 ], [ %i.mg, %._crit_edge.i61.loopexit ]
  %.sroa.speculated.i63 = call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 1152921504606846973) %i.ca, i64 %.lcssa91.i) ; 2 uses
  %.idx81.i = shl nsw i64 %.sroa.speculated.i63, 4
  %i.ml = getelementptr inbounds i8, ptr %.0.lcssa.i62, i64 %.idx81.i ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i30.i = icmp eq ptr %.val.i.i29.i, null
  br i1 %.not.i.i.not.i.i30.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i61
  %i.mm = invoke noundef zeroext i1 %.val.i.i29.i(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 2)
          to label %bb.cf unwind label %bb.cg     ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.mn = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !90
  store <2 x ptr> %i.mn, ptr %i.bq, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i

bb.cg:                                            ; preds = %bb.ce
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = load ptr, ptr %i.bq, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i31.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i31.i, label %.body82, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mq = invoke noundef zeroext i1 %i.mp(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body82 unwind label %bb.ci   ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.mr = landingpad { ptr, i32 }
          catch ptr null
  %i.ms = extractvalue { ptr, i32 } %i.mr, 0
  call void @__clang_call_terminate(ptr %i.ms) #29
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i: ; preds = %bb.cf, %._crit_edge.i61
  %i.mt = icmp ne i64 %.sroa.speculated.i63, 0
  %i.mu = icmp ne ptr %i.ml, %i.e
  %i.mv = and i1 %i.mt, %i.mu
  br i1 %i.mv, label %.lr.ph.i54.i, label %._crit_edge.i34.i

.lr.ph.i54.i:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i, %.noexc69.i71
  %.035.i55.i = phi ptr [ %.1.i64.i, %.noexc69.i71 ], [ %.0.lcssa.i62, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i ] ; 3 uses
  %.01634.i56.i = phi ptr [ %.117.i62.i, %.noexc69.i71 ], [ %i.ml, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i ] ; 3 uses
  %.sroa.0.033.i57.i = phi ptr [ %i.na, %.noexc69.i71 ], [ %.sroa.020.0.lcssa.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i ] ; 3 uses
  %i.mw = load ptr, ptr %i.bq, align 8, !tbaa !181
  %.not.i.i.i.i58.i = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i.i58.i, label %bb.cj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEclIPS8_SF_EEbT_T0_.exit.i59.i

bb.cj:                                            ; preds = %.lr.ph.i54.i
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc68.i74 unwind label %.loopexit.split-lp.i72

.noexc68.i74:                                     ; preds = %bb.cj
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEclIPS8_SF_EEbT_T0_.exit.i59.i: ; preds = %.lr.ph.i54.i
  %i.mx = load ptr, ptr %i.br, align 8, !tbaa !314
  %i.my = invoke noundef zeroext i1 %i.mx(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(12) %.01634.i56.i, ptr noundef nonnull align 8 dereferenceable(12) %.035.i55.i)
          to label %.noexc69.i71 unwind label %.loopexit.i67, !inline_history !601 ; 3 uses

.noexc69.i71:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEclIPS8_SF_EEbT_T0_.exit.i59.i
  %.0.val.sink.in.i60.i = select i1 %i.my, ptr %.01634.i56.i, ptr %.035.i55.i ; 2 uses
  %.117.idx.i61.i = select i1 %i.my, i64 16, i64 0
  %.117.i62.i = getelementptr inbounds nuw i8, ptr %.01634.i56.i, i64 %.117.idx.i61.i ; 3 uses
  %.1.idx.i63.i = select i1 %i.my, i64 0, i64 16
  %.1.i64.i = getelementptr inbounds nuw i8, ptr %.035.i55.i, i64 %.1.idx.i63.i ; 3 uses
  %.0.val19.sink.in.i65.i = getelementptr i8, ptr %.0.val.sink.in.i60.i, i64 8
  %.0.val19.sink.i66.i = load i32, ptr %.0.val19.sink.in.i65.i, align 4, !tbaa !117
  %.0.val.sink.i67.i = load ptr, ptr %.0.val.sink.in.i60.i, align 8, !tbaa !119
  store ptr %.0.val.sink.i67.i, ptr %.sroa.0.033.i57.i, align 8, !tbaa !317
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i57.i, i64 8
  store i32 %.0.val19.sink.i66.i, ptr %i.mz, align 8, !tbaa !318
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i57.i, i64 16 ; 2 uses
  %i.nb = icmp ne ptr %.1.i64.i, %i.ml
  %i.nc = icmp ne ptr %.117.i62.i, %i.e
  %i.nd = select i1 %i.nb, i1 %i.nc, i1 false
  br i1 %i.nd, label %.lr.ph.i54.i, label %._crit_edge.i34.i, !llvm.loop !602

._crit_edge.i34.i:                                ; preds = %.noexc69.i71, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i
  %.sroa.0.0.lcssa.i35.i = phi ptr [ %.sroa.020.0.lcssa.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i ], [ %i.na, %.noexc69.i71 ] ; 5 uses
  %.016.lcssa.i36.i = phi ptr [ %i.ml, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i ], [ %.117.i62.i, %.noexc69.i71 ] ; 3 uses
  %.0.lcssa.i37.i64 = phi ptr [ %.0.lcssa.i62, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt8functionIFbRKSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjESA_EEEC2ERKSD_.exit33.i ], [ %.1.i64.i, %.noexc69.i71 ] ; 3 uses
  %i.ne = ptrtoint ptr %i.ml to i64
  %i.nf = ptrtoint ptr %.0.lcssa.i37.i64 to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = ashr exact i64 %i.ng, 4                 ; 5 uses
  %i.ni = icmp sgt i64 %i.nh, 0
  br i1 %i.ni, label %.lr.ph.i.i.i.i.i.i48.i.preheader, label %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i38.i

.lr.ph.i.i.i.i.i.i48.i.preheader:                 ; preds = %._crit_edge.i34.i
  %xtraiter356 = and i64 %i.nh, 3                 ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %.lr.ph.i.i.i.i.i.i48.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i48.i.prol

.lr.ph.i.i.i.i.i.i48.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i48.i.preheader, %.lr.ph.i.i.i.i.i.i48.i.prol
  %.013.i.i.i.i.i.i49.i.prol = phi i64 [ %i.nn, %.lr.ph.i.i.i.i.i.i48.i.prol ], [ %i.nh, %.lr.ph.i.i.i.i.i.i48.i.preheader ]
  %.0812.i.i.i.i.i.i50.i.prol = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i48.i.prol ], [ %.sroa.0.0.lcssa.i35.i, %.lr.ph.i.i.i.i.i.i48.i.preheader ] ; 3 uses
  %.0911.i.i.i.i.i.i51.i.prol = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i.i48.i.prol ], [ %.0.lcssa.i37.i64, %.lr.ph.i.i.i.i.i.i48.i.preheader ] ; 3 uses
  %prol.iter358 = phi i64 [ %prol.iter358.next, %.lr.ph.i.i.i.i.i.i48.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i48.i.preheader ]
  %.09.val.i.i.i.i.i.i52.i.prol = load ptr, ptr %.0911.i.i.i.i.i.i51.i.prol, align 8, !tbaa !119
  %i.nj = getelementptr i8, ptr %.0911.i.i.i.i.i.i51.i.prol, i64 8
  %.09.val10.i.i.i.i.i.i53.i.prol = load i32, ptr %i.nj, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i52.i.prol, ptr %.0812.i.i.i.i.i.i50.i.prol, align 8, !tbaa !317
  %i.nk = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i50.i.prol, i64 8
  store i32 %.09.val10.i.i.i.i.i.i53.i.prol, ptr %i.nk, align 8, !tbaa !318
  %i.nl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i51.i.prol, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i50.i.prol, i64 16 ; 3 uses
  %i.nn = add nsw i64 %.013.i.i.i.i.i.i49.i.prol, -1 ; 2 uses
  %prol.iter358.next = add i64 %prol.iter358, 1   ; 2 uses
  %prol.iter358.cmp.not = icmp eq i64 %prol.iter358.next, %xtraiter356
  br i1 %prol.iter358.cmp.not, label %.lr.ph.i.i.i.i.i.i48.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i48.i.prol, !llvm.loop !606

.lr.ph.i.i.i.i.i.i48.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i48.i.prol, %.lr.ph.i.i.i.i.i.i48.i.preheader
  %.013.i.i.i.i.i.i49.i.unr = phi i64 [ %i.nh, %.lr.ph.i.i.i.i.i.i48.i.preheader ], [ %i.nn, %.lr.ph.i.i.i.i.i.i48.i.prol ]
  %.0812.i.i.i.i.i.i50.i.unr = phi ptr [ %.sroa.0.0.lcssa.i35.i, %.lr.ph.i.i.i.i.i.i48.i.preheader ], [ %i.nm, %.lr.ph.i.i.i.i.i.i48.i.prol ]
  %.0911.i.i.i.i.i.i51.i.unr = phi ptr [ %.0.lcssa.i37.i64, %.lr.ph.i.i.i.i.i.i48.i.preheader ], [ %i.nl, %.lr.ph.i.i.i.i.i.i48.i.prol ]
  %.lcssa336.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i48.i.preheader ], [ %i.nm, %.lr.ph.i.i.i.i.i.i48.i.prol ]
  %i.no = icmp ult i64 %i.nh, 4
  br i1 %i.no, label %_ZSt4moveIPSt4pairIPN7V3Sched12_GLOBAL__N_121SchedAcyclicVarVertexEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i38.i, label %.lr.ph.i.i.i.i.i.i48.i

.lr.ph.i.i.i.i.i.i48.i:                           ; preds = %.lr.ph.i.i.i.i.i.i48.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i48.i
  %.013.i.i.i.i.i.i49.i = phi i64 [ %i.of, %.lr.ph.i.i.i.i.i.i48.i ], [ %.013.i.i.i.i.i.i49.i.unr, %.lr.ph.i.i.i.i.i.i48.i.prol.loopexit ] ; 2 uses
  %.0812.i.i.i.i.i.i50.i = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i.i48.i ], [ %.0812.i.i.i.i.i.i50.i.unr, %.lr.ph.i.i.i.i.i.i48.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i51.i = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i.i48.i ], [ %.0911.i.i.i.i.i.i51.i.unr, %.lr.ph.i.i.i.i.i.i48.i.prol.loopexit ] ; 9 uses
  %.09.val.i.i.i.i.i.i52.i = load ptr, ptr %.0911.i.i.i.i.i.i51.i, align 8, !tbaa !119
  %i.np = getelementptr i8, ptr %.0911.i.i.i.i.i.i51.i, i64 8
  %.09.val10.i.i.i.i.i.i53.i = load i32, ptr %i.np, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i52.i, ptr %.0812.i.i.i.i.i.i50.i, align 8, !tbaa !317
  %i.nq = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i50.i, i64 8
  store i32 %.09.val10.i.i.i.i.i.i53.i, ptr %i.nq, align 8, !tbaa !318
  %i.nr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i51.i, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i50.i, i64 16
  %.09.val.i.i.i.i.i.i52.i.1 = load ptr, ptr %i.nr, align 8, !tbaa !119
  %i.nt = getelementptr i8, ptr %.0911.i.i.i.i.i.i51.i, i64 24
  %.09.val10.i.i.i.i.i.i53.i.1 = load i32, ptr %i.nt, align 8, !tbaa !117
  store ptr %.09.val.i.i.i.i.i.i52.i.1, ptr %i.ns, align 8, !tbaa !317
  %i.nu = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i50.i, i64 24
  store i32 %.09.val10.i.i.i.i.i.i53.i.1, ptr %i.nu, align 8, !tbaa !318
  %i.nv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i51.i, i64 32
  %i.nw = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i50.i, i64 32
  %.09.val.i.i.i.i.i.i52.i.2 = load ptr, ptr %i.nv, align 8, !tbaa !119
  %i.nx = getelementptr i8, ptr %.0911.i.i.i.i.i.i51.i, i64 40
end_hunk_0
