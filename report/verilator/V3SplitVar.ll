Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SplitVar?download=true
inline.NumInlined: 4984
inline.NumDeleted: 1817
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK12PackedVarRef9splitPlanEPK6AstVarb:bb.a
  %.not.i.i.i126 = icmp ne i64 %i.lb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i126)
  %i.lc = shl nuw nsw i64 %i.lb, 3
  %i.ld = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #28
          to label %.noexc137 unwind label %bb.ay ; 8 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kv ; 2 uses
  store i32 %i.ew, ptr %i.le, align 4, !tbaa !773
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store i8 1, ptr %i.lf, align 4, !tbaa !775
  %.not10.i.i.i.i.i127 = icmp eq ptr %.sroa.0213.13, %.sroa.50.13
  br i1 %.not10.i.i.i.i.i127, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128.preheader

.lr.ph.i.i.i.i.i128.preheader:                    ; preds = %.noexc137
  %i.lg = ptrtoaddr ptr %i.ld to i64
  %i.lh = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i119.pn to i64 ; 2 uses
  %i.li = sub i64 %i.lh, %i.ku                    ; 2 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.li, 72
  %i.ll = sub i64 %i.ku, %i.lg
  %diff.check474 = icmp ugt i64 %i.ll, -32
  %or.cond529 = or i1 %min.iters.check476, %diff.check474
  br i1 %or.cond529, label %.lr.ph.i.i.i.i.i128.preheader539, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph.i.i.i.i.i128.preheader
  %n.vec478 = and i64 %i.lk, 4611686018427387900  ; 3 uses
  %i.lm = shl i64 %n.vec478, 3                    ; 2 uses
  %i.ln = getelementptr i8, ptr %i.ld, i64 %i.lm  ; 2 uses
  %i.lo = getelementptr i8, ptr %.sroa.0213.13, i64 %i.lm
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body479 ] ; 2 uses
  %i.lp = shl i64 %index480, 3                    ; 2 uses
  %next.gep481 = getelementptr i8, ptr %i.ld, i64 %i.lp ; 2 uses
  %next.gep482 = getelementptr i8, ptr %.sroa.0213.13, i64 %i.lp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.lq = getelementptr i8, ptr %next.gep482, i64 16
  %wide.load483 = load <2 x i64>, ptr %next.gep482, align 4, !alias.scope !872, !noalias !869
  %wide.load484 = load <2 x i64>, ptr %i.lq, align 4, !alias.scope !872, !noalias !869
  %i.lr = getelementptr i8, ptr %next.gep481, i64 16
  store <2 x i64> %wide.load483, ptr %next.gep481, align 4, !alias.scope !869, !noalias !872
  store <2 x i64> %wide.load484, ptr %i.lr, align 4, !alias.scope !869, !noalias !872
  %index.next485 = add nuw i64 %index480, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.ls, label %middle.block486, label %vector.body479, !llvm.loop !874

middle.block486:                                  ; preds = %vector.body479
  %cmp.n487 = icmp eq i64 %i.lk, %n.vec478
  br i1 %cmp.n487, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128.preheader539

.lr.ph.i.i.i.i.i128.preheader539:                 ; preds = %.lr.ph.i.i.i.i.i128.preheader, %middle.block486
  %.012.i.i.i.i.i129.ph = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.ln, %middle.block486 ] ; 2 uses
  %.0911.i.i.i.i.i130.ph = phi ptr [ %.sroa.0213.13, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.lo, %middle.block486 ] ; 3 uses
  %.0911.i.i.i.i.i130.ph560 = ptrtoaddr ptr %.0911.i.i.i.i.i130.ph to i64
  %i.lt = sub i64 %i.lh, %.0911.i.i.i.i.i130.ph560 ; 2 uses
  %i.lu = lshr i64 %i.lt, 3
  %i.lv = add nuw nsw i64 %i.lu, 1
  %xtraiter561 = and i64 %i.lv, 7                 ; 2 uses
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %.lr.ph.i.i.i.i.i128.prol.loopexit, label %.lr.ph.i.i.i.i.i128.prol

