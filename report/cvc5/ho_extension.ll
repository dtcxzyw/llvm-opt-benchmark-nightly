Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ho_extension?download=true
inline.NumInlined: 3910
inline.NumDeleted: 1410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4cvc58internal6theory2uf11HoExtension19checkExtensionalityEPNS1_11TheoryModelE:bb.a
  store i64 %i.agd, ptr %i.aec, align 8
  %i.age = icmp eq i64 %i.agb, 0
  br i1 %i.age, label %bb.ir, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit502, !prof !74

bb.ir:                                            ; preds = %bb.iq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aec)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit502 unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.agf = landingpad { ptr, i32 }
          catch ptr null
  %i.agg = extractvalue { ptr, i32 } %i.agf, 0
  call void @__clang_call_terminate(ptr %i.agg) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit502: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit500, %bb.iq, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br i1 %i.afo, label %bb.it, label %bb.kd

bb.it:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit502
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.agh = load ptr, ptr %32, align 8, !tbaa !29, !noalias !650 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agj = load i64, ptr %i.agi, align 8, !noalias !650
  %i.agk = trunc i64 %i.agj to i32
  %i.agl = and i32 %i.agk, 1023                   ; 2 uses
  %i.agm = icmp eq i32 %i.agl, 1023
  %i.agn = select i1 %i.agm, i32 -1, i32 %i.agl
  %i.ago = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.agn)
          to label %.noexc504 unwind label %bb.jy

.noexc504:                                        ; preds = %bb.it
  %i.agp = icmp eq i32 %i.ago, 2
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.agr = zext i1 %i.agp to i64
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %i.agr
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !27, !noalias !650 ; 10 uses
  store ptr %i.agt, ptr %58, align 8, !tbaa !29, !alias.scope !650
  %i.agu = load i64, ptr %i.agt, align 8, !noalias !650 ; 3 uses
  %i.agv = lshr i64 %i.agu, 40
  %i.agw = trunc nuw nsw i64 %i.agv to i32
  %i.agx = and i32 %i.agw, 1048575                ; 3 uses
  %i.agy = icmp samesign ult i32 %i.agx, 1048574
  br i1 %i.agy, label %bb.iu, label %bb.iv, !prof !75

bb.iu:                                            ; preds = %.noexc504
  %i.agz = add nuw nsw i32 %i.agx, 1
  %i.aha = zext nneg i32 %i.agz to i64
  %i.ahb = shl nuw nsw i64 %i.aha, 40
  %i.ahc = and i64 %i.agu, -1152920405095219201
  %i.ahd = or i64 %i.ahb, %i.ahc
  store i64 %i.ahd, ptr %i.agt, align 8, !noalias !650
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit506

bb.iv:                                            ; preds = %.noexc504
  %i.ahe = icmp eq i32 %i.agx, 1048574
  br i1 %i.ahe, label %bb.iw, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit506, !prof !74

bb.iw:                                            ; preds = %bb.iv
  %i.ahf = or i64 %i.agu, 1152920405095219200
  store i64 %i.ahf, ptr %i.agt, align 8, !noalias !650
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agt)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit506 unwind label %bb.jy

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit506: ; preds = %bb.iv, %bb.iu, %bb.iw
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.ahh = load i64, ptr %i.ahg, align 8, !noalias !651
  %i.ahi = trunc i64 %i.ahh to i32
  %i.ahj = and i32 %i.ahi, 1023                   ; 2 uses
  %i.ahk = icmp eq i32 %i.ahj, 1023
  %i.ahl = select i1 %i.ahk, i32 -1, i32 %i.ahj
  %i.ahm = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ahl)
          to label %.noexc508 unwind label %bb.jz

.noexc508:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit506
  %i.ahn = icmp eq i32 %i.ahm, 2
  %spec.select.i.i507 = select i1 %i.ahn, i64 2, i64 1
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agt, i64 24
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %i.aho, i64 %spec.select.i.i507
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !27, !noalias !651 ; 9 uses
  store ptr %i.ahq, ptr %57, align 8, !tbaa !29, !alias.scope !651
  %i.ahr = load i64, ptr %i.ahq, align 8, !noalias !651 ; 3 uses
  %i.ahs = lshr i64 %i.ahr, 40
  %i.aht = trunc nuw nsw i64 %i.ahs to i32
  %i.ahu = and i32 %i.aht, 1048575                ; 3 uses
  %i.ahv = icmp samesign ult i32 %i.ahu, 1048574
  br i1 %i.ahv, label %bb.ix, label %bb.iy, !prof !75

bb.ix:                                            ; preds = %.noexc508
  %i.ahw = add nuw nsw i32 %i.ahu, 1
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = shl nuw nsw i64 %i.ahx, 40
  %i.ahz = and i64 %i.ahr, -1152920405095219201
  %i.aia = or i64 %i.ahy, %i.ahz
  store i64 %i.aia, ptr %i.ahq, align 8, !noalias !651
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit510

bb.iy:                                            ; preds = %.noexc508
  %i.aib = icmp eq i32 %i.ahu, 1048574
  br i1 %i.aib, label %bb.iz, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit510, !prof !74

bb.iz:                                            ; preds = %bb.iy
  %i.aic = or i64 %i.ahr, 1152920405095219200
  store i64 %i.aic, ptr %i.ahq, align 8, !noalias !651
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahq)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit510 unwind label %bb.jz

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit510: ; preds = %bb.iy, %bb.ix, %bb.iz
  store ptr %i.ahq, ptr %56, align 8, !tbaa !82
  %i.aid = load ptr, ptr %51, align 8, !tbaa !29
  store ptr %i.aid, ptr %59, align 8, !tbaa !82
  %i.aie = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11TheoryModel14assertEqualityENS0_12NodeTemplateILb0EEES4_b(ptr noundef nonnull align 8 dereferenceable(968) %1, ptr noundef nonnull align 8 %56, ptr noundef nonnull align 8 %59, i1 noundef zeroext true)
          to label %bb.ja unwind label %bb.ka

