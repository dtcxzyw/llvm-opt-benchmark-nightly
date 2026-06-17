inline.NumInlined: 29987
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb25BoxRendererImplementation19ComputeRenderWidthsERNS_6vectorINS_20RenderDataCollectionELb1ESaIS2_EEEmm:bb.a
  %.not.i.i.i401 = icmp eq ptr %i.adx, null
  br i1 %.not.i.i.i401, label %_ZNSt6vectorImSaImEED2Ev.exit402, label %bb.hv

bb.hv:                                            ; preds = %.loopexit809
  call void @_ZdlPv(ptr noundef nonnull %i.adx) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit402

_ZNSt6vectorImSaImEED2Ev.exit402:                 ; preds = %.loopexit809, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #58
  %i.ady = load ptr, ptr %34, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i403 = icmp eq ptr %i.ady, null
  br i1 %.not.i.i.i403, label %_ZNSt6vectorImSaImEED2Ev.exit404, label %bb.hw

bb.hw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit402
  call void @_ZdlPv(ptr noundef nonnull %i.ady) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit404

_ZNSt6vectorImSaImEED2Ev.exit404:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit402, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #58
  br label %bb.ia

bb.hx:                                            ; preds = %.loopexit823, %.loopexit.split-lp824, %.loopexit818, %.loopexit.split-lp819, %bb.hp, %bb.hu, %bb.gx, %bb.hg
  %.pn236.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp821, %.loopexit.split-lp819 ], [ %.pn232, %bb.gx ], [ %i.abs, %bb.hg ], [ %i.acz, %bb.hp ], [ %i.adw, %bb.hu ], [ %lpad.loopexit820, %.loopexit818 ], [ %lpad.loopexit825, %.loopexit823 ], [ %lpad.loopexit.split-lp826, %.loopexit.split-lp824 ] ; 2 uses
  %i.adz = load ptr, ptr %35, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i405 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i.i405, label %_ZNSt6vectorImSaImEED2Ev.exit406, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @_ZdlPv(ptr noundef nonnull %i.adz) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit406

_ZNSt6vectorImSaImEED2Ev.exit406:                 ; preds = %bb.hx, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #58
  %i.aea = load ptr, ptr %34, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i407 = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i407, label %_ZNSt6vectorImSaImEED2Ev.exit408, label %bb.hz

bb.hz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit406
  call void @_ZdlPv(ptr noundef nonnull %i.aea) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit408

_ZNSt6vectorImSaImEED2Ev.exit408:                 ; preds = %bb.hz, %_ZNSt6vectorImSaImEED2Ev.exit406, %bb.ek
  %.pn236.pn.pn = phi { ptr, i32 } [ %i.rz, %bb.ek ], [ %.pn236.pn, %_ZNSt6vectorImSaImEED2Ev.exit406 ], [ %.pn236.pn, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #58
  br label %.body

bb.ia:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit404, %bb.ed
  %.5179 = phi i1 [ %.4178, %_ZNSt6vectorImSaImEED2Ev.exit404 ], [ false, %bb.ed ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  invoke void @_ZN6duckdb25BoxRendererImplementation23UpdateColumnCountFooterEmRKSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(672) %0, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.aeb)
          to label %.preheader unwind label %bb.ec

.preheader:                                       ; preds = %bb.ia
  br i1 %.not1079, label %._crit_edge1059, label %.lr.ph1058

.lr.ph1058:                                       ; preds = %.preheader
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 6 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  br label %bb.ic

._crit_edge1059:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit437, %.preheader
  %.sroa.0672.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0672.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ]
  %.sroa.12.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ]
  %.sroa.19.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.19.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ]
  %i.aej = load ptr, ptr %i.fa, align 8, !tbaa !152 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %.sroa.0672.0.lcssa, ptr %i.fa, align 8, !tbaa !152
  store ptr %.sroa.12.0.lcssa, ptr %i.fb, align 8, !tbaa !150
  store ptr %.sroa.19.0.lcssa, ptr %i.aek, align 8, !tbaa !168
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aej, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit, label %bb.ib

bb.ib:                                            ; preds = %._crit_edge1059
  call void @_ZdlPv(ptr noundef nonnull %i.aej) #60
  br label %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit

_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit:        ; preds = %._crit_edge1059, %bb.ib
  %i.ael = load ptr, ptr %i.ai, align 8, !tbaa !478 ; 2 uses
  %i.aem = load ptr, ptr %i.aj, align 8, !tbaa !478 ; 2 uses
  %.not7851068 = icmp eq ptr %i.ael, %i.aem
  br i1 %.not7851068, label %._crit_edge1071, label %.lr.ph1070

.lr.ph1070:                                       ; preds = %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aep = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  br label %bb.ja

bb.ic:                                            ; preds = %.lr.ph1058, %_ZNSt6vectorImSaImEE9push_backERKm.exit437
  %.01681056 = phi i1 [ false, %.lr.ph1058 ], [ %.1169, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ] ; 3 uses
  %storemerge2141054 = phi i64 [ 0, %.lr.ph1058 ], [ %i.ajg, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ] ; 8 uses
  %.sroa.19.01052 = phi ptr [ null, %.lr.ph1058 ], [ %.sroa.19.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ] ; 7 uses
  %.sroa.12.01050 = phi ptr [ null, %.lr.ph1058 ], [ %.sroa.12.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ] ; 7 uses
  %.sroa.0672.01049 = phi ptr [ null, %.lr.ph1058 ], [ %.sroa.0672.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit437 ] ; 13 uses
  %i.aer = load i64, ptr %i.aec, align 8, !tbaa !309
  %.not.not.i.i409 = icmp eq i64 %i.aer, 0
  br i1 %.not.not.i.i409, label %.preheader1086, label %bb.ie

.preheader1086:                                   ; preds = %bb.ic, %bb.id
  %.sroa.06.0.in.i.i417 = phi ptr [ %.sroa.06.0.i.i418, %bb.id ], [ %i.aee, %bb.ic ]
  %.sroa.06.0.i.i418 = load ptr, ptr %.sroa.06.0.in.i.i417, align 8, !tbaa !120 ; 3 uses
  %.not.i.i419 = icmp eq ptr %.sroa.06.0.i.i418, null
  br i1 %.not.i.i419, label %_ZN6duckdb12optional_idxC2Em.exit, label %bb.id

bb.id:                                            ; preds = %.preheader1086
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i418, i64 8
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !33
  %i.aeu = icmp eq i64 %storemerge2141054, %i.aet
  br i1 %i.aeu, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420, label %.preheader1086, !llvm.loop !474

bb.ie:                                            ; preds = %bb.ic
  %i.aev = load i64, ptr %i.aed, align 8, !tbaa !191 ; 2 uses
  %i.aew = urem i64 %storemerge2141054, %i.aev    ; 2 uses
  %i.aex = load ptr, ptr %i.aeb, align 8, !tbaa !189
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.aew
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !475 ; 2 uses
  %.not.i.i.i.i410 = icmp eq ptr %i.aez, null
  br i1 %.not.i.i.i.i410, label %_ZN6duckdb12optional_idxC2Em.exit, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !120 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !33
  %i.afd = icmp eq i64 %storemerge2141054, %i.afc
  br i1 %i.afd, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420, label %.lr.ph.i.i.i.i411

bb.ig:                                            ; preds = %bb.ih
  %i.afe = icmp eq i64 %storemerge2141054, %i.afh
  br i1 %i.afe, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420, label %.lr.ph.i.i.i.i411, !llvm.loop !476

.lr.ph.i.i.i.i411:                                ; preds = %bb.if, %bb.ig
  %.020.i.i.i.i412 = phi ptr [ %i.aff, %bb.ig ], [ %i.afa, %bb.if ]
  %i.aff = load ptr, ptr %.020.i.i.i.i412, align 8, !tbaa !120 ; 3 uses
  %.not18.i.i.i.i413 = icmp eq ptr %i.aff, null
  br i1 %.not18.i.i.i.i413, label %_ZN6duckdb12optional_idxC2Em.exit, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph.i.i.i.i411
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !33 ; 2 uses
  %i.afi = urem i64 %i.afh, %i.aev
  %.not19.i.i.i.i414 = icmp eq i64 %i.afi, %i.aew
  br i1 %.not19.i.i.i.i414, label %bb.ig, label %..loopexit_crit_edge21.i.i.i.i415, !llvm.loop !476

..loopexit_crit_edge21.i.i.i.i415:                ; preds = %bb.ih
  br label %_ZN6duckdb12optional_idxC2Em.exit, !llvm.loop !476

_ZN6duckdb12optional_idxC2Em.exit:                ; preds = %.lr.ph.i.i.i.i411, %.preheader1086, %..loopexit_crit_edge21.i.i.i.i415, %bb.ie
  %i.afj = load ptr, ptr %i.aeg, align 8, !tbaa !479 ; 6 uses
  %i.afk = load ptr, ptr %i.aeh, align 8, !tbaa !480
  %.not.i.i423 = icmp eq ptr %i.afj, %i.afk
  br i1 %.not.i.i423, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %_ZN6duckdb12optional_idxC2Em.exit
  store i64 %storemerge2141054, ptr %i.afj, align 8, !tbaa !33
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  store ptr %i.afl, ptr %i.aeg, align 8, !tbaa !479
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit

bb.ij:                                            ; preds = %_ZN6duckdb12optional_idxC2Em.exit
  %i.afm = load ptr, ptr %i.aef, align 8, !tbaa !230 ; 7 uses
  %i.afn = ptrtoint ptr %i.afj to i64             ; 2 uses
  %i.afo = ptrtoint ptr %i.afm to i64             ; 3 uses
  %i.afp = sub i64 %i.afn, %i.afo                 ; 3 uses
  %i.afq = icmp eq i64 %i.afp, 9223372036854775800
  br i1 %i.afq, label %bb.ik, label %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc426 unwind label %.loopexit.split-lp802

.noexc426:                                        ; preds = %bb.ik
  unreachable

_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ij
  %i.afr = ashr exact i64 %i.afp, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i424 = call i64 @llvm.umax.i64(i64 %i.afr, i64 1)
  %i.afs = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.afr ; 2 uses
  %i.aft = icmp ult i64 %i.afs, %i.afr
  %i.afu = call i64 @llvm.umin.i64(i64 %i.afs, i64 1152921504606846975)
  %i.afv = select i1 %i.aft, i64 1152921504606846975, i64 %i.afu ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.afv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.afw = shl nuw nsw i64 %i.afv, 3
  %i.afx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afw) #64
          to label %.noexc427 unwind label %.loopexit801 ; 8 uses

.noexc427:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 %i.afp
  store i64 %storemerge2141054, ptr %i.afy, align 8, !tbaa !33
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.afm, %i.afj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc427
  %i.afz = ptrtoaddr ptr %i.afx to i64
  %43 = add i64 %i.afn, -8
  %44 = sub i64 %43, %i.afo                       ; 2 uses
  %i.aga = lshr i64 %44, 3
  %i.agb = add nuw nsw i64 %i.aga, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %44, 24
  %i.agc = sub i64 %i.afz, %i.afo
  %diff.check = icmp ult i64 %i.agc, 32
  %or.cond1605 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1605, label %.lr.ph.i.i.i.i.i.i.i.preheader1607, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.agb, 4611686018427387900    ; 3 uses
  %i.agd = shl i64 %n.vec, 3                      ; 2 uses
  %i.age = getelementptr i8, ptr %i.afx, i64 %i.agd ; 2 uses
  %i.agf = getelementptr i8, ptr %i.afm, i64 %i.agd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agg = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.afx, i64 %i.agg ; 2 uses
  %next.gep1584 = getelementptr i8, ptr %i.afm, i64 %i.agg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.agh = getelementptr i8, ptr %next.gep1584, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1584, align 8, !tbaa !33, !alias.scope !484, !noalias !481
  %wide.load1585 = load <2 x i64>, ptr %i.agh, align 8, !tbaa !33, !alias.scope !484, !noalias !481
  %i.agi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !33, !alias.scope !481, !noalias !484
  store <2 x i64> %wide.load1585, ptr %i.agi, align 8, !tbaa !33, !alias.scope !481, !noalias !484
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agj = icmp eq i64 %index.next, %n.vec
  br i1 %i.agj, label %middle.block, label %vector.body, !llvm.loop !486

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.agb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1607

.lr.ph.i.i.i.i.i.i.i.preheader1607:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.afx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.age, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.afm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.agf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1607, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.agm, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1607 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.agl, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1607 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.agk = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !484, !noalias !481
  store i64 %i.agk, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !481, !noalias !484
  %i.agl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.agl, %i.afj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !487

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc427
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.afx, %.noexc427 ], [ %i.age, %middle.block ], [ %i.agm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.agn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.afm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.il

bb.il:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.afm) #60
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.il, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.afx, ptr %i.aef, align 8, !tbaa !230
  store ptr %i.agn, ptr %i.aeg, align 8, !tbaa !479
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afv
  store ptr %i.ago, ptr %i.aeh, align 8, !tbaa !480
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ii
  %i.agp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 noundef %storemerge2141054)
          to label %bb.im unwind label %.loopexit796 ; 2 uses

bb.im:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit
  %.not.i428 = icmp eq ptr %.sroa.12.01050, %.sroa.19.01052
  br i1 %.not.i428, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !33
  store i64 %i.agq, ptr %.sroa.12.01050, align 8, !tbaa !33
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.12.01050, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit437

bb.io:                                            ; preds = %bb.im
  %i.ags = ptrtoint ptr %.sroa.19.01052 to i64
  %i.agt = ptrtoint ptr %.sroa.0672.01049 to i64
  %i.agu = sub i64 %i.ags, %i.agt                 ; 5 uses
  %i.agv = icmp eq i64 %i.agu, 9223372036854775800
  br i1 %i.agv, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i429

.invoke:                                          ; preds = %bb.io, %bb.ix
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.cont unwind label %.loopexit.split-lp797

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i429: ; preds = %bb.io
  %i.agw = ashr exact i64 %i.agu, 3               ; 3 uses
  %.sroa.speculated.i.i.i430 = call i64 @llvm.umax.i64(i64 %i.agw, i64 1)
  %i.agx = add nsw i64 %.sroa.speculated.i.i.i430, %i.agw ; 2 uses
  %i.agy = icmp ult i64 %i.agx, %i.agw
  %i.agz = call i64 @llvm.umin.i64(i64 %i.agx, i64 1152921504606846975)
  %i.aha = select i1 %i.agy, i64 1152921504606846975, i64 %i.agz ; 3 uses
  %.not.i.i.i431 = icmp ne i64 %i.aha, 0
  call void @llvm.assume(i1 %.not.i.i.i431)
  %i.ahb = shl nuw nsw i64 %i.aha, 3
  %i.ahc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahb) #64
          to label %.noexc436 unwind label %.loopexit796 ; 4 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i429
  %i.ahd = getelementptr inbounds i8, ptr %i.ahc, i64 %i.agu ; 2 uses
  %i.ahe = load i64, ptr %i.agp, align 8, !tbaa !33
  store i64 %i.ahe, ptr %i.ahd, align 8, !tbaa !33
  %i.ahf = icmp sgt i64 %i.agu, 0
  br i1 %i.ahf, label %bb.ip, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i432

bb.ip:                                            ; preds = %.noexc436
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahc, ptr align 8 %.sroa.0672.01049, i64 %i.agu, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i432

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i432: ; preds = %bb.ip, %.noexc436
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %.not.i17.i.i433 = icmp eq ptr %.sroa.0672.01049, null
  br i1 %.not.i17.i.i433, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i432
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0672.01049) #60
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434: ; preds = %bb.iq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i432
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.aha
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit437

.loopexit801:                                     ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit803 = landingpad { ptr, i32 }
          cleanup
  br label %.body421

.loopexit.split-lp802:                            ; preds = %bb.ik
  %lpad.loopexit.split-lp804 = landingpad { ptr, i32 }
          cleanup
  br label %.body421

.loopexit796:                                     ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i429, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i455
  %lpad.loopexit798 = landingpad { ptr, i32 }
          cleanup
  br label %.body421

.loopexit.split-lp797:                            ; preds = %.invoke
  %lpad.loopexit.split-lp799 = landingpad { ptr, i32 }
          cleanup
  br label %.body421

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420: ; preds = %bb.ig, %bb.id, %bb.if
  br i1 %.01681056, label %_ZNSt6vectorImSaImEE9push_backERKm.exit437, label %bb.ir

bb.ir:                                            ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420
  %i.ahi = load ptr, ptr %i.aeg, align 8, !tbaa !479 ; 6 uses
  %i.ahj = load ptr, ptr %i.aeh, align 8, !tbaa !480
  %.not.i.i438 = icmp eq ptr %i.ahi, %i.ahj
  br i1 %.not.i.i438, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  store i64 -1, ptr %i.ahi, align 8, !tbaa !33
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  store ptr %i.ahk, ptr %i.aeg, align 8, !tbaa !479
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit453

bb.it:                                            ; preds = %bb.ir
  %i.ahl = load ptr, ptr %i.aef, align 8, !tbaa !230 ; 7 uses
  %i.ahm = ptrtoint ptr %i.ahi to i64             ; 2 uses
  %i.ahn = ptrtoint ptr %i.ahl to i64             ; 3 uses
  %i.aho = sub i64 %i.ahm, %i.ahn                 ; 3 uses
  %i.ahp = icmp eq i64 %i.aho, 9223372036854775800
  br i1 %i.ahp, label %bb.iu, label %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i439

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc451 unwind label %.loopexit.split-lp

.noexc451:                                        ; preds = %bb.iu
  unreachable