.lr.ph.i.i.i.i.i128.prol:                         ; preds = %.lr.ph.i.i.i.i.i128.preheader539, %.lr.ph.i.i.i.i.i128.prol
  %.012.i.i.i.i.i129.prol = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i128.prol ], [ %.012.i.i.i.i.i129.ph, %.lr.ph.i.i.i.i.i128.preheader539 ] ; 2 uses
  %.0911.i.i.i.i.i130.prol = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i128.prol ], [ %.0911.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i128.preheader539 ] ; 2 uses
  %prol.iter563 = phi i64 [ %prol.iter563.next, %.lr.ph.i.i.i.i.i128.prol ], [ 0, %.lr.ph.i.i.i.i.i128.preheader539 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.lw = load i64, ptr %.0911.i.i.i.i.i130.prol, align 4, !alias.scope !872, !noalias !869
  store i64 %i.lw, ptr %.012.i.i.i.i.i129.prol, align 4, !alias.scope !869, !noalias !872
  %i.lx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130.prol, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129.prol, i64 8 ; 3 uses
  %prol.iter563.next = add i64 %prol.iter563, 1   ; 2 uses
  %prol.iter563.cmp.not = icmp eq i64 %prol.iter563.next, %xtraiter561
  br i1 %prol.iter563.cmp.not, label %.lr.ph.i.i.i.i.i128.prol.loopexit, label %.lr.ph.i.i.i.i.i128.prol, !llvm.loop !875

.lr.ph.i.i.i.i.i128.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i128.prol, %.lr.ph.i.i.i.i.i128.preheader539
  %.lcssa540.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i128.preheader539 ], [ %i.ly, %.lr.ph.i.i.i.i.i128.prol ]
  %.012.i.i.i.i.i129.unr = phi ptr [ %.012.i.i.i.i.i129.ph, %.lr.ph.i.i.i.i.i128.preheader539 ], [ %i.ly, %.lr.ph.i.i.i.i.i128.prol ]
  %.0911.i.i.i.i.i130.unr = phi ptr [ %.0911.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i128.preheader539 ], [ %i.lx, %.lr.ph.i.i.i.i.i128.prol ]
  %i.lz = icmp ult i64 %i.lt, 56
  br i1 %i.lz, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %.lr.ph.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i128
  %.012.i.i.i.i.i129 = phi ptr [ %i.mx, %.lr.ph.i.i.i.i.i128 ], [ %.012.i.i.i.i.i129.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i130 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i128 ], [ %.0911.i.i.i.i.i130.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ma = load i64, ptr %.0911.i.i.i.i.i130, align 4, !alias.scope !872, !noalias !869
  store i64 %i.ma, ptr %.012.i.i.i.i.i129, align 4, !alias.scope !869, !noalias !872
  %i.mb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.md = load i64, ptr %i.mb, align 4, !alias.scope !878, !noalias !876
  store i64 %i.md, ptr %i.mc, align 4, !alias.scope !876, !noalias !878
  %i.me = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.mg = load i64, ptr %i.me, align 4, !alias.scope !882, !noalias !880
  store i64 %i.mg, ptr %i.mf, align 4, !alias.scope !880, !noalias !882
  %i.mh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.mj = load i64, ptr %i.mh, align 4, !alias.scope !886, !noalias !884
  store i64 %i.mj, ptr %i.mi, align 4, !alias.scope !884, !noalias !886
  %i.mk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 32
  %i.ml = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.mm = load i64, ptr %i.mk, align 4, !alias.scope !890, !noalias !888
  store i64 %i.mm, ptr %i.ml, align 4, !alias.scope !888, !noalias !890
  %i.mn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 40
  %i.mo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.mp = load i64, ptr %i.mn, align 4, !alias.scope !894, !noalias !892
  store i64 %i.mp, ptr %i.mo, align 4, !alias.scope !892, !noalias !894
  %i.mq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 48
  %i.mr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.ms = load i64, ptr %i.mq, align 4, !alias.scope !898, !noalias !896
  store i64 %i.ms, ptr %i.mr, align 4, !alias.scope !896, !noalias !898
  %i.mt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 56 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.mv = load i64, ptr %i.mt, align 4, !alias.scope !902, !noalias !900
  store i64 %i.mv, ptr %i.mu, align 4, !alias.scope !900, !noalias !902
  %i.mw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 64
  %i.mx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 64 ; 2 uses
  %.not.i.i.i.i.i131.7 = icmp eq ptr %i.mt, %.0.lcssa.i.i.i.i.i119.pn
  br i1 %.not.i.i.i.i.i131.7, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128, !llvm.loop !904

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132: ; preds = %.lr.ph.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i128, %middle.block486, %.noexc137
  %.0.lcssa.i.i.i.i.i133 = phi ptr [ %i.ld, %.noexc137 ], [ %i.ln, %middle.block486 ], [ %.lcssa540.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ], [ %i.mx, %.lr.ph.i.i.i.i.i128 ]
  %i.my = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i133, i64 8
  %.not.i34.i.i134 = icmp eq ptr %.sroa.0213.13, null
  br i1 %.not.i34.i.i134, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.13, i64 noundef %i.kv) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135: ; preds = %bb.aw, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lb
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138

