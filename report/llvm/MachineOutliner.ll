Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineOutliner?download=true
inline.NumInlined: 4112
inline.NumDeleted: 2287
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS1_8outliner16OutlinedFunctionESt14default_deleteIS7_EESaISA_EERNS_17InstructionMapperERj:bb.a
  %.013.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i, i64 40
  store i64 %load_initial, ptr %.013.i.i.i.i.i.i.4, align 8, !tbaa !368
  store ptr null, ptr %i.ae, align 8, !tbaa !368
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i, i64 48
  %.013.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i, i64 48
  store i64 %load_initial, ptr %.013.i.i.i.i.i.i.5, align 8, !tbaa !368
  store ptr null, ptr %i.af, align 8, !tbaa !368
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i, i64 56
  %.013.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i, i64 56
  store i64 %load_initial, ptr %.013.i.i.i.i.i.i.6, align 8, !tbaa !368
  store ptr null, ptr %i.ag, align 8, !tbaa !368
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %.013.i.i.i.i.i.i.7, %i.s
  br i1 %.not.i.i.i.i.i.i.7, label %._crit_edge.i.i.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !792

._crit_edge.i.i.loopexit.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa1130 = phi ptr [ %.lcssa1130.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %.lcssa1130, align 8, !tbaa !368
  br label %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i.i.i.i

_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.loopexit.i.i.i.i, %bb.c
  %i.ai = phi ptr [ %i.u, %bb.c ], [ %.pre.i.i.i.i, %._crit_edge.i.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %.lcssa1130, %._crit_edge.i.i.loopexit.i.i.i.i ]
  store ptr null, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !368
  store ptr %i.ai, ptr %.val, align 8, !tbaa !368
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit.i.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i.i.i.i, %bb.b
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.b ], [ %.010.i.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i ] ; 4 uses
  %.sroa.11.0.i.i.i = phi ptr [ null, %bb.b ], [ %i.o, %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i.i.i.i ], [ null, %select.unfold.i.i.i.i.i ] ; 8 uses
  %i.aj = icmp eq i64 %i.l, %.sroa.4.0.i.i.i
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !87

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit.i.i.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.l ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_"(ptr %.val, ptr %i.ak, ptr noundef %.sroa.11.0.i.i.i)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_"(ptr %i.ak, ptr %.val91, ptr noundef %.sroa.11.0.i.i.i)
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.g, %i.al
  %i.an = ashr exact i64 %i.am, 3
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_SQ_T0_SR_T1_T2_"(ptr %.val, ptr %i.ak, ptr %.val91, i64 noundef %i.l, i64 noundef %i.an, ptr noundef %.sroa.11.0.i.i.i)
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit.i.i.i
  %i.ao = icmp eq ptr %.sroa.11.0.i.i.i, null
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !370

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_"(ptr %.val, ptr %.val91)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_"(ptr %.val, ptr %.val91, ptr noundef nonnull %.sroa.11.0.i.i.i, i64 noundef %.sroa.4.0.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.idx.i.i.i.i = shl i64 %.sroa.4.0.i.i.i, 3     ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.11.0.i.i.i, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %"_ZN4llvm11stable_sortIRSt6vectorISt10unique_ptrINS_8outliner16OutlinedFunctionESt14default_deleteIS4_EESaIS7_EEZN12_GLOBAL__N_115MachineOutliner7outlineERNS_6ModuleESA_RNSB_17InstructionMapperERjE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i14.i.i.i

.lr.ph.i.i.i14.i.i.i:                             ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.h ] ; 2 uses
  %i.aq = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !368 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(52) %i.aq) #25, !inline_history !793
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i14.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i15.i.i.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not.i.i.i15.i.i.i, label %"_ZN4llvm11stable_sortIRSt6vectorISt10unique_ptrINS_8outliner16OutlinedFunctionESt14default_deleteIS4_EESaIS7_EEZN12_GLOBAL__N_115MachineOutliner7outlineERNS_6ModuleESA_RNSB_17InstructionMapperERjE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i14.i.i.i, !llvm.loop !11

"_ZN4llvm11stable_sortIRSt6vectorISt10unique_ptrINS_8outliner16OutlinedFunctionESt14default_deleteIS4_EESaIS7_EEZN12_GLOBAL__N_115MachineOutliner7outlineERNS_6ModuleESA_RNSB_17InstructionMapperERjE3$_0EEvOT_T0_.exit": ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i.i, i64 noundef %.idx.i.i.i.i) #25
  %.pre = load ptr, ptr %2, align 8, !tbaa !859   ; 2 uses
  %.pre629 = load ptr, ptr %i.e, align 8, !tbaa !859 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53 ; 17 uses
  %.not348540 = icmp eq ptr %.pre, %.pre629
  br i1 %.not348540, label %._crit_edge544, label %.lr.ph543