bb.ja:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit510
  %i.aif = load i64, ptr %i.ahq, align 8          ; 3 uses
  %i.aig = and i64 %i.aif, 1152920405095219200
  %.not.i.i511 = icmp eq i64 %i.aig, 1152920405095219200
  br i1 %.not.i.i511, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit512, label %bb.jb, !prof !74

bb.jb:                                            ; preds = %bb.ja
  %i.aih = add i64 %i.aif, 1152920405095219200
  %i.aii = and i64 %i.aih, 1152920405095219200    ; 2 uses
  %i.aij = and i64 %i.aif, -1152920405095219201
  %i.aik = or disjoint i64 %i.aii, %i.aij
  store i64 %i.aik, ptr %i.ahq, align 8
  %i.ail = icmp eq i64 %i.aii, 0
  br i1 %i.ail, label %bb.jc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit512, !prof !74

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit512 unwind label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aim = landingpad { ptr, i32 }
          catch ptr null
  %i.ain = extractvalue { ptr, i32 } %i.aim, 0
  call void @__clang_call_terminate(ptr %i.ain) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit512: ; preds = %bb.ja, %bb.jb, %bb.jc
  %i.aio = load i64, ptr %i.agt, align 8          ; 3 uses
  %i.aip = and i64 %i.aio, 1152920405095219200
  %.not.i.i513 = icmp eq i64 %i.aip, 1152920405095219200
  br i1 %.not.i.i513, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit514, label %bb.je, !prof !74

bb.je:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit512
  %i.aiq = add i64 %i.aio, 1152920405095219200
  %i.air = and i64 %i.aiq, 1152920405095219200    ; 2 uses
  %i.ais = and i64 %i.aio, -1152920405095219201
  %i.ait = or disjoint i64 %i.air, %i.ais
  store i64 %i.ait, ptr %i.agt, align 8
  %i.aiu = icmp eq i64 %i.air, 0
  br i1 %i.aiu, label %bb.jf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit514, !prof !74

bb.jf:                                            ; preds = %bb.je
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit514 unwind label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aiv = landingpad { ptr, i32 }
          catch ptr null
  %i.aiw = extractvalue { ptr, i32 } %i.aiv, 0
  call void @__clang_call_terminate(ptr %i.aiw) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit514: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit512, %bb.je, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  br label %bb.kd