bb.ax:                                            ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110, %bb.ar
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ay:                                            ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124, %bb.av
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105, %bb.aj, %bb.r, %bb.at, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135
  %.sroa.50.5 = phi ptr [ %.sroa.50.0.lcssa, %bb.r ], [ %.sroa.50.13, %bb.at ], [ %i.mz, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %.sroa.50.11, %bb.aj ], [ %i.jj, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 5 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.0.lcssa, %bb.r ], [ %i.ks, %bb.at ], [ %i.my, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %i.hc, %bb.aj ], [ %i.ji, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 4 uses
  %.sroa.0213.5 = phi ptr [ %.sroa.0213.0.lcssa, %bb.r ], [ %.sroa.0213.13, %bb.at ], [ %i.ld, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %.sroa.0213.11, %bb.aj ], [ %i.hn, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 12 uses
  %.not.i.i139 = icmp eq ptr %.sroa.0213.5, %.sroa.27.3
  %.pre358 = ptrtoint ptr %.sroa.27.3 to i64
  %.pre359 = ptrtoint ptr %.sroa.0213.5 to i64    ; 5 uses
  %.pre361 = sub i64 %.pre358, %.pre359
  %.pre363 = ashr exact i64 %.pre361, 3           ; 3 uses
  br i1 %.not.i.i139, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138
  %i.nc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre363, i1 true)
  %i.nd = shl nuw nsw i64 %i.nc, 1
  %i.ne = xor i64 %i.nd, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN12PackedVarRef11SortByFirstEEEEvT_SE_T0_T1_(ptr %.sroa.0213.5, ptr %.sroa.27.3, i64 noundef %i.ne)
          to label %.noexc140 unwind label %bb.v

.noexc140:                                        ; preds = %bb.az
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN12PackedVarRef11SortByFirstEEEEvT_SE_T0_(ptr %.sroa.0213.5, ptr %.sroa.27.3)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit unwind label %bb.v

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138, %.noexc140
  %i.nf = icmp ugt i64 %.pre363, 1
  br i1 %i.nf, label %.lr.ph329, label %._crit_edge330

.lr.ph329:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit
  %.promoted = load ptr, ptr %0, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.bb

._crit_edge330:                                   ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit
  %.not.i.i.i142 = icmp eq ptr %.sroa.0213.5, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge330.thread, %._crit_edge330
  %i.ni = ptrtoint ptr %.sroa.50.5 to i64
  %i.nj = sub i64 %i.ni, %.pre359
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.5, i64 noundef %i.nj) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit:        ; preds = %._crit_edge330, %bb.ba
  ret void

bb.bb:                                            ; preds = %.lr.ph329, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit
  %i.nk = phi i64 [ 1, %.lr.ph329 ], [ %i.ov, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ] ; 3 uses
  %.0328 = phi i64 [ 0, %.lr.ph329 ], [ %i.nk, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  %.031327 = phi i32 [ 0, %.lr.ph329 ], [ %.1, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  %i.nl = phi ptr [ %.promoted, %.lr.ph329 ], [ %i.ou, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ] ; 10 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0213.5, i64 %i.nk
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !773 ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0213.5, i64 %.0328 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !773 ; 4 uses
  %i.nq = sub nsw i32 %i.nn, %i.np                ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.ns = load i8, ptr %i.nr, align 4, !tbaa !775, !range !118, !noundef !119
  %i.nt = trunc nuw i8 %i.ns to i1
  %.1.v = select i1 %i.nt, i32 -1, i32 1
  %.1 = add nsw i32 %.1.v, %.031327               ; 3 uses
  %i.nu = icmp slt i32 %.1, 0
  br i1 %i.nu, label %bb.bc, label %bb.bh, !prof !36

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.nl, ptr %0, align 8
  %i.nv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 968)
          to label %bb.bd unwind label %bb.bg     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.nw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.be unwind label %bb.bg     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, ptr noundef nonnull @.str.600, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144: ; preds = %bb.be
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.nw) #27
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144
  unreachable

