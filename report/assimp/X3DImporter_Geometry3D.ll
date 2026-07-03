inline.NumInlined: 1396
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a

bb.az:                                            ; preds = %.noexc322
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gq, ptr align 4 %i.gf, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i318

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i318: ; preds = %bb.az, %.noexc322
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %.not.i17.i.i319 = icmp eq ptr %i.gf, null
  br i1 %.not.i17.i.i319, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i320, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i318
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gi) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i320

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i320: ; preds = %bb.ba, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i318
  store ptr %i.gq, ptr %13, align 8
  store ptr %i.gt, ptr %i.da, align 8
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.go ; 2 uses
  store ptr %i.gu, ptr %i.dy, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit323

_ZNSt6vectorIfSaIfEE9push_backERKf.exit323:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i320, %bb.ax
  %i.gv = phi ptr [ %i.gu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i320 ], [ %.pre1074, %bb.ax ] ; 2 uses
  %i.gw = phi ptr [ %i.gt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i320 ], [ %i.ge, %bb.ax ] ; 2 uses
  %.not.i324 = icmp eq ptr %i.gw, %i.gv
  br i1 %.not.i324, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit323
  store float %.sroa.15.0, ptr %i.gw, align 4
  %i.gx = load ptr, ptr %i.da, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 2 uses
  store ptr %i.gy, ptr %i.da, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit333

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit323
  %i.gz = load ptr, ptr %13, align 8              ; 4 uses
  %i.ha = ptrtoint ptr %i.gv to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 6 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775804
  br i1 %i.hd, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i325

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i325: ; preds = %bb.bc
  %i.he = ashr exact i64 %i.hc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i326 = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i.i326, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 2305843009213693951)
  %i.hi = select i1 %i.hg, i64 2305843009213693951, i64 %i.hh ; 3 uses
  %.not.i.i.i327 = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i.i327)
  %i.hj = shl nuw nsw i64 %i.hi, 2
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #21
          to label %.noexc332 unwind label %.loopexit984 ; 4 uses

.noexc332:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i325
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 %i.hc ; 2 uses
  store float %.sroa.15.0, ptr %i.hl, align 4
  %i.hm = icmp sgt i64 %i.hc, 0
  br i1 %i.hm, label %bb.bd, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i328

bb.bd:                                            ; preds = %.noexc332
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hk, ptr align 4 %i.gz, i64 %i.hc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i328

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i328: ; preds = %bb.bd, %.noexc332
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  %.not.i17.i.i329 = icmp eq ptr %i.gz, null
  br i1 %.not.i17.i.i329, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i330, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i328
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hc) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i330

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i330: ; preds = %bb.be, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i328
  store ptr %i.hk, ptr %13, align 8
  store ptr %i.hn, ptr %i.da, align 8
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hi
  store ptr %i.ho, ptr %i.dy, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit333

_ZNSt6vectorIfSaIfEE9push_backERKf.exit333:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i330, %bb.bb
  %i.hp = phi ptr [ %i.hn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i330 ], [ %i.gy, %bb.bb ] ; 2 uses
  %i.hq = add nuw i64 %.0222998, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.hq, %i.el
  br i1 %exitcond.not, label %.loopexit983.loopexit, label %.lr.ph, !llvm.loop !19

.loopexit984:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i305, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i315, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i325
  %lpad.loopexit986 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

.loopexit.split-lp985:                            ; preds = %.invoke
  %lpad.loopexit.split-lp987 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

.loopexit983.loopexit:                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit333
  %.pre1075 = load ptr, ptr %13, align 8
  br label %.loopexit983

.loopexit983:                                     ; preds = %.loopexit983.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit, %bb.ag
  %i.hr = phi ptr [ %.pre1075, %.loopexit983.loopexit ], [ %i.ej, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.dc, %bb.ag ]
  %i.hs = phi ptr [ %i.hp, %.loopexit983.loopexit ], [ %i.ek, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.db, %bb.ag ]
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = and i64 %i.hv, 12
  %.not = icmp eq i64 %i.hw, 0
  br i1 %.not, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %.loopexit983
  %i.hx = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull @.str.37)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke void @__cxa_throw(ptr nonnull %i.hx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.jk unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hx) #20
  br label %bb.jf