bb.jh:                                            ; preds = %bb.hd, %bb.ha
  %i.aix = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ji:                                            ; preds = %bb.hg, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit373
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jj:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit377
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #22
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.pn214 = phi { ptr, i32 } [ %i.aiz, %bb.jj ], [ %i.aiy, %bb.ji ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #22
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jh
  %.pn214.pn = phi { ptr, i32 } [ %.pn214, %bb.jk ], [ %i.aix, %bb.jh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %bb.ku

bb.jm:                                            ; preds = %bb.hq
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.jn:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit398
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #22
  br label %bb.kt

bb.jo:                                            ; preds = %bb.hy
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit520

bb.jp:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit402
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #22
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit520

bb.jq:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit404
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.kn

bb.jr:                                            ; preds = %_ZN4cvc58internal6theory14TypeEnumeratordeEv.exit406
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  br label %.body408

bb.js:                                            ; preds = %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit410
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.jt:                                            ; preds = %bb.ii, %.critedge273
  %i.ajh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.ju:                                            ; preds = %bb.il, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit494
  %i.aji = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.jv:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit498
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #22
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.pn225 = phi { ptr, i32 } [ %i.ajj, %bb.jv ], [ %i.aji, %bb.ju ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #22
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jt
  %.pn225.pn = phi { ptr, i32 } [ %.pn225, %bb.jw ], [ %i.ajh, %bb.jt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  br label %bb.kl

bb.jy:                                            ; preds = %bb.iw, %bb.it
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.jz:                                            ; preds = %bb.iz, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit506
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.ka:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit510
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #22
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %.pn228 = phi { ptr, i32 } [ %i.ajm, %bb.ka ], [ %i.ajl, %bb.jz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #22
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.jy
  %.pn228.pn = phi { ptr, i32 } [ %.pn228, %bb.kb ], [ %i.ajk, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  br label %bb.kl

bb.kd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit514, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit502
  %.7.in = phi i1 [ %i.aie, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit514 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit502 ]
  %i.ajn = load ptr, ptr %51, align 8, !tbaa !29  ; 3 uses
  %i.ajo = load i64, ptr %i.ajn, align 8          ; 3 uses
  %i.ajp = and i64 %i.ajo, 1152920405095219200
  %.not.i.i515 = icmp eq i64 %i.ajp, 1152920405095219200
  br i1 %.not.i.i515, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit516, label %bb.ke, !prof !74

bb.ke:                                            ; preds = %bb.kd
  %i.ajq = add i64 %i.ajo, 1152920405095219200
  %i.ajr = and i64 %i.ajq, 1152920405095219200    ; 2 uses
  %i.ajs = and i64 %i.ajo, -1152920405095219201
  %i.ajt = or disjoint i64 %i.ajr, %i.ajs
  store i64 %i.ajt, ptr %i.ajn, align 8
  %i.aju = icmp eq i64 %i.ajr, 0
  br i1 %i.aju, label %bb.kf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit516, !prof !74

bb.kf:                                            ; preds = %bb.ke
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit516 unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.ajv = landingpad { ptr, i32 }
          catch ptr null
  %i.ajw = extractvalue { ptr, i32 } %i.ajv, 0
  call void @__clang_call_terminate(ptr %i.ajw) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit516: ; preds = %bb.kd, %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  %i.ajx = load ptr, ptr %50, align 8, !tbaa !29  ; 3 uses
  %i.ajy = load i64, ptr %i.ajx, align 8          ; 3 uses
  %i.ajz = and i64 %i.ajy, 1152920405095219200
  %.not.i.i517 = icmp eq i64 %i.ajz, 1152920405095219200
  br i1 %.not.i.i517, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit518, label %bb.kh, !prof !74

bb.kh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit516
  %i.aka = add i64 %i.ajy, 1152920405095219200
  %i.akb = and i64 %i.aka, 1152920405095219200    ; 2 uses
  %i.akc = and i64 %i.ajy, -1152920405095219201
  %i.akd = or disjoint i64 %i.akb, %i.akc
  store i64 %i.akd, ptr %i.ajx, align 8
  %i.ake = icmp eq i64 %i.akb, 0
  br i1 %i.ake, label %bb.ki, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit518, !prof !74

bb.ki:                                            ; preds = %bb.kh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit518 unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.akf = landingpad { ptr, i32 }
          catch ptr null
  %i.akg = extractvalue { ptr, i32 } %i.akf, 0
  call void @__clang_call_terminate(ptr %i.akg) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit518: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit516, %bb.kh, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  %i.akh = load ptr, ptr %48, align 8, !tbaa !375 ; 3 uses
  %i.aki = icmp eq ptr %i.akh, null
  br i1 %i.aki, label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit519, label %bb.kk

bb.kk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit518
  %i.akj = load ptr, ptr %i.akh, align 8, !tbaa !23
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8
  call void %i.akl(ptr noundef nonnull align 8 dereferenceable(16) %i.akh) #22, !inline_history !587
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit519

_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit519: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit518, %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %bb.kp

bb.kl:                                            ; preds = %bb.kc, %bb.jx
  %.pn228.pn.pn = phi { ptr, i32 } [ %.pn228.pn, %bb.kc ], [ %.pn225.pn, %bb.jx ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #22
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.js
  %.pn228.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn, %bb.kl ], [ %i.ajg, %bb.js ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  br label %.body408

.body408:                                         ; preds = %bb.jr, %bb.ie, %bb.id, %bb.km
  %.pn228.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn.pn, %bb.km ], [ %i.ajf, %bb.jr ], [ %i.add, %bb.ie ], [ %i.add, %bb.id ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #22
  br label %bb.kn

bb.kn:                                            ; preds = %.body408, %bb.jq
  %.pn228.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn.pn.pn, %.body408 ], [ %i.aje, %bb.jq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  %i.akm = load ptr, ptr %48, align 8, !tbaa !375 ; 3 uses
  %i.akn = icmp eq ptr %i.akm, null
  br i1 %i.akn, label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit520, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.ako = load ptr, ptr %i.akm, align 8, !tbaa !23
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.akq = load ptr, ptr %i.akp, align 8
  call void %i.akq(ptr noundef nonnull align 8 dereferenceable(16) %i.akm) #22, !inline_history !587
  br label %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit520

_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit520: ; preds = %bb.ko, %bb.kn, %bb.jp, %bb.jo
  %.pn228.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ajc, %bb.jo ], [ %i.ajd, %bb.jp ], [ %.pn228.pn.pn.pn.pn.pn, %bb.kn ], [ %.pn228.pn.pn.pn.pn.pn, %bb.ko ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %bb.kt

bb.kp:                                            ; preds = %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit519, %_ZN4cvc58internal8TypeNodeD2Ev.exit400
  %.8 = phi i1 [ %.7.in, %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit519 ], [ true, %_ZN4cvc58internal8TypeNodeD2Ev.exit400 ]
  %i.akr = load ptr, ptr %44, align 8, !tbaa !80  ; 3 uses
  %i.aks = load i64, ptr %i.akr, align 8          ; 3 uses
  %i.akt = and i64 %i.aks, 1152920405095219200
  %.not.i.i521 = icmp eq i64 %i.akt, 1152920405095219200
  br i1 %.not.i.i521, label %bb.kv, label %bb.kq, !prof !74

bb.kq:                                            ; preds = %bb.kp
  %i.aku = add i64 %i.aks, 1152920405095219200
  %i.akv = and i64 %i.aku, 1152920405095219200    ; 2 uses
  %i.akw = and i64 %i.aks, -1152920405095219201
  %i.akx = or disjoint i64 %i.akv, %i.akw
  store i64 %i.akx, ptr %i.akr, align 8
  %i.aky = icmp eq i64 %i.akv, 0
  br i1 %i.aky, label %bb.kr, label %bb.kv, !prof !74

bb.kr:                                            ; preds = %bb.kq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akr)
          to label %bb.kv unwind label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.akz = landingpad { ptr, i32 }
          catch ptr null
  %i.ala = extractvalue { ptr, i32 } %i.akz, 0
  call void @__clang_call_terminate(ptr %i.ala) #25
  unreachable

bb.kt:                                            ; preds = %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit520, %bb.jn, %bb.jm
  %.pn228.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal6theory14TypeEnumeratorD2Ev.exit520 ], [ %i.ajb, %bb.jn ], [ %i.aja, %bb.jm ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #22
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.jl
  %.pn228.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn.pn.pn.pn.pn.pn, %bb.kt ], [ %.pn214.pn, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369

bb.kv:                                            ; preds = %bb.kr, %bb.kq, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br i1 %.8, label %.loopexit739, label %.thread712

.thread712:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit367, %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.alb = load ptr, ptr %32, align 8, !tbaa !29, !noalias !652 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ald = load i64, ptr %i.alc, align 8, !noalias !652
  %i.ale = trunc i64 %i.ald to i32
  %i.alf = and i32 %i.ale, 1023                   ; 2 uses
  %i.alg = icmp eq i32 %i.alf, 1023
  %i.alh = select i1 %i.alg, i32 -1, i32 %i.alf
  %i.ali = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.alh)
          to label %.noexc524 unwind label %bb.nh

.noexc524:                                        ; preds = %.thread712
  %i.alj = icmp eq i32 %i.ali, 2
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alb, i64 24
  %i.all = zext i1 %i.alj to i64
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %i.all
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !27, !noalias !652 ; 10 uses
  store ptr %i.aln, ptr %62, align 8, !tbaa !29, !alias.scope !652
  %i.alo = load i64, ptr %i.aln, align 8, !noalias !652 ; 3 uses
  %i.alp = lshr i64 %i.alo, 40
  %i.alq = trunc nuw nsw i64 %i.alp to i32
  %i.alr = and i32 %i.alq, 1048575                ; 3 uses
  %i.als = icmp samesign ult i32 %i.alr, 1048574
  br i1 %i.als, label %bb.kw, label %bb.kx, !prof !75

bb.kw:                                            ; preds = %.noexc524
  %i.alt = add nuw nsw i32 %i.alr, 1
  %i.alu = zext nneg i32 %i.alt to i64
  %i.alv = shl nuw nsw i64 %i.alu, 40
  %i.alw = and i64 %i.alo, -1152920405095219201
  %i.alx = or i64 %i.alv, %i.alw
  store i64 %i.alx, ptr %i.aln, align 8, !noalias !652
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit526

bb.kx:                                            ; preds = %.noexc524
  %i.aly = icmp eq i32 %i.alr, 1048574
  br i1 %i.aly, label %bb.ky, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit526, !prof !74

bb.ky:                                            ; preds = %bb.kx
  %i.alz = or i64 %i.alo, 1152920405095219200
  store i64 %i.alz, ptr %i.aln, align 8, !noalias !652
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aln)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit526 unwind label %bb.nh

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit526: ; preds = %bb.kx, %bb.kw, %bb.ky
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  %i.amb = load i64, ptr %i.ama, align 8, !noalias !653
  %i.amc = trunc i64 %i.amb to i32
  %i.amd = and i32 %i.amc, 1023                   ; 2 uses
  %i.ame = icmp eq i32 %i.amd, 1023
  %i.amf = select i1 %i.ame, i32 -1, i32 %i.amd
  %i.amg = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.amf)
          to label %.noexc528 unwind label %bb.ni

.noexc528:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit526
  %i.amh = icmp eq i32 %i.amg, 2
  %i.ami = getelementptr inbounds nuw i8, ptr %i.aln, i64 24
  %i.amj = zext i1 %i.amh to i64
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.ami, i64 %i.amj
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !27, !noalias !653 ; 10 uses
  store ptr %i.aml, ptr %61, align 8, !tbaa !29, !alias.scope !653
  %i.amm = load i64, ptr %i.aml, align 8, !noalias !653 ; 3 uses
  %i.amn = lshr i64 %i.amm, 40
  %i.amo = trunc nuw nsw i64 %i.amn to i32
  %i.amp = and i32 %i.amo, 1048575                ; 3 uses
  %i.amq = icmp samesign ult i32 %i.amp, 1048574
  br i1 %i.amq, label %bb.kz, label %bb.la, !prof !75

bb.kz:                                            ; preds = %.noexc528
  %i.amr = add nuw nsw i32 %i.amp, 1
  %i.ams = zext nneg i32 %i.amr to i64
  %i.amt = shl nuw nsw i64 %i.ams, 40
  %i.amu = and i64 %i.amm, -1152920405095219201
  %i.amv = or i64 %i.amt, %i.amu
  store i64 %i.amv, ptr %i.aml, align 8, !noalias !653
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit530

bb.la:                                            ; preds = %.noexc528
  %i.amw = icmp eq i32 %i.amp, 1048574
  br i1 %i.amw, label %bb.lb, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit530, !prof !74

bb.lb:                                            ; preds = %bb.la
  %i.amx = or i64 %i.amm, 1152920405095219200
  store i64 %i.amx, ptr %i.aml, align 8, !noalias !653
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aml)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit530 unwind label %bb.ni

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit530: ; preds = %bb.la, %bb.kz, %bb.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.amy = load ptr, ptr %32, align 8, !tbaa !29, !noalias !654 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.ana = load i64, ptr %i.amz, align 8, !noalias !654
  %i.anb = trunc i64 %i.ana to i32
  %i.anc = and i32 %i.anb, 1023                   ; 2 uses
  %i.and = icmp eq i32 %i.anc, 1023
  %i.ane = select i1 %i.and, i32 -1, i32 %i.anc
  %i.anf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ane)
          to label %.noexc532 unwind label %bb.nj

.noexc532:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit530
  %i.ang = icmp eq i32 %i.anf, 2
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amy, i64 24
  %i.ani = zext i1 %i.ang to i64
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.anh, i64 %i.ani
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !27, !noalias !654 ; 10 uses
  store ptr %i.ank, ptr %64, align 8, !tbaa !29, !alias.scope !654
  %i.anl = load i64, ptr %i.ank, align 8, !noalias !654 ; 3 uses
  %i.anm = lshr i64 %i.anl, 40
  %i.ann = trunc nuw nsw i64 %i.anm to i32
  %i.ano = and i32 %i.ann, 1048575                ; 3 uses
  %i.anp = icmp samesign ult i32 %i.ano, 1048574
  br i1 %i.anp, label %bb.lc, label %bb.ld, !prof !75

bb.lc:                                            ; preds = %.noexc532
  %i.anq = add nuw nsw i32 %i.ano, 1
  %i.anr = zext nneg i32 %i.anq to i64
  %i.ans = shl nuw nsw i64 %i.anr, 40
  %i.ant = and i64 %i.anl, -1152920405095219201
  %i.anu = or i64 %i.ans, %i.ant
  store i64 %i.anu, ptr %i.ank, align 8, !noalias !654
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit534

bb.ld:                                            ; preds = %.noexc532
  %i.anv = icmp eq i32 %i.ano, 1048574
  br i1 %i.anv, label %bb.le, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit534, !prof !74

bb.le:                                            ; preds = %bb.ld
  %i.anw = or i64 %i.anl, 1152920405095219200
  store i64 %i.anw, ptr %i.ank, align 8, !noalias !654
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ank)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit534 unwind label %bb.nj

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit534: ; preds = %bb.ld, %bb.lc, %bb.le
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  %i.any = load i64, ptr %i.anx, align 8, !noalias !655
  %i.anz = trunc i64 %i.any to i32
  %i.aoa = and i32 %i.anz, 1023                   ; 2 uses
  %i.aob = icmp eq i32 %i.aoa, 1023
  %i.aoc = select i1 %i.aob, i32 -1, i32 %i.aoa
  %i.aod = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.aoc)
          to label %.noexc536 unwind label %bb.nk

