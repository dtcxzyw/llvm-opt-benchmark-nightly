inline.NumInlined: 13951
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6duckdb16PhysicalAsOfJoinC2ERNS_12PhysicalPlanERNS_21LogicalComparisonJoinERNS_16PhysicalOperatorES6_:bb.a

bb.ao:                                            ; preds = %bb.an
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %5, align 8, !tbaa !159   ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i84, label %.body91, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i85

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i85: ; preds = %bb.ao
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(88) %i.gb) #30, !inline_history !198
  br label %.body91

_ZNSt15__new_allocatorIN6duckdb16BoundOrderByNodeEE9constructIS1_JNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS7_ELb1EEEEEEvPT_DpOT0_.exit.i87: ; preds = %bb.an
  %i.gf = load ptr, ptr %5, align 8, !tbaa !159   ; 3 uses
  %.not.i7.i88 = icmp eq ptr %i.gf, null
  br i1 %.not.i7.i88, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i90, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i89

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i89: ; preds = %_ZNSt15__new_allocatorIN6duckdb16BoundOrderByNodeEE9constructIS1_JNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS7_ELb1EEEEEEvPT_DpOT0_.exit.i87
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !63
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(88) %i.gf) #30, !inline_history !198
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i90

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i90: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i8.i89, %_ZNSt15__new_allocatorIN6duckdb16BoundOrderByNodeEE9constructIS1_JNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS7_ELb1EEEEEEvPT_DpOT0_.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gj = load ptr, ptr %i.ba, align 8, !tbaa !186
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store ptr %i.gk, ptr %i.ba, align 8, !tbaa !186
  br label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit94

bb.ap:                                            ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit82
  invoke void @_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE17_M_realloc_insertIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit94 unwind label %bb.ar

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit94: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit9.i90, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  %i.gl = load i8, ptr %i.cb, align 8, !tbaa !176
  store i8 %i.gl, ptr %i.ag, align 8, !tbaa !199
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126

.loopexit182:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i62
  %lpad.loopexit184 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp183:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aq:                                            ; preds = %bb.am
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.body79:                                          ; preds = %bb.al, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i73, %bb.aq
  %eh.lpad-body80 = phi { ptr, i32 } [ %i.gm, %bb.aq ], [ %i.fm, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i73 ], [ %i.fm, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.bi

bb.ar:                                            ; preds = %bb.ap
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.body91:                                          ; preds = %bb.ao, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i85, %bb.ar
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.gn, %bb.ar ], [ %i.ga, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i85 ], [ %i.ga, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.bi

bb.as:                                            ; preds = %bb.m
  %i.go = load ptr, ptr %i.as, align 8, !tbaa !186
  %i.gp = load ptr, ptr %i.aj, align 8, !tbaa !189
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = sdiv exact i64 %i.gs, 24                ; 2 uses
  %i.gu = load ptr, ptr %i.at, align 8, !tbaa !190 ; 4 uses
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !191
  %.not.i95 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not.i95, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !68
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gw, ptr %i.at, align 8, !tbaa !190
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit104

bb.au:                                            ; preds = %bb.as
  %i.gx = load ptr, ptr %i.af, align 8, !tbaa !192 ; 4 uses
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 5 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775800
  br i1 %i.hb, label %bb.av, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i96

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc102 unwind label %.loopexit.split-lp173

.noexc102:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i96: ; preds = %bb.au
  %i.hc = ashr exact i64 %i.ha, 3                 ; 3 uses
  %.sroa.speculated.i.i.i97 = call i64 @llvm.umax.i64(i64 %i.hc, i64 1)
  %i.hd = add nsw i64 %.sroa.speculated.i.i.i97, %i.hc ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.hc
  %i.hf = call i64 @llvm.umin.i64(i64 %i.hd, i64 1152921504606846975)
  %i.hg = select i1 %i.he, i64 1152921504606846975, i64 %i.hf ; 3 uses
  %.not.i.i.i98 = icmp ne i64 %i.hg, 0
  call void @llvm.assume(i1 %.not.i.i.i98)
  %i.hh = shl nuw nsw i64 %i.hg, 3
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #28
          to label %.noexc103 unwind label %.loopexit172 ; 4 uses

.noexc103:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i96
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 %i.ha ; 2 uses
  store i64 %i.gt, ptr %i.hj, align 8, !tbaa !68
  %i.hk = icmp sgt i64 %i.ha, 0
  br i1 %i.hk, label %bb.aw, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i99

bb.aw:                                            ; preds = %.noexc103
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr align 8 %i.gx, i64 %i.ha, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i99

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i99: ; preds = %bb.aw, %.noexc103
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.not.i17.i.i100 = icmp eq ptr %i.gx, null
  br i1 %.not.i17.i.i100, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i101, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i99
  call void @_ZdlPv(ptr noundef nonnull %i.gx) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i101

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i101: ; preds = %bb.ax, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i99
  store ptr %i.hi, ptr %i.af, align 8, !tbaa !192
  store ptr %i.hl, ptr %i.at, align 8, !tbaa !190
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hg
  store ptr %i.hm, ptr %i.au, align 8, !tbaa !191
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit104

_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit104: ; preds = %bb.at, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i101, %bb.m
  %i.hn = load ptr, ptr %i.av, align 8, !tbaa !238 ; 6 uses
  %i.ho = load ptr, ptr %i.aw, align 8, !tbaa !239
  %.not.i105 = icmp eq ptr %i.hn, %i.ho
  br i1 %.not.i105, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit104
  %i.hp = load i64, ptr %10, align 8, !tbaa !159
  store i64 %i.hp, ptr %i.hn, align 8, !tbaa !159
  store ptr null, ptr %10, align 8, !tbaa !159
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %i.hq, ptr %i.av, align 8, !tbaa !238
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.az:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit104
  %i.hr = load ptr, ptr %i.ah, align 8, !tbaa !240 ; 10 uses
  %i.hs = ptrtoint ptr %i.hn to i64               ; 3 uses
  %i.ht = ptrtoint ptr %i.hr to i64               ; 3 uses
  %i.hu = sub i64 %i.hs, %i.ht                    ; 3 uses
  %i.hv = icmp eq i64 %i.hu, 9223372036854775800
  br i1 %i.hv, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.bb, %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.cont unwind label %.loopexit.split-lp178

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.az
  %i.hw = ashr exact i64 %i.hu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.hw, i64 1)
  %i.hx = add nsw i64 %.sroa.speculated.i.i.i106, %i.hw ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hw
  %i.hz = call i64 @llvm.umin.i64(i64 %i.hx, i64 1152921504606846975)
  %i.ia = select i1 %i.hy, i64 1152921504606846975, i64 %i.hz ; 3 uses
  %.not.i.i.i107 = icmp ne i64 %i.ia, 0
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.ib = shl nuw nsw i64 %i.ia, 3
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #28
          to label %.noexc110 unwind label %.loopexit177 ; 10 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hu
  %i.ie = load i64, ptr %10, align 8, !tbaa !159
  store i64 %i.ie, ptr %i.id, align 8, !tbaa !159
  store ptr null, ptr %10, align 8, !tbaa !159
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hr, %i.hn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc110
  %14 = add i64 %i.hs, -8
  %15 = sub i64 %14, %i.ht                        ; 2 uses
  %i.if = lshr i64 %15, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check281 = icmp ult i64 %15, 56
  br i1 %min.iters.check281, label %.lr.ph.i.i.i.i.i.i.preheader297, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep273 = getelementptr i8, ptr %i.ic, i64 8
  %i.ih = add i64 %i.hs, -8
  %i.ii = sub i64 %i.ih, %i.ht
  %i.ij = and i64 %i.ii, -8                       ; 2 uses
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.ij
  %scevgep275 = getelementptr i8, ptr %i.hr, i64 8
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.ij
  %bound0277 = icmp ult ptr %i.ic, %scevgep276
  %bound1278 = icmp ult ptr %i.hr, %scevgep274
  %found.conflict279 = and i1 %bound0277, %bound1278
  br i1 %found.conflict279, label %.lr.ph.i.i.i.i.i.i.preheader297, label %vector.ph282

vector.ph282:                                     ; preds = %vector.memcheck272
  %n.vec284 = and i64 %i.ig, 4611686018427387900  ; 3 uses
  %i.ik = shl i64 %n.vec284, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %i.ic, i64 %i.ik  ; 2 uses
  %i.im = getelementptr i8, ptr %i.hr, i64 %i.ik
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph282
  %index286 = phi i64 [ 0, %vector.ph282 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %i.in = shl i64 %index286, 3                    ; 2 uses
  %next.gep287 = getelementptr i8, ptr %i.ic, i64 %i.in ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.hr, i64 %i.in ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.io = getelementptr i8, ptr %next.gep288, i64 16
  %wide.load289 = load <2 x i64>, ptr %next.gep288, align 8, !tbaa !159, !alias.scope !246, !noalias !241
  %wide.load290 = load <2 x i64>, ptr %i.io, align 8, !tbaa !159, !alias.scope !246, !noalias !241
  %i.ip = getelementptr i8, ptr %next.gep287, i64 16
  store <2 x i64> %wide.load289, ptr %next.gep287, align 8, !tbaa !159, !alias.scope !249, !noalias !246
  store <2 x i64> %wide.load290, ptr %i.ip, align 8, !tbaa !159, !alias.scope !249, !noalias !246
  %i.iq = getelementptr i8, ptr %next.gep288, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep288, align 8, !tbaa !159, !alias.scope !246, !noalias !241
  store <2 x ptr> splat (ptr null), ptr %i.iq, align 8, !tbaa !159, !alias.scope !246, !noalias !241
  %index.next291 = add nuw i64 %index286, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.ir, label %middle.block292, label %vector.body285, !llvm.loop !251

middle.block292:                                  ; preds = %vector.body285
  %cmp.n293 = icmp eq i64 %i.ig, %n.vec284
  br i1 %cmp.n293, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader297

.lr.ph.i.i.i.i.i.i.preheader297:                  ; preds = %vector.memcheck272, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block292
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ic, %vector.memcheck272 ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.il, %middle.block292 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.hr, %vector.memcheck272 ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.im, %middle.block292 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader297, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader297 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader297 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.is = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !159, !alias.scope !244, !noalias !241
  store i64 %i.is, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !159, !alias.scope !241, !noalias !244
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !159, !alias.scope !244, !noalias !241
  %i.it = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.it, %i.hn
  br i1 %.not.i.i.i.i.i.i108, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !254

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block292, %.noexc110
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ic, %.noexc110 ], [ %i.il, %middle.block292 ], [ %i.iu, %.lr.ph.i.i.i.i.i.i ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.hr) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ba, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ic, ptr %i.ah, align 8, !tbaa !240
  store ptr %i.iv, ptr %i.av, align 8, !tbaa !238
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ia
  store ptr %i.iw, ptr %i.aw, align 8, !tbaa !239
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ay
  %i.ix = load ptr, ptr %i.ax, align 8, !tbaa !238 ; 6 uses
  %i.iy = load ptr, ptr %i.ay, align 8, !tbaa !239
  %.not.i111 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i111, label %bb.bb, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126.thread: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.iz = load i64, ptr %11, align 8, !tbaa !159
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !159
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.ja, ptr %i.ax, align 8, !tbaa !238
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.bb:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.jb = load ptr, ptr %i.ai, align 8, !tbaa !240 ; 10 uses
  %i.jc = ptrtoint ptr %i.ix to i64               ; 3 uses
  %i.jd = ptrtoint ptr %i.jb to i64               ; 3 uses
  %i.je = sub i64 %i.jc, %i.jd                    ; 3 uses
  %i.jf = icmp eq i64 %i.je, 9223372036854775800
  br i1 %i.jf, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i112

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i112: ; preds = %bb.bb
  %i.jg = ashr exact i64 %i.je, 3                 ; 3 uses
  %.sroa.speculated.i.i.i113 = call i64 @llvm.umax.i64(i64 %i.jg, i64 1)
  %i.jh = add nsw i64 %.sroa.speculated.i.i.i113, %i.jg ; 2 uses
  %i.ji = icmp ult i64 %i.jh, %i.jg
  %i.jj = call i64 @llvm.umin.i64(i64 %i.jh, i64 1152921504606846975)
  %i.jk = select i1 %i.ji, i64 1152921504606846975, i64 %i.jj ; 3 uses
  %.not.i.i.i114 = icmp ne i64 %i.jk, 0
  call void @llvm.assume(i1 %.not.i.i.i114)
  %i.jl = shl nuw nsw i64 %i.jk, 3
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #28
          to label %.noexc125 unwind label %.loopexit177 ; 10 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i112
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.je
  %i.jo = load i64, ptr %11, align 8, !tbaa !159
  store i64 %i.jo, ptr %i.jn, align 8, !tbaa !159
  store ptr null, ptr %11, align 8, !tbaa !159
  %.not10.i.i.i.i.i.i115 = icmp eq ptr %i.jb, %i.ix
  br i1 %.not10.i.i.i.i.i.i115, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i120, label %.lr.ph.i.i.i.i.i.i116.preheader

.lr.ph.i.i.i.i.i.i116.preheader:                  ; preds = %.noexc125
  %16 = add i64 %i.jc, -8
  %17 = sub i64 %16, %i.jd                        ; 2 uses
  %i.jp = lshr i64 %17, 3
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %17, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i116.preheader296, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i116.preheader
  %scevgep = getelementptr i8, ptr %i.jm, i64 8
  %i.jr = add i64 %i.jc, -8
  %i.js = sub i64 %i.jr, %i.jd
  %i.jt = and i64 %i.js, -8                       ; 2 uses
  %scevgep266 = getelementptr i8, ptr %scevgep, i64 %i.jt
  %scevgep267 = getelementptr i8, ptr %i.jb, i64 8
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.jt
  %bound0 = icmp ult ptr %i.jm, %scevgep268
  %bound1 = icmp ult ptr %i.jb, %scevgep266
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i116.preheader296, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jq, 4611686018427387900     ; 3 uses
  %i.ju = shl i64 %n.vec, 3                       ; 2 uses
  %i.jv = getelementptr i8, ptr %i.jm, i64 %i.ju  ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jb, i64 %i.ju
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jm, i64 %i.jx ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.jb, i64 %i.jx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.jy = getelementptr i8, ptr %next.gep269, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep269, align 8, !tbaa !159, !alias.scope !260, !noalias !255
  %wide.load270 = load <2 x i64>, ptr %i.jy, align 8, !tbaa !159, !alias.scope !260, !noalias !255
  %i.jz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !159, !alias.scope !263, !noalias !260
  store <2 x i64> %wide.load270, ptr %i.jz, align 8, !tbaa !159, !alias.scope !263, !noalias !260
  %i.ka = getelementptr i8, ptr %next.gep269, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep269, align 8, !tbaa !159, !alias.scope !260, !noalias !255
  store <2 x ptr> splat (ptr null), ptr %i.ka, align 8, !tbaa !159, !alias.scope !260, !noalias !255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kb = icmp eq i64 %index.next, %n.vec
  br i1 %i.kb, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i120, label %.lr.ph.i.i.i.i.i.i116.preheader296

.lr.ph.i.i.i.i.i.i116.preheader296:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i116.preheader, %middle.block
  %.012.i.i.i.i.i.i117.ph = phi ptr [ %i.jm, %vector.memcheck ], [ %i.jm, %.lr.ph.i.i.i.i.i.i116.preheader ], [ %i.jv, %middle.block ]
  %.0911.i.i.i.i.i.i118.ph = phi ptr [ %i.jb, %vector.memcheck ], [ %i.jb, %.lr.ph.i.i.i.i.i.i116.preheader ], [ %i.jw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i116

.lr.ph.i.i.i.i.i.i116:                            ; preds = %.lr.ph.i.i.i.i.i.i116.preheader296, %.lr.ph.i.i.i.i.i.i116
  %.012.i.i.i.i.i.i117 = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i.i116 ], [ %.012.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i116.preheader296 ] ; 2 uses
  %.0911.i.i.i.i.i.i118 = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i.i116 ], [ %.0911.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i116.preheader296 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.kc = load i64, ptr %.0911.i.i.i.i.i.i118, align 8, !tbaa !159, !alias.scope !258, !noalias !255
  store i64 %i.kc, ptr %.012.i.i.i.i.i.i117, align 8, !tbaa !159, !alias.scope !255, !noalias !258
  store ptr null, ptr %.0911.i.i.i.i.i.i118, align 8, !tbaa !159, !alias.scope !258, !noalias !255
  %i.kd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i118, i64 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i117, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i119 = icmp eq ptr %i.kd, %i.ix
  br i1 %.not.i.i.i.i.i.i119, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i120, label %.lr.ph.i.i.i.i.i.i116, !llvm.loop !266

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i120: ; preds = %.lr.ph.i.i.i.i.i.i116, %middle.block, %.noexc125
  %.0.lcssa.i.i.i.i.i.i121 = phi ptr [ %i.jm, %.noexc125 ], [ %i.jv, %middle.block ], [ %i.ke, %.lr.ph.i.i.i.i.i.i116 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i121, i64 8
  %.not.i23.i.i122 = icmp eq ptr %i.jb, null
  br i1 %.not.i23.i.i122, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i123, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i120
  call void @_ZdlPv(ptr noundef nonnull %i.jb) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i123

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i123: ; preds = %bb.bc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i120
  store ptr %i.jm, ptr %i.ai, align 8, !tbaa !240
  store ptr %i.kf, ptr %i.ax, align 8, !tbaa !238
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jk
  store ptr %i.kg, ptr %i.ay, align 8, !tbaa !239
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126

.loopexit172:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i96
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp173:                            ; preds = %bb.av
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit177:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i112
  %lpad.loopexit179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp178:                            ; preds = %.invoke
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bd:                                            ; preds = %bb.m
  %i.kh = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.kh, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.cf unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bd
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.021 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kk = load ptr, ptr %12, align 8, !tbaa !70   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.kk) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.021, label %bb.bh, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.021, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32169 = phi { ptr, i32 } [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kh) #30
  br label %bb.bi

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i123, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit94, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE12emplace_backIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvDpOT_.exit60
  %.pr = load ptr, ptr %11, align 8, !tbaa !159   ; 3 uses
  %.not.i127 = icmp eq ptr %.pr, null
  br i1 %.not.i127, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126
  %i.kn = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #30, !inline_history !267
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit126, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.kq = load ptr, ptr %10, align 8, !tbaa !159  ; 3 uses
  %.not.i128 = icmp eq ptr %i.kq, null
  br i1 %.not.i128, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit130, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i129

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i129: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !63
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(88) %i.kq) #30, !inline_history !267
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit130

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit130: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0164.0194, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ku, %i.ap
  br i1 %.not, label %._crit_edge, label %bb.f

