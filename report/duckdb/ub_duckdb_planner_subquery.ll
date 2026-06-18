inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
  %i.agz = trunc i64 %i.agx to i32                ; 2 uses
  br i1 %i.agy, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  store i32 0, ptr %i.agw, align 8, !tbaa !510
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agv, i64 12
  store i32 0, ptr %i.aha, align 4, !tbaa !512
  %i.ahb = load ptr, ptr %i.agv, align 8, !tbaa !67
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8
  call void %i.ahd(ptr noundef nonnull align 8 dereferenceable(16) %i.agv) #22, !inline_history !513
  %i.ahe = load ptr, ptr %i.agv, align 8, !tbaa !67
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 24
  %i.ahg = load ptr, ptr %i.ahf, align 8
  call void %i.ahg(ptr noundef nonnull align 8 dereferenceable(16) %i.agv) #22, !inline_history !513
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

bb.gl:                                            ; preds = %bb.gj
  %i.ahh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !205
  %.not.i.i.i.i.i1157 = icmp eq i8 %i.ahh, 0
  br i1 %.not.i.i.i.i.i1157, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ahi = add nsw i32 %i.agz, -1
  store i32 %i.ahi, ptr %i.agw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.gn:                                            ; preds = %bb.gl
  %i.ahj = atomicrmw volatile add ptr %i.agw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.gn, %bb.gm
  %.0.i.i.i.i.i.i = phi i32 [ %i.agz, %bb.gm ], [ %i.ahj, %bb.gn ]
  %i.ahk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ahk, label %bb.go, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !206

bb.go:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agv) #22, !inline_history !514
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1155, %bb.gk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.go
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %56) #22, !inline_history !514
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #22
  %i.ahl = add nuw i64 %storemerge8093514, 1      ; 2 uses
  %i.ahm = load ptr, ptr %i.adx, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !42
  %i.ahp = load ptr, ptr %i.ahm, align 8, !tbaa !45 ; 2 uses
  %i.ahq = ptrtoint ptr %i.aho to i64
  %i.ahr = ptrtoint ptr %i.ahp to i64
  %i.ahs = sub i64 %i.ahq, %i.ahr
  %i.aht = sdiv exact i64 %i.ahs, 80
  %i.ahu = icmp ult i64 %i.ahl, %i.aht
  br i1 %i.ahu, label %bb.gd, label %.loopexit3054, !llvm.loop !515

bb.gp:                                            ; preds = %bb.gd
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gq:                                            ; preds = %bb.ge
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1169

bb.gr:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1111
  %i.ahx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i1158.a = icmp eq ptr %i.aeo, null
  br i1 %.not.i1158.a, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1160, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1159.a

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1159.a: ; preds = %bb.gr
  %i.ahy = load ptr, ptr %i.aeo, align 8, !tbaa !67
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8
  call void %i.aia(ptr noundef nonnull align 8 dereferenceable(88) %i.aeo) #22, !inline_history !229
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1160

bb.gs:                                            ; preds = %.noexc1124
  %i.aib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit1166

.loopexit3055:                                    ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1130
  %lpad.loopexit3057 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