.noexc536:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit534
  %i.aoe = icmp eq i32 %i.aod, 2
  %spec.select.i.i535 = select i1 %i.aoe, i64 2, i64 1
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ank, i64 24
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr %i.aof, i64 %spec.select.i.i535
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !27, !noalias !655 ; 9 uses
  store ptr %i.aoh, ptr %63, align 8, !tbaa !29, !alias.scope !655
  %i.aoi = load i64, ptr %i.aoh, align 8, !noalias !655 ; 3 uses
  %i.aoj = lshr i64 %i.aoi, 40
  %i.aok = trunc nuw nsw i64 %i.aoj to i32
  %i.aol = and i32 %i.aok, 1048575                ; 3 uses
  %i.aom = icmp samesign ult i32 %i.aol, 1048574
  br i1 %i.aom, label %bb.lf, label %bb.lg, !prof !75

bb.lf:                                            ; preds = %.noexc536
  %i.aon = add nuw nsw i32 %i.aol, 1
  %i.aoo = zext nneg i32 %i.aon to i64
  %i.aop = shl nuw nsw i64 %i.aoo, 40
  %i.aoq = and i64 %i.aoi, -1152920405095219201
  %i.aor = or i64 %i.aop, %i.aoq
  store i64 %i.aor, ptr %i.aoh, align 8, !noalias !655
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit538