_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i439: ; preds = %bb.it
  %i.ahq = ashr exact i64 %i.aho, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i440 = call i64 @llvm.umax.i64(i64 %i.ahq, i64 1)
  %i.ahr = add nsw i64 %.sroa.speculated.i.i.i.i440, %i.ahq ; 2 uses
  %i.ahs = icmp ult i64 %i.ahr, %i.ahq
  %i.aht = call i64 @llvm.umin.i64(i64 %i.ahr, i64 1152921504606846975)
  %i.ahu = select i1 %i.ahs, i64 1152921504606846975, i64 %i.aht ; 3 uses
  %.not.i.i.i.i441 = icmp ne i64 %i.ahu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i441)
  %i.ahv = shl nuw nsw i64 %i.ahu, 3
  %i.ahw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahv) #64
          to label %.noexc452 unwind label %.loopexit795 ; 8 uses

.noexc452:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i439
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 %i.aho
  store i64 -1, ptr %i.ahx, align 8, !tbaa !33
  %.not10.i.i.i.i.i.i.i442 = icmp eq ptr %i.ahl, %i.ahi
  br i1 %.not10.i.i.i.i.i.i.i442, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i447, label %.lr.ph.i.i.i.i.i.i.i443.preheader

.lr.ph.i.i.i.i.i.i.i443.preheader:                ; preds = %.noexc452
  %i.ahy = ptrtoaddr ptr %i.ahw to i64
  %45 = add i64 %i.ahm, -8
  %46 = sub i64 %45, %i.ahn                       ; 2 uses
  %i.ahz = lshr i64 %46, 3
  %i.aia = add nuw nsw i64 %i.ahz, 1              ; 2 uses
  %min.iters.check1590 = icmp ult i64 %46, 24
  %i.aib = sub i64 %i.ahy, %i.ahn
  %diff.check1588 = icmp ult i64 %i.aib, 32
  %or.cond1606 = or i1 %min.iters.check1590, %diff.check1588
  br i1 %or.cond1606, label %.lr.ph.i.i.i.i.i.i.i443.preheader1608, label %vector.ph1591

vector.ph1591:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i443.preheader
  %n.vec1593 = and i64 %i.aia, 4611686018427387900 ; 3 uses
  %i.aic = shl i64 %n.vec1593, 3                  ; 2 uses
  %i.aid = getelementptr i8, ptr %i.ahw, i64 %i.aic ; 2 uses
  %i.aie = getelementptr i8, ptr %i.ahl, i64 %i.aic
  br label %vector.body1594

vector.body1594:                                  ; preds = %vector.body1594, %vector.ph1591
  %index1595 = phi i64 [ 0, %vector.ph1591 ], [ %index.next1600, %vector.body1594 ] ; 2 uses
  %i.aif = shl i64 %index1595, 3                  ; 2 uses
  %next.gep1596 = getelementptr i8, ptr %i.ahw, i64 %i.aif ; 2 uses
  %next.gep1597 = getelementptr i8, ptr %i.ahl, i64 %i.aif ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.aig = getelementptr i8, ptr %next.gep1597, i64 16
  %wide.load1598 = load <2 x i64>, ptr %next.gep1597, align 8, !tbaa !33, !alias.scope !491, !noalias !488
  %wide.load1599 = load <2 x i64>, ptr %i.aig, align 8, !tbaa !33, !alias.scope !491, !noalias !488
  %i.aih = getelementptr i8, ptr %next.gep1596, i64 16
  store <2 x i64> %wide.load1598, ptr %next.gep1596, align 8, !tbaa !33, !alias.scope !488, !noalias !491
  store <2 x i64> %wide.load1599, ptr %i.aih, align 8, !tbaa !33, !alias.scope !488, !noalias !491
  %index.next1600 = add nuw i64 %index1595, 4     ; 2 uses
  %i.aii = icmp eq i64 %index.next1600, %n.vec1593
  br i1 %i.aii, label %middle.block1601, label %vector.body1594, !llvm.loop !493

middle.block1601:                                 ; preds = %vector.body1594
  %cmp.n1602 = icmp eq i64 %i.aia, %n.vec1593
  br i1 %cmp.n1602, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i447, label %.lr.ph.i.i.i.i.i.i.i443.preheader1608

.lr.ph.i.i.i.i.i.i.i443.preheader1608:            ; preds = %.lr.ph.i.i.i.i.i.i.i443.preheader, %middle.block1601
  %.012.i.i.i.i.i.i.i444.ph = phi ptr [ %i.ahw, %.lr.ph.i.i.i.i.i.i.i443.preheader ], [ %i.aid, %middle.block1601 ]
  %.0911.i.i.i.i.i.i.i445.ph = phi ptr [ %i.ahl, %.lr.ph.i.i.i.i.i.i.i443.preheader ], [ %i.aie, %middle.block1601 ]
  br label %.lr.ph.i.i.i.i.i.i.i443

.lr.ph.i.i.i.i.i.i.i443:                          ; preds = %.lr.ph.i.i.i.i.i.i.i443.preheader1608, %.lr.ph.i.i.i.i.i.i.i443
  %.012.i.i.i.i.i.i.i444 = phi ptr [ %i.ail, %.lr.ph.i.i.i.i.i.i.i443 ], [ %.012.i.i.i.i.i.i.i444.ph, %.lr.ph.i.i.i.i.i.i.i443.preheader1608 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i445 = phi ptr [ %i.aik, %.lr.ph.i.i.i.i.i.i.i443 ], [ %.0911.i.i.i.i.i.i.i445.ph, %.lr.ph.i.i.i.i.i.i.i443.preheader1608 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.aij = load i64, ptr %.0911.i.i.i.i.i.i.i445, align 8, !tbaa !33, !alias.scope !491, !noalias !488
  store i64 %i.aij, ptr %.012.i.i.i.i.i.i.i444, align 8, !tbaa !33, !alias.scope !488, !noalias !491
  %i.aik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i445, i64 8 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i444, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i446 = icmp eq ptr %i.aik, %i.ahi
  br i1 %.not.i.i.i.i.i.i.i446, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i447, label %.lr.ph.i.i.i.i.i.i.i443, !llvm.loop !494

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i447: ; preds = %.lr.ph.i.i.i.i.i.i.i443, %middle.block1601, %.noexc452
  %.0.lcssa.i.i.i.i.i.i.i448 = phi ptr [ %i.ahw, %.noexc452 ], [ %i.aid, %middle.block1601 ], [ %i.ail, %.lr.ph.i.i.i.i.i.i.i443 ]
  %i.aim = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i448, i64 8
  %.not.i23.i.i.i449 = icmp eq ptr %i.ahl, null
  br i1 %.not.i23.i.i.i449, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i450, label %bb.iv

bb.iv:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i447
  call void @_ZdlPv(ptr noundef nonnull %i.ahl) #60
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i450

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i450: ; preds = %bb.iv, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i447
  store ptr %i.ahw, ptr %i.aef, align 8, !tbaa !230
  store ptr %i.aim, ptr %i.aeg, align 8, !tbaa !479
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %i.ahu
  store ptr %i.ain, ptr %i.aeh, align 8, !tbaa !480
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit453

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit453: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i450, %bb.is
  %.not.i454 = icmp eq ptr %.sroa.12.01050, %.sroa.19.01052
  br i1 %.not.i454, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit453
  %i.aio = load i64, ptr %i.aei, align 8, !tbaa !33
  store i64 %i.aio, ptr %.sroa.12.01050, align 8, !tbaa !33
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.12.01050, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit437

bb.ix:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit453
  %i.aiq = ptrtoint ptr %.sroa.19.01052 to i64
  %i.air = ptrtoint ptr %.sroa.0672.01049 to i64
  %i.ais = sub i64 %i.aiq, %i.air                 ; 5 uses
  %i.ait = icmp eq i64 %i.ais, 9223372036854775800
  br i1 %i.ait, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i455

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i455: ; preds = %bb.ix
  %i.aiu = ashr exact i64 %i.ais, 3               ; 3 uses
  %.sroa.speculated.i.i.i456 = call i64 @llvm.umax.i64(i64 %i.aiu, i64 1)
  %i.aiv = add nsw i64 %.sroa.speculated.i.i.i456, %i.aiu ; 2 uses
  %i.aiw = icmp ult i64 %i.aiv, %i.aiu
  %i.aix = call i64 @llvm.umin.i64(i64 %i.aiv, i64 1152921504606846975)
  %i.aiy = select i1 %i.aiw, i64 1152921504606846975, i64 %i.aix ; 3 uses
  %.not.i.i.i457 = icmp ne i64 %i.aiy, 0
  call void @llvm.assume(i1 %.not.i.i.i457)
  %i.aiz = shl nuw nsw i64 %i.aiy, 3
  %i.aja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiz) #64
          to label %.noexc462 unwind label %.loopexit796 ; 4 uses

.noexc462:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i455
  %i.ajb = getelementptr inbounds i8, ptr %i.aja, i64 %i.ais ; 2 uses
  %i.ajc = load i64, ptr %i.aei, align 8, !tbaa !33
  store i64 %i.ajc, ptr %i.ajb, align 8, !tbaa !33
  %i.ajd = icmp sgt i64 %i.ais, 0
  br i1 %i.ajd, label %bb.iy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i458

bb.iy:                                            ; preds = %.noexc462
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aja, ptr align 8 %.sroa.0672.01049, i64 %i.ais, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i458

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i458: ; preds = %bb.iy, %.noexc462
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %.not.i17.i.i459 = icmp eq ptr %.sroa.0672.01049, null
  br i1 %.not.i17.i.i459, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i458
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0672.01049) #60
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460: ; preds = %bb.iz, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i458
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aja, i64 %i.aiy
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit437

.loopexit795:                                     ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i439
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body421

.loopexit.split-lp:                               ; preds = %bb.iu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body421

_ZNSt6vectorImSaImEE9push_backERKm.exit437:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460, %bb.iw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434, %bb.in, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420
  %.sroa.0672.1 = phi ptr [ %.sroa.0672.01049, %bb.in ], [ %.sroa.0672.01049, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420 ], [ %i.ahc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434 ], [ %i.aja, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460 ], [ %.sroa.0672.01049, %bb.iw ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %i.agr, %bb.in ], [ %.sroa.12.01050, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420 ], [ %i.ahg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434 ], [ %i.aje, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460 ], [ %i.aip, %bb.iw ] ; 2 uses
  %.sroa.19.1 = phi ptr [ %.sroa.19.01052, %bb.in ], [ %.sroa.19.01052, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420 ], [ %i.ahh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434 ], [ %i.ajf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460 ], [ %.sroa.19.01052, %bb.iw ] ; 2 uses
  %.1169 = phi i1 [ %.01681056, %bb.in ], [ true, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit420 ], [ %.01681056, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i434 ], [ true, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i460 ], [ true, %bb.iw ]
  %i.ajg = add nuw i64 %storemerge2141054, 1      ; 2 uses
  %exitcond1168.not = icmp eq i64 %i.ajg, %i.x
  br i1 %exitcond1168.not, label %._crit_edge1059, label %bb.ic, !llvm.loop !495

._crit_edge1071:                                  ; preds = %_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EED2Ev.exit, %_ZN6duckdb6vectorImLb1ESaImEEaSEOS2_.exit
  %i.ajh = load ptr, ptr %1, align 8, !tbaa !242  ; 2 uses
  %i.aji = load ptr, ptr %i.df, align 8, !tbaa !242 ; 2 uses
  %.not7861072 = icmp eq ptr %i.ajh, %i.aji
  br i1 %.not7861072, label %._crit_edge1077, label %.lr.ph1076

bb.ja:                                            ; preds = %.lr.ph1070, %_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EED2Ev.exit
  %.sroa.0659.01069 = phi ptr [ %i.ael, %.lr.ph1070 ], [ %i.akk, %_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.ajj = load ptr, ptr %i.aen, align 8, !tbaa !496 ; 2 uses
  %i.ajk = load ptr, ptr %i.aeo, align 8, !tbaa !496 ; 2 uses
  %.not7871063 = icmp eq ptr %i.ajj, %i.ajk
  br i1 %.not7871063, label %._crit_edge1067, label %.lr.ph1066

.lr.ph1066:                                       ; preds = %bb.ja
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.0659.01069, i64 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %.sroa.0659.01069, i64 16
  br label %bb.jf

._crit_edge1067.loopexit:                         ; preds = %_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE9push_backEOS1_.exit
  %i.ajn = load <2 x ptr>, ptr %42, align 16, !tbaa !391
  %.pre1181 = load ptr, ptr %i.aeq, align 16, !tbaa !392
  br label %._crit_edge1067

._crit_edge1067:                                  ; preds = %._crit_edge1067.loopexit, %bb.ja
  %i.ajo = phi ptr [ %.pre1181, %._crit_edge1067.loopexit ], [ null, %bb.ja ]
  %i.ajp = phi <2 x ptr> [ %i.ajn, %._crit_edge1067.loopexit ], [ splat (ptr null), %bb.ja ]
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0659.01069, i64 8 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !497 ; 4 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.0659.01069, i64 16
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !498 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.0659.01069, i64 24
  store <2 x ptr> %i.ajp, ptr %i.ajq, align 8, !tbaa !391
  store ptr %i.ajo, ptr %i.aju, align 8, !tbaa !392
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ajr, %i.ajt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14BoxRenderValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge1067, %_ZSt8_DestroyIN6duckdb14BoxRenderValueEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.aka, %_ZSt8_DestroyIN6duckdb14BoxRenderValueEEvPT_.exit.i.i.i.i.i.i ], [ %i.ajr, %._crit_edge1067 ] ; 4 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !499 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb22HighlightingAnnotationESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ajw) #60
  br label %_ZNSt6vectorIN6duckdb22HighlightingAnnotationESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN6duckdb22HighlightingAnnotationESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.jb, %.lr.ph.i.i.i.i.i.i
  %i.ajx = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.ajz = icmp eq ptr %i.ajx, %i.ajy
  br i1 %i.ajz, label %_ZSt8_DestroyIN6duckdb14BoxRenderValueEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb22HighlightingAnnotationESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb12optional_idxC2Em:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #58
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25BoxRendererImplementation21FetchBottomCollectionERNS_20RenderDataCollectionERKNS_20ColumnDataCollectionEm(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.duckdb::DataChunk", align 8 ; 7 uses
  %12 = alloca %"class.duckdb::DataChunk", align 8 ; 11 uses
  %13 = alloca %"class.duckdb::vector.243", align 8 ; 14 uses
  %14 = alloca %"class.duckdb::unique_ptr.249", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator", align 1   ; 5 uses
  %17 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %bb.by, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !173  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  call void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %11)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !326, !nonnull !123, !align !232
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(512) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 2048)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %12)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb20RenderDataCollection15InitializeChunkERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %12)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = invoke noundef i64 @_ZN6duckdb8Utf8Proc11RenderWidthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.w = invoke noundef i64 @_ZNK6duckdb20ColumnDataCollection10ChunkCountEv(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.h

._crit_edge237:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !743
  br label %bb.aa

bb.h:                                             ; preds = %bb.g, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %.076312.in = phi i64 [ %i.w, %bb.g ], [ %.076312, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %.072311 = phi i64 [ 0, %bb.g ], [ %i.af, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %.076312 = add i64 %.076312.in, -1              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.z = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #64
          to label %.noexc unwind label %bb.t     ; 7 uses

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.z)
          to label %bb.j unwind label %bb.i, !noalias !745

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.z) #60, !noalias !745
  br label %.body

bb.j:                                             ; preds = %.noexc
  store ptr %i.z, ptr %14, align 8, !tbaa !376, !alias.scope !745
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !326, !nonnull !123, !align !232
  %i.ac = ptrtoint ptr %i.z to i64                ; 2 uses
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(512) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 2048)
          to label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv.exit unwind label %.loopexit

_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %bb.j
  invoke void @_ZNK6duckdb20ColumnDataCollection10FetchChunkEmRNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %.076312, ptr noundef nonnull align 8 dereferenceable(72) %i.z)
          to label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit122 unwind label %.loopexit

_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit122: ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !352
  %i.af = add i64 %i.ae, %.072311                 ; 4 uses
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !748 ; 6 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !750
  %.not.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit122
  store i64 %i.ac, ptr %i.ag, align 8, !tbaa !376
  store ptr null, ptr %14, align 8, !tbaa !376
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !748
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.l:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit122
  %i.aj = load ptr, ptr %13, align 8, !tbaa !751  ; 10 uses
  %i.ak = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc123 unwind label %.loopexit.split-lp

.noexc123:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #64
          to label %.noexc124 unwind label %.loopexit ; 10 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i64 %i.ac, ptr %i.av, align 8, !tbaa !376
  store ptr null, ptr %14, align 8, !tbaa !376
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ag
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc124
  %18 = add i64 %i.ak, -8
  %19 = sub i64 %18, %i.al                        ; 2 uses
  %i.aw = lshr i64 %19, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %19, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader332, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.au, i64 8
  %i.ay = add i64 %i.ak, -8
  %i.az = sub i64 %i.ay, %i.al
  %i.ba = and i64 %i.az, -8                       ; 2 uses
  %scevgep313 = getelementptr i8, ptr %scevgep, i64 %i.ba
  %scevgep314 = getelementptr i8, ptr %i.aj, i64 8
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.ba
  %bound0 = icmp ult ptr %i.au, %scevgep315
  %bound1 = icmp ult ptr %i.aj, %scevgep313
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader332, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.au, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.aj, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.be ; 2 uses
  %next.gep316 = getelementptr i8, ptr %i.aj, i64 %i.be ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.bf = getelementptr i8, ptr %next.gep316, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep316, align 8, !tbaa !376, !alias.scope !757, !noalias !752
  %wide.load317 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !376, !alias.scope !757, !noalias !752
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !376, !alias.scope !760, !noalias !757
  store <2 x i64> %wide.load317, ptr %i.bg, align 8, !tbaa !376, !alias.scope !760, !noalias !757
  %i.bh = getelementptr i8, ptr %next.gep316, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep316, align 8, !tbaa !376, !alias.scope !757, !noalias !752
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !376, !alias.scope !757, !noalias !752
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !762

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader332

