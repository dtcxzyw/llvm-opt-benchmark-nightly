inline.NumInlined: 9031
inline.NumDeleted: 2243
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a

bb.av:                                            ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i, %bb.ac, %bb.aa
  %i.kr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = trunc i64 %i.ks to i32                  ; 2 uses
  %.not.i.i424 = icmp eq ptr %.sroa.18.12366, %.sroa.34.12365
  br i1 %.not.i.i424, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 %i.kt, ptr %.sroa.18.12366, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.18.12366, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ax:                                            ; preds = %bb.av
  %i.kv = ptrtoint ptr %.sroa.18.12366 to i64
  %i.kw = ptrtoint ptr %.sroa.01381.12367 to i64
  %i.kx = sub i64 %i.kv, %i.kw                    ; 6 uses
  %i.ky = icmp eq i64 %i.kx, 9223372036854775804
  br i1 %i.ky, label %bb.ay, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc426 unwind label %.loopexit.split-lp1467

.noexc426:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ax
  %i.kz = ashr exact i64 %i.kx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kz, i64 1)
  %i.la = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kz ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.kz
  %i.lc = call i64 @llvm.umin.i64(i64 %i.la, i64 2305843009213693951)
  %i.ld = select i1 %i.lb, i64 2305843009213693951, i64 %i.lc ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.ld, 0
  call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.le = shl nuw nsw i64 %i.ld, 2
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #34
          to label %.noexc427 unwind label %.loopexit1466 ; 4 uses

.noexc427:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.kx ; 2 uses
  store i32 %i.kt, ptr %i.lg, align 4
  %i.lh = icmp sgt i64 %i.kx, 0
  br i1 %i.lh, label %bb.az, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.az:                                            ; preds = %.noexc427
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lf, ptr align 4 %.sroa.01381.12367, i64 %i.kx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.az, %.noexc427
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.01381.12367, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01381.12367, i64 noundef %i.kx) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ba, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.ld
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

.loopexit1466:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1468 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp1467:                           ; preds = %bb.ay
  %lpad.loopexit.split-lp1469 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.at
  %.1 = phi i32 [ %i.kp, %bb.at ], [ %.014072364, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.014072364, %bb.aw ]
  %.sroa.34.3 = phi ptr [ %.sroa.34.9, %bb.at ], [ %i.lj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.34.12365, %bb.aw ] ; 2 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.4, %bb.at ], [ %i.li, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ku, %bb.aw ] ; 2 uses
  %.sroa.01381.3 = phi ptr [ %.sroa.01381.9, %bb.at ], [ %i.lf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.01381.12367, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.lk = add nuw nsw i64 %.02402368, 1           ; 2 uses
  %i.ll = load i32, ptr %i.hd, align 4
  %i.lm = zext i32 %i.ll to i64
  %i.ln = icmp samesign ult i64 %i.lk, %i.lm
  br i1 %i.ln, label %bb.s, label %.loopexit1465, !llvm.loop !709

bb.bb:                                            ; preds = %.loopexit1466, %.loopexit.split-lp1467, %.loopexit1471, %.loopexit.split-lp1472, %bb.au
  %.sroa.34.4 = phi ptr [ %.sroa.18.12366, %.loopexit.split-lp1472 ], [ %.sroa.34.9, %bb.au ], [ %.sroa.34.2.ph, %.loopexit1471 ], [ %.sroa.18.12366, %.loopexit1466 ], [ %.sroa.18.12366, %.loopexit.split-lp1467 ]
  %.sroa.01381.4 = phi ptr [ %.sroa.01381.12367, %.loopexit.split-lp1472 ], [ %.sroa.01381.9, %bb.au ], [ %.sroa.01381.2.ph, %.loopexit1471 ], [ %.sroa.01381.12367, %.loopexit1466 ], [ %.sroa.01381.12367, %.loopexit.split-lp1467 ]
  %.pn390 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1474, %.loopexit.split-lp1472 ], [ %i.kq, %bb.au ], [ %lpad.loopexit1473, %.loopexit1471 ], [ %lpad.loopexit1468, %.loopexit1466 ], [ %lpad.loopexit.split-lp1469, %.loopexit.split-lp1467 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.gh

bb.bc:                                            ; preds = %bb.r
  %i.lo = zext i32 %i.he to i64                   ; 7 uses
  %i.lp = add nsw i64 %i.gs, %i.lo                ; 3 uses
  %i.lq = icmp ugt i64 %i.lp, %i.gs
  br i1 %i.lq, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %.not.i1195 = icmp eq i32 %i.he, 0
  br i1 %.not.i1195, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lr = ptrtoint ptr %.sroa.34.02428 to i64     ; 2 uses
  %i.ls = sub i64 %i.lr, %i.gp
  %i.lt = ashr exact i64 %i.ls, 2                 ; 2 uses
  %i.lu = icmp ult i64 %i.gs, 2305843009213693952
  call void @llvm.assume(i1 %i.lu)
  %i.lv = xor i64 %i.gs, 2305843009213693951      ; 2 uses
  %i.lw = icmp ule i64 %i.lt, %i.lv
  call void @llvm.assume(i1 %i.lw)
  %.not28.i = icmp ult i64 %i.lt, %i.lo
  br i1 %.not28.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %.sroa.18.02429, align 4
  %i.lx = getelementptr i8, ptr %.sroa.18.02429, i64 4 ; 3 uses
  %i.ly = add nsw i64 %i.lo, -1                   ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.bf
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ly, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.lx, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bg:                                            ; preds = %bb.be
  %i.mb = icmp samesign ult i64 %i.lv, %i.lo
  br i1 %i.mb, label %bb.bh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.436) #30
          to label %.noexc1196 unwind label %.loopexit.split-lp1478

