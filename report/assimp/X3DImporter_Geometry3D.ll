inline.NumInlined: 1396
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 2 uses
  store float %.sroa.11853.0, ptr %i.gr, align 4
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.az, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i318

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
  %20 = sub i64 %i.id, %i.ie
  %21 = add i64 %20, -8                           ; 2 uses
  %i.jc = lshr i64 %21, 3
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %21, 72
  %i.je = sub i64 %i.ie, %i.jb
  %diff.check = icmp ugt i64 %i.je, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader1430, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.jd, 4611686018427387900     ; 3 uses
  %i.jf = shl i64 %n.vec, 3                       ; 2 uses
  %i.jg = getelementptr i8, ptr %i.ja, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.ic, i64 %i.jf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ji = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ja, i64 %i.ji ; 2 uses
  %next.gep1387 = getelementptr i8, ptr %i.ic, i64 %i.ji ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jj = getelementptr i8, ptr %next.gep1387, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1387, align 4, !alias.scope !23, !noalias !20
  %wide.load1388 = load <2 x i64>, ptr %i.jj, align 4, !alias.scope !23, !noalias !20
  %i.jk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !20, !noalias !23
  store <2 x i64> %wide.load1388, ptr %i.jk, align 4, !alias.scope !20, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader1430

.lr.ph.i.i.i.i.preheader1430:                     ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.preheader ], [ %i.jg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.preheader ], [ %i.jh, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1430, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.jo, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1430 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.jn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1430 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jm = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !23, !noalias !20
  store i64 %i.jm, ptr %.012.i.i.i.i, align 4, !alias.scope !20, !noalias !23
  %i.jn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.jn, %i.ib
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
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.if ; 2 uses
  store ptr %i.jp, ptr %i.ia, align 8
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.im
  store ptr %i.jq, ptr %i.it, align 8
  %.pre1124 = ashr exact i64 %i.if, 3
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.bp
  %.pre-phi1125 = phi i64 [ %.pre1124, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ig, %bb.bp ] ; 2 uses
  %.pre-phi1117 = phi i64 [ %.pre1116.pre-phi, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.im, %bb.bp ] ; 2 uses
  %i.jr = phi ptr [ %i.jp, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ib, %bb.bp ]
  %i.js = sub nsw i64 %.pre-phi1117, %.pre-phi1125
  %.not1034 = icmp eq i64 %.pre-phi1117, %.pre-phi1125
  br i1 %.not1034, label %.loopexit977, label %.lr.ph1000

.lr.ph1000:                                       ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit
  %i.jt = phi ptr [ %i.la, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.jr, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit ] ; 6 uses
  %.0223999 = phi i64 [ %i.lb, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit ], [ 0, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE7reserveEm.exit ]
  %i.ju = load ptr, ptr %i.it, align 8
  %.not.i337 = icmp eq ptr %i.jt, %i.ju
  br i1 %.not.i337, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph1000
  store i32 %.sroa.0845.0, ptr %i.jt, align 4
  %.sroa_idx840 = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 %.sroa.8847.0, ptr %.sroa_idx840, align 4
  %i.jv = load ptr, ptr %i.ia, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  store ptr %i.jw, ptr %i.ia, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

bb.bs:                                            ; preds = %.lr.ph1000
  %i.jx = load ptr, ptr %14, align 8              ; 7 uses
  %i.jy = ptrtoint ptr %i.jt to i64               ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 3 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 4 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.bt, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i338

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc346 unwind label %.loopexit.split-lp979

.noexc346:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i338: ; preds = %bb.bs
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i.i339 = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i339, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i.i340 = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i.i340)
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #21
          to label %.noexc347 unwind label %.loopexit978 ; 8 uses

.noexc347:                                        ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i338
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ka ; 2 uses
  store i32 %.sroa.0845.0, ptr %i.kj, align 4
  %.sroa_idx842 = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store i32 %.sroa.8847.0, ptr %.sroa_idx842, align 4
  %.not10.i.i.i.i.i341 = icmp eq ptr %i.jx, %i.jt
  br i1 %.not10.i.i.i.i.i341, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i342.preheader