bb.bi:                                            ; preds = %.loopexit177, %.loopexit.split-lp178, %.loopexit172, %.loopexit.split-lp173, %.loopexit182, %.loopexit.split-lp183, %.loopexit187, %.loopexit.split-lp188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bh, %.body91, %.body79, %.body57, %.body
  %.pn32.pn = phi { ptr, i32 } [ %.pn32169, %bb.bh ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %eh.lpad-body58, %.body57 ], [ %eh.lpad-body, %.body ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %eh.lpad-body92, %.body91 ], [ %eh.lpad-body80, %.body79 ], [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp173 ], [ %lpad.loopexit.split-lp185, %.loopexit.split-lp183 ], [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit184, %.loopexit182 ], [ %lpad.loopexit174, %.loopexit172 ], [ %lpad.loopexit179, %.loopexit177 ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp178 ] ; 2 uses
  %i.kv = load ptr, ptr %11, align 8, !tbaa !159  ; 3 uses
  %.not.i131 = icmp eq ptr %i.kv, null
  br i1 %.not.i131, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit133, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i132

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i132: ; preds = %bb.bi
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !63
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(88) %i.kv) #30, !inline_history !267
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit133

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit133: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i132, %bb.bi, %bb.p
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.p ], [ %.pn32.pn, %bb.bi ], [ %.pn32.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i132 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.kz = load ptr, ptr %10, align 8, !tbaa !159  ; 3 uses
  %.not.i134 = icmp eq ptr %i.kz, null
end_hunk_0
begin_hunk_1_@_ZN6duckdb13AsOfHashGroup10FinishTaskERNS_14AsOfSourceTaskE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !338  ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !338
  %.not.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i5, label %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7, label %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7.sink.split

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %1, align 8, !tbaa !563
  %i.t = zext i8 %i.s to i64
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.t)
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68
  %.not4 = icmp ult i64 %i.q, %i.v
  br i1 %.not4, label %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !338  ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !338
  %.not.i.i.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i8, label %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7, label %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7.sink.split

_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7.sink.split: ; preds = %bb.f, %bb.d
  %.sink13 = phi ptr [ %i.o, %bb.d ], [ %i.x, %bb.f ] ; 2 uses
  tail call void @_ZN6duckdb9SortedRunD1Ev(ptr noundef nonnull align 8 dead_on_return(1170) dereferenceable(1170) %.sink13) #30
  tail call void @_ZdlPv(ptr noundef nonnull %.sink13) #29
  br label %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7

_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7: ; preds = %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit7.sink.split, %bb.f, %bb.d, %bb.e, %bb.b, %_ZN6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load atomic i64, ptr %i.y seq_cst, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = add i64 %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load atomic i64, ptr %i.ad seq_cst, align 8
  %i.af = add i64 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load atomic i64, ptr %i.ag seq_cst, align 8
  %i.ai = add i64 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 6)
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.am = icmp uge i64 %i.ai, %i.al
  ret i1 %i.am
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21AsOfGlobalSourceStateC2ERNS_13ClientContextERKNS_16PhysicalAsOfJoinE(ptr noundef nonnull align 8 dereferenceable(217) initializes((0, 9), (16, 217)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(352) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.466", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::unique_ptr.372", align 8 ; 10 uses
  %5 = alloca %"struct.duckdb::SortStrategy::ChunkRow", align 8 ; 6 uses
  %6 = alloca %"struct.duckdb::SortStrategy::ChunkRow", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::unique_ptr.478", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !570
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb21AsOfGlobalSourceStateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.c, align 8, !tbaa !541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(129) %i.d, i8 0, i64 129, i1 false)
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.j = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
          to label %.lr.ph unwind label %bb.d     ; 3 uses

.lr.ph:                                           ; preds = %bb.b
  store ptr %i.j, ptr %3, align 8, !tbaa !571
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.k, ptr %i.m, align 8, !tbaa !574
  store ptr %i.k, ptr %i.l, align 8, !tbaa !575
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_12SortStrategy8ChunkRowELb1ESaIS2_EEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.u unwind label %bb.w       ; 4 uses

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %.03691 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12SortStrategyESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.03691)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.g unwind label %bb.q       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.03691)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.372") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(81) %i.x)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %.loopexit82

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %bb.l unwind label %.loopexit82

bb.l:                                             ; preds = %bb.k
  %i.ag = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_12SortStrategy8ChunkRowELb1ESaIS2_EEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.03691)
          to label %bb.m unwind label %.loopexit82

bb.m:                                             ; preds = %bb.l
  %i.ah = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb12SortStrategy8ChunkRowESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEaSERKS4_.exit unwind label %.loopexit82 ; 0 uses

_ZN6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEaSERKS4_.exit: ; preds = %bb.m
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !576 ; 6 uses
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !579
  %.not.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i, label %bb.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %_ZN6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEaSERKS4_.exit
  %i.ak = load i64, ptr %4, align 8, !tbaa !580
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !580
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.p, align 8, !tbaa !576
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

bb.n:                                             ; preds = %_ZN6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEaSERKS4_.exit
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !581 ; 10 uses
  %i.an = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.o, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc unwind label %.loopexit.split-lp83

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #28
          to label %.noexc50 unwind label %.loopexit82 ; 10 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %4, align 8, !tbaa !580
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !580
  store ptr null, ptr %4, align 8, !tbaa !580
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc50
  %8 = add i64 %i.an, -8
  %9 = sub i64 %8, %i.ao                          ; 2 uses
  %i.ba = lshr i64 %9, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ax, i64 8
  %i.bc = add i64 %i.an, -8
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %scevgep135 = getelementptr i8, ptr %scevgep, i64 %i.be
  %scevgep136 = getelementptr i8, ptr %i.am, i64 8
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.be
  %bound0 = icmp ult ptr %i.ax, %scevgep137
  %bound1 = icmp ult ptr %i.am, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bi ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.am, i64 %i.bi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.bj = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep138, align 8, !tbaa !580, !alias.scope !587, !noalias !582
  %wide.load139 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !580, !alias.scope !587, !noalias !582
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !580, !alias.scope !590, !noalias !587
  store <2 x i64> %wide.load139, ptr %i.bk, align 8, !tbaa !580, !alias.scope !590, !noalias !587
  %i.bl = getelementptr i8, ptr %next.gep138, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep138, align 8, !tbaa !580, !alias.scope !587, !noalias !582
  store <2 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !580, !alias.scope !587, !noalias !582
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !592

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader170

.lr.ph.i.i.i.i.i.i.preheader170:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader170, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader170 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader170 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !580, !alias.scope !585, !noalias !582
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !580, !alias.scope !582, !noalias !585
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !580, !alias.scope !585, !noalias !582
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !593

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc50
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc50 ], [ %i.bg, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.p
  store ptr %i.ax, ptr %i.d, align 8, !tbaa !581
  store ptr %i.bq, ptr %i.p, align 8, !tbaa !576
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.br, ptr %i.q, align 8, !tbaa !579
  %.pr = load ptr, ptr %4, align 8, !tbaa !580    ; 3 uses
  %.not.i51 = icmp eq ptr %.pr, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.bs = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(80) %.pr) #30, !inline_history !594
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bv = add nuw i64 %.03691, 1                  ; 2 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !575
  %i.bx = load ptr, ptr %3, align 8, !tbaa !571
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %bb.e, label %._crit_edge, !llvm.loop !595

bb.q:                                             ; preds = %bb.f, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.r:                                             ; preds = %bb.h, %bb.g
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.s:                                             ; preds = %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit54

.loopexit82:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17GlobalSourceStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp83:                             ; preds = %bb.o
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp83, %.loopexit82
  %lpad.phi86 = phi { ptr, i32 } [ %lpad.loopexit84, %.loopexit82 ], [ %lpad.loopexit.split-lp85, %.loopexit.split-lp83 ] ; 2 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !580   ; 3 uses
  %.not.i52 = icmp eq ptr %i.cg, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit54, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i53

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i53: ; preds = %bb.t
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(80) %i.cg) #30, !inline_history !594
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit54

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit54: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i53, %bb.t, %bb.s
  %.pn43 = phi { ptr, i32 } [ %i.cf, %bb.s ], [ %lpad.phi86, %bb.t ], [ %lpad.phi86, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aw

bb.u:                                             ; preds = %._crit_edge
  %i.ck = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_12SortStrategy8ChunkRowELb1ESaIS2_EEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
          to label %bb.v unwind label %bb.x       ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !596
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !599
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !596
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !599
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 4
  %i.cz = call noundef i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cy) ; 2 uses
  %.not96 = icmp eq i64 %i.cz, 0
  br i1 %.not96, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.z

._crit_edge95:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb13AsOfHashGroupESt14default_deleteIS1_EED2Ev.exit, %bb.v
  invoke void @_ZN6duckdb21AsOfGlobalSourceState14CreateTaskListERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.at unwind label %bb.y

bb.w:                                             ; preds = %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.x:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %._crit_edge95
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.z:                                             ; preds = %.lr.ph94, %_ZNSt10unique_ptrIN6duckdb13AsOfHashGroupESt14default_deleteIS1_EED2Ev.exit
  %storemerge92 = phi i64 [ 0, %.lr.ph94 ], [ %i.fi, %_ZNSt10unique_ptrIN6duckdb13AsOfHashGroupESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.df = load ptr, ptr %i.cl, align 8, !tbaa !596
  %i.dg = load ptr, ptr %i.r, align 8, !tbaa !599
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 4
  %i.dl = icmp ult i64 %storemerge92, %i.dk
  br i1 %i.dl, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %storemerge92)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !556
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ad:                                            ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.do = load ptr, ptr %i.cs, align 8, !tbaa !596
  %i.dp = load ptr, ptr %i.ck, align 8, !tbaa !599
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 4
  %i.du = icmp ult i64 %storemerge92, %i.dt
  br i1 %i.du, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_12SortStrategy8ChunkRowELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %storemerge92)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !556
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ah:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.dx = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #28
          to label %.noexc55 unwind label %bb.ao  ; 5 uses

.noexc55:                                         ; preds = %bb.ah
  invoke void @_ZN6duckdb13AsOfHashGroupC1ERKNS_16PhysicalAsOfJoinERKNS_12SortStrategy8ChunkRowES7_m(ptr noundef nonnull align 8 dereferenceable(200) %i.dx, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %storemerge92)
          to label %bb.aj unwind label %bb.ai, !noalias !600

bb.ai:                                            ; preds = %.noexc55
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dx) #29, !noalias !600
  br label %.body

bb.aj:                                            ; preds = %.noexc55
  store ptr %i.dx, ptr %7, align 8, !tbaa !603, !alias.scope !600
  %i.dz = load ptr, ptr %i.da, align 8, !tbaa !605 ; 6 uses
  %i.ea = load ptr, ptr %i.db, align 8, !tbaa !608
  %.not.i56 = icmp eq ptr %i.dz, %i.ea
  %i.eb = ptrtoint ptr %i.dx to i64               ; 2 uses
  br i1 %.not.i56, label %bb.ak, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.aj
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !603
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ec, ptr %i.da, align 8, !tbaa !605
  br label %_ZNSt10unique_ptrIN6duckdb13AsOfHashGroupESt14default_deleteIS1_EED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !609 ; 10 uses
  %i.ee = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775800
  br i1 %i.eh, label %bb.al, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc66 unwind label %bb.ap

.noexc66:                                         ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ak
  %i.ei = ashr exact i64 %i.eg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i57 = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i57, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 1152921504606846975)
  %i.em = select i1 %i.ek, i64 1152921504606846975, i64 %i.el ; 3 uses
  %.not.i.i.i58 = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i58)
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #28
          to label %.noexc67 unwind label %.thread ; 10 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  store i64 %i.eb, ptr %i.ep, align 8, !tbaa !603
  store ptr null, ptr %7, align 8, !tbaa !603
  %.not10.i.i.i.i.i.i59 = icmp eq ptr %i.ed, %i.dz
  br i1 %.not10.i.i.i.i.i.i59, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i.i60.preheader:                   ; preds = %.noexc67
  %10 = add i64 %i.ee, -8
  %11 = sub i64 %10, %i.ef                        ; 2 uses
  %i.eq = lshr i64 %11, 3
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %11, 56
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.i.i.i60.preheader165, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph.i.i.i.i.i.i60.preheader
  %scevgep142 = getelementptr i8, ptr %i.eo, i64 8
  %i.es = add i64 %i.ee, -8
  %i.et = sub i64 %i.es, %i.ef
  %i.eu = and i64 %i.et, -8                       ; 2 uses
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.eu
  %scevgep144 = getelementptr i8, ptr %i.ed, i64 8
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.eu
  %bound0146 = icmp ult ptr %i.eo, %scevgep145
  %bound1147 = icmp ult ptr %i.ed, %scevgep143
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i.i.i.i.i.i60.preheader165, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck141
  %n.vec153 = and i64 %i.er, 4611686018427387900  ; 3 uses
  %i.ev = shl i64 %n.vec153, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eo, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ed, i64 %i.ev
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %i.ey = shl i64 %index155, 3                    ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.eo, i64 %i.ey ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.ed, i64 %i.ey ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.ez = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <2 x i64>, ptr %next.gep157, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  %wide.load159 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  %i.fa = getelementptr i8, ptr %next.gep156, i64 16
  store <2 x i64> %wide.load158, ptr %next.gep156, align 8, !tbaa !603, !alias.scope !618, !noalias !615
  store <2 x i64> %wide.load159, ptr %i.fa, align 8, !tbaa !603, !alias.scope !618, !noalias !615
  %i.fb = getelementptr i8, ptr %next.gep157, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep157, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  store <2 x ptr> splat (ptr null), ptr %i.fb, align 8, !tbaa !603, !alias.scope !615, !noalias !610
  %index.next160 = add nuw i64 %index155, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.fc, label %middle.block161, label %vector.body154, !llvm.loop !620

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.er, %n.vec153
  br i1 %cmp.n162, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i60.preheader165