.loopexit.split-lp3056:                           ; preds = %bb.gh
  %lpad.loopexit.split-lp3058 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.gt:                                            ; preds = %.loopexit.split-lp3056, %.loopexit3055
  %lpad.phi3059 = phi { ptr, i32 } [ %lpad.loopexit3057, %.loopexit3055 ], [ %lpad.loopexit.split-lp3058, %.loopexit.split-lp3056 ] ; 2 uses
  %.not.i1161.a = icmp eq ptr %i.aes, null
  br i1 %.not.i1161.a, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1163, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1162

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1162: ; preds = %bb.gt
  %i.aic = load ptr, ptr %i.aes, align 8, !tbaa !67
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aie = load ptr, ptr %i.aid, align 8
  call void %i.aie(ptr noundef nonnull align 8 dereferenceable(88) %i.aes) #22, !inline_history !229
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1163

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1163: ; preds = %bb.gt, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1162
  %i.aif = load ptr, ptr %60, align 8, !tbaa !493 ; 3 uses
  %.not.i1164.a = icmp eq ptr %i.aif, null
  br i1 %.not.i1164.a, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit1166, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i1165

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i1165: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1163
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !67
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  %i.aii = load ptr, ptr %i.aih, align 8
  call void %i.aii(ptr noundef nonnull align 8 dereferenceable(512) %i.aif) #22, !inline_history !507
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit1166

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit1166: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i1165, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1163, %bb.gs
  %.pn810 = phi { ptr, i32 } [ %i.aib, %bb.gs ], [ %lpad.phi3059, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1163 ], [ %lpad.phi3059, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i1165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1160

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1160: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1159.a, %bb.gr, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit1166
  %.pn810.pn = phi { ptr, i32 } [ %.pn810, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit1166 ], [ %i.ahx, %bb.gr ], [ %i.ahx, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i1159.a ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %59) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  %i.aij = load ptr, ptr %57, align 8, !tbaa !379 ; 3 uses
  %.not.i1167 = icmp eq ptr %i.aij, null
  br i1 %.not.i1167, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1169, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1168

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1168: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1160
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !67
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8
  call void %i.aim(ptr noundef nonnull align 8 dereferenceable(112) %i.aij) #22, !inline_history !381
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1169

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1169: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1168, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1160, %bb.gq
  %.pn810.pn.pn = phi { ptr, i32 } [ %i.ahw, %bb.gq ], [ %.pn810.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit1160 ], [ %.pn810.pn, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i1168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %56) #22
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1169
  %.pn810.pn.pn.pn = phi { ptr, i32 } [ %.pn810.pn.pn, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1169 ], [ %i.ahv, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #22
  br label %bb.kb

._crit_edge3513.thread:                           ; preds = %bb.fi, %._crit_edge3513
  %i.ain = phi i64 [ %i.yp, %._crit_edge3513 ], [ 0, %bb.fi ]
  %.not355644614464 = phi i1 [ false, %._crit_edge3513 ], [ true, %bb.fi ]
  %i.aio = getelementptr inbounds nuw i8, ptr %i.wn, i64 104
  %i.aip = load i64, ptr %i.aio, align 8, !tbaa !516
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.wn, i64 128
  %i.air = getelementptr inbounds nuw i8, ptr %i.wn, i64 136
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !209
  %i.ait = load ptr, ptr %i.aiq, align 8, !tbaa !212
  %i.aiu = ptrtoint ptr %i.ais to i64
  %i.aiv = ptrtoint ptr %i.ait to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv
  %i.aix = ashr exact i64 %i.aiw, 3               ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !49, !nonnull !50, !align !51 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !42
  %i.ajc = load ptr, ptr %i.aiz, align 8, !tbaa !45
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = ptrtoint ptr %i.ajc to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  %.neg = sdiv exact i64 %i.ajf, -80
  %i.ajg = add nsw i64 %.neg, %i.aix
  br label %.loopexit3054

.loopexit3054:                                    ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit, %bb.gc, %._crit_edge3513.thread
  %i.ajh = phi i64 [ %i.ain, %._crit_edge3513.thread ], [ %i.yp, %bb.gc ], [ %i.yp, %_ZN6duckdb17AggregateFunctionD2Ev.exit ] ; 3 uses
  %.not355644614463 = phi i1 [ %.not355644614464, %._crit_edge3513.thread ], [ false, %bb.gc ], [ false, %_ZN6duckdb17AggregateFunctionD2Ev.exit ]
  %.0526 = phi i64 [ %i.aix, %._crit_edge3513.thread ], [ %i.adw, %bb.gc ], [ %i.adw, %_ZN6duckdb17AggregateFunctionD2Ev.exit ]
  %.0525 = phi i64 [ %i.ajg, %._crit_edge3513.thread ], [ %i.ado, %bb.gc ], [ %i.ado, %_ZN6duckdb17AggregateFunctionD2Ev.exit ] ; 3 uses
  %.0524 = phi i64 [ %i.aip, %._crit_edge3513.thread ], [ %i.adg, %bb.gc ], [ %i.adg, %_ZN6duckdb17AggregateFunctionD2Ev.exit ] ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.wn, i64 152
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !454 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.wn, i64 160
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !454 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajj, %i.ajl
  br i1 %i.ajm, label %bb.gv, label %.preheader3053

bb.gv:                                            ; preds = %.loopexit3054
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.wn, i64 128
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.wn, i64 136
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !209
  %i.ajq = load ptr, ptr %i.ajn, align 8, !tbaa !212
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = ptrtoint ptr %i.ajq to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs
  %i.aju = ashr exact i64 %i.ajt, 3
  %i.ajv = icmp eq i64 %i.aju, %i.ajh
  br i1 %i.ajv, label %bb.gx, label %bb.jz

.preheader3053:                                   ; preds = %.loopexit3054, %.preheader3053
  %.05273518 = phi i1 [ %spec.select, %.preheader3053 ], [ false, %.loopexit3054 ]
  %.sroa.02849.03517 = phi ptr [ %i.ajz, %.preheader3053 ], [ %i.ajj, %.loopexit3054 ] ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.02849.03517, i64 40
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !475
  %i.ajy = icmp eq i64 %i.ajx, %i.ajh
  %spec.select = select i1 %i.ajy, i1 true, i1 %.05273518 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.02849.03517, i64 48 ; 2 uses
  %.not3045 = icmp eq ptr %i.ajz, %i.ajl
  br i1 %.not3045, label %bb.gw, label %.preheader3053

bb.gw:                                            ; preds = %.preheader3053
  br i1 %spec.select, label %bb.gx, label %bb.jz

bb.gx:                                            ; preds = %bb.gv, %bb.gw
  %197 = getelementptr inbounds nuw i8, ptr %1, i64 241
  %198 = load i8, ptr %197, align 1, !tbaa !40, !range !101, !noundef !50
  %199 = trunc nuw i8 %198 to i1
  %.not870 = xor i1 %199, true
  %200 = load i8, ptr %3, align 1, !range !101
  %201 = trunc nuw i8 %200 to i1
  %or.cond872 = select i1 %.not870, i1 %201, i1 false
  %spec.store.select = select i1 %or.cond872, i8 3, i8 1 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.wn, i64 40 ; 4 uses
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !264 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.wn, i64 48 ; 3 uses
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !264 ; 2 uses
  %.not30463519 = icmp eq ptr %i.akb, %i.akd
  br i1 %.not30463519, label %.critedge874._crit_edge, label %.lr.ph3522

bb.gy:                                            ; preds = %.critedge874
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.02844.03520, i64 8 ; 2 uses
  %.not3046 = icmp eq ptr %i.ake, %i.akd
  br i1 %.not3046, label %.critedge874._crit_edge, label %.lr.ph3522

.lr.ph3522:                                       ; preds = %bb.gx, %bb.gy
  %.sroa.02844.03520 = phi ptr [ %i.ake, %bb.gy ], [ %i.akb, %bb.gx ] ; 2 uses
  %i.akf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02844.03520)
          to label %bb.gz unwind label %bb.hb

bb.gz:                                            ; preds = %.lr.ph3522
  %i.akg = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundAggregateExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.akf)
          to label %bb.ha unwind label %bb.hb     ; 2 uses