bb.bg:                                            ; preds = %bb.be, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144, %bb.bd, %bb.bc
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bh:                                            ; preds = %bb.bb
  %i.nz = icmp eq i32 %i.nn, %i.np
  %i.oa = icmp eq i32 %.1, 0
  %or.cond = or i1 %i.nz, %i.oa
  br i1 %or.cond, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ob = load ptr, ptr %i.ng, align 8, !tbaa !729 ; 8 uses
  %i.oc = load ptr, ptr %i.nh, align 8, !tbaa !734
  %.not.i145 = icmp eq ptr %i.ob, %i.oc
  br i1 %.not.i145, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.np, ptr %i.ob, align 8, !tbaa !77
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  store i32 %i.nq, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !77
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !71
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store ptr %i.od, ptr %i.ng, align 8, !tbaa !729
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = ptrtoint ptr %i.nl to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 4 uses
  %i.oh = icmp eq i64 %i.og, 9223372036854775792
  br i1 %i.oh, label %bb.bl, label %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.nl, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc154 unwind label %.loopexit.split-lp

.noexc154:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bk
  %i.oi = ashr exact i64 %i.og, 4                 ; 3 uses
  %.sroa.speculated.i.i.i146 = tail call i64 @llvm.umax.i64(i64 %i.oi, i64 1)
  %i.oj = add nsw i64 %.sroa.speculated.i.i.i146, %i.oi ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %i.oi
  %i.ol = tail call i64 @llvm.umin.i64(i64 %i.oj, i64 576460752303423487)
  %i.om = select i1 %i.ok, i64 576460752303423487, i64 %i.ol ; 3 uses
  %.not.i.i.i147 = icmp ne i64 %i.om, 0
  tail call void @llvm.assume(i1 %.not.i.i.i147)
  %i.on = shl nuw nsw i64 %i.om, 4
  %i.oo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #28
          to label %.noexc155 unwind label %.loopexit ; 5 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.og ; 3 uses
  store i32 %i.np, ptr %i.op, align 8, !tbaa !77
  %.sroa.6.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store i32 %i.nq, ptr %.sroa.6.0..sroa_idx160, align 4, !tbaa !77
  %.sroa.7.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  store ptr null, ptr %.sroa.7.0..sroa_idx162, align 8, !tbaa !71
  %.not10.i.i.i.i.i148 = icmp eq ptr %i.nl, %i.ob
  br i1 %.not10.i.i.i.i.i148, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i149

.lr.ph.i.i.i.i.i149:                              ; preds = %.noexc155, %.lr.ph.i.i.i.i.i149
  %.012.i.i.i.i.i150 = phi ptr [ %i.or, %.lr.ph.i.i.i.i.i149 ], [ %i.oo, %.noexc155 ] ; 2 uses
  %.0911.i.i.i.i.i151 = phi ptr [ %i.oq, %.lr.ph.i.i.i.i.i149 ], [ %i.nl, %.noexc155 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i150, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i151, i64 16, i1 false), !tbaa.struct !905, !alias.scope !906
  %i.oq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i151, i64 16 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i150, i64 16 ; 2 uses
  %.not.i.i.i.i.i152 = icmp eq ptr %i.oq, %i.ob
  br i1 %.not.i.i.i.i.i152, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i149, !llvm.loop !910

_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i149, %.noexc155
  %.0.lcssa.i.i.i.i.i153 = phi ptr [ %i.oo, %.noexc155 ], [ %i.or, %.lr.ph.i.i.i.i.i149 ]
  %i.os = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i153, i64 16
  %.not.i23.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.og) #24
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bm, %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.os, ptr %i.ng, align 8, !tbaa !729
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.oo, i64 %i.om
  store ptr %i.ot, ptr %i.nh, align 8, !tbaa !734
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.bj, %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.bh
  %i.ou = phi ptr [ %i.nl, %bb.bj ], [ %i.oo, %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.nl, %bb.bh ] ; 2 uses
  %i.ov = add nuw i64 %i.nk, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ov, %.pre363
  br i1 %exitcond.not, label %._crit_edge330.thread, label %bb.bb, !llvm.loop !911

._crit_edge330.thread:                            ; preds = %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit
  store ptr %i.ou, ptr %0, align 8
  br label %bb.ba

