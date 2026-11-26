Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTNLPAdapter?download=true
inline.NumInlined: 3192
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Ipopt11TNLPAdapter9GetSpacesERNS_8SmartPtrIKNS_11VectorSpaceEEES5_S5_S5_RNS1_IKNS_11MatrixSpaceEEES5_S9_S5_S9_S5_S9_S9_S9_RNS1_IKNS_14SymMatrixSpaceEEE:bb.a

bb.jl:                                            ; preds = %bb.jk
  %i.agb = load ptr, ptr %i.ig, align 8, !tbaa !119 ; 2 uses
  %.not19702202 = icmp eq ptr %i.agb, %i.ie
  br i1 %.not19702202, label %.loopexit2084, label %.lr.ph2206

.lr.ph2206:                                       ; preds = %bb.jl
  %i.agc = sext i32 %.1668.lcssa to i64           ; 6 uses
  %i.agd = icmp slt i32 %.1668.lcssa, 0
  %.not.i.i.i.i = icmp eq i32 %.1668.lcssa, 0
  %i.age = shl nuw nsw i64 %i.agc, 5
  %i.agf = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 8 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.agj = icmp sgt i32 %.1668.lcssa, 0           ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.agl = sext i32 %.1664.lcssa to i64           ; 4 uses
  %i.agm = icmp sgt i32 %.1664.lcssa, 0
  %i.agn = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.ago = sext i32 %.1660.lcssa to i64           ; 4 uses
  %i.agp = icmp sgt i32 %.1660.lcssa, 0
  %i.agq = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  br i1 %i.agd, label %.lr.ph2206.split.us, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.preheader

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.preheader: ; preds = %.lr.ph2206
  %wide.trip.count2466 = zext nneg i32 %.1668.lcssa to i64
  %wide.trip.count2472 = zext nneg i32 %.1668.lcssa to i64
  %wide.trip.count2478 = zext nneg i32 %.1664.lcssa to i64
  %wide.trip.count2484 = zext nneg i32 %.1664.lcssa to i64
  %wide.trip.count2490 = zext nneg i32 %.1660.lcssa to i64
  %wide.trip.count2496 = zext nneg i32 %.1660.lcssa to i64
  %i.agr = add nsw i64 %i.agc, -1
  %xtraiter3495 = and i64 %i.agc, 3
  %i.ags = and i32 %.1668.lcssa, 3
  %lcmp.mod3496.not = icmp eq i32 %i.ags, 0
  %i.agt = icmp ult i64 %i.agr, 3
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.lr.ph2206.split.us:                              ; preds = %.lr.ph2206
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #23
          to label %.noexc1103 unwind label %.loopexit.split-lp2086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jm:                                            ; preds = %bb.in
  %i.agu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ada, i64 noundef 40) #24
  br label %.body

bb.jn:                                            ; preds = %bb.iz
  %i.agv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aen, i64 noundef 40) #24
  br label %.body

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.preheader, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.sroa.01825.02203 = phi ptr [ %i.amm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %i.agb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %.loopexit2083, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

.noexc1103:                                       ; preds = %.lr.ph2206.split.us
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.agw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.age) #25
          to label %.noexc1104 unwind label %.loopexit.split-lp2086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1104:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.agw, ptr %62, align 8, !tbaa !96
  %i.agx = getelementptr inbounds nuw [32 x i8], ptr %i.agw, i64 %i.agc
  store ptr %i.agx, ptr %i.agf, align 8, !tbaa !95
  br i1 %lcmp.mod3496.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc1104, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ahb, %.lr.ph.i.i.i.i.i.prol ], [ %i.agw, %.noexc1104 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.aha, %.lr.ph.i.i.i.i.i.prol ], [ %i.agc, %.noexc1104 ]
  %prol.iter3497 = phi i64 [ %prol.iter3497.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc1104 ]
  %i.agy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.agy, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !62
  %i.agz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.agz, align 8, !tbaa !64
  store i8 0, ptr %i.agy, align 8, !tbaa !42
  %i.aha = add nsw i64 %.057.i.i.i.i.i.prol, -1   ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter3497.next = add i64 %prol.iter3497, 1 ; 2 uses
  %prol.iter3497.cmp.not = icmp eq i64 %prol.iter3497.next, %xtraiter3495
  br i1 %prol.iter3497.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !236

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc1104
  %.lcssa3463.unr = phi ptr [ poison, %.noexc1104 ], [ %i.ahb, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.agw, %.noexc1104 ], [ %i.ahb, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.agc, %.noexc1104 ], [ %i.aha, %.lr.ph.i.i.i.i.i.prol ]
  br i1 %i.agt, label %.loopexit2083, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aho, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ahn, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ahc, ptr %.08.i.i.i.i.i, align 8, !tbaa !62
  %i.ahd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ahd, align 8, !tbaa !64
  store i8 0, ptr %i.ahc, align 8, !tbaa !42
  %i.ahe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ahf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ahf, ptr %i.ahe, align 8, !tbaa !62
  %i.ahg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ahg, align 8, !tbaa !64
  store i8 0, ptr %i.ahf, align 8, !tbaa !42
  %i.ahh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ahi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ahi, ptr %i.ahh, align 8, !tbaa !62
  %i.ahj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ahj, align 8, !tbaa !64
  store i8 0, ptr %i.ahi, align 8, !tbaa !42
  %i.ahk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ahl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ahl, ptr %i.ahk, align 8, !tbaa !62
  %i.ahm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ahm, align 8, !tbaa !64
  store i8 0, ptr %i.ahl, align 8, !tbaa !42
  %i.ahn = add nsw i64 %.057.i.i.i.i.i, -4        ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ahn, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit2083, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.loopexit2083:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %.lcssa3463.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.aho, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.agg, align 8, !tbaa !94
  %i.ahp = load ptr, ptr %i.agh, align 8, !tbaa !52
  %.not1971 = icmp eq ptr %i.ahp, null
  br i1 %.not1971, label %.preheader2074, label %bb.jo

.preheader2074:                                   ; preds = %.loopexit2083
  br i1 %i.agj, label %.lr.ph2194, label %.loopexit2075

.lr.ph2194:                                       ; preds = %.preheader2074
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.01825.02203, i64 64
  br label %bb.jq

bb.jo:                                            ; preds = %.loopexit2083
  %i.ahr = load ptr, ptr %i.agi, align 8, !tbaa !49
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 72
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !143
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !146 ; 3 uses
  br i1 %i.agj, label %.lr.ph2192, label %.loopexit2075

.lr.ph2192:                                       ; preds = %bb.jo
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.01825.02203, i64 64
  br label %bb.jp

.loopexit.split-lp2086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph2206.split.us
  %lpad.loopexit.split-lp3461 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2086

bb.jp:                                            ; preds = %.lr.ph2192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %indvars.iv2462 = phi i64 [ 0, %.lr.ph2192 ], [ %indvars.iv.next2463, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 3 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv2462
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !100
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = load ptr, ptr %i.ahw, align 8, !tbaa !96
  %i.aib = getelementptr inbounds nuw [32 x i8], ptr %i.aia, i64 %i.ahz
  %i.aic = load ptr, ptr %62, align 8, !tbaa !96
  %i.aid = getelementptr inbounds nuw [32 x i8], ptr %i.aic, i64 %indvars.iv2462
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aid, ptr noundef nonnull align 8 dereferenceable(32) %i.aib)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.jp
  %indvars.iv.next2463 = add nuw nsw i64 %indvars.iv2462, 1 ; 2 uses
  %exitcond2467.not = icmp eq i64 %indvars.iv.next2463, %wide.trip.count2466
  br i1 %exitcond2467.not, label %.loopexit2075, label %bb.jp, !llvm.loop !237

bb.jq:                                            ; preds = %.lr.ph2194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1107
  %indvars.iv2468 = phi i64 [ 0, %.lr.ph2194 ], [ %indvars.iv.next2469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1107 ] ; 3 uses
  %i.aie = load ptr, ptr %i.ahq, align 8, !tbaa !96
  %i.aif = getelementptr inbounds nuw [32 x i8], ptr %i.aie, i64 %indvars.iv2468
  %i.aig = load ptr, ptr %62, align 8, !tbaa !96
  %i.aih = getelementptr inbounds nuw [32 x i8], ptr %i.aig, i64 %indvars.iv2468
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aih, ptr noundef nonnull align 8 dereferenceable(32) %i.aif)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1107 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1107: ; preds = %bb.jq
  %indvars.iv.next2469 = add nuw nsw i64 %indvars.iv2468, 1 ; 2 uses
  %exitcond2473.not = icmp eq i64 %indvars.iv.next2469, %wide.trip.count2472
  br i1 %exitcond2473.not, label %.loopexit2075, label %bb.jq, !llvm.loop !238