bb.ha:                                            ; preds = %bb.gz
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !67
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 112
  %i.akj = load ptr, ptr %i.aki, align 8
  %i.akk = invoke noundef zeroext i1 %i.akj(ptr noundef nonnull align 8 dereferenceable(512) %i.akg)
          to label %.critedge874 unwind label %bb.hb

.critedge874:                                     ; preds = %bb.ha
  br i1 %i.akk, label %bb.gy, label %.critedge874._crit_edge

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %.lr.ph3522
  %i.akl = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

.critedge874._crit_edge:                          ; preds = %bb.gy, %.critedge874, %bb.gx
  %.02931 = phi i8 [ %spec.store.select, %bb.gx ], [ 1, %.critedge874 ], [ %spec.store.select, %bb.gy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.akm = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #25
          to label %.noexc1170 unwind label %bb.ht ; 3 uses

.noexc1170:                                       ; preds = %.critedge874._crit_edge
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.akm, i8 noundef zeroext %.02931, i8 noundef zeroext 52)
          to label %bb.hd unwind label %bb.hc, !noalias !517

bb.hc:                                            ; preds = %.noexc1170
  %i.akn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.akm) #23, !noalias !517
  br label %.body1171

bb.hd:                                            ; preds = %.noexc1170
  store ptr %i.akm, ptr %61, align 8, !tbaa !401, !alias.scope !517
  %i.ako = load ptr, ptr %1, align 8, !tbaa !103, !nonnull !50, !align !51
  %i.akp = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %i.ako)
          to label %bb.he unwind label %bb.hu     ; 3 uses

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  %i.akq = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25
          to label %.noexc1175 unwind label %bb.hv ; 11 uses

.noexc1175:                                       ; preds = %bb.he
  %i.akr = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %i.akr)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i1174 unwind label %bb.hf, !noalias !520

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i1174: ; preds = %.noexc1175
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(136) %i.akq, i8 noundef zeroext 27)
          to label %bb.hi unwind label %bb.hg, !noalias !520

bb.hf:                                            ; preds = %.noexc1175
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hg:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i1174
  %i.akt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %28) #22, !noalias !520
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.pn.i1173 = phi { ptr, i32 } [ %i.akt, %bb.hg ], [ %i.aks, %bb.hf ]
  call void @_ZdlPv(ptr noundef nonnull %i.akq) #23, !noalias !520
  br label %.body1176

bb.hi:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i1174
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb15LogicalDelimGetE, i64 16), ptr %i.akq, align 8, !tbaa !67, !noalias !520
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akq, i64 104
  store i64 %i.akp, ptr %i.aku, align 8, !tbaa !395, !noalias !520
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akq, i64 112
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akq, i64 128
  %i.akx = load <2 x ptr>, ptr %28, align 16, !tbaa !397, !noalias !520
  store <2 x ptr> %i.akx, ptr %i.akv, align 8, !tbaa !397, !noalias !520
  %i.aky = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.akz = load ptr, ptr %i.aky, align 16, !tbaa !48, !noalias !520
  store ptr %i.akz, ptr %i.akw, align 8, !tbaa !48, !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.not.i.i.i.i.i1179 = icmp eq ptr %.sroa.02920.6, null
  br i1 %.not.i.i.i.i.i1179, label %_ZNSt10unique_ptrIN6duckdb15LogicalDelimGetESt14default_deleteIS1_EED2Ev.exit1184, label %_ZNKSt14default_deleteIN6duckdb15LogicalDelimGetEEclEPS1_.exit.i.i.i.i.i1180

_ZNKSt14default_deleteIN6duckdb15LogicalDelimGetEEclEPS1_.exit.i.i.i.i.i1180: ; preds = %bb.hi
  %i.ala = load ptr, ptr %.sroa.02920.6, align 8, !tbaa !67
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.alc = load ptr, ptr %i.alb, align 8
  call void %i.alc(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.02920.6) #22, !inline_history !523
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalDelimGetESt14default_deleteIS1_EED2Ev.exit1184

_ZNSt10unique_ptrIN6duckdb15LogicalDelimGetESt14default_deleteIS1_EED2Ev.exit1184: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalDelimGetEEclEPS1_.exit.i.i.i.i.i1180, %bb.hi
  %i.ald = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %bb.hj unwind label %bb.hu     ; 3 uses

bb.hj:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalDelimGetESt14default_deleteIS1_EED2Ev.exit1184
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 16 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ald, i64 24 ; 3 uses
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !342 ; 6 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ald, i64 32 ; 2 uses
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !413
  %.not.i.i1185 = icmp eq ptr %i.alg, %i.ali
  br i1 %.not.i.i1185, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.alj = ptrtoint ptr %i.akq to i64
  store i64 %i.alj, ptr %i.alg, align 8, !tbaa !65
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  store ptr %i.alk, ptr %i.alf, align 8, !tbaa !342
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1203

bb.hl:                                            ; preds = %bb.hj
  %i.all = load ptr, ptr %i.ale, align 8, !tbaa !343 ; 10 uses
  %i.alm = ptrtoint ptr %i.alg to i64             ; 3 uses
  %i.aln = ptrtoint ptr %i.all to i64             ; 3 uses
  %i.alo = sub i64 %i.alm, %i.aln                 ; 3 uses
  %i.alp = icmp eq i64 %i.alo, 9223372036854775800
  br i1 %i.alp, label %bb.hm, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1186

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
          to label %.noexc1198 unwind label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1222