.lr.ph543:                                        ; preds = %"_ZN4llvm11stable_sortIRSt6vectorISt10unique_ptrINS_8outliner16OutlinedFunctionESt14default_deleteIS4_EESaIS7_EEZN12_GLOBAL__N_115MachineOutliner7outlineERNS_6ModuleESA_RNSB_17InstructionMapperERjE3$_0EEvOT_T0_.exit"
  %i.ax = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %40, i64 12 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %29, i64 33
  %i.bn = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %30, i64 33
  %i.bp = getelementptr inbounds nuw i8, ptr %31, i64 88 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %31, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %31, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %31, i64 68
  %i.bx = getelementptr inbounds nuw i8, ptr %31, i64 69
  %i.by = getelementptr inbounds nuw i8, ptr %31, i64 70
  %i.bz = getelementptr inbounds nuw i8, ptr %31, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 33
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %34, i64 48 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %38, i64 44
  %i.dx = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 416
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 420
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 424
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 33 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 10 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 10 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %42, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 12 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %42, i64 40 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %42, i64 48 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %42, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %42, i64 64 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.ga = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %43, i64 40 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %43, i64 64 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.gh = getelementptr inbounds nuw i8, ptr %44, i64 32 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %44, i64 64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %51, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %52, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.gu = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.fs, i64 1
  %i.gv = insertelement <2 x ptr> poison, ptr %i.ga, i64 0
  %i.gw = shufflevector <2 x ptr> %i.gv, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x ptr> poison, ptr %i.gh, i64 0
  %i.gy = shufflevector <2 x ptr> %i.gx, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gz = insertelement <2 x ptr> poison, ptr %i.fs, i64 0
  %i.ha = shufflevector <2 x ptr> %i.gz, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.i

._crit_edge544:                                   ; preds = %bb.jg, %bb.a, %"_ZN4llvm11stable_sortIRSt6vectorISt10unique_ptrINS_8outliner16OutlinedFunctionESt14default_deleteIS4_EESaIS7_EEZN12_GLOBAL__N_115MachineOutliner7outlineERNS_6ModuleESA_RNSB_17InstructionMapperERjE3$_0EEvOT_T0_.exit"
  %.0.lcssa = phi i1 [ false, %"_ZN4llvm11stable_sortIRSt6vectorISt10unique_ptrINS_8outliner16OutlinedFunctionESt14default_deleteIS4_EESaIS7_EEZN12_GLOBAL__N_115MachineOutliner7outlineERNS_6ModuleESA_RNSB_17InstructionMapperERjE3$_0EEvOT_T0_.exit" ], [ false, %bb.a ], [ %.2, %bb.jg ]
  ret i1 %.0.lcssa