.loopexit2075:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1107, %bb.jo, %.preheader2074
  %.0624 = phi ptr [ null, %.preheader2074 ], [ %i.ahv, %bb.jo ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1107 ], [ %i.ahv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.01825.02203, i64 32 ; 3 uses
  %i.aij = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.agk, ptr noundef nonnull align 8 dereferenceable(32) %i.aii)
          to label %.noexc1108 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1108:                                       ; preds = %.loopexit2075
  %i.aik = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.aij, ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit: ; preds = %.noexc1108
  %i.ail = load ptr, ptr %62, align 8, !tbaa !96  ; 7 uses
  %i.aim = load ptr, ptr %i.agg, align 8, !tbaa !94 ; 2 uses
  %.not.i.i1110 = icmp eq ptr %i.aim, %i.ail
  br i1 %.not.i.i1110, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ais, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ail, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit ] ; 3 uses
  %i.ain = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.aip = icmp eq ptr %i.ain, %i.aio
  br i1 %i.aip, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aiq = load i64, ptr %i.aio, align 8, !tbaa !42
  %i.air = add i64 %i.aiq, 1
  call void @_ZdlPvm(ptr noundef %i.ain, i64 noundef %i.air) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ais = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i1111 = icmp eq ptr %i.ais, %i.aim
  br i1 %.not.i.i.i.i1111, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.ail, ptr %i.agg, align 8, !tbaa !94
  %.pre2682 = load ptr, ptr %62, align 8, !tbaa !96
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ait = phi ptr [ %i.ail, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit ], [ %.pre2682, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.aiu = ptrtoint ptr %i.ail to i64
  %i.aiv = ptrtoint ptr %i.ait to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv
  %i.aix = ashr exact i64 %i.aiw, 5               ; 3 uses
  %i.aiy = icmp ult i64 %i.aix, %i.agl
  br i1 %i.aiy, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.aiz = sub nuw nsw i64 %i.agl, %i.aix
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %62, i64 noundef %i.aiz)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.js:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.aja = icmp ugt i64 %i.aix, %i.agl
  br i1 %i.aja, label %bb.jt, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.jt:                                            ; preds = %bb.js
  %i.ajb = getelementptr inbounds nuw [32 x i8], ptr %i.ait, i64 %i.agl ; 3 uses
  %.not.i.i1112 = icmp eq ptr %i.ail, %i.ajb
  br i1 %.not.i.i1112, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i1113

.lr.ph.i.i.i.i1113:                               ; preds = %bb.jt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1116
  %.05.i.i.i.i1114 = phi ptr [ %i.ajh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1116 ], [ %i.ajb, %bb.jt ] ; 3 uses
  %i.ajc = load ptr, ptr %.05.i.i.i.i1114, align 8, !tbaa !41 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1114, i64 16 ; 2 uses
  %i.aje = icmp eq ptr %i.ajc, %i.ajd
  br i1 %i.aje, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1115: ; preds = %.lr.ph.i.i.i.i1113
  %i.ajf = load i64, ptr %i.ajd, align 8, !tbaa !42
  %i.ajg = add i64 %i.ajf, 1
  call void @_ZdlPvm(ptr noundef %i.ajc, i64 noundef %i.ajg) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1116

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1116: ; preds = %.lr.ph.i.i.i.i1113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1115
  %i.ajh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1114, i64 32 ; 2 uses
  %.not.i.i.i.i1117 = icmp eq ptr %i.ajh, %i.ail
  br i1 %.not.i.i.i.i1117, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1118, label %.lr.ph.i.i.i.i1113, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1118: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1116
  store ptr %i.ajb, ptr %i.agg, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1118, %bb.jt, %bb.js, %bb.jr
  %i.aji = load ptr, ptr %i.adb, align 8, !tbaa !52
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !146 ; 2 uses
  br i1 %i.agm, label %.lr.ph2196, label %._crit_edge2197

.lr.ph2196:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %.not944 = icmp eq ptr %.0624, null
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.01825.02203, i64 64 ; 2 uses
  br i1 %.not944, label %.lr.ph2196.split.us, label %.lr.ph2196.split

.lr.ph2196.split.us:                              ; preds = %.lr.ph2196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125.us
  %indvars.iv2480 = phi i64 [ %indvars.iv.next2481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125.us ], [ 0, %.lr.ph2196 ] ; 3 uses
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %indvars.iv2480
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !100
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = load ptr, ptr %i.ajl, align 8, !tbaa !96
  %i.ajq = getelementptr inbounds nuw [32 x i8], ptr %i.ajp, i64 %i.ajo
  %i.ajr = load ptr, ptr %62, align 8, !tbaa !96
  %i.ajs = getelementptr inbounds nuw [32 x i8], ptr %i.ajr, i64 %indvars.iv2480
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ajs, ptr noundef nonnull align 8 dereferenceable(32) %i.ajq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125.us unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125.us: ; preds = %.lr.ph2196.split.us
  %indvars.iv.next2481 = add nuw nsw i64 %indvars.iv2480, 1 ; 2 uses
  %exitcond2485.not = icmp eq i64 %indvars.iv.next2481, %wide.trip.count2484
  br i1 %exitcond2485.not, label %._crit_edge2197, label %.lr.ph2196.split.us, !llvm.loop !239

._crit_edge2197:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125.us, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.agn, ptr noundef nonnull align 8 dereferenceable(32) %i.aii)
          to label %.noexc1121 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1121:                                       ; preds = %._crit_edge2197
  %i.aju = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ajt, ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1123 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph2196.split:                                 ; preds = %.lr.ph2196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125
  %indvars.iv2474 = phi i64 [ %indvars.iv.next2475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125 ], [ 0, %.lr.ph2196 ] ; 3 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %indvars.iv2474
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !100
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = getelementptr inbounds [4 x i8], ptr %.0624, i64 %i.ajx
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !100
  %i.aka = sext i32 %i.ajz to i64
  %i.akb = load ptr, ptr %i.ajl, align 8, !tbaa !96
  %i.akc = getelementptr inbounds nuw [32 x i8], ptr %i.akb, i64 %i.aka
  %i.akd = load ptr, ptr %62, align 8, !tbaa !96
  %i.ake = getelementptr inbounds nuw [32 x i8], ptr %i.akd, i64 %indvars.iv2474
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ake, ptr noundef nonnull align 8 dereferenceable(32) %i.akc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1125: ; preds = %.lr.ph2196.split
  %indvars.iv.next2475 = add nuw nsw i64 %indvars.iv2474, 1 ; 2 uses
  %exitcond2479.not = icmp eq i64 %indvars.iv.next2475, %wide.trip.count2478
  br i1 %exitcond2479.not, label %._crit_edge2197, label %.lr.ph2196.split, !llvm.loop !239

_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1123: ; preds = %.noexc1121
  %i.akf = load ptr, ptr %62, align 8, !tbaa !96  ; 7 uses
  %i.akg = load ptr, ptr %i.agg, align 8, !tbaa !94 ; 2 uses
  %.not.i.i1128 = icmp eq ptr %i.akg, %i.akf
  br i1 %.not.i.i1128, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1136, label %.lr.ph.i.i.i.i1129

.lr.ph.i.i.i.i1129:                               ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1123, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1132
  %.05.i.i.i.i1130 = phi ptr [ %i.akm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1132 ], [ %i.akf, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1123 ] ; 3 uses
  %i.akh = load ptr, ptr %.05.i.i.i.i1130, align 8, !tbaa !41 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1130, i64 16 ; 2 uses
  %i.akj = icmp eq ptr %i.akh, %i.aki
  br i1 %i.akj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1131: ; preds = %.lr.ph.i.i.i.i1129
  %i.akk = load i64, ptr %i.aki, align 8, !tbaa !42
  %i.akl = add i64 %i.akk, 1
  call void @_ZdlPvm(ptr noundef %i.akh, i64 noundef %i.akl) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1132

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1132: ; preds = %.lr.ph.i.i.i.i1129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1131
  %i.akm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1130, i64 32 ; 2 uses
  %.not.i.i.i.i1133 = icmp eq ptr %i.akm, %i.akg
  br i1 %.not.i.i.i.i1133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1134, label %.lr.ph.i.i.i.i1129, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1134: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1132
  store ptr %i.akf, ptr %i.agg, align 8, !tbaa !94
  %.pre2683 = load ptr, ptr %62, align 8, !tbaa !96
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1136

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1136: ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1123, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1134
  %i.akn = phi ptr [ %i.akf, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1123 ], [ %.pre2683, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1134 ] ; 2 uses
  %i.ako = ptrtoint ptr %i.akf to i64
  %i.akp = ptrtoint ptr %i.akn to i64
  %i.akq = sub i64 %i.ako, %i.akp
  %i.akr = ashr exact i64 %i.akq, 5               ; 3 uses
  %i.aks = icmp ult i64 %i.akr, %i.ago
  br i1 %i.aks, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1136
  %i.akt = sub nuw nsw i64 %i.ago, %i.akr
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %62, i64 noundef %i.akt)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1146 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jv:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1136
  %i.aku = icmp ugt i64 %i.akr, %i.ago
  br i1 %i.aku, label %bb.jw, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1146