.noexc1198:                                       ; preds = %bb.hm
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1186: ; preds = %bb.hl
  %i.alq = ashr exact i64 %i.alo, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1187 = call i64 @llvm.umax.i64(i64 %i.alq, i64 1)
  %i.alr = add nsw i64 %.sroa.speculated.i.i.i.i1187, %i.alq ; 2 uses
  %i.als = icmp ult i64 %i.alr, %i.alq
  %i.alt = call i64 @llvm.umin.i64(i64 %i.alr, i64 1152921504606846975)
  %i.alu = select i1 %i.als, i64 1152921504606846975, i64 %i.alt ; 3 uses
  %.not.i.i.i.i1188 = icmp ne i64 %i.alu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1188)
  %i.alv = shl nuw nsw i64 %i.alu, 3
  %i.alw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alv) #25
          to label %.noexc1199 unwind label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1222 ; 10 uses

.noexc1199:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1186
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.alo
  %i.aly = ptrtoint ptr %i.akq to i64
  store i64 %i.aly, ptr %i.alx, align 8, !tbaa !65
  %.not10.i.i.i.i.i.i.i1189 = icmp eq ptr %i.all, %i.alg
  br i1 %.not10.i.i.i.i.i.i.i1189, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1194, label %.lr.ph.i.i.i.i.i.i.i1190.preheader

.lr.ph.i.i.i.i.i.i.i1190.preheader:               ; preds = %.noexc1199
  %i.alz = sub i64 %i.alm, %i.aln
  %i.ama = add i64 %i.alz, -8                     ; 2 uses
  %i.amb = lshr i64 %i.ama, 3
  %i.amc = add nuw nsw i64 %i.amb, 1              ; 2 uses
  %min.iters.check5504 = icmp ult i64 %i.ama, 152
  br i1 %min.iters.check5504, label %.lr.ph.i.i.i.i.i.i.i1190.preheader5596, label %vector.memcheck5497

vector.memcheck5497:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1190.preheader
  %i.amd = add i64 %i.alm, -8
  %i.ame = sub i64 %i.amd, %i.aln
  %i.amf = and i64 %i.ame, -8
  %i.amg = add i64 %i.amf, 8                      ; 2 uses
  %scevgep5498 = getelementptr i8, ptr %i.alw, i64 %i.amg
  %scevgep5499 = getelementptr i8, ptr %i.all, i64 %i.amg
  %bound05500 = icmp ult ptr %i.alw, %scevgep5499
  %bound15501 = icmp ult ptr %i.all, %scevgep5498
  %found.conflict5502 = and i1 %bound05500, %bound15501
  br i1 %found.conflict5502, label %.lr.ph.i.i.i.i.i.i.i1190.preheader5596, label %vector.ph5505

vector.ph5505:                                    ; preds = %vector.memcheck5497
  %n.vec5507 = and i64 %i.amc, 4611686018427387900 ; 3 uses
  %i.amh = shl i64 %n.vec5507, 3                  ; 2 uses
  %i.ami = getelementptr i8, ptr %i.alw, i64 %i.amh ; 2 uses
  %i.amj = getelementptr i8, ptr %i.all, i64 %i.amh
  br label %vector.body5508

vector.body5508:                                  ; preds = %vector.body5508, %vector.ph5505
  %index5509 = phi i64 [ 0, %vector.ph5505 ], [ %index.next5514, %vector.body5508 ] ; 2 uses
  %i.amk = shl i64 %index5509, 3                  ; 2 uses
  %next.gep5510 = getelementptr i8, ptr %i.alw, i64 %i.amk ; 2 uses
  %next.gep5511 = getelementptr i8, ptr %i.all, i64 %i.amk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.aml = getelementptr i8, ptr %next.gep5511, i64 16
  %wide.load5512 = load <2 x i64>, ptr %next.gep5511, align 8, !tbaa !65, !alias.scope !529, !noalias !524
  %wide.load5513 = load <2 x i64>, ptr %i.aml, align 8, !tbaa !65, !alias.scope !529, !noalias !524
  %i.amm = getelementptr i8, ptr %next.gep5510, i64 16
  store <2 x i64> %wide.load5512, ptr %next.gep5510, align 8, !tbaa !65, !alias.scope !532, !noalias !529
  store <2 x i64> %wide.load5513, ptr %i.amm, align 8, !tbaa !65, !alias.scope !532, !noalias !529
  %i.amn = getelementptr i8, ptr %next.gep5511, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5511, align 8, !tbaa !65, !alias.scope !529, !noalias !524
  store <2 x ptr> splat (ptr null), ptr %i.amn, align 8, !tbaa !65, !alias.scope !529, !noalias !524
  %index.next5514 = add nuw i64 %index5509, 4     ; 2 uses
  %i.amo = icmp eq i64 %index.next5514, %n.vec5507
  br i1 %i.amo, label %middle.block5515, label %vector.body5508, !llvm.loop !534

middle.block5515:                                 ; preds = %vector.body5508
  %cmp.n5516 = icmp eq i64 %i.amc, %n.vec5507
  br i1 %cmp.n5516, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1194, label %.lr.ph.i.i.i.i.i.i.i1190.preheader5596

.lr.ph.i.i.i.i.i.i.i1190.preheader5596:           ; preds = %vector.memcheck5497, %.lr.ph.i.i.i.i.i.i.i1190.preheader, %middle.block5515
  %.012.i.i.i.i.i.i.i1191.ph = phi ptr [ %i.alw, %vector.memcheck5497 ], [ %i.alw, %.lr.ph.i.i.i.i.i.i.i1190.preheader ], [ %i.ami, %middle.block5515 ]
  %.0911.i.i.i.i.i.i.i1192.ph = phi ptr [ %i.all, %vector.memcheck5497 ], [ %i.all, %.lr.ph.i.i.i.i.i.i.i1190.preheader ], [ %i.amj, %middle.block5515 ]
  br label %.lr.ph.i.i.i.i.i.i.i1190