.lr.ph.i.i.i.i.i.i.i.preheader332:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader332, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader332 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader332 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.bj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !376, !alias.scope !755, !noalias !752
  store i64 %i.bj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !376, !alias.scope !752, !noalias !755
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !376, !alias.scope !755, !noalias !752
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !763

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc124
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.au, %.noexc124 ], [ %i.bc, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.au, ptr %13, align 8, !tbaa !751
  store ptr %i.bm, ptr %i.x, align 8, !tbaa !748
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bn, ptr %i.y, align 8, !tbaa !750
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.k
  %i.bo = phi ptr [ %i.bm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ai, %bb.k ]
  %.not = icmp ult i64 %i.af, %3
  br i1 %.not, label %bb.u, label %split

bb.o:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.p:                                             ; preds = %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.q:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.r:                                             ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.s:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body133

bb.t:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.j, %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv.exit, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body102

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bv = icmp eq i64 %.076312, 0
  br i1 %i.bv, label %bb.v, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.bw = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.cc unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.v
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %.079 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bz = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.bz) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br i1 %.079, label %bb.z, label %.body102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br i1 %.079, label %bb.z, label %.body102

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn187 = phi { ptr, i32 } [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bw) #58
  br label %.body102

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  %i.cc = icmp ult i64 %i.af, %3
  br i1 %i.cc, label %bb.h, label %._crit_edge237

.body102:                                         ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %.pn187, %bb.z ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #58
  br label %.body

.body:                                            ; preds = %bb.t, %bb.i, %.body102
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body102 ], [ %i.bu, %bb.t ], [ %i.aa, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  br label %.body133

split:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  br label %bb.aa

bb.aa:                                            ; preds = %split, %._crit_edge237
end_hunk_1
begin_hunk_2_@_ZN6duckdb9CSVWriter17WriteQuotedStringERNS_11WriteStreamEPKcmbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIbLb1ESaIbEEEcc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.aa
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cm) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.co, %bb.ad ], [ %i.cd, %bb.y ], [ %i.cc, %bb.x ]
  %i.cp = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.aa
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.cp) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  resume { ptr, i32 } %.pn

_ZN6duckdb9CSVWriter14RequiresQuotesEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIbLb1ESaIbEEE.exit.thread: ; preds = %bb.e, %bb.d, %_ZN6duckdb9CSVWriter14RequiresQuotesEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIbLb1ESaIbEEE.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !35
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2)
  br label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb9CSVWriter18WriteQuoteOrEscapeERNS_11WriteStreamEc.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZN6duckdb9CSVWriter14RequiresQuotesEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIbLb1ESaIbEEE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ComplexJSONC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !178
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 %i.e, ptr %i.a, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.h = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.h, ptr %i.b, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !79
  store i8 %i.j, ptr %i.i, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !139
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.p, ptr %i.o, align 8, !tbaa !1111
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %i.q, align 8, !tbaa !1113
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.t, i8 0, i64 41, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb11ComplexJSONC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !139
  store i8 0, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %i.e, align 8, !tbaa !1113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.h, i8 0, i64 41, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ComplexJSON14AddObjectEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(113) initializes((112, 113)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.a, align 8, !tbaa !1114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb10unique_ptrINS9_11ComplexJSONESt14default_deleteISB_ELb1EEEESaISF_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !1124
  store ptr null, ptr %2, align 8, !tbaa !1124
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1124 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1124
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.e)
  br label %_ZN6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) initializes((112, 113)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 2, ptr %i.a, align 8, !tbaa !1114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1126 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1127
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !1124
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1124
  store ptr null, ptr %1, align 8, !tbaa !1124
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !1126
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1128 ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #64 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = load i64, ptr %1, align 8, !tbaa !1124
  store i64 %i.v, ptr %i.u, align 8, !tbaa !1124
  store ptr null, ptr %1, align 8, !tbaa !1124
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %2 = add i64 %i.j, -8
  %3 = sub i64 %2, %i.k                           ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.y = add i64 %i.j, -8
  %i.z = sub i64 %i.y, %i.k
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ab
  %scevgep3 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0 = icmp ult ptr %i.t, %scevgep3
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.i, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.ag = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !1124, !alias.scope !1134, !noalias !1129
  %wide.load5 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !1124, !alias.scope !1134, !noalias !1129
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1124, !alias.scope !1137, !noalias !1134
  store <2 x i64> %wide.load5, ptr %i.ah, align 8, !tbaa !1124, !alias.scope !1137, !noalias !1134
  %i.ai = getelementptr i8, ptr %next.gep4, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !1124, !alias.scope !1134, !noalias !1129
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !1124, !alias.scope !1134, !noalias !1129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.preheader7:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1124, !alias.scope !1132, !noalias !1129
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1124, !alias.scope !1129, !noalias !1132
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1124, !alias.scope !1132, !noalias !1129
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1140

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !1128
  store ptr %i.an, ptr %i.c, align 8, !tbaa !1126
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !1127
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(113) ptr @_ZN6duckdb11ComplexJSON9GetObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1114
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_11ComplexJSONESt14default_deleteISA_ELb1EEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.q unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.06 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.j) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.06, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.06, label %common.resume.sink.split, label %common.resume

bb.g:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb10unique_ptrINS9_11ComplexJSONESt14default_deleteISB_ELb1EEEESaISF_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1124 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %_ZNK6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEdeEv.exit, !prof !81

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.l unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %common.resume.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.r) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %.sink = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
end_hunk_2
begin_hunk_3_@_ZN6duckdb15UnboundTypeInfo11DeserializeERNS_12DeserializerE:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !139
  store i8 0, ptr %i.ax, align 8, !tbaa !79
  invoke void @_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRT_(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 200, ptr noundef nonnull @.str.115, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !178
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !139
  store i8 0, ptr %i.az, align 8, !tbaa !79
  invoke void @_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRT_(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 201, ptr noundef nonnull @.str.116, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bb, ptr %7, align 8, !tbaa !178
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !139
  store i8 0, ptr %i.bb, align 8, !tbaa !79
  invoke void @_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRT_(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 202, ptr noundef nonnull @.str.117, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.bd = load ptr, ptr %1, align 8, !tbaa !35, !noalias !1869
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1869
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 203, ptr noundef nonnull @.str.119)
          to label %.noexc45 unwind label %bb.w, !inline_history !1872

.noexc45:                                         ; preds = %bb.o
  br i1 %i.bg, label %bb.p, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i:  ; preds = %.noexc45
  %i.bh = load ptr, ptr %1, align 8, !tbaa !35, !noalias !1869
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1869
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext false)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit.thread unwind label %bb.w, !inline_history !1872

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit.thread: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !1869
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %._crit_edge

bb.p:                                             ; preds = %.noexc45
  invoke void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_5ValueELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc47 unwind label %bb.w

.noexc47:                                         ; preds = %bb.p
  %i.bl = load ptr, ptr %1, align 8, !tbaa !35, !noalias !1869
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext true)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.q

bb.q:                                             ; preds = %.noexc47
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #58
  br label %.body48

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %.noexc47
  %.pre = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre125 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not113118 = icmp eq ptr %.pre, %.pre125
  br i1 %.not113118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit.thread, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit
  %i.bs = phi ptr [ %i.bk, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit.thread ], [ %i.bp, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINS_5ValueELb1ESaIS3_EEEEET_tPKc.exit ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  invoke void @_ZN6duckdb9make_uniqINS_14TypeExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_NS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISB_ELb1EEELb1ESaISE_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1099") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNK6duckdb10shared_ptrINS_15UnboundTypeInfoELb1EEptEv.exit68 unwind label %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit92

bb.r:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #60
  br label %bb.an

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit9.i.invoke, %.noexc30, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, %bb.i, %bb.g
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.u:                                             ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.v:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.w:                                             ; preds = %bb.p, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i, %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.x:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0110.0119 = phi ptr [ %.pre, %.lr.ph ], [ %i.dm, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bz = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #64
          to label %.noexc50 unwind label %bb.ah  ; 6 uses

.noexc50:                                         ; preds = %bb.x
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0110.0119)
          to label %bb.y unwind label %bb.z, !noalias !1873

bb.y:                                             ; preds = %.noexc50
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, ptr noundef nonnull %2)
          to label %bb.ac unwind label %bb.aa, !noalias !1873

bb.z:                                             ; preds = %.noexc50
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #58, !noalias !1873
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.cb, %bb.aa ], [ %i.ca, %bb.z ]
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #60, !noalias !1873
  br label %.body51

bb.ac:                                            ; preds = %bb.y
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #58, !noalias !1873
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !1876 ; 6 uses
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !1878
  %.not.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = ptrtoint ptr %i.bz to i64
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !690
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cf, ptr %i.bq, align 8, !tbaa !1876
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %8, align 8, !tbaa !1879  ; 10 uses
  %i.ch = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.af, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc53 unwind label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit.split-lp

.noexc53:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #64
          to label %.noexc54 unwind label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit ; 10 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  %i.ct = ptrtoint ptr %i.bz to i64
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !690
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.cc
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc54
  %11 = add i64 %i.ch, -8
  %12 = sub i64 %11, %i.ci                        ; 2 uses
  %i.cu = lshr i64 %12, 3
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cr, i64 8
  %i.cw = add i64 %i.ch, -8
  %i.cx = sub i64 %i.cw, %i.ci
  %i.cy = and i64 %i.cx, -8                       ; 2 uses
  %scevgep169 = getelementptr i8, ptr %scevgep, i64 %i.cy
  %scevgep170 = getelementptr i8, ptr %i.cg, i64 8
  %scevgep171 = getelementptr i8, ptr %scevgep170, i64 %i.cy
  %bound0 = icmp ult ptr %i.cr, %scevgep171
  %bound1 = icmp ult ptr %i.cg, %scevgep169
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cv, 4611686018427387900     ; 3 uses
  %i.cz = shl i64 %n.vec, 3                       ; 2 uses
  %i.da = getelementptr i8, ptr %i.cr, i64 %i.cz  ; 2 uses
  %i.db = getelementptr i8, ptr %i.cg, i64 %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cr, i64 %i.dc ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.cg, i64 %i.dc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.dd = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep172, align 8, !tbaa !690, !alias.scope !1885, !noalias !1880
  %wide.load173 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !690, !alias.scope !1885, !noalias !1880
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !690, !alias.scope !1888, !noalias !1885
  store <2 x i64> %wide.load173, ptr %i.de, align 8, !tbaa !690, !alias.scope !1888, !noalias !1885
  %i.df = getelementptr i8, ptr %next.gep172, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep172, align 8, !tbaa !690, !alias.scope !1885, !noalias !1880
  store <2 x ptr> splat (ptr null), ptr %i.df, align 8, !tbaa !690, !alias.scope !1885, !noalias !1880
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !1890

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader175

.lr.ph.i.i.i.i.i.i.i.preheader175:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader175, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader175 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader175 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.dh = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !690, !alias.scope !1883, !noalias !1880
  store i64 %i.dh, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !690, !alias.scope !1880, !noalias !1883
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !690, !alias.scope !1883, !noalias !1880
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.di, %i.cc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1891

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc54
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.noexc54 ], [ %i.da, %middle.block ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cr, ptr %8, align 8, !tbaa !1879
  store ptr %i.dk, ptr %i.bq, align 8, !tbaa !1876
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.dl, ptr %i.br, align 8, !tbaa !1878
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0110.0119, i64 64 ; 2 uses
  %.not113 = icmp eq ptr %i.dm, %.pre125
  br i1 %.not113, label %._crit_edge, label %bb.x

bb.ah:                                            ; preds = %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit.split-lp: ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit58.loopexit.split-lp ]
  %i.do = load ptr, ptr %i.bz, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(56) %i.bz) #58, !inline_history !1892
  br label %.body51

_ZNK6duckdb10shared_ptrINS_15UnboundTypeInfoELb1EEptEv.exit68: ; preds = %._crit_edge
  %i.dr = load ptr, ptr %10, align 8, !tbaa !1893
  store ptr null, ptr %10, align 8, !tbaa !1893
  %i.ds = load ptr, ptr %i.p, align 8, !tbaa !690 ; 3 uses
  store ptr %i.dr, ptr %i.p, align 8, !tbaa !690
  %.not.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit71

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit71: ; preds = %_ZNK6duckdb10shared_ptrINS_15UnboundTypeInfoELb1EEptEv.exit68
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(56) %i.ds) #58, !inline_history !1895
  %.pre126 = load ptr, ptr %10, align 8, !tbaa !1893 ; 3 uses
  %.not.i72 = icmp eq ptr %.pre126, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14TypeExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14TypeExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit71
  %i.dw = load ptr, ptr %.pre126, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(176) %.pre126) #58, !inline_history !1896
  br label %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK6duckdb10shared_ptrINS_15UnboundTypeInfoELb1EEptEv.exit68, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit71, %_ZNKSt14default_deleteIN6duckdb14TypeExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.dz = load ptr, ptr %9, align 8, !tbaa !89    ; 3 uses
  %i.ea = load ptr, ptr %i.bs, align 8, !tbaa !90 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dz, %i.ea
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i ], [ %i.dz, %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i) #58
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eb, %i.ea
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !91

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ec = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.dz, %_ZNSt10unique_ptrIN6duckdb14TypeExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ec) #60
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  %i.ed = load ptr, ptr %8, align 8, !tbaa !1879  ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1876 ; 2 uses
  %.not4.i.i.i73 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not4.i.i.i73, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i75 = phi ptr [ %i.ek, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.ed, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit ] ; 2 uses
  %i.eg = load ptr, ptr %.05.i.i.i75, align 8, !tbaa !690 ; 3 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i76, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i77

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i77: ; preds = %.lr.ph.i.i.i74
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !35
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(56) %i.eg) #58, !inline_history !1897
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i77, %.lr.ph.i.i.i74
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i75, i64 8 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.ek, %i.ef
  br i1 %.not.i.i.i78, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i74, !llvm.loop !1898

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i79 = load ptr, ptr %8, align 8, !tbaa !1879
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %i.el = phi ptr [ %.pr.i79, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ed, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i80 = icmp eq ptr %i.el, null
  br i1 %.not.i.i1.i80, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.el) #60
end_hunk_3
begin_hunk_4_@_ZN6duckdb16HivePartitioning22ApplyFiltersToFileListERNS_13ClientContextERNS_6vectorINS_12OpenFileInfoELb1ESaIS4_EEERNS3_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERKNS_26HivePartitioningFilterInfoERNS_21MultiFilePushdownInfoE:bb.a
  %i.mq = load i64, ptr %i.o, align 8, !tbaa !33  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.mq, ptr %i.f, align 8, !tbaa !33
  store i64 %i.cr, ptr %i.g, align 8, !tbaa !33
  %.not.i.i194 = icmp ult i64 %i.mq, %i.cr
  br i1 %.not.i.i194, label %bb.cd, label %.noexc.i223, !prof !127

.noexc.i223:                                      ; preds = %bb.by
  %i.mr = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ms, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i64 55, ptr %i.b, align 8, !tbaa !33
  %i.mt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc224 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195 ; 3 uses