.lr.ph.i.i.i.i.i342.preheader:                    ; preds = %.noexc347
  %i.kk = ptrtoaddr ptr %i.ki to i64
  %22 = sub i64 %i.jy, %i.jz
  %23 = add i64 %22, -8                           ; 2 uses
  %i.kl = lshr i64 %23, 3
  %i.km = add nuw nsw i64 %i.kl, 1                ; 2 uses
  %min.iters.check1393 = icmp ult i64 %23, 24
  %i.kn = sub i64 %i.jz, %i.kk
  %diff.check1391 = icmp ugt i64 %i.kn, -32
  %or.cond1408 = or i1 %min.iters.check1393, %diff.check1391
  br i1 %or.cond1408, label %.lr.ph.i.i.i.i.i342.preheader1428, label %vector.ph1394

vector.ph1394:                                    ; preds = %.lr.ph.i.i.i.i.i342.preheader
  %n.vec1396 = and i64 %i.km, 4611686018427387900 ; 3 uses
  %i.ko = shl i64 %n.vec1396, 3                   ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ki, i64 %i.ko  ; 2 uses
  %i.kq = getelementptr i8, ptr %i.jx, i64 %i.ko
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1394
  %index1398 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1403, %vector.body1397 ] ; 2 uses
  %i.kr = shl i64 %index1398, 3                   ; 2 uses
  %next.gep1399 = getelementptr i8, ptr %i.ki, i64 %i.kr ; 2 uses
  %next.gep1400 = getelementptr i8, ptr %i.jx, i64 %i.kr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.ks = getelementptr i8, ptr %next.gep1400, i64 16
  %wide.load1401 = load <2 x i64>, ptr %next.gep1400, align 4, !alias.scope !32, !noalias !29
  %wide.load1402 = load <2 x i64>, ptr %i.ks, align 4, !alias.scope !32, !noalias !29
  %i.kt = getelementptr i8, ptr %next.gep1399, i64 16
  store <2 x i64> %wide.load1401, ptr %next.gep1399, align 4, !alias.scope !29, !noalias !32
  store <2 x i64> %wide.load1402, ptr %i.kt, align 4, !alias.scope !29, !noalias !32
  %index.next1403 = add nuw i64 %index1398, 4     ; 2 uses
  %i.ku = icmp eq i64 %index.next1403, %n.vec1396
  br i1 %i.ku, label %middle.block1404, label %vector.body1397, !llvm.loop !34

middle.block1404:                                 ; preds = %vector.body1397
  %cmp.n1405 = icmp eq i64 %i.km, %n.vec1396
  br i1 %cmp.n1405, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i342.preheader1428

.lr.ph.i.i.i.i.i342.preheader1428:                ; preds = %.lr.ph.i.i.i.i.i342.preheader, %middle.block1404
  %.012.i.i.i.i.i343.ph = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i342.preheader ], [ %i.kp, %middle.block1404 ]
  %.0911.i.i.i.i.i344.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i342.preheader ], [ %i.kq, %middle.block1404 ]
  br label %.lr.ph.i.i.i.i.i342

.lr.ph.i.i.i.i.i342:                              ; preds = %.lr.ph.i.i.i.i.i342.preheader1428, %.lr.ph.i.i.i.i.i342
  %.012.i.i.i.i.i343 = phi ptr [ %i.kx, %.lr.ph.i.i.i.i.i342 ], [ %.012.i.i.i.i.i343.ph, %.lr.ph.i.i.i.i.i342.preheader1428 ] ; 2 uses
  %.0911.i.i.i.i.i344 = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i342 ], [ %.0911.i.i.i.i.i344.ph, %.lr.ph.i.i.i.i.i342.preheader1428 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.kv = load i64, ptr %.0911.i.i.i.i.i344, align 4, !alias.scope !32, !noalias !29
  store i64 %i.kv, ptr %.012.i.i.i.i.i343, align 4, !alias.scope !29, !noalias !32
  %i.kw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i344, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i343, i64 8 ; 2 uses
  %.not.i.i.i.i.i345 = icmp eq ptr %i.kw, %i.jt
  br i1 %.not.i.i.i.i.i345, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i342, !llvm.loop !35

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i342, %middle.block1404, %.noexc347
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ki, %.noexc347 ], [ %i.kp, %middle.block1404 ], [ %i.kx, %.lr.ph.i.i.i.i.i342 ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.ka) #22
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bu, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ki, ptr %14, align 8
  store ptr %i.ky, ptr %i.ia, align 8
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.kz, ptr %i.it, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.br
  %i.la = phi ptr [ %i.ky, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.jw, %bb.br ]
  %i.lb = add nuw i64 %.0223999, 1                ; 2 uses
  %exitcond1053.not = icmp eq i64 %i.lb, %i.js
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
  %i.lc = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #21
          to label %bb.bv unwind label %bb.w      ; 34 uses