.lr.ph.i.i.i.i.i.i.i1190:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1190.preheader5596, %.lr.ph.i.i.i.i.i.i.i1190
  %.012.i.i.i.i.i.i.i1191 = phi ptr [ %i.amr, %.lr.ph.i.i.i.i.i.i.i1190 ], [ %.012.i.i.i.i.i.i.i1191.ph, %.lr.ph.i.i.i.i.i.i.i1190.preheader5596 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1192 = phi ptr [ %i.amq, %.lr.ph.i.i.i.i.i.i.i1190 ], [ %.0911.i.i.i.i.i.i.i1192.ph, %.lr.ph.i.i.i.i.i.i.i1190.preheader5596 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.amp = load i64, ptr %.0911.i.i.i.i.i.i.i1192, align 8, !tbaa !65, !alias.scope !527, !noalias !524
  store i64 %i.amp, ptr %.012.i.i.i.i.i.i.i1191, align 8, !tbaa !65, !alias.scope !524, !noalias !527
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1192, align 8, !tbaa !65, !alias.scope !527, !noalias !524
  %i.amq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 8 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1193 = icmp eq ptr %i.amq, %i.alg
  br i1 %.not.i.i.i.i.i.i.i1193, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1194, label %.lr.ph.i.i.i.i.i.i.i1190, !llvm.loop !535

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1194: ; preds = %.lr.ph.i.i.i.i.i.i.i1190, %middle.block5515, %.noexc1199
  %.0.lcssa.i.i.i.i.i.i.i1195 = phi ptr [ %i.alw, %.noexc1199 ], [ %i.ami, %middle.block5515 ], [ %i.amr, %.lr.ph.i.i.i.i.i.i.i1190 ]
  %i.ams = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1195, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
  br i1 %i.auk, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  store i32 0, ptr %i.aui, align 8, !tbaa !510
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auh, i64 12
  store i32 0, ptr %i.aum, align 4, !tbaa !512
  %i.aun = load ptr, ptr %i.auh, align 8, !tbaa !67
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 16
  %i.aup = load ptr, ptr %i.auo, align 8
  call void %i.aup(ptr noundef nonnull align 8 dereferenceable(16) %i.auh) #22, !inline_history !513
  %i.auq = load ptr, ptr %i.auh, align 8, !tbaa !67
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 24
  %i.aus = load ptr, ptr %i.aur, align 8
  call void %i.aus(ptr noundef nonnull align 8 dereferenceable(16) %i.auh) #22, !inline_history !513
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit1278

bb.jg:                                            ; preds = %bb.je
  %i.aut = load i8, ptr @__libc_single_threaded, align 1, !tbaa !205
  %.not.i.i.i.i.i1275 = icmp eq i8 %i.aut, 0
  br i1 %.not.i.i.i.i.i1275, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.auu = add nsw i32 %i.aul, -1
  store i32 %i.auu, ptr %i.aui, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1276

bb.ji:                                            ; preds = %bb.jg
  %i.auv = atomicrmw volatile add ptr %i.aui, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1276

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1276: ; preds = %bb.ji, %bb.jh
  %.0.i.i.i.i.i.i1277 = phi i32 [ %i.aul, %bb.jh ], [ %i.auv, %bb.ji ]
  %i.auw = icmp eq i32 %.0.i.i.i.i.i.i1277, 1
  br i1 %i.auw, label %bb.jj, label %_ZN6duckdb17AggregateFunctionD2Ev.exit1278, !prof !206

bb.jj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1276
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.auh) #22, !inline_history !514
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit1278

_ZN6duckdb17AggregateFunctionD2Ev.exit1278:       ; preds = %bb.jd, %bb.jf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1276, %bb.jj
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %67) #22, !inline_history !514
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  br label %.critedge876

.critedge876:                                     ; preds = %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit, %_ZN6duckdb17AggregateFunctionD2Ev.exit1278
  %i.aux = phi i1 [ %.ph, %_ZN6duckdb17AggregateFunctionD2Ev.exit1278 ], [ true, %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %66, align 8, !tbaa !67
  %i.auy = load ptr, ptr %i.ape, align 8, !tbaa !509 ; 8 uses
  %.not.i.i.i.i1279 = icmp eq ptr %i.auy, null
  br i1 %.not.i.i.i.i1279, label %_ZN6duckdb17AggregateFunctionD2Ev.exit1283, label %bb.jk

bb.jk:                                            ; preds = %.critedge876
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 8 ; 4 uses
  %i.ava = load atomic i64, ptr %i.auz acquire, align 8 ; 2 uses
  %i.avb = icmp eq i64 %i.ava, 4294967297
  %i.avc = trunc i64 %i.ava to i32                ; 2 uses
  br i1 %i.avb, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  store i32 0, ptr %i.auz, align 8, !tbaa !510
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auy, i64 12
  store i32 0, ptr %i.avd, align 4, !tbaa !512
  %i.ave = load ptr, ptr %i.auy, align 8, !tbaa !67
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 16
  %i.avg = load ptr, ptr %i.avf, align 8
  call void %i.avg(ptr noundef nonnull align 8 dereferenceable(16) %i.auy) #22, !inline_history !513
  %i.avh = load ptr, ptr %i.auy, align 8, !tbaa !67
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 24
  %i.avj = load ptr, ptr %i.avi, align 8
  call void %i.avj(ptr noundef nonnull align 8 dereferenceable(16) %i.auy) #22, !inline_history !513
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit1283

bb.jm:                                            ; preds = %bb.jk
  %i.avk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !205
  %.not.i.i.i.i.i1280 = icmp eq i8 %i.avk, 0
  br i1 %.not.i.i.i.i.i1280, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.avl = add nsw i32 %i.avc, -1
  store i32 %i.avl, ptr %i.auz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1281

bb.jo:                                            ; preds = %bb.jm
  %i.avm = atomicrmw volatile add ptr %i.auz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1281

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1281: ; preds = %bb.jo, %bb.jn
  %.0.i.i.i.i.i.i1282 = phi i32 [ %i.avc, %bb.jn ], [ %i.avm, %bb.jo ]
  %i.avn = icmp eq i32 %.0.i.i.i.i.i.i1282, 1
  br i1 %i.avn, label %bb.jp, label %_ZN6duckdb17AggregateFunctionD2Ev.exit1283, !prof !206

bb.jp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1281
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.auy) #22, !inline_history !514
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit1283

