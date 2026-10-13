Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SplitVar?download=true
inline.NumInlined: 4984
inline.NumDeleted: 1817
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK12PackedVarRef9splitPlanEPK6AstVarb:bb.a
  %.0.lcssa.i.i.i.i.i119 = phi ptr [ %i.hx, %.noexc122 ], [ %i.ic, %.lr.ph.i.i.i.i.i114 ]
  %.not.i34.i.i120 = icmp eq ptr %.sroa.0213.0.lcssa, null
  br i1 %.not.i34.i.i120, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i118
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.0.lcssa, i64 noundef %i.hp) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.as, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i118
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hv
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ap
  %.sroa.50.13 = phi ptr [ %i.id, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.50.0.lcssa, %bb.ap ] ; 5 uses
  %.0.lcssa.i.i.i.i.i119.pn = phi ptr [ %.0.lcssa.i.i.i.i.i119, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.27.0.lcssa, %bb.ap ] ; 5 uses
  %.sroa.0213.13 = phi ptr [ %i.hx, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0213.0.lcssa, %bb.ap ] ; 8 uses
  %.0.lcssa.i.i.i.i.i119.pn434 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i119.pn to i64
  %.sroa.27.9 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i119.pn, i64 8 ; 2 uses
  %.not.i123 = icmp eq ptr %.sroa.27.9, %.sroa.50.13
  br i1 %.not.i123, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit
  store i32 %i.dw, ptr %.sroa.27.9, align 4, !tbaa !437
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i119.pn, i64 12
  store i8 1, ptr %i.ie, align 4, !tbaa !438
  %i.if = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i119.pn, i64 16
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138

bb.au:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit
  %i.ig = ptrtoint ptr %.sroa.50.13 to i64
  %i.ih = ptrtoint ptr %.sroa.0213.13 to i64      ; 2 uses
  %i.ii = sub i64 %i.ig, %i.ih                    ; 4 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775800
  br i1 %i.ij, label %bb.av, label %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc136 unwind label %bb.ay

.noexc136:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124: ; preds = %bb.au
  %i.ik = ashr exact i64 %i.ii, 3                 ; 3 uses
  %.sroa.speculated.i.i.i125 = tail call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i125, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = tail call i64 @llvm.umin.i64(i64 %i.il, i64 1152921504606846975)
  %i.io = select i1 %i.im, i64 1152921504606846975, i64 %i.in ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.io, 0
  tail call void @llvm.assume(i1 %.not.i.i.i126)
  %i.ip = shl nuw nsw i64 %i.io, 3
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #28
          to label %.noexc137 unwind label %bb.ay ; 6 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ii ; 2 uses
  store i32 %i.dw, ptr %i.ir, align 4, !tbaa !437
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i8 1, ptr %i.is, align 4, !tbaa !438
  %.not10.i.i.i.i.i127 = icmp eq ptr %.sroa.0213.13, %.sroa.50.13
  br i1 %.not10.i.i.i.i.i127, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128.preheader

.lr.ph.i.i.i.i.i128.preheader:                    ; preds = %.noexc137
  %i.it = sub i64 %.0.lcssa.i.i.i.i.i119.pn434, %i.ih ; 2 uses
  %i.iu = lshr i64 %i.it, 3
  %i.iv = add nuw nsw i64 %i.iu, 1
  %xtraiter435 = and i64 %i.iv, 7                 ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i.i.i.i.i128.prol.loopexit, label %.lr.ph.i.i.i.i.i128.prol