bb.bv:                                            ; preds = %.loopexit977
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr %i.le, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 32 ; 2 uses
  store ptr %i.lh, ptr %i.lg, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i64 0, ptr %i.li, align 8
  store i8 0, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 48 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 56
  store ptr %i.lj, ptr %i.lk, align 8
  store ptr %i.lj, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  store i64 0, ptr %i.ll, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 72
  store i32 20, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lc, i64 80 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 88
  store ptr %i.ln, ptr %i.lo, align 8
  store ptr %i.ln, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 96 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.lq, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24X3DNodeElementIndexedSet, i64 16), ptr %i.lc, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lr, i8 0, i64 24, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 152 ; 45 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, i8 0, i64 24, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lc, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, i8 0, i64 24, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lc, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i8 0, i64 24, i1 false)
  %i.lv = load i64, ptr %i.d, align 8
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bw, %bb.bv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lc, i64 113
  store i8 %.0871, ptr %i.lx, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lc, i64 145
  store i8 %.0872, ptr %i.ly, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lc, i64 176
  store float %.0873, ptr %i.lz, align 8
  store i8 %.0876, ptr %i.lq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ma = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.mb = load ptr, ptr %12, align 8              ; 6 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = ashr exact i64 %i.me, 3                 ; 4 uses
  %i.mg = icmp ult i64 %i.mf, 4
  br i1 %i.mg, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %.preheader39.i