_ZN6duckdb17AggregateFunctionD2Ev.exit1283:       ; preds = %.critedge876, %bb.jl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1281, %bb.jp
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %66) #22, !inline_history !514
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br i1 %i.aux, label %bb.jq, label %bb.jw

bb.jq:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit1283
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  %i.avo = load i64, ptr %i.apg, align 8, !tbaa !477
  store i64 %i.avo, ptr %68, align 8, !tbaa !352
  store i64 %.05303528, ptr %i.aph, align 8, !tbaa !354
  %i.avp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_mESaIS5_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.apf, ptr noundef nonnull align 8 dereferenceable(16) %68)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixEOS1_.exit unwind label %bb.jv

_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixEOS1_.exit: ; preds = %bb.jq
  store i64 %.05303528, ptr %i.avp, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %bb.jw

bb.jr:                                            ; preds = %bb.iq, %bb.ip, %bb.io
  %i.avq = landingpad { ptr, i32 }
          cleanup
  br label %.body1176

bb.js:                                            ; preds = %bb.ir
  %i.avr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.jt:                                            ; preds = %_ZNK6duckdb17AggregateFunctioneqERKS0_.exit.thread
  %i.avs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %66) #22
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %.pn817 = phi { ptr, i32 } [ %i.avs, %bb.jt ], [ %i.avr, %bb.js ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %bb.jy

bb.jv:                                            ; preds = %bb.jq
  %i.avt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %bb.jy

bb.jw:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingEmNS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_mEEEixEOS1_.exit, %_ZN6duckdb17AggregateFunctionD2Ev.exit1283
  %i.avu = load ptr, ptr %65, align 8, !tbaa !241 ; 4 uses
  %i.avv = load ptr, ptr %i.api, align 8, !tbaa !47 ; 2 uses
  %.not4.i.i.i1285 = icmp eq ptr %i.avu, %i.avv
  br i1 %.not4.i.i.i1285, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1286

.lr.ph.i.i.i1286:                                 ; preds = %bb.jw, %.lr.ph.i.i.i1286
  %.05.i.i.i1287 = phi ptr [ %i.avw, %.lr.ph.i.i.i1286 ], [ %i.avu, %bb.jw ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i1287) #22
  %i.avw = getelementptr inbounds nuw i8, ptr %.05.i.i.i1287, i64 24 ; 2 uses
  %.not.i.i.i1288 = icmp eq ptr %i.avw, %i.avv
  br i1 %.not.i.i.i1288, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1286, !llvm.loop !242

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i1286, %bb.jw
  %.not.i.i1.i1290 = icmp eq ptr %i.avu, null
  br i1 %.not.i.i1.i1290, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.jx

bb.jx:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.avu) #23
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  %i.avx = add nuw i64 %.05303528, 1              ; 2 uses
  %i.avy = load ptr, ptr %i.akc, align 8, !tbaa !209
  %i.avz = load ptr, ptr %i.aka, align 8, !tbaa !212
  %i.awa = ptrtoint ptr %i.avy to i64
  %i.awb = ptrtoint ptr %i.avz to i64
  %i.awc = sub i64 %i.awa, %i.awb
  %i.awd = ashr exact i64 %i.awc, 3
  %i.awe = icmp ult i64 %i.avx, %i.awd
  br i1 %i.awe, label %bb.io, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit1272, !llvm.loop !572

bb.jy:                                            ; preds = %bb.jv, %bb.ju
  %.pn819 = phi { ptr, i32 } [ %i.avt, %bb.jv ], [ %.pn817, %bb.ju ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %65) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br label %.body1176

.body1176:                                        ; preds = %bb.ij, %_ZN6duckdb13JoinConditionD2Ev.exit1269, %bb.hv, %bb.hh, %bb.jr, %bb.jy, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1222, %bb.hu
  %.sroa.02920.11 = phi ptr [ null, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1222 ], [ %.sroa.02920.10, %bb.hu ], [ %.sroa.02920.6, %bb.hv ], [ null, %bb.jy ], [ null, %bb.jr ], [ %.sroa.02920.6, %bb.hh ], [ null, %_ZN6duckdb13JoinConditionD2Ev.exit1269 ], [ null, %bb.ij ] ; 2 uses
  %.pn824.pn.pn = phi { ptr, i32 } [ %i.apm, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1222 ], [ %i.apk, %bb.hu ], [ %i.apl, %bb.hv ], [ %.pn819, %bb.jy ], [ %i.avq, %bb.jr ], [ %.pn.i1173, %bb.hh ], [ %.pn824, %_ZN6duckdb13JoinConditionD2Ev.exit1269 ], [ %i.arv, %bb.ij ] ; 2 uses
  %i.awf = load ptr, ptr %61, align 8, !tbaa !401 ; 3 uses
  %.not.i1291 = icmp eq ptr %i.awf, null
  br i1 %.not.i1291, label %.body1171, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i1292

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i1292: ; preds = %.body1176
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !67
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 8
  %i.awi = load ptr, ptr %i.awh, align 8
  call void %i.awi(ptr noundef nonnull align 8 dereferenceable(280) %i.awf) #22, !inline_history !438
  br label %.body1171

