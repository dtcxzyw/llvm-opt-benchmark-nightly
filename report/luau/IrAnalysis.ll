Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrAnalysis?download=true
inline.NumInlined: 1295
inline.NumDeleted: 511
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS0_10successorsERKNS0_7CfgInfoEjEEEEvRNS0_10IrFunctionERSt6vectorINS0_13BlockOrderingESaIS8_EEPS7_IjSaIjEESE_:bb.a

_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74: ; preds = %bb.y, %.noexc76
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = ptrtoint ptr %.sroa.23.0168 to i64
  %i.fq = sub i64 %i.fp, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0166, i64 noundef %i.fq) #17
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fj
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77

.loopexit141:                                     ; preds = %_ZNKSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE12_M_check_lenEmPKc.exit.i.i.i69
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit90

.loopexit.split-lp142:                            ; preds = %bb.x
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit90

bb.z:                                             ; preds = %_ZN4Luau7CodeGen10successorsERKNS0_7CfgInfoEj.exit
  %i.fs = add i32 %.0170, 1                       ; 3 uses
  %i.ft = load ptr, ptr %1, align 8, !tbaa !82
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.cl
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i32 %.0170, ptr %i.fv, align 4, !tbaa !79
  br i1 %.not48, label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = load ptr, ptr %i.cf, align 8, !tbaa !38 ; 4 uses
  %i.fx = load ptr, ptr %i.cg, align 8, !tbaa !75
  %.not.i78 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i78, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = load i32, ptr %i.cj, align 4, !tbaa !40
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !40
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store ptr %i.fz, ptr %i.cf, align 8, !tbaa !38
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77

bb.ac:                                            ; preds = %bb.aa
  %i.ga = load ptr, ptr %3, align 8, !tbaa !39    ; 4 uses
  %i.gb = ptrtoint ptr %i.fw to i64
  %i.gc = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 5 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775804
  br i1 %i.ge, label %bb.ad, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i79

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i79: ; preds = %bb.ac
  %i.gf = ashr exact i64 %i.gd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i80 = tail call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i80, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = tail call i64 @llvm.umin.i64(i64 %i.gg, i64 2305843009213693951)
  %i.gj = select i1 %i.gh, i64 2305843009213693951, i64 %i.gi ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.gj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i81)
  %i.gk = shl nuw nsw i64 %i.gj, 2
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #16
          to label %.noexc86 unwind label %.loopexit ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i79
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 %i.gd ; 2 uses
  %i.gn = load i32, ptr %i.cj, align 4, !tbaa !40
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !40
  %i.go = icmp sgt i64 %i.gd, 0
  br i1 %i.go, label %bb.ae, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82

bb.ae:                                            ; preds = %.noexc86
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gl, ptr align 4 %i.ga, i64 %i.gd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82: ; preds = %bb.ae, %.noexc86
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %.not.i17.i.i83 = icmp eq ptr %i.ga, null
  br i1 %.not.i17.i.i83, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82
  %i.gq = load ptr, ptr %i.cg, align 8, !tbaa !75
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gs) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84: ; preds = %bb.af, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82
  store ptr %i.gl, ptr %3, align 8, !tbaa !39
  store ptr %i.gp, ptr %i.cf, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gj
  store ptr %i.gt, ptr %i.cg, align 8, !tbaa !75
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77

_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77: ; preds = %bb.z, %bb.ab, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84, %bb.v, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74, %bb.n
  %.sroa.0114.1 = phi ptr [ %.sroa.0114.0166, %bb.n ], [ %.sroa.0114.0166, %bb.v ], [ %i.fl, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %.sroa.0114.0166, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %.sroa.0114.0166, %bb.ab ], [ %.sroa.0114.0166, %bb.z ] ; 4 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0167, %bb.n ], [ %i.fe, %bb.v ], [ %i.fo, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %i.cj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %i.cj, %bb.ab ], [ %i.cj, %bb.z ] ; 2 uses
  %.sroa.23.1 = phi ptr [ %.sroa.23.0168, %bb.n ], [ %.sroa.23.0168, %bb.v ], [ %i.fr, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %.sroa.23.0168, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %.sroa.23.0168, %bb.ab ], [ %.sroa.23.0168, %bb.z ] ; 2 uses
  %.2 = phi i32 [ %.035169, %bb.n ], [ %i.ee, %bb.v ], [ %i.ee, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %.035169, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %.035169, %bb.ab ], [ %.035169, %bb.z ]
  %.1 = phi i32 [ %.0170, %bb.n ], [ %.0170, %bb.v ], [ %.0170, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %i.fs, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %i.fs, %bb.ab ], [ %i.fs, %bb.z ]
  %i.gu = icmp eq ptr %.sroa.0114.1, %.sroa.12.1
  br i1 %i.gu, label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit, label %bb.k, !llvm.loop !139