.lr.ph.i.i.i.i.i.i60.preheader165:                ; preds = %vector.memcheck141, %.lr.ph.i.i.i.i.i.i60.preheader, %middle.block161
  %.012.i.i.i.i.i.i61.ph = phi ptr [ %i.eo, %vector.memcheck141 ], [ %i.eo, %.lr.ph.i.i.i.i.i.i60.preheader ], [ %i.ew, %middle.block161 ]
  %.0911.i.i.i.i.i.i62.ph = phi ptr [ %i.ed, %vector.memcheck141 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i60.preheader ], [ %i.ex, %middle.block161 ]
  br label %.lr.ph.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i60:                             ; preds = %.lr.ph.i.i.i.i.i.i60.preheader165, %.lr.ph.i.i.i.i.i.i60
  %.012.i.i.i.i.i.i61 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i60 ], [ %.012.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i60.preheader165 ] ; 2 uses
  %.0911.i.i.i.i.i.i62 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i60 ], [ %.0911.i.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i.i60.preheader165 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.fd = load i64, ptr %.0911.i.i.i.i.i.i62, align 8, !tbaa !603, !alias.scope !613, !noalias !610
  store i64 %i.fd, ptr %.012.i.i.i.i.i.i61, align 8, !tbaa !603, !alias.scope !610, !noalias !613
  store ptr null, ptr %.0911.i.i.i.i.i.i62, align 8, !tbaa !603, !alias.scope !613, !noalias !610
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i62, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp eq ptr %i.fe, %i.dz
  br i1 %.not.i.i.i.i.i.i63, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i60, !llvm.loop !621

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i60, %middle.block161, %.noexc67
  %.0.lcssa.i.i.i.i.i.i64 = phi ptr [ %i.eo, %.noexc67 ], [ %i.ew, %middle.block161 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i60 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i64, i64 8
  %.not.i23.i.i65 = icmp eq ptr %i.ed, null
  br i1 %.not.i23.i.i65, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.am
  store ptr %i.eo, ptr %i.e, align 8, !tbaa !609
  store ptr %i.fg, ptr %i.da, align 8, !tbaa !605
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.em
  store ptr %i.fh, ptr %i.db, align 8, !tbaa !608
  %.pr80 = load ptr, ptr %7, align 8, !tbaa !603  ; 2 uses
  %.not.i68 = icmp eq ptr %.pr80, null
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN6duckdb13AsOfHashGroupESt14default_deleteIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZNKSt14default_deleteIN6duckdb13AsOfHashGroupEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.pr80)
  br label %_ZNSt10unique_ptrIN6duckdb13AsOfHashGroupESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13AsOfHashGroupESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fi = add nuw i64 %storemerge92, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fi, %i.cz
  br i1 %exitcond.not, label %._crit_edge95, label %bb.z, !llvm.loop !622

bb.ao:                                            ; preds = %bb.ah
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13AsOfHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %7, align 8, !tbaa !603   ; 2 uses
  %.not.i69 = icmp eq ptr %.pre, null
  br i1 %.not.i69, label %.body, label %bb.aq

bb.aq:                                            ; preds = %.thread, %bb.ap
  %lpad.phi124 = phi { ptr, i32 } [ %lpad.loopexit, %.thread ], [ %lpad.loopexit.split-lp, %bb.ap ]
  %i.fk = phi ptr [ %i.dx, %.thread ], [ %.pre, %bb.ap ]
  call void @_ZNKSt14default_deleteIN6duckdb13AsOfHashGroupEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.fk)
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.ai ], [ %i.fj, %bb.ao ], [ %lpad.loopexit.split-lp, %bb.ap ], [ %lpad.phi124, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ar

bb.ar:                                            ; preds = %.body, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dw, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ar ], [ %i.dn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge95
  %i.fl = load ptr, ptr %3, align 8, !tbaa !571   ; 3 uses
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !575 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at, %_ZSt8_DestroyIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fo, %_ZSt8_DestroyIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEEEvPT_.exit.i.i.i ], [ %i.fl, %bb.at ] ; 2 uses
  %i.fn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !599 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEEEvPT_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fn) #29
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEEEvPT_.exit.i.i.i: ; preds = %bb.au, %.lr.ph.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.fo, %i.fm
  br i1 %.not.i.i.i71, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !623

_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !571
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.at
  %i.fp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fl, %bb.at ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEESaIS5_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fp) #29
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.aw:                                            ; preds = %bb.w, %bb.y, %bb.as, %bb.x, %bb.q, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit54, %bb.r
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.r ], [ %i.cd, %bb.q ], [ %.pn43, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit54 ], [ %i.dc, %bb.w ], [ %i.dd, %bb.x ], [ %.pn.pn.pn, %bb.as ], [ %i.de, %bb.y ]
  call void @_ZNSt6vectorIN6duckdb6vectorINS0_12SortStrategy8ChunkRowELb1ESaIS3_EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.d
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn, %bb.aw ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.c
  %.pn43.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn.pn, %bb.ax ], [ %i.s, %bb.c ]
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ay, %bb.az
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !624 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN6duckdb12PhysicalJoin18BuildJoinPipelinesERNS_8PipelineERNS_12MetaPipelineERNS_16PhysicalOperatorEb:bb.a
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #29
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bm = load ptr, ptr %4, align 8, !tbaa !971   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !974 ; 2 uses
  %.not4.i.i.i43 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not4.i.i.i43, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i54, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50
  %.05.i.i.i45 = phi ptr [ %i.cg, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50 ], [ %i.bm, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i.i.i.i.i46 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i46, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i44
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.br, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !62
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !975
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !975
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50

bb.al:                                            ; preds = %bb.aj
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i47 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i47, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48

bb.an:                                            ; preds = %bb.al
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i49 = phi i32 [ %i.bu, %bb.am ], [ %i.ce, %bb.an ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i49, 1
  br i1 %i.cf, label %bb.ao, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50, !prof !67

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i48, %bb.ak, %.lr.ph.i.i.i44
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 16 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.cg, %i.bo
  br i1 %.not.i.i.i51, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i52, label %.lr.ph.i.i.i44, !llvm.loop !976

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i52: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i.i50
  %.pr.i53 = load ptr, ptr %4, align 8, !tbaa !971
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i54

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i54: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i52, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit
  %i.ch = phi ptr [ %.pr.i53, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i52 ], [ %i.bm, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i55 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i1.i55, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit56, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i54
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #29
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit56

_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit56: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit.i54, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.aq:                                            ; preds = %bb.q, %bb.r, %bb.x
  %.pn37 = phi { ptr, i32 } [ %i.aj, %bb.x ], [ %i.aa, %bb.r ], [ %i.z, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.p, %bb.aq, %bb.o
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.x, %bb.o ], [ %.pn37, %bb.aq ], [ %i.y, %bb.p ]
  call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn37.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20PhysicalCrossProduct10GetSourcesEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17PhysicalDelimJoinC2ERNS_12PhysicalPlanENS_20PhysicalOperatorTypeENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS_16PhysicalOperatorES9_RKNS4_ISt17reference_wrapperIKS8_ELb1ESaISC_EEEmNS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext %2, ptr nofree noundef captures(none) %3, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7, i64 %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.duckdb::vector.24", align 16 ; 7 uses
  %i.a = load <2 x ptr>, ptr %3, align 8, !tbaa !694
  store <2 x ptr> %i.a, ptr %9, align 16, !tbaa !694
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  store ptr %i.d, ptr %i.b, align 16, !tbaa !175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb16PhysicalOperatorC2ERNS_12PhysicalPlanENS_20PhysicalOperatorTypeENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext %2, ptr noundef nonnull %9, i64 noundef %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = load ptr, ptr %9, align 16, !tbaa !272   ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !274

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %9, align 16, !tbaa !272
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.f, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTVN6duckdb17PhysicalDelimJoinE, i64 16), ptr %0, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %4, ptr %i.j, align 8, !tbaa !977
  %i.k = invoke noundef nonnull align 8 dereferenceable(496) ptr @_ZN6duckdb16PhysicalOperator4CastINS_21PhysicalHashAggregateEEERT_v(ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.k, ptr %i.l, align 8, !tbaa !978
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !980  ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !983    ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i, label %.noexc10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.s, 9223372036854775800
  br i1 %i.t, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !67

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.d
  %i.v = phi ptr [ null, %bb.d ], [ %i.u, %_ZNSt15__new_allocatorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 8 uses
  store ptr %i.v, ptr %i.m, align 8, !tbaa !983
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !980
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.x, ptr %i.y, align 8, !tbaa !984
  %i.z = load ptr, ptr %6, align 8, !tbaa !985    ; 5 uses
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !985 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc10
  %i.ab = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ac = ptrtoaddr ptr %i.v to i64
  %10 = ptrtoaddr ptr %i.aa to i64
  %i.ad = add i64 %10, -8
  %i.ae = sub i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 72
  %i.ah = sub i64 %i.ab, %i.ac
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.z, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.al ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.z, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8
  %wide.load17 = load <2 x i64>, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load17, ptr %i.an, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !986

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.i.preheader19:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader19 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader19 ] ; 2 uses
  %i.ap = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.ap, ptr %.09.i.i.i.i.i.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !987

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc10 ], [ %i.aj, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !980
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %8, ptr %i.as, align 8, !tbaa !68
  ret void

bb.f:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #30
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16PhysicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.at, %bb.f ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb16PhysicalOperatorC2ERNS_12PhysicalPlanENS_20PhysicalOperatorTypeENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEm(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext, ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(496) ptr @_ZN6duckdb16PhysicalOperator4CastINS_21PhysicalHashAggregateEEERT_v(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !970
  %.not = icmp eq i8 %i.b, 9
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb17PhysicalDelimJoin11GetChildrenEv(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::vector.772") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.051.059 = load ptr, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %.not60 = icmp eq ptr %.sroa.051.059, null
  br i1 %.not60, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988, !nonnull !21, !align !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !984 ; 2 uses
  store ptr %i.cg, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !988, !nonnull !21, !align !167 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cf, %.pre
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = ptrtoint ptr %i.i to i64
  store i64 %i.l, ptr %i.cf, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !980
  %.pre68 = load ptr, ptr %i.k, align 8, !tbaa !984
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.n = phi ptr [ %i.e, %._crit_edge.thread ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.o = phi ptr [ %i.d, %._crit_edge.thread ], [ %i.j, %._crit_edge ] ; 2 uses
  %i.p = phi ptr [ %i.c, %._crit_edge.thread ], [ %i.i, %._crit_edge ]
  %i.q = phi ptr [ null, %._crit_edge.thread ], [ %i.cg, %._crit_edge ] ; 8 uses
  %i.r = phi ptr [ null, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #28
          to label %.noexc12 unwind label %bb.o   ; 8 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = ptrtoint ptr %i.p to i64
  store i64 %i.ae, ptr %i.ad, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.af = ptrtoaddr ptr %i.ac to i64
  %2 = add i64 %i.s, -8
  %3 = sub i64 %2, %i.t                           ; 2 uses
  %i.ag = lshr i64 %3, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check103 = icmp ult i64 %3, 72
  %i.ai = sub i64 %i.t, %i.af
  %diff.check101 = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check103, %diff.check101
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader139, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec106 = and i64 %i.ah, 4611686018427387900  ; 3 uses
  %i.aj = shl i64 %n.vec106, 3                    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %i.q, i64 %i.aj
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next113, %vector.body107 ] ; 2 uses
  %i.am = shl i64 %index108, 3                    ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.ac, i64 %i.am ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.q, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.an = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load111 = load <2 x i64>, ptr %next.gep110, align 8, !alias.scope !998, !noalias !995
  %wide.load112 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !998, !noalias !995
  %i.ao = getelementptr i8, ptr %next.gep109, i64 16
  store <2 x i64> %wide.load111, ptr %next.gep109, align 8, !alias.scope !995, !noalias !998
  store <2 x i64> %wide.load112, ptr %i.ao, align 8, !alias.scope !995, !noalias !998
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.ap, label %middle.block114, label %vector.body107, !llvm.loop !1000

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %i.ah, %n.vec106
  br i1 %cmp.n115, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader139

.lr.ph.i.i.i.i.i.i.i.preheader139:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block114
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block114 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block114 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader139, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader139 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader139 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !998, !noalias !995
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !995, !noalias !998
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1001

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block114, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc12 ], [ %i.ak, %middle.block114 ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !983
  store ptr %i.at, ptr %i.o, align 8, !tbaa !980
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  store ptr %i.au, ptr %i.n, align 8, !tbaa !984
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28
  %i.av = phi ptr [ null, %.lr.ph ], [ %i.cf, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28 ] ; 6 uses
  %.sroa.051.061 = phi ptr [ %.sroa.051.059, %.lr.ph ], [ %.sroa.051.0, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28 ] ; 2 uses
  %i.aw = phi ptr [ null, %.lr.ph ], [ %i.cg, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28 ] ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.051.061, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !271 ; 2 uses
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !984
  %.not.i.i13 = icmp eq ptr %i.av, %i.az
  br i1 %.not.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = ptrtoint ptr %i.ay to i64
  store i64 %i.ba, ptr %i.av, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.f, align 8, !tbaa !980
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28

bb.h:                                             ; preds = %bb.f
  %i.bc = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.i, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i14

bb.i:                                             ; preds = %bb.h
  store ptr %i.aw, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i14: ; preds = %bb.h
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i15, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #28
          to label %.noexc27 unwind label %.loopexit ; 8 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  %i.bo = ptrtoint ptr %i.ay to i64
  store i64 %i.bo, ptr %i.bn, align 8
  %.not10.i.i.i.i.i.i.i17 = icmp eq ptr %i.aw, %i.av
  br i1 %.not10.i.i.i.i.i.i.i17, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i18.preheader

.lr.ph.i.i.i.i.i.i.i18.preheader:                 ; preds = %.noexc27
  %i.bp = ptrtoaddr ptr %i.bm to i64
  %4 = add i64 %i.bc, -8
  %5 = sub i64 %4, %i.bd                          ; 2 uses
  %i.bq = lshr i64 %5, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.bs = sub i64 %i.bd, %i.bp
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond136 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond136, label %.lr.ph.i.i.i.i.i.i.i18.preheader141, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader
  %n.vec = and i64 %i.br, 4611686018427387900     ; 3 uses
  %i.bt = shl i64 %n.vec, 3                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.aw, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.bw ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.aw, i64 %i.bw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.bx = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !alias.scope !1005, !noalias !1002
  %wide.load98 = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !1005, !noalias !1002
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1002, !noalias !1005
  store <2 x i64> %wide.load98, ptr %i.by, align 8, !alias.scope !1002, !noalias !1005
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1007

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i18.preheader141

.lr.ph.i.i.i.i.i.i.i18.preheader141:              ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader, %middle.block
  %.012.i.i.i.i.i.i.i19.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i18.preheader ], [ %i.bu, %middle.block ]
  %.0911.i.i.i.i.i.i.i20.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i18.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader141, %.lr.ph.i.i.i.i.i.i.i18
  %.012.i.i.i.i.i.i.i19 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i18 ], [ %.012.i.i.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i.i.i18.preheader141 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i20 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i18 ], [ %.0911.i.i.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i.i.i18.preheader141 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i.i20, align 8, !alias.scope !1005, !noalias !1002
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i.i19, align 8, !alias.scope !1002, !noalias !1005
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i20, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i19, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i21 = icmp eq ptr %i.cb, %i.av
  br i1 %.not.i.i.i.i.i.i.i21, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i18, !llvm.loop !1008

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i22: ; preds = %.lr.ph.i.i.i.i.i.i.i18, %middle.block, %.noexc27
  %.0.lcssa.i.i.i.i.i.i.i23 = phi ptr [ %i.bm, %.noexc27 ], [ %i.bu, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i18 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i23, i64 8 ; 2 uses
  %.not.i23.i.i.i24 = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i24, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i22
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25: ; preds = %bb.j, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i22
  store ptr %i.cd, ptr %i.f, align 8, !tbaa !980
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.ce, ptr %i.g, align 8, !tbaa !984
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit28: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25, %bb.g
  %i.cf = phi ptr [ %i.cd, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25 ], [ %i.bb, %bb.g ] ; 4 uses
  %i.cg = phi ptr [ %i.bm, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i25 ], [ %i.aw, %bb.g ] ; 3 uses
  %.sroa.051.0 = load ptr, ptr %.sroa.051.061, align 8, !tbaa !268 ; 2 uses
  %.not = icmp eq ptr %.sroa.051.0, null
  br i1 %.not, label %._crit_edge, label %bb.f

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i14
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aw, ptr %0, align 8
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.b
  %i.ch = phi ptr [ %i.n, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.b ]
  %i.ci = phi ptr [ %i.o, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.cj = phi ptr [ %i.au, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre68, %bb.b ] ; 4 uses
  %i.ck = phi ptr [ %i.at, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.m, %bb.b ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1009, !nonnull !21, !align !167 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit
  %i.cn = ptrtoint ptr %i.cm to i64
  store i64 %i.cn, ptr %i.ck, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.ci, align 8, !tbaa !980
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit44

bb.l:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit
  %i.cp = load ptr, ptr %0, align 8, !tbaa !983   ; 8 uses
  %i.cq = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.m, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i30

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc42 unwind label %bb.p

.noexc42:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.l
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #28
          to label %.noexc43 unwind label %bb.p   ; 8 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i30
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = ptrtoint ptr %i.cm to i64
  store i64 %i.dc, ptr %i.db, align 8
  %.not10.i.i.i.i.i.i.i33 = icmp eq ptr %i.cp, %i.cj
  br i1 %.not10.i.i.i.i.i.i.i33, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i34.preheader

.lr.ph.i.i.i.i.i.i.i34.preheader:                 ; preds = %.noexc43
  %i.dd = ptrtoaddr ptr %i.da to i64
  %6 = add i64 %i.cq, -8
  %7 = sub i64 %6, %i.cr                          ; 2 uses
  %i.de = lshr i64 %7, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check121 = icmp ult i64 %7, 72
  %i.dg = sub i64 %i.cr, %i.dd
  %diff.check119 = icmp ugt i64 %i.dg, -32
  %or.cond137 = or i1 %min.iters.check121, %diff.check119
  br i1 %or.cond137, label %.lr.ph.i.i.i.i.i.i.i34.preheader138, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i34.preheader
  %n.vec124 = and i64 %i.df, 4611686018427387900  ; 3 uses
  %i.dh = shl i64 %n.vec124, 3                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cp, i64 %i.dh
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.dk = shl i64 %index126, 3                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.da, i64 %i.dk ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.cp, i64 %i.dk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.dl = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129 = load <2 x i64>, ptr %next.gep128, align 8, !alias.scope !1013, !noalias !1010
  %wide.load130 = load <2 x i64>, ptr %i.dl, align 8, !alias.scope !1013, !noalias !1010
  %i.dm = getelementptr i8, ptr %next.gep127, i64 16
  store <2 x i64> %wide.load129, ptr %next.gep127, align 8, !alias.scope !1010, !noalias !1013
  store <2 x i64> %wide.load130, ptr %i.dm, align 8, !alias.scope !1010, !noalias !1013
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.dn, label %middle.block132, label %vector.body125, !llvm.loop !1015

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.df, %n.vec124
  br i1 %cmp.n133, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i34.preheader138

.lr.ph.i.i.i.i.i.i.i34.preheader138:              ; preds = %.lr.ph.i.i.i.i.i.i.i34.preheader, %middle.block132
  %.012.i.i.i.i.i.i.i35.ph = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i34.preheader ], [ %i.di, %middle.block132 ]
  %.0911.i.i.i.i.i.i.i36.ph = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i34.preheader ], [ %i.dj, %middle.block132 ]
  br label %.lr.ph.i.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i.i34:                           ; preds = %.lr.ph.i.i.i.i.i.i.i34.preheader138, %.lr.ph.i.i.i.i.i.i.i34
  %.012.i.i.i.i.i.i.i35 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.012.i.i.i.i.i.i.i35.ph, %.lr.ph.i.i.i.i.i.i.i34.preheader138 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i36 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.0911.i.i.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i.i.i34.preheader138 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.do = load i64, ptr %.0911.i.i.i.i.i.i.i36, align 8, !alias.scope !1013, !noalias !1010
  store i64 %i.do, ptr %.012.i.i.i.i.i.i.i35, align 8, !alias.scope !1010, !noalias !1013
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i36, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i35, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i37 = icmp eq ptr %i.dp, %i.cj
  br i1 %.not.i.i.i.i.i.i.i37, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i34, !llvm.loop !1016

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i.i34, %middle.block132, %.noexc43
  %.0.lcssa.i.i.i.i.i.i.i39 = phi ptr [ %i.da, %.noexc43 ], [ %i.di, %middle.block132 ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i34 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i39, i64 8
  %.not.i23.i.i.i40 = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i.i40, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i41, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i38
  tail call void @_ZdlPv(ptr noundef nonnull %i.cp) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i41

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i41: ; preds = %bb.n, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i38
  store ptr %i.da, ptr %0, align 8, !tbaa !983
  store ptr %i.dr, ptr %i.ci, align 8, !tbaa !980
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.ds, ptr %i.ch, align 8, !tbaa !984
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit44

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit44: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i41, %bb.k
  ret void

bb.o:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i30, %bb.m
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.o
  %i.dv = phi ptr [ %i.q, %bb.o ], [ %i.cp, %bb.p ], [ %i.aw, %.loopexit ], [ %i.aw, %.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.o ], [ %i.du, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPv(ptr noundef nonnull %i.dv) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb17PhysicalDelimJoin14ParamsToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.duckdb::InsertionOrderPreservingMap") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::vector.1844", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988, !nonnull !21, !align !167 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.duckdb::InsertionOrderPreservingMap") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !119
  store i32 1970039845, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.h, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.i, align 4, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.k = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.a unwind label %bb.l

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.a, align 8, !tbaa !68, !noalias !1017
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1020
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !1020
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !518, !noalias !1020 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !521, !noalias !1020 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.p) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !522

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !518, !noalias !1020
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.t = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i.i, label %._crit_edge.i.i9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #29
  br label %._crit_edge.i.i9

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1020
  br label %.body

._crit_edge.i.i9:                                 ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.v, ptr %5, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.v, ptr noundef nonnull align 1 dereferenceable(11) @.str.14, i64 11, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 11, ptr %i.w, align 8, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 0, ptr %i.x, align 1, !tbaa !66
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixERKS6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.m       ; 9 uses

bb.e:                                             ; preds = %._crit_edge.i.i9
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = load ptr, ptr %3, align 8, !tbaa !70    ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.ae, label %bb.f, label %.thread.i
end_hunk_2
begin_hunk_3_@_ZNK6duckdb16PhysicalHashJoin19InitializeHashTableERNS_13ClientContextE:bb.a

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bf, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !62
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #30, !inline_history !1127
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #30, !inline_history !1127
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i38 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i38, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.r ], [ %i.bs, %bb.s ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.t, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !67

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #30, !inline_history !1128
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %10) #30, !inline_history !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.bu = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZNK6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.u unwind label %bb.cc      ; 2 uses

bb.u:                                             ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1129 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1132
  %.not.i.i = icmp eq ptr %i.bw, %i.by
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !1123
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !1129
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit

bb.w:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr %6, align 8, !tbaa !1133  ; 4 uses
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 5 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.x, label %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc unwind label %bb.cc

.noexc:                                           ; preds = %bb.x
  unreachable

_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #28
          to label %.noexc40 unwind label %bb.cc  ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  store ptr %i.bu, ptr %i.cm, align 8, !tbaa !1123
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.y, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.y:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %i.ca, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.y, %.noexc40
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #29
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.cl, ptr %6, align 8, !tbaa !1133
  store ptr %i.co, ptr %i.bv, align 8, !tbaa !1129
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.cp, ptr %i.bx, align 8, !tbaa !1132
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.v
  %i.cq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aa unwind label %bb.by

bb.aa:                                            ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !174 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !175
  %.not.i41 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.noexc42 unwind label %bb.by

.noexc42:                                         ; preds = %bb.ab
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !174
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !174
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.by

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc42, %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ah, i64 560 ; 4 uses
  %i.cz = load ptr, ptr %7, align 8, !tbaa !1123  ; 5 uses
  store ptr null, ptr %7, align 8, !tbaa !1123
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 568 ; 6 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !238 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 576 ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !239
  %.not.i.i44 = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i44, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.de = ptrtoint ptr %i.cz to i64
  store i64 %i.de, ptr %i.db, align 8, !tbaa !159
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.df, ptr %i.da, align 8, !tbaa !238
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit51

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !240 ; 10 uses
  %i.dh = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.af, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc47 unwind label %bb.cd

.noexc47:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i45 = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i45, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i.i.i46 = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i46)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #28
          to label %.noexc48 unwind label %bb.cd  ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  %i.dt = ptrtoint ptr %i.cz to i64
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !159
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.db
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc48
  %20 = add i64 %i.dh, -8
  %21 = sub i64 %20, %i.di                        ; 2 uses
  %i.du = lshr i64 %21, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %21, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader298, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dw = add i64 %i.dh, -8
  %i.dx = sub i64 %i.dw, %i.di
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.dz
  %scevgep271 = getelementptr i8, ptr %i.dg, i64 %i.dz
  %bound0 = icmp ult ptr %i.dr, %scevgep271
  %bound1 = icmp ult ptr %i.dg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader298, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dv, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dr, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dg, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dr, i64 %i.ed ; 2 uses
  %next.gep272 = getelementptr i8, ptr %i.dg, i64 %i.ed ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.ee = getelementptr i8, ptr %next.gep272, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep272, align 8, !tbaa !159, !alias.scope !1139, !noalias !1134
  %wide.load273 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !159, !alias.scope !1139, !noalias !1134
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !159, !alias.scope !1142, !noalias !1139
  store <2 x i64> %wide.load273, ptr %i.ef, align 8, !tbaa !159, !alias.scope !1142, !noalias !1139
  %i.eg = getelementptr i8, ptr %next.gep272, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep272, align 8, !tbaa !159, !alias.scope !1139, !noalias !1134
  store <2 x ptr> splat (ptr null), ptr %i.eg, align 8, !tbaa !159, !alias.scope !1139, !noalias !1134
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !1144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader298

.lr.ph.i.i.i.i.i.i.i.preheader298:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dr, %vector.memcheck ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eb, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader298, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader298 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader298 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.ei = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !159, !alias.scope !1137, !noalias !1134
  store i64 %i.ei, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !159, !alias.scope !1134, !noalias !1137
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !159, !alias.scope !1137, !noalias !1134
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.db
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1145

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.noexc48 ], [ %i.eb, %middle.block ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dr, ptr %i.cy, align 8, !tbaa !240
  store ptr %i.el, ptr %i.da, align 8, !tbaa !238
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.em, ptr %i.dc, align 8, !tbaa !239
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit51: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN6duckdb17CountFunctionBase11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::AggregateFunction") align 8 %13)
          to label %bb.ah unwind label %bb.ce

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.en = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28
          to label %.noexc53 unwind label %bb.cf  ; 5 uses

.noexc53:                                         ; preds = %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 208
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %bb.ai unwind label %bb.aj, !noalias !1146

bb.ai:                                            ; preds = %.noexc53
  invoke void @_ZN6duckdb24BoundReferenceExpressionC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.en, ptr noundef nonnull %3, i64 noundef 0)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i55 unwind label %bb.ak, !noalias !1146

bb.aj:                                            ; preds = %.noexc53
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30, !noalias !1146
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.i52 = phi { ptr, i32 } [ %i.eq, %bb.ak ], [ %i.ep, %bb.aj ]
  call void @_ZdlPv(ptr noundef nonnull %i.en) #29, !noalias !1146
  br label %.body

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.ai
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.et = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28
          to label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit72 unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit172 ; 5 uses

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit72: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i55
  %i.eu = ptrtoint ptr %i.en to i64
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !159
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 6 uses
  store ptr %i.et, ptr %14, align 8, !tbaa !240
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !238
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %16, ptr noundef nonnull align 8 dereferenceable(368) %13)
          to label %.noexc74 unwind label %bb.cg

.noexc74:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %16, align 8, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 240
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.ew, ptr noundef nonnull align 8 dereferenceable(106) %i.ex, i64 106, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 352
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 352
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 360
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 360 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !59 ; 2 uses
  %i.fd = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !851
  store <2 x ptr> %i.fd, ptr %i.ey, align 8, !tbaa !851
  %.not.i.i.i.i.i73 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i73, label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit, label %bb.am

bb.am:                                            ; preds = %.noexc74
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 3 uses
  %i.ff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !3
  br label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit

bb.ao:                                            ; preds = %bb.am
  %i.fi = atomicrmw volatile add ptr %i.fe, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %14, align 8, !tbaa !240
  %.pre204 = load ptr, ptr %i.er, align 8, !tbaa !238
  %.pre205 = load ptr, ptr %i.es, align 8, !tbaa !239
  br label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit

_ZN6duckdb17AggregateFunctionC2ERKS0_.exit:       ; preds = %bb.ao, %bb.an, %.noexc74
  %i.fj = phi ptr [ %.pre205, %bb.ao ], [ %i.ev, %bb.an ], [ %i.ev, %.noexc74 ]
  %i.fk = phi ptr [ %.pre204, %bb.ao ], [ %i.ev, %bb.an ], [ %i.ev, %.noexc74 ]
  %i.fl = phi ptr [ %.pre, %bb.ao ], [ %i.et, %bb.an ], [ %i.et, %.noexc74 ]
  store ptr %i.fl, ptr %17, align 8, !tbaa !240
  %i.fm = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !238
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.fj, ptr %i.fn, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store ptr null, ptr %18, align 8, !tbaa !1122
  invoke void @_ZN6duckdb14FunctionBinder21BindAggregateFunctionENS_17AggregateFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEES7_NS_13AggregateTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1130") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, i8 noundef zeroext 1)
          to label %bb.ap unwind label %bb.ch

bb.ap:                                            ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit
  %i.fo = load ptr, ptr %15, align 8, !tbaa !1123
  store ptr null, ptr %15, align 8, !tbaa !1123
  %i.fp = load ptr, ptr %7, align 8, !tbaa !1123  ; 3 uses
  store ptr %i.fo, ptr %7, align 8, !tbaa !1123
  %.not.i.i.i.i.i75 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i75, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit80, label %_ZN6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit77

_ZN6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit77: ; preds = %bb.ap
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !63
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(512) %i.fp) #30, !inline_history !1124
end_hunk_3
begin_hunk_4_@_ZNK6duckdb16PhysicalHashJoin19InitializeHashTableERNS_13ClientContextE:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit95

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit95: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i93, %bb.aq
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %16, align 8, !tbaa !63
  %i.gi = load ptr, ptr %i.fa, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i96, label %_ZN6duckdb17AggregateFunctionD2Ev.exit100, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit95
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.gj, align 8, !tbaa !60
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !62
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #30, !inline_history !1127
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #30, !inline_history !1127
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit100

bb.at:                                            ; preds = %bb.ar
  %i.gu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i97 = icmp eq i8 %i.gu, 0
  br i1 %.not.i.i.i.i.i97, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gv = add nsw i32 %i.gm, -1
  store i32 %i.gv, ptr %i.gj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i98

bb.av:                                            ; preds = %bb.at
  %i.gw = atomicrmw volatile add ptr %i.gj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i98: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i99 = phi i32 [ %i.gm, %bb.au ], [ %i.gw, %bb.av ]
  %i.gx = icmp eq i32 %.0.i.i.i.i.i.i99, 1
  br i1 %i.gx, label %bb.aw, label %_ZN6duckdb17AggregateFunctionD2Ev.exit100, !prof !67

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i98
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #30, !inline_history !1128
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit100

_ZN6duckdb17AggregateFunctionD2Ev.exit100:        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit95, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i98, %bb.aw
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %16) #30, !inline_history !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.gy = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZNK6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ax unwind label %bb.cj     ; 2 uses

bb.ax:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit100
  %i.gz = load ptr, ptr %i.bv, align 8, !tbaa !1129 ; 4 uses
  %i.ha = load ptr, ptr %i.bx, align 8, !tbaa !1132
  %.not.i.i101 = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i.i101, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !1123
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hb, ptr %i.bv, align 8, !tbaa !1129
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit110

bb.az:                                            ; preds = %bb.ax
  %i.hc = load ptr, ptr %6, align 8, !tbaa !1133  ; 4 uses
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 5 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775800
  br i1 %i.hg, label %bb.ba, label %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i102

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc108 unwind label %bb.cj

.noexc108:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i102: ; preds = %bb.az
  %i.hh = ashr exact i64 %i.hf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i103 = call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hi = add nsw i64 %.sroa.speculated.i.i.i.i103, %i.hh ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hi, i64 1152921504606846975)
  %i.hl = select i1 %i.hj, i64 1152921504606846975, i64 %i.hk ; 3 uses
  %.not.i.i.i.i104 = icmp ne i64 %i.hl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i104)
  %i.hm = shl nuw nsw i64 %i.hl, 3
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #28
          to label %.noexc109 unwind label %bb.cj ; 4 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i102
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %i.hf ; 2 uses
  store ptr %i.gy, ptr %i.ho, align 8, !tbaa !1123
  %i.hp = icmp sgt i64 %i.hf, 0
  br i1 %i.hp, label %bb.bb, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i105