.body1171:                                        ; preds = %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i1292, %.body1176, %bb.ht, %bb.hc
  %.sroa.02920.12 = phi ptr [ %.sroa.02920.6, %bb.ht ], [ %.sroa.02920.6, %bb.hc ], [ %.sroa.02920.11, %.body1176 ], [ %.sroa.02920.11, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i1292 ]
  %.pn824.pn.pn.pn = phi { ptr, i32 } [ %i.apj, %bb.ht ], [ %i.akn, %bb.hc ], [ %.pn824.pn.pn, %.body1176 ], [ %.pn824.pn.pn, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i1292 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %bb.kb

bb.jz:                                            ; preds = %bb.gv, %bb.gw
  store i64 %.0524, ptr %i.ya, align 8, !tbaa !407
  store i64 %.0525, ptr %.sroa.2179.0..sroa_idx, align 8, !tbaa !408
  %i.awj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.0525, ptr %i.awj, align 8, !tbaa !238
  %i.awk = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.0526, ptr %i.awk, align 8, !tbaa !233
  %i.awl = load i64, ptr %2, align 8, !tbaa !65
  store i64 %i.awl, ptr %0, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit1272
  %.sroa.02920.14 = phi ptr [ null, %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit1272 ], [ %.sroa.02920.6, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit967

bb.kb:                                            ; preds = %bb.fn, %bb.gu, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1106, %bb.fu, %.body1171, %bb.hb, %bb.fm
  %.sroa.02920.16 = phi ptr [ %.sroa.02920.6, %bb.fm ], [ %.sroa.02920.6, %bb.fn ], [ %.sroa.02920.6, %bb.fu ], [ %.sroa.02920.6, %bb.gu ], [ %.sroa.02920.6, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1106 ], [ %.sroa.02920.12, %.body1171 ], [ %.sroa.02920.6, %bb.hb ]
  %.pn830.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zj, %bb.fm ], [ %i.zk, %bb.fn ], [ %i.abo, %bb.fu ], [ %.pn810.pn.pn.pn, %bb.gu ], [ %.pn830.pn, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit1106 ], [ %.pn824.pn.pn.pn, %.body1171 ], [ %i.akl, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br label %.body

bb.kc:                                            ; preds = %bb.by
  %i.awm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.kd unwind label %bb.la

bb.kd:                                            ; preds = %bb.kc
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.awo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.awn, i64 noundef 0)
          to label %bb.ke unwind label %bb.la

bb.ke:                                            ; preds = %bb.kd
  %i.awp = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.awo)
          to label %bb.kf unwind label %bb.la     ; 4 uses

bb.kf:                                            ; preds = %bb.ke
  %i.awq = load i64, ptr %i.n, align 8, !tbaa !91
  %.not.not.i.i1294 = icmp eq i64 %i.awq, 0
  br i1 %.not.not.i.i1294, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.awr = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kh, %bb.kg
  %.sroa.06.0.in.i.i1302 = phi ptr [ %i.awr, %bb.kg ], [ %.sroa.06.0.i.i1303, %bb.kh ]
  %.sroa.06.0.i.i1303 = load ptr, ptr %.sroa.06.0.in.i.i1302, align 8, !tbaa !55, !nonnull !50, !noundef !50 ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i1303, i64 8
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !92
  %i.awu = icmp eq ptr %i.awp, %i.awt
  br i1 %i.awu, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1305, label %bb.kh, !llvm.loop !94

bb.ki:                                            ; preds = %bb.kf
  %i.awv = ptrtoint ptr %i.awp to i64             ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !19 ; 2 uses
  %i.awy = urem i64 %i.awv, %i.awx                ; 2 uses
  %i.awz = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.awz, i64 %i.awy
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !95, !nonnull !50, !noundef !50
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !55 ; 4 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axc, i64 24
  %i.axf = load i64, ptr %i.axe, align 8, !tbaa !96
  %i.axg = icmp eq i64 %i.axf, %i.awv
  %i.axh = load ptr, ptr %i.axd, align 8
  %i.axi = icmp eq ptr %i.awp, %i.axh
  %i.axj = select i1 %i.axg, i1 %i.axi, i1 false
  br i1 %i.axj, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1305, label %.lr.ph.i.i.i.i1296

.lr.ph.i.i.i.i1296:                               ; preds = %bb.ki, %.lr.ph.i.i.i.i1296
  %.020.i.i.i.i1297 = phi ptr [ %i.axk, %.lr.ph.i.i.i.i1296 ], [ %i.axc, %bb.ki ]
  %i.axk = load ptr, ptr %.020.i.i.i.i1297, align 8, !tbaa !55, !nonnull !50, !noundef !50 ; 4 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 24
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !96 ; 2 uses
  %i.axn = urem i64 %i.axm, %i.awx
  %.not19.i.i.i.i1299 = icmp eq i64 %i.axn, %i.awy
  call void @llvm.assume(i1 %.not19.i.i.i.i1299)
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  %i.axp = icmp eq i64 %i.axm, %i.awv
  %i.axq = load ptr, ptr %i.axo, align 8
  %i.axr = icmp eq ptr %i.awp, %i.axq
  %i.axs = select i1 %i.axp, i1 %i.axr, i1 false
  br i1 %i.axs, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1305, label %.lr.ph.i.i.i.i1296, !llvm.loop !98

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1305: ; preds = %.lr.ph.i.i.i.i1296, %bb.kh, %bb.ki
  %.sroa.06.1.i.i1301 = phi ptr [ %.sroa.06.0.i.i1303, %bb.kh ], [ %i.axc, %bb.ki ], [ %i.axk, %.lr.ph.i.i.i.i1296 ]
  %i.axt = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i1301, i64 16
  %i.axu = load i8, ptr %i.axt, align 8, !tbaa !99, !range !101, !noundef !50
  %i.axv = trunc nuw i8 %i.axu to i1
  %i.axw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.kj unwind label %bb.lb