bb.bi:                                            ; preds = %bb.bg
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.bj:                                            ; preds = %.loopexit983
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.ib = load ptr, ptr %i.ia, align 8            ; 4 uses
  %i.ic = load ptr, ptr %14, align 8              ; 9 uses
  %i.id = ptrtoint ptr %i.ib to i64               ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64               ; 4 uses
  %i.if = sub i64 %i.id, %i.ie                    ; 4 uses
  %i.ig = ashr exact i64 %i.if, 3                 ; 2 uses
  %i.ih = load ptr, ptr %i.av, align 8
  %i.ii = load ptr, ptr %15, align 8
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = sdiv exact i64 %i.il, 12                ; 7 uses
  %i.in = icmp ult i64 %i.ig, %i.im
  br i1 %i.in, label %bb.bk, label %.loopexit977

bb.bk:                                            ; preds = %bb.bj
  %i.io = icmp eq i64 %i.if, 8
  br i1 %i.io, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ip = load i32, ptr %i.ic, align 4
  %.sroa_idx843 = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.iq = load i32, ptr %.sroa_idx843, align 4
  br label %bb.bn

bb.bm:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i, %bb.bo
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.bn:                                            ; preds = %bb.bk, %bb.bl
  %.sroa.0845.0 = phi i32 [ %i.ip, %bb.bl ], [ 1065353216, %bb.bk ] ; 2 uses
  %.sroa.8847.0 = phi i32 [ %i.iq, %bb.bl ], [ 1065353216, %bb.bk ] ; 2 uses
  %i.is = icmp ugt i64 %i.im, 1152921504606846975
  br i1 %i.is, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #23
          to label %.noexc335 unwind label %bb.bm

.noexc335:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.it = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = sub i64 %i.iv, %i.ie                    ; 2 uses
  %i.ix = ashr exact i64 %i.iw, 3
  %i.iy = icmp ult i64 %i.ix, %i.im
  br i1 %i.iy, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.bp
  %i.iz = shl nuw nsw i64 %i.im, 3
  %i.ja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #21
          to label %.noexc336 unwind label %bb.bm ; 7 uses

.noexc336:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.ic, %i.ib
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc336
  %i.jb = ptrtoaddr ptr %i.ja to i64
  %i.jc = sub i64 %i.id, %i.ie
  %i.jd = add i64 %i.jc, -8                       ; 2 uses
  %i.je = lshr i64 %i.jd, 3
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jd, 72
  %i.jg = sub i64 %i.ie, %i.jb
  %diff.check = icmp ugt i64 %i.jg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader1430, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.jf, 4611686018427387900     ; 3 uses
  %i.jh = shl i64 %n.vec, 3                       ; 2 uses
  %i.ji = getelementptr i8, ptr %i.ja, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ic, i64 %i.jh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ja, i64 %i.jk ; 2 uses
  %next.gep1387 = getelementptr i8, ptr %i.ic, i64 %i.jk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jl = getelementptr i8, ptr %next.gep1387, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1387, align 4, !alias.scope !23, !noalias !20
  %wide.load1388 = load <2 x i64>, ptr %i.jl, align 4, !alias.scope !23, !noalias !20
  %i.jm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !20, !noalias !23
  store <2 x i64> %wide.load1388, ptr %i.jm, align 4, !alias.scope !20, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader1430