bb.jw:                                            ; preds = %bb.jv
  %i.akv = getelementptr inbounds nuw [32 x i8], ptr %i.akn, i64 %i.ago ; 3 uses
  %.not.i.i1137 = icmp eq ptr %i.akf, %i.akv
  br i1 %.not.i.i1137, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1146, label %.lr.ph.i.i.i.i1138

.lr.ph.i.i.i.i1138:                               ; preds = %bb.jw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1141
  %.05.i.i.i.i1139 = phi ptr [ %i.alb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1141 ], [ %i.akv, %bb.jw ] ; 3 uses
  %i.akw = load ptr, ptr %.05.i.i.i.i1139, align 8, !tbaa !41 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1139, i64 16 ; 2 uses
  %i.aky = icmp eq ptr %i.akw, %i.akx
  br i1 %i.aky, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1140: ; preds = %.lr.ph.i.i.i.i1138
  %i.akz = load i64, ptr %i.akx, align 8, !tbaa !42
  %i.ala = add i64 %i.akz, 1
  call void @_ZdlPvm(ptr noundef %i.akw, i64 noundef %i.ala) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1141

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1141: ; preds = %.lr.ph.i.i.i.i1138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1140
  %i.alb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1139, i64 32 ; 2 uses
  %.not.i.i.i.i1142 = icmp eq ptr %i.alb, %i.akf
  br i1 %.not.i.i.i.i1142, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1143, label %.lr.ph.i.i.i.i1138, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1143: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1141
  store ptr %i.akv, ptr %i.agg, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1146

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1146: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1143, %bb.jw, %bb.jv, %bb.ju
  %i.alc = load ptr, ptr %i.aeo, align 8, !tbaa !52
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 24
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !146 ; 2 uses
  br i1 %i.agp, label %.lr.ph2199, label %._crit_edge2200

.lr.ph2199:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1146
  %.not941 = icmp eq ptr %.0624, null
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.01825.02203, i64 64 ; 2 uses
  br i1 %.not941, label %.lr.ph2199.split.us, label %.lr.ph2199.split

.lr.ph2199.split.us:                              ; preds = %.lr.ph2199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151.us
  %indvars.iv2492 = phi i64 [ %indvars.iv.next2493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151.us ], [ 0, %.lr.ph2199 ] ; 3 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.ale, i64 %indvars.iv2492
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !100
  %i.ali = sext i32 %i.alh to i64
  %i.alj = load ptr, ptr %i.alf, align 8, !tbaa !96
  %i.alk = getelementptr inbounds nuw [32 x i8], ptr %i.alj, i64 %i.ali
  %i.all = load ptr, ptr %62, align 8, !tbaa !96
  %i.alm = getelementptr inbounds nuw [32 x i8], ptr %i.all, i64 %indvars.iv2492
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.alm, ptr noundef nonnull align 8 dereferenceable(32) %i.alk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151.us unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151.us: ; preds = %.lr.ph2199.split.us
  %indvars.iv.next2493 = add nuw nsw i64 %indvars.iv2492, 1 ; 2 uses
  %exitcond2497.not = icmp eq i64 %indvars.iv.next2493, %wide.trip.count2496
  br i1 %exitcond2497.not, label %._crit_edge2200, label %.lr.ph2199.split.us, !llvm.loop !240

._crit_edge2200:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151.us, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1146
  %i.aln = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.agq, ptr noundef nonnull align 8 dereferenceable(32) %i.aii)
          to label %.noexc1147 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1147:                                       ; preds = %._crit_edge2200
  %i.alo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.aln, ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1149 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph2199.split:                                 ; preds = %.lr.ph2199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151
  %indvars.iv2486 = phi i64 [ %indvars.iv.next2487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151 ], [ 0, %.lr.ph2199 ] ; 3 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ale, i64 %indvars.iv2486
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !100
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [4 x i8], ptr %.0624, i64 %i.alr
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !100
  %i.alu = sext i32 %i.alt to i64
  %i.alv = load ptr, ptr %i.alf, align 8, !tbaa !96
  %i.alw = getelementptr inbounds nuw [32 x i8], ptr %i.alv, i64 %i.alu
  %i.alx = load ptr, ptr %62, align 8, !tbaa !96
  %i.aly = getelementptr inbounds nuw [32 x i8], ptr %i.alx, i64 %indvars.iv2486
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aly, ptr noundef nonnull align 8 dereferenceable(32) %i.alw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151 unwind label %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jq, %.lr.ph2196.split, %.lr.ph2199.split.us, %.lr.ph2199.split, %.lr.ph2196.split.us, %bb.jp, %.noexc1147, %._crit_edge2200, %bb.ju, %.noexc1121, %._crit_edge2197, %bb.jr, %.noexc1108, %.loopexit2075
  %lpad.loopexit.split-lp3457 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %62) #22
  br label %.loopexit.split-lp2086

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1151: ; preds = %.lr.ph2199.split
  %indvars.iv.next2487 = add nuw nsw i64 %indvars.iv2486, 1 ; 2 uses
  %exitcond2491.not = icmp eq i64 %indvars.iv.next2487, %wide.trip.count2490
  br i1 %exitcond2491.not, label %._crit_edge2200, label %.lr.ph2199.split, !llvm.loop !240

_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1149: ; preds = %.noexc1147
  %i.alz = load ptr, ptr %62, align 8, !tbaa !96  ; 3 uses
  %i.ama = load ptr, ptr %i.agg, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.alz, %i.ama
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1149, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.amg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.alz, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1149 ] ; 3 uses
  %i.amb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.amd = icmp eq ptr %i.amb, %i.amc
  br i1 %i.amd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ame = load i64, ptr %i.amc, align 8, !tbaa !42
  %i.amf = add i64 %i.ame, 1
  call void @_ZdlPvm(ptr noundef %i.amb, i64 noundef %i.amf) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.amg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1154 = icmp eq ptr %i.amg, %i.ama
  br i1 %.not.i.i.i1154, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %62, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1149
  %i.amh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.alz, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1149 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.amh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.jx

bb.jx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ami = load ptr, ptr %i.agf, align 8, !tbaa !95
  %i.amj = ptrtoint ptr %i.ami to i64
  %i.amk = ptrtoint ptr %i.amh to i64
  %i.aml = sub i64 %i.amj, %i.amk
  call void @_ZdlPvm(ptr noundef nonnull %i.amh, i64 noundef %i.aml) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  %i.amm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.01825.02203) #27 ; 2 uses
  %.not1970 = icmp eq ptr %i.amm, %i.ie
  br i1 %.not1970, label %.loopexit2084, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, !llvm.loop !241

.loopexit.split-lp2086:                           ; preds = %.loopexit.split-lp2086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn947.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp3457, %.loopexit.split-lp2067.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3461, %.loopexit.split-lp2086.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  br label %.body

.loopexit2084:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.jl, %bb.jk
  %i.amn = load i64, ptr %i.in, align 8, !tbaa !121
  %.not868 = icmp eq i64 %i.amn, 0
  br i1 %.not868, label %.loopexit2055, label %bb.jy

bb.jy:                                            ; preds = %.loopexit2084
  %i.amo = load ptr, ptr %i.il, align 8, !tbaa !119 ; 2 uses
  %.not19722218 = icmp eq ptr %i.amo, %i.ij
  br i1 %.not19722218, label %.loopexit2055, label %.lr.ph2222