.noexc224:                                        ; preds = %.noexc.i223
  store ptr %i.mt, ptr %6, align 8, !tbaa !16
  %i.mu = load i64, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  store i64 %i.mu, ptr %i.ms, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.mt, ptr noundef nonnull align 1 dereferenceable(55) @.str.2038, i64 55, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !139
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mu
  store i8 0, ptr %i.mw, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %.noexc224
  invoke void @__cxa_throw(ptr nonnull %i.mr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.cc unwind label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195: ; preds = %.noexc.i223
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %.noexc224
  %.0.i.i197 = phi i1 [ false, %bb.bz ], [ true, %.noexc224 ] ; 2 uses
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mz = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.ms
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198: ; preds = %bb.ca
  call void @_ZdlPv(ptr noundef %i.mz) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.0.i.i197, label %bb.cb, label %.body80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.0.i.i197, label %bb.cb, label %.body80

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195
  %.pn8.i.i196 = phi { ptr, i32 } [ %i.mx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195 ], [ %i.my, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199 ], [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198 ]
  call void @__cxa_free_exception(ptr %i.mr) #58
  br label %.body80

bb.cc:                                            ; preds = %bb.bz
  unreachable

bb.cd:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.nb = sdiv i64 %i.mq, 64
  %i.nc = getelementptr inbounds [8 x i8], ptr %.sroa.0237.0, i64 %i.nb
  %i.nd = and i64 %i.mq, -9223372036854775745
  %i.ne = icmp ugt i64 %i.nd, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i200 = select i1 %i.ne, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i201 = getelementptr inbounds i8, ptr %i.nc, i64 %storemerge.idx.i.i.i.i.i.i200
  %i.nf = and i64 %i.mq, 63
  %i.ng = shl nuw i64 1, %i.nf
  %i.nh = load i64, ptr %storemerge.i.i.i.i.i.i201, align 8, !tbaa !33
  %i.ni = and i64 %i.nh, %i.ng
  %.not = icmp eq i64 %i.ni, 0
  br i1 %.not, label %bb.ce, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #58
  %i.nj = load ptr, ptr %i.kl, align 8, !tbaa !2448 ; 3 uses
  %.not.i103 = icmp eq ptr %i.nj, null
  br i1 %.not.i103, label %.noexc.i205, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit112, !prof !81

.noexc.i205:                                      ; preds = %bb.ce
  %i.nk = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  %i.nl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.nl, ptr %12, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  store i64 49, ptr %i.e, align 8, !tbaa !33
  %i.nm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc206 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i104 ; 3 uses

.noexc206:                                        ; preds = %.noexc.i205
  store ptr %i.nm, ptr %12, align 8, !tbaa !16
  %i.nn = load i64, ptr %i.e, align 8, !tbaa !33  ; 3 uses
  store i64 %i.nn, ptr %i.nl, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.nm, ptr noundef nonnull align 1 dereferenceable(49) @.str.2057, i64 49, i1 false)
  %i.no = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.nn, ptr %i.no, align 8, !tbaa !139
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nn
  store i8 0, ptr %i.np, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %.noexc206
  invoke void @__cxa_throw(ptr nonnull %i.nk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.ci unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i104: ; preds = %.noexc.i205
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %.noexc206
  %.0.i.i107 = phi i1 [ false, %bb.cf ], [ true, %.noexc206 ] ; 2 uses
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ns = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.nl
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108: ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef %i.ns) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  br i1 %.0.i.i107, label %bb.ch, label %.body110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  br i1 %.0.i.i107, label %bb.ch, label %.body110

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i104
  %.pn9.i.i105 = phi { ptr, i32 } [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i104 ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109 ], [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108 ]
  call void @__cxa_free_exception(ptr %i.nk) #58
  br label %.body110

bb.ci:                                            ; preds = %bb.cf
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit112: ; preds = %bb.ce
  %i.nu = load ptr, ptr %i.nj, align 8, !tbaa !35
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 136
  %i.nw = load ptr, ptr %i.nv, align 8
  invoke void %i.nw(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1526") align 8 %35, ptr noundef nonnull align 8 dereferenceable(88) %i.nj)
          to label %bb.cj unwind label %bb.cx

bb.cj:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit112
  %.not.i113 = icmp eq ptr %i.kj, %i.ki
  br i1 %.not.i113, label %bb.ck, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.cj
  %i.nx = load i64, ptr %35, align 8, !tbaa !2448
  store i64 %i.nx, ptr %i.kj, align 8, !tbaa !2448
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  store ptr %i.ny, ptr %i.cs, align 8, !tbaa !2407
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ck:                                            ; preds = %bb.cj
  %i.nz = ptrtoint ptr %i.ki to i64               ; 3 uses
  %i.oa = ptrtoint ptr %i.kh to i64               ; 3 uses
  %i.ob = sub i64 %i.nz, %i.oa                    ; 3 uses
  %i.oc = icmp eq i64 %i.ob, 9223372036854775800
  br i1 %i.oc, label %bb.cl, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc115 unwind label %.loopexit.split-lp

.noexc115:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ck
  %i.od = ashr exact i64 %i.ob, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 1)
  %i.oe = add nsw i64 %.sroa.speculated.i.i.i, %i.od ; 2 uses
  %i.of = icmp ult i64 %i.oe, %i.od
  %i.og = call i64 @llvm.umin.i64(i64 %i.oe, i64 1152921504606846975)
  %i.oh = select i1 %i.of, i64 1152921504606846975, i64 %i.og ; 3 uses
  %.not.i.i.i114 = icmp ne i64 %i.oh, 0
  call void @llvm.assume(i1 %.not.i.i.i114)
  %i.oi = shl nuw nsw i64 %i.oh, 3
  %i.oj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oi) #64
          to label %.noexc116 unwind label %.loopexit267 ; 12 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ob
  %i.ol = load i64, ptr %35, align 8, !tbaa !2448
  store i64 %i.ol, ptr %i.ok, align 8, !tbaa !2448
  store ptr null, ptr %35, align 8, !tbaa !2448
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kh, %i.ki
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc116
  %37 = add i64 %i.nz, -8
  %38 = sub i64 %37, %i.oa                        ; 2 uses
  %i.om = lshr i64 %38, 3
  %i.on = add nuw nsw i64 %i.om, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %38, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader562, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.oj, i64 8
  %i.oo = add i64 %i.nz, -8
  %i.op = sub i64 %i.oo, %i.oa
  %i.oq = and i64 %i.op, -8                       ; 2 uses
  %scevgep554 = getelementptr i8, ptr %scevgep, i64 %i.oq
  %scevgep555 = getelementptr i8, ptr %i.kh, i64 8
  %scevgep556 = getelementptr i8, ptr %scevgep555, i64 %i.oq
  %bound0 = icmp ult ptr %i.oj, %scevgep556
  %bound1 = icmp ult ptr %i.kh, %scevgep554
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader562, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.on, 4611686018427387900     ; 3 uses
  %i.or = shl i64 %n.vec, 3                       ; 2 uses
  %i.os = getelementptr i8, ptr %i.oj, i64 %i.or  ; 2 uses
  %i.ot = getelementptr i8, ptr %i.kh, i64 %i.or
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ou = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.oj, i64 %i.ou ; 2 uses
  %next.gep557 = getelementptr i8, ptr %i.kh, i64 %i.ou ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  %i.ov = getelementptr i8, ptr %next.gep557, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep557, align 8, !tbaa !2448, !alias.scope !2455, !noalias !2450
  %wide.load558 = load <2 x i64>, ptr %i.ov, align 8, !tbaa !2448, !alias.scope !2455, !noalias !2450
  %i.ow = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2448, !alias.scope !2458, !noalias !2455
  store <2 x i64> %wide.load558, ptr %i.ow, align 8, !tbaa !2448, !alias.scope !2458, !noalias !2455
  %i.ox = getelementptr i8, ptr %next.gep557, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep557, align 8, !tbaa !2448, !alias.scope !2455, !noalias !2450
  store <2 x ptr> splat (ptr null), ptr %i.ox, align 8, !tbaa !2448, !alias.scope !2455, !noalias !2450
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oy = icmp eq i64 %index.next, %n.vec
  br i1 %i.oy, label %middle.block, label %vector.body, !llvm.loop !2460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.on, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader562

.lr.ph.i.i.i.i.i.i.preheader562:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.oj, %vector.memcheck ], [ %i.oj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.os, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.kh, %vector.memcheck ], [ %i.kh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ot, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader562, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader562 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader562 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  %i.oz = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !2448, !alias.scope !2453, !noalias !2450
  store i64 %i.oz, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !2448, !alias.scope !2450, !noalias !2453
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !2448, !alias.scope !2453, !noalias !2450
  %i.pa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pa, %i.ki
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2461

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc116
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.oj, %.noexc116 ], [ %i.os, %middle.block ], [ %i.pb, %.lr.ph.i.i.i.i.i.i ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kh) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.cm
  store ptr %i.oj, ptr %29, align 8, !tbaa !2408
  store ptr %i.pc, ptr %i.cs, align 8, !tbaa !2407
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.oh ; 3 uses
  store ptr %i.pd, ptr %i.ct, align 8, !tbaa !2462
  %.pr = load ptr, ptr %35, align 8, !tbaa !2448  ; 3 uses
  %.not.i117 = icmp eq ptr %.pr, null
  br i1 %.not.i117, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.pe = load ptr, ptr %.pr, align 8, !tbaa !35
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #58, !inline_history !2463
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  %i.ph = phi ptr [ %i.kh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread ], [ %i.oj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ], [ %i.oj, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i ]
  %i.pi = phi ptr [ %i.ki, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread ], [ %i.pd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ], [ %i.pd, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i ]
  %i.pj = phi ptr [ %i.ny, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread ], [ %i.pc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ], [ %i.pc, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #58
  %i.pk = load i64, ptr %i.o, align 8, !tbaa !33  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.pk, ptr %i.c, align 8, !tbaa !33
  store i64 %i.cr, ptr %i.d, align 8, !tbaa !33
  %.not.i.i208 = icmp ult i64 %i.pk, %i.cr
  br i1 %.not.i.i208, label %bb.cr, label %.noexc.i227, !prof !127

.noexc.i227:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.pl = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.pm, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 55, ptr %i.a, align 8, !tbaa !33
  %i.pn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc228 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i209 ; 3 uses

.noexc228:                                        ; preds = %.noexc.i227
  store ptr %i.pn, ptr %5, align 8, !tbaa !16
  %i.po = load i64, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.pn, ptr noundef nonnull align 1 dereferenceable(55) @.str.2038, i64 55, i1 false)
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.po, ptr %i.pp, align 8, !tbaa !139
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.po
  store i8 0, ptr %i.pq, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %.noexc228
  invoke void @__cxa_throw(ptr nonnull %i.pl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.cq unwind label %bb.co

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i209: ; preds = %.noexc.i227
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn, %.noexc228
  %.0.i.i212 = phi i1 [ false, %bb.cn ], [ true, %.noexc228 ] ; 2 uses
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pt = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.pm
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i213: ; preds = %bb.co
  call void @_ZdlPv(ptr noundef %i.pt) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.0.i.i212, label %bb.cp, label %.body80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i214: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.0.i.i212, label %bb.cp, label %.body80

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i209
  %.pn8.i.i210 = phi { ptr, i32 } [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i209 ], [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i214 ], [ %i.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i213 ]
  call void @__cxa_free_exception(ptr %i.pl) #58
  br label %.body80

bb.cq:                                            ; preds = %bb.cn
  unreachable

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.pv = sdiv i64 %i.pk, 64
  %i.pw = getelementptr inbounds [8 x i8], ptr %.sroa.0237.0, i64 %i.pv
  %i.px = and i64 %i.pk, -9223372036854775745
  %i.py = icmp ugt i64 %i.px, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i215 = select i1 %i.py, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i216 = getelementptr inbounds i8, ptr %i.pw, i64 %storemerge.idx.i.i.i.i.i.i215 ; 2 uses
  %i.pz = and i64 %i.pk, 63
  %i.qa = shl nuw i64 1, %i.pz
  %i.qb = load i64, ptr %storemerge.i.i.i.i.i.i216, align 8, !tbaa !33
  %i.qc = or i64 %i.qb, %i.qa
  store i64 %i.qc, ptr %storemerge.i.i.i.i.i.i216, align 8, !tbaa !33
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

bb.cs:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.body71

bb.ct:                                            ; preds = %bb.bd
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.cu:                                            ; preds = %bb.be
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.cv:                                            ; preds = %bb.bf
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #58
  br label %bb.ds
end_hunk_4
begin_hunk_5_@_ZN6duckdb25HivePartitionedColumnData15AddNewPartitionENS_16HivePartitionKeyEmRNS_32PartitionedColumnDataAppendStateE:bb.a
  %i.au = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.n unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.i = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.ax) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.0.i.i, label %bb.m, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.0.i.i, label %bb.m, label %common.resume

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.au) #58
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit24, %bb.w, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.m ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22 ], [ %.pn9.i.i18, %bb.s ], [ %i.bm, %bb.x ], [ %i.bl, %bb.w ], [ %i.bj, %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit24 ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.k
  unreachable

_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !33
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ba)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2590 ; 2 uses
  %.not.i16 = icmp eq ptr %i.bc, null
  br i1 %.not.i16, label %bb.o, label %_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv.exit, !prof !81

bb.o:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i17

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.t unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i17: ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i.i20 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.bg) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.0.i.i20, label %bb.s, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.0.i.i20, label %bb.s, label %common.resume

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i17
  %.pn9.i.i18 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i17 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ]
  call void @__cxa_free_exception(ptr %i.bd) #58
  br label %common.resume

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  call void @_ZN6duckdb20ColumnDataCollection16InitializeAppendERNS_21ColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(112) %i.at, ptr noundef nonnull align 8 dereferenceable(88) %i.bc)
  ret void

bb.u:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %8, align 8, !tbaa !2590  ; 2 uses
  %.not.i23 = icmp eq ptr %i.bk, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNKSt14default_deleteIN6duckdb21ColumnDataAppendStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %i.bk)
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit24

_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit24: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %common.resume

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %common.resume

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2583 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2586   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2592
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2593
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !2583
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2092) #59
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #64 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2593
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !2590, !alias.scope !2600, !noalias !2595
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !2590, !alias.scope !2600, !noalias !2595
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2590, !alias.scope !2603, !noalias !2600
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !2590, !alias.scope !2603, !noalias !2600
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !2590, !alias.scope !2600, !noalias !2595
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !2590, !alias.scope !2600, !noalias !2595
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2605

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !2590, !alias.scope !2598, !noalias !2595
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !2590, !alias.scope !2595, !noalias !2598
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !2590, !alias.scope !2598, !noalias !2595
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2606

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !2586
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !2583
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !2592
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !2590 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb21ColumnDataAppendStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i, ptr noundef nonnull %i.au)
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2607

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !2583
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !748  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !751    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !750
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2608
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !748
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2092) #59
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #64 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2608
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !376, !alias.scope !2615, !noalias !2610
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !376, !alias.scope !2615, !noalias !2610
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !376, !alias.scope !2618, !noalias !2615
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !376, !alias.scope !2618, !noalias !2615
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !376, !alias.scope !2615, !noalias !2610
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !376, !alias.scope !2615, !noalias !2610
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !376, !alias.scope !2613, !noalias !2610
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !376, !alias.scope !2610, !noalias !2613
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !376, !alias.scope !2613, !noalias !2610
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2621

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !751
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !748
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !750
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !376 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.au) #58
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #60
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !765

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !748
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2622 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2625   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2626
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !726
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !2622
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2092) #59
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #64 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !726
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !185, !alias.scope !2632, !noalias !2627
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !185, !alias.scope !2632, !noalias !2627
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !185, !alias.scope !2635, !noalias !2632
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !185, !alias.scope !2635, !noalias !2632
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !185, !alias.scope !2632, !noalias !2627
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !185, !alias.scope !2632, !noalias !2627
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !2630, !noalias !2627
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !2627, !noalias !2630
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !2630, !noalias !2627
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2638

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !2625
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !2622
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !2626
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.au) #58
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #60
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2639

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !2622
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2583
  %i.e = load ptr, ptr %0, align 8, !tbaa !2586   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !33
  store i64 %i.i, ptr %i.b, align 8, !tbaa !33
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !127

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2038, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZNK6duckdb21PartitionedColumnData21CreatePartitionBufferEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.249") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
end_hunk_5
begin_hunk_6_@_ZN6duckdb26RadixPartitionedColumnDataC2ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEmm:bb.a
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i39 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bj) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.0.i.i39, label %bb.ac, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i41: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.0.i.i39, label %bb.ac, label %.body

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i36
  %.pn9.i.i37 = phi { ptr, i32 } [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i36 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i41 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40 ]
  call void @__cxa_free_exception(ptr %i.bg) #58
  br label %.body

bb.ad:                                            ; preds = %bb.aa
  unreachable

bb.ae:                                            ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  store i64 %.050, ptr %i.bm, align 8, !tbaa !33
  %i.bn = add nuw i64 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.l
  br i1 %exitcond.not, label %bb.m, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_19ColumnDataAllocatorELb1EEESaIS3_EE7reserveEm.exit, !llvm.loop !3020