bb.lg:                                            ; preds = %.noexc536
  %i.aos = icmp eq i32 %i.aol, 1048574
  br i1 %i.aos, label %bb.lh, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit538, !prof !74

bb.lh:                                            ; preds = %bb.lg
  %i.aot = or i64 %i.aoi, 1152920405095219200
  store i64 %i.aot, ptr %i.aoh, align 8, !noalias !655
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aoh)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit538 unwind label %bb.nk

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit538: ; preds = %bb.lg, %bb.lf, %bb.lh
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !656
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !656
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !657
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !286, !noalias !657
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef %i.aov, i32 noundef 5)
          to label %.noexc542 unwind label %bb.nl

.noexc542:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit538
  store ptr %i.aml, ptr %9, align 8, !tbaa !82, !noalias !657
  %i.aow = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull align 8 %9)
          to label %bb.li unwind label %bb.ll, !noalias !657

bb.li:                                            ; preds = %.noexc542
  store ptr %i.aoh, ptr %10, align 8, !tbaa !82, !noalias !657
  %i.aox = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.aow, ptr noundef nonnull align 8 %10)
          to label %bb.lj unwind label %bb.lm, !noalias !657 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2uf11HoExtension19checkExtensionalityEPNS1_11TheoryModelE:bb.a
_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit579: ; preds = %bb.mt, %bb.mu, %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  %i.atf = load ptr, ptr %66, align 8, !tbaa !29  ; 3 uses
  %i.atg = load i64, ptr %i.atf, align 8          ; 3 uses
  %i.ath = and i64 %i.atg, 1152920405095219200
  %.not.i.i580 = icmp eq i64 %i.ath, 1152920405095219200
  br i1 %.not.i.i580, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit596, label %bb.mx, !prof !74

bb.mx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit579
  %i.ati = add i64 %i.atg, 1152920405095219200
  %i.atj = and i64 %i.ati, 1152920405095219200    ; 2 uses
  %i.atk = and i64 %i.atg, -1152920405095219201
  %i.atl = or disjoint i64 %i.atj, %i.atk
  store i64 %i.atl, ptr %i.atf, align 8
  %i.atm = icmp eq i64 %i.atj, 0
  br i1 %i.atm, label %bb.my, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit596, !prof !74