.lr.ph.i.i.i.i.i128.prol:                         ; preds = %.lr.ph.i.i.i.i.i128.preheader, %.lr.ph.i.i.i.i.i128.prol
  %.012.i.i.i.i.i129.prol = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i128.prol ], [ %i.iq, %.lr.ph.i.i.i.i.i128.preheader ] ; 2 uses
  %.0911.i.i.i.i.i130.prol = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.i128.prol ], [ %.sroa.0213.13, %.lr.ph.i.i.i.i.i128.preheader ] ; 2 uses
  %prol.iter437 = phi i64 [ %prol.iter437.next, %.lr.ph.i.i.i.i.i128.prol ], [ 0, %.lr.ph.i.i.i.i.i128.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.iw = load i64, ptr %.0911.i.i.i.i.i130.prol, align 4, !alias.scope !894, !noalias !893
  store i64 %i.iw, ptr %.012.i.i.i.i.i129.prol, align 4, !alias.scope !893, !noalias !894
  %i.ix = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130.prol, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129.prol, i64 8 ; 3 uses
  %prol.iter437.next = add i64 %prol.iter437, 1   ; 2 uses
  %prol.iter437.cmp.not = icmp eq i64 %prol.iter437.next, %xtraiter435
  br i1 %prol.iter437.cmp.not, label %.lr.ph.i.i.i.i.i128.prol.loopexit, label %.lr.ph.i.i.i.i.i128.prol, !llvm.loop !835

.lr.ph.i.i.i.i.i128.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i128.prol, %.lr.ph.i.i.i.i.i128.preheader
  %.lcssa417.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.iy, %.lr.ph.i.i.i.i.i128.prol ]
  %.012.i.i.i.i.i129.unr = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.iy, %.lr.ph.i.i.i.i.i128.prol ]
  %.0911.i.i.i.i.i130.unr = phi ptr [ %.sroa.0213.13, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.ix, %.lr.ph.i.i.i.i.i128.prol ]
  %i.iz = icmp ult i64 %i.it, 56
  br i1 %i.iz, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %.lr.ph.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i128
  %.012.i.i.i.i.i129 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i128 ], [ %.012.i.i.i.i.i129.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i130 = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i128 ], [ %.0911.i.i.i.i.i130.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.ja = load i64, ptr %.0911.i.i.i.i.i130, align 4, !alias.scope !894, !noalias !893
  store i64 %i.ja, ptr %.012.i.i.i.i.i129, align 4, !alias.scope !893, !noalias !894
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.jd = load i64, ptr %i.jb, align 4, !alias.scope !896, !noalias !895
  store i64 %i.jd, ptr %i.jc, align 4, !alias.scope !895, !noalias !896
  %i.je = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.jg = load i64, ptr %i.je, align 4, !alias.scope !898, !noalias !897
  store i64 %i.jg, ptr %i.jf, align 4, !alias.scope !897, !noalias !898
  %i.jh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.jj = load i64, ptr %i.jh, align 4, !alias.scope !900, !noalias !899
  store i64 %i.jj, ptr %i.ji, align 4, !alias.scope !899, !noalias !900
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.jm = load i64, ptr %i.jk, align 4, !alias.scope !902, !noalias !901
  store i64 %i.jm, ptr %i.jl, align 4, !alias.scope !901, !noalias !902
  %i.jn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 40
  %i.jo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.jp = load i64, ptr %i.jn, align 4, !alias.scope !904, !noalias !903
  store i64 %i.jp, ptr %i.jo, align 4, !alias.scope !903, !noalias !904
  %i.jq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 48
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.js = load i64, ptr %i.jq, align 4, !alias.scope !906, !noalias !905
  store i64 %i.js, ptr %i.jr, align 4, !alias.scope !905, !noalias !906
  %i.jt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 56 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.jv = load i64, ptr %i.jt, align 4, !alias.scope !908, !noalias !907
  store i64 %i.jv, ptr %i.ju, align 4, !alias.scope !907, !noalias !908
  %i.jw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 64
  %i.jx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 64 ; 2 uses
  %.not.i.i.i.i.i131.7 = icmp eq ptr %i.jt, %.0.lcssa.i.i.i.i.i119.pn
  br i1 %.not.i.i.i.i.i131.7, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128, !llvm.loop !789

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132: ; preds = %.lr.ph.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i128, %.noexc137
  %.0.lcssa.i.i.i.i.i133 = phi ptr [ %i.iq, %.noexc137 ], [ %.lcssa417.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ], [ %i.jx, %.lr.ph.i.i.i.i.i128 ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i133, i64 8
  %.not.i34.i.i134 = icmp eq ptr %.sroa.0213.13, null
  br i1 %.not.i34.i.i134, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.13, i64 noundef %i.ii) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135: ; preds = %bb.aw, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.io
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138

bb.ax:                                            ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110, %bb.ar
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ay:                                            ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124, %bb.av
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105, %bb.aj, %bb.r, %bb.at, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135
  %.sroa.50.5 = phi ptr [ %.sroa.50.0.lcssa, %bb.r ], [ %.sroa.50.13, %bb.at ], [ %i.jz, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %.sroa.50.11, %bb.aj ], [ %i.hj, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 5 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.0.lcssa, %bb.r ], [ %i.if, %bb.at ], [ %i.jy, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %i.fp, %bb.aj ], [ %i.hi, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 4 uses
  %.sroa.0213.5 = phi ptr [ %.sroa.0213.0.lcssa, %bb.r ], [ %.sroa.0213.13, %bb.at ], [ %i.iq, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %.sroa.0213.11, %bb.aj ], [ %i.ga, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 12 uses
  %.not.i.i139 = icmp eq ptr %.sroa.0213.5, %.sroa.27.3
  %.pre348 = ptrtoint ptr %.sroa.27.3 to i64
  %.pre349 = ptrtoint ptr %.sroa.0213.5 to i64    ; 5 uses
  %.pre351 = sub i64 %.pre348, %.pre349
  %.pre353 = ashr exact i64 %.pre351, 3           ; 3 uses
  br i1 %.not.i.i139, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138
  %i.kc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre353, i1 true)
  %i.kd = shl nuw nsw i64 %i.kc, 1
  %i.ke = xor i64 %i.kd, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN12PackedVarRef11SortByFirstEEEEvT_SE_T0_T1_(ptr %.sroa.0213.5, ptr %.sroa.27.3, i64 noundef %i.ke)
          to label %.noexc140 unwind label %bb.v

.noexc140:                                        ; preds = %bb.az
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN12PackedVarRef11SortByFirstEEEEvT_SE_T0_(ptr %.sroa.0213.5, ptr %.sroa.27.3)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit unwind label %bb.v

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138, %.noexc140
  %i.kf = icmp ugt i64 %.pre353, 1
  br i1 %i.kf, label %.lr.ph325, label %._crit_edge326

.lr.ph325:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit
  %.promoted = load ptr, ptr %0, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.ba

._crit_edge326:                                   ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit
  %.not.i.i.i142 = icmp eq ptr %.sroa.0213.5, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit, label %._crit_edge326.thread

._crit_edge326.thread:                            ; preds = %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, %._crit_edge326
  %i.ki = ptrtoint ptr %.sroa.50.5 to i64
  %i.kj = sub i64 %i.ki, %.pre349
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.5, i64 noundef %i.kj) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit:        ; preds = %._crit_edge326, %._crit_edge326.thread
  ret void

bb.ba:                                            ; preds = %.lr.ph325, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit
  %i.kk = phi i64 [ 1, %.lr.ph325 ], [ %i.lt, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ] ; 3 uses
  %.0324 = phi i64 [ 0, %.lr.ph325 ], [ %i.kk, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  %.031323 = phi i32 [ 0, %.lr.ph325 ], [ %.1, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  %i.kl = phi ptr [ %.promoted, %.lr.ph325 ], [ %i.ls, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ] ; 7 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0213.5, i64 %i.kk
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !437 ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0213.5, i64 %.0324 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !437 ; 4 uses
  %i.kq = sub nsw i32 %i.kn, %i.kp                ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ks = load i8, ptr %i.kr, align 4, !tbaa !438, !range !137, !noundef !138
  %i.kt = trunc nuw i8 %i.ks to i1
  %.1.v = select i1 %i.kt, i32 -1, i32 1
  %.1 = add nsw i32 %.1.v, %.031323               ; 3 uses
  %i.ku = icmp slt i32 %.1, 0
  br i1 %i.ku, label %bb.bb, label %bb.bg, !prof !56

bb.bb:                                            ; preds = %bb.ba
  %i.kv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 968)
          to label %bb.bc unwind label %bb.bf     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.kw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.bd unwind label %bb.bf     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.kx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull @.str.600, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144: ; preds = %bb.bd
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.kw) #27
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144
  unreachable

bb.bf:                                            ; preds = %bb.bd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144, %bb.bc, %bb.bb
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bg:                                            ; preds = %bb.ba
  %i.kz = icmp eq i32 %i.kn, %i.kp
  %i.la = icmp eq i32 %.1, 0
  %or.cond = or i1 %i.kz, %i.la
  br i1 %or.cond, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %4 = load ptr, ptr %i.kg, align 8, !tbaa !421   ; 8 uses
  %5 = load ptr, ptr %i.kh, align 8, !tbaa !423
  %.not.i145 = icmp eq ptr %4, %5
  br i1 %.not.i145, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.kp, ptr %4, align 8, !tbaa !96
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.kq, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !96
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !92
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.lb, ptr %i.kg, align 8, !tbaa !421
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.lc = ptrtoint ptr %4 to i64
  %i.ld = ptrtoint ptr %i.kl to i64
  %i.le = sub i64 %i.lc, %i.ld                    ; 4 uses
  %i.lf = icmp eq i64 %i.le, 9223372036854775792
  br i1 %i.lf, label %bb.bk, label %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc154 unwind label %.loopexit.split-lp

.noexc154:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bj
  %i.lg = ashr exact i64 %i.le, 4                 ; 3 uses
  %.sroa.speculated.i.i.i146 = tail call i64 @llvm.umax.i64(i64 %i.lg, i64 1)
  %i.lh = add nsw i64 %.sroa.speculated.i.i.i146, %i.lg ; 2 uses
  %i.li = icmp ult i64 %i.lh, %i.lg
  %i.lj = tail call i64 @llvm.umin.i64(i64 %i.lh, i64 576460752303423487)
  %i.lk = select i1 %i.li, i64 576460752303423487, i64 %i.lj ; 3 uses
  %.not.i.i.i147 = icmp ne i64 %i.lk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i147)
  %i.ll = shl nuw nsw i64 %i.lk, 4
  %i.lm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ll) #28
          to label %.noexc155 unwind label %.loopexit ; 6 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.le ; 3 uses
  store i32 %i.kp, ptr %i.ln, align 8, !tbaa !96
  %.sroa.6.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store i32 %i.kq, ptr %.sroa.6.0..sroa_idx160, align 4, !tbaa !96
  %.sroa.7.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store ptr null, ptr %.sroa.7.0..sroa_idx162, align 8, !tbaa !92
  %.not10.i.i.i.i.i148 = icmp eq ptr %i.kl, %4
  br i1 %.not10.i.i.i.i.i148, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i149