.body48:                                          ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_19ColumnDataAllocatorELb1EEESaIS3_EE7reserveEm.exit, %_ZNK6duckdb10shared_ptrINS_29PartitionColumnDataAllocatorsELb1EEptEv.exit34
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i41, %bb.ac, %.body48, %bb.p, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.av, %bb.p ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.h ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i31 ], [ %.pn9.i.i27, %bb.v ], [ %i.bo, %.body48 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i41 ], [ %.pn9.i.i37, %bb.ac ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i40 ]
  call void @_ZN6duckdb21PartitionedColumnDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #58
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit24

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit24: ; preds = %bb.o, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i22, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.aq, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i22 ], [ %i.aq, %bb.o ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_19ColumnDataAllocatorELb1EEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3021   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3021 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_10shared_ptrINS_19ColumnDataAllocatorELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2037, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #58
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_10shared_ptrINS_19ColumnDataAllocatorELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26RadixPartitionedColumnDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.205", align 8 ; 9 uses
  tail call void @_ZN6duckdb21PartitionedColumnDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb26RadixPartitionedColumnDataE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  store <2 x i64> %i.c, ptr %i.a, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit
  %.0914 = phi i64 [ 0, %bb.a ], [ %i.aq, %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZNK6duckdb21PartitionedColumnData25CreatePartitionCollectionEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.205") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %.0914)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !2622 ; 6 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !2626
  %.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i, label %bb.e, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.d
  %i.i = load i64, ptr %2, align 8, !tbaa !185
  store i64 %i.i, ptr %i.g, align 8, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !2622
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !2625 ; 10 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #64
          to label %.noexc11 unwind label %.loopexit ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = load i64, ptr %2, align 8, !tbaa !185
  store i64 %i.x, ptr %i.w, align 8, !tbaa !185
  store ptr null, ptr %2, align 8, !tbaa !185
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc11
  %3 = add i64 %i.l, -8
  %4 = sub i64 %3, %i.m                           ; 2 uses
  %i.y = lshr i64 %4, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.v, i64 8
  %i.aa = add i64 %i.l, -8
  %i.ab = sub i64 %i.aa, %i.m
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %scevgep17 = getelementptr i8, ptr %scevgep, i64 %i.ac
  %scevgep18 = getelementptr i8, ptr %i.k, i64 8
  %scevgep19 = getelementptr i8, ptr %scevgep18, i64 %i.ac
  %bound0 = icmp ult ptr %i.v, %scevgep19
  %bound1 = icmp ult ptr %i.k, %scevgep17
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.k, i64 %i.ag ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  %i.ah = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !185, !alias.scope !3027, !noalias !3022
  %wide.load21 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !185, !alias.scope !3027, !noalias !3022
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !185, !alias.scope !3030, !noalias !3027
  store <2 x i64> %wide.load21, ptr %i.ai, align 8, !tbaa !185, !alias.scope !3030, !noalias !3027
  %i.aj = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !185, !alias.scope !3027, !noalias !3022
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !185, !alias.scope !3027, !noalias !3022
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !3032

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.i.preheader23:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !3025, !noalias !3022
  store i64 %i.al, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !3022, !noalias !3025
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !3025, !noalias !3022
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3033

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc11 ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.g
  store ptr %i.v, ptr %i.d, align 8, !tbaa !2625
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !2622
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !2626
  %.pr = load ptr, ptr %2, align 8, !tbaa !185    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.pr) #58
  call void @_ZdlPv(ptr noundef nonnull %.pr) #60
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.aq = add nuw i64 %.0914, 1                   ; 2 uses
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !2995
  %.09.highbits = lshr i64 %i.aq, %i.ar
  %i.as = icmp eq i64 %.09.highbits, 0
  br i1 %i.as, label %bb.c, label %bb.b, !llvm.loop !3034

bb.h:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #58
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @_ZN6duckdb21PartitionedColumnDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #58
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb21PartitionedColumnDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb26RadixPartitionedColumnDataD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6duckdb21PartitionedColumnDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb26RadixPartitionedColumnDataD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6duckdb26RadixPartitionedColumnDataD1Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #58
  tail call void @_ZdlPv(ptr noundef nonnull %0) #60
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb26RadixPartitionedColumnData29InitializeAppendStateInternalERNS_32PartitionedColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.duckdb::unique_ptr.1619", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.249", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2995 ; 4 uses
  %i.c = shl nuw i64 1, %i.b                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.e = icmp ugt i64 %i.b, 59
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2128) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2592
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !2586 ; 10 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ult i64 %i.l, %i.c
  br i1 %i.m, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %bb.e

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2583 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = sub i64 %i.p, %i.j
  %i.r = shl nuw nsw i64 8, %i.b
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #64 ; 9 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.o
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.t = add i64 %i.p, -8
  %i.u = sub i64 %i.t, %i.j                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.x = add i64 %i.p, -8
  %i.y = sub i64 %i.x, %i.j
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.aa
  %scevgep102 = getelementptr i8, ptr %i.h, i64 %i.aa
  %bound0 = icmp ult ptr %i.s, %scevgep102
end_hunk_6
begin_hunk_7_@_ZNK6duckdb26RadixPartitionedColumnData29InitializeAppendStateInternalERNS_32PartitionedColumnDataAppendStateE:bb.a

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #60
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.s, ptr %i.d, align 8, !tbaa !2586
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.am, ptr %i.n, align 8, !tbaa !2583
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.c
  store ptr %i.an, ptr %i.f, align 8, !tbaa !2592
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !750
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !751 ; 10 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 4 uses
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = icmp ult i64 %i.av, %i.c
  br i1 %i.aw, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !748 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.az, %i.at
  %i.bb = shl nuw nsw i64 8, %i.b
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #64 ; 9 uses
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.ar, %i.ay
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.bd = add i64 %i.az, -8
  %i.be = sub i64 %i.bd, %i.at                    ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.be, 152
  br i1 %min.iters.check113, label %.lr.ph.i.i.i.i.i19.preheader186, label %vector.memcheck106

vector.memcheck106:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.bh = add i64 %i.az, -8
  %i.bi = sub i64 %i.bh, %i.at
  %i.bj = and i64 %i.bi, -8
  %i.bk = add i64 %i.bj, 8                        ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.bc, i64 %i.bk
  %scevgep108 = getelementptr i8, ptr %i.ar, i64 %i.bk
  %bound0109 = icmp ult ptr %i.bc, %scevgep108
  %bound1110 = icmp ult ptr %i.ar, %scevgep107
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph.i.i.i.i.i19.preheader186, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck106
  %n.vec116 = and i64 %i.bg, 4611686018427387900  ; 3 uses
  %i.bl = shl i64 %n.vec116, 3                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bc, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.ar, i64 %i.bl
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %i.bo = shl i64 %index118, 3                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.bc, i64 %i.bo ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.ar, i64 %i.bo ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %i.bp = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load121 = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !376, !alias.scope !3052, !noalias !3047
  %wide.load122 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !376, !alias.scope !3052, !noalias !3047
  %i.bq = getelementptr i8, ptr %next.gep119, i64 16
  store <2 x i64> %wide.load121, ptr %next.gep119, align 8, !tbaa !376, !alias.scope !3055, !noalias !3052
  store <2 x i64> %wide.load122, ptr %i.bq, align 8, !tbaa !376, !alias.scope !3055, !noalias !3052
  %i.br = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep120, align 8, !tbaa !376, !alias.scope !3052, !noalias !3047
  store <2 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !376, !alias.scope !3052, !noalias !3047
  %index.next123 = add nuw i64 %index118, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.bs, label %middle.block124, label %vector.body117, !llvm.loop !3057

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.bg, %n.vec116
  br i1 %cmp.n125, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i19.preheader186

.lr.ph.i.i.i.i.i19.preheader186:                  ; preds = %vector.memcheck106, %.lr.ph.i.i.i.i.i19.preheader, %middle.block124
  %.012.i.i.i.i.i20.ph = phi ptr [ %i.bc, %vector.memcheck106 ], [ %i.bc, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bm, %middle.block124 ]
  %.0911.i.i.i.i.i21.ph = phi ptr [ %i.ar, %vector.memcheck106 ], [ %i.ar, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bn, %middle.block124 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader186, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i19 ], [ %.012.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader186 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i19 ], [ %.0911.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader186 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i21, align 8, !tbaa !376, !alias.scope !3050, !noalias !3047
  store i64 %i.bt, ptr %.012.i.i.i.i.i20, align 8, !tbaa !376, !alias.scope !3047, !noalias !3050
  store ptr null, ptr %.0911.i.i.i.i.i21, align 8, !tbaa !376, !alias.scope !3050, !noalias !3047
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 8
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bu, %i.ay
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i19, !llvm.loop !3058

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19, %middle.block124, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i23 = icmp eq ptr %i.ar, null
  br i1 %.not.i8.i23, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ar) #60
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.bc, ptr %i.ao, align 8, !tbaa !751
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store ptr %i.bw, ptr %i.ax, align 8, !tbaa !748
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.c
  store ptr %i.bx, ptr %i.ap, align 8, !tbaa !750
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !2995
  %i.cd = shl nuw i64 1, %i.cc
  call void @_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, i64 noundef %i.cd)
  ret void

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %.01658 = phi i64 [ 0, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.fu, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  %i.ce = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #64, !noalias !3059 ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false), !noalias !3059
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !342, !noalias !3059
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 1, ptr %i.ch, align 8, !tbaa !344, !noalias !3059
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !noalias !3059
  store float 1.000000e+00, ptr %i.cf, align 8, !tbaa !108, !noalias !3059
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cj, i8 0, i64 17, i1 false), !noalias !3059
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false), !noalias !3059
  store ptr %i.ce, ptr %6, align 8, !tbaa !2590, !alias.scope !3059
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !2583 ; 6 uses
  %i.cm = load ptr, ptr %i.f, align 8, !tbaa !2592
  %.not.i = icmp eq ptr %i.cl, %i.cm
  %i.cn = ptrtoint ptr %i.ce to i64               ; 2 uses
  br i1 %.not.i, label %bb.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.h
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !2590
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.co, ptr %i.by, align 8, !tbaa !2583
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !2586 ; 10 uses
  %i.cq = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.j, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #64
          to label %.noexc24 unwind label %.thread ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  store i64 %i.cn, ptr %i.db, align 8, !tbaa !2590
  store ptr null, ptr %6, align 8, !tbaa !2590
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.cl
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc24
  %8 = add i64 %i.cq, -8
  %9 = sub i64 %8, %i.cr                          ; 2 uses
  %i.dc = lshr i64 %9, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %9, 56
  br i1 %min.iters.check161, label %.lr.ph.i.i.i.i.i.i.preheader177, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep153 = getelementptr i8, ptr %i.da, i64 8
  %i.de = add i64 %i.cq, -8
  %i.df = sub i64 %i.de, %i.cr
  %i.dg = and i64 %i.df, -8                       ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.dg
  %scevgep155 = getelementptr i8, ptr %i.cp, i64 8
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.dg
  %bound0157 = icmp ult ptr %i.da, %scevgep156
  %bound1158 = icmp ult ptr %i.cp, %scevgep154
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.i.i.i.i.preheader177, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck152
  %n.vec164 = and i64 %i.dd, 4611686018427387900  ; 3 uses
  %i.dh = shl i64 %n.vec164, 3                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cp, i64 %i.dh
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.dk = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.da, i64 %i.dk ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cp, i64 %i.dk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %i.dl = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8, !tbaa !2590, !alias.scope !3067, !noalias !3062
  %wide.load170 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !2590, !alias.scope !3067, !noalias !3062
  %i.dm = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8, !tbaa !2590, !alias.scope !3070, !noalias !3067
  store <2 x i64> %wide.load170, ptr %i.dm, align 8, !tbaa !2590, !alias.scope !3070, !noalias !3067
  %i.dn = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep168, align 8, !tbaa !2590, !alias.scope !3067, !noalias !3062
  store <2 x ptr> splat (ptr null), ptr %i.dn, align 8, !tbaa !2590, !alias.scope !3067, !noalias !3062
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.do, label %middle.block172, label %vector.body165, !llvm.loop !3072

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.dd, %n.vec164
  br i1 %cmp.n173, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader177

.lr.ph.i.i.i.i.i.i.preheader177:                  ; preds = %vector.memcheck152, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block172
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck152 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.di, %middle.block172 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck152 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dj, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader177, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader177 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader177 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %i.dp = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !2590, !alias.scope !3065, !noalias !3062
  store i64 %i.dp, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !2590, !alias.scope !3062, !noalias !3065
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !2590, !alias.scope !3065, !noalias !3062
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dq, %i.cl
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3073

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block172, %.noexc24
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.da, %.noexc24 ], [ %i.di, %middle.block172 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.k
  store ptr %i.da, ptr %i.d, align 8, !tbaa !2586
  store ptr %i.ds, ptr %i.by, align 8, !tbaa !2583
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.dt, ptr %i.f, align 8, !tbaa !2592
  %.pr = load ptr, ptr %6, align 8, !tbaa !2590   ; 2 uses
  %.not.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZNKSt14default_deleteIN6duckdb21ColumnDataAppendStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.pr)
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 noundef %.01658)
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !185 ; 2 uses
  %.not.i26 = icmp eq ptr %i.dv, null
  br i1 %.not.i26, label %bb.m, label %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !81

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit
  %i.dw = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.r unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.m
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dz = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.dz) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.0.i.i, label %bb.q, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.0.i.i, label %bb.q, label %common.resume

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dw) #58
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit48, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32 ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.q ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33 ], [ %.pn9.i.i29, %bb.w ], [ %lpad.phi56, %bb.ad ], [ %lpad.phi85, %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit48 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.o
  unreachable

_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.01658)
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2590 ; 2 uses
  %.not.i27 = icmp eq ptr %i.ed, null
  br i1 %.not.i27, label %bb.s, label %_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv.exit, !prof !81

bb.s:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ee = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i28

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ee, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.x unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i28: ; preds = %bb.s
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i.i31 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eh = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.eh) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i31, label %bb.w, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i31, label %bb.w, label %common.resume

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i28
  %.pn9.i.i29 = phi { ptr, i32 } [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i28 ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i33 ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i32 ]
  call void @__cxa_free_exception(ptr %i.ee) #58
  br label %common.resume

bb.x:                                             ; preds = %bb.u
  unreachable

_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  call void @_ZN6duckdb20ColumnDataCollection16InitializeAppendERNS_21ColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(112) %i.dv, ptr noundef nonnull align 8 dereferenceable(88) %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @_ZNK6duckdb21PartitionedColumnData21CreatePartitionBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.249") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.ek = load ptr, ptr %i.ca, align 8, !tbaa !748 ; 6 uses
  %i.el = load ptr, ptr %i.ap, align 8, !tbaa !750
  %.not.i34 = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i34, label %bb.y, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.em = load i64, ptr %7, align 8, !tbaa !376
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !376
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.en, ptr %i.ca, align 8, !tbaa !748
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

bb.y:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_21ColumnDataAppendStateESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.eo = load ptr, ptr %i.ao, align 8, !tbaa !751 ; 10 uses
  %i.ep = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.eq = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775800
  br i1 %i.es, label %bb.z, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc44 unwind label %.loopexit.split-lp53

.noexc44:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.et = ashr exact i64 %i.er, 3                 ; 3 uses
  %.sroa.speculated.i.i.i35 = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i35, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 1152921504606846975)
  %i.ex = select i1 %i.ev, i64 1152921504606846975, i64 %i.ew ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i36)
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #64
          to label %.noexc45 unwind label %.loopexit52 ; 10 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  %i.fb = load i64, ptr %7, align 8, !tbaa !376
  store i64 %i.fb, ptr %i.fa, align 8, !tbaa !376
  store ptr null, ptr %7, align 8, !tbaa !376
  %.not10.i.i.i.i.i.i37 = icmp eq ptr %i.eo, %i.ek
  br i1 %.not10.i.i.i.i.i.i37, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i38.preheader

.lr.ph.i.i.i.i.i.i38.preheader:                   ; preds = %.noexc45
  %10 = add i64 %i.ep, -8
  %11 = sub i64 %10, %i.eq                        ; 2 uses
  %i.fc = lshr i64 %11, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check137 = icmp ult i64 %11, 56
  br i1 %min.iters.check137, label %.lr.ph.i.i.i.i.i.i38.preheader176, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph.i.i.i.i.i.i38.preheader
  %scevgep129 = getelementptr i8, ptr %i.ez, i64 8
  %i.fe = add i64 %i.ep, -8
  %i.ff = sub i64 %i.fe, %i.eq
  %i.fg = and i64 %i.ff, -8                       ; 2 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.fg
  %scevgep131 = getelementptr i8, ptr %i.eo, i64 8
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.fg
  %bound0133 = icmp ult ptr %i.ez, %scevgep132
  %bound1134 = icmp ult ptr %i.eo, %scevgep130
  %found.conflict135 = and i1 %bound0133, %bound1134
  br i1 %found.conflict135, label %.lr.ph.i.i.i.i.i.i38.preheader176, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck128
  %n.vec140 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.fh = shl i64 %n.vec140, 3                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ez, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %i.eo, i64 %i.fh
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.fk = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.ez, i64 %i.fk ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.eo, i64 %i.fk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  %i.fl = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load145 = load <2 x i64>, ptr %next.gep144, align 8, !tbaa !376, !alias.scope !3079, !noalias !3074
  %wide.load146 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !376, !alias.scope !3079, !noalias !3074
  %i.fm = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load145, ptr %next.gep143, align 8, !tbaa !376, !alias.scope !3082, !noalias !3079
  store <2 x i64> %wide.load146, ptr %i.fm, align 8, !tbaa !376, !alias.scope !3082, !noalias !3079
  %i.fn = getelementptr i8, ptr %next.gep144, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep144, align 8, !tbaa !376, !alias.scope !3079, !noalias !3074
  store <2 x ptr> splat (ptr null), ptr %i.fn, align 8, !tbaa !376, !alias.scope !3079, !noalias !3074
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.fo, label %middle.block148, label %vector.body141, !llvm.loop !3084

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.fd, %n.vec140
  br i1 %cmp.n149, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i38.preheader176

.lr.ph.i.i.i.i.i.i38.preheader176:                ; preds = %vector.memcheck128, %.lr.ph.i.i.i.i.i.i38.preheader, %middle.block148
  %.012.i.i.i.i.i.i39.ph = phi ptr [ %i.ez, %vector.memcheck128 ], [ %i.ez, %.lr.ph.i.i.i.i.i.i38.preheader ], [ %i.fi, %middle.block148 ]
  %.0911.i.i.i.i.i.i40.ph = phi ptr [ %i.eo, %vector.memcheck128 ], [ %i.eo, %.lr.ph.i.i.i.i.i.i38.preheader ], [ %i.fj, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.preheader176, %.lr.ph.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i39 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i38 ], [ %.012.i.i.i.i.i.i39.ph, %.lr.ph.i.i.i.i.i.i38.preheader176 ] ; 2 uses
  %.0911.i.i.i.i.i.i40 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i38 ], [ %.0911.i.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i.i38.preheader176 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  %i.fp = load i64, ptr %.0911.i.i.i.i.i.i40, align 8, !tbaa !376, !alias.scope !3077, !noalias !3074
  store i64 %i.fp, ptr %.012.i.i.i.i.i.i39, align 8, !tbaa !376, !alias.scope !3074, !noalias !3077
  store ptr null, ptr %.0911.i.i.i.i.i.i40, align 8, !tbaa !376, !alias.scope !3077, !noalias !3074
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i40, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i39, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i41 = icmp eq ptr %i.fq, %i.ek
  br i1 %.not.i.i.i.i.i.i41, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i38, !llvm.loop !3085

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i38, %middle.block148, %.noexc45
  %.0.lcssa.i.i.i.i.i.i42 = phi ptr [ %i.ez, %.noexc45 ], [ %i.fi, %middle.block148 ], [ %i.fr, %.lr.ph.i.i.i.i.i.i38 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i42, i64 8
  %.not.i23.i.i43 = icmp eq ptr %i.eo, null
  br i1 %.not.i23.i.i43, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.eo) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.aa
  store ptr %i.ez, ptr %i.ao, align 8, !tbaa !751
  store ptr %i.fs, ptr %i.ca, align 8, !tbaa !748
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ex
  store ptr %i.ft, ptr %i.ap, align 8, !tbaa !750
  %.pr50 = load ptr, ptr %7, align 8, !tbaa !376  ; 3 uses
  %.not.i46 = icmp eq ptr %.pr50, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.pr50) #58
  call void @_ZdlPv(ptr noundef nonnull %.pr50) #60
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  %i.fu = add nuw i64 %.01658, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fu, %i.c
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !3086