bb.i:                                             ; preds = %.lr.ph543, %bb.jg
  %.0542 = phi i1 [ false, %.lr.ph543 ], [ %.2, %bb.jg ] ; 2 uses
  %.sroa.0329.0541 = phi ptr [ %.pre, %.lr.ph543 ], [ %i.bmc, %bb.jg ] ; 8 uses
  %i.hb = load ptr, ptr %.sroa.0329.0541, align 8, !tbaa !368 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.hc, align 8, !tbaa !369 ; 9 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %.val5.i = load ptr, ptr %i.hd, align 8, !tbaa !369 ; 8 uses
  %i.he = ptrtoint ptr %.val5.i to i64            ; 2 uses
  %i.hf = ptrtoint ptr %.val.i to i64             ; 6 uses
  %i.hg = sub i64 %i.he, %i.hf                    ; 7 uses
  %i.hh = sdiv exact i64 %i.hg, 224
  %i.hi = ashr i64 %i.hh, 2                       ; 3 uses
  %i.hj = icmp sgt i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i.i.i.i.i.i94, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i94:                             ; preds = %bb.i
  %i.hk = mul nuw nsw i64 %i.hi, 896
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val.i, i64 %i.hk ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit108.thread.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i94
  %.0277.i.i.i.i.i.i = phi i64 [ %i.hi, %.lr.ph.i.i.i.i.i.i94 ], [ %i.mj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit108.thread.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.0199.0276.i.i.i.i.i.i = phi ptr [ %.val.i, %.lr.ph.i.i.i.i.i.i94 ], [ %i.mi, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit108.thread.i.i.i.i.i.i" ] ; 13 uses
  %.val1.i.i.i.i.i.i.i = load i32, ptr %.sroa.0199.0276.i.i.i.i.i.i, align 8, !tbaa !355 ; 2 uses
  %i.hl = getelementptr i8, ptr %.sroa.0199.0276.i.i.i.i.i.i, i64 4
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.hl, align 4, !tbaa !356
  %i.hm = zext i32 %.val1.i.i.i.i.i.i.i to i64
  %.idx1.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hm, 2 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx1.i.i.i.i.i.i.i.i ; 3 uses
  %i.ho = add i32 %.val1.i.i.i.i.i.i.i, -1
  %i.hp = add i32 %i.ho, %.val2.i.i.i.i.i.i.i
  %i.hq = zext i32 %i.hp to i64
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hq, 2
  %i.hr = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.hr
  %gepdiff.i.i.i.i.i.i.i.i = sub nsw i64 %i.hr, %.idx1.i.i.i.i.i.i.i.i ; 3 uses
  %i.ht = ashr i64 %gepdiff.i.i.i.i.i.i.i.i, 4    ; 2 uses
  %i.hu = icmp sgt i64 %i.ht, 0
  br i1 %i.hu, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.j
  %i.hv = and i64 %gepdiff.i.i.i.i.i.i.i.i, -16   ; 2 uses
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.hn, i64 %i.hv
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.n, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ie, %bb.n ], [ %i.ht, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.id, %bb.n ], [ %i.hn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !112
  %i.hw = icmp eq i32 %.029.val32.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.hw, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.val31.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hx, align 4, !tbaa !112
  %i.hy = icmp eq i32 %.val31.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.hy, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hz = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val30.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hz, align 4, !tbaa !112
  %i.ia = icmp eq i32 %.val30.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ia, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit898", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ib = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 12
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ib, align 4, !tbaa !112
  %i.ic = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ic, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit900", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.id = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ie = add nsw i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.if = icmp sgt i64 %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !794

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.n
  %i.ig = add nsw i64 %.idx1.i.i.i.i.i.i.i.i, %i.hv
  %gepdiff2.i.i.i.i.i.i.i.i = sub nsw i64 %i.hr, %i.ig
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.pre-phi50.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %gepdiff2.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %gepdiff.i.i.i.i.i.i.i.i, %bb.j ]
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hn, %bb.j ] ; 5 uses
  %i.ih = ashr exact i64 %.pre-phi50.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  switch i64 %i.ih, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.thread.i.i.i.i.i.i" [
    i64 3, label %bb.o
    i64 2, label %bb.q
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !112
  %i.ii = icmp eq i32 %.029.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ii, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ij = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ij, %bb.p ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !112
  %i.ik = icmp eq i32 %.1.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ik, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.il = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.il, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !112
  %i.im = icmp eq i32 %.2.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.im, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.k
  %i.in = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit898": ; preds = %bb.l
  %i.io = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit900": ; preds = %bb.m
  %i.ip = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 12
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit898", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit900", %bb.s, %bb.q, %bb.o
  %.028.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ], [ %i.ip, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit900" ], [ %i.io, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit898" ], [ %i.in, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not217.i.i.i.i.i.i = icmp eq ptr %i.hs, %.028.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not217.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.thread.i.i.i.i.i.i", label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN4llvm8outliner9CandidateESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERNS2_6ModuleERS6_ISt10unique_ptrINS3_16OutlinedFunctionESt14default_deleteISH_EESaISK_EERNSC_17InstructionMapperERjE3$_1EEET_ST_ST_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.i.i.i.i.i.i", %bb.s, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0199.0276.i.i.i.i.i.i, i64 224
  %.val1.i22.i.i.i.i.i.i = load i32, ptr %i.iq, align 8, !tbaa !355 ; 2 uses
  %i.ir = getelementptr i8, ptr %.sroa.0199.0276.i.i.i.i.i.i, i64 228
  %.val2.i23.i.i.i.i.i.i = load i32, ptr %i.ir, align 4, !tbaa !356
  %i.is = zext i32 %.val1.i22.i.i.i.i.i.i to i64
  %.idx1.i.i24.i.i.i.i.i.i = shl nuw nsw i64 %i.is, 2 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx1.i.i24.i.i.i.i.i.i ; 3 uses
  %i.iu = add i32 %.val1.i22.i.i.i.i.i.i, -1
  %i.iv = add i32 %i.iu, %.val2.i23.i.i.i.i.i.i
  %i.iw = zext i32 %i.iv to i64
  %.idx.i.i25.i.i.i.i.i.i = shl nuw nsw i64 %i.iw, 2
  %i.ix = add nuw nsw i64 %.idx.i.i25.i.i.i.i.i.i, 4 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ix
  %gepdiff.i.i26.i.i.i.i.i.i = sub nsw i64 %i.ix, %.idx1.i.i24.i.i.i.i.i.i ; 3 uses
  %i.iz = ashr i64 %gepdiff.i.i26.i.i.i.i.i.i, 4  ; 2 uses
  %i.ja = icmp sgt i64 %i.iz, 0
  br i1 %i.ja, label %.lr.ph.preheader.i.i.i.i.i.i.i36.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i27.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i36.i.i.i.i.i.i:     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS4_8outliner16OutlinedFunctionESt14default_deleteISA_EESaISD_EERNS2_17InstructionMapperERjE3$_1EclINS_17__normal_iteratorIPNS9_9CandidateES7_ISO_SaISO_EEEEEEbT_.exit.thread.i.i.i.i.i.i"
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_115MachineOutliner7outlineERN4llvm6ModuleERSt6vectorISt10unique_ptrINS1_8outliner16OutlinedFunctionESt14default_deleteIS7_EESaISA_EERNS_17InstructionMapperERj:bb.a
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aub, i64 8 ; 4 uses
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !341
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 4
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !356
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr nonnull @.str.23, i64 6, i32 noundef %i.avb) #25
  %i.avc = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %i.aux, ptr nofree noundef nonnull align 8 dereferenceable(80) %11) ; 3 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.avc, ptr nonnull @.str.55, i64 14) #25
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.avc, ptr nonnull @.str.56, i64 5) #25
  %i.avd = load ptr, ptr %i.aub, align 8, !tbaa !41
  %i.ave = load ptr, ptr %i.avd, align 8
  %i.avf = call noundef i32 %i.ave(ptr noundef nonnull align 8 dereferenceable(52) %i.aub) #25, !inline_history !832
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr nonnull @.str.26, i64 14, i32 noundef %i.avf) #25
  %i.avg = call noundef nonnull align 8 dereferenceable(432) ptr @_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE(ptr noundef nonnull align 8 dereferenceable(432) %i.avc, ptr nofree noundef nonnull align 8 dereferenceable(80) %12) ; 2 uses
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.avg, ptr nonnull @.str.57, i64 12) #25
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %i.avg, ptr nonnull @.str.58, i64 11) #25
  %i.avh = load ptr, ptr %i.ep, align 8, !tbaa !99 ; 2 uses
  %i.avi = icmp eq ptr %i.avh, %i.eq
  br i1 %i.avi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101: ; preds = %_ZN12_GLOBAL__N_115MachineOutliner22createOutlinedFunctionERN4llvm6ModuleERNS1_8outliner16OutlinedFunctionERNS_17InstructionMapperEj.exit
  %i.avj = load i64, ptr %i.eq, align 8, !tbaa !129
  %i.avk = add i64 %i.avj, 1
  call void @_ZdlPvm(ptr noundef %i.avh, i64 noundef %i.avk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i102: ; preds = %_ZN12_GLOBAL__N_115MachineOutliner22createOutlinedFunctionERN4llvm6ModuleERNS1_8outliner16OutlinedFunctionERNS_17InstructionMapperEj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i101
  %i.avl = load ptr, ptr %12, align 8, !tbaa !99  ; 2 uses
  %i.avm = icmp eq ptr %i.avl, %i.er
  br i1 %i.avm, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i102
  %i.avn = load i64, ptr %i.er, align 8, !tbaa !129
  %i.avo = add i64 %i.avn, 1
  call void @_ZdlPvm(ptr noundef %i.avl, i64 noundef %i.avo) #28
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.avp = load ptr, ptr %i.es, align 8, !tbaa !99 ; 2 uses
  %i.avq = icmp eq ptr %i.avp, %i.et
  br i1 %i.avq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i
  %i.avr = load i64, ptr %i.et, align 8, !tbaa !129
  %i.avs = add i64 %i.avr, 1
  call void @_ZdlPvm(ptr noundef %i.avp, i64 noundef %i.avs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i
  %i.avt = load ptr, ptr %11, align 8, !tbaa !99  ; 2 uses
  %i.avu = icmp eq ptr %i.avt, %i.eu
  br i1 %i.avu, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i
  %i.avv = load i64, ptr %i.eu, align 8, !tbaa !129
  %i.avw = add i64 %i.avv, 1
  call void @_ZdlPvm(ptr noundef %i.avt, i64 noundef %i.avw) #28
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit23.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i
  %i.avx = load ptr, ptr %i.ev, align 8, !tbaa !99 ; 2 uses
  %i.avy = icmp eq ptr %i.avx, %i.ew
  br i1 %i.avy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit23.i
  %i.avz = load i64, ptr %i.ew, align 8, !tbaa !129
  %i.awa = add i64 %i.avz, 1
  call void @_ZdlPvm(ptr noundef %i.avx, i64 noundef %i.awa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit23.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i
  %i.awb = load ptr, ptr %10, align 8, !tbaa !99  ; 2 uses
  %i.awc = icmp eq ptr %i.awb, %i.ex
  br i1 %i.awc, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i26.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i
  %i.awd = load i64, ptr %i.ex, align 8, !tbaa !129
  %i.awe = add i64 %i.awd, 1
  call void @_ZdlPvm(ptr noundef %i.awb, i64 noundef %i.awe) #28
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit29.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i26.i
  %i.awf = getelementptr inbounds nuw i8, ptr %i.aub, i64 16
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !342 ; 2 uses
  %i.awh = load ptr, ptr %i.auy, align 8, !tbaa !341 ; 2 uses
  %.not28.i = icmp eq ptr %i.awg, %i.awh
  br i1 %.not28.i, label %._crit_edge.i107, label %_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i

_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i:          ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit29.i
  %i.awi = ptrtoint ptr %i.awg to i64
  %i.awj = ptrtoint ptr %i.awh to i64
  %i.awk = sub i64 %i.awi, %i.awj
  %i.awl = sdiv exact i64 %i.awk, 224             ; 2 uses
  %i.awm = add nsw i64 %i.awl, -1                 ; 2 uses
  %.not = icmp eq i64 %i.awm, 0
  br i1 %.not, label %._crit_edge.i107.loopexit.peel.begin, label %_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i.split

_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i.split:    ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i
  %i.awn = add nsw i64 %i.awl, -2
  br label %_ZN4llvmplERKNS_5TwineES2_.exit.i

._crit_edge.i107.loopexit.peel.begin:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111, %_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i
  %i.awo = phi i64 [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i ], [ %i.bax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %.sroa.04.0.copyload.i.i.cast.i.peel = inttoptr i64 %i.awo to ptr
  store ptr @.str.59, ptr %15, align 8, !alias.scope !1043
  store ptr %.sroa.04.0.copyload.i.i.cast.i.peel, ptr %i.ey, align 8, !alias.scope !1043
  store i8 3, ptr %i.ez, align 8, !tbaa !416, !alias.scope !1043
  store i8 11, ptr %i.fa, align 1, !tbaa !417, !alias.scope !1043
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(34) %15) #25
  %i.awp = load ptr, ptr %14, align 8, !tbaa !99
  %i.awq = load i64, ptr %i.fb, align 8, !tbaa !100
  %i.awr = load ptr, ptr %i.auy, align 8, !tbaa !341
  %i.aws = getelementptr inbounds nuw [224 x i8], ptr %i.awr, i64 %i.awo
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !329
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 72
  %.sroa.0.0.copyload.i103.peel = load ptr, ptr %i.awv, align 8, !tbaa !418
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr %i.awp, i64 %i.awq, ptr %.sroa.0.0.copyload.i103.peel) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.fi, ptr %5, align 8, !tbaa !128
  %i.aww = load ptr, ptr %13, align 8, !tbaa !99  ; 2 uses
  %i.awx = load i64, ptr %i.fg, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.awx, ptr %i.b, align 8, !tbaa !82
  %i.awy = icmp ugt i64 %i.awx, 15
  br i1 %i.awy, label %bb.ha, label %._crit_edge.i.i.i.i264.peel

bb.ha:                                            ; preds = %._crit_edge.i107.loopexit.peel.begin
  %i.awz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.awz, ptr %5, align 8, !tbaa !99
  %i.axa = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.axa, ptr %i.fi, align 8, !tbaa !129
  br label %._crit_edge.i.i.i.i264.peel

._crit_edge.i.i.i.i264.peel:                      ; preds = %bb.ha, %._crit_edge.i107.loopexit.peel.begin
  %i.axb = phi ptr [ %i.awz, %bb.ha ], [ %i.fi, %._crit_edge.i107.loopexit.peel.begin ] ; 2 uses
  switch i64 %i.awx, label %bb.hc [
    i64 1, label %bb.hb
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.peel
  ]

bb.hb:                                            ; preds = %._crit_edge.i.i.i.i264.peel
  %i.axc = load i8, ptr %i.aww, align 1, !tbaa !129
  store i8 %i.axc, ptr %i.axb, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.peel

bb.hc:                                            ; preds = %._crit_edge.i.i.i.i264.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axb, ptr align 1 %i.aww, i64 %i.awx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.peel: ; preds = %bb.hc, %bb.hb, %._crit_edge.i.i.i.i264.peel
  %i.axd = load i64, ptr %i.b, align 8, !tbaa !82 ; 2 uses
  store i64 %i.axd, ptr %i.fj, align 8, !tbaa !100
  %i.axe = load ptr, ptr %5, align 8, !tbaa !99
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.axd
  store i8 0, ptr %i.axf, align 1, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !128
  %i.axg = load ptr, ptr %i.fc, align 8, !tbaa !99 ; 2 uses
  %i.axh = load i64, ptr %i.fe, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.axh, ptr %i.a, align 8, !tbaa !82
  %i.axi = icmp ugt i64 %i.axh, 15
  br i1 %i.axi, label %bb.hd, label %._crit_edge.i.i4.i.i.peel

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.peel
  %i.axj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.axj, ptr %i.fk, align 8, !tbaa !99
  %i.axk = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.axk, ptr %i.fl, align 8, !tbaa !129
  br label %._crit_edge.i.i4.i.i.peel

._crit_edge.i.i4.i.i.peel:                        ; preds = %bb.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.peel
  %i.axl = phi ptr [ %i.axj, %bb.hd ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.peel ] ; 2 uses
  switch i64 %i.axh, label %bb.hf [
    i64 1, label %bb.he
    i64 0, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i.peel
  ]

bb.he:                                            ; preds = %._crit_edge.i.i4.i.i.peel
  %i.axm = load i8, ptr %i.axg, align 1, !tbaa !129
  store i8 %i.axm, ptr %i.axl, align 1, !tbaa !129
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i.peel

bb.hf:                                            ; preds = %._crit_edge.i.i4.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axl, ptr align 1 %i.axg, i64 %i.axh, i1 false)
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i.peel

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i.peel: ; preds = %bb.hf, %bb.he, %._crit_edge.i.i4.i.i.peel
  %i.axn = load i64, ptr %i.a, align 8, !tbaa !82 ; 2 uses
  store i64 %i.axn, ptr %i.fm, align 8, !tbaa !100
  %i.axo = load ptr, ptr %i.fk, align 8, !tbaa !99
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 %i.axn
  store i8 0, ptr %i.axp, align 1, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !400
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS0_8ArgumentE(ptr noundef nonnull align 8 dereferenceable(432) %7, ptr nofree noundef nonnull align 8 dereferenceable(80) %5) #25
  %i.axq = load ptr, ptr %i.fk, align 8, !tbaa !99 ; 2 uses
  %i.axr = icmp eq ptr %i.axq, %i.fl
  br i1 %i.axr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i270.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i265.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i265.peel: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i.peel
  %i.axs = load i64, ptr %i.fl, align 8, !tbaa !129
  %i.axt = add i64 %i.axs, 1
  call void @_ZdlPvm(ptr noundef %i.axq, i64 noundef %i.axt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i270.peel: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i.peel
  %53 = load i64, ptr %i.fm, align 8, !tbaa !100
  %54 = icmp ult i64 %53, 16
  call void @llvm.assume(i1 %54)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i270.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i265.peel
  %i.axu = load ptr, ptr %5, align 8, !tbaa !99   ; 2 uses
  %i.axv = icmp eq ptr %i.axu, %i.fi
  br i1 %i.axv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i269.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i267.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i267.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266.peel
  %i.axw = load i64, ptr %i.fi, align 8, !tbaa !129
  %i.axx = add i64 %i.axw, 1
  call void @_ZdlPvm(ptr noundef %i.axu, i64 noundef %i.axx) #28
  br label %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i269.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266.peel
  %55 = load i64, ptr %i.fj, align 8, !tbaa !100
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit.peel

_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i269.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i267.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.axy = load ptr, ptr %i.fc, align 8, !tbaa !99 ; 2 uses
  %i.axz = icmp eq ptr %i.axy, %i.fd
  br i1 %i.axz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i.peel: ; preds = %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit.peel
  %i.aya = load i64, ptr %i.fd, align 8, !tbaa !129
  %i.ayb = add i64 %i.aya, 1
  call void @_ZdlPvm(ptr noundef %i.axy, i64 noundef %i.ayb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35.i.peel: ; preds = %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit.peel
  %57 = load i64, ptr %i.fe, align 8, !tbaa !100
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i.peel
  %i.ayc = load ptr, ptr %13, align 8, !tbaa !99  ; 2 uses
  %i.ayd = icmp eq ptr %i.ayc, %i.ff
  br i1 %i.ayd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i34.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i33.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i33.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i.peel
  %i.aye = load i64, ptr %i.ff, align 8, !tbaa !129
  %i.ayf = add i64 %i.aye, 1
  call void @_ZdlPvm(ptr noundef %i.ayc, i64 noundef %i.ayf) #28
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit36.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i34.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i.peel
  %59 = load i64, ptr %i.fg, align 8, !tbaa !100
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit36.i.peel

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit36.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i34.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i33.i.peel
  %i.ayg = load ptr, ptr %14, align 8, !tbaa !99  ; 2 uses
  %i.ayh = icmp eq ptr %i.ayg, %i.fh
  br i1 %i.ayh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.peel: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit36.i.peel
  %i.ayi = load i64, ptr %i.fh, align 8, !tbaa !129
  %i.ayj = add i64 %i.ayi, 1
  call void @_ZdlPvm(ptr noundef %i.ayg, i64 noundef %i.ayj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111.peel: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit36.i.peel
  %61 = load i64, ptr %i.fb, align 8, !tbaa !100
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %.not.i106.peel = icmp eq i64 %i.awo, %i.awm
  br i1 %.not.i106.peel, label %._crit_edge.i107, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.peel
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %7, ptr nonnull @.str.35, i64 2) #25
  br label %._crit_edge.i107

._crit_edge.i107:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.peel, %bb.hg, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit29.i
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(432) %7, ptr nonnull @.str.30, i64 1) #25
  call void @_ZN4llvm32MachineOptimizationRemarkEmitter4emitERNS_30DiagnosticInfoOptimizationBaseE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(424) %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm30DiagnosticInfoOptimizationBaseE, i64 16), ptr %7, align 8, !tbaa !41
  %i.ayk = load ptr, ptr %i.ei, align 8, !tbaa !53 ; 3 uses
  %i.ayl = load i32, ptr %i.ek, align 8, !tbaa !84 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.ayl, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %._crit_edge.i107
  %i.aym = zext i32 %i.ayl to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.aym, 80
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayk, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i108

.lr.ph.i.i.i.i108:                                ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ayo, %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i ], [ %i.ayn, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.ayo = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -80 ; 3 uses
  %i.ayp = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -48
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !99 ; 2 uses
  %i.ayr = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 2 uses
  %i.ays = icmp eq ptr %i.ayq, %i.ayr
  br i1 %i.ays, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i108
  %i.ayt = load i64, ptr %i.ayr, align 8, !tbaa !129
  %i.ayu = add i64 %i.ayt, 1
  call void @_ZdlPvm(ptr noundef %i.ayq, i64 noundef %i.ayu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ayv = load ptr, ptr %i.ayo, align 8, !tbaa !99 ; 2 uses
  %i.ayw = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -64 ; 2 uses
  %i.ayx = icmp eq ptr %i.ayv, %i.ayw
  br i1 %i.ayx, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ayy = load i64, ptr %i.ayw, align 8, !tbaa !129
  %i.ayz = add i64 %i.ayy, 1
  call void @_ZdlPvm(ptr noundef %i.ayv, i64 noundef %i.ayz) #28
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %.not.i.i.i.i109 = icmp eq ptr %i.ayk, %i.ayo
  br i1 %.not.i.i.i.i109, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i108, !llvm.loop !10

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i
  %.pre.i.i.i110 = load ptr, ptr %i.ei, align 8, !tbaa !53
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, %._crit_edge.i107
  %i.aza = phi ptr [ %.pre.i.i.i110, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %i.ayk, %._crit_edge.i107 ] ; 2 uses
  %i.azb = icmp eq ptr %i.aza, %i.ej
  br i1 %i.azb, label %_ZN12_GLOBAL__N_115MachineOutliner26emitOutlinedFunctionRemarkERN4llvm8outliner16OutlinedFunctionE.exit, label %bb.hh

bb.hh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.aza) #25
  br label %_ZN12_GLOBAL__N_115MachineOutliner26emitOutlinedFunctionRemarkERN4llvm8outliner16OutlinedFunctionE.exit

_ZN4llvmplERKNS_5TwineES2_.exit.i:                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111, %_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i.split
  %.027.i = phi i64 [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit.lr.ph.i.split ], [ %i.bax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i111 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %.sroa.04.0.copyload.i.i.cast.i = inttoptr i64 %.027.i to ptr
  store ptr @.str.59, ptr %15, align 8, !alias.scope !1043
  store ptr %.sroa.04.0.copyload.i.i.cast.i, ptr %i.ey, align 8, !alias.scope !1043
  store i8 3, ptr %i.ez, align 8, !tbaa !416, !alias.scope !1043
  store i8 11, ptr %i.fa, align 1, !tbaa !417, !alias.scope !1043
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(34) %15) #25
  %i.azc = load ptr, ptr %14, align 8, !tbaa !99
  %i.azd = load i64, ptr %i.fb, align 8, !tbaa !100
  %i.aze = load ptr, ptr %i.auy, align 8, !tbaa !341
  %i.azf = getelementptr inbounds nuw [224 x i8], ptr %i.aze, i64 %.027.i
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 8
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !329
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 72
  %.sroa.0.0.copyload.i103 = load ptr, ptr %i.azi, align 8, !tbaa !418
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC1ENS_9StringRefENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr %i.azc, i64 %i.azd, ptr %.sroa.0.0.copyload.i103) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.fi, ptr %5, align 8, !tbaa !128
  %i.azj = load ptr, ptr %13, align 8, !tbaa !99  ; 2 uses
  %i.azk = load i64, ptr %i.fg, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.azk, ptr %i.b, align 8, !tbaa !82
  %i.azl = icmp ugt i64 %i.azk, 15
  br i1 %i.azl, label %bb.hi, label %._crit_edge.i.i.i.i264