bb.bb:                                            ; preds = %.noexc109
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr align 8 %i.hc, i64 %i.hf, i1 false)
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i105

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i105: ; preds = %bb.bb, %.noexc109
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.not.i17.i.i.i106 = icmp eq ptr %i.hc, null
  br i1 %.not.i17.i.i.i106, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i107, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i105
  call void @_ZdlPv(ptr noundef nonnull %i.hc) #29
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i107

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i107: ; preds = %bb.bc, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i105
  store ptr %i.hn, ptr %6, align 8, !tbaa !1133
  store ptr %i.hq, ptr %i.bv, align 8, !tbaa !1129
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hl
  store ptr %i.hr, ptr %i.bx, align 8, !tbaa !1132
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit110

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit110: ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i107, %bb.ay
  %i.hs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bd unwind label %bb.ck

bb.bd:                                            ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit110
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 56 ; 2 uses
  %i.hu = load ptr, ptr %i.cs, align 8, !tbaa !174 ; 3 uses
  %i.hv = load ptr, ptr %i.cu, align 8, !tbaa !175
  %.not.i111 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not.i111, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.ht)
          to label %.noexc112 unwind label %bb.ck

.noexc112:                                        ; preds = %bb.be
  %i.hw = load ptr, ptr %i.cs, align 8, !tbaa !174
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store ptr %i.hx, ptr %i.cs, align 8, !tbaa !174
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit114

bb.bf:                                            ; preds = %bb.bd
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.ht)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit114 unwind label %bb.ck

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit114: ; preds = %.noexc112, %bb.bf
  %i.hy = load ptr, ptr %7, align 8, !tbaa !1123  ; 5 uses
  store ptr null, ptr %7, align 8, !tbaa !1123
  %i.hz = load ptr, ptr %i.da, align 8, !tbaa !238 ; 6 uses
  %i.ia = load ptr, ptr %i.dc, align 8, !tbaa !239
  %.not.i.i115 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i115, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit114
  %i.ib = ptrtoint ptr %i.hy to i64
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !159
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.ic, ptr %i.da, align 8, !tbaa !238
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit133

bb.bh:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit114
  %i.id = load ptr, ptr %i.cy, align 8, !tbaa !240 ; 10 uses
  %i.ie = ptrtoint ptr %i.hz to i64               ; 3 uses
  %i.if = ptrtoint ptr %i.id to i64               ; 3 uses
  %i.ig = sub i64 %i.ie, %i.if                    ; 3 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775800
  br i1 %i.ih, label %bb.bi, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i116

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc128 unwind label %bb.cl