.thread:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !2590  ; 2 uses
  %.not.i47 = icmp eq ptr %.pre, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit48, label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab
  %lpad.phi84 = phi { ptr, i32 } [ %lpad.loopexit, %.thread ], [ %lpad.loopexit.split-lp, %bb.ab ]
  %i.fv = phi ptr [ %i.ce, %.thread ], [ %.pre, %bb.ab ]
  call void @_ZNKSt14default_deleteIN6duckdb21ColumnDataAppendStateEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.fv)
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit48

_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit48: ; preds = %bb.ab, %bb.ac
  %lpad.phi85 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.ab ], [ %lpad.phi84, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %common.resume

.loopexit52:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp53:                             ; preds = %bb.z
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp53, %.loopexit52
  %lpad.phi56 = phi { ptr, i32 } [ %lpad.loopexit54, %.loopexit52 ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp53 ]
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2622
  %i.e = load ptr, ptr %0, align 8, !tbaa !2625   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !33
  store i64 %i.i, ptr %i.b, align 8, !tbaa !33
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit, label %bb.b, !prof !127

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2038, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

end_hunk_7
begin_hunk_8_@_ZN6duckdb15RadixBitsSwitchINS_30ComputePartitionIndicesFunctorEvJRNS_6VectorES3_mRKNS_15SelectionVectorEmEEET0_mDpOT1_:bb.a
bb.h:                                             ; preds = %bb.a
  %i.m = load i64, ptr %3, align 8, !tbaa !33
  %i.n = load i64, ptr %5, align 8, !tbaa !33
  tail call void @_ZN6duckdb30ComputePartitionIndicesFunctor9OperationILm6EEEvRNS_6VectorES3_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.n)
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.o = load i64, ptr %3, align 8, !tbaa !33
  %i.p = load i64, ptr %5, align 8, !tbaa !33
  tail call void @_ZN6duckdb30ComputePartitionIndicesFunctor9OperationILm7EEEvRNS_6VectorES3_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.p)
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.q = load i64, ptr %3, align 8, !tbaa !33
  %i.r = load i64, ptr %5, align 8, !tbaa !33
  tail call void @_ZN6duckdb30ComputePartitionIndicesFunctor9OperationILm8EEEvRNS_6VectorES3_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.r)
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.s = load i64, ptr %3, align 8, !tbaa !33
  %i.t = load i64, ptr %5, align 8, !tbaa !33
  tail call void @_ZN6duckdb30ComputePartitionIndicesFunctor9OperationILm9EEEvRNS_6VectorES3_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.t)
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  %i.u = load i64, ptr %3, align 8, !tbaa !33
  %i.v = load i64, ptr %5, align 8, !tbaa !33
  tail call void @_ZN6duckdb30ComputePartitionIndicesFunctor9OperationILm10EEEvRNS_6VectorES3_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.v)
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.w = load i64, ptr %3, align 8, !tbaa !33
  %i.x = load i64, ptr %5, align 8, !tbaa !33
  tail call void @_ZN6duckdb30ComputePartitionIndicesFunctor9OperationILm11EEEvRNS_6VectorES3_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.x)
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.y = load i64, ptr %3, align 8, !tbaa !33
  %i.z = load i64, ptr %5, align 8, !tbaa !33
  tail call void @_ZN6duckdb30ComputePartitionIndicesFunctor9OperationILm12EEEvRNS_6VectorES3_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.z)
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2130, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.v unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.ad) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.0, label %bb.s, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.0, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn74 = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aa) #58
  br label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.pn73 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn74, %bb.s ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn73

bb.v:                                             ; preds = %bb.q
  unreachable
}

declare noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25RadixPartitionedTupleDataC2ERNS_13BufferManagerENS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagEmm(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb20PartitionedTupleDataC2ENS_24PartitionedTupleDataTypeERNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagE(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext %3)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6duckdb25RadixPartitionedTupleDataE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %4, ptr %i.a, align 8, !tbaa !3112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %5, ptr %i.b, align 8, !tbaa !3132
  invoke void @_ZN6duckdb25RadixPartitionedTupleData10InitializeEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb20PartitionedTupleDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #58
  resume { ptr, i32 } %i.c
}

declare void @_ZN6duckdb20PartitionedTupleDataC2ENS_24PartitionedTupleDataTypeERNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagE(ptr noundef nonnull align 8 dereferenceable(152), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25RadixPartitionedTupleData10InitializeEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.duckdb::unique_ptr.1740", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit
  %.010 = phi i64 [ 0, %bb.a ], [ %i.bi, %_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !3133, !noalias !3134, !nonnull !123, !align !232
  call void @_ZN6duckdb9make_uniqINS_19TupleDataCollectionEJRNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEERKNS_9MemoryTagERNS4_INS_14ArenaAllocatorELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1740") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !3137 ; 6 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !3138
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.c
  %i.m = load i64, ptr %3, align 8, !tbaa !3139
  store i64 %i.m, ptr %i.k, align 8, !tbaa !3139
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !3137
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !3141 ; 10 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #64
          to label %.noexc6 unwind label %.loopexit ; 10 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = load i64, ptr %3, align 8, !tbaa !3139
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !3139
  store ptr null, ptr %3, align 8, !tbaa !3139
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc6
  %4 = add i64 %i.p, -8
  %5 = sub i64 %4, %i.q                           ; 2 uses
  %i.ac = lshr i64 %5, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.z, i64 8
  %i.ae = add i64 %i.p, -8
  %i.af = sub i64 %i.ae, %i.q
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %scevgep15 = getelementptr i8, ptr %scevgep, i64 %i.ag
  %scevgep16 = getelementptr i8, ptr %i.o, i64 8
  %scevgep17 = getelementptr i8, ptr %scevgep16, i64 %i.ag
  %bound0 = icmp ult ptr %i.z, %scevgep17
  %bound1 = icmp ult ptr %i.o, %scevgep15
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ak ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.o, i64 %i.ak ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %i.al = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !3139, !alias.scope !3147, !noalias !3142
  %wide.load19 = load <2 x i64>, ptr %i.al, align 8, !tbaa !3139, !alias.scope !3147, !noalias !3142
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3139, !alias.scope !3150, !noalias !3147
  store <2 x i64> %wide.load19, ptr %i.am, align 8, !tbaa !3139, !alias.scope !3150, !noalias !3147
  %i.an = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !3139, !alias.scope !3147, !noalias !3142
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !3139, !alias.scope !3147, !noalias !3142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !3152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.i.preheader21:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader21 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !3139, !alias.scope !3145, !noalias !3142
  store i64 %i.ap, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !3139, !alias.scope !3142, !noalias !3145
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !3139, !alias.scope !3145, !noalias !3142
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3153

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc6
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc6 ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.f
  store ptr %i.z, ptr %i.c, align 8, !tbaa !3141
  store ptr %i.as, ptr %i.h, align 8, !tbaa !3137
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.at, ptr %i.i, align 8, !tbaa !3138
  %.pr = load ptr, ptr %3, align 8, !tbaa !3139   ; 3 uses
  %.not.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.pr) #58
  call void @_ZdlPv(ptr noundef nonnull %.pr) #60
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !3137
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i
  %i.au = phi ptr [ %i.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread ], [ %i.as, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ], [ %.pre, %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !3141 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !3139 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i8, label %bb.g, label %_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !81

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.l unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bf = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.bf) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0.i.i, label %bb.k, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0.i.i, label %bb.k, label %common.resume

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bc) #58
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.k, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.m ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.k ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.i
  unreachable

_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb19TupleDataCollection17SetPartitionIndexEm(ptr noundef nonnull align 8 dereferenceable(192) %i.bb, i64 noundef %.010)
  %i.bi = add nuw i64 %.010, 1                    ; 2 uses
  %.0.highbits = lshr i64 %i.bi, %i.b
  %i.bj = icmp eq i64 %.0.highbits, 0
  br i1 %i.bj, label %bb.c, label %bb.b, !llvm.loop !3154

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19TupleDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN6duckdb20PartitionedTupleDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25RadixPartitionedTupleDataC2ERS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb20PartitionedTupleDataC2ERS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6duckdb25RadixPartitionedTupleDataE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  store <2 x i64> %i.c, ptr %i.a, align 8, !tbaa !33
  invoke void @_ZN6duckdb25RadixPartitionedTupleData10InitializeEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void
end_hunk_8
begin_hunk_9_@_ZN6duckdb22SerializationExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_:bb.a
_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !56, !noalias !3469
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #60
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !3469
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !3469
  invoke void @_ZN6duckdb9ExceptionC2ENS_13ExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 9, ptr noundef nonnull readonly align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f, !inline_history !1856

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb22SerializationExceptionE, i64 16), ptr %0, align 8, !tbaa !35
  %i.k = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL9ParseJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson10yyjson_docEPNS8_10yyjson_valEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::unique_ptr.473", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr.473", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.duckdb::unique_ptr.473", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  %i.d = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #64, !noalias !3472 ; 16 uses
  invoke void @_ZN6duckdb11ComplexJSONC1Ev(ptr noundef nonnull align 8 dereferenceable(113) %i.d)
          to label %_ZN6duckdb9make_uniqINS_11ComplexJSONEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !3472

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn83.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #60, !noalias !3472
  br label %common.resume

_ZN6duckdb9make_uniqINS_11ComplexJSONEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !1124, !alias.scope !3472
  %.not.i = icmp eq ptr %3, null
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  br i1 %.not.i, label %_ZN13duckdb_yyjsonL14yyjson_get_tagEPNS_10yyjson_valE.exit.thread, label %_ZN13duckdb_yyjsonL14yyjson_get_tagEPNS_10yyjson_valE.exit

_ZN13duckdb_yyjsonL14yyjson_get_tagEPNS_10yyjson_valE.exit: ; preds = %_ZN6duckdb9make_uniqINS_11ComplexJSONEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.g = load i64, ptr %3, align 8, !tbaa !1158
  %.fr237 = freeze i64 %i.g                       ; 11 uses
  %i.h = trunc i64 %.fr237 to i8
  switch i8 %i.h, label %_ZN13duckdb_yyjsonL14yyjson_get_tagEPNS_10yyjson_valE.exit.thread [
    i8 6, label %.noexc87
    i8 7, label %.noexc90
    i8 13, label %.noexc91
    i8 5, label %.noexc91
    i8 11, label %.noexc97
    i8 3, label %.noexc97
    i8 4, label %bb.an
    i8 12, label %bb.bb
    i8 20, label %bb.bp
    i8 1, label %bb.bp
    i8 2, label %bb.bu
  ]

bb.c:                                             ; preds = %.noexc, %bb.bv, %bb.bu
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc87:                                         ; preds = %_ZN13duckdb_yyjsonL14yyjson_get_tagEPNS_10yyjson_valE.exit
  %i.j = and i64 %.fr237, 7
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %_ZN13duckdb_yyjsonL20yyjson_arr_get_firstEPNS_10yyjson_valE.exit, label %._crit_edge265

_ZN13duckdb_yyjsonL20yyjson_arr_get_firstEPNS_10yyjson_valE.exit: ; preds = %.noexc87
  %i.l = lshr i64 %.fr237, 8                      ; 2 uses
  %.not267 = icmp eq i64 %i.l, 0
  br i1 %.not267, label %._crit_edge265, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN13duckdb_yyjsonL20yyjson_arr_get_firstEPNS_10yyjson_valE.exit
  %.not.i88 = icmp ult i64 %.fr237, 256
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select = select i1 %.not.i88, ptr null, ptr %i.m, !prof !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  br label %_ZNK6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEptEv.exit

_ZNK6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.j, %.lr.ph.preheader
  %.057264 = phi i64 [ %i.bt, %bb.j ], [ 0, %.lr.ph.preheader ]
  %.058263 = phi ptr [ %i.bs, %bb.j ], [ %spec.select, %.lr.ph.preheader ] ; 4 uses
  invoke fastcc void @_ZN6duckdbL9ParseJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN13duckdb_yyjson10yyjson_docEPNS8_10yyjson_valEb(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %.058263)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEptEv.exit
  store i8 2, ptr %i.n, align 8, !tbaa !1114
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !1126 ; 6 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !1127
  %.not.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit.thread

_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit.thread: ; preds = %bb.d
  %i.t = load i64, ptr %5, align 8, !tbaa !1124
  store i64 %i.t, ptr %i.r, align 8, !tbaa !1124
  store ptr null, ptr %5, align 8, !tbaa !1124
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !1126
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !1128 ; 10 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc107 unwind label %.loopexit.split-lp

.noexc107:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #64
          to label %.noexc108 unwind label %.loopexit ; 10 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  %i.ai = load i64, ptr %5, align 8, !tbaa !1124
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !1124
  store ptr null, ptr %5, align 8, !tbaa !1124
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc108
  %14 = add i64 %i.w, -8
  %15 = sub i64 %14, %i.x                         ; 2 uses
  %i.aj = lshr i64 %15, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ag, i64 8
  %i.al = add i64 %i.w, -8
  %i.am = sub i64 %i.al, %i.x
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %scevgep11 = getelementptr i8, ptr %scevgep, i64 %i.an
  %scevgep12 = getelementptr i8, ptr %i.v, i64 8
  %scevgep13 = getelementptr i8, ptr %scevgep12, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %scevgep13
  %bound1 = icmp ult ptr %i.v, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.v, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  %i.as = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !1124, !alias.scope !3480, !noalias !3475
  %wide.load15 = load <2 x i64>, ptr %i.as, align 8, !tbaa !1124, !alias.scope !3480, !noalias !3475
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1124, !alias.scope !3483, !noalias !3480
  store <2 x i64> %wide.load15, ptr %i.at, align 8, !tbaa !1124, !alias.scope !3483, !noalias !3480
  %i.au = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !1124, !alias.scope !3480, !noalias !3475
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !1124, !alias.scope !3480, !noalias !3475
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !3485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader17

.lr.ph.i.i.i.i.i.i.i.i.preheader17:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader17, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader17 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1124, !alias.scope !3478, !noalias !3475
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !1124, !alias.scope !3475, !noalias !3478
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !1124, !alias.scope !3478, !noalias !3475
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3486

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc108
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc108 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i.i, label %_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #60
  br label %_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit

_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, %bb.g
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !1128
  store ptr %i.az, ptr %i.p, align 8, !tbaa !1126
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.q, align 8, !tbaa !1127
  %.pr = load ptr, ptr %5, align 8, !tbaa !1124   ; 7 uses
  %.not.i109 = icmp eq ptr %.pr, null
  br i1 %.not.i109, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr, i64 88 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1128 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1126 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i2.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEEEvPT_.exit.i
  %.0.i3.i = phi ptr [ %i.bg, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEEEvPT_.exit.i ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bf = load ptr, ptr %.0.i3.i, align 8, !tbaa !1124 ; 3 uses
  %.not.i.i.i208 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i208, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEEEvPT_.exit.i, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i.i: ; preds = %.lr.ph.i
  call void @_ZN6duckdb11ComplexJSOND2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %i.bf) #69, !inline_history !2905
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #60, !inline_history !2905
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEEEvPT_.exit.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEEEvPT_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i.i.i, %.lr.ph.i
  store ptr null, ptr %.0.i3.i, align 8, !tbaa !1124
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.ithread-pre-split, label %.lr.ph.i, !llvm.loop !2906

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.ithread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEEEvPT_.exit.i
  %.pr227 = load ptr, ptr %i.bb, align 8, !tbaa !1128
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.ithread-pre-split, %bb.h
  %i.bh = phi ptr [ %.pr227, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.ithread-pre-split ], [ %i.bc, %bb.h ] ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i110, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #60, !inline_history !2907
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_11ComplexJSONESt14default_deleteISA_ELb1EEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.bi) #70, !inline_history !2908
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !16  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bj) #60, !inline_history !2909
  br label %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111
  call void @_ZdlPv(ptr noundef nonnull %.pr) #60, !inline_history !2910
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb11ComplexJSONEEclEPS1_.exit.i, %_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit, %_ZN6duckdb11ComplexJSON15AddArrayElementENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE.exit.thread
  %i.bm = load i64, ptr %.058263, align 8, !tbaa !1158
  %i.bn = and i64 %i.bm, 6
  %i.bo = icmp eq i64 %i.bn, 6
  %i.bp = getelementptr inbounds nuw i8, ptr %.058263, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !79
  %i.br = select i1 %i.bo, i64 %i.bq, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.058263, i64 %i.br
  %i.bt = add nuw nsw i64 %.057264, 1             ; 2 uses
  %exitcond278.not = icmp eq i64 %i.bt, %i.l
  br i1 %exitcond278.not, label %._crit_edge265, label %_ZNK6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEptEv.exit, !llvm.loop !3487