_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit: ; preds = %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77
  %i.gv = ptrtoint ptr %.sroa.23.1 to i64
  %i.gw = ptrtoint ptr %.sroa.0114.1 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.1, i64 noundef %i.gx) #17
  ret void

_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit90: ; preds = %.loopexit141, %.loopexit.split-lp142, %.loopexit136, %.loopexit.split-lp137, %.loopexit, %.loopexit.split-lp
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp139, %.loopexit.split-lp137 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit138, %.loopexit136 ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ]
  %i.gy = ptrtoint ptr %.sroa.23.0168 to i64
  %i.gz = ptrtoint ptr %.sroa.0114.0166 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0166, i64 noundef %i.ha) #17
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, ptr } @_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %i.f = add i32 %1, 1
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = icmp ugt i64 %i.m, %i.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !39    ; 3 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %.pre to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 2
  %i.w = trunc i64 %i.v to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i32 [ %i.p, %bb.b ], [ %i.w, %bb.c ]
  %i.y = zext i32 %i.e to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.y
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.aa
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.z, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.ab, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen31computeCfgDominanceTreeChildrenERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928) %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !38
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %.not.i.i51 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i51, label %_ZNSt6vectorIjSaIjEE5clearEv.exit53, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i52

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i52:      ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !38
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit53

_ZNSt6vectorIjSaIjEE5clearEv.exit53:              ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %.not110 = icmp eq ptr %i.j, %i.k
  %1 = ptrtoint ptr %i.j to i64
  %2 = ptrtoint ptr %i.k to i64
  %3 = sub i64 %1, %2
  %4 = sdiv exact i64 %3, 36                      ; 2 uses
  br i1 %.not110, label %._crit_edge.thread, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit53
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %4)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !74  ; 4 uses
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !42  ; 4 uses
  %i.l = ptrtoint ptr %.pre to i64
  %i.m = ptrtoint ptr %.pre87 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = sdiv exact i64 %i.n, 36                  ; 7 uses
  %.not75 = icmp eq ptr %.pre, %.pre87
  br i1 %.not75, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 3 uses
  %xtraiter = and i64 %i.o, 1
  %i.r = icmp eq i64 %i.n, 36
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.o, -2
  br label %bb.c