.lr.ph2222:                                       ; preds = %bb.jy
  %i.amp = sext i32 %.1668.lcssa to i64           ; 3 uses
  %i.amq = icmp slt i32 %.1668.lcssa, 0
  %.not.i.i.i.i1155 = icmp eq i32 %.1668.lcssa, 0
  %i.amr = shl nuw nsw i64 %i.amp, 2
  %i.ams = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 9 uses
  %i.amt = add nsw i64 %i.amp, -1                 ; 2 uses
  %i.amu = icmp eq i64 %i.amt, 0
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.amt, 2 ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 11 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.amy = icmp sgt i32 %.1668.lcssa, 0           ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.xx, i64 64
  %i.ana = sext i32 %.1664.lcssa to i64           ; 4 uses
  %i.anb = icmp sgt i32 %.1664.lcssa, 0
  %i.anc = getelementptr inbounds nuw i8, ptr %i.yy, i64 64
  %i.and = sext i32 %.1660.lcssa to i64           ; 4 uses
  %i.ane = icmp sgt i32 %.1660.lcssa, 0
  %i.anf = getelementptr inbounds nuw i8, ptr %i.zz, i64 64
  br i1 %i.amq, label %.lr.ph2222.split.us, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader: ; preds = %.lr.ph2222
  %wide.trip.count2502 = zext nneg i32 %.1668.lcssa to i64 ; 6 uses
  %wide.trip.count2508 = zext nneg i32 %.1668.lcssa to i64
  %wide.trip.count2514 = zext i32 %.1664.lcssa to i64 ; 4 uses
  %wide.trip.count2526 = zext i32 %.1660.lcssa to i64 ; 4 uses
  %xtraiter3498 = and i64 %wide.trip.count2502, 3 ; 3 uses
  %i.ang = icmp ult i32 %.1668.lcssa, 4
  %unroll_iter = and i64 %wide.trip.count2502, 2147483644
  %lcmp.mod3499.not = icmp eq i64 %xtraiter3498, 0
  %lcmp.mod3500 = icmp ne i64 %xtraiter3498, 0
  %min.iters.check3306 = icmp ult i32 %.1668.lcssa, 8
  %n.vec3310 = and i64 %wide.trip.count2502, 2147483640 ; 3 uses
  %cmp.n3317 = icmp eq i64 %n.vec3310, %wide.trip.count2502
  %xtraiter3501 = and i64 %wide.trip.count2502, 3 ; 2 uses
  %lcmp.mod3502.not = icmp eq i64 %xtraiter3501, 0
  %xtraiter3504 = and i64 %wide.trip.count2514, 3 ; 3 uses
  %i.anh = icmp ult i32 %.1664.lcssa, 4
  %unroll_iter3508 = and i64 %wide.trip.count2514, 2147483644
  %lcmp.mod3506.not = icmp eq i64 %xtraiter3504, 0
  %lcmp.mod3507 = icmp ne i64 %xtraiter3504, 0
  %xtraiter3510 = and i64 %wide.trip.count2514, 3 ; 3 uses
  %i.ani = icmp ult i32 %.1664.lcssa, 4
  %unroll_iter3514 = and i64 %wide.trip.count2514, 2147483644
  %lcmp.mod3512.not = icmp eq i64 %xtraiter3510, 0
  %lcmp.mod3513 = icmp ne i64 %xtraiter3510, 0
  %xtraiter3516 = and i64 %wide.trip.count2526, 3 ; 3 uses
  %i.anj = icmp ult i32 %.1660.lcssa, 4
  %unroll_iter3520 = and i64 %wide.trip.count2526, 2147483644
  %lcmp.mod3518.not = icmp eq i64 %xtraiter3516, 0
  %lcmp.mod3519 = icmp ne i64 %xtraiter3516, 0
  %xtraiter3522 = and i64 %wide.trip.count2526, 3 ; 3 uses
  %i.ank = icmp ult i32 %.1660.lcssa, 4
  %unroll_iter3526 = and i64 %wide.trip.count2526, 2147483644
  %lcmp.mod3524.not = icmp eq i64 %xtraiter3522, 0
  %lcmp.mod3525 = icmp ne i64 %xtraiter3522, 0
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.lr.ph2222.split.us:                              ; preds = %.lr.ph2222
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #23
          to label %.noexc1156 unwind label %.loopexit.split-lp2057.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit1181
  %.sroa.01812.02219 = phi ptr [ %i.azw, %_ZNSt6vectorIiSaIiEED2Ev.exit1181 ], [ %i.amo, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i1155, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.jz

end_hunk_0
begin_hunk_1_@_ZN5Ipopt11TNLPAdapter9GetSpacesERNS_8SmartPtrIKNS_11VectorSpaceEEES5_S5_S5_RNS1_IKNS_11MatrixSpaceEEES5_S9_S5_S9_S5_S9_S9_S9_RNS1_IKNS_14SymMatrixSpaceEEE:bb.a
  %.not19762254 = icmp eq ptr %i.bvd, %i.it
  br i1 %.not19762254, label %.loopexit2032, label %.lr.ph2257

.lr.ph2257:                                       ; preds = %bb.nh
  %i.bve = sext i32 %.4658 to i64                 ; 5 uses
  %i.bvf = icmp slt i32 %.4658, 0
  %.not.i.i.i.i1258 = icmp eq i32 %.4658, 0
  %i.bvg = shl nuw nsw i64 %i.bve, 5
  %i.bvh = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 11 uses
  %i.bvj = icmp sgt i32 %.4658, 0
  %i.bvk = getelementptr inbounds nuw i8, ptr %.sink3193, i64 16
  %i.bvl = sext i32 %.1652.lcssa to i64           ; 4 uses
  %i.bvm = icmp sgt i32 %.1652.lcssa, 0
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bpx, i64 16
  %i.bvo = sext i32 %.1648.lcssa to i64           ; 4 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.btb, i64 24
  %i.bvq = icmp sgt i32 %.1648.lcssa, 0
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bsa, i64 16
  %i.bvs = sext i32 %.1644.lcssa to i64           ; 4 uses
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bup, i64 24
  %i.bvu = icmp sgt i32 %.1644.lcssa, 0
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bto, i64 16
  br i1 %i.bvf, label %.lr.ph2257.split.us, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257.preheader

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257.preheader: ; preds = %.lr.ph2257
  %wide.trip.count2573 = zext nneg i32 %.4658 to i64
  %wide.trip.count2579 = zext nneg i32 %.1652.lcssa to i64
  %wide.trip.count2585 = zext nneg i32 %.1648.lcssa to i64
  %wide.trip.count2591 = zext nneg i32 %.1644.lcssa to i64
  %xtraiter3562 = and i64 %i.bve, 3
  %i.bvw = and i32 %.4658, 3
  %lcmp.mod3563.not = icmp eq i32 %i.bvw, 0
  %i.bvx = icmp ult i32 %.4658, 4
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257

.lr.ph2257.split.us:                              ; preds = %.lr.ph2257
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #23
          to label %.noexc1266 unwind label %.loopexit.split-lp2034.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ni:                                            ; preds = %bb.lt
  %i.bvy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bov, i64 noundef 40) #24
  br label %.body1221.thread

bb.nj:                                            ; preds = %bb.mg
  %i.bvz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bqy, i64 noundef 40) #24
  br label %.body1235

bb.nk:                                            ; preds = %bb.mf, %bb.mk, %bb.mo
  %i.bwa = landingpad { ptr, i32 }
          cleanup
  br label %.body1235

bb.nl:                                            ; preds = %bb.ms
  %i.bwb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_20ExpansionMatrixSpaceEED2Ev.exit1519

bb.nm:                                            ; preds = %bb.mt
  %i.bwc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.btb, i64 noundef 40) #24
  br label %_ZN5Ipopt8SmartPtrINS_20ExpansionMatrixSpaceEED2Ev.exit1519

bb.nn:                                            ; preds = %bb.mx
  %i.bwd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit1517

bb.no:                                            ; preds = %bb.nb
  %i.bwe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_20ExpansionMatrixSpaceEED2Ev.exit1515

bb.np:                                            ; preds = %bb.nc
  %i.bwf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bup, i64 noundef 40) #24
  br label %_ZN5Ipopt8SmartPtrINS_20ExpansionMatrixSpaceEED2Ev.exit1515

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257.preheader, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1357
  %.sroa.01748.02255 = phi ptr [ %i.ccg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1357 ], [ %i.bvd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %65, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i1258, label %._crit_edge2244, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i1259

.noexc1266:                                       ; preds = %.lr.ph2257.split.us
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i1259: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257
  %i.bwg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bvg) #25
          to label %.noexc1267 unwind label %.loopexit.split-lp2034.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1267:                                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i1259
  store ptr %i.bwg, ptr %65, align 8, !tbaa !96
  %i.bwh = getelementptr inbounds nuw [32 x i8], ptr %i.bwg, i64 %i.bve
  store ptr %i.bwh, ptr %i.bvh, align 8, !tbaa !95
  br i1 %lcmp.mod3563.not, label %.lr.ph.i.i.i.i.i1260.prol.loopexit, label %.lr.ph.i.i.i.i.i1260.prol

