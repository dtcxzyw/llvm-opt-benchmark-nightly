Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmExportCMakeConfigGenerator?download=true
inline.NumInlined: 1695
inline.NumDeleted: 697
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EEEvT_SN_T0_":bb.a
  %i.by = load i64, ptr %i.bg, align 8, !tbaa !29
  store i64 %i.by, ptr %i.bd, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !30
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bz = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bc, %bb.k ], [ %i.bg, %bb.l ]
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72
  store i64 0, ptr %i.ca, align 8, !tbaa !28
  store i8 0, ptr %i.bz, align 1, !tbaa !29
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.cd = load i32, ptr %i.cb, align 8, !tbaa !85
  store i32 %i.cd, ptr %i.cc, align 8, !tbaa !85
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !91 ; 5 uses
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !92 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !93
  %i.cl = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !61
  store <2 x ptr> %i.cl, ptr %i.ce, align 8, !tbaa !61
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !93
  store ptr %i.cn, ptr %i.cj, align 8, !tbaa !93
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.ci
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ct, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !29
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.ci
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEaSEOS8_.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.cu = ptrtoint ptr %i.ck to i64
  %i.cv = ptrtoint ptr %i.cg to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cw) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEaSEOS8_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.m
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.cy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.cz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.da = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !447

.loopexit:                                        ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEaSEOS8_.exit, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEC2EOS8_.exit
  %i.db = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %2) #28 ; 0 uses
  %i.dc = load ptr, ptr %i.i, align 8, !tbaa !91  ; 3 uses
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !92  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.dc, %i.dd
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.dc, %.loopexit ] ; 3 uses
  %i.de = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i8
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !29
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, %i.dd
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i8, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %.loopexit
  %i.dk = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.dc, %.loopexit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i.i.i, label %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.dl = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #29
  br label %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i

_ZN11cmExportSet17PackageDependencyD2Ev.exit.i:   ; preds = %bb.n, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.f
  br i1 %i.dq, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i
  %i.dr = load i64, ptr %i.f, align 8, !tbaa !29
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEED2Ev.exit: ; preds = %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.o

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread20": ; preds = %bb.e, %bb.d, %_ZStltIjjENSt9enable_ifIXsr14is_convertibleIDTltclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit"
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.026)
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEED2Ev.exit, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEESt6vectorISH_SaISH_EEEESM_EEbT_T0_.exit.thread20"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 80 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit22, label %bb.b, !llvm.loop !448

.loopexit22:                                      ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEESt6vectorISB_SaISB_EEEENS0_5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EEEvT_T0_"(ptr %0) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.340", align 8    ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !25
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEC2EOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !30
  %i.i = load i64, ptr %i.c, align 8, !tbaa !29
  store i64 %i.i, ptr %i.a, align 8, !tbaa !29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEC2EOS8_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEC2EOS8_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !28
  store ptr %i.c, ptr %0, align 8, !tbaa !30
  store i64 0, ptr %i.k, align 8, !tbaa !28
  store i8 0, ptr %i.c, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !85
  store i32 %i.o, ptr %i.m, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load <2 x ptr>, ptr %i.q, align 8, !tbaa !61
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93
  store ptr %i.v, ptr %i.t, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread", %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEC2EOS8_.exit
  %.sroa.03.0 = phi ptr [ %0, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEC2EOS8_.exit ], [ %.sroa.0.0, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread" ] ; 7 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.03.0, i64 -80 ; 2 uses
  %i.ab = load i8, ptr %i.z, align 4, !tbaa !120, !range !40, !noundef !41
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds i8, ptr %.sroa.03.0, i64 -12
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !120, !range !40, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.af, label %_ZStltIjjENSt9enable_ifIXsr14is_convertibleIDTltclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread"

_ZStltIjjENSt9enable_ifIXsr14is_convertibleIDTltclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit.i.i: ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %.sroa.03.0, i64 -16
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !78
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8"

bb.e:                                             ; preds = %bb.c
  br i1 %i.af, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds i8, ptr %.sroa.03.0, i64 -8
  %i.al = getelementptr inbounds i8, ptr %.sroa.03.0, i64 -4
  %i.am = load i8, ptr %i.al, align 4, !tbaa !120, !range !40, !noundef !41
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8"

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.aa, align 4, !tbaa !120, !range !40, !noundef !41
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit": ; preds = %bb.g
  %i.aq = load i32, ptr %i.y, align 8, !tbaa !78
  %i.ar = load i32, ptr %i.ak, align 4, !tbaa !78
  %i.as = icmp ult i32 %i.aq, %i.ar
  br i1 %i.as, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread": ; preds = %bb.g, %bb.d, %_ZStltIjjENSt9enable_ifIXsr14is_convertibleIDTltclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit"
  %i.at = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0) #28 ; 0 uses
  br label %bb.c, !llvm.loop !449

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8": ; preds = %bb.f, %bb.e, %_ZStltIjjENSt9enable_ifIXsr14is_convertibleIDTltclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit"
  %i.au = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.0, ptr noundef nonnull align 8 dereferenceable(80) %1) #28 ; 0 uses
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !91  ; 3 uses
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !92  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8", %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.av, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8" ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !29
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8"
  %i.bd = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.av, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN28cmExportCMakeConfigGenerator27GenerateFindDependencyCallsERSoE3$_0EclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread8" ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i.i, label %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !93
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #29
  br label %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i

_ZN11cmExportSet17PackageDependencyD2Ev.exit.i:   ; preds = %bb.h, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.bi = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.a
  br i1 %i.bj, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !29
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11cmExportSet17PackageDependencyEED2Ev.exit: ; preds = %_ZN11cmExportSet17PackageDependencyD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = load ptr, ptr %1, align 8, !tbaa !30
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.o = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit: ; preds = %bb.b, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.q = phi i1 [ %i.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.b ]
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 3 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit
  %.sroa.09.0 = phi ptr [ %i.r, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit ], [ %i.b, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !59 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !59  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !450

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
end_hunk_0