.lr.ph63.unr-lcssa:                               ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph63, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph63.unr-lcssa, %.lr.ph
  %.04560.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aq, %.lr.ph63.unr-lcssa ]
  %lcmp.mod115 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.04560.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40   ; 2 uses
  %.not50.epil = icmp eq i32 %i.t, -1
  br i1 %.not50.epil, label %.lr.ph63, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !40
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.epil.preheader, %bb.b, %.lr.ph63.unr-lcssa
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !39   ; 5 uses
  %xtraiter117 = and i64 %i.o, 3                  ; 3 uses
  %i.aa = icmp ult i64 %i.o, 4
  br i1 %i.aa, label %.epil.preheader116, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter121 = and i64 %i.o, -4
  br label %bb.l

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %.04560 = phi i64 [ 0, %.lr.ph.new ], [ %i.aq, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.04560
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !40 ; 2 uses
  %.not50 = icmp eq i32 %i.ac, -1
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.04560
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40 ; 2 uses
  %.not50.1 = icmp eq i32 %i.ak, -1
  br i1 %.not50.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = add nuw i64 %.04560, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph63.unr-lcssa, label %bb.c, !llvm.loop !143

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit53, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.ph116 = phi ptr [ %i.k, %_ZNSt6vectorIjSaIjEE5clearEv.exit53 ], [ %.pre87, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ]
  %.ph117 = phi ptr [ %i.j, %_ZNSt6vectorIjSaIjEE5clearEv.exit53 ], [ %.pre, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ]
  %.ph118 = phi i64 [ %4, %_ZNSt6vectorIjSaIjEE5clearEv.exit53 ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ]
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  br label %bb.j

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %._crit_edge, label %.epil.preheader116

.epil.preheader116:                               ; preds = %._crit_edge.unr-lcssa, %.lr.ph63
  %.04662.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %i.cj, %._crit_edge.unr-lcssa ]
  %.04761.epil.init = phi i32 [ 0, %.lr.ph63 ], [ %i.ci, %._crit_edge.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter117, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader116
  %.04662.epil = phi i64 [ %.04662.epil.init, %.epil.preheader116 ], [ %i.ba, %bb.h ] ; 2 uses
  %.04761.epil = phi i32 [ %.04761.epil.init, %.epil.preheader116 ], [ %i.az, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader116 ], [ %epil.iter.next, %bb.h ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04662.epil ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  store i32 %.04761.epil, ptr %i.ax, align 4, !tbaa !40
  %i.az = add i32 %i.ay, %.04761.epil             ; 2 uses
  %i.ba = add nuw i64 %.04662.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter117
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !144

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.ci, %._crit_edge.unr-lcssa ], [ %i.az, %bb.h ]
  %i.bb = zext i32 %.lcssa to i64                 ; 3 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.bb
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.bj = sub nuw nsw i64 %i.bb, %i.bh
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bj)
  %.pre88 = load ptr, ptr %i.i, align 8, !tbaa !74 ; 2 uses
  %.pre89 = load ptr, ptr %0, align 8, !tbaa !42  ; 2 uses
  %.pre91 = ptrtoint ptr %.pre88 to i64
  %.pre92 = ptrtoint ptr %.pre89 to i64
  %.pre94 = sub i64 %.pre91, %.pre92
  %.pre96 = sdiv exact i64 %.pre94, 36
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bk = phi i64 [ %i.aw, %._crit_edge.thread ], [ %i.bh, %._crit_edge ]
  %i.bl = phi ptr [ %i.as, %._crit_edge.thread ], [ %i.bd, %._crit_edge ]
  %i.bm = phi ptr [ %i.ar, %._crit_edge.thread ], [ %i.bc, %._crit_edge ]
  %.047.lcssa112 = phi i64 [ 0, %._crit_edge.thread ], [ %i.bb, %._crit_edge ] ; 2 uses
  %5 = phi i64 [ %.ph118, %._crit_edge.thread ], [ %i.o, %._crit_edge ] ; 3 uses
  %6 = phi ptr [ %.ph117, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 3 uses
  %7 = phi ptr [ %.ph116, %._crit_edge.thread ], [ %.pre87, %._crit_edge ] ; 3 uses
  %i.bn = icmp ugt i64 %i.bk, %.047.lcssa112
  br i1 %i.bn, label %bb.k, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.047.lcssa112 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i56, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57:      ; preds = %bb.k
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !38
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58

_ZNSt6vectorIjSaIjEE6resizeEm.exit58:             ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57
  %.pre-phi97 = phi i64 [ %.pre96, %bb.i ], [ %5, %bb.j ], [ %5, %bb.k ], [ %5, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57 ] ; 5 uses
  %i.bp = phi ptr [ %.pre89, %bb.i ], [ %7, %bb.j ], [ %7, %bb.k ], [ %7, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57 ]
  %i.bq = phi ptr [ %.pre88, %bb.i ], [ %6, %bb.j ], [ %6, %bb.k ], [ %6, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57 ]
  %.not77 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not77, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit58
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39 ; 3 uses
  %umax80 = tail call i64 @llvm.umax.i64(i64 %.pre-phi97, i64 1) ; 3 uses
  %xtraiter124 = and i64 %umax80, 1
  %i.bt = icmp ult i64 %.pre-phi97, 2
  br i1 %i.bt, label %.epil.preheader123, label %.lr.ph66.new

.lr.ph66.new:                                     ; preds = %.lr.ph66
  %unroll_iter128 = and i64 %umax80, -2
  br label %bb.n

bb.l:                                             ; preds = %bb.l, %.lr.ph63.new
  %.04662 = phi i64 [ 0, %.lr.ph63.new ], [ %i.cj, %bb.l ] ; 5 uses
  %.04761 = phi i32 [ 0, %.lr.ph63.new ], [ %i.ci, %bb.l ] ; 2 uses
  %niter122 = phi i64 [ 0, %.lr.ph63.new ], [ %niter122.next.3, %bb.l ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04662 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  store i32 %.04761, ptr %i.bu, align 4, !tbaa !40
  %i.bw = add i32 %i.bv, %.04761                  ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04662
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !40
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !40
  %i.ca = add i32 %i.bz, %i.bw                    ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04662
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !40
  %i.ce = add i32 %i.cd, %i.ca                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.04662
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !40
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !40
  %i.ci = add i32 %i.ch, %i.ce                    ; 3 uses
  %i.cj = add nuw i64 %.04662, 4                  ; 2 uses
  %niter122.next.3 = add i64 %niter122, 4         ; 2 uses
  %niter122.ncmp.3 = icmp eq i64 %niter122.next.3, %unroll_iter121
  br i1 %niter122.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.l, !llvm.loop !145

._crit_edge67.loopexit.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %._crit_edge67, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge67.loopexit.unr-lcssa, %.lr.ph66
  %.04465.epil.init = phi i64 [ 0, %.lr.ph66 ], [ %i.ep, %._crit_edge67.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod127 = trunc i64 %umax80 to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.04465.epil.init
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !40 ; 2 uses
  %.not.epil = icmp eq i32 %i.cl, -1
  br i1 %.not.epil, label %._crit_edge67, label %bb.m

bb.m:                                             ; preds = %.epil.preheader123
  %i.cm = trunc i64 %.04465.epil.init to i32
  %i.cn = zext i32 %i.cl to i64
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !40 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !40
  %i.cs = zext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !40
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit.unr-lcssa, %bb.m, %.epil.preheader123, %_ZNSt6vectorIjSaIjEE6resizeEm.exit58
  %i.cv = trunc i64 %.pre-phi97 to i32            ; 2 uses
  %.069 = add i32 %i.cv, -1                       ; 3 uses
  %i.cw = icmp sgt i32 %.069, 0
  %.pre90 = load ptr, ptr %i.e, align 8, !tbaa !39 ; 5 uses
  br i1 %i.cw, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %._crit_edge67
  %i.cx = zext nneg i32 %.069 to i64              ; 7 uses
  %i.cy = and i64 %.pre-phi97, 4294967295         ; 3 uses
  %min.iters.check = icmp ult i32 %.069, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph73
  %i.cz = add nsw i64 %i.cx, -1                   ; 2 uses
  %i.da = add i32 %i.cv, -2
  %i.db = trunc nsw i64 %i.cz to i32
  %i.dc = icmp ult i32 %i.da, %i.db
  %i.dd = icmp ugt i64 %i.cz, 4294967295
  %i.de = or i1 %i.dc, %i.dd
  br i1 %i.de, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cx, 2147483640              ; 3 uses
  %i.df = sub nsw i64 %i.cy, %n.vec
  %i.dg = and i64 %i.cx, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dh = sub i64 %.pre-phi97, %index
  %i.di = sub i64 %i.cx, %index
  %i.dj = add i64 %i.dh, 4294967294
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.pre90, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -12
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -28
  %wide.load = load <4 x i32>, ptr %i.dm, align 4, !tbaa !40
  %wide.load113 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !40
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.pre90, i64 %i.di ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -12
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -28
  store <4 x i32> %wide.load, ptr %i.dp, align 4, !tbaa !40
  store <4 x i32> %wide.load113, ptr %i.dq, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  br i1 %cmp.n, label %._crit_edge74, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph73, %middle.block
  %indvars.iv82.ph = phi i64 [ %i.cy, %vector.scevcheck ], [ %i.cy, %.lr.ph73 ], [ %i.df, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.cx, %vector.scevcheck ], [ %i.cx, %.lr.ph73 ], [ %i.dg, %middle.block ]
  br label %scalar.ph

bb.n:                                             ; preds = %bb.r, %.lr.ph66.new
  %.04465 = phi i64 [ 0, %.lr.ph66.new ], [ %i.ep, %bb.r ] ; 4 uses
  %niter129 = phi i64 [ 0, %.lr.ph66.new ], [ %niter129.next.1, %bb.r ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.04465
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !40 ; 2 uses
  %.not = icmp eq i32 %i.dt, -1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = trunc i64 %.04465 to i32
  %i.dv = zext i32 %i.dt to i64
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !40 ; 2 uses
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !40
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ea
  store i32 %i.du, ptr %i.ec, align 4, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ed = or disjoint i64 %.04465, 1              ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !40 ; 2 uses
  %.not.1 = icmp eq i32 %i.ef, -1
  br i1 %.not.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = trunc i64 %i.ed to i32
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eh ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !40 ; 2 uses
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !40
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  store i32 %i.eg, ptr %i.eo, align 4, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ep = add nuw i64 %.04465, 2                  ; 2 uses
  %niter129.next.1 = add i64 %niter129, 2         ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge67.loopexit.unr-lcssa, label %bb.n, !llvm.loop !147

._crit_edge74:                                    ; preds = %scalar.ph, %middle.block, %._crit_edge67
  store i32 0, ptr %.pre90, align 4, !tbaa !40
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @_ZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS0_11domChildrenERKNS0_7CfgInfoEjEEEEvRNS0_10IrFunctionERSt6vectorINS0_13BlockOrderingESaIS8_EEPS7_IjSaIjEESE_(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef null, ptr noundef null)
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %scalar.ph ], [ %indvars.iv82.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.er = add i64 %indvars.iv82, 4294967294
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.pre90, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.pre90, i64 %indvars.iv
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ew = icmp samesign ugt i64 %indvars.iv, 1
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1
  br i1 %i.ew, label %scalar.ph, label %._crit_edge74, !llvm.loop !148
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS0_11domChildrenERKNS0_7CfgInfoEjEEEEvRNS0_10IrFunctionERSt6vectorINS0_13BlockOrderingESaIS8_EEPS7_IjSaIjEESE_(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