.lr.ph.i.i.i.i.preheader1430:                     ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.preheader ], [ %i.ji, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.preheader ], [ %i.jj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1430, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.jq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1430 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.jp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1430 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jo = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !23, !noalias !20
  store i64 %i.jo, ptr %.012.i.i.i.i, align 4, !alias.scope !20, !noalias !23
  %i.jp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.jp, %i.ib
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc336
  %.not.i8.i334 = icmp eq ptr %i.ic, null
  br i1 %.not.i8.i334, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.iw) #22
  %.pre1076.pre = load ptr, ptr %i.av, align 8
  %.pre1077.pre = load ptr, ptr %15, align 8
  %.pre1147 = ptrtoint ptr %.pre1076.pre to i64
  %.pre1148 = ptrtoint ptr %.pre1077.pre to i64
  %.pre1149 = sub i64 %.pre1147, %.pre1148
  %.pre1150 = sdiv exact i64 %.pre1149, 12
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bq, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.pre1116.pre-phi = phi i64 [ %.pre1150, %bb.bq ], [ %i.im, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ]
  store ptr %i.ja, ptr %14, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.if ; 2 uses
  store ptr %i.jr, ptr %i.ia, align 8
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.im
  store ptr %i.js, ptr %i.it, align 8
  %.pre1124 = ashr exact i64 %i.if, 3
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.bp
  %.pre-phi1125 = phi i64 [ %.pre1124, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ig, %bb.bp ] ; 2 uses
  %.pre-phi1117 = phi i64 [ %.pre1116.pre-phi, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.im, %bb.bp ] ; 2 uses
  %i.jt = phi ptr [ %i.jr, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ib, %bb.bp ]
  %i.ju = sub nsw i64 %.pre-phi1117, %.pre-phi1125
  %.not1034 = icmp eq i64 %.pre-phi1117, %.pre-phi1125
  br i1 %.not1034, label %.loopexit977, label %.lr.ph1000

.lr.ph1000:                                       ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit
  %i.jv = phi ptr [ %i.le, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.jt, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit ] ; 6 uses
  %.0223999 = phi i64 [ %i.lf, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ], [ 0, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit ]
  %i.jw = load ptr, ptr %i.it, align 8
  %.not.i337 = icmp eq ptr %i.jv, %i.jw
  br i1 %.not.i337, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph1000
  store i32 %.sroa.0845.0, ptr %i.jv, align 4
  %.sroa_idx840 = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store i32 %.sroa.8847.0, ptr %.sroa_idx840, align 4
  %i.jx = load ptr, ptr %i.ia, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  store ptr %i.jy, ptr %i.ia, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.bs:                                            ; preds = %.lr.ph1000
  %i.jz = load ptr, ptr %14, align 8              ; 7 uses
  %i.ka = ptrtoint ptr %i.jv to i64               ; 2 uses
  %i.kb = ptrtoint ptr %i.jz to i64               ; 3 uses
  %i.kc = sub i64 %i.ka, %i.kb                    ; 4 uses
  %i.kd = icmp eq i64 %i.kc, 9223372036854775800
  br i1 %i.kd, label %bb.bt, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i338

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc346 unwind label %.loopexit.split-lp979

.noexc346:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i338: ; preds = %bb.bs
  %i.ke = ashr exact i64 %i.kc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i339 = call i64 @llvm.umax.i64(i64 %i.ke, i64 1)
  %i.kf = add nsw i64 %.sroa.speculated.i.i.i339, %i.ke ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.ke
  %i.kh = call i64 @llvm.umin.i64(i64 %i.kf, i64 1152921504606846975)
  %i.ki = select i1 %i.kg, i64 1152921504606846975, i64 %i.kh ; 3 uses
  %.not.i.i.i340 = icmp ne i64 %i.ki, 0
  call void @llvm.assume(i1 %.not.i.i.i340)
  %i.kj = shl nuw nsw i64 %i.ki, 3
  %i.kk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #21
          to label %.noexc347 unwind label %.loopexit978 ; 8 uses

.noexc347:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i338
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kc ; 2 uses
  store i32 %.sroa.0845.0, ptr %i.kl, align 4
  %.sroa_idx842 = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  store i32 %.sroa.8847.0, ptr %.sroa_idx842, align 4
  %.not10.i.i.i.i.i341 = icmp eq ptr %i.jz, %i.jv
  br i1 %.not10.i.i.i.i.i341, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i342.preheader

.lr.ph.i.i.i.i.i342.preheader:                    ; preds = %.noexc347
  %i.km = ptrtoaddr ptr %i.kk to i64
  %i.kn = sub i64 %i.ka, %i.kb
  %i.ko = add i64 %i.kn, -8                       ; 2 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check1393 = icmp ult i64 %i.ko, 24
  %i.kr = sub i64 %i.kb, %i.km
  %diff.check1391 = icmp ugt i64 %i.kr, -32
  %or.cond1408 = or i1 %min.iters.check1393, %diff.check1391
  br i1 %or.cond1408, label %.lr.ph.i.i.i.i.i342.preheader1428, label %vector.ph1394