.lr.ph.i.i.i.i.i1260.prol:                        ; preds = %.noexc1267, %.lr.ph.i.i.i.i.i1260.prol
  %.08.i.i.i.i.i1261.prol = phi ptr [ %i.bwl, %.lr.ph.i.i.i.i.i1260.prol ], [ %i.bwg, %.noexc1267 ] ; 4 uses
  %.057.i.i.i.i.i1262.prol = phi i64 [ %i.bwk, %.lr.ph.i.i.i.i.i1260.prol ], [ %i.bve, %.noexc1267 ]
  %prol.iter3564 = phi i64 [ %prol.iter3564.next, %.lr.ph.i.i.i.i.i1260.prol ], [ 0, %.noexc1267 ]
  %i.bwi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261.prol, i64 16 ; 2 uses
  store ptr %i.bwi, ptr %.08.i.i.i.i.i1261.prol, align 8, !tbaa !62
  %i.bwj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261.prol, i64 8
  store i64 0, ptr %i.bwj, align 8, !tbaa !64
  store i8 0, ptr %i.bwi, align 8, !tbaa !42
  %i.bwk = add nsw i64 %.057.i.i.i.i.i1262.prol, -1 ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261.prol, i64 32 ; 3 uses
  %prol.iter3564.next = add i64 %prol.iter3564, 1 ; 2 uses
  %prol.iter3564.cmp.not = icmp eq i64 %prol.iter3564.next, %xtraiter3562
  br i1 %prol.iter3564.cmp.not, label %.lr.ph.i.i.i.i.i1260.prol.loopexit, label %.lr.ph.i.i.i.i.i1260.prol, !llvm.loop !266

.lr.ph.i.i.i.i.i1260.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i1260.prol, %.noexc1267
  %.lcssa.unr = phi ptr [ poison, %.noexc1267 ], [ %i.bwl, %.lr.ph.i.i.i.i.i1260.prol ]
  %.08.i.i.i.i.i1261.unr = phi ptr [ %i.bwg, %.noexc1267 ], [ %i.bwl, %.lr.ph.i.i.i.i.i1260.prol ]
  %.057.i.i.i.i.i1262.unr = phi i64 [ %i.bve, %.noexc1267 ], [ %i.bwk, %.lr.ph.i.i.i.i.i1260.prol ]
  br i1 %i.bvx, label %.loopexit2031, label %.lr.ph.i.i.i.i.i1260

.lr.ph.i.i.i.i.i1260:                             ; preds = %.lr.ph.i.i.i.i.i1260.prol.loopexit, %.lr.ph.i.i.i.i.i1260
  %.08.i.i.i.i.i1261 = phi ptr [ %i.bwy, %.lr.ph.i.i.i.i.i1260 ], [ %.08.i.i.i.i.i1261.unr, %.lr.ph.i.i.i.i.i1260.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i1262 = phi i64 [ %i.bwx, %.lr.ph.i.i.i.i.i1260 ], [ %.057.i.i.i.i.i1262.unr, %.lr.ph.i.i.i.i.i1260.prol.loopexit ]
  %i.bwm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 16 ; 2 uses
  store ptr %i.bwm, ptr %.08.i.i.i.i.i1261, align 8, !tbaa !62
  %i.bwn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 8
  store i64 0, ptr %i.bwn, align 8, !tbaa !64
  store i8 0, ptr %i.bwm, align 8, !tbaa !42
  %i.bwo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 32
  %i.bwp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 48 ; 2 uses
  store ptr %i.bwp, ptr %i.bwo, align 8, !tbaa !62
  %i.bwq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 40
  store i64 0, ptr %i.bwq, align 8, !tbaa !64
  store i8 0, ptr %i.bwp, align 8, !tbaa !42
  %i.bwr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 64
  %i.bws = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 80 ; 2 uses
  store ptr %i.bws, ptr %i.bwr, align 8, !tbaa !62
  %i.bwt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 72
  store i64 0, ptr %i.bwt, align 8, !tbaa !64
  store i8 0, ptr %i.bws, align 8, !tbaa !42
  %i.bwu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 96
  %i.bwv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 112 ; 2 uses
  store ptr %i.bwv, ptr %i.bwu, align 8, !tbaa !62
  %i.bww = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 104
  store i64 0, ptr %i.bww, align 8, !tbaa !64
  store i8 0, ptr %i.bwv, align 8, !tbaa !42
  %i.bwx = add nsw i64 %.057.i.i.i.i.i1262, -4    ; 2 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i1261, i64 128 ; 2 uses
  %.not.i.i.i.i.i1263.3 = icmp eq i64 %i.bwx, 0
  br i1 %.not.i.i.i.i.i1263.3, label %.loopexit2031, label %.lr.ph.i.i.i.i.i1260, !llvm.loop !9

.loopexit2031:                                    ; preds = %.lr.ph.i.i.i.i.i1260, %.lr.ph.i.i.i.i.i1260.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i1260.prol.loopexit ], [ %i.bwy, %.lr.ph.i.i.i.i.i1260 ]
  store ptr %.lcssa, ptr %i.bvi, align 8, !tbaa !94
  %i.bwz = load ptr, ptr %i.box, align 8, !tbaa !52
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 24
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !146
  br i1 %i.bvj, label %.lr.ph2243, label %._crit_edge2244

.lr.ph2243:                                       ; preds = %.loopexit2031
  %i.bxc = getelementptr inbounds nuw i8, ptr %.sroa.01748.02255, i64 64
  br label %bb.nq

._crit_edge2244:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1273, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257, %.loopexit2031
  %i.bxd = getelementptr inbounds nuw i8, ptr %.sroa.01748.02255, i64 32 ; 4 uses
  %i.bxe = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.bvk, ptr noundef nonnull align 8 dereferenceable(32) %i.bxd)
          to label %.noexc1269 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1269:                                       ; preds = %._crit_edge2244
  %i.bxf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bxe, ptr noundef nonnull align 8 dereferenceable(24) %65)
          to label %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1271 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp2034.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i1259, %.lr.ph2257.split.us
  %lpad.loopexit.split-lp3419 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2034

bb.nq:                                            ; preds = %.lr.ph2243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1273
  %indvars.iv2570 = phi i64 [ 0, %.lr.ph2243 ], [ %indvars.iv.next2571, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1273 ] ; 3 uses
  %i.bxg = getelementptr inbounds nuw [4 x i8], ptr %i.bxb, i64 %indvars.iv2570
  %i.bxh = load i32, ptr %i.bxg, align 4, !tbaa !100
  %i.bxi = sext i32 %i.bxh to i64
  %i.bxj = load ptr, ptr %i.bxc, align 8, !tbaa !96
  %i.bxk = getelementptr inbounds nuw [32 x i8], ptr %i.bxj, i64 %i.bxi
  %i.bxl = load ptr, ptr %65, align 8, !tbaa !96
  %i.bxm = getelementptr inbounds nuw [32 x i8], ptr %i.bxl, i64 %indvars.iv2570
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bxm, ptr noundef nonnull align 8 dereferenceable(32) %i.bxk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1273 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1273: ; preds = %bb.nq
  %indvars.iv.next2571 = add nuw nsw i64 %indvars.iv2570, 1 ; 2 uses
  %exitcond2574.not = icmp eq i64 %indvars.iv.next2571, %wide.trip.count2573
  br i1 %exitcond2574.not, label %._crit_edge2244, label %bb.nq, !llvm.loop !267

_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1271: ; preds = %.noexc1269
  %i.bxn = load ptr, ptr %65, align 8, !tbaa !96  ; 7 uses
  %i.bxo = load ptr, ptr %i.bvi, align 8, !tbaa !94 ; 2 uses
  %.not.i.i1274 = icmp eq ptr %i.bxo, %i.bxn
  br i1 %.not.i.i1274, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1282, label %.lr.ph.i.i.i.i1275

.lr.ph.i.i.i.i1275:                               ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1271, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1278
  %.05.i.i.i.i1276 = phi ptr [ %i.bxu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1278 ], [ %i.bxn, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1271 ] ; 3 uses
  %i.bxp = load ptr, ptr %.05.i.i.i.i1276, align 8, !tbaa !41 ; 2 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1276, i64 16 ; 2 uses
  %i.bxr = icmp eq ptr %i.bxp, %i.bxq
  br i1 %i.bxr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1277: ; preds = %.lr.ph.i.i.i.i1275
  %i.bxs = load i64, ptr %i.bxq, align 8, !tbaa !42
  %i.bxt = add i64 %i.bxs, 1
  call void @_ZdlPvm(ptr noundef %i.bxp, i64 noundef %i.bxt) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1278

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1278: ; preds = %.lr.ph.i.i.i.i1275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1277
  %i.bxu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1276, i64 32 ; 2 uses
  %.not.i.i.i.i1279 = icmp eq ptr %i.bxu, %i.bxo
  br i1 %.not.i.i.i.i1279, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1280, label %.lr.ph.i.i.i.i1275, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1280: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1278
  store ptr %i.bxn, ptr %i.bvi, align 8, !tbaa !94
  %.pre2685 = load ptr, ptr %65, align 8, !tbaa !96
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1282

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1282: ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1271, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1280
  %i.bxv = phi ptr [ %i.bxn, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1271 ], [ %.pre2685, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1280 ] ; 2 uses
  %i.bxw = ptrtoint ptr %i.bxn to i64
  %i.bxx = ptrtoint ptr %i.bxv to i64
  %i.bxy = sub i64 %i.bxw, %i.bxx
  %i.bxz = ashr exact i64 %i.bxy, 5               ; 3 uses
  %i.bya = icmp ult i64 %i.bxz, %i.bvl
  br i1 %i.bya, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1282
  %i.byb = sub nuw nsw i64 %i.bvl, %i.bxz
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef %i.byb)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1292 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ns:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1282
  %i.byc = icmp ugt i64 %i.bxz, %i.bvl
  br i1 %i.byc, label %bb.nt, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1292