bb.my:                                            ; preds = %bb.mx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.atf)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit596 unwind label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.atn = landingpad { ptr, i32 }
          catch ptr null
  %i.ato = extractvalue { ptr, i32 } %i.atn, 0
  call void @__clang_call_terminate(ptr %i.ato) #25
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit596: ; preds = %bb.my, %bb.mx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit579
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  %i.atp = load ptr, ptr %i.gz, align 8, !tbaa !323, !nonnull !267, !align !268
  %i.atq = load ptr, ptr %65, align 8, !tbaa !29
  store ptr %i.atq, ptr %68, align 8, !tbaa !82
  %i.atr = invoke noundef zeroext i1 @_ZN4cvc58internal6theory22TheoryInferenceManager5lemmaENS0_12NodeTemplateILb0EEENS1_11InferenceIdENS1_13LemmaPropertyE(ptr noundef nonnull align 8 dereferenceable(240) %i.atp, ptr noundef nonnull align 8 %68, i32 noundef 404, i32 noundef 0)
          to label %bb.na unwind label %bb.nt     ; 0 uses

bb.na:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit596
  %i.ats = load ptr, ptr %65, align 8, !tbaa !29  ; 3 uses
  %i.att = load i64, ptr %i.ats, align 8          ; 3 uses
  %i.atu = and i64 %i.att, 1152920405095219200
  %.not.i.i597 = icmp eq i64 %i.atu, 1152920405095219200
  br i1 %.not.i.i597, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit598, label %bb.nb, !prof !74

bb.nb:                                            ; preds = %bb.na
  %i.atv = add i64 %i.att, 1152920405095219200
  %i.atw = and i64 %i.atv, 1152920405095219200    ; 2 uses
  %i.atx = and i64 %i.att, -1152920405095219201
  %i.aty = or disjoint i64 %i.atw, %i.atx
  store i64 %i.aty, ptr %i.ats, align 8
  %i.atz = icmp eq i64 %i.atw, 0
  br i1 %i.atz, label %bb.nc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit598, !prof !74

bb.nc:                                            ; preds = %bb.nb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ats)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit598 unwind label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.aua = landingpad { ptr, i32 }
          catch ptr null
  %i.aub = extractvalue { ptr, i32 } %i.aua, 0
  call void @__clang_call_terminate(ptr %i.aub) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit598: ; preds = %bb.na, %bb.nb, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  %i.auc = load ptr, ptr %60, align 8, !tbaa !29  ; 3 uses
  %i.aud = load i64, ptr %i.auc, align 8          ; 3 uses
  %i.aue = and i64 %i.aud, 1152920405095219200
  %.not.i.i599 = icmp eq i64 %i.aue, 1152920405095219200
  br i1 %.not.i.i599, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600, label %bb.ne, !prof !74

bb.ne:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit598
  %i.auf = add i64 %i.aud, 1152920405095219200
  %i.aug = and i64 %i.auf, 1152920405095219200    ; 2 uses
  %i.auh = and i64 %i.aud, -1152920405095219201
  %i.aui = or disjoint i64 %i.aug, %i.auh
  store i64 %i.aui, ptr %i.auc, align 8
  %i.auj = icmp eq i64 %i.aug, 0
  br i1 %i.auj, label %bb.nf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600, !prof !74

bb.nf:                                            ; preds = %bb.ne
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.auc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600 unwind label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.auk = landingpad { ptr, i32 }
          catch ptr null
  %i.aul = extractvalue { ptr, i32 } %i.auk, 0
  call void @__clang_call_terminate(ptr %i.aul) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit598, %bb.ne, %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  br label %.loopexit739

bb.nh:                                            ; preds = %bb.ky, %.thread712
  %i.aum = landingpad { ptr, i32 }
          cleanup
  br label %bb.np

bb.ni:                                            ; preds = %bb.lb, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit526
  %i.aun = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

bb.nj:                                            ; preds = %bb.le, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit530
  %i.auo = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

bb.nk:                                            ; preds = %bb.lh, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit534
  %i.aup = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

bb.nl:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit538
  %i.auq = landingpad { ptr, i32 }
          cleanup
  br label %.body543