vector.ph1394:                                    ; preds = %.lr.ph.i.i.i.i.i342.preheader
  %n.vec1396 = and i64 %i.kq, 4611686018427387900 ; 3 uses
  %i.ks = shl i64 %n.vec1396, 3                   ; 2 uses
  %i.kt = getelementptr i8, ptr %i.kk, i64 %i.ks  ; 2 uses
  %i.ku = getelementptr i8, ptr %i.jz, i64 %i.ks
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1394
  %index1398 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1403, %vector.body1397 ] ; 2 uses
  %i.kv = shl i64 %index1398, 3                   ; 2 uses
  %next.gep1399 = getelementptr i8, ptr %i.kk, i64 %i.kv ; 2 uses
  %next.gep1400 = getelementptr i8, ptr %i.jz, i64 %i.kv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.kw = getelementptr i8, ptr %next.gep1400, i64 16
  %wide.load1401 = load <2 x i64>, ptr %next.gep1400, align 4, !alias.scope !32, !noalias !29
  %wide.load1402 = load <2 x i64>, ptr %i.kw, align 4, !alias.scope !32, !noalias !29
  %i.kx = getelementptr i8, ptr %next.gep1399, i64 16
  store <2 x i64> %wide.load1401, ptr %next.gep1399, align 4, !alias.scope !29, !noalias !32
  store <2 x i64> %wide.load1402, ptr %i.kx, align 4, !alias.scope !29, !noalias !32
  %index.next1403 = add nuw i64 %index1398, 4     ; 2 uses
  %i.ky = icmp eq i64 %index.next1403, %n.vec1396
  br i1 %i.ky, label %middle.block1404, label %vector.body1397, !llvm.loop !34

middle.block1404:                                 ; preds = %vector.body1397
  %cmp.n1405 = icmp eq i64 %i.kq, %n.vec1396
  br i1 %cmp.n1405, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i342.preheader1428

.lr.ph.i.i.i.i.i342.preheader1428:                ; preds = %.lr.ph.i.i.i.i.i342.preheader, %middle.block1404
  %.012.i.i.i.i.i343.ph = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i342.preheader ], [ %i.kt, %middle.block1404 ]
  %.0911.i.i.i.i.i344.ph = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i342.preheader ], [ %i.ku, %middle.block1404 ]
  br label %.lr.ph.i.i.i.i.i342

.lr.ph.i.i.i.i.i342:                              ; preds = %.lr.ph.i.i.i.i.i342.preheader1428, %.lr.ph.i.i.i.i.i342
  %.012.i.i.i.i.i343 = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i342 ], [ %.012.i.i.i.i.i343.ph, %.lr.ph.i.i.i.i.i342.preheader1428 ] ; 2 uses
  %.0911.i.i.i.i.i344 = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i342 ], [ %.0911.i.i.i.i.i344.ph, %.lr.ph.i.i.i.i.i342.preheader1428 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.kz = load i64, ptr %.0911.i.i.i.i.i344, align 4, !alias.scope !32, !noalias !29
  store i64 %i.kz, ptr %.012.i.i.i.i.i343, align 4, !alias.scope !29, !noalias !32
  %i.la = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i344, i64 8 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i343, i64 8 ; 2 uses
  %.not.i.i.i.i.i345 = icmp eq ptr %i.la, %i.jv
  br i1 %.not.i.i.i.i.i345, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i342, !llvm.loop !35

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i342, %middle.block1404, %.noexc347
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kk, %.noexc347 ], [ %i.kt, %middle.block1404 ], [ %i.lb, %.lr.ph.i.i.i.i.i342 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kc) #22
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bu, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.kk, ptr %14, align 8
  store ptr %i.lc, ptr %i.ia, align 8
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.ki
  store ptr %i.ld, ptr %i.it, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.br
  %i.le = phi ptr [ %i.lc, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.jy, %bb.br ]
  %i.lf = add nuw i64 %.0223999, 1                ; 2 uses
  %exitcond1053.not = icmp eq i64 %i.lf, %i.ju
  br i1 %exitcond1053.not, label %.loopexit977, label %.lr.ph1000, !llvm.loop !36