bb.nt:                                            ; preds = %bb.ns
  %i.byd = getelementptr inbounds nuw [32 x i8], ptr %i.bxv, i64 %i.bvl ; 3 uses
  %.not.i.i1283 = icmp eq ptr %i.bxn, %i.byd
  br i1 %.not.i.i1283, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1292, label %.lr.ph.i.i.i.i1284

.lr.ph.i.i.i.i1284:                               ; preds = %bb.nt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1287
  %.05.i.i.i.i1285 = phi ptr [ %i.byj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1287 ], [ %i.byd, %bb.nt ] ; 3 uses
  %i.bye = load ptr, ptr %.05.i.i.i.i1285, align 8, !tbaa !41 ; 2 uses
  %i.byf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1285, i64 16 ; 2 uses
  %i.byg = icmp eq ptr %i.bye, %i.byf
  br i1 %i.byg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1286: ; preds = %.lr.ph.i.i.i.i1284
  %i.byh = load i64, ptr %i.byf, align 8, !tbaa !42
  %i.byi = add i64 %i.byh, 1
  call void @_ZdlPvm(ptr noundef %i.bye, i64 noundef %i.byi) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1287

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1287: ; preds = %.lr.ph.i.i.i.i1284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1286
  %i.byj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1285, i64 32 ; 2 uses
  %.not.i.i.i.i1288 = icmp eq ptr %i.byj, %i.bxn
  br i1 %.not.i.i.i.i1288, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1289, label %.lr.ph.i.i.i.i1284, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1289: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1287
  store ptr %i.byd, ptr %i.bvi, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1292

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1292: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1289, %bb.nt, %bb.ns, %bb.nr
  %i.byk = load ptr, ptr %i.bra, align 8, !tbaa !52
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 24
  %i.bym = load ptr, ptr %i.byl, align 8, !tbaa !146 ; 3 uses
  br i1 %i.bvm, label %.lr.ph2246, label %._crit_edge2247

.lr.ph2246:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1292
  %i.byn = getelementptr inbounds nuw i8, ptr %.sroa.01748.02255, i64 64
  br label %bb.nu

._crit_edge2247:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1297, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1292
  %i.byo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.bvn, ptr noundef nonnull align 8 dereferenceable(32) %i.bxd)
          to label %.noexc1293 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1293:                                       ; preds = %._crit_edge2247
  %i.byp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.byo, ptr noundef nonnull align 8 dereferenceable(24) %65)
          to label %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1295 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.nu:                                            ; preds = %.lr.ph2246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1297
  %indvars.iv2575 = phi i64 [ 0, %.lr.ph2246 ], [ %indvars.iv.next2576, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1297 ] ; 3 uses
  %i.byq = getelementptr inbounds nuw [4 x i8], ptr %i.bym, i64 %indvars.iv2575
  %i.byr = load i32, ptr %i.byq, align 4, !tbaa !100
  %i.bys = sext i32 %i.byr to i64
  %i.byt = load ptr, ptr %i.byn, align 8, !tbaa !96
  %i.byu = getelementptr inbounds nuw [32 x i8], ptr %i.byt, i64 %i.bys
  %i.byv = load ptr, ptr %65, align 8, !tbaa !96
  %i.byw = getelementptr inbounds nuw [32 x i8], ptr %i.byv, i64 %indvars.iv2575
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.byw, ptr noundef nonnull align 8 dereferenceable(32) %i.byu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1297 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1297: ; preds = %bb.nu
  %indvars.iv.next2576 = add nuw nsw i64 %indvars.iv2575, 1 ; 2 uses
  %exitcond2580.not = icmp eq i64 %indvars.iv.next2576, %wide.trip.count2579
  br i1 %exitcond2580.not, label %._crit_edge2247, label %bb.nu, !llvm.loop !268

_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1295: ; preds = %.noexc1293
  %i.byx = load ptr, ptr %65, align 8, !tbaa !96  ; 7 uses
  %i.byy = load ptr, ptr %i.bvi, align 8, !tbaa !94 ; 2 uses
  %.not.i.i1298 = icmp eq ptr %i.byy, %i.byx
  br i1 %.not.i.i1298, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1306, label %.lr.ph.i.i.i.i1299

.lr.ph.i.i.i.i1299:                               ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1295, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1302
  %.05.i.i.i.i1300 = phi ptr [ %i.bze, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1302 ], [ %i.byx, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1295 ] ; 3 uses
  %i.byz = load ptr, ptr %.05.i.i.i.i1300, align 8, !tbaa !41 ; 2 uses
  %i.bza = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1300, i64 16 ; 2 uses
  %i.bzb = icmp eq ptr %i.byz, %i.bza
  br i1 %i.bzb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1301: ; preds = %.lr.ph.i.i.i.i1299
  %i.bzc = load i64, ptr %i.bza, align 8, !tbaa !42
  %i.bzd = add i64 %i.bzc, 1
  call void @_ZdlPvm(ptr noundef %i.byz, i64 noundef %i.bzd) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1302

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1302: ; preds = %.lr.ph.i.i.i.i1299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1301
  %i.bze = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1300, i64 32 ; 2 uses
  %.not.i.i.i.i1303 = icmp eq ptr %i.bze, %i.byy
  br i1 %.not.i.i.i.i1303, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1304, label %.lr.ph.i.i.i.i1299, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1304: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1302
  store ptr %i.byx, ptr %i.bvi, align 8, !tbaa !94
  %.pre2686 = load ptr, ptr %65, align 8, !tbaa !96
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1306

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1306: ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1295, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1304
  %i.bzf = phi ptr [ %i.byx, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1295 ], [ %.pre2686, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1304 ] ; 2 uses
  %i.bzg = ptrtoint ptr %i.byx to i64
  %i.bzh = ptrtoint ptr %i.bzf to i64
  %i.bzi = sub i64 %i.bzg, %i.bzh
  %i.bzj = ashr exact i64 %i.bzi, 5               ; 3 uses
  %i.bzk = icmp ult i64 %i.bzj, %i.bvo
  br i1 %i.bzk, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1306
  %i.bzl = sub nuw nsw i64 %i.bvo, %i.bzj
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef %i.bzl)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1316 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nw:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1306
  %i.bzm = icmp ugt i64 %i.bzj, %i.bvo
  br i1 %i.bzm, label %bb.nx, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1316

bb.nx:                                            ; preds = %bb.nw
  %i.bzn = getelementptr inbounds nuw [32 x i8], ptr %i.bzf, i64 %i.bvo ; 3 uses
  %.not.i.i1307 = icmp eq ptr %i.byx, %i.bzn
  br i1 %.not.i.i1307, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1316, label %.lr.ph.i.i.i.i1308

.lr.ph.i.i.i.i1308:                               ; preds = %bb.nx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1311
  %.05.i.i.i.i1309 = phi ptr [ %i.bzt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1311 ], [ %i.bzn, %bb.nx ] ; 3 uses
  %i.bzo = load ptr, ptr %.05.i.i.i.i1309, align 8, !tbaa !41 ; 2 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1309, i64 16 ; 2 uses
  %i.bzq = icmp eq ptr %i.bzo, %i.bzp
  br i1 %i.bzq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1310: ; preds = %.lr.ph.i.i.i.i1308
  %i.bzr = load i64, ptr %i.bzp, align 8, !tbaa !42
  %i.bzs = add i64 %i.bzr, 1
  call void @_ZdlPvm(ptr noundef %i.bzo, i64 noundef %i.bzs) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1311

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1311: ; preds = %.lr.ph.i.i.i.i1308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1310
  %i.bzt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1309, i64 32 ; 2 uses
  %.not.i.i.i.i1312 = icmp eq ptr %i.bzt, %i.byx
  br i1 %.not.i.i.i.i1312, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1313, label %.lr.ph.i.i.i.i1308, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1313: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1311
  store ptr %i.bzn, ptr %i.bvi, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1316

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1316: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1313, %bb.nx, %bb.nw, %bb.nv
  %i.bzu = load ptr, ptr %i.bvp, align 8, !tbaa !146
  br i1 %i.bvq, label %.lr.ph2249, label %._crit_edge2250

.lr.ph2249:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1316
  %i.bzv = getelementptr inbounds nuw i8, ptr %.sroa.01748.02255, i64 64
  br label %bb.ny