bb.k:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_11ComplexJSONESt14default_deleteIS1_ELb1EEptEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11ComplexJSONESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #58
  br label %.body

._crit_edge265:                                   ; preds = %bb.j, %.noexc87, %_ZN13duckdb_yyjsonL20yyjson_arr_get_firstEPNS_10yyjson_valE.exit
  store i64 %i.f, ptr %0, align 8, !tbaa !1124
  br label %_ZNSt10unique_ptrIN6duckdb11ComplexJSONESt14default_deleteIS1_EED2Ev.exit207

.noexc90:                                         ; preds = %_ZN13duckdb_yyjsonL14yyjson_get_tagEPNS_10yyjson_valE.exit
  %i.bv = and i64 %.fr237, 7
  %i.bw = icmp eq i64 %i.bv, 7
  br i1 %i.bw, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %.noexc90
  %i.bx = lshr i64 %.fr237, 8                     ; 2 uses
  %.not266 = icmp eq i64 %i.bx, 0
  br i1 %.not266, label %._crit_edge, label %.noexc92.lr.ph

.noexc92.lr.ph:                                   ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.059259 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %.noexc92

.noexc92:                                         ; preds = %.noexc92.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.059262 = phi ptr [ %.059259, %.noexc92.lr.ph ], [ %.059, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %.060261 = phi ptr [ %i.by, %.noexc92.lr.ph ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %.061260 = phi i64 [ 0, %.noexc92.lr.ph ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.cd = load i64, ptr %.060261, align 8, !tbaa !1158 ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdb17VirtualFileSystem17RegisterSubSystemENS_10unique_ptrINS_10FileSystemESt14default_deleteIS2_ELb1EEE:bb.a
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.n ], [ %i.ae, %bb.o ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.p, label %_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit, !prof !81

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #58
  br label %_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.ag = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #58 ; 0 uses
  ret void

bb.q:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_18FileSystemRegistryELb1EEptEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !1163  ; 3 uses
  %.not.i5 = icmp eq ptr %i.ai, null
  br i1 %.not.i5, label %.body, label %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i6

_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i6: ; preds = %bb.q
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #58, !inline_history !4057
  br label %.body

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EED2Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #58
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i6, %bb.q, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.am, %bb.r ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i6 ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.g ], [ %i.ah, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.an = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #58 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_18FileSystemRegistryELb1EE12atomic_storeERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Sp_locker", align 1  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6duckdb18FileSystemRegistryEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN6duckdb18FileSystemRegistryEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6duckdb18FileSystemRegistryEEC2ERKS2_.exit

_ZNSt10shared_ptrIN6duckdb18FileSystemRegistryEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull %0) #58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !34
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %.not.i.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3, label %_ZNSt12__shared_ptrIN6duckdb18FileSystemRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6duckdb18FileSystemRegistryEEC2ERKS2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !73
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #58, !inline_history !4118
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #58, !inline_history !4118
  br label %_ZNSt12__shared_ptrIN6duckdb18FileSystemRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i4 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN6duckdb18FileSystemRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !81

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #58
  br label %_ZNSt12__shared_ptrIN6duckdb18FileSystemRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb18FileSystemRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN6duckdb18FileSystemRegistryEEC2ERKS2_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17VirtualFileSystem19UnregisterSubSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.520", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.520") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #58 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #59
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4068 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !4119
  %.not.i.i5 = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = load i64, ptr %2, align 8, !tbaa !1163
  store i64 %i.k, ptr %i.h, align 8, !tbaa !1163
  store ptr null, ptr %2, align 8, !tbaa !1163
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !4068
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !4065 ; 10 uses
  %i.n = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #64
          to label %.noexc7 unwind label %bb.h    ; 10 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = load i64, ptr %2, align 8, !tbaa !1163
  store i64 %i.z, ptr %i.y, align 8, !tbaa !1163
  store ptr null, ptr %2, align 8, !tbaa !1163
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc7
  %3 = add i64 %i.n, -8
  %4 = sub i64 %3, %i.o                           ; 2 uses
  %i.aa = lshr i64 %4, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ac = add i64 %i.n, -8
  %i.ad = sub i64 %i.ac, %i.o
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep17 = getelementptr i8, ptr %i.m, i64 %i.af
  %bound0 = icmp ult ptr %i.x, %scevgep17
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.m, i64 %i.aj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  %i.ak = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !1163, !alias.scope !4125, !noalias !4120
  %wide.load19 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !1163, !alias.scope !4125, !noalias !4120
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1163, !alias.scope !4128, !noalias !4125
  store <2 x i64> %wide.load19, ptr %i.al, align 8, !tbaa !1163, !alias.scope !4128, !noalias !4125
  %i.am = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !1163, !alias.scope !4125, !noalias !4120
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !1163, !alias.scope !4125, !noalias !4120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !4130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.i.i.preheader21:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader21 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1163, !alias.scope !4123, !noalias !4120
  store i64 %i.ao, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1163, !alias.scope !4120, !noalias !4123
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1163, !alias.scope !4123, !noalias !4120
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4131

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc7 ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.x, ptr %i.f, align 8, !tbaa !4065
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !4068
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.as, ptr %i.i, align 8, !tbaa !4119
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.c
  %i.at = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #58 ; 0 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !1163  ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #58, !inline_history !4057
  br label %_ZNSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.g:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FileSystemESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #58 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.az, %bb.h ], [ %i.ay, %bb.g ]
  %i.bb = load ptr, ptr %2, align 8, !tbaa !1163  ; 3 uses
  %.not.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EED2Ev.exit10, label %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i9: ; preds = %bb.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #58, !inline_history !4057
  br label %_ZNSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb10FileSystemESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb10FileSystemEEclEPS1_.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17VirtualFileSystem22SetDisabledFileSystemsERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.duckdb::shared_ptr.2140", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #58 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #59
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4000 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %_ZNK6duckdb10shared_ptrINS_18FileSystemRegistryELb1EEptEv.exit, !prof !81

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2033, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.h unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.h) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.g, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.g, label %.body

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #58
  br label %.body

bb.h:                                             ; preds = %bb.e
  unreachable
end_hunk_10
begin_hunk_11_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bq = phi i64 [ %i.bw, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bu, %bb.h ], [ %i.bp, %bb.e ] ; 3 uses
  %i.br = icmp eq i64 %i.bq, %i.bi
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !139
  %.not.i.i.i.i.i.us.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.i.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bu = load ptr, ptr %.0.us.i.i, align 8, !tbaa !120 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bu, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !2441 ; 2 uses
  %i.bx = urem i64 %i.bw, %i.bk
  %.not19.us.i.i = icmp eq i64 %i.bx, %i.bl
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !4570

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.by = phi i64 [ %i.cr, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.cp, %bb.k ], [ %i.bp, %bb.e ] ; 4 uses
  %i.bz = icmp eq i64 %i.by, %i.bi
  br i1 %i.bz, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !139
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.fr.i.i, %i.cd
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ce = add nuw i64 %.01016.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %.fr.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2403

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %bb.j
  %.01016.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01016.i.i.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !79
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZN6duckdb10StringUtil18ASCII_TO_LOWER_MAPE, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.01016.i.i.i.i.i.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !79
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN6duckdb10StringUtil18ASCII_TO_LOWER_MAPE, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !79
  %.not13.i.i.i.i.i.i.i = icmp eq i8 %i.cj, %i.co
  br i1 %.not13.i.i.i.i.i.i.i, label %bb.j, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.cp = load ptr, ptr %.0.i.i, align 8, !tbaa !120 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.cp, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !2441 ; 2 uses
  %i.cs = urem i64 %i.cr, %i.bk
  %.not19.i.i = icmp eq i64 %i.cs, %i.bl
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !4570

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %bb.k, %.loopexit.i.i, %bb.j, %bb.h, %bb.g, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IbmEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, %bb.c, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IbmEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IbmEENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.09.1 = phi ptr [ %.sroa.09.023, %bb.c ], [ %.sroa.09.023.us, %.lr.ph.split.us ], [ null, %bb.h ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IbmEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IbmEENS_10_Select1stEN6duckdb33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ %.0.i.i, %bb.j ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S7_IbmEENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.us ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ null, %.loopexit.i.i ], [ null, %bb.k ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !33     ; 6 uses
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
  br i1 %i.q, label %bb.e, label %bb.f, !prof !127

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !150
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !33
  store i64 %i.s, ptr %i.d, align 8, !tbaa !33
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !150
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !127

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
  %i.ac = load i64, ptr %1, align 8, !tbaa !33
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !33
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
  store <2 x i64> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !33
  store <2 x i64> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !33
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !4579

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !4580

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = add i64 %i.aq, -8
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !33
  store <2 x i64> %broadcast.splat, ptr %i.aw, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !4581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4582

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !150
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !127

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !150
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %1, align 8, !tbaa !33
  store i64 %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !33
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !150
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %6 = add i64 %i.f, -8
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec116, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bi = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x i64> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !33
  store <2 x i64> %broadcast.splat118, ptr %i.bj, align 8, !tbaa !33
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bk, label %middle.block123, label %vector.body119, !llvm.loop !4583

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !4584

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !152   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2093) #59
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i64, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec144, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cj = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !33
  store <2 x i64> %broadcast.splat146, ptr %i.ck, align 8, !tbaa !33
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cl, label %middle.block151, label %vector.body147, !llvm.loop !4585

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cg, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !4586

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !127

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !33
  store i64 %i.cp, ptr %i.ca, align 8, !tbaa !33
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !127

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i64, ptr %1, align 8, !tbaa !33
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bm) #60
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !152
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !150
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !168
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #47

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4587
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !120 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
end_hunk_11
begin_hunk_12_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
.lr.ph.i79.i.i:                                   ; preds = %.lr.ph.i.i.preheader.i78.i.i, %.lr.ph.i.i.i82.i.i
  %.019.i.i9.i80.i.i = phi i64 [ %i.pm, %.lr.ph.i.i.i82.i.i ], [ %i.ok, %.lr.ph.i.i.preheader.i78.i.i ]
  %i.pl = phi i64 [ %i.pq, %.lr.ph.i.i.i82.i.i ], [ %i.op, %.lr.ph.i.i.preheader.i78.i.i ]
  %i.pm = lshr i64 %.019.i.i9.i80.i.i, 5          ; 2 uses
  %i.pn = mul nuw nsw i64 %i.pl, 5
  %i.po = add nuw nsw i64 %i.pm, 1
  %i.pp = add nuw nsw i64 %i.po, %i.pn
  %i.pq = and i64 %i.pp, 127                      ; 2 uses
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i81.i.i = icmp eq i64 %i.pt, 0
  br i1 %.not17.i.i.i81.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84.i.i, label %.lr.ph.i.i.i82.i.i, !llvm.loop !6914

.lr.ph.i.i.i82.i.i:                               ; preds = %.lr.ph.i79.i.i
  %i.pu = load i64, ptr %i.pr, align 8, !tbaa !6913
  %i.pv = icmp eq i64 %i.pu, %i.ok
  br i1 %i.pv, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i, label %.lr.ph.i79.i.i, !llvm.loop !6914

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84.i.i: ; preds = %.lr.ph.i79.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i, !llvm.loop !6914

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i: ; preds = %.lr.ph.i.i.i82.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84.i.i, %.lr.ph.i.i.preheader.i78.i.i, %.preheader.i.i.i76.i.i, %bb.ar, %.lr.ph.split.i.i
  %.0.i83.i.i = phi i64 [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i84.i.i ], [ 0, %.lr.ph.split.i.i ], [ %i.pd, %bb.ar ], [ 0, %.preheader.i.i.i76.i.i ], [ %i.pi, %.lr.ph.i.i.preheader.i78.i.i ], [ %i.pt, %.lr.ph.i.i.i82.i.i ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.211.i.i
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !33 ; 2 uses
  %i.py = xor i64 %i.px, -1
  %i.pz = and i64 %.0.i83.i.i, %i.py              ; 2 uses
  %.not63.i.i = icmp eq i64 %i.pz, 0
  br i1 %.not63.i.i, label %.critedge.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i
  %.us-phi.i.i = phi i64 [ %.211.us.i.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i ], [ %.211.i.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i ]
  %.us-phi12.i.i = phi i64 [ %i.ou, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i ], [ %.0.i83.i.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i ]
  %.us-phi13.i.i = phi i64 [ %i.ow, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i ], [ %i.px, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i ]
  %.us-phi14.i.i = phi i64 [ %i.oy, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i ], [ %i.pz, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i ]
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.us-phi.i.i
  %i.qb = sub i64 0, %.us-phi14.i.i
  %i.qc = and i64 %.us-phi12.i.i, %i.qb
  %i.qd = or i64 %i.qc, %.us-phi13.i.i
  store i64 %i.qd, ptr %i.qa, align 8, !tbaa !33
  %i.qe = shl nuw i64 1, %i.km
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.kl ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !33
  %i.qh = or i64 %i.qg, %i.qe
  store i64 %i.qh, ptr %i.qf, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

.critedge.i.i:                                    ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.i.i
  %i.qi = add i64 %.211.i.i, 1                    ; 2 uses
  %exitcond.not.i.i87 = icmp eq i64 %i.qi, %i.oh
  br i1 %exitcond.not.i.i87, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !6925

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.critedge.us.i.i, %bb.aq
  %.2.lcssa.i.i = phi i64 [ %.1.i.i, %bb.aq ], [ %i.oh, %.critedge.us.i.i ], [ %i.oh, %.critedge.i.i ] ; 3 uses
  %.not62.i.i = icmp eq i64 %.sroa.13.074.i, 0
  br i1 %.not62.i.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.qj = icmp sgt i8 %i.kk, -1
  br i1 %i.qj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qk = zext nneg i8 %i.kk to i64
  %i.ql = mul nsw i64 %i.kh, %i.qk
  %i.qm = getelementptr [8 x i8], ptr %i.kg, i64 %i.ql
  %i.qn = getelementptr [8 x i8], ptr %i.qm, i64 %.2.lcssa.i.i
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i

bb.au:                                            ; preds = %bb.as
  %i.qp = getelementptr inbounds nuw [2048 x i8], ptr %i.kd, i64 %.2.lcssa.i.i ; 3 uses
  %i.qq = sext i8 %i.kk to i64                    ; 7 uses
  %i.qr = and i64 %i.qq, 127
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %i.qr ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i86.i.i = icmp eq i64 %i.qu, 0
  br i1 %.not.i.i.i86.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qv = load i64, ptr %i.qs, align 8, !tbaa !6913
  %i.qw = icmp eq i64 %i.qv, %i.qq
  br i1 %i.qw, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, label %.preheader.i.i.i87.i.i

.preheader.i.i.i87.i.i:                           ; preds = %bb.av
  %i.qx = mul nsw i64 %i.qq, 5
  %i.qy = add nsw i64 %i.qq, 1
  %i.qz = add nsw i64 %i.qy, %i.qx
  %i.ra = and i64 %i.qz, 127                      ; 2 uses
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %i.ra ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !6911 ; 2 uses
  %.not1718.i.i.i88.i.i = icmp eq i64 %i.rd, 0
  br i1 %.not1718.i.i.i88.i.i, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, label %.lr.ph.i.i.preheader.i89.i.i

.lr.ph.i.i.preheader.i89.i.i:                     ; preds = %.preheader.i.i.i87.i.i
  %i.re = load i64, ptr %i.rb, align 8, !tbaa !6913
  %i.rf = icmp eq i64 %i.re, %i.qq
  br i1 %i.rf, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, label %.lr.ph.i90.i.i

.lr.ph.i90.i.i:                                   ; preds = %.lr.ph.i.i.preheader.i89.i.i, %.lr.ph.i.i.i93.i.i
  %.019.i.i9.i91.i.i = phi i64 [ %i.rh, %.lr.ph.i.i.i93.i.i ], [ %i.qq, %.lr.ph.i.i.preheader.i89.i.i ]
  %i.rg = phi i64 [ %i.rl, %.lr.ph.i.i.i93.i.i ], [ %i.ra, %.lr.ph.i.i.preheader.i89.i.i ]
  %i.rh = lshr i64 %.019.i.i9.i91.i.i, 5          ; 2 uses
  %i.ri = mul nuw nsw i64 %i.rg, 5
  %i.rj = add nuw nsw i64 %i.rh, 1
  %i.rk = add nuw nsw i64 %i.rj, %i.ri
  %i.rl = and i64 %i.rk, 127                      ; 2 uses
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %i.rl ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i92.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not17.i.i.i92.i.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i, label %.lr.ph.i.i.i93.i.i, !llvm.loop !6914

.lr.ph.i.i.i93.i.i:                               ; preds = %.lr.ph.i90.i.i
  %i.rp = load i64, ptr %i.rm, align 8, !tbaa !6913
  %i.rq = icmp eq i64 %i.rp, %i.qq
  br i1 %i.rq, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, label %.lr.ph.i90.i.i, !llvm.loop !6914

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i: ; preds = %.lr.ph.i90.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, !llvm.loop !6914

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i: ; preds = %.lr.ph.i.i.i93.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i, %.lr.ph.i.i.preheader.i89.i.i, %.preheader.i.i.i87.i.i, %bb.av, %bb.au, %bb.at
  %.0.i94.i.i = phi i64 [ %i.qo, %bb.at ], [ 0, %bb.au ], [ %i.qu, %bb.av ], [ 0, %.preheader.i.i.i87.i.i ], [ %i.rd, %.lr.ph.i.i.preheader.i89.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i ], [ %i.ro, %.lr.ph.i.i.i93.i.i ]
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.2.lcssa.i.i ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !33 ; 2 uses
  %i.rt = xor i64 %i.rs, -1
  %i.ru = and i64 %.0.i94.i.i, %i.rt
  %i.rv = and i64 %i.ru, %.sroa.13.074.i          ; 3 uses
  %i.rw = sub i64 0, %i.rv
  %i.rx = and i64 %i.rv, %i.rw
  %i.ry = or i64 %i.rx, %i.rs
  store i64 %i.ry, ptr %i.rr, align 8, !tbaa !33
  %i.rz = icmp ne i64 %i.rv, 0
  %i.sa = zext i1 %i.rz to i64
  %i.sb = shl nuw i64 %i.sa, %i.km
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.kl ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !33
  %i.se = or i64 %i.sb, %i.sd
  store i64 %i.se, ptr %i.sc, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, %._crit_edge.i.i, %.split.us.i.i, %bb.ap, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i
  %i.sf = add nsw i64 %.079.i, %.0.i52            ; 2 uses
  %i.sg = add nsw i64 %i.sf, 1
  %i.sh = icmp slt i64 %i.sg, %i.at
  br i1 %i.sh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %i.si = shl i64 %.sroa.13.074.i, 1              ; 2 uses
  %i.sj = or disjoint i64 %i.si, 1
  %i.sk = add nsw i64 %i.sf, 2
  %i.sl = icmp slt i64 %i.sk, %i.at
  %i.sm = icmp eq i64 %i.si, -2
  %or.cond.i85 = select i1 %i.sl, i1 %i.sm, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i85, i64 0, i64 %i.sj
  %i.sn = zext i1 %or.cond.i85 to i64
  %spec.select51.i = add nsw i64 %.sroa.0.078.i, %i.sn
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.13.1.i = phi i64 [ %.sroa.13.074.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select.i, %bb.aw ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.078.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select51.i, %bb.aw ] ; 3 uses
  %.not.i83 = icmp slt i64 %.079.i, %.0.i52
  br i1 %.not.i83, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.so = shl i64 %.sroa.17.076.i, 1              ; 2 uses
  %i.sp = icmp eq i64 %i.so, 0
  br i1 %i.sp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.sq = add nsw i64 %.sroa.0.1.i, -1
  %i.sr = add nsw i64 %.sroa.10.073.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10.1.i = phi i64 [ %.sroa.10.073.i, %bb.ax ], [ %i.sr, %bb.az ], [ %.sroa.10.073.i, %bb.ay ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.076.i, %bb.ax ], [ -1, %bb.az ], [ %i.so, %bb.ay ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ax ], [ %i.sq, %bb.az ], [ %.sroa.0.1.i, %bb.ay ]
  %i.ss = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.ss, %i.av
  br i1 %exitcond.not.i84, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit, label %bb.af, !llvm.loop !6926

_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit: ; preds = %bb.ba, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.st = ptrtoint ptr %i.jv to i64               ; 2 uses
  %i.su = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.sx = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = icmp ult i64 %i.sv, %i.sy
  br i1 %i.sz, label %.preheader.i90, label %.preheader20.i

.preheader20.i:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit
  %.not22.i = icmp eq ptr %i.jl, %i.jk
  br i1 %.not22.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %.preheader20.i
  %8 = add i64 %i.sw, -8
  %9 = sub i64 %8, %i.sx                          ; 2 uses
  %i.ta = lshr i64 %9, 3
  %i.tb = add nuw nsw i64 %i.ta, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 24
  br i1 %min.iters.check, label %.lr.ph.i88.preheader540, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i88.preheader
  %n.vec = and i64 %i.tb, 4611686018427387900     ; 3 uses
  %i.tc = shl i64 %n.vec, 3
  %i.td = getelementptr i8, ptr %i.jl, i64 %i.tc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ti, %vector.body ]
  %vec.phi492 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tj, %vector.body ]
  %i.te = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jl, i64 %i.te ; 2 uses
  %i.tf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !33
  %wide.load493 = load <2 x i64>, ptr %i.tf, align 8, !tbaa !33
  %i.tg = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.th = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load493)
  %i.ti = add <2 x i64> %i.tg, %vec.phi           ; 2 uses
  %i.tj = add <2 x i64> %i.th, %vec.phi492        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tk = icmp eq i64 %index.next, %n.vec
  br i1 %i.tk, label %middle.block, label %vector.body, !llvm.loop !6927

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.tj, %i.ti
  %i.tl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.tb, %n.vec
  br i1 %cmp.n, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i88.preheader540