.noexc128:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.bh
  %i.ii = ashr exact i64 %i.ig, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i117 = call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ij = add nsw i64 %.sroa.speculated.i.i.i.i117, %i.ii ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ii
  %i.il = call i64 @llvm.umin.i64(i64 %i.ij, i64 1152921504606846975)
  %i.im = select i1 %i.ik, i64 1152921504606846975, i64 %i.il ; 3 uses
  %.not.i.i.i.i118 = icmp ne i64 %i.im, 0
  call void @llvm.assume(i1 %.not.i.i.i.i118)
  %i.in = shl nuw nsw i64 %i.im, 3
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #28
          to label %.noexc129 unwind label %bb.cl ; 10 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i116
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ig
  %i.iq = ptrtoint ptr %i.hy to i64
  store i64 %i.iq, ptr %i.ip, align 8, !tbaa !159
  %.not10.i.i.i.i.i.i.i119 = icmp eq ptr %i.id, %i.hz
  br i1 %.not10.i.i.i.i.i.i.i119, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124, label %.lr.ph.i.i.i.i.i.i.i120.preheader

.lr.ph.i.i.i.i.i.i.i120.preheader:                ; preds = %.noexc129
  %22 = add i64 %i.ie, -8
  %23 = sub i64 %22, %i.if                        ; 2 uses
  %i.ir = lshr i64 %23, 3
  %i.is = add nuw nsw i64 %i.ir, 1                ; 2 uses
  %min.iters.check282 = icmp ult i64 %23, 152
  br i1 %min.iters.check282, label %.lr.ph.i.i.i.i.i.i.i120.preheader297, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i.i.i.i.i.i.i120.preheader
  %i.it = add i64 %i.ie, -8
  %i.iu = sub i64 %i.it, %i.if
  %i.iv = and i64 %i.iu, -8
  %i.iw = add i64 %i.iv, 8                        ; 2 uses
  %scevgep276 = getelementptr i8, ptr %i.io, i64 %i.iw
  %scevgep277 = getelementptr i8, ptr %i.id, i64 %i.iw
  %bound0278 = icmp ult ptr %i.io, %scevgep277
  %bound1279 = icmp ult ptr %i.id, %scevgep276
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i.i.i.i.i.i120.preheader297, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck275
  %n.vec285 = and i64 %i.is, 4611686018427387900  ; 3 uses
  %i.ix = shl i64 %n.vec285, 3                    ; 2 uses
  %i.iy = getelementptr i8, ptr %i.io, i64 %i.ix  ; 2 uses
  %i.iz = getelementptr i8, ptr %i.id, i64 %i.ix
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph283
  %index287 = phi i64 [ 0, %vector.ph283 ], [ %index.next292, %vector.body286 ] ; 2 uses
  %i.ja = shl i64 %index287, 3                    ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.io, i64 %i.ja ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.id, i64 %i.ja ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.jb = getelementptr i8, ptr %next.gep289, i64 16
  %wide.load290 = load <2 x i64>, ptr %next.gep289, align 8, !tbaa !159, !alias.scope !1154, !noalias !1149
  %wide.load291 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !159, !alias.scope !1154, !noalias !1149
  %i.jc = getelementptr i8, ptr %next.gep288, i64 16
  store <2 x i64> %wide.load290, ptr %next.gep288, align 8, !tbaa !159, !alias.scope !1157, !noalias !1154
  store <2 x i64> %wide.load291, ptr %i.jc, align 8, !tbaa !159, !alias.scope !1157, !noalias !1154
  %i.jd = getelementptr i8, ptr %next.gep289, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep289, align 8, !tbaa !159, !alias.scope !1154, !noalias !1149
  store <2 x ptr> splat (ptr null), ptr %i.jd, align 8, !tbaa !159, !alias.scope !1154, !noalias !1149
  %index.next292 = add nuw i64 %index287, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.je, label %middle.block293, label %vector.body286, !llvm.loop !1159

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.is, %n.vec285
  br i1 %cmp.n294, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124, label %.lr.ph.i.i.i.i.i.i.i120.preheader297

.lr.ph.i.i.i.i.i.i.i120.preheader297:             ; preds = %vector.memcheck275, %.lr.ph.i.i.i.i.i.i.i120.preheader, %middle.block293
  %.012.i.i.i.i.i.i.i121.ph = phi ptr [ %i.io, %vector.memcheck275 ], [ %i.io, %.lr.ph.i.i.i.i.i.i.i120.preheader ], [ %i.iy, %middle.block293 ]
  %.0911.i.i.i.i.i.i.i122.ph = phi ptr [ %i.id, %vector.memcheck275 ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i120.preheader ], [ %i.iz, %middle.block293 ]
  br label %.lr.ph.i.i.i.i.i.i.i120

.lr.ph.i.i.i.i.i.i.i120:                          ; preds = %.lr.ph.i.i.i.i.i.i.i120.preheader297, %.lr.ph.i.i.i.i.i.i.i120
  %.012.i.i.i.i.i.i.i121 = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i.i.i120 ], [ %.012.i.i.i.i.i.i.i121.ph, %.lr.ph.i.i.i.i.i.i.i120.preheader297 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i122 = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i.i.i120 ], [ %.0911.i.i.i.i.i.i.i122.ph, %.lr.ph.i.i.i.i.i.i.i120.preheader297 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.jf = load i64, ptr %.0911.i.i.i.i.i.i.i122, align 8, !tbaa !159, !alias.scope !1152, !noalias !1149
  store i64 %i.jf, ptr %.012.i.i.i.i.i.i.i121, align 8, !tbaa !159, !alias.scope !1149, !noalias !1152
  store ptr null, ptr %.0911.i.i.i.i.i.i.i122, align 8, !tbaa !159, !alias.scope !1152, !noalias !1149
  %i.jg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i122, i64 8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i121, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i123 = icmp eq ptr %i.jg, %i.hz
  br i1 %.not.i.i.i.i.i.i.i123, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124, label %.lr.ph.i.i.i.i.i.i.i120, !llvm.loop !1160

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124: ; preds = %.lr.ph.i.i.i.i.i.i.i120, %middle.block293, %.noexc129
  %.0.lcssa.i.i.i.i.i.i.i125 = phi ptr [ %i.io, %.noexc129 ], [ %i.iy, %middle.block293 ], [ %i.jh, %.lr.ph.i.i.i.i.i.i.i120 ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i125, i64 8
  %.not.i23.i.i.i126 = icmp eq ptr %i.id, null
  br i1 %.not.i23.i.i.i126, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i127, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124
  call void @_ZdlPv(ptr noundef nonnull %i.id) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i127

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i127: ; preds = %bb.bj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i124
  store ptr %i.io, ptr %i.cy, align 8, !tbaa !240
  store ptr %i.ji, ptr %i.da, align 8, !tbaa !238
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.im
  store ptr %i.jj, ptr %i.dc, align 8, !tbaa !239
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit133

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit133: ; preds = %bb.bg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i127
  %i.jk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %2)
          to label %bb.bk unwind label %bb.cm     ; 3 uses

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  invoke void @_ZN6duckdb9make_uniqINS_25GroupedAggregateHashTableEJRNS_13ClientContextERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEERS9_RNS6_IPNS_24BoundAggregateExpressionELb1ESaISE_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1100") align 8 %19, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.bl unwind label %bb.cn

bb.bl:                                            ; preds = %bb.bk
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ah, i64 584 ; 2 uses
  %i.jm = load ptr, ptr %19, align 8, !tbaa !1161
  store ptr null, ptr %19, align 8, !tbaa !1161
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !1161 ; 3 uses
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !1161
  %.not.i.i.i.i.i134 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i134, label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bl
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !63
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(2912) %i.jn) #30, !inline_history !1163
  %.pr198 = load ptr, ptr %19, align 8, !tbaa !1161 ; 3 uses
  %.not.i135 = icmp eq ptr %.pr198, null
  br i1 %.not.i135, label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.jr = load ptr, ptr %.pr198, align 8, !tbaa !63
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(2912) %.pr198) #30, !inline_history !1164
  br label %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bl, %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ah, i64 536
  %i.jv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.cm ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ah, i64 592
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 2048)
          to label %bb.bm unwind label %bb.cm

bb.bm:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ah, i64 736
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.jx, ptr noundef nonnull align 8 dereferenceable(32) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 2048)
          to label %bb.bn unwind label %bb.cm

bb.bn:                                            ; preds = %bb.bm
  %i.jy = load ptr, ptr %14, align 8, !tbaa !240  ; 4 uses
  %i.jz = load ptr, ptr %i.er, align 8, !tbaa !238 ; 2 uses
  %.not4.i.i.i137 = icmp eq ptr %i.jy, %i.jz
  br i1 %.not4.i.i.i137, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i146, label %.lr.ph.i.i.i138

.lr.ph.i.i.i138:                                  ; preds = %bb.bn, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i142
  %.05.i.i.i139 = phi ptr [ %i.ke, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i142 ], [ %i.jy, %bb.bn ] ; 2 uses
  %i.ka = load ptr, ptr %.05.i.i.i139, align 8, !tbaa !159 ; 3 uses
  %.not.i.i.i.i.i140 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i.i.i140, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i142, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i141

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i141: ; preds = %.lr.ph.i.i.i138
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !63
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(88) %i.ka) #30, !inline_history !1126
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i142

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i142: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i141, %.lr.ph.i.i.i138
  %i.ke = getelementptr inbounds nuw i8, ptr %.05.i.i.i139, i64 8 ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.ke, %i.jz
  br i1 %.not.i.i.i143, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i146, label %.lr.ph.i.i.i138, !llvm.loop !282

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i146: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i142, %bb.bn
  %.not.i.i1.i147 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i1.i147, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit148, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i146
  call void @_ZdlPv(ptr noundef nonnull %i.jy) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit148

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit148: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i146, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %13, align 8, !tbaa !63
  %i.kf = load ptr, ptr %i.fb, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i149, label %_ZN6duckdb17AggregateFunctionD2Ev.exit153, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit148
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 4 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 4294967297
  %i.kj = trunc i64 %i.kh to i32                  ; 2 uses
  br i1 %i.ki, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.kg, align 8, !tbaa !60
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  store i32 0, ptr %i.kk, align 4, !tbaa !62
  %i.kl = load ptr, ptr %i.kf, align 8, !tbaa !63
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #30, !inline_history !1127
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !63
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #30, !inline_history !1127
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit153

bb.br:                                            ; preds = %bb.bp
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i150 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i.i.i150, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ks = add nsw i32 %i.kj, -1
end_hunk_4
begin_hunk_5_@_ZNK6duckdb10unique_ptrINS_29GlobalUngroupedAggregateStateESt14default_deleteIS1_ELb1EEptEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_29GlobalUngroupedAggregateStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb29GlobalUngroupedAggregateState7CombineERNS_28LocalUngroupedAggregateStateE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZNK6duckdb10unique_ptrINS_28LocalUngroupedAggregateStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1085   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_28LocalUngroupedAggregateStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_28LocalUngroupedAggregateStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb16PhysicalHashJoin7CombineERNS_16ExecutionContextERNS_24OperatorSinkCombineInputE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !331, !nonnull !21, !align !167 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !21, !align !167 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1048 ; 5 uses
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.g = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 8 dereferenceable(784) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #30, !noalias !1220 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #31, !noalias !1220
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit:  ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1223 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1224
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %i.p = load i64, ptr %i.d, align 8, !tbaa !1117
  store i64 %i.p, ptr %i.m, align 8, !tbaa !1117
  store ptr null, ptr %i.d, align 8, !tbaa !1117
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.l, align 8, !tbaa !1223
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !1225
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !1225 ; 10 uses
  %i.s = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i21 = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i21)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #28
          to label %.noexc22 unwind label %bb.i   ; 11 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !1117
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !1117
  store ptr null, ptr %i.d, align 8, !tbaa !1117
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc22
  %3 = add i64 %i.s, -8
  %4 = sub i64 %3, %i.t                           ; 2 uses
  %i.af = lshr i64 %4, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ah = add i64 %i.s, -8
  %i.ai = sub i64 %i.ah, %i.t
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ak
  %scevgep34 = getelementptr i8, ptr %i.r, i64 %i.ak
  %bound0 = icmp ult ptr %i.ac, %scevgep34
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %i.r, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.ap = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !1117, !alias.scope !1231, !noalias !1226
  %wide.load36 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !1117, !alias.scope !1231, !noalias !1226
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1117, !alias.scope !1234, !noalias !1231
  store <2 x i64> %wide.load36, ptr %i.aq, align 8, !tbaa !1117, !alias.scope !1234, !noalias !1231
  %i.ar = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !1117, !alias.scope !1231, !noalias !1226
  store <2 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !1117, !alias.scope !1231, !noalias !1226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i.preheader38:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1117, !alias.scope !1229, !noalias !1226
  store i64 %i.at, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1117, !alias.scope !1226, !noalias !1229
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1117, !alias.scope !1229, !noalias !1226
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.m
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1237

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc22
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc22 ], [ %i.am, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !1225
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !1223
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !1224
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.c
  %i.ay = phi ptr [ %i.ac, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.pre, %bb.c ]
  %i.az = phi ptr [ %i.aw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.q, %bb.c ]
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 8
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb20TemporaryMemoryState7SetZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bi)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e, %bb.h, %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

bb.j:                                             ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !785, !nonnull !21, !align !167
  %i.bl = invoke noundef nonnull align 8 dereferenceable(536) ptr @_ZN6duckdb13QueryProfiler3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.bk)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1238, !nonnull !21, !align !167
  invoke void @_ZN6duckdb16OperatorProfiler5FlushERKNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(160) %i.bn, ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !1238, !nonnull !21, !align !167
  invoke void @_ZN6duckdb13QueryProfiler5FlushERNS_16OperatorProfilerE(ptr noundef nonnull align 8 dereferenceable(536) %i.bl, ptr noundef nonnull align 8 dereferenceable(160) %i.bo)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !940
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !1173, !range !20, !noundef !21
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_22JoinFilterPushdownInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_21JoinFilterGlobalStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 1056
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_20JoinFilterLocalStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_29GlobalUngroupedAggregateStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %.noexc23 unwind label %bb.s

.noexc23:                                         ; preds = %bb.r
  %i.ca = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK6duckdb10unique_ptrINS_28LocalUngroupedAggregateStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %.noexc24 unwind label %bb.s

.noexc24:                                         ; preds = %.noexc23
  invoke void @_ZN6duckdb29GlobalUngroupedAggregateState7CombineERNS_28LocalUngroupedAggregateStateE(ptr noundef nonnull align 8 dereferenceable(232) %i.bz, ptr noundef nonnull align 8 dereferenceable(96) %i.ca)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %.noexc24, %.noexc23, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.m, %bb.n, %.noexc24
  %i.cc = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #30 ; 0 uses
  ret i8 0

_ZNSt11unique_lockISt5mutexED2Ev.exit28:          ; preds = %bb.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.s ], [ %i.bj, %bb.i ]
  %i.cd = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #30 ; 0 uses
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(784)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1239   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

end_hunk_5
begin_hunk_6_@_ZN6duckdb6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS3_EE4backEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZNK6duckdb16PhysicalOperator18CanSaturateThreadsERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb8Pipeline16GetClientContextEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(280) ptr @_ZN6duckdb12MetaPipeline12GetLastChildEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #6

declare void @_ZN6duckdb12MetaPipeline24AddRecursiveDependenciesERKNS_6vectorINS_10shared_ptrINS_8PipelineELb1EEELb1ESaIS4_EEERKS0_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #6

declare void @_ZN6duckdb12MetaPipeline19CreateChildPipelineERNS_8PipelineERNS_16PhysicalOperatorES2_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !971    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !974  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !62
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !1964
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !1964
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !976

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !971
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #29
  br label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_8PipelineELb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12PhysicalJoin14BuildPipelinesERNS_8PipelineERNS_12MetaPipelineE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb12PhysicalJoin18BuildJoinPipelinesERNS_8PipelineERNS_12MetaPipelineERNS_16PhysicalOperatorEb(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(136) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb12PhysicalJoin10GetSourcesEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(138) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %i.c)
  %i.g = load ptr, ptr %1, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !980  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !984
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %1 to i64
  store i64 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !980
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.k, align 8, !tbaa !980
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !983    ; 7 uses
  %i.s = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #28
          to label %.noexc5 unwind label %bb.i    ; 8 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = ptrtoint ptr %1 to i64
  store i64 %i.ae, ptr %i.ad, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc5
  %i.af = ptrtoaddr ptr %i.ac to i64
  %2 = add i64 %i.s, -8
  %3 = sub i64 %2, %i.t                           ; 2 uses
  %i.ag = lshr i64 %3, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.ai = sub i64 %i.t, %i.af
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %i.r, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.am ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.r, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !alias.scope !1968, !noalias !1965
  %wide.load11 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !1968, !noalias !1965
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1965, !noalias !1968
  store <2 x i64> %wide.load11, ptr %i.ao, align 8, !alias.scope !1965, !noalias !1968
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1970

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.i.preheader13:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1968, !noalias !1965
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1965, !noalias !1968
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1971

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc5 ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !983
  store ptr %i.at, ptr %i.k, align 8, !tbaa !980
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.au, ptr %i.m, align 8, !tbaa !984
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.d, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.b
  ret void

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !983   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22PhysicalNestedLoopJoinC2ERNS_12PhysicalPlanERNS_21LogicalComparisonJoinERNS_16PhysicalOperatorES6_NS_6vectorINS_13JoinConditionELb1ESaIS8_EEENS_8JoinTypeEmNS_10unique_ptrINS_22JoinFilterPushdownInfoESt14default_deleteISD_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr nofree noundef captures(none) %5, i8 noundef zeroext %6, i64 noundef %7, ptr nofree noundef captures(none) %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.duckdb::vector.75", align 16 ; 6 uses
  %i.a = load <2 x ptr>, ptr %5, align 8, !tbaa !123
  store <2 x ptr> %i.a, ptr %9, align 16, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  store ptr %i.d, ptr %i.b, align 16, !tbaa !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb22PhysicalComparisonJoinC2ERNS_12PhysicalPlanERNS_15LogicalOperatorENS_20PhysicalOperatorTypeENS_6vectorINS_13JoinConditionELb1ESaIS7_EEENS_8JoinTypeEm(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(97) %2, i8 noundef zeroext 32, ptr noundef nonnull %9, i8 noundef zeroext %6, i64 noundef %7)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = load ptr, ptr %9, align 16, !tbaa !157   ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !158  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(88) %i.i) #30, !inline_history !161
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.m = load ptr, ptr %.05.i.i.i, align 8, !tbaa !159 ; 3 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(88) %i.m) #30, !inline_history !161
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !162

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i, %bb.b
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #29
  br label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN6duckdb22PhysicalNestedLoopJoinE, i64 16), ptr %0, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !159
  store i64 %i.t, ptr %i.r, align 8, !tbaa !159
  store ptr null, ptr %i.s, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load ptr, ptr %8, align 8, !tbaa !940
  store ptr null, ptr %8, align 8, !tbaa !940
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !940  ; 6 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !940
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_22JoinFilterPushdownInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !240  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !238 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.d ] ; 2 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !159 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(88) %i.ab) #30, !inline_history !1057
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !282

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !240
end_hunk_6
begin_hunk_7_@_ZN6duckdb25PositionalJoinGlobalState7GetDataERNS_9DataChunkE:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !2217, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i8 1, ptr %i.c, align 8, !tbaa !2217
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  invoke void @_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i8 noundef zeroext 1)
          to label %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit unwind label %bb.e