._crit_edge2250:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1321, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1316
  %i.bzw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.bvr, ptr noundef nonnull align 8 dereferenceable(32) %i.bxd)
          to label %.noexc1317 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1317:                                       ; preds = %._crit_edge2250
  %i.bzx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bzw, ptr noundef nonnull align 8 dereferenceable(24) %65)
          to label %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1319 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ny:                                            ; preds = %.lr.ph2249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1321
  %indvars.iv2581 = phi i64 [ 0, %.lr.ph2249 ], [ %indvars.iv.next2582, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1321 ] ; 3 uses
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.bzu, i64 %indvars.iv2581
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !100
  %i.caa = sext i32 %i.bzz to i64
  %i.cab = getelementptr inbounds [4 x i8], ptr %i.bym, i64 %i.caa
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !100
  %i.cad = sext i32 %i.cac to i64
  %i.cae = load ptr, ptr %i.bzv, align 8, !tbaa !96
  %i.caf = getelementptr inbounds nuw [32 x i8], ptr %i.cae, i64 %i.cad
  %i.cag = load ptr, ptr %65, align 8, !tbaa !96
  %i.cah = getelementptr inbounds nuw [32 x i8], ptr %i.cag, i64 %indvars.iv2581
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cah, ptr noundef nonnull align 8 dereferenceable(32) %i.caf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1321 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1321: ; preds = %bb.ny
  %indvars.iv.next2582 = add nuw nsw i64 %indvars.iv2581, 1 ; 2 uses
  %exitcond2586.not = icmp eq i64 %indvars.iv.next2582, %wide.trip.count2585
  br i1 %exitcond2586.not, label %._crit_edge2250, label %bb.ny, !llvm.loop !269

_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1319: ; preds = %.noexc1317
  %i.cai = load ptr, ptr %65, align 8, !tbaa !96  ; 7 uses
  %i.caj = load ptr, ptr %i.bvi, align 8, !tbaa !94 ; 2 uses
  %.not.i.i1322 = icmp eq ptr %i.caj, %i.cai
  br i1 %.not.i.i1322, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1330, label %.lr.ph.i.i.i.i1323

.lr.ph.i.i.i.i1323:                               ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1319, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1326
  %.05.i.i.i.i1324 = phi ptr [ %i.cap, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1326 ], [ %i.cai, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1319 ] ; 3 uses
  %i.cak = load ptr, ptr %.05.i.i.i.i1324, align 8, !tbaa !41 ; 2 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1324, i64 16 ; 2 uses
  %i.cam = icmp eq ptr %i.cak, %i.cal
  br i1 %i.cam, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1325: ; preds = %.lr.ph.i.i.i.i1323
  %i.can = load i64, ptr %i.cal, align 8, !tbaa !42
  %i.cao = add i64 %i.can, 1
  call void @_ZdlPvm(ptr noundef %i.cak, i64 noundef %i.cao) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1326

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1326: ; preds = %.lr.ph.i.i.i.i1323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1325
  %i.cap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1324, i64 32 ; 2 uses
  %.not.i.i.i.i1327 = icmp eq ptr %i.cap, %i.caj
  br i1 %.not.i.i.i.i1327, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1328, label %.lr.ph.i.i.i.i1323, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1328: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1326
  store ptr %i.cai, ptr %i.bvi, align 8, !tbaa !94
  %.pre2687 = load ptr, ptr %65, align 8, !tbaa !96
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1330

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1330: ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1319, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1328
  %i.caq = phi ptr [ %i.cai, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1319 ], [ %.pre2687, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1328 ] ; 2 uses
  %i.car = ptrtoint ptr %i.cai to i64
  %i.cas = ptrtoint ptr %i.caq to i64
  %i.cat = sub i64 %i.car, %i.cas
  %i.cau = ashr exact i64 %i.cat, 5               ; 3 uses
  %i.cav = icmp ult i64 %i.cau, %i.bvs
  br i1 %i.cav, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1330
  %i.caw = sub nuw nsw i64 %i.bvs, %i.cau
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef %i.caw)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1340 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.oa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit1330
  %i.cax = icmp ugt i64 %i.cau, %i.bvs
  br i1 %i.cax, label %bb.ob, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1340

bb.ob:                                            ; preds = %bb.oa
  %i.cay = getelementptr inbounds nuw [32 x i8], ptr %i.caq, i64 %i.bvs ; 3 uses
  %.not.i.i1331 = icmp eq ptr %i.cai, %i.cay
  br i1 %.not.i.i1331, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1340, label %.lr.ph.i.i.i.i1332

.lr.ph.i.i.i.i1332:                               ; preds = %bb.ob, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1335
  %.05.i.i.i.i1333 = phi ptr [ %i.cbe, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1335 ], [ %i.cay, %bb.ob ] ; 3 uses
  %i.caz = load ptr, ptr %.05.i.i.i.i1333, align 8, !tbaa !41 ; 2 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1333, i64 16 ; 2 uses
  %i.cbb = icmp eq ptr %i.caz, %i.cba
  br i1 %i.cbb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1334: ; preds = %.lr.ph.i.i.i.i1332
  %i.cbc = load i64, ptr %i.cba, align 8, !tbaa !42
  %i.cbd = add i64 %i.cbc, 1
  call void @_ZdlPvm(ptr noundef %i.caz, i64 noundef %i.cbd) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1335

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1335: ; preds = %.lr.ph.i.i.i.i1332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1334
  %i.cbe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1333, i64 32 ; 2 uses
  %.not.i.i.i.i1336 = icmp eq ptr %i.cbe, %i.cai
  br i1 %.not.i.i.i.i1336, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1337, label %.lr.ph.i.i.i.i1332, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1337: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1335
  store ptr %i.cay, ptr %i.bvi, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1340

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1340: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1337, %bb.ob, %bb.oa, %bb.nz
  %i.cbf = load ptr, ptr %i.bvt, align 8, !tbaa !146
  br i1 %i.bvu, label %.lr.ph2252, label %._crit_edge2253

.lr.ph2252:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1340
  %i.cbg = getelementptr inbounds nuw i8, ptr %.sroa.01748.02255, i64 64
  br label %bb.oc

._crit_edge2253:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1345, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit1340
  %i.cbh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.bvv, ptr noundef nonnull align 8 dereferenceable(32) %i.bxd)
          to label %.noexc1341 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1341:                                       ; preds = %._crit_edge2253
  %i.cbi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cbh, ptr noundef nonnull align 8 dereferenceable(24) %65)
          to label %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1343 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.oc:                                            ; preds = %.lr.ph2252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1345
  %indvars.iv2587 = phi i64 [ 0, %.lr.ph2252 ], [ %indvars.iv.next2588, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1345 ] ; 3 uses
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %i.cbf, i64 %indvars.iv2587
  %i.cbk = load i32, ptr %i.cbj, align 4, !tbaa !100
  %i.cbl = sext i32 %i.cbk to i64
  %i.cbm = getelementptr inbounds [4 x i8], ptr %i.bym, i64 %i.cbl
  %i.cbn = load i32, ptr %i.cbm, align 4, !tbaa !100
  %i.cbo = sext i32 %i.cbn to i64
  %i.cbp = load ptr, ptr %i.cbg, align 8, !tbaa !96
  %i.cbq = getelementptr inbounds nuw [32 x i8], ptr %i.cbp, i64 %i.cbo
  %i.cbr = load ptr, ptr %65, align 8, !tbaa !96
  %i.cbs = getelementptr inbounds nuw [32 x i8], ptr %i.cbr, i64 %indvars.iv2587
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cbs, ptr noundef nonnull align 8 dereferenceable(32) %i.cbq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1345 unwind label %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1345: ; preds = %bb.oc
  %indvars.iv.next2588 = add nuw nsw i64 %indvars.iv2587, 1 ; 2 uses
  %exitcond2592.not = icmp eq i64 %indvars.iv.next2588, %wide.trip.count2591
  br i1 %exitcond2592.not, label %._crit_edge2253, label %bb.oc, !llvm.loop !270

.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.nu, %bb.ny, %bb.oc, %bb.nq, %.noexc1341, %._crit_edge2253, %bb.nz, %.noexc1317, %._crit_edge2250, %bb.nv, %.noexc1293, %._crit_edge2247, %bb.nr, %.noexc1269, %._crit_edge2244
  %lpad.loopexit.split-lp3416 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %65) #22
  br label %.loopexit.split-lp2034

_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1343: ; preds = %.noexc1341
  %i.cbt = load ptr, ptr %65, align 8, !tbaa !96  ; 3 uses
  %i.cbu = load ptr, ptr %i.bvi, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i1346 = icmp eq ptr %i.cbt, %i.cbu
  br i1 %.not4.i.i.i1346, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1354, label %.lr.ph.i.i.i1347