.body543:                                         ; preds = %.body.i540, %bb.nl
  %eh.lpad-body544 = phi { ptr, i32 } [ %i.auq, %bb.nl ], [ %.pn5.i.i541, %.body.i540 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #22
  br label %bb.nm

bb.nm:                                            ; preds = %.body543, %bb.nk
  %.pn238 = phi { ptr, i32 } [ %eh.lpad-body544, %.body543 ], [ %i.aup, %bb.nk ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #22
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nj
  %.pn238.pn = phi { ptr, i32 } [ %.pn238, %bb.nm ], [ %i.auo, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %61) #22
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %bb.ni
  %.pn238.pn.pn = phi { ptr, i32 } [ %.pn238.pn, %bb.nn ], [ %i.aun, %bb.ni ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #22
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nh
  %.pn238.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn, %bb.no ], [ %i.aum, %bb.nh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %bb.nu

bb.nq:                                            ; preds = %.noexc.i555, %bb.md, %bb.ma
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %.body561.thread

bb.nr:                                            ; preds = %.noexc.i565, %bb.ml, %bb.mi
  %i.aus = landingpad { ptr, i32 }
          cleanup
  br label %.body561

bb.ns:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit573
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %.body576

.body576:                                         ; preds = %bb.ms, %bb.ns
  %eh.lpad-body577 = phi { ptr, i32 } [ %i.aut, %bb.ns ], [ %.pn.i, %bb.ms ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.loopexit

.body561.thread:                                  ; preds = %.body.i556, %bb.nq
  %.pn243.pn.ph = phi { ptr, i32 } [ %.pn.i.i557, %.body.i556 ], [ %i.aur, %bb.nq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.loopexit

.body561:                                         ; preds = %.body.i566, %bb.nr
  %.pn243 = phi { ptr, i32 } [ %.pn.i.i567, %.body.i566 ], [ %i.aus, %bb.nr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.loopexit

bb.nt:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit596
  %i.auu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.body561.thread, %.body576, %.body561, %bb.nt
  %.pn246.pn = phi { ptr, i32 } [ %i.auu, %bb.nt ], [ %.pn243.pn.ph, %.body561.thread ], [ %eh.lpad-body577, %.body576 ], [ %.pn243, %.body561 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #22
  br label %bb.nu

bb.nu:                                            ; preds = %.loopexit, %bb.np
  %.pn246.pn.pn = phi { ptr, i32 } [ %.pn246.pn, %.loopexit ], [ %.pn238.pn.pn.pn, %bb.np ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369

.loopexit739:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit324, %bb.kv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600
  %i.auv = phi i1 [ true, %bb.kv ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit324 ]
  %i.auw = load ptr, ptr %32, align 8, !tbaa !29  ; 3 uses
  %i.aux = load i64, ptr %i.auw, align 8          ; 3 uses
  %i.auy = and i64 %i.aux, 1152920405095219200
  %.not.i.i601 = icmp eq i64 %i.auy, 1152920405095219200
  br i1 %.not.i.i601, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, label %bb.nv, !prof !74

bb.nv:                                            ; preds = %.loopexit739
  %i.auz = add i64 %i.aux, 1152920405095219200
  %i.ava = and i64 %i.auz, 1152920405095219200    ; 2 uses
  %i.avb = and i64 %i.aux, -1152920405095219201
  %i.avc = or disjoint i64 %i.ava, %i.avb
  store i64 %i.avc, ptr %i.auw, align 8
  %i.avd = icmp eq i64 %i.ava, 0
  br i1 %i.avd, label %bb.nw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, !prof !74

bb.nw:                                            ; preds = %bb.nv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.auw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602 unwind label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.ave = landingpad { ptr, i32 }
          catch ptr null
  %i.avf = extractvalue { ptr, i32 } %i.ave, 0
  call void @__clang_call_terminate(ptr %i.avf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602: ; preds = %.loopexit739, %bb.nv, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.oe

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369: ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.du, %bb.ei, %bb.nu, %bb.ku
  %.pn246.pn.pn.pn = phi { ptr, i32 } [ %.pn246.pn.pn, %bb.nu ], [ %.pn228.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ku ], [ %.pn199.pn, %bb.du ], [ %.pn202, %bb.ei ], [ %.pn204.pn.pn.pn.pn.pn.pn, %bb.gw ], [ %.pn204.pn.pn.pn.pn.pn.pn, %bb.gx ], [ %.pn204.pn.pn.pn.pn.pn.pn, %bb.gy ] ; 3 uses
  %i.avg = load ptr, ptr %32, align 8, !tbaa !29  ; 3 uses
  %i.avh = load i64, ptr %i.avg, align 8          ; 3 uses
  %i.avi = and i64 %i.avh, 1152920405095219200
  %.not.i.i603 = icmp eq i64 %i.avi, 1152920405095219200
  br i1 %.not.i.i603, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, label %bb.ny, !prof !74

bb.ny:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369
  %i.avj = add i64 %i.avh, 1152920405095219200
  %i.avk = and i64 %i.avj, 1152920405095219200    ; 2 uses
  %i.avl = and i64 %i.avh, -1152920405095219201
  %i.avm = or disjoint i64 %i.avk, %i.avl
  store i64 %i.avm, ptr %i.avg, align 8
  %i.avn = icmp eq i64 %i.avk, 0
  br i1 %i.avn, label %bb.nz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, !prof !74

bb.nz:                                            ; preds = %bb.ny
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 unwind label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.avo = landingpad { ptr, i32 }
          catch ptr null
  %i.avp = extractvalue { ptr, i32 } %i.avo, 0
  call void @__clang_call_terminate(ptr %i.avp) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604: ; preds = %bb.nz, %bb.ny, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369, %bb.dc
  %.pn246.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kp, %bb.dc ], [ %.pn246.pn.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369 ], [ %.pn246.pn.pn.pn, %bb.ny ], [ %.pn246.pn.pn.pn, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.oi

bb.ob:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315
  %i.avq = load ptr, ptr %28, align 8, !tbaa !29
  store ptr %i.avq, ptr %69, align 8, !tbaa !82
  %i.avr = invoke noundef i32 @_ZN4cvc58internal6theory2uf11HoExtension19applyExtensionalityENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 %69)
          to label %bb.oc unwind label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.avs = add i32 %i.avr, %.21771110
  br label %bb.oe

bb.od:                                            ; preds = %bb.ob
  %i.avt = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

bb.oe:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, %bb.oc
  %.4179 = phi i32 [ %.21771110, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602 ], [ %i.avs, %bb.oc ]
  %.599 = phi i1 [ %i.auv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602 ], [ true, %bb.oc ]
  %i.avu = load ptr, ptr %28, align 8, !tbaa !29  ; 3 uses
  %i.avv = load i64, ptr %i.avu, align 8          ; 3 uses
  %i.avw = and i64 %i.avv, 1152920405095219200
  %.not.i.i605 = icmp eq i64 %i.avw, 1152920405095219200
  br i1 %.not.i.i605, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606, label %bb.of, !prof !74

bb.of:                                            ; preds = %bb.oe
  %i.avx = add i64 %i.avv, 1152920405095219200
  %i.avy = and i64 %i.avx, 1152920405095219200    ; 2 uses
  %i.avz = and i64 %i.avv, -1152920405095219201
  %i.awa = or disjoint i64 %i.avy, %i.avz
  store i64 %i.awa, ptr %i.avu, align 8
  %i.awb = icmp eq i64 %i.avy, 0
  br i1 %i.awb, label %bb.og, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606, !prof !74

bb.og:                                            ; preds = %bb.of
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606 unwind label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.awc = landingpad { ptr, i32 }
          catch ptr null
  %i.awd = extractvalue { ptr, i32 } %i.awc, 0
  call void @__clang_call_terminate(ptr %i.awd) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606: ; preds = %bb.oe, %bb.of, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br i1 %.599, label %bb.om, label %.loopexit741

bb.oi:                                            ; preds = %bb.od, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604
  %.pn246.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn246.pn.pn.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 ], [ %i.avt, %bb.od ] ; 3 uses
  %i.awe = load ptr, ptr %28, align 8, !tbaa !29  ; 3 uses
  %i.awf = load i64, ptr %i.awe, align 8          ; 3 uses
  %i.awg = and i64 %i.awf, 1152920405095219200
  %.not.i.i607 = icmp eq i64 %i.awg, 1152920405095219200
  br i1 %.not.i.i607, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608, label %bb.oj, !prof !74

bb.oj:                                            ; preds = %bb.oi
  %i.awh = add i64 %i.awf, 1152920405095219200
  %i.awi = and i64 %i.awh, 1152920405095219200    ; 2 uses
  %i.awj = and i64 %i.awf, -1152920405095219201
  %i.awk = or disjoint i64 %i.awi, %i.awj
  store i64 %i.awk, ptr %i.awe, align 8
  %i.awl = icmp eq i64 %i.awi, 0
  br i1 %i.awl, label %bb.ok, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608, !prof !74

bb.ok:                                            ; preds = %bb.oj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.awe)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608 unwind label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.awm = landingpad { ptr, i32 }
          catch ptr null
  %i.awn = extractvalue { ptr, i32 } %i.awm, 0
  call void @__clang_call_terminate(ptr %i.awn) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608: ; preds = %bb.ok, %bb.oj, %bb.oi, %.body
  %.pn246.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn246.pn.pn.pn.pn.pn, %bb.oi ], [ %.pn246.pn.pn.pn.pn.pn, %bb.oj ], [ %.pn246.pn.pn.pn.pn.pn, %bb.ok ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.oo

bb.om:                                            ; preds = %bb.bz, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606
  %.5180 = phi i32 [ %.4179, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606 ], [ %.21771110, %bb.bz ] ; 2 uses
  %indvars.iv.next1185 = add nuw nsw i64 %indvars.iv1184, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1185 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.hp
  br i1 %exitcond.not, label %.loopexit740, label %.lr.ph1113, !llvm.loop !630

._crit_edge1119:                                  ; preds = %.loopexit740, %bb.by
  %.1176.lcssa = phi i32 [ %.01751123, %bb.by ], [ %.2177.lcssa, %.loopexit740 ] ; 2 uses
  %i.awo = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0683.01122) #28 ; 2 uses
  %.not737 = icmp eq ptr %i.awo, %i.h
  br i1 %.not737, label %.loopexit741, label %bb.by, !llvm.loop !631

.loopexit741:                                     ; preds = %._crit_edge1119, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606, %bb.bx, %bb.bv, %bb.bw
  %.11195 = phi i32 [ 0, %bb.bv ], [ 0, %bb.bw ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606 ], [ 0, %bb.bx ], [ %.1176.lcssa, %._crit_edge1119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.awp = load ptr, ptr %i.i, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St6vectorINS1_12NodeTemplateILb1EEESaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.awp)
          to label %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit unwind label %bb.on

bb.on:                                            ; preds = %.loopexit741
  %i.awq = landingpad { ptr, i32 }
          catch ptr null
  %i.awr = extractvalue { ptr, i32 } %i.awq, 0
  call void @__clang_call_terminate(ptr %i.awr) #25
  unreachable

_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit: ; preds = %.loopexit741
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  ret i32 %.11195

bb.oo:                                            ; preds = %.loopexit747, %.loopexit.split-lp, %bb.cy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608, %bb.bs, %bb.aa
  %.pn260.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %.pn260.pn.pn, %bb.bs ], [ %i.kl, %bb.cy ], [ %.pn246.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608 ], [ %lpad.loopexit, %.loopexit747 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.aws = load ptr, ptr %i.i, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St6vectorINS1_12NodeTemplateILb1EEESaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.aws)
          to label %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit609 unwind label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.awt = landingpad { ptr, i32 }
          catch ptr null
  %i.awu = extractvalue { ptr, i32 } %i.awt, 0
  call void @__clang_call_terminate(ptr %i.awu) #25
  unreachable

_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit609: ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  resume { ptr, i32 } %.pn260.pn.pn.pn.pn
}

declare noundef ptr @_ZNK4cvc58internal6theory11TheoryState17getEqualityEngineEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory2eq17EqClassesIteratorC1EPKNS2_14EqualityEngineE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory2eq17EqClassesIterator10isFinishedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal6theory2eq17EqClassesIteratordeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal3Env12isFiniteTypeENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(696), ptr noundef align 8) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq17EqClassesIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory22TheoryInferenceManager15setModelUnsoundENS1_12IncompleteIdE(ptr noundef nonnull align 8 dereferenceable(240), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory2uf11HoExtension22collectModelInfoHoTermENS0_12NodeTemplateILb1EEEPNS1_11TheoryModelE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 26
  br i1 %i.e, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
end_hunk_1