.loopexit978:                                     ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i338
  %lpad.loopexit980 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

.loopexit.split-lp979:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp981 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

.loopexit977:                                     ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit, %bb.bj
  %i.lg = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #21
          to label %bb.bv unwind label %bb.w      ; 34 uses

bb.bv:                                            ; preds = %.loopexit977
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %i.li, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 2 uses
  store ptr %i.ll, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store i64 0, ptr %i.lm, align 8
  store i8 0, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 48 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  store ptr %i.ln, ptr %i.lo, align 8
  store ptr %i.ln, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  store i64 0, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lg, i64 72
  store i32 20, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 80 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 88
  store ptr %i.lr, ptr %i.ls, align 8
  store ptr %i.lr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 96 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.lu, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24X3DNodeElementIndexedSet, i64 16), ptr %i.lg, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i8 0, i64 24, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 152 ; 45 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, i8 0, i64 24, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lg, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i8 0, i64 24, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lg, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, i8 0, i64 24, i1 false)
  %i.lz = load i64, ptr %i.d, align 8
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lk, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bw, %bb.bv
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lg, i64 113
  store i8 %.0871, ptr %i.mb, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lg, i64 145
  store i8 %.0872, ptr %i.mc, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.lg, i64 176
  store float %.0873, ptr %i.md, align 8
  store i8 %.0876, ptr %i.lu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.me = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.mf = load ptr, ptr %12, align 8              ; 6 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = ashr exact i64 %i.mi, 3                 ; 4 uses
  %i.mk = icmp ult i64 %i.mj, 4
  br i1 %i.mk, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %.preheader39.i

.preheader39.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ml = load float, ptr %i.mf, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mn = load float, ptr %i.mm, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge34.i, %.preheader39.i
  %.03146.i = phi i64 [ 3, %.preheader39.i ], [ %.02841.i, %.critedge34.i ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.03146.i ; 4 uses
  %i.mp = load float, ptr %i.mo, align 4
  %i.mq = fcmp oeq float %i.ml, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.ms = load float, ptr %i.mr, align 4
  %i.mt = fcmp oeq float %i.mn, %i.ms
  %i.mu = select i1 %i.mq, i1 %i.mt, i1 false
  %.02841.i = add nuw i64 %.03146.i, 1            ; 4 uses
  br i1 %i.mu, label %.preheader.i, label %.critedge34.i

.preheader.i:                                     ; preds = %bb.bx
  %.not42.i = icmp ult i64 %.02841.i, %i.mj
  br i1 %.not42.i, label %.lr.ph.i, label %.critedge.i

bb.by:                                            ; preds = %.lr.ph.i
  %i.mv = add i64 %.02943.i, 1
  %.028.i = add i64 %.02844.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %.028.i, %i.mj
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !37

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.by
  %.02844.i = phi i64 [ %.028.i, %bb.by ], [ %.02841.i, %.preheader.i ] ; 2 uses
  %.02943.i = phi i64 [ %i.mv, %bb.by ], [ 1, %.preheader.i ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.02943.i ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.02844.i ; 2 uses
  %i.my = load float, ptr %i.mw, align 4
  %i.mz = load float, ptr %i.mx, align 4
  %i.na = fcmp une float %i.my, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.nc = load float, ptr %i.nb, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.ne = load float, ptr %i.nd, align 4
  %i.nf = fcmp une float %i.nc, %i.ne
  %i.ng = select i1 %i.na, i1 true, i1 %i.nf
  br i1 %i.ng, label %.critedge34.i, label %bb.by

.critedge.i:                                      ; preds = %.preheader.i, %bb.by
  %.not.i.i.i349 = icmp eq ptr %i.mo, %i.me
  br i1 %.not.i.i.i349, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.critedge.i
  store ptr %i.mo, ptr %i.bz, align 8
end_hunk_0