.noexc1196:                                       ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bg
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gs, i64 %i.lo)
  %i.mc = add nuw nsw i64 %.sroa.speculated.i.i, %i.gs
  %i.md = call i64 @llvm.umin.i64(i64 %i.mc, i64 2305843009213693951) ; 2 uses
  %i.me = shl nuw nsw i64 %i.md, 2
  %i.mf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #34
          to label %.noexc1197 unwind label %.loopexit1477 ; 4 uses

.noexc1197:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.gr ; 3 uses
  store i32 0, ptr %i.mg, align 4
  %i.mh = add nsw i64 %i.lo, -1                   ; 2 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc1197
  %i.mj = getelementptr i8, ptr %i.mg, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.mh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mj, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc1197
  %i.mk = icmp sgt i64 %i.gr, 0
  br i1 %i.mk, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.bi:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mf, ptr align 4 %.sroa.01381.02430, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.bi, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.01381.02430, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.ml = sub i64 %i.lr, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01381.02430, i64 noundef %i.ml) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.lo
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.md
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bk:                                            ; preds = %bb.bc
  %i.mo = icmp ult i64 %i.lp, %i.gs
  br i1 %i.mo, label %bb.bl, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bl:                                            ; preds = %bb.bk
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01381.02430, i64 %i.lp ; 2 uses
  %.not.i.i428 = icmp eq ptr %.sroa.18.02429, %i.mp
  %spec.select = select i1 %.not.i.i428, ptr %.sroa.18.02429, ptr %i.mp
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.bl, %bb.bk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.bd, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.bf
  %.sroa.34.11 = phi ptr [ %.sroa.34.02428, %bb.bk ], [ %.sroa.34.02428, %bb.bl ], [ %.sroa.34.02428, %bb.bf ], [ %.sroa.34.02428, %bb.bd ], [ %i.mn, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %.sroa.34.02428, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.18.6 = phi ptr [ %.sroa.18.02429, %bb.bk ], [ %spec.select, %bb.bl ], [ %i.lx, %bb.bf ], [ %.sroa.18.02429, %bb.bd ], [ %i.mm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.ma, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.01381.11 = phi ptr [ %.sroa.01381.02430, %bb.bk ], [ %.sroa.01381.02430, %bb.bl ], [ %.sroa.01381.02430, %bb.bf ], [ %.sroa.01381.02430, %bb.bd ], [ %i.mf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %.sroa.01381.02430, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 5 uses
  %i.mq = getelementptr inbounds i8, ptr %.sroa.01381.11, i64 %i.gr ; 4 uses
  %.not5.i = icmp eq ptr %i.mq, %.sroa.18.6
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.sroa.01381.114372 = ptrtoint ptr %.sroa.01381.11 to i64
  %.sroa.18.64371 = ptrtoint ptr %.sroa.18.6 to i64
  %i.mr = add i64 %.sroa.18.64371, -4
  %i.ms = add i64 %i.mr, %i.gq
  %78 = add i64 %.sroa.01381.114372, %i.gp
  %79 = sub i64 %i.ms, %78                        ; 2 uses
  %i.mt = lshr i64 %79, 2
  %i.mu = add nuw nsw i64 %i.mt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %79, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader4380, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.mu, 9223372036854775800     ; 4 uses
  %i.mv = trunc i64 %n.vec to i32
  %i.mw = shl i64 %n.vec, 2
  %i.mx = getelementptr i8, ptr %i.mq, i64 %i.mw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.my = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.mq, i64 %i.my ; 2 uses
  %i.mz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4
  store <4 x i32> %step.add, ptr %i.mz, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.na = icmp eq i64 %index.next, %n.vec
  br i1 %i.na, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mu, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader4380

.lr.ph.i.preheader4380:                           ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.mv, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.mq, %.lr.ph.i.preheader ], [ %i.mx, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4380, %.lr.ph.i
  %.07.i = phi i32 [ %i.nb, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader4380 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.nc, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader4380 ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4
  %i.nb = add nuw nsw i32 %.07.i, 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i430 = icmp eq ptr %i.nc, %.sroa.18.6
  br i1 %.not.i430, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !711

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.nd = load i32, ptr %i.hd, align 4
  %.not2459 = icmp eq i32 %i.nd, 0
  br i1 %.not2459, label %.loopexit1465, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  br label %bb.bm

.loopexit1477:                                    ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %.sroa.34.5.ph = phi ptr [ %.sroa.34.02428, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.34.6, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ]
  %.sroa.01381.5.ph = phi ptr [ %.sroa.01381.02430, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.01381.6, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i ]
  %lpad.loopexit1481 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1478:                           ; preds = %bb.ci, %bb.bh
  %.sroa.34.5.ph1479 = phi ptr [ %.sroa.34.02428, %bb.bh ], [ %.sroa.34.6, %bb.ci ]
  %.sroa.01381.5.ph1480 = phi ptr [ %.sroa.01381.02430, %bb.bh ], [ %.sroa.01381.6, %bb.ci ]
  %lpad.loopexit.split-lp1482 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.bm:                                            ; preds = %.lr.ph, %bb.bn
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bn ] ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds nuw [12 x i8], ptr %i.nf, i64 %indvars.iv ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.nh = load ptr, ptr %i.dx, align 8
  %i.ni = load <2 x float>, ptr %i.ng, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #31
  %i.nj = fpext <2 x float> %i.ni to <2 x double>
  store <2 x double> %i.nj, ptr %i.t, align 16
  %i.nk = fpext float %.sroa.6.0.copyload to double
  store double %i.nk, ptr %i.ee, align 16
  %i.nl = load ptr, ptr %6, align 8               ; 2 uses
  %i.nm = ptrtoint ptr %i.nh to i64
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = getelementptr inbounds i8, ptr %i.nl, i64 %i.no
  invoke void @_ZNSt6vectorIdSaIdEE15_M_range_insertIPKdEEvN9__gnu_cxx17__normal_iteratorIPdS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.np, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ef)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nq = load i32, ptr %i.hd, align 4
  %i.nr = zext i32 %i.nq to i64
  %i.ns = icmp samesign ult i64 %indvars.iv.next, %i.nr
  br i1 %i.ns, label %bb.bm, label %.loopexit1465, !llvm.loop !712

bb.bo:                                            ; preds = %bb.bm
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #31
  br label %bb.gh

.loopexit1465:                                    ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, %.preheader1464
  %.sroa.34.6 = phi ptr [ %.sroa.34.11, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.34.02428, %.preheader1464 ], [ %.sroa.34.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.34.11, %bb.bn ] ; 20 uses
  %.sroa.18.3 = phi ptr [ %.sroa.18.6, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.18.02429, %.preheader1464 ], [ %.sroa.18.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.18.6, %bb.bn ] ; 2 uses
  %.sroa.01381.6 = phi ptr [ %.sroa.01381.11, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.01381.02430, %.preheader1464 ], [ %.sroa.01381.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.01381.11, %bb.bn ] ; 21 uses
  %i.nu = load ptr, ptr %i.ek, align 8, !nonnull !28, !align !698
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds nuw [24 x i8], ptr %i.nv, i64 %i.gm ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = getelementptr i8, ptr %.sroa.01381.6, i64 %i.gr ; 3 uses
  %i.oa = load ptr, ptr %i.nw, align 8            ; 2 uses
  %i.ob = ptrtoint ptr %i.ny to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = getelementptr inbounds i8, ptr %i.oa, i64 %i.od
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, ptr %i.oe, ptr %i.nz, ptr %.sroa.18.3)
          to label %.preheader1458 unwind label %bb.bu

.preheader1458:                                   ; preds = %.loopexit1465
  %i.of = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 8 uses
  %i.og = load i32, ptr %i.of, align 8
  %.not2461 = icmp eq i32 %i.og, 0
  br i1 %.not2461, label %.preheader1458.._crit_edge2377_crit_edge, label %.lr.ph2376

.preheader1458.._crit_edge2377_crit_edge:         ; preds = %.preheader1458
  %.pre3039 = trunc i64 %i.gz to i32
  br label %._crit_edge2377

.lr.ph2376:                                       ; preds = %.preheader1458
  %i.oh = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  %i.oi = trunc i64 %i.gz to i32                  ; 3 uses
  br label %bb.bv

._crit_edge2377:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459, %.preheader1458.._crit_edge2377_crit_edge
  %.pre-phi = phi i32 [ %.pre3039, %.preheader1458.._crit_edge2377_crit_edge ], [ %i.oi, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459 ] ; 2 uses
  %i.oj = load ptr, ptr %i.en, align 8, !nonnull !28, !align !698 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 4 uses
  %i.ol = load ptr, ptr %i.ok, align 8            ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8
  %.not.i.i434 = icmp eq ptr %i.ol, %i.on
  br i1 %.not.i.i434, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge2377
  store i32 %.pre-phi, ptr %i.ol, align 4
  %i.oo = load ptr, ptr %i.ok, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  store ptr %i.op, ptr %i.ok, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.bq:                                            ; preds = %._crit_edge2377
  %i.oq = load ptr, ptr %i.oj, align 8            ; 4 uses
  %i.or = ptrtoint ptr %i.ol to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os                    ; 6 uses
  %i.ou = icmp eq i64 %i.ot, 9223372036854775804
  br i1 %i.ou, label %bb.br, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc438 unwind label %.loopexit.split-lp1485

.noexc438:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bq
  %i.ov = ashr exact i64 %i.ot, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i435 = call i64 @llvm.umax.i64(i64 %i.ov, i64 1)
  %i.ow = add nsw i64 %.sroa.speculated.i.i.i.i435, %i.ov ; 2 uses
  %i.ox = icmp ult i64 %i.ow, %i.ov
  %i.oy = call i64 @llvm.umin.i64(i64 %i.ow, i64 2305843009213693951)
  %i.oz = select i1 %i.ox, i64 2305843009213693951, i64 %i.oy ; 3 uses
  %.not.i.i.i.i436 = icmp ne i64 %i.oz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i436)
  %i.pa = shl nuw nsw i64 %i.oz, 2
  %i.pb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pa) #34
          to label %.noexc439 unwind label %.loopexit1484 ; 4 uses

.noexc439:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 %i.ot ; 2 uses
  store i32 %.pre-phi, ptr %i.pc, align 4
  %i.pd = icmp sgt i64 %i.ot, 0
  br i1 %i.pd, label %bb.bs, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.bs:                                            ; preds = %.noexc439
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pb, ptr align 4 %i.oq, i64 %i.ot, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bs, %.noexc439
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %.not.i17.i.i.i437 = icmp eq ptr %i.oq, null
  br i1 %.not.i17.i.i.i437, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef %i.ot) #32
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.bt, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
end_hunk_0