.lr.ph.i.i.i.i.i149:                              ; preds = %.noexc155, %.lr.ph.i.i.i.i.i149
  %.012.i.i.i.i.i150 = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i149 ], [ %i.lm, %.noexc155 ] ; 2 uses
  %.0911.i.i.i.i.i151 = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i149 ], [ %i.kl, %.noexc155 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i150, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i151, i64 16, i1 false), !tbaa.struct !909, !alias.scope !910
  %i.lo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i151, i64 16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i150, i64 16 ; 2 uses
  %.not.i.i.i.i.i152 = icmp eq ptr %i.lo, %4
  br i1 %.not.i.i.i.i.i152, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i149, !llvm.loop !853

_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i149, %.noexc155
  %.0.lcssa.i.i.i.i.i153 = phi ptr [ %i.lm, %.noexc155 ], [ %i.lp, %.lr.ph.i.i.i.i.i149 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i153, i64 16
  %.not.i23.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.le) #24
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bl, %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.lm, ptr %0, align 8, !tbaa !422
  store ptr %i.lq, ptr %i.kg, align 8, !tbaa !421
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.lk
  store ptr %i.lr, ptr %i.kh, align 8, !tbaa !423
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.bi, %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.bg
  %i.ls = phi ptr [ %i.kl, %bb.bi ], [ %i.lm, %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.kl, %bb.bg ]
  %i.lt = add nuw i64 %i.kk, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.lt, %.pre353
  br i1 %exitcond.not, label %._crit_edge326.thread, label %bb.ba, !llvm.loop !854