_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.noexc
  %i.i = invoke noundef i64 @_ZN6duckdb25PositionalJoinGlobalState6RefillEv(ptr noundef nonnull align 8 dereferenceable(561) %0)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2227, !range !20, !noundef !21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.k, label %bb.f

bb.e:                                             ; preds = %.noexc, %bb.c, %_ZN6duckdb25PositionalJoinGlobalState14InitializeScanEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = load ptr, ptr %1, align 8, !tbaa !57
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.neg = sdiv exact i64 %i.aa, -104
  %i.ab = add nsw i64 %.neg, %i.t                 ; 3 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2226
  %i.ag = sub i64 %i.ad, %i.af
  %i.ah = tail call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 2048) ; 2 uses
  %i.ai = invoke noundef i64 @_ZN6duckdb25PositionalJoinGlobalState8CopyDataERNS_9DataChunkEmm(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ah, i64 noundef %i.ab)
          to label %bb.k unwind label %bb.l       ; 0 uses

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.01824 = phi i64 [ %i.ak, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.01824)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i8 noundef zeroext 2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = add nuw i64 %.01824, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2233

bb.j:                                             ; preds = %bb.h, %bb.g, %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ah, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sink, ptr %i.am, align 8, !tbaa !41
  %i.an = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.al, %bb.j ], [ %i.ao, %bb.l ]
  %i.ap = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZNK6duckdb22PhysicalPositionalJoin15GetDataInternalERNS_16ExecutionContextERNS_9DataChunkERNS_19OperatorSourceInputE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @_ZN6duckdb25PositionalJoinGlobalState7GetDataERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(561) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq i64 %i.d, 0
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22PhysicalPositionalJoin14BuildPipelinesERNS_8PipelineERNS_12MetaPipelineE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb12PhysicalJoin18BuildJoinPipelinesERNS_8PipelineERNS_12MetaPipelineERNS_16PhysicalOperatorEb(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(136) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22PhysicalPositionalJoin10GetSourcesEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.duckdb::vector.772") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %i.c)
  %i.g = load ptr, ptr %1, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !980  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !984
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %1 to i64
  store i64 %i.o, ptr %i.l, align 8
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !980
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.k, align 8, !tbaa !980
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !983    ; 7 uses
  %i.s = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #28
          to label %.noexc5 unwind label %bb.i    ; 8 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ae = ptrtoint ptr %1 to i64
  store i64 %i.ae, ptr %i.ad, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc5
  %i.af = ptrtoaddr ptr %i.ac to i64
  %2 = add i64 %i.s, -8
  %3 = sub i64 %2, %i.t                           ; 2 uses
  %i.ag = lshr i64 %3, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.ai = sub i64 %i.t, %i.af
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %i.r, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.am ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.r, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  %i.an = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !alias.scope !2237, !noalias !2234
  %wide.load11 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !2237, !noalias !2234
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2234, !noalias !2237
  store <2 x i64> %wide.load11, ptr %i.ao, align 8, !alias.scope !2234, !noalias !2237
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !2239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.i.preheader13:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2237, !noalias !2234
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !2234, !noalias !2237
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2240

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc5 ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !983
  store ptr %i.at, ptr %i.k, align 8, !tbaa !980
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.au, ptr %i.m, align 8, !tbaa !984
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.d, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.b
  ret void

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !983   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #29
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17PhysicalRangeJoin16LocalSortedTableC2ERNS_16ExecutionContextERNS0_17GlobalSortedTableEm(ptr noundef nonnull align 8 dereferenceable(248) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.24", align 8 ; 17 uses
  %5 = alloca %"class.duckdb::unique_ptr.254", align 8 ; 7 uses
  store ptr %2, ptr %0, align 8, !tbaa !1748
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !290
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !785, !nonnull !21, !align !167
  invoke void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(65) %i.b, ptr noundef nonnull align 8 dereferenceable(512) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %2, align 8, !tbaa !1722, !nonnull !21, !align !167 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123  ; 2 uses
  %.not4950 = icmp eq ptr %i.i, %i.k
  br i1 %.not4950, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.not = icmp eq i64 %3, 0
  %.idx = select i1 %.not, i64 0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !785, !nonnull !21, !align !167
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.n)
          to label %bb.o unwind label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %.sroa.045.051 = phi ptr [ %i.i, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.045.051, i64 %.idx ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.t)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !174  ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !174
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.z, ptr %i.l, align 8, !tbaa !174
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.n

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.045.051, i64 24 ; 2 uses
  %.not49 = icmp eq ptr %i.aa, %i.k
  br i1 %.not49, label %._crit_edge, label %bb.h

end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE17_M_realloc_insertIJNS0_9OrderTypeENS0_15OrderByNullTypeENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS8_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  store <2 x i64> %i.ah, ptr %i.ae, align 8, !tbaa !851, !alias.scope !2450, !noalias !2453
  store ptr null, ptr %i.ag, align 8, !tbaa !277, !alias.scope !2453, !noalias !2450
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2455

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.aj, %.lr.ph.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i32 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i32, label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i33
  %.012.i.i.i.i34 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i33 ], [ %i.ak, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i35 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i33 ], [ %1, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.al = load i16, ptr %.0911.i.i.i.i35, align 8, !alias.scope !2459, !noalias !2456
  store i16 %i.al, ptr %.012.i.i.i.i34, align 8, !alias.scope !2456, !noalias !2459
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i34, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i35, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i35, i64 16
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !tbaa !851, !alias.scope !2459, !noalias !2456
  store ptr null, ptr %i.an, align 8, !tbaa !159, !alias.scope !2459, !noalias !2456
  store <2 x i64> %i.ap, ptr %i.am, align 8, !tbaa !851, !alias.scope !2456, !noalias !2459
  store ptr null, ptr %i.ao, align 8, !tbaa !277, !alias.scope !2459, !noalias !2456
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i35, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i34, i64 24 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i33, !llvm.loop !2455

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38: ; preds = %.lr.ph.i.i.i.i33, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i37 = phi ptr [ %i.ak, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ar, %.lr.ph.i.i.i.i33 ]
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38
  call void @_ZdlPv(ptr noundef nonnull %i.c) #29
  br label %_ZNSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !189
  store ptr %.0.lcssa.i.i.i.i37, ptr %i.a, align 8, !tbaa !186
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.as, align 8, !tbaa !197
  ret void

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i, %bb.c
  %i.av = extractvalue { ptr, i32 } %i.u, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #30 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.p) #29
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.f

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.au

bb.h:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #33
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN6duckdb16BoundOrderByNodeC1ENS_9OrderTypeENS_15OrderByNullTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext, i8 noundef zeroext, ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19AsOfGlobalSinkStateC2ERNS_13ClientContextERKNS_16PhysicalAsOfJoinE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(352) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i:
  %3 = alloca %"class.duckdb::vector.132", align 8 ; 10 uses
  %4 = alloca %"class.duckdb::unique_ptr.297", align 8 ; 17 uses
  %5 = alloca %"class.duckdb::unique_ptr.57", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::unique_ptr.297", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::unique_ptr.57", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !570
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !2461
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb19AsOfGlobalSinkStateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %i.d, align 8, !tbaa !298
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i unwind label %bb.w ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.i, ptr %i.e, align 8, !tbaa !326
  store ptr %i.i, ptr %i.h, align 8, !tbaa !325
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.g, align 8, !tbaa !2462
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit unwind label %bb.w ; 3 uses

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.l, ptr %i.f, align 8, !tbaa !330
  store ptr %i.l, ptr %i.m, align 8, !tbaa !329
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.k, align 8, !tbaa !2463
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0)
          to label %bb.a unwind label %bb.x

bb.a:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !951
  invoke void @_ZN6duckdb12SortStrategy7FactoryERNS_13ClientContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEERKNS3_INS_16BoundOrderByNodeELb1ESaISD_EEERKNS3_INS_11LogicalTypeELb1ESaISI_EEERKNS3_INS4_INS_14BaseStatisticsES6_ISN_ELb1EEELb1ESaISP_EEEmb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.297") align 8 %4, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.v, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.z       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.57") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.d unwind label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !329 ; 6 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !2463
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %bb.e, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.d
  %i.ad = load i64, ptr %5, align 8, !tbaa !293
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !293
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !329
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !330 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc39 unwind label %bb.aa

.noexc39:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28
          to label %.noexc40 unwind label %bb.aa  ; 10 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  %i.as = load i64, ptr %5, align 8, !tbaa !293
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc40
  %8 = add i64 %i.ag, -8
  %9 = sub i64 %8, %i.ah                          ; 2 uses
  %i.at = lshr i64 %9, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader226, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.av = add i64 %i.ag, -8
  %i.aw = sub i64 %i.av, %i.ah
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.ay
  %scevgep151 = getelementptr i8, ptr %i.af, i64 %i.ay
  %bound0 = icmp ult ptr %i.aq, %scevgep151
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader226, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aq, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.af, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bc ; 2 uses
  %next.gep152 = getelementptr i8, ptr %i.af, i64 %i.bc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  %i.bd = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep152, align 8, !tbaa !293, !alias.scope !2469, !noalias !2464
  %wide.load153 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !293, !alias.scope !2469, !noalias !2464
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !293, !alias.scope !2472, !noalias !2469
  store <2 x i64> %wide.load153, ptr %i.be, align 8, !tbaa !293, !alias.scope !2472, !noalias !2469
  %i.bf = getelementptr i8, ptr %next.gep152, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep152, align 8, !tbaa !293, !alias.scope !2469, !noalias !2464
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !293, !alias.scope !2469, !noalias !2464
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !2474

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader226

.lr.ph.i.i.i.i.i.i.preheader226:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader226, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader226 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader226 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  %i.bh = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !293, !alias.scope !2467, !noalias !2464
  store i64 %i.bh, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !293, !alias.scope !2464, !noalias !2467
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !293, !alias.scope !2467, !noalias !2464
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2475

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc40
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aq, %.noexc40 ], [ %i.ba, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.af) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.g
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !330
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !329
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !2463
  %.pr = load ptr, ptr %5, align 8, !tbaa !293    ; 3 uses
  %.not.i41 = icmp eq ptr %.pr, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.bm = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(81) %.pr) #30, !inline_history !1045
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !325 ; 6 uses
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !2462
  %.not.i42 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %i.br = load i64, ptr %4, align 8, !tbaa !327
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !327
  store ptr null, ptr %4, align 8, !tbaa !327
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.h, align 8, !tbaa !325
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !326 ; 10 uses
  %i.bu = ptrtoint ptr %i.bp to i64               ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.j, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc52 unwind label %bb.ab

.noexc52:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i43 = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i43, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i44 = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #28
          to label %.noexc53 unwind label %bb.ab  ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = load i64, ptr %4, align 8, !tbaa !327
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !327
  store ptr null, ptr %4, align 8, !tbaa !327
  %.not10.i.i.i.i.i.i45 = icmp eq ptr %i.bt, %i.bp
  br i1 %.not10.i.i.i.i.i.i45, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i.i46.preheader:                   ; preds = %.noexc53
  %10 = add i64 %i.bu, -8
  %11 = sub i64 %10, %i.bv                        ; 2 uses
  %i.ch = lshr i64 %11, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check162 = icmp ult i64 %11, 152
  br i1 %min.iters.check162, label %.lr.ph.i.i.i.i.i.i46.preheader224, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i.i.i.i46.preheader
  %i.cj = add i64 %i.bu, -8
  %i.ck = sub i64 %i.cj, %i.bv
  %i.cl = and i64 %i.ck, -8
  %i.cm = add i64 %i.cl, 8                        ; 2 uses
  %scevgep156 = getelementptr i8, ptr %i.ce, i64 %i.cm
  %scevgep157 = getelementptr i8, ptr %i.bt, i64 %i.cm
  %bound0158 = icmp ult ptr %i.ce, %scevgep157
  %bound1159 = icmp ult ptr %i.bt, %scevgep156
  %found.conflict160 = and i1 %bound0158, %bound1159
  br i1 %found.conflict160, label %.lr.ph.i.i.i.i.i.i46.preheader224, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec165 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec165, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.cn  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bt, i64 %i.cn
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next172, %vector.body166 ] ; 2 uses
  %i.cq = shl i64 %index167, 3                    ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.ce, i64 %i.cq ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.bt, i64 %i.cq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.cr = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load170 = load <2 x i64>, ptr %next.gep169, align 8, !tbaa !327, !alias.scope !2481, !noalias !2476
  %wide.load171 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !327, !alias.scope !2481, !noalias !2476
  %i.cs = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x i64> %wide.load170, ptr %next.gep168, align 8, !tbaa !327, !alias.scope !2484, !noalias !2481
  store <2 x i64> %wide.load171, ptr %i.cs, align 8, !tbaa !327, !alias.scope !2484, !noalias !2481
  %i.ct = getelementptr i8, ptr %next.gep169, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep169, align 8, !tbaa !327, !alias.scope !2481, !noalias !2476
  store <2 x ptr> splat (ptr null), ptr %i.ct, align 8, !tbaa !327, !alias.scope !2481, !noalias !2476
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.cu, label %middle.block173, label %vector.body166, !llvm.loop !2486

middle.block173:                                  ; preds = %vector.body166
  %cmp.n174 = icmp eq i64 %i.ci, %n.vec165
  br i1 %cmp.n174, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i46.preheader224

.lr.ph.i.i.i.i.i.i46.preheader224:                ; preds = %vector.memcheck155, %.lr.ph.i.i.i.i.i.i46.preheader, %middle.block173
  %.012.i.i.i.i.i.i47.ph = phi ptr [ %i.ce, %vector.memcheck155 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i46.preheader ], [ %i.co, %middle.block173 ]
  %.0911.i.i.i.i.i.i48.ph = phi ptr [ %i.bt, %vector.memcheck155 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i46.preheader ], [ %i.cp, %middle.block173 ]
  br label %.lr.ph.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i46:                             ; preds = %.lr.ph.i.i.i.i.i.i46.preheader224, %.lr.ph.i.i.i.i.i.i46
  %.012.i.i.i.i.i.i47 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i46 ], [ %.012.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i46.preheader224 ] ; 2 uses
  %.0911.i.i.i.i.i.i48 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i46 ], [ %.0911.i.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i.i46.preheader224 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i48, align 8, !tbaa !327, !alias.scope !2479, !noalias !2476
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i47, align 8, !tbaa !327, !alias.scope !2476, !noalias !2479
  store ptr null, ptr %.0911.i.i.i.i.i.i48, align 8, !tbaa !327, !alias.scope !2479, !noalias !2476
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i48, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i49 = icmp eq ptr %i.cw, %i.bp
  br i1 %.not.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i46, !llvm.loop !2487

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i46, %middle.block173, %.noexc53
  %.0.lcssa.i.i.i.i.i.i50 = phi ptr [ %i.ce, %.noexc53 ], [ %i.co, %middle.block173 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i46 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i50, i64 8
  %.not.i23.i.i51 = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i51, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ce, ptr %i.e, align 8, !tbaa !326
  store ptr %i.cy, ptr %i.h, align 8, !tbaa !325
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cz, ptr %i.g, align 8, !tbaa !2462
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.h
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 1)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !271 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !951
  invoke void @_ZN6duckdb12SortStrategy7FactoryERNS_13ClientContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEERKNS3_INS_16BoundOrderByNodeELb1ESaISD_EEERKNS3_INS_11LogicalTypeELb1ESaISI_EEERKNS3_INS4_INS_14BaseStatisticsES6_ISN_ELb1EEELb1ESaISP_EEEmb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.297") align 8 %6, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.dg, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %6, align 8, !tbaa !327
  store ptr null, ptr %6, align 8, !tbaa !327
  %i.di = load ptr, ptr %4, align 8, !tbaa !327   ; 3 uses
  store ptr %i.dh, ptr %4, align 8, !tbaa !327
  %.not.i.i.i.i.i54 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i54, label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.m
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.di) #30, !inline_history !2488
  %.pr106 = load ptr, ptr %6, align 8, !tbaa !327 ; 3 uses
  %.not.i55 = icmp eq ptr %.pr106, null
  br i1 %.not.i55, label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.dm = load ptr, ptr %.pr106, align 8, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr106) #30, !inline_history !2489
  br label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %_ZN6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.dp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12SortStrategyESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.ae      ; 2 uses

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.57") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %i.aa, align 8, !tbaa !329 ; 6 uses
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !2463
  %.not.i56 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i56, label %bb.p, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71.thread: ; preds = %bb.o
  %i.dv = load i64, ptr %7, align 8, !tbaa !293
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !293
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dw, ptr %i.aa, align 8, !tbaa !329
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit74