.loopexit:                                        ; preds = %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.nl, ptr %0, align 8
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bn:                                            ; preds = %.loopexit280, %.loopexit.split-lp281, %.loopexit275, %.loopexit.split-lp276, %bb.u, %bb.ay, %bb.ax, %bb.v, %bb.ao, %bb.an, %bb.ad
  %.sroa.50.7 = phi ptr [ %.sroa.50.0.lcssa, %bb.ad ], [ %.sroa.27.0316, %.loopexit.split-lp276 ], [ %.sroa.50.0.lcssa, %bb.u ], [ %.sroa.50.0.lcssa, %bb.an ], [ %.sroa.50.11, %bb.ao ], [ %.sroa.50.5, %bb.v ], [ %.sroa.50.0.lcssa, %bb.ax ], [ %.sroa.50.13, %bb.ay ], [ %.sroa.27.0316, %.loopexit275 ], [ %.sroa.50.9, %.loopexit280 ], [ %.sroa.50.9, %.loopexit.split-lp281 ]
  %.sroa.0213.7 = phi ptr [ %.sroa.0213.0.lcssa, %bb.ad ], [ %.sroa.0213.0317, %.loopexit.split-lp276 ], [ %.sroa.0213.0.lcssa, %bb.u ], [ %.sroa.0213.0.lcssa, %bb.an ], [ %.sroa.0213.11, %bb.ao ], [ %.sroa.0213.5, %bb.v ], [ %.sroa.0213.0.lcssa, %bb.ax ], [ %.sroa.0213.13, %bb.ay ], [ %.sroa.0213.0317, %.loopexit275 ], [ %.sroa.0213.9, %.loopexit280 ], [ %.sroa.0213.9, %.loopexit.split-lp281 ] ; 3 uses
  %.pn47.pn = phi { ptr, i32 } [ %i.fu, %bb.ad ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp276 ], [ %i.fd, %bb.u ], [ %i.jk, %bb.an ], [ %i.jl, %bb.ao ], [ %i.fe, %bb.v ], [ %i.na, %bb.ax ], [ %i.nb, %bb.ay ], [ %lpad.loopexit277, %.loopexit275 ], [ %lpad.loopexit282, %.loopexit280 ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp281 ] ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.sroa.0213.7, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.bn
  %.pre365 = ptrtoint ptr %.sroa.0213.7 to i64
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.loopexit, %.loopexit.split-lp, %bb.bg
  %.pre-phi366 = phi i64 [ %.pre365, %..thread_crit_edge ], [ %.pre359, %.loopexit ], [ %.pre359, %.loopexit.split-lp ], [ %.pre359, %bb.bg ]
  %.pn47.pn265 = phi { ptr, i32 } [ %.pn47.pn, %..thread_crit_edge ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ny, %bb.bg ]
  %.sroa.0213.7264 = phi ptr [ %.sroa.0213.7, %..thread_crit_edge ], [ %.sroa.0213.5, %.loopexit ], [ %.sroa.0213.5, %.loopexit.split-lp ], [ %.sroa.0213.5, %bb.bg ]
  %.sroa.50.7263 = phi ptr [ %.sroa.50.7, %..thread_crit_edge ], [ %.sroa.50.5, %.loopexit ], [ %.sroa.50.5, %.loopexit.split-lp ], [ %.sroa.50.5, %bb.bg ]
  %i.ow = ptrtoint ptr %.sroa.50.7263 to i64
  %i.ox = sub i64 %i.ow, %.pre-phi366
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.7264, i64 noundef %i.ox) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157

_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157:     ; preds = %.thread267, %bb.bn, %.thread
  %.pn47.pn266 = phi { ptr, i32 } [ %.pn47.pn, %bb.bn ], [ %.pn47.pn265, %.thread ], [ %i.ax, %.thread267 ]
  %i.oy = load ptr, ptr %0, align 8, !tbaa !731   ; 3 uses
  %.not.i.i.i158 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !734
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #24
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit

_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157, %bb.bo
  resume { ptr, i32 } %.pn47.pn266
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7AstNode5widthEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !726
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN21SplitPackedVarVisitor10createVarsEP6AstVarPK13AstBasicDTypeRSt6vectorI11SplitNewVarSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %class.VNumRange, align 4          ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !722    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !722  ; 2 uses
  %.not513711 = icmp eq ptr %i.c, %i.e
  br i1 %.not513711, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 251
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 17
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473
  %.sroa.0490.0712 = phi ptr [ %i.c, %.lr.ph ], [ %i.wb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473 ] ; 5 uses
  %i.bh = load i32, ptr %.sroa.0490.0712, align 8, !tbaa !912 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0490.0712, i64 4 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !724
  %i.bk = add i32 %i.bh, -1
  %i.bl = add i32 %i.bk, %i.bj                    ; 4 uses
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !213 ; 3 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %_ZNK13AstBasicDType9ascendingEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !213 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.bp, align 8, !tbaa !31
  %i.bq = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.bq, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bs = call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.br)
  br label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.d, %bb.c
  %i.bt = phi i32 [ %i.bs, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !228 ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i, label %_ZNK8AstRange9ascendingEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %.sroa.0.0.copyload.i.i.i.i2.i.i = load i16, ptr %i.bw, align 8, !tbaa !31
  %i.bx = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i2.i.i, 121
  br i1 %i.bx, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i3.i.i, label %_ZNK8AstRange9ascendingEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i3.i.i: ; preds = %bb.e
end_hunk_0