.lr.ph.i.i.i1347:                                 ; preds = %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1343, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1350
  %.05.i.i.i1348 = phi ptr [ %i.cca, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1350 ], [ %i.cbt, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1343 ] ; 3 uses
  %i.cbv = load ptr, ptr %.05.i.i.i1348, align 8, !tbaa !41 ; 2 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %.05.i.i.i1348, i64 16 ; 2 uses
  %i.cbx = icmp eq ptr %i.cbv, %i.cbw
  br i1 %i.cbx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1349: ; preds = %.lr.ph.i.i.i1347
  %i.cby = load i64, ptr %i.cbw, align 8, !tbaa !42
  %i.cbz = add i64 %i.cby, 1
  call void @_ZdlPvm(ptr noundef %i.cbv, i64 noundef %i.cbz) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1350

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1350: ; preds = %.lr.ph.i.i.i1347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1349
  %i.cca = getelementptr inbounds nuw i8, ptr %.05.i.i.i1348, i64 32 ; 2 uses
  %.not.i.i.i1351 = icmp eq ptr %i.cca, %i.cbu
  br i1 %.not.i.i.i1351, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1352, label %.lr.ph.i.i.i1347, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1352: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1350
  %.pr.i1353 = load ptr, ptr %65, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1354

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1354: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1352, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1343
  %i.ccb = phi ptr [ %.pr.i1353, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1352 ], [ %i.cbt, %_ZN5Ipopt16DenseVectorSpace17SetStringMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE.exit1343 ] ; 3 uses
  %.not.i.i1.i1355 = icmp eq ptr %i.ccb, null
  br i1 %.not.i.i1.i1355, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1357, label %bb.od

bb.od:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1354
  %i.ccc = load ptr, ptr %i.bvh, align 8, !tbaa !95
  %i.ccd = ptrtoint ptr %i.ccc to i64
  %i.cce = ptrtoint ptr %i.ccb to i64
  %i.ccf = sub i64 %i.ccd, %i.cce
  call void @_ZdlPvm(ptr noundef nonnull %i.ccb, i64 noundef %i.ccf) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1357

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1357: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1354, %bb.od
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  %i.ccg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.01748.02255) #27 ; 2 uses
  %.not1976 = icmp eq ptr %i.ccg, %i.it
  br i1 %.not1976, label %.loopexit2032, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i1257, !llvm.loop !271

.loopexit.split-lp2034:                           ; preds = %.loopexit.split-lp2034.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn915.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp3416, %.loopexit.split-lp2018.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3419, %.loopexit.split-lp2034.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br label %.loopexit.split-lp

.loopexit2032:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1357, %bb.nh, %bb.ng
  %i.cch = load i64, ptr %i.jc, align 8, !tbaa !121
  %.not871 = icmp eq i64 %i.cch, 0
  br i1 %.not871, label %.loopexit2006, label %bb.oe

bb.oe:                                            ; preds = %.loopexit2032
  %i.cci = load ptr, ptr %i.ja, align 8, !tbaa !119 ; 2 uses
  %.not19772272 = icmp eq ptr %i.cci, %i.iy
  br i1 %.not19772272, label %.loopexit2006, label %.lr.ph2275

.lr.ph2275:                                       ; preds = %bb.oe
  %i.ccj = sext i32 %.4658 to i64                 ; 3 uses
  %i.cck = icmp slt i32 %.4658, 0
  %.not.i.i.i.i1359 = icmp eq i32 %.4658, 0
  %i.ccl = shl nuw nsw i64 %i.ccj, 2
  %i.ccm = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 12 uses
  %i.ccn = add nsw i64 %i.ccj, -1                 ; 2 uses
  %i.cco = icmp eq i64 %i.ccn, 0
  %.idx.i.i.i.i.i.i.i1361 = shl nuw nsw i64 %i.ccn, 2 ; 2 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 16 uses
  %i.ccq = icmp sgt i32 %.4658, 0
  %i.ccr = getelementptr inbounds nuw i8, ptr %.sink3193, i64 64
  %i.ccs = sext i32 %.1652.lcssa to i64           ; 4 uses
  %i.cct = icmp sgt i32 %.1652.lcssa, 0
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.bpx, i64 64
  %i.ccv = sext i32 %.1648.lcssa to i64           ; 4 uses
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.btb, i64 24
  %i.ccx = icmp sgt i32 %.1648.lcssa, 0
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.bsa, i64 64
  %i.ccz = sext i32 %.1644.lcssa to i64           ; 4 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %i.bup, i64 24
  %i.cdb = icmp sgt i32 %.1644.lcssa, 0
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.bto, i64 64
  br i1 %i.cck, label %.lr.ph2275.split.us, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i1358.preheader

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i1358.preheader: ; preds = %.lr.ph2275
  %wide.trip.count2596 = zext nneg i32 %.4658 to i64 ; 2 uses
  %wide.trip.count2602 = zext i32 %.1652.lcssa to i64 ; 2 uses
  %wide.trip.count2608 = zext i32 %.1648.lcssa to i64 ; 2 uses
  %wide.trip.count2614 = zext i32 %.1644.lcssa to i64 ; 2 uses
  %xtraiter3566 = and i64 %wide.trip.count2596, 3 ; 3 uses
  %i.cdd = icmp ult i32 %.4658, 4
  %unroll_iter3570 = and i64 %wide.trip.count2596, 2147483644
  %lcmp.mod3568.not = icmp eq i64 %xtraiter3566, 0
  %lcmp.mod3569 = icmp ne i64 %xtraiter3566, 0
  %xtraiter3573 = and i64 %wide.trip.count2602, 3 ; 3 uses
  %i.cde = icmp ult i32 %.1652.lcssa, 4
  %unroll_iter3577 = and i64 %wide.trip.count2602, 2147483644
  %lcmp.mod3575.not = icmp eq i64 %xtraiter3573, 0
  %lcmp.mod3576 = icmp ne i64 %xtraiter3573, 0
  %xtraiter3580 = and i64 %wide.trip.count2608, 3 ; 3 uses
  %i.cdf = icmp ult i32 %.1648.lcssa, 4
  %unroll_iter3584 = and i64 %wide.trip.count2608, 2147483644
  %lcmp.mod3582.not = icmp eq i64 %xtraiter3580, 0
  %lcmp.mod3583 = icmp ne i64 %xtraiter3580, 0
  %xtraiter3587 = and i64 %wide.trip.count2614, 3 ; 3 uses
  %i.cdg = icmp ult i32 %.1644.lcssa, 4
  %unroll_iter3591 = and i64 %wide.trip.count2614, 2147483644
  %lcmp.mod3589.not = icmp eq i64 %xtraiter3587, 0
  %lcmp.mod3590 = icmp ne i64 %xtraiter3587, 0
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i1358

.lr.ph2275.split.us:                              ; preds = %.lr.ph2275
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #23
          to label %.noexc1364 unwind label %.loopexit.split-lp2008.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i1358: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i1358.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit1403
  %.sroa.01736.02273 = phi ptr [ %i.coy, %_ZNSt6vectorIiSaIiEED2Ev.exit1403 ], [ %i.cci, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i1358.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i1359, label %._crit_edge2262, label %bb.of

.noexc1364:                                       ; preds = %.lr.ph2275.split.us
  unreachable

bb.of:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i1358
  %i.cdh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ccl) #25
          to label %.noexc1365 unwind label %.loopexit.split-lp2008.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc1365:                                       ; preds = %bb.of
  store ptr %i.cdh, ptr %66, align 8, !tbaa !45
  %i.cdi = getelementptr inbounds nuw [4 x i8], ptr %i.cdh, i64 %i.ccj
  store ptr %i.cdi, ptr %i.ccm, align 8, !tbaa !46
  store i32 0, ptr %i.cdh, align 4, !tbaa !100
  %i.cdj = getelementptr i8, ptr %i.cdh, i64 4    ; 3 uses
  br i1 %i.cco, label %bb.og, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1360

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1360: ; preds = %.noexc1365
  call void @llvm.memset.p0.i64(ptr align 4 %i.cdj, i8 0, i64 %.idx.i.i.i.i.i.i.i1361, i1 false), !tbaa !100
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 %.idx.i.i.i.i.i.i.i1361
  br label %bb.og

bb.og:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1360, %.noexc1365
  %.0.i.i.i.i.i1362 = phi ptr [ %i.cdk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i1360 ], [ %i.cdj, %.noexc1365 ]
  store ptr %.0.i.i.i.i.i1362, ptr %i.ccp, align 8, !tbaa !108
  %i.cdl = load ptr, ptr %i.box, align 8, !tbaa !52
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdl, i64 24
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !146 ; 5 uses
  br i1 %i.ccq, label %.lr.ph2261, label %._crit_edge2262
end_hunk_1