bb.p:                                             ; preds = %bb.o
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !330 ; 10 uses
  %i.dy = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.dz = ptrtoint ptr %i.dx to i64               ; 3 uses
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.q, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i57

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc69 unwind label %bb.af

.noexc69:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i57: ; preds = %bb.p
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i58 = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i58, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i59 = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i59)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #28
          to label %.noexc70 unwind label %bb.af  ; 10 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i57
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  %i.ek = load i64, ptr %7, align 8, !tbaa !293
  store i64 %i.ek, ptr %i.ej, align 8, !tbaa !293
  store ptr null, ptr %7, align 8, !tbaa !293
  %.not10.i.i.i.i.i.i60 = icmp eq ptr %i.dx, %i.dt
  br i1 %.not10.i.i.i.i.i.i60, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i65, label %.lr.ph.i.i.i.i.i.i61.preheader

.lr.ph.i.i.i.i.i.i61.preheader:                   ; preds = %.noexc70
  %12 = add i64 %i.dy, -8
  %13 = sub i64 %12, %i.dz                        ; 2 uses
  %i.el = lshr i64 %13, 3
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check184 = icmp ult i64 %13, 152
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.i.i.i61.preheader222, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.lr.ph.i.i.i.i.i.i61.preheader
  %i.en = add i64 %i.dy, -8
  %i.eo = sub i64 %i.en, %i.dz
  %i.ep = and i64 %i.eo, -8
  %i.eq = add i64 %i.ep, 8                        ; 2 uses
  %scevgep178 = getelementptr i8, ptr %i.ei, i64 %i.eq
  %scevgep179 = getelementptr i8, ptr %i.dx, i64 %i.eq
  %bound0180 = icmp ult ptr %i.ei, %scevgep179
  %bound1181 = icmp ult ptr %i.dx, %scevgep178
  %found.conflict182 = and i1 %bound0180, %bound1181
  br i1 %found.conflict182, label %.lr.ph.i.i.i.i.i.i61.preheader222, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck177
  %n.vec187 = and i64 %i.em, 4611686018427387900  ; 3 uses
  %i.er = shl i64 %n.vec187, 3                    ; 2 uses
  %i.es = getelementptr i8, ptr %i.ei, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %i.dx, i64 %i.er
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph185
  %index189 = phi i64 [ 0, %vector.ph185 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %i.eu = shl i64 %index189, 3                    ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ei, i64 %i.eu ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.dx, i64 %i.eu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  %i.ev = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <2 x i64>, ptr %next.gep191, align 8, !tbaa !293, !alias.scope !2495, !noalias !2490
  %wide.load193 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !293, !alias.scope !2495, !noalias !2490
  %i.ew = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %wide.load192, ptr %next.gep190, align 8, !tbaa !293, !alias.scope !2498, !noalias !2495
  store <2 x i64> %wide.load193, ptr %i.ew, align 8, !tbaa !293, !alias.scope !2498, !noalias !2495
  %i.ex = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep191, align 8, !tbaa !293, !alias.scope !2495, !noalias !2490
  store <2 x ptr> splat (ptr null), ptr %i.ex, align 8, !tbaa !293, !alias.scope !2495, !noalias !2490
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.ey, label %middle.block195, label %vector.body188, !llvm.loop !2500

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %i.em, %n.vec187
  br i1 %cmp.n196, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i65, label %.lr.ph.i.i.i.i.i.i61.preheader222

.lr.ph.i.i.i.i.i.i61.preheader222:                ; preds = %vector.memcheck177, %.lr.ph.i.i.i.i.i.i61.preheader, %middle.block195
  %.012.i.i.i.i.i.i62.ph = phi ptr [ %i.ei, %vector.memcheck177 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i61.preheader ], [ %i.es, %middle.block195 ]
  %.0911.i.i.i.i.i.i63.ph = phi ptr [ %i.dx, %vector.memcheck177 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i61.preheader ], [ %i.et, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i61:                             ; preds = %.lr.ph.i.i.i.i.i.i61.preheader222, %.lr.ph.i.i.i.i.i.i61
  %.012.i.i.i.i.i.i62 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i61 ], [ %.012.i.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i.i61.preheader222 ] ; 2 uses
  %.0911.i.i.i.i.i.i63 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i61 ], [ %.0911.i.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i.i61.preheader222 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  %i.ez = load i64, ptr %.0911.i.i.i.i.i.i63, align 8, !tbaa !293, !alias.scope !2493, !noalias !2490
  store i64 %i.ez, ptr %.012.i.i.i.i.i.i62, align 8, !tbaa !293, !alias.scope !2490, !noalias !2493
  store ptr null, ptr %.0911.i.i.i.i.i.i63, align 8, !tbaa !293, !alias.scope !2493, !noalias !2490
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i63, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i62, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq ptr %i.fa, %i.dt
  br i1 %.not.i.i.i.i.i.i64, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i65, label %.lr.ph.i.i.i.i.i.i61, !llvm.loop !2501

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i65: ; preds = %.lr.ph.i.i.i.i.i.i61, %middle.block195, %.noexc70
  %.0.lcssa.i.i.i.i.i.i66 = phi ptr [ %i.ei, %.noexc70 ], [ %i.es, %middle.block195 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i61 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i66, i64 8
  %.not.i23.i.i67 = icmp eq ptr %i.dx, null
  br i1 %.not.i23.i.i67, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i65
  call void @_ZdlPv(ptr noundef nonnull %i.dx) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i65, %bb.r
  store ptr %i.ei, ptr %i.f, align 8, !tbaa !330
  store ptr %i.fc, ptr %i.aa, align 8, !tbaa !329
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.fd, ptr %i.k, align 8, !tbaa !2463
  %.pr108 = load ptr, ptr %7, align 8, !tbaa !293 ; 3 uses
  %.not.i72 = icmp eq ptr %.pr108, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit74, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i73

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i73: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71
  %i.fe = load ptr, ptr %.pr108, align 8, !tbaa !63
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(81) %.pr108) #30, !inline_history !1045
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit74

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit74: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit71, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !325 ; 6 uses
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !2462
  %.not.i75 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i75, label %bb.s, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit74
  %i.fj = load i64, ptr %4, align 8, !tbaa !327
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !327
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fk, ptr %i.h, align 8, !tbaa !325
  br label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit74
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !326 ; 10 uses
  %i.fm = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fn = ptrtoint ptr %i.fl to i64               ; 3 uses
  %i.fo = sub i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.t, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i76

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc88 unwind label %bb.ac

.noexc88:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i76: ; preds = %bb.s
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i77 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i77, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i.i78 = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i78)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #28
          to label %.noexc89 unwind label %bb.ac  ; 10 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i76
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fo
  %i.fy = load i64, ptr %4, align 8, !tbaa !327
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !327
  store ptr null, ptr %4, align 8, !tbaa !327
  %.not10.i.i.i.i.i.i79 = icmp eq ptr %i.fl, %i.fh
  br i1 %.not10.i.i.i.i.i.i79, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i84, label %.lr.ph.i.i.i.i.i.i80.preheader

.lr.ph.i.i.i.i.i.i80.preheader:                   ; preds = %.noexc89
  %14 = add i64 %i.fm, -8
  %15 = sub i64 %14, %i.fn                        ; 2 uses
  %i.fz = lshr i64 %15, 3
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check206 = icmp ult i64 %15, 152
  br i1 %min.iters.check206, label %.lr.ph.i.i.i.i.i.i80.preheader221, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i.i80.preheader
  %i.gb = add i64 %i.fm, -8
  %i.gc = sub i64 %i.gb, %i.fn
  %i.gd = and i64 %i.gc, -8
  %i.ge = add i64 %i.gd, 8                        ; 2 uses
  %scevgep200 = getelementptr i8, ptr %i.fw, i64 %i.ge
  %scevgep201 = getelementptr i8, ptr %i.fl, i64 %i.ge
  %bound0202 = icmp ult ptr %i.fw, %scevgep201
  %bound1203 = icmp ult ptr %i.fl, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph.i.i.i.i.i.i80.preheader221, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec209 = and i64 %i.ga, 4611686018427387900  ; 3 uses
  %i.gf = shl i64 %n.vec209, 3                    ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fw, i64 %i.gf  ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fl, i64 %i.gf
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph207
  %index211 = phi i64 [ 0, %vector.ph207 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %i.gi = shl i64 %index211, 3                    ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.fw, i64 %i.gi ; 2 uses
  %next.gep213 = getelementptr i8, ptr %i.fl, i64 %i.gi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  %i.gj = getelementptr i8, ptr %next.gep213, i64 16
  %wide.load214 = load <2 x i64>, ptr %next.gep213, align 8, !tbaa !327, !alias.scope !2507, !noalias !2502
  %wide.load215 = load <2 x i64>, ptr %i.gj, align 8, !tbaa !327, !alias.scope !2507, !noalias !2502
  %i.gk = getelementptr i8, ptr %next.gep212, i64 16
  store <2 x i64> %wide.load214, ptr %next.gep212, align 8, !tbaa !327, !alias.scope !2510, !noalias !2507
  store <2 x i64> %wide.load215, ptr %i.gk, align 8, !tbaa !327, !alias.scope !2510, !noalias !2507
  %i.gl = getelementptr i8, ptr %next.gep213, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep213, align 8, !tbaa !327, !alias.scope !2507, !noalias !2502
  store <2 x ptr> splat (ptr null), ptr %i.gl, align 8, !tbaa !327, !alias.scope !2507, !noalias !2502
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.gm, label %middle.block217, label %vector.body210, !llvm.loop !2512

middle.block217:                                  ; preds = %vector.body210
  %cmp.n218 = icmp eq i64 %i.ga, %n.vec209
  br i1 %cmp.n218, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i84, label %.lr.ph.i.i.i.i.i.i80.preheader221

.lr.ph.i.i.i.i.i.i80.preheader221:                ; preds = %vector.memcheck199, %.lr.ph.i.i.i.i.i.i80.preheader, %middle.block217
  %.012.i.i.i.i.i.i81.ph = phi ptr [ %i.fw, %vector.memcheck199 ], [ %i.fw, %.lr.ph.i.i.i.i.i.i80.preheader ], [ %i.gg, %middle.block217 ]
  %.0911.i.i.i.i.i.i82.ph = phi ptr [ %i.fl, %vector.memcheck199 ], [ %i.fl, %.lr.ph.i.i.i.i.i.i80.preheader ], [ %i.gh, %middle.block217 ]
  br label %.lr.ph.i.i.i.i.i.i80

.lr.ph.i.i.i.i.i.i80:                             ; preds = %.lr.ph.i.i.i.i.i.i80.preheader221, %.lr.ph.i.i.i.i.i.i80
  %.012.i.i.i.i.i.i81 = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i80 ], [ %.012.i.i.i.i.i.i81.ph, %.lr.ph.i.i.i.i.i.i80.preheader221 ] ; 2 uses
  %.0911.i.i.i.i.i.i82 = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i80 ], [ %.0911.i.i.i.i.i.i82.ph, %.lr.ph.i.i.i.i.i.i80.preheader221 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  %i.gn = load i64, ptr %.0911.i.i.i.i.i.i82, align 8, !tbaa !327, !alias.scope !2505, !noalias !2502
  store i64 %i.gn, ptr %.012.i.i.i.i.i.i81, align 8, !tbaa !327, !alias.scope !2502, !noalias !2505
  store ptr null, ptr %.0911.i.i.i.i.i.i82, align 8, !tbaa !327, !alias.scope !2505, !noalias !2502
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i82, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i81, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i83 = icmp eq ptr %i.go, %i.fh
  br i1 %.not.i.i.i.i.i.i83, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i84, label %.lr.ph.i.i.i.i.i.i80, !llvm.loop !2513

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i84: ; preds = %.lr.ph.i.i.i.i.i.i80, %middle.block217, %.noexc89
  %.0.lcssa.i.i.i.i.i.i85 = phi ptr [ %i.fw, %.noexc89 ], [ %i.gg, %middle.block217 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i80 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i85, i64 8
  %.not.i23.i.i86 = icmp eq ptr %i.fl, null
  br i1 %.not.i23.i.i86, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i84
  call void @_ZdlPv(ptr noundef nonnull %i.fl) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i84, %bb.u
  store ptr %i.fw, ptr %i.e, align 8, !tbaa !326
  store ptr %i.gq, ptr %i.h, align 8, !tbaa !325
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.gr, ptr %i.g, align 8, !tbaa !2462
  %.pr110 = load ptr, ptr %4, align 8, !tbaa !327 ; 3 uses
  %.not.i91 = icmp eq ptr %.pr110, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93, label %_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i92

_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i92: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90
  %i.gs = load ptr, ptr %.pr110, align 8, !tbaa !63
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr110) #30, !inline_history !2489
  br label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93

_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit90, %_ZNKSt14default_deleteIN6duckdb12SortStrategyEEclEPS1_.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.gv = load ptr, ptr %3, align 8, !tbaa !1073  ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1074 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gv, %i.gx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gz, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.gv, %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93 ] ; 2 uses
  %i.gy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i94, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.gy) #30
  call void @_ZdlPv(ptr noundef nonnull %i.gy) #29
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.gz, %i.gx
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1075

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !1073
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93
  %i.ha = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gv, %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit93 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ha) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.y:                                             ; preds = %bb.a
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit104

bb.z:                                             ; preds = %bb.c, %bb.b
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit98

bb.aa:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %5, align 8, !tbaa !293   ; 3 uses
  %.not.i96 = icmp eq ptr %i.hg, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit98, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i97

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i97: ; preds = %bb.aa
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !63
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(81) %i.hg) #30, !inline_history !1045
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit98

_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit98: ; preds = %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i97, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.he, %bb.z ], [ %i.hf, %bb.aa ], [ %i.hf, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.j
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i76, %bb.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SortStrategyESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.l
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ag

bb.ae:                                            ; preds = %bb.n, %_ZNSt10unique_ptrIN6duckdb12SortStrategyESt14default_deleteIS1_EED2Ev.exit
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit101

bb.af:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i57, %bb.q
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = load ptr, ptr %7, align 8, !tbaa !293   ; 3 uses
  %.not.i99 = icmp eq ptr %i.hp, null
  br i1 %.not.i99, label %_ZNSt10unique_ptrIN6duckdb15GlobalSinkStateESt14default_deleteIS1_EED2Ev.exit101, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i100

end_hunk_8
begin_hunk_9_@_ZN6duckdb23CrossProductGlobalStateD2Ev:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #30, !inline_history !2521
  br label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i, %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !817

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !811
  br label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN6duckdb21ColumnDataAppendStateD2Ev.exit
  %i.av = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.v, %_ZN6duckdb21ColumnDataAppendStateD2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i.i, label %_ZN6duckdb15GlobalSinkStateD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #29
  br label %_ZN6duckdb15GlobalSinkStateD2Ev.exit

_ZN6duckdb15GlobalSinkStateD2Ev.exit:             ; preds = %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb23CrossProductGlobalStateD0Ev(ptr noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb23CrossProductGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(328) %0) #30
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25CrossProductOperatorStateD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25CrossProductOperatorStateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.b) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb20CachingOperatorStateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN6duckdb20CachingOperatorStateD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.d) #30, !inline_history !2577
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #29, !inline_history !2577
  br label %_ZN6duckdb20CachingOperatorStateD2Ev.exit

_ZN6duckdb20CachingOperatorStateD2Ev.exit:        ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25CrossProductOperatorStateD0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25CrossProductOperatorStateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #30, !inline_history !2620
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.b) #30, !inline_history !2620
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb20CachingOperatorStateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN6duckdb25CrossProductOperatorStateD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.d) #30, !inline_history !2621
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #29, !inline_history !2621
  br label %_ZN6duckdb25CrossProductOperatorStateD2Ev.exit