bb.kj:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1305
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 16
  %i.axy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.axx, i64 noundef 1)
          to label %bb.kk unwind label %bb.lb

bb.kk:                                            ; preds = %bb.kj
  %i.axz = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axy)
          to label %bb.kl unwind label %bb.lb     ; 4 uses

bb.kl:                                            ; preds = %bb.kk
  %i.aya = load i64, ptr %i.n, align 8, !tbaa !91
  %.not.not.i.i1306 = icmp eq i64 %i.aya, 0
  br i1 %.not.not.i.i1306, label %bb.km, label %bb.ko

bb.km:                                            ; preds = %bb.kl
  %i.ayb = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kn, %bb.km
  %.sroa.06.0.in.i.i1314 = phi ptr [ %i.ayb, %bb.km ], [ %.sroa.06.0.i.i1315, %bb.kn ]
  %.sroa.06.0.i.i1315 = load ptr, ptr %.sroa.06.0.in.i.i1314, align 8, !tbaa !55, !nonnull !50, !noundef !50 ; 3 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i1315, i64 8
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !92
  %i.aye = icmp eq ptr %i.axz, %i.ayd
  br i1 %i.aye, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1317, label %bb.kn, !llvm.loop !94

bb.ko:                                            ; preds = %bb.kl
  %i.ayf = ptrtoint ptr %i.axz to i64             ; 3 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ayh = load i64, ptr %i.ayg, align 8, !tbaa !19 ; 2 uses
  %i.ayi = urem i64 %i.ayf, %i.ayh                ; 2 uses
  %i.ayj = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.ayj, i64 %i.ayi
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !95, !nonnull !50, !noundef !50
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !55 ; 4 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 8
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aym, i64 24
  %i.ayp = load i64, ptr %i.ayo, align 8, !tbaa !96
  %i.ayq = icmp eq i64 %i.ayp, %i.ayf
  %i.ayr = load ptr, ptr %i.ayn, align 8
  %i.ays = icmp eq ptr %i.axz, %i.ayr
  %i.ayt = select i1 %i.ayq, i1 %i.ays, i1 false
  br i1 %i.ayt, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1317, label %.lr.ph.i.i.i.i1308

.lr.ph.i.i.i.i1308:                               ; preds = %bb.ko, %.lr.ph.i.i.i.i1308
  %.020.i.i.i.i1309 = phi ptr [ %i.ayu, %.lr.ph.i.i.i.i1308 ], [ %i.aym, %bb.ko ]
  %i.ayu = load ptr, ptr %.020.i.i.i.i1309, align 8, !tbaa !55, !nonnull !50, !noundef !50 ; 4 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 24
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !96 ; 2 uses
  %i.ayx = urem i64 %i.ayw, %i.ayh
  %.not19.i.i.i.i1311 = icmp eq i64 %i.ayx, %i.ayi
  call void @llvm.assume(i1 %.not19.i.i.i.i1311)
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  %i.ayz = icmp eq i64 %i.ayw, %i.ayf
  %i.aza = load ptr, ptr %i.ayy, align 8
  %i.azb = icmp eq ptr %i.axz, %i.aza
  %i.azc = select i1 %i.ayz, i1 %i.azb, i1 false
  br i1 %i.azc, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1317, label %.lr.ph.i.i.i.i1308, !llvm.loop !98

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1317: ; preds = %.lr.ph.i.i.i.i1308, %bb.kn, %bb.ko
  %.sroa.06.1.i.i1313 = phi ptr [ %.sroa.06.0.i.i1315, %bb.kn ], [ %i.aym, %bb.ko ], [ %i.ayu, %.lr.ph.i.i.i.i1308 ]
  %i.azd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i1313, i64 16
  %i.aze = load i8, ptr %i.azd, align 8, !tbaa !99, !range !101, !noundef !50
  %i.azf = trunc nuw i8 %i.aze to i1
  br i1 %i.azf, label %bb.li, label %bb.kp

bb.kp:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15LogicalOperatorEEbNS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_bEEE4findERS9_.exit1317
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  %i.azg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.kq unwind label %bb.lc

bb.kq:                                            ; preds = %bb.kp
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 16
  %i.azi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.azh, i64 noundef 0)
          to label %bb.kr unwind label %bb.lc     ; 2 uses

bb.kr:                                            ; preds = %bb.kq
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !65
  store i64 %i.azj, ptr %70, align 8, !tbaa !65
  store ptr null, ptr %i.azi, align 8, !tbaa !65
  invoke void @_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %69, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull %70, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4)
          to label %bb.ks unwind label %bb.ld

bb.ks:                                            ; preds = %bb.kr
  %i.azk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.kt unwind label %bb.le

bb.kt:                                            ; preds = %bb.ks
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 16
  %i.azm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.azl, i64 noundef 0)
          to label %bb.ku unwind label %bb.le     ; 2 uses

bb.ku:                                            ; preds = %bb.kt
  %i.azn = load ptr, ptr %69, align 8, !tbaa !65
  store ptr null, ptr %69, align 8, !tbaa !65
  %i.azo = load ptr, ptr %i.azm, align 8, !tbaa !65 ; 3 uses
  store ptr %i.azn, ptr %i.azm, align 8, !tbaa !65
  %.not.i.i.i.i.i1318 = icmp eq ptr %i.azo, null
  br i1 %.not.i.i.i.i.i1318, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1320, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1319

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i1319: ; preds = %bb.ku
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !67
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 8
  %i.azr = load ptr, ptr %i.azq, align 8
  call void %i.azr(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.azo) #22, !inline_history !102
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit1320

end_hunk_1