.loopexit:                                        ; preds = %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.bk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bm:                                            ; preds = %.loopexit280, %.loopexit.split-lp281, %.loopexit275, %.loopexit.split-lp276, %bb.u, %bb.ay, %bb.ax, %bb.v, %bb.ao, %bb.an, %bb.ad
  %.sroa.50.7 = phi ptr [ %.sroa.50.0.lcssa, %bb.ad ], [ %.sroa.27.0316, %.loopexit.split-lp276 ], [ %.sroa.50.0.lcssa, %bb.u ], [ %.sroa.50.0.lcssa, %bb.an ], [ %.sroa.50.11, %bb.ao ], [ %.sroa.50.5, %bb.v ], [ %.sroa.50.0.lcssa, %bb.ax ], [ %.sroa.50.13, %bb.ay ], [ %.sroa.27.0316, %.loopexit275 ], [ %.sroa.50.9, %.loopexit280 ], [ %.sroa.50.9, %.loopexit.split-lp281 ]
  %.sroa.0213.7 = phi ptr [ %.sroa.0213.0.lcssa, %bb.ad ], [ %.sroa.0213.0317, %.loopexit.split-lp276 ], [ %.sroa.0213.0.lcssa, %bb.u ], [ %.sroa.0213.0.lcssa, %bb.an ], [ %.sroa.0213.11, %bb.ao ], [ %.sroa.0213.5, %bb.v ], [ %.sroa.0213.0.lcssa, %bb.ax ], [ %.sroa.0213.13, %bb.ay ], [ %.sroa.0213.0317, %.loopexit275 ], [ %.sroa.0213.9, %.loopexit280 ], [ %.sroa.0213.9, %.loopexit.split-lp281 ] ; 3 uses
  %.pn47.pn = phi { ptr, i32 } [ %i.eu, %bb.ad ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp276 ], [ %i.ed, %bb.u ], [ %i.hk, %bb.an ], [ %i.hl, %bb.ao ], [ %i.ee, %bb.v ], [ %i.ka, %bb.ax ], [ %i.kb, %bb.ay ], [ %lpad.loopexit277, %.loopexit275 ], [ %lpad.loopexit282, %.loopexit280 ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp281 ] ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.sroa.0213.7, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.bm
  %.pre355 = ptrtoint ptr %.sroa.0213.7 to i64
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.loopexit, %.loopexit.split-lp, %bb.bf
  %.pre-phi356 = phi i64 [ %.pre355, %..thread_crit_edge ], [ %.pre349, %.loopexit ], [ %.pre349, %.loopexit.split-lp ], [ %.pre349, %bb.bf ]
  %.pn47.pn265 = phi { ptr, i32 } [ %.pn47.pn, %..thread_crit_edge ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ky, %bb.bf ]
  %.sroa.0213.7264 = phi ptr [ %.sroa.0213.7, %..thread_crit_edge ], [ %.sroa.0213.5, %.loopexit ], [ %.sroa.0213.5, %.loopexit.split-lp ], [ %.sroa.0213.5, %bb.bf ]
  %.sroa.50.7263 = phi ptr [ %.sroa.50.7, %..thread_crit_edge ], [ %.sroa.50.5, %.loopexit ], [ %.sroa.50.5, %.loopexit.split-lp ], [ %.sroa.50.5, %bb.bf ]
  %i.lu = ptrtoint ptr %.sroa.50.7263 to i64
  %i.lv = sub i64 %i.lu, %.pre-phi356
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.7264, i64 noundef %i.lv) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157

_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157:     ; preds = %.thread267, %bb.bm, %.thread
  %.pn47.pn266 = phi { ptr, i32 } [ %.pn47.pn, %bb.bm ], [ %.pn47.pn265, %.thread ], [ %i.ax, %.thread267 ]
  %i.lw = load ptr, ptr %0, align 8, !tbaa !422   ; 3 uses
  %.not.i.i.i158 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !423
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mb) #24
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit

_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157, %bb.bn
  resume { ptr, i32 } %.pn47.pn266
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7AstNode5widthEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !417
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
  %i.c = load ptr, ptr %3, align 8, !tbaa !414    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !414  ; 2 uses
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
  %i.bh = load i32, ptr %.sroa.0490.0712, align 8, !tbaa !439 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0490.0712, i64 4 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !416
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
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.bp, align 8, !tbaa !51
  %i.bq = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.bq, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bs = call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.br)
  br label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.d, %bb.c
  %i.bt = phi i32 [ %i.bs, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !227 ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i, label %_ZNK8AstRange9ascendingEv.exit.i, label %bb.e
end_hunk_0