.lr.ph.i88.preheader540:                          ; preds = %.lr.ph.i88.preheader, %middle.block
  %.124.i.ph = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %i.tl, %middle.block ]
  %.sroa.012.023.i.ph = phi ptr [ %i.jl, %.lr.ph.i88.preheader ], [ %i.td, %middle.block ]
  br label %.lr.ph.i88

.preheader.i90:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit
  %.not1925.i = icmp eq ptr %i.jw, %i.jv
  br i1 %.not1925.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i90
  %10 = add i64 %i.st, -8
  %11 = sub i64 %10, %i.su                        ; 2 uses
  %i.tm = lshr i64 %11, 3
  %i.tn = add nuw nsw i64 %i.tm, 1                ; 2 uses
  %min.iters.check495 = icmp ult i64 %11, 24
  br i1 %min.iters.check495, label %.lr.ph28.i.preheader536, label %vector.ph496

vector.ph496:                                     ; preds = %.lr.ph28.i.preheader
  %n.vec498 = and i64 %i.tn, 4611686018427387900  ; 3 uses
  %i.to = shl i64 %n.vec498, 3
  %i.tp = getelementptr i8, ptr %i.jw, i64 %i.to
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph496
  %index500 = phi i64 [ 0, %vector.ph496 ], [ %index.next506, %vector.body499 ] ; 2 uses
  %vec.phi501 = phi <2 x i64> [ zeroinitializer, %vector.ph496 ], [ %i.tu, %vector.body499 ]
  %vec.phi502 = phi <2 x i64> [ zeroinitializer, %vector.ph496 ], [ %i.tv, %vector.body499 ]
  %i.tq = shl i64 %index500, 3
  %next.gep503 = getelementptr i8, ptr %i.jw, i64 %i.tq ; 2 uses
  %i.tr = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load504 = load <2 x i64>, ptr %next.gep503, align 8, !tbaa !33
  %wide.load505 = load <2 x i64>, ptr %i.tr, align 8, !tbaa !33
  %i.ts = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load504)
  %i.tt = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load505)
  %i.tu = add <2 x i64> %i.ts, %vec.phi501        ; 2 uses
  %i.tv = add <2 x i64> %i.tt, %vec.phi502        ; 2 uses
  %index.next506 = add nuw i64 %index500, 4       ; 2 uses
  %i.tw = icmp eq i64 %index.next506, %n.vec498
  br i1 %i.tw, label %middle.block507, label %vector.body499, !llvm.loop !6928

middle.block507:                                  ; preds = %vector.body499
  %bin.rdx508 = add <2 x i64> %i.tv, %i.tu
  %i.tx = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx508) ; 2 uses
  %cmp.n509 = icmp eq i64 %i.tn, %n.vec498
  br i1 %cmp.n509, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader536

.lr.ph28.i.preheader536:                          ; preds = %.lr.ph28.i.preheader, %middle.block507
  %.027.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %i.tx, %middle.block507 ]
  %.sroa.016.026.i.ph = phi ptr [ %i.jw, %.lr.ph28.i.preheader ], [ %i.tp, %middle.block507 ]
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader536, %.lr.ph28.i
  %.027.i = phi i64 [ %i.ua, %.lr.ph28.i ], [ %.027.i.ph, %.lr.ph28.i.preheader536 ]
  %.sroa.016.026.i = phi ptr [ %i.ub, %.lr.ph28.i ], [ %.sroa.016.026.i.ph, %.lr.ph28.i.preheader536 ] ; 2 uses
  %i.ty = load i64, ptr %.sroa.016.026.i, align 8, !tbaa !33
  %i.tz = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ty)
  %i.ua = add nuw nsw i64 %i.tz, %.027.i          ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.ub, %i.jv
  br i1 %.not19.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i, !llvm.loop !6929

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader540, %.lr.ph.i88
  %.124.i = phi i64 [ %i.ue, %.lr.ph.i88 ], [ %.124.i.ph, %.lr.ph.i88.preheader540 ]
  %.sroa.012.023.i = phi ptr [ %i.uf, %.lr.ph.i88 ], [ %.sroa.012.023.i.ph, %.lr.ph.i88.preheader540 ] ; 2 uses
  %i.uc = load i64, ptr %.sroa.012.023.i, align 8, !tbaa !33
  %i.ud = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.uc)
  %i.ue = add nuw nsw i64 %i.ud, %.124.i          ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8 ; 2 uses
  %.not.i89 = icmp eq ptr %i.uf, %i.jk
  br i1 %.not.i89, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i88, !llvm.loop !6930

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i88, %.lr.ph28.i, %middle.block, %middle.block507, %.preheader20.i, %.preheader.i90
  %.2.i = phi i64 [ %i.ua, %.lr.ph28.i ], [ 0, %.preheader.i90 ], [ 0, %.preheader20.i ], [ %i.tx, %middle.block507 ], [ %i.tl, %middle.block ], [ %i.ue, %.lr.ph.i88 ] ; 3 uses
  %i.ug = add nsw i64 %.2.i, %.0.lcssa.i          ; 3 uses
  %.not.i91 = icmp eq i64 %i.ug, 0
  br i1 %.not.i91, label %.critedge47, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit93

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit93: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.uh = sitofp i64 %i.ug to double              ; 2 uses
  %i.ui = fdiv double %i.uh, %i.j
  %i.uj = fadd double %i.ui, 0.000000e+00
  %i.uk = fdiv double %i.uh, %i.l
  %i.ul = fadd double %i.uk, %i.uj
  %i.um = fadd double %i.ul, 1.000000e+00
  %i.un = fdiv double %i.um, 3.000000e+00
  %i.uo = fcmp ult double %i.un, %4
  br i1 %i.uo, label %.critedge47, label %bb.bb

bb.bb:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit93
  %.not19.i94 = icmp eq i64 %.2.i, 0
  br i1 %.not19.i94, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %bb.bb
  %i.up = load i64, ptr %i.jw, align 8, !tbaa !33
  %i.uq = load i64, ptr %i.jl, align 8, !tbaa !33
  %i.ur = load ptr, ptr %6, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ut = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.uu = load i64, ptr %i.ut, align 8
  %i.uv = load ptr, ptr %i.us, align 8
  br label %.preheader2.i

.loopexit.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i
  %.not.i105 = icmp eq i64 %i.ww, 0
  br i1 %.not.i105, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.i, !llvm.loop !6931

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader2.lr.ph.i
  %.027.i95 = phi ptr [ %i.ar, %.preheader2.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.02625.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %i.ws, %.loopexit.i ]
  %.02824.i = phi i64 [ %i.up, %.preheader2.lr.ph.i ], [ %i.wv, %.loopexit.i ]
  %.03023.i = phi i64 [ %i.uq, %.preheader2.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.03322.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.235.lcssa.i, %.loopexit.i ]
  %.03621.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.137.lcssa.i, %.loopexit.i ] ; 2 uses
  %.03820.i = phi i64 [ %.2.i, %.preheader2.lr.ph.i ], [ %i.ww, %.loopexit.i ]
  %.not404.i = icmp eq i64 %.03023.i, 0
  br i1 %.not404.i, label %.lr.ph.i107, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i107, %.preheader2.i
  %.137.lcssa.i = phi i64 [ %.03621.i, %.preheader2.i ], [ %i.uw, %.lr.ph.i107 ]
  %.131.lcssa.i = phi i64 [ %.03023.i, %.preheader2.i ], [ %i.uz, %.lr.ph.i107 ]
  %.1.lcssa.i = phi ptr [ %.027.i95, %.preheader2.i ], [ %i.ux, %.lr.ph.i107 ] ; 2 uses
  br label %.preheader.i96

.lr.ph.i107:                                      ; preds = %.preheader2.i, %.lr.ph.i107
  %.16.i = phi ptr [ %i.ux, %.lr.ph.i107 ], [ %.027.i95, %.preheader2.i ]
  %.1375.i = phi i64 [ %i.uw, %.lr.ph.i107 ], [ %.03621.i, %.preheader2.i ]
  %i.uw = add nsw i64 %.1375.i, 1                 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.16.i, i64 64 ; 2 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.uw
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !33 ; 2 uses
  %.not40.i = icmp eq i64 %i.uz, 0
  br i1 %.not40.i, label %.lr.ph.i107, label %.preheader1.i, !llvm.loop !6932

.preheader.i96:                                   ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, %.preheader1.i
  %.12718.i = phi i64 [ %.02625.i, %.preheader1.i ], [ %i.ws, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.12917.i = phi i64 [ %.02824.i, %.preheader1.i ], [ %i.wv, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.23216.i = phi i64 [ %.131.lcssa.i, %.preheader1.i ], [ %i.wu, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 3 uses
  %.13415.i = phi i64 [ %.03322.i, %.preheader1.i ], [ %.235.lcssa.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.13914.i = phi i64 [ %.03820.i, %.preheader1.i ], [ %i.ww, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.not429.i = icmp eq i64 %.12917.i, 0
  br i1 %.not429.i, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %.preheader.i96, %.lr.ph11.i
  %.23510.i = phi i64 [ %i.va, %.lr.ph11.i ], [ %.13415.i, %.preheader.i96 ]
  %i.va = add nsw i64 %.23510.i, 1                ; 3 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.va
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !33 ; 2 uses
  %.not42.i = icmp eq i64 %i.vc, 0
  br i1 %.not42.i, label %.lr.ph11.i, label %._crit_edge.i, !llvm.loop !6933

._crit_edge.i:                                    ; preds = %.lr.ph11.i, %.preheader.i96
  %.235.lcssa.i = phi i64 [ %.13415.i, %.preheader.i96 ], [ %i.va, %.lr.ph11.i ] ; 4 uses
  %.2.lcssa.i = phi i64 [ %.12917.i, %.preheader.i96 ], [ %i.vc, %.lr.ph11.i ] ; 3 uses
  %i.vd = sub i64 0, %.2.lcssa.i
  %i.ve = and i64 %.2.lcssa.i, %i.vd              ; 2 uses
  %i.vf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.23216.i, i1 true)
  %i.vg = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !79  ; 3 uses
  %i.vi = icmp sgt i8 %i.vh, -1
  br i1 %i.vi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i
  %i.vj = zext nneg i8 %i.vh to i64
  %i.vk = mul nsw i64 %i.uu, %i.vj
  %i.vl = getelementptr [8 x i8], ptr %i.uv, i64 %i.vk
  %i.vm = getelementptr [8 x i8], ptr %i.vl, i64 %.235.lcssa.i
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i

bb.bd:                                            ; preds = %._crit_edge.i
  %i.vo = getelementptr inbounds nuw [2048 x i8], ptr %i.ur, i64 %.235.lcssa.i ; 3 uses
  %i.vp = sext i8 %i.vh to i64                    ; 7 uses
  %i.vq = and i64 %i.vp, 127
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %i.vo, i64 %i.vq ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %i.vt, 0
  br i1 %.not.i.i.i.i97, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vu = load i64, ptr %i.vr, align 8, !tbaa !6913
  %i.vv = icmp eq i64 %i.vu, %i.vp
  br i1 %i.vv, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.preheader.i.i.i.i98

.preheader.i.i.i.i98:                             ; preds = %bb.be
  %i.vw = mul nsw i64 %i.vp, 5
  %i.vx = add nsw i64 %i.vp, 1
  %i.vy = add nsw i64 %i.vx, %i.vw
  %i.vz = and i64 %i.vy, 127                      ; 2 uses
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.vo, i64 %i.vz ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !6911 ; 2 uses
  %.not1718.i.i.i.i99 = icmp eq i64 %i.wc, 0
  br i1 %.not1718.i.i.i.i99, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i.preheader.i.i100

.lr.ph.i.i.preheader.i.i100:                      ; preds = %.preheader.i.i.i.i98
  %i.wd = load i64, ptr %i.wa, align 8, !tbaa !6913
  %i.we = icmp eq i64 %i.wd, %i.vp
  br i1 %i.we, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %.lr.ph.i.i.preheader.i.i100, %.lr.ph.i.i.i.i103
  %.019.i.i9.i.i = phi i64 [ %i.wg, %.lr.ph.i.i.i.i103 ], [ %i.vp, %.lr.ph.i.i.preheader.i.i100 ]
  %i.wf = phi i64 [ %i.wk, %.lr.ph.i.i.i.i103 ], [ %i.vz, %.lr.ph.i.i.preheader.i.i100 ]
  %i.wg = lshr i64 %.019.i.i9.i.i, 5              ; 2 uses
  %i.wh = mul nuw nsw i64 %i.wf, 5
  %i.wi = add nuw nsw i64 %i.wg, 1
  %i.wj = add nuw nsw i64 %i.wi, %i.wh
  %i.wk = and i64 %i.wj, 127                      ; 2 uses
  %i.wl = getelementptr inbounds nuw [16 x i8], ptr %i.vo, i64 %i.wk ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i.i102 = icmp eq i64 %i.wn, 0
end_hunk_12