bb.hi:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i
  %i.azm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.azm, ptr %5, align 8, !tbaa !99
  %i.azn = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.azn, ptr %i.fi, align 8, !tbaa !129
  br label %._crit_edge.i.i.i.i264

._crit_edge.i.i.i.i264:                           ; preds = %bb.hi, %_ZN4llvmplERKNS_5TwineES2_.exit.i
  %i.azo = phi ptr [ %i.azm, %bb.hi ], [ %i.fi, %_ZN4llvmplERKNS_5TwineES2_.exit.i ] ; 2 uses
  switch i64 %i.azk, label %bb.hk [
    i64 1, label %bb.hj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.hj:                                            ; preds = %._crit_edge.i.i.i.i264
  %i.azp = load i8, ptr %i.azj, align 1, !tbaa !129
  store i8 %i.azp, ptr %i.azo, align 1, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.hk:                                            ; preds = %._crit_edge.i.i.i.i264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azo, ptr align 1 %i.azj, i64 %i.azk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.hk, %bb.hj, %._crit_edge.i.i.i.i264
  %i.azq = load i64, ptr %i.b, align 8, !tbaa !82 ; 2 uses
  store i64 %i.azq, ptr %i.fj, align 8, !tbaa !100
  %i.azr = load ptr, ptr %5, align 8, !tbaa !99
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 %i.azq
  store i8 0, ptr %i.azs, align 1, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !128
  %i.azt = load ptr, ptr %i.fc, align 8, !tbaa !99 ; 2 uses
  %i.azu = load i64, ptr %i.fe, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.azu, ptr %i.a, align 8, !tbaa !82
  %i.azv = icmp ugt i64 %i.azu, 15
  br i1 %i.azv, label %bb.hl, label %._crit_edge.i.i4.i.i

bb.hl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.azw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.azw, ptr %i.fk, align 8, !tbaa !99
  %i.azx = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.azx, ptr %i.fl, align 8, !tbaa !129
  br label %._crit_edge.i.i4.i.i

._crit_edge.i.i4.i.i:                             ; preds = %bb.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.azy = phi ptr [ %i.azw, %bb.hl ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 2 uses
  switch i64 %i.azu, label %bb.hn [
    i64 1, label %bb.hm
    i64 0, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i
  ]

bb.hm:                                            ; preds = %._crit_edge.i.i4.i.i
  %i.azz = load i8, ptr %i.azt, align 1, !tbaa !129
  store i8 %i.azz, ptr %i.azy, align 1, !tbaa !129
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i

bb.hn:                                            ; preds = %._crit_edge.i.i4.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azy, ptr align 1 %i.azt, i64 %i.azu, i1 false)
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i: ; preds = %bb.hn, %bb.hm, %._crit_edge.i.i4.i.i
  %i.baa = load i64, ptr %i.a, align 8, !tbaa !82 ; 2 uses
  store i64 %i.baa, ptr %i.fm, align 8, !tbaa !100
  %i.bab = load ptr, ptr %i.fk, align 8, !tbaa !99
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 %i.baa
  store i8 0, ptr %i.bac, align 1, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !400
  call void @_ZN4llvm30DiagnosticInfoOptimizationBase6insertENS0_8ArgumentE(ptr noundef nonnull align 8 dereferenceable(432) %7, ptr nofree noundef nonnull align 8 dereferenceable(80) %5) #25
  %i.bad = load ptr, ptr %i.fk, align 8, !tbaa !99 ; 2 uses
  %i.bae = icmp eq ptr %i.bad, %i.fl
  br i1 %i.bae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i265: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i
  %i.baf = load i64, ptr %i.fl, align 8, !tbaa !129
  %i.bag = add i64 %i.baf, 1
  call void @_ZdlPvm(ptr noundef %i.bad, i64 noundef %i.bag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentC2ERKS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i265
  %i.bah = load ptr, ptr %5, align 8, !tbaa !99   ; 2 uses
  %i.bai = icmp eq ptr %i.bah, %i.fi
  br i1 %i.bai, label %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266
  %i.baj = load i64, ptr %i.fi, align 8, !tbaa !129
  %i.bak = add i64 %i.baj, 1
  call void @_ZdlPvm(ptr noundef %i.bah, i64 noundef %i.bak) #28
  br label %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit

_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bal = load ptr, ptr %i.fc, align 8, !tbaa !99 ; 2 uses
  %i.bam = icmp eq ptr %i.bal, %i.fd
  br i1 %i.bam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i: ; preds = %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit
  %i.ban = load i64, ptr %i.fd, align 8, !tbaa !129
  %i.bao = add i64 %i.ban, 1
  call void @_ZdlPvm(ptr noundef %i.bal, i64 noundef %i.bao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32.i: ; preds = %_ZN4llvmlsIRNS_25MachineOptimizationRemarkEEEDcOT_NSt9enable_ifIXsr3stdE12is_base_of_vINS_30DiagnosticInfoOptimizationBaseENSt16remove_referenceIS3_E4typeEEENS6_8ArgumentEE4typeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i
end_hunk_1