.preheader39.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.mh = load float, ptr %i.mb, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.mj = load float, ptr %i.mi, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge34.i, %.preheader39.i
  %.03146.i = phi i64 [ 3, %.preheader39.i ], [ %.02841.i, %.critedge34.i ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.03146.i ; 4 uses
  %i.ml = load float, ptr %i.mk, align 4
  %i.mm = fcmp oeq float %i.mh, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mo = load float, ptr %i.mn, align 4
  %i.mp = fcmp oeq float %i.mj, %i.mo
  %i.mq = select i1 %i.mm, i1 %i.mp, i1 false
  %.02841.i = add nuw i64 %.03146.i, 1            ; 4 uses
  br i1 %i.mq, label %.preheader.i, label %.critedge34.i

.preheader.i:                                     ; preds = %bb.bx
  %.not42.i = icmp ult i64 %.02841.i, %i.mf
  br i1 %.not42.i, label %.lr.ph.i, label %.critedge.i

bb.by:                                            ; preds = %.lr.ph.i
  %i.mr = add i64 %.02943.i, 1
  %.028.i = add i64 %.02844.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %.028.i, %i.mf
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !37

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.by
  %.02844.i = phi i64 [ %.028.i, %bb.by ], [ %.02841.i, %.preheader.i ] ; 2 uses
  %.02943.i = phi i64 [ %i.mr, %bb.by ], [ 1, %.preheader.i ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.02943.i ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.02844.i ; 2 uses
  %i.mu = load float, ptr %i.ms, align 4
  %i.mv = load float, ptr %i.mt, align 4
  %i.mw = fcmp une float %i.mu, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.my = load float, ptr %i.mx, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.na = load float, ptr %i.mz, align 4
  %i.nb = fcmp une float %i.my, %i.na
  %i.nc = select i1 %i.mw, i1 true, i1 %i.nb
  br i1 %i.nc, label %.critedge34.i, label %bb.by

.critedge.i:                                      ; preds = %.preheader.i, %bb.by
end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.beb = ptrtoint ptr %i.bdx to i64
  %i.bec = sub i64 %i.bea, %i.beb
  call void @_ZdlPvm(ptr noundef nonnull %i.bdx, i64 noundef %i.bec) #22
  br label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit631

_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit631: ; preds = %bb.iy, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.jf

bb.ja:                                            ; preds = %bb.v, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit
  %i.bed = load ptr, ptr %15, align 8             ; 3 uses
  %.not.i.i.i632 = icmp eq ptr %i.bed, null
  br i1 %.not.i.i.i632, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit633, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bee = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bef = load ptr, ptr %i.bee, align 8
  %i.beg = ptrtoint ptr %i.bef to i64
  %i.beh = ptrtoint ptr %i.bed to i64
  %i.bei = sub i64 %i.beg, %i.beh
  call void @_ZdlPvm(ptr noundef nonnull %i.bed, i64 noundef %i.bei) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit633

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit633: ; preds = %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.bej = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i.i634 = icmp eq ptr %i.bej, null
  br i1 %.not.i.i.i634, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, label %bb.jc

bb.jc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit633
  %i.bek = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bel = load ptr, ptr %i.bek, align 8
  %i.bem = ptrtoint ptr %i.bel to i64
  %i.ben = ptrtoint ptr %i.bej to i64
  %i.beo = sub i64 %i.bem, %i.ben
  call void @_ZdlPvm(ptr noundef nonnull %i.bej, i64 noundef %i.beo) #22
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit633, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.bep = load ptr, ptr %13, align 8             ; 3 uses
  %.not.i.i.i635 = icmp eq ptr %i.bep, null
  br i1 %.not.i.i.i635, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.jd

bb.jd:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit
  %i.beq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ber = load ptr, ptr %i.beq, align 8
  %i.bes = ptrtoint ptr %i.ber to i64
  %i.bet = ptrtoint ptr %i.bep to i64
  %i.beu = sub i64 %i.bes, %i.bet
  call void @_ZdlPvm(ptr noundef nonnull %i.bep, i64 noundef %i.beu) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.bev = load ptr, ptr %12, align 8             ; 3 uses
  %.not.i.i.i636 = icmp eq ptr %i.bev, null
  br i1 %.not.i.i.i636, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit637, label %bb.je

bb.je:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.bew = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bex = load ptr, ptr %i.bew, align 8
  %i.bey = ptrtoint ptr %i.bex to i64
  %i.bez = ptrtoint ptr %i.bev to i64
  %i.bfa = sub i64 %i.bey, %i.bez
  call void @_ZdlPvm(ptr noundef nonnull %i.bev, i64 noundef %i.bfa) #22
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit637

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit637: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bfb = load ptr, ptr %11, align 8             ; 2 uses
  %i.bfc = icmp eq ptr %i.bfb, %i.c
  br i1 %i.bfc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit637
  %i.bfd = load i64, ptr %i.c, align 8
  %i.bfe = add i64 %i.bfd, 1
  call void @_ZdlPvm(ptr noundef %i.bfb, i64 noundef %i.bfe) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit637, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.bff = load ptr, ptr %10, align 8             ; 2 uses
  %i.bfg = icmp eq ptr %i.bff, %i.a
  br i1 %i.bfg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i641

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i641: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640
  %i.bfh = load i64, ptr %i.a, align 8
  %i.bfi = add i64 %i.bfh, 1
  call void @_ZdlPvm(ptr noundef %i.bff, i64 noundef %i.bfi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit643: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i641
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void

bb.jf:                                            ; preds = %.loopexit978, %.loopexit.split-lp979, %.loopexit984, %.loopexit.split-lp985, %bb.bm, %bb.ao, %bb.bh, %bb.bi, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit631, %bb.ac, %bb.w
  %.pn252.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.ac ], [ %i.em, %bb.ao ], [ %.pn246.pn.pn, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit631 ], [ %i.au, %bb.w ], [ %i.ir, %bb.bm ], [ %i.hy, %bb.bh ], [ %i.hz, %bb.bi ], [ %lpad.loopexit.split-lp987, %.loopexit.split-lp985 ], [ %lpad.loopexit986, %.loopexit984 ], [ %lpad.loopexit980, %.loopexit978 ], [ %lpad.loopexit.split-lp981, %.loopexit.split-lp979 ]
  %i.bfj = load ptr, ptr %15, align 8             ; 3 uses
  %.not.i.i.i644 = icmp eq ptr %i.bfj, null
  br i1 %.not.i.i.i644, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit645, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.bfk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bfl = load ptr, ptr %i.bfk, align 8
  %i.bfm = ptrtoint ptr %i.bfl to i64
  %i.bfn = ptrtoint ptr %i.bfj to i64
  %i.bfo = sub i64 %i.bfm, %i.bfn
  call void @_ZdlPvm(ptr noundef nonnull %i.bfj, i64 noundef %i.bfo) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit645

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit645: ; preds = %bb.jf, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.bfp = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i.i646 = icmp eq ptr %i.bfp, null
  br i1 %.not.i.i.i646, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit647, label %bb.jh

bb.jh:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit645
  %i.bfq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bfr = load ptr, ptr %i.bfq, align 8
  %i.bfs = ptrtoint ptr %i.bfr to i64
  %i.bft = ptrtoint ptr %i.bfp to i64
  %i.bfu = sub i64 %i.bfs, %i.bft
  call void @_ZdlPvm(ptr noundef nonnull %i.bfp, i64 noundef %i.bfu) #22
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit647

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit647: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit645, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.bfv = load ptr, ptr %13, align 8             ; 3 uses
  %.not.i.i.i648 = icmp eq ptr %i.bfv, null
  br i1 %.not.i.i.i648, label %_ZNSt6vectorIfSaIfEED2Ev.exit649, label %bb.ji

bb.ji:                                            ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit647
  %i.bfw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bfx = load ptr, ptr %i.bfw, align 8
  %i.bfy = ptrtoint ptr %i.bfx to i64
  %i.bfz = ptrtoint ptr %i.bfv to i64
  %i.bga = sub i64 %i.bfy, %i.bfz
  call void @_ZdlPvm(ptr noundef nonnull %i.bfv, i64 noundef %i.bga) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit649

_ZNSt6vectorIfSaIfEED2Ev.exit649:                 ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit647, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.bgb = load ptr, ptr %12, align 8             ; 3 uses
  %.not.i.i.i650 = icmp eq ptr %i.bgb, null
  br i1 %.not.i.i.i650, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit651, label %bb.jj

bb.jj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit649
  %i.bgc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bgd = load ptr, ptr %i.bgc, align 8
  %i.bge = ptrtoint ptr %i.bgd to i64
  %i.bgf = ptrtoint ptr %i.bgb to i64
  %i.bgg = sub i64 %i.bge, %i.bgf
  call void @_ZdlPvm(ptr noundef nonnull %i.bgb, i64 noundef %i.bgg) #22
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit651

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit651: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit649, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bgh = load ptr, ptr %11, align 8             ; 2 uses
  %i.bgi = icmp eq ptr %i.bgh, %i.c
  br i1 %i.bgi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit651
  %i.bgj = load i64, ptr %i.c, align 8
  %i.bgk = add i64 %i.bgj, 1
  call void @_ZdlPvm(ptr noundef %i.bgh, i64 noundef %i.bgk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit651, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.bgl = load ptr, ptr %10, align 8             ; 2 uses
  %i.bgm = icmp eq ptr %i.bgl, %i.a
  br i1 %i.bgm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  %i.bgn = load i64, ptr %i.a, align 8
  %i.bgo = add i64 %i.bgn, 1
  call void @_ZdlPvm(ptr noundef %i.bgl, i64 noundef %i.bgo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  resume { ptr, i32 } %.pn252.pn.pn

bb.jk:                                            ; preds = %bb.bg, %bb.ab
  unreachable
}

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper25getVector2DArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorI10aiVector2tIfESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper25getVector3DArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorI10aiVector3tIfESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 12
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, !prof !58

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -12
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 12
  %i.t = add i64 %.fr.i, 12
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #22
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 12
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !59

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.f, 12
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.z, 12
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !59

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.z, i1 false)
  br label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp eq i64 %i.z, 12
  br i1 %i.ad, label %bb.n, label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit

_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8
  %i.af = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.af, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0810.i.i.i.i, i64 12, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !60

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP10aiVector3tIfES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIfESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #22
  br label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter18readIndexedFaceSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %9 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::vector.17", align 8   ; 10 uses
  %13 = alloca %"class.std::vector.17", align 8   ; 12 uses
  %14 = alloca %"class.std::vector.17", align 8   ; 10 uses
  %15 = alloca %"class.std::vector.17", align 8   ; 10 uses
  %16 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %17 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %18 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %19 = alloca %"class.pugi::xml_node", align 8   ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.b, ptr %10, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8
  store i8 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.d, ptr %11, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.f = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.a
  store ptr %i.f, ptr %9, align 8
  %i.g = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc54 unwind label %bb.w

.noexc54:                                         ; preds = %.noexc
  br i1 %i.g, label %bb.c, label %bb.b

end_hunk_1