_ZN6duckdb25CrossProductOperatorStateD2Ev.exit:   ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2622   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12PhysicalPlanESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_22PhysicalColumnDataScanEJRKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_20PhysicalOperatorTypeERmDnEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator4MakeINS_22PhysicalColumnDataScanEJRNS_12PhysicalPlanERKNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEENS_20PhysicalOperatorTypeERmDnEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2624 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2627
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !2624
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !2624
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !2628 ; 7 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = ptrtoaddr ptr %i.u to i64
  %5 = add i64 %i.k, -8
  %6 = sub i64 %5, %i.l                           ; 2 uses
  %i.y = lshr i64 %6, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 72
  %i.aa = sub i64 %i.l, %i.x
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  %i.af = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !alias.scope !2632, !noalias !2629
  %wide.load11 = load <2 x i64>, ptr %i.af, align 8, !alias.scope !2632, !noalias !2629
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2629, !noalias !2632
  store <2 x i64> %wide.load11, ptr %i.ag, align 8, !alias.scope !2629, !noalias !2632
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2634

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.i.preheader13:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2632, !noalias !2629
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !2629, !noalias !2632
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2635

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.u, ptr %i.b, align 8, !tbaa !2628
  store ptr %i.al, ptr %i.c, align 8, !tbaa !2624
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.am, ptr %i.e, align 8, !tbaa !2627
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb14ArenaAllocator4MakeINS_22PhysicalColumnDataScanEJRNS_12PhysicalPlanERKNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEENS_20PhysicalOperatorTypeERmDnEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::vector.24", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::optionally_owned_ptr", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 184) ; 2 uses
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = load i8, ptr %3, align 1, !tbaa !1024
  %i.c = load i64, ptr %4, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  invoke void @_ZN6duckdb22PhysicalColumnDataScanC1ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_20PhysicalOperatorTypeEmNS_20optionally_owned_ptrINS_20ColumnDataCollectionEEE(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %6, i8 noundef zeroext %i.b, i64 noundef %i.c, ptr noundef nonnull %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !62
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !2636
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !2636
  br label %_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit.i, !prof !67

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30
  br label %_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %7, align 8, !tbaa !956    ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit.i
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.u) #30
  call void @_ZdlPv(ptr noundef nonnull %i.u) #29
  br label %_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev.exit

_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i
  %i.v = load ptr, ptr %6, align 8, !tbaa !272    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !174  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.v, %_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !274

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !272
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev.exit
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #29
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.i
  ret ptr %i.a

bb.j:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #30
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #30
  resume { ptr, i32 } %i.aa
}

declare void @_ZN6duckdb22PhysicalColumnDataScanC1ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_20PhysicalOperatorTypeEmNS_20optionally_owned_ptrINS_20ColumnDataCollectionEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb20optionally_owned_ptrINS_20ColumnDataCollectionEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdb24HashJoinRepartitionEvent11FinishEventEv:bb.a
  invoke void @_ZN6duckdb23HashJoinGlobalSinkState16ScheduleFinalizeERNS_8PipelineERNS_5EventE(ptr noundef nonnull align 8 dereferenceable(264) %i.cn, ptr noundef nonnull align 8 dereferenceable(224) %i.cp, ptr noundef nonnull align 8 dereferenceable(113) %0)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.cq) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cr = load ptr, ptr %1, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorImSaImEED2Ev.exit21, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cr) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit21

_ZNSt6vectorImSaImEED2Ev.exit21:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit23

bb.u:                                             ; preds = %bb.g, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.noexc16
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorImSaImEED2Ev.exit23, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.cu) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit23

_ZNSt6vectorImSaImEED2Ev.exit23:                  ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.t ], [ %i.ct, %bb.u ], [ %i.ct, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cv = load ptr, ptr %1, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorImSaImEED2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit25

_ZNSt6vectorImSaImEED2Ev.exit25:                  ; preds = %bb.w, %_ZNSt6vectorImSaImEED2Ev.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZNK6duckdb20PartitionedTupleData11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

declare noundef i64 @_ZNK6duckdb20PartitionedTupleData5CountEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_13JoinHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1223
  %i.e = load ptr, ptr %0, align 8, !tbaa !1225   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !68
  store i64 %i.i, ptr %i.b, align 8, !tbaa !68
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_13JoinHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_13JoinHashTableESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1223 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1225   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1224
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2902
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1223
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #31
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2902
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1117, !alias.scope !2908, !noalias !2903
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1117, !alias.scope !2908, !noalias !2903
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1117, !alias.scope !2911, !noalias !2908
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !1117, !alias.scope !2911, !noalias !2908
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1117, !alias.scope !2908, !noalias !2903
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1117, !alias.scope !2908, !noalias !2903
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2913

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1117, !alias.scope !2906, !noalias !2903
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1117, !alias.scope !2903, !noalias !2906
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1117, !alias.scope !2906, !noalias !2903
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2914

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #29
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1225
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1223
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !1224
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1117 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13JoinHashTableEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13JoinHashTableEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb13JoinHashTableD1Ev(ptr noundef nonnull align 8 dead_on_return(1088) dereferenceable(1088) %i.au) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #29
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb13JoinHashTableEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1454

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1223
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_23HashJoinRepartitionTaskEJNS_10shared_ptrINS_5EventELb1EEERNS_13ClientContextERNS_13JoinHashTableES8_RKNS_16PhysicalHashJoinEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.2370") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(1088) %3, ptr noundef nonnull align 8 dereferenceable(1088) %4, ptr noundef nonnull align 8 dereferenceable(392) %5) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::shared_ptr.1358", align 16 ; 6 uses
  %7 = alloca %"class.duckdb::shared_ptr.1358", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr null, ptr %i.b, align 8, !tbaa !59
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !851
  store ptr null, ptr %i.c, align 8, !tbaa !59
  store ptr null, ptr %1, align 8, !tbaa !2767
  store <2 x ptr> %i.d, ptr %6, align 16, !tbaa !851
  store ptr null, ptr %7, align 8, !tbaa !2767
  invoke void @_ZN6duckdb12ExecutorTaskC2ERNS_13ClientContextENS_10shared_ptrINS_5EventELb1EEERKNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !62
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !inline_history !2915
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !inline_history !2915
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !67

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  call void @_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #30
  call void @_ZdlPv(ptr noundef nonnull %i.a) #29
  resume { ptr, i32 } %i.v

bb.i:                                             ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb23HashJoinRepartitionTaskE, i64 16), ptr %i.a, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %i.w, align 8, !tbaa !1117
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %4, ptr %i.x, align 8, !tbaa !1117
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.a, ptr %0, align 8, !tbaa !2848
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !59   ; 8 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb17IEJoinGlobalStateC2ERNS_13ClientContextERKNS_14PhysicalIEJoinE:bb.a

bb.an:                                            ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %bb.w, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.as

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_EED2Ev.exit57
  %i.cl = load ptr, ptr %6, align 8, !tbaa !189   ; 3 uses
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !186 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i ], [ %i.cl, %bb.ap ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.co) #30
  call void @_ZdlPv(ptr noundef nonnull %i.co) #29
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !159 ; 3 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(88) %i.cq) #30, !inline_history !1857
  br label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, %i.cm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !280

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !189
  br label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ap
  %i.cv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.cl, %bb.ap ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #29
  br label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cw = load ptr, ptr %3, align 8, !tbaa !189   ; 3 uses
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !186 ; 2 uses
  %.not4.i.i.i64 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not4.i.i.i64, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i76, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i72
  %.05.i.i.i66 = phi ptr [ %i.df, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i72 ], [ %i.cw, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i67 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i67, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i69, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i68

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i68: ; preds = %.lr.ph.i.i.i65
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.cz) #30
  call void @_ZdlPv(ptr noundef nonnull %i.cz) #29
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i69

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i69: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i68, %.lr.ph.i.i.i65
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !159 ; 3 uses
  %.not.i1.i.i.i.i.i70 = icmp eq ptr %i.db, null
  br i1 %.not.i1.i.i.i.i.i70, label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i72, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i71

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i71: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i69
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(88) %i.db) #30, !inline_history !1857
  br label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i72

_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i72: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i71, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i69
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i66, i64 24 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.df, %i.cx
  br i1 %.not.i.i.i73, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i74, label %.lr.ph.i.i.i65, !llvm.loop !280

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i74: ; preds = %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i72
  %.pr.i75 = load ptr, ptr %3, align 8, !tbaa !189
  br label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i76

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i76: ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i74, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit
  %i.dg = phi ptr [ %.pr.i75, %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i74 ], [ %i.cw, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i77 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i1.i77, label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit78, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i76
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #29
  br label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit78

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit78: ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i76, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.as:                                            ; preds = %bb.ao, %bb.an, %.body51, %bb.aj
  %.pn33 = phi { ptr, i32 } [ %i.ck, %bb.ao ], [ %i.cj, %bb.an ], [ %.pn31, %.body51 ], [ %.pn29, %bb.aj ]
  call void @_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.at

bb.at:                                            ; preds = %bb.ag, %bb.as, %.body, %bb.ac
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %.pn27, %.body ], [ %.pn33, %bb.as ], [ %i.cd, %bb.ag ]
  call void @_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.au

bb.au:                                            ; preds = %bb.z, %bb.at, %bb.y
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.y ], [ %.pn33.pn.pn, %bb.at ], [ %i.bx, %bb.z ]
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !1094 ; 3 uses
  %.not.i79 = icmp eq ptr %i.dh, null
  br i1 %.not.i79, label %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit81, label %_ZNKSt14default_deleteIN6duckdb21JoinFilterGlobalStateEEclEPS1_.exit.i80

_ZNKSt14default_deleteIN6duckdb21JoinFilterGlobalStateEEclEPS1_.exit.i80: ; preds = %bb.au
  call void @_ZN6duckdb21JoinFilterGlobalStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dh) #30
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #29
  br label %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit81

_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit81: ; preds = %bb.au, %_ZNKSt14default_deleteIN6duckdb21JoinFilterGlobalStateEEclEPS1_.exit.i80
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #30
  call void @_ZN6duckdb15GlobalSinkStateD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) #30
  resume { ptr, i32 } %.pn33.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1746 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1747   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2950
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2951
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1746
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #31
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2951
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !1748, !alias.scope !2957, !noalias !2952
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1748, !alias.scope !2957, !noalias !2952
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1748, !alias.scope !2960, !noalias !2957
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !1748, !alias.scope !2960, !noalias !2957
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !1748, !alias.scope !2957, !noalias !2952
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1748, !alias.scope !2957, !noalias !2952
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2962

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1748, !alias.scope !2955, !noalias !2952
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1748, !alias.scope !2952, !noalias !2955
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1748, !alias.scope !2955, !noalias !2952
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2963

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #29
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1747
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1746
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !2950
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1748 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb17PhysicalRangeJoin17GlobalSortedTableEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i, ptr noundef nonnull %i.au)
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2964

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1746
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE13_M_deallocateEPS6_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEmS6_ET_S8_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1747   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1746 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !1748 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb17PhysicalRangeJoin17GlobalSortedTableEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i, ptr noundef nonnull %i.d)
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2964

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1747
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #29
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17IEJoinGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17IEJoinGlobalStateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1094 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21JoinFilterGlobalStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21JoinFilterGlobalStateEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb21JoinFilterGlobalStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb21JoinFilterGlobalStateEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1747 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1746 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i ], [ %i.d, %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1748 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb17PhysicalRangeJoin17GlobalSortedTableEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i, ptr noundef nonnull %i.g)
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2964

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !1747
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %_ZNSt10unique_ptrIN6duckdb21JoinFilterGlobalStateESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev.exit, label %bb.c
end_hunk_11
begin_hunk_12_@_ZN6duckdb16IEJoinLocalStateD0Ev:bb.a
bb.a:
  tail call void @_ZN6duckdb16IEJoinLocalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) #30
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !68     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !69

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !190
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !68
  store i64 %i.s, ptr %i.d, align 8, !tbaa !68
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !190
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !69

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !68
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec130, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !68
  store <2 x i64> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !68
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !2967

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !2968

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -8                       ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !68
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !2969

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2970

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !190
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !69

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !190
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !68
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !190
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %4 = add i64 %i.f, -8
  %5 = sub i64 %4, %i.j                           ; 2 uses
  %i.bg = lshr i64 %5, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %5, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bh, 4611686018427387900  ; 3 uses
  %i.bi = shl i64 %n.vec116, 3
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bk = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x i64> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !68
  store <2 x i64> %broadcast.splat118, ptr %i.bl, align 8, !tbaa !68
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bm, label %middle.block123, label %vector.body119, !llvm.loop !2971

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bh, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bj, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bn, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !2972

bb.q:                                             ; preds = %bb.b
  %i.bo = load ptr, ptr %0, align 8, !tbaa !192   ; 5 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bq = sub i64 %i.f, %i.bp
  %i.br = ashr exact i64 %i.bq, 3                 ; 4 uses
  %i.bs = sub nsw i64 1152921504606846975, %i.br
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %2)
  %i.bu = add nsw i64 %.sroa.speculated.i, %i.br  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.br
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %i.by = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bz = sub i64 %i.by, %i.bp                    ; 4 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ca = shl nuw nsw i64 %i.bx, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bz ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i75
  %i.cf = load i64, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.cg = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.cg, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec144, 3
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cl = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.cd, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !68
  store <2 x i64> %broadcast.splat146, ptr %i.cm, align 8, !tbaa !68
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cn, label %middle.block151, label %vector.body147, !llvm.loop !2973

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.ci, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cd, %bb.t ], [ %i.ck, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cf, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !68
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.co, %i.ce
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !2974

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cp = icmp sgt i64 %i.bz, 8
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !69

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cc, ptr align 8 %i.bo, i64 %i.bz, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cq = icmp eq i64 %i.bz, 8
  br i1 %i.cq, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = load i64, ptr %i.bo, align 8, !tbaa !68
  store i64 %i.cr, ptr %i.cc, align 8, !tbaa !68
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %2 ; 3 uses
  %i.ct = sub i64 %i.f, %i.by                     ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 8
  br i1 %i.cu, label %bb.x, label %bb.y, !prof !69

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cs, ptr align 8 %1, i64 %i.ct, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.cv = icmp eq i64 %i.ct, 8
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.cw, ptr %i.cs, align 8, !tbaa !68
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %.not.i82 = icmp eq ptr %i.bo, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bo) #29
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.cc, ptr %0, align 8, !tbaa !192
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !190
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bx
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !191
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !68
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb10shared_ptrINS_25RangeJoinMaterializeEventELb1EE18__enable_weak_thisINS_5EventES1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSC_S7_:bb.a
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_25RangeJoinMaterializeEventEEERKNS0_IT_Lb1EEEPS1_.exit, %bb.h, %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !813  ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not6.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i7.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i7.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #30, !inline_history !2803
  br label %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  store ptr %i.g, ptr %i.a, align 8, !tbaa !813
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ab, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !62
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #30, !inline_history !1310
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #30, !inline_history !1310
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i9 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.p ], [ %i.ao, %bb.q ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.r, label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, !prof !67

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #30
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit:  ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZN6duckdb8weak_ptrINS_5EventELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, %_ZNK6duckdb8weak_ptrINS_5EventELb1EE7expiredEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !157    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(88) %i.e) #30, !inline_history !3087
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !159 ; 3 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(88) %i.i) #30, !inline_history !3087
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !162

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !157
  br label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.n = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb13JoinConditionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #29
  br label %_ZNSt12_Vector_baseIN6duckdb13JoinConditionESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb13JoinConditionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_17PhysicalDummyScanEJRKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERmEEERNS_16PhysicalOperatorEDpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator4MakeINS_17PhysicalDummyScanEJRNS_12PhysicalPlanERKNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEERmEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2624 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2627
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !2624
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !2624
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !2628 ; 7 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = ptrtoaddr ptr %i.u to i64
  %3 = add i64 %i.k, -8
  %4 = sub i64 %3, %i.l                           ; 2 uses
  %i.y = lshr i64 %4, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.aa = sub i64 %i.l, %i.x
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  %i.af = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !alias.scope !3091, !noalias !3088
  %wide.load9 = load <2 x i64>, ptr %i.af, align 8, !alias.scope !3091, !noalias !3088
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3088, !noalias !3091
  store <2 x i64> %wide.load9, ptr %i.ag, align 8, !alias.scope !3088, !noalias !3091
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !3093

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !3091, !noalias !3088
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !3088, !noalias !3091
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3094

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.u, ptr %i.b, align 8, !tbaa !2628
  store ptr %i.al, ptr %i.c, align 8, !tbaa !2624
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.am, ptr %i.e, align 8, !tbaa !2627
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb14ArenaAllocator4MakeINS_17PhysicalDummyScanEJRNS_12PhysicalPlanERKNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEERmEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.24", align 16 ; 9 uses
  %5 = alloca %"class.duckdb::vector.24", align 16 ; 8 uses
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 136) ; 3 uses
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = load i64, ptr %3, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load <2 x ptr>, ptr %5, align 16, !tbaa !694
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !694
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !175
  store ptr %i.g, ptr %i.e, align 16, !tbaa !175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb16PhysicalOperatorC2ERNS_12PhysicalPlanENS_20PhysicalOperatorTypeENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEm(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 22, ptr noundef nonnull %4, i64 noundef %i.b)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %4, align 16, !tbaa !272   ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !174  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #30
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !274

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !272
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #29
  br label %bb.d

.body:                                            ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTVN6duckdb17PhysicalDummyScanE, i64 16), ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = load ptr, ptr %5, align 16, !tbaa !272   ; 3 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !174  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #30
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !274

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 16, !tbaa !272
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %bb.d ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.q) #29
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15GlobalSinkStateD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !811  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !812  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !813  ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.l, label %bb.e, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !63
end_hunk_13
