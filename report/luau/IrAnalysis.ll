Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrAnalysis?download=true
inline.NumInlined: 1295
inline.NumDeleted: 511
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS0_10successorsERKNS0_7CfgInfoEjEEEEvRNS0_10IrFunctionERSt6vectorINS0_13BlockOrderingESaIS8_EEPS7_IjSaIjEESE_:bb.a
.loopexit.split-lp142:                            ; preds = %bb.x
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit90

bb.z:                                             ; preds = %_ZN4Luau7CodeGen10successorsERKNS0_7CfgInfoEj.exit
  %i.ex = add i32 %.0170, 1                       ; 3 uses
  %i.ey = load ptr, ptr %1, align 8, !tbaa !101
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.bv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.0170, ptr %i.fa, align 4, !tbaa !95
  br i1 %.not48, label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = load ptr, ptr %i.bp, align 8, !tbaa !32 ; 4 uses
  %i.fc = load ptr, ptr %i.bq, align 8, !tbaa !88
  %.not.i78 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i78, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fd = load i32, ptr %i.bt, align 4, !tbaa !36
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !36
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store ptr %i.fe, ptr %i.bp, align 8, !tbaa !32
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77

bb.ac:                                            ; preds = %bb.aa
  %i.ff = load ptr, ptr %3, align 8, !tbaa !35    ; 4 uses
  %i.fg = ptrtoint ptr %i.fb to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 6 uses
  %i.fj = icmp eq i64 %i.fi, 9223372036854775804
  br i1 %i.fj, label %bb.ad, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i79

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i79: ; preds = %bb.ac
  %i.fk = ashr exact i64 %i.fi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i80 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 1)
  %i.fl = add nsw i64 %.sroa.speculated.i.i.i80, %i.fk ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %i.fn = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 2305843009213693951)
  %i.fo = select i1 %i.fm, i64 2305843009213693951, i64 %i.fn ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.fo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i81)
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #16
          to label %.noexc86 unwind label %.loopexit ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i79
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.fi ; 2 uses
  %i.fs = load i32, ptr %i.bt, align 4, !tbaa !36
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !36
  %i.ft = icmp sgt i64 %i.fi, 0
  br i1 %i.ft, label %bb.ae, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82

bb.ae:                                            ; preds = %.noexc86
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fq, ptr align 4 %i.ff, i64 %i.fi, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82: ; preds = %bb.ae, %.noexc86
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %.not.i17.i.i83 = icmp eq ptr %i.ff, null
  br i1 %.not.i17.i.i83, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fi) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84: ; preds = %bb.af, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i82
  store ptr %i.fq, ptr %3, align 8, !tbaa !35
  store ptr %i.fu, ptr %i.bp, align 8, !tbaa !32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fo
  store ptr %i.fv, ptr %i.bq, align 8, !tbaa !88
  br label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77

_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77: ; preds = %bb.z, %bb.ab, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84, %bb.v, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74, %bb.n
  %.sroa.0114.1 = phi ptr [ %.sroa.0114.0166, %bb.n ], [ %.sroa.0114.0166, %bb.v ], [ %i.es, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %.sroa.0114.0166, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %.sroa.0114.0166, %bb.ab ], [ %.sroa.0114.0166, %bb.z ] ; 4 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0167, %bb.n ], [ %i.el, %bb.v ], [ %i.ev, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %i.bt, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %i.bt, %bb.ab ], [ %i.bt, %bb.z ] ; 2 uses
  %.sroa.25.1 = phi ptr [ %.sroa.25.0168, %bb.n ], [ %.sroa.25.0168, %bb.v ], [ %i.ew, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %.sroa.25.0168, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %.sroa.25.0168, %bb.ab ], [ %.sroa.25.0168, %bb.z ] ; 2 uses
  %.2 = phi i32 [ %.035169, %bb.n ], [ %i.do, %bb.v ], [ %i.do, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %.035169, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %.035169, %bb.ab ], [ %.035169, %bb.z ]
  %.1 = phi i32 [ %.0170, %bb.n ], [ %.0170, %bb.v ], [ %.0170, %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i74 ], [ %i.ex, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i84 ], [ %i.ex, %bb.ab ], [ %i.ex, %bb.z ]
  %i.fw = icmp eq ptr %.sroa.0114.1, %.sroa.12.1
  br i1 %i.fw, label %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit, label %bb.k, !llvm.loop !112

_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit: ; preds = %_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EE9push_backEOSF_.exit77
  %i.fx = ptrtoint ptr %.sroa.25.1 to i64
  %i.fy = ptrtoint ptr %.sroa.0114.1 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.1, i64 noundef %i.fz) #17
  ret void

_ZNSt6vectorIZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS1_10successorsERKNS1_7CfgInfoEjEEEEvRNS1_10IrFunctionERS_INS1_13BlockOrderingESaIS8_EEPS_IjSaIjEESE_E9StackItemSaISF_EED2Ev.exit90: ; preds = %.loopexit141, %.loopexit.split-lp142, %.loopexit136, %.loopexit.split-lp137, %.loopexit, %.loopexit.split-lp
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp139, %.loopexit.split-lp137 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit138, %.loopexit136 ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ]
  %i.ga = ptrtoint ptr %.sroa.25.0168 to i64
  %i.gb = ptrtoint ptr %.sroa.0114.0166 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0166, i64 noundef %i.gc) #17
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, ptr } @_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %i.f = add i32 %1, 1
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = icmp ugt i64 %i.m, %i.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !35    ; 3 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !32
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %.not.i.i51 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i51, label %_ZNSt6vectorIjSaIjEE5clearEv.exit53, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i52

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i52:      ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit53

_ZNSt6vectorIjSaIjEE5clearEv.exit53:              ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %.not110 = icmp eq ptr %i.j, %i.k
  br i1 %.not110, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit53
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 36
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.o)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !87
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit53, %bb.b
  %i.p = phi ptr [ %.pre87, %bb.b ], [ %i.k, %_ZNSt6vectorIjSaIjEE5clearEv.exit53 ] ; 5 uses
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.j, %_ZNSt6vectorIjSaIjEE5clearEv.exit53 ] ; 5 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv i64 %i.t, 36                        ; 6 uses
  %.not75 = icmp eq ptr %i.q, %i.p
  br i1 %.not75, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35   ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1) ; 5 uses
  %xtraiter = and i64 %umax, 1
  %1 = icmp ult i64 %i.u, 2
  br i1 %1, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %umax, -2
  br label %bb.d

.lr.ph63.unr-lcssa:                               ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph63, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph63.unr-lcssa, %.lr.ph
  %.04560.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.av, %.lr.ph63.unr-lcssa ]
  %lcmp.mod115 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.04560.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36   ; 2 uses
  %.not50.epil = icmp eq i32 %i.y, -1
  br i1 %.not50.epil, label %.lr.ph63, label %bb.c

bb.c:                                             ; preds = %.epil.preheader
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !36
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.epil.preheader, %bb.c, %.lr.ph63.unr-lcssa
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !35  ; 5 uses
  %xtraiter117 = and i64 %umax, 3                 ; 3 uses
  %i.af = icmp ult i64 %i.u, 4
  br i1 %i.af, label %.epil.preheader116, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter121 = and i64 %umax, -4
  br label %bb.m

bb.d:                                             ; preds = %bb.h, %.lr.ph.new
  %.04560 = phi i64 [ 0, %.lr.ph.new ], [ %i.av, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.04560
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36 ; 2 uses
  %.not50 = icmp eq i32 %i.ah, -1
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.04560
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36 ; 2 uses
  %.not50.1 = icmp eq i32 %i.ap, -1
  br i1 %.not50.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = add nuw i64 %.04560, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph63.unr-lcssa, label %bb.d, !llvm.loop !113

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2
  br label %bb.k

._crit_edge.unr-lcssa:                            ; preds = %bb.m
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %._crit_edge, label %.epil.preheader116

.epil.preheader116:                               ; preds = %._crit_edge.unr-lcssa, %.lr.ph63
  %.04662.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %i.co, %._crit_edge.unr-lcssa ]
  %.04761.epil.init = phi i32 [ 0, %.lr.ph63 ], [ %i.cn, %._crit_edge.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter117, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader116
  %.04662.epil = phi i64 [ %.04662.epil.init, %.epil.preheader116 ], [ %i.bf, %bb.i ] ; 2 uses
  %.04761.epil = phi i32 [ %.04761.epil.init, %.epil.preheader116 ], [ %i.be, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader116 ], [ %epil.iter.next, %bb.i ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.04662.epil ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !36
  store i32 %.04761.epil, ptr %i.bc, align 4, !tbaa !36
  %i.be = add i32 %i.bd, %.04761.epil             ; 2 uses
  %i.bf = add nuw i64 %.04662.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter117
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.i, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.cn, %._crit_edge.unr-lcssa ], [ %i.be, %bb.i ]
  %i.bg = zext i32 %.lcssa to i64                 ; 3 uses
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.bg
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bo = sub nuw nsw i64 %i.bg, %i.bm
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bo)
  %.pre88 = load ptr, ptr %i.i, align 8, !tbaa !87 ; 2 uses
  %.pre89 = load ptr, ptr %0, align 8, !tbaa !37  ; 2 uses
  %.pre91 = ptrtoint ptr %.pre88 to i64
  %.pre92 = ptrtoint ptr %.pre89 to i64
  %.pre94 = sub i64 %.pre91, %.pre92
  %.pre96 = sdiv i64 %.pre94, 36
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bp = phi i64 [ %i.bb, %._crit_edge.thread ], [ %i.bm, %._crit_edge ]
  %i.bq = phi ptr [ %i.ax, %._crit_edge.thread ], [ %i.bi, %._crit_edge ]
  %i.br = phi ptr [ %i.aw, %._crit_edge.thread ], [ %i.bh, %._crit_edge ]
  %.047.lcssa112 = phi i64 [ 0, %._crit_edge.thread ], [ %i.bg, %._crit_edge ] ; 2 uses
  %i.bs = icmp ugt i64 %i.bp, %.047.lcssa112
  br i1 %i.bs, label %bb.l, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.047.lcssa112 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.br, %i.bt
  br i1 %.not.i.i56, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57:      ; preds = %bb.l
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !32
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit58

_ZNSt6vectorIjSaIjEE6resizeEm.exit58:             ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57
  %.pre-phi97 = phi i64 [ %.pre96, %bb.j ], [ %i.u, %bb.k ], [ %i.u, %bb.l ], [ %i.u, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57 ] ; 5 uses
  %i.bu = phi ptr [ %.pre89, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57 ]
  %i.bv = phi ptr [ %.pre88, %bb.j ], [ %i.q, %bb.k ], [ %i.q, %bb.l ], [ %i.q, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i57 ]
  %.not77 = icmp eq ptr %i.bv, %i.bu
  br i1 %.not77, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit58
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 3 uses
  %umax80 = tail call i64 @llvm.umax.i64(i64 %.pre-phi97, i64 1) ; 3 uses
  %xtraiter124 = and i64 %umax80, 1
  %i.by = icmp ult i64 %.pre-phi97, 2
  br i1 %i.by, label %.epil.preheader123, label %.lr.ph66.new

.lr.ph66.new:                                     ; preds = %.lr.ph66
  %unroll_iter128 = and i64 %umax80, -2
  br label %bb.o

bb.m:                                             ; preds = %bb.m, %.lr.ph63.new
  %.04662 = phi i64 [ 0, %.lr.ph63.new ], [ %i.co, %bb.m ] ; 5 uses
  %.04761 = phi i32 [ 0, %.lr.ph63.new ], [ %i.cn, %bb.m ] ; 2 uses
  %niter122 = phi i64 [ 0, %.lr.ph63.new ], [ %niter122.next.3, %bb.m ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.04662 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36
  store i32 %.04761, ptr %i.bz, align 4, !tbaa !36
  %i.cb = add i32 %i.ca, %.04761                  ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.04662
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !36
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !36
  %i.cf = add i32 %i.ce, %i.cb                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.04662
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !36
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !36
  %i.cj = add i32 %i.ci, %i.cf                    ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.04662
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !36
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !36
  %i.cn = add i32 %i.cm, %i.cj                    ; 3 uses
  %i.co = add nuw i64 %.04662, 4                  ; 2 uses
  %niter122.next.3 = add i64 %niter122, 4         ; 2 uses
  %niter122.ncmp.3 = icmp eq i64 %niter122.next.3, %unroll_iter121
  br i1 %niter122.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !116

._crit_edge67.loopexit.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %._crit_edge67, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge67.loopexit.unr-lcssa, %.lr.ph66
  %.04465.epil.init = phi i64 [ 0, %.lr.ph66 ], [ %i.eu, %._crit_edge67.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod127 = trunc i64 %umax80 to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.04465.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !36 ; 2 uses
  %.not.epil = icmp eq i32 %i.cq, -1
  br i1 %.not.epil, label %._crit_edge67, label %bb.n

bb.n:                                             ; preds = %.epil.preheader123
  %i.cr = trunc i64 %.04465.epil.init to i32
  %i.cs = zext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !36 ; 2 uses
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !36
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx
  store i32 %i.cr, ptr %i.cz, align 4, !tbaa !36
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit.unr-lcssa, %bb.n, %.epil.preheader123, %_ZNSt6vectorIjSaIjEE6resizeEm.exit58
  %i.da = trunc i64 %.pre-phi97 to i32            ; 2 uses
  %.069 = add i32 %i.da, -1                       ; 3 uses
  %i.db = icmp sgt i32 %.069, 0
  %.pre90 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 5 uses
  br i1 %i.db, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %._crit_edge67
  %i.dc = zext nneg i32 %.069 to i64              ; 7 uses
  %i.dd = and i64 %.pre-phi97, 4294967295         ; 3 uses
  %min.iters.check = icmp ult i32 %.069, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph73
  %i.de = add nsw i64 %i.dc, -1                   ; 2 uses
  %i.df = add i32 %i.da, -2
  %i.dg = trunc nsw i64 %i.de to i32
  %i.dh = icmp ult i32 %i.df, %i.dg
  %i.di = icmp ugt i64 %i.de, 4294967295
  %i.dj = or i1 %i.dh, %i.di
  br i1 %i.dj, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.dc, 2147483640              ; 3 uses
  %i.dk = sub nsw i64 %i.dd, %n.vec
  %i.dl = and i64 %i.dc, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = sub i64 %.pre-phi97, %index
  %i.dn = sub i64 %i.dc, %index
  %i.do = add i64 %i.dm, 4294967294
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.pre90, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -12
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.dr, align 4, !tbaa !36
  %wide.load113 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !36
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre90, i64 %i.dn ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -12
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -28
  store <4 x i32> %wide.load, ptr %i.du, align 4, !tbaa !36
  store <4 x i32> %wide.load113, ptr %i.dv, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dc
  br i1 %cmp.n, label %._crit_edge74, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph73, %middle.block
  %indvars.iv82.ph = phi i64 [ %i.dd, %vector.scevcheck ], [ %i.dd, %.lr.ph73 ], [ %i.dk, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.dc, %vector.scevcheck ], [ %i.dc, %.lr.ph73 ], [ %i.dl, %middle.block ]
  br label %scalar.ph

bb.o:                                             ; preds = %bb.s, %.lr.ph66.new
  %.04465 = phi i64 [ 0, %.lr.ph66.new ], [ %i.eu, %bb.s ] ; 4 uses
  %niter129 = phi i64 [ 0, %.lr.ph66.new ], [ %niter129.next.1, %bb.s ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.04465
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !36 ; 2 uses
  %.not = icmp eq i32 %i.dy, -1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dz = trunc i64 %.04465 to i32
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ea ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !36 ; 2 uses
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !36
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ef
  store i32 %i.dz, ptr %i.eh, align 4, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ei = or disjoint i64 %.04465, 1              ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !36 ; 2 uses
  %.not.1 = icmp eq i32 %i.ek, -1
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = trunc i64 %i.ei to i32
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !36 ; 2 uses
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !36
  %i.er = zext i32 %i.ep to i64
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.er
  store i32 %i.el, ptr %i.et, align 4, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eu = add nuw i64 %.04465, 2                  ; 2 uses
  %niter129.next.1 = add i64 %niter129, 2         ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge67.loopexit.unr-lcssa, label %bb.o, !llvm.loop !118

._crit_edge74:                                    ; preds = %scalar.ph, %middle.block, %._crit_edge67
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGenL26computeCfgLiveInOutRegSetsERNS0_10IrFunctionE:bb.a
  %i.beh = extractelement <2 x i64> %i.bau, i64 0
  %.not.i.i138 = icmp eq i64 %i.beg, %i.beh
  br i1 %.not.i.i138, label %bb.ig, label %_ZNKSt6bitsetILm256EEneERKS0_.exit.thread

bb.ig:                                            ; preds = %_ZN4Luau7CodeGen23requireVariadicSequenceERNS0_11RegisterSetERKS1_h.exit
  %i.bei = load i64, ptr %.sroa.5167.0..sroa_idx, align 8, !tbaa !83
  %i.bej = extractelement <2 x i64> %i.bau, i64 1
  %.not.1.i.i = icmp eq i64 %i.bei, %i.bej
  br i1 %.not.1.i.i, label %bb.ih, label %_ZNKSt6bitsetILm256EEneERKS0_.exit.thread

bb.ih:                                            ; preds = %bb.ig
  %i.bek = load i64, ptr %.sroa.6168.0..sroa_idx, align 8, !tbaa !83
  %i.bel = extractelement <2 x i64> %i.bba, i64 0
  %.not.2.i.i = icmp eq i64 %i.bek, %i.bel
  br i1 %.not.2.i.i, label %_ZNKSt6bitsetILm256EEneERKS0_.exit, label %_ZNKSt6bitsetILm256EEneERKS0_.exit.thread

_ZNKSt6bitsetILm256EEneERKS0_.exit:               ; preds = %bb.ih
  %i.bem = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !83
  %i.ben = extractelement <2 x i64> %i.bba, i64 1
  %.not.3.i.i.not = icmp eq i64 %i.bem, %i.ben
  br i1 %.not.3.i.i.not, label %bb.ii, label %_ZNKSt6bitsetILm256EEneERKS0_.exit.thread

bb.ii:                                            ; preds = %_ZNKSt6bitsetILm256EEneERKS0_.exit
  %i.beo = load i8, ptr %.sroa.8169.0..sroa_idx, align 8, !tbaa !79, !range !73, !noundef !74
  %.not113 = icmp eq i8 %i.beo, %.sroa.8169.0.copyload
  br i1 %.not113, label %.loopexit190, label %_ZNKSt6bitsetILm256EEneERKS0_.exit.thread

_ZNKSt6bitsetILm256EEneERKS0_.exit.thread:        ; preds = %bb.ig, %bb.ih, %_ZN4Luau7CodeGen23requireVariadicSequenceERNS0_11RegisterSetERKS1_h.exit, %bb.ii, %_ZNKSt6bitsetILm256EEneERKS0_.exit
  %i.bep = load ptr, ptr %i.axt, align 8, !tbaa !35 ; 3 uses
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %i.bep, i64 %i.azd
  %i.ber = load i32, ptr %i.beq, align 4, !tbaa !36 ; 2 uses
  %i.bes = load ptr, ptr %i.axu, align 8, !tbaa !32
  %i.bet = ptrtoint ptr %i.bes to i64
  %i.beu = ptrtoint ptr %i.bep to i64
  %i.bev = sub i64 %i.bet, %i.beu
  %i.bew = ashr exact i64 %i.bev, 2
  %i.bex = icmp ugt i64 %i.bew, %i.azs
  %.pre.i139 = load ptr, ptr %i.b, align 8, !tbaa !35 ; 3 uses
  br i1 %i.bex, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %_ZNKSt6bitsetILm256EEneERKS0_.exit.thread
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %i.bep, i64 %i.azs
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !36
  br label %_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit

bb.ik:                                            ; preds = %_ZNKSt6bitsetILm256EEneERKS0_.exit.thread
  %i.bfa = load ptr, ptr %i.axv, align 8, !tbaa !32
  %i.bfb = ptrtoint ptr %i.bfa to i64
  %i.bfc = ptrtoint ptr %.pre.i139 to i64
  %i.bfd = sub i64 %i.bfb, %i.bfc
  %i.bfe = lshr exact i64 %i.bfd, 2
  %i.bff = trunc i64 %i.bfe to i32
  br label %_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit

_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit: ; preds = %bb.ij, %bb.ik
  %i.bfg = phi i32 [ %i.bez, %bb.ij ], [ %i.bff, %bb.ik ] ; 2 uses
  %i.bfh = zext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i139, i64 %i.bfh
  %.not114469 = icmp eq i32 %i.ber, %i.bfg
  br i1 %.not114469, label %.loopexit190, label %.lr.ph474.preheader

.lr.ph474.preheader:                              ; preds = %_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit
  %i.bfj = zext i32 %i.ber to i64
  %i.bfk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i139, i64 %i.bfj
  %.pre590 = load ptr, ptr %4, align 8, !tbaa !192
  br label %.lr.ph474

.lr.ph474:                                        ; preds = %.lr.ph474.preheader, %bb.ir
  %i.bfl = phi ptr [ %i.bgg, %bb.ir ], [ %.pre590, %.lr.ph474.preheader ] ; 4 uses
  %.0104473 = phi ptr [ %i.bgh, %bb.ir ], [ %i.bfk, %.lr.ph474.preheader ] ; 2 uses
  %.sroa.0175.3472 = phi ptr [ %.sroa.0175.4, %bb.ir ], [ %.sroa.0175.2480, %.lr.ph474.preheader ] ; 8 uses
  %.sroa.11.3471 = phi ptr [ %.sroa.11.4, %bb.ir ], [ %i.azb, %.lr.ph474.preheader ] ; 7 uses
  %.sroa.21.3470 = phi ptr [ %.sroa.21.4, %bb.ir ], [ %.sroa.21.2478, %.lr.ph474.preheader ] ; 3 uses
  %i.bfm = load i32, ptr %.0104473, align 4, !tbaa !36 ; 3 uses
  %i.bfn = zext i32 %i.bfm to i64                 ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfl, i64 %i.bfn
  %i.bfp = load i8, ptr %i.bfo, align 1, !tbaa !31
  %.not115 = icmp eq i8 %i.bfp, 0
  br i1 %.not115, label %bb.il, label %bb.ir

bb.il:                                            ; preds = %.lr.ph474
  %.not.i142 = icmp eq ptr %.sroa.11.3471, %.sroa.21.3470
  br i1 %.not.i142, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  store i32 %i.bfm, ptr %.sroa.11.3471, align 4, !tbaa !36
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.in:                                            ; preds = %bb.il
  %i.bfq = ptrtoint ptr %.sroa.11.3471 to i64
  %i.bfr = ptrtoint ptr %.sroa.0175.3472 to i64
  %i.bfs = sub i64 %i.bfq, %i.bfr                 ; 6 uses
  %i.bft = icmp eq i64 %i.bfs, 9223372036854775804
  br i1 %i.bft, label %bb.io, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.io:                                            ; preds = %bb.in
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
          to label %.noexc144 unwind label %.loopexit.split-lp

.noexc144:                                        ; preds = %bb.io
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.in
  %i.bfu = ashr exact i64 %i.bfs, 2               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bfu, i64 1)
  %i.bfv = add nsw i64 %.sroa.speculated.i.i.i, %i.bfu ; 2 uses
  %i.bfw = icmp ult i64 %i.bfv, %i.bfu
  %i.bfx = call i64 @llvm.umin.i64(i64 %i.bfv, i64 2305843009213693951)
  %i.bfy = select i1 %i.bfw, i64 2305843009213693951, i64 %i.bfx ; 3 uses
  %.not.i.i.i143 = icmp ne i64 %i.bfy, 0
  call void @llvm.assume(i1 %.not.i.i.i143)
  %i.bfz = shl nuw nsw i64 %i.bfy, 2
  %i.bga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfz) #16
          to label %.noexc145 unwind label %.loopexit191 ; 4 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bgb = getelementptr inbounds i8, ptr %i.bga, i64 %i.bfs ; 2 uses
  store i32 %i.bfm, ptr %i.bgb, align 4, !tbaa !36
  %i.bgc = icmp sgt i64 %i.bfs, 0
  br i1 %i.bgc, label %bb.ip, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ip:                                            ; preds = %.noexc145
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bga, ptr align 4 %.sroa.0175.3472, i64 %i.bfs, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ip, %.noexc145
  %.not.i17.i.i = icmp eq ptr %.sroa.0175.3472, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3472, i64 noundef %i.bfs) #17
  %.pre591.pre = load ptr, ptr %4, align 8, !tbaa !192
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.iq, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %.pre591 = phi ptr [ %.pre591.pre, %bb.iq ], [ %i.bfl, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i ]
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %i.bfy
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.im
  %i.bge = phi ptr [ %.pre591, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.bfl, %bb.im ]
  %.sroa.21.8 = phi ptr [ %i.bgd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.21.3470, %bb.im ]
  %.pn = phi ptr [ %i.bgb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.11.3471, %bb.im ]
  %.sroa.0175.8 = phi ptr [ %i.bga, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0175.3472, %bb.im ]
  %.sroa.11.7 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 %i.bfn
  store i8 1, ptr %i.bgf, align 1, !tbaa !31
  %.pre589 = load ptr, ptr %4, align 8, !tbaa !192
  br label %bb.ir

.loopexit191:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

.loopexit.split-lp:                               ; preds = %bb.io
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.ir:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %.lr.ph474
  %i.bgg = phi ptr [ %.pre589, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.bfl, %.lr.ph474 ]
  %.sroa.21.4 = phi ptr [ %.sroa.21.8, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.21.3470, %.lr.ph474 ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %.sroa.11.7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.11.3471, %.lr.ph474 ] ; 2 uses
  %.sroa.0175.4 = phi ptr [ %.sroa.0175.8, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0175.3472, %.lr.ph474 ] ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %.0104473, i64 4 ; 2 uses
  %.not114 = icmp eq ptr %i.bgh, %i.bfi
  br i1 %.not114, label %.loopexit190, label %.lr.ph474

.loopexit190:                                     ; preds = %bb.ir, %_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit, %bb.ii
  %.sroa.21.5 = phi ptr [ %.sroa.21.2478, %bb.ii ], [ %.sroa.21.2478, %_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit ], [ %.sroa.21.4, %bb.ir ] ; 2 uses
  %.sroa.11.5 = phi ptr [ %i.azb, %bb.ii ], [ %i.azb, %_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit ], [ %.sroa.11.4, %bb.ir ] ; 2 uses
  %.sroa.0175.5 = phi ptr [ %.sroa.0175.2480, %bb.ii ], [ %.sroa.0175.2480, %_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj.exit ], [ %.sroa.0175.4, %bb.ir ] ; 3 uses
  %i.bgi = icmp eq ptr %.sroa.0175.5, %.sroa.11.5
  br i1 %i.bgi, label %._crit_edge482.loopexit, label %bb.hv, !llvm.loop !198

._crit_edge482.loopexit:                          ; preds = %.loopexit190
  %.pre592 = load ptr, ptr %i.l, align 8, !tbaa !87
  %.pre593 = load ptr, ptr %0, align 8, !tbaa !37
  br label %._crit_edge482

._crit_edge482.thread:                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.thread, %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit
  %i.bgj = getelementptr inbounds nuw i8, ptr %0, i64 840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bgj, i8 0, i64 32, i1 false)
  br label %.loopexit

._crit_edge482:                                   ; preds = %._crit_edge482.loopexit, %.preheader192
  %i.bgk = phi ptr [ %i.ayt, %.preheader192 ], [ %.pre593, %._crit_edge482.loopexit ] ; 3 uses
  %i.bgl = phi ptr [ %i.ayu, %.preheader192 ], [ %.pre592, %._crit_edge482.loopexit ] ; 2 uses
  %.sroa.21.2.lcssa = phi ptr [ %.sroa.21.1, %.preheader192 ], [ %.sroa.21.5, %._crit_edge482.loopexit ] ; 2 uses
  %.sroa.0175.2.lcssa = phi ptr [ %.sroa.0175.1, %.preheader192 ], [ %.sroa.0175.5, %._crit_edge482.loopexit ] ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bgm, i8 0, i64 32, i1 false)
  %.not491 = icmp eq ptr %i.bgl, %i.bgk
  br i1 %.not491, label %.loopexit, label %.lr.ph487

.lr.ph487:                                        ; preds = %._crit_edge482
  %i.bgn = ptrtoint ptr %i.bgl to i64
  %i.bgo = ptrtoint ptr %i.bgk to i64
  %i.bgp = sub i64 %i.bgn, %i.bgo
  %i.bgq = sdiv i64 %i.bgp, 36
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bgs = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bgu = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %0, i64 873 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.bgq, i64 1)
  br label %bb.is

bb.is:                                            ; preds = %.lr.ph487, %bb.ix
  %i.bgw = phi i64 [ 0, %.lr.ph487 ], [ %i.bhz, %bb.ix ] ; 2 uses
  %i.bgx = phi i64 [ 0, %.lr.ph487 ], [ %i.bia, %bb.ix ] ; 2 uses
  %i.bgy = phi i64 [ 0, %.lr.ph487 ], [ %i.bib, %bb.ix ] ; 2 uses
  %i.bgz = phi i64 [ 0, %.lr.ph487 ], [ %i.bic, %bb.ix ] ; 2 uses
  %.0103485 = phi i64 [ 0, %.lr.ph487 ], [ %i.bid, %bb.ix ] ; 3 uses
  %i.bha = getelementptr inbounds nuw [36 x i8], ptr %i.bgk, i64 %.0103485
  %i.bhb = load i8, ptr %i.bha, align 4, !tbaa !39
  %i.bhc = icmp eq i8 %i.bhb, 5
  br i1 %i.bhc, label %bb.ix, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.bhd = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.bhe = getelementptr inbounds nuw [40 x i8], ptr %i.bhd, i64 %.0103485 ; 6 uses
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !83
  %i.bhg = or i64 %i.bgz, %i.bhf                  ; 3 uses
  store i64 %i.bhg, ptr %i.bgm, align 8, !tbaa !83
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhe, i64 8
  %i.bhi = load i64, ptr %i.bhh, align 8, !tbaa !83
  %i.bhj = or i64 %i.bgy, %i.bhi                  ; 3 uses
  store i64 %i.bhj, ptr %i.bgr, align 8, !tbaa !83
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhe, i64 16
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !83
  %i.bhm = or i64 %i.bgx, %i.bhl                  ; 3 uses
  store i64 %i.bhm, ptr %i.bgs, align 8, !tbaa !83
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhe, i64 24
  %i.bho = load i64, ptr %i.bhn, align 8, !tbaa !83
  %i.bhp = or i64 %i.bgw, %i.bho                  ; 3 uses
  store i64 %i.bhp, ptr %i.bgt, align 8, !tbaa !83
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhe, i64 32
  %i.bhr = load i8, ptr %i.bhq, align 8, !tbaa !79, !range !73, !noundef !74
  %i.bhs = trunc nuw i8 %i.bhr to i1
  br i1 %i.bhs, label %bb.iu, label %bb.ix

bb.iu:                                            ; preds = %bb.it
  %i.bht = load i8, ptr %i.bgu, align 8, !tbaa !199, !range !73, !noundef !74
  %i.bhu = trunc nuw i8 %i.bht to i1
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhe, i64 33
  %i.bhw = load i8, ptr %i.bhv, align 1, !tbaa !85 ; 2 uses
  br i1 %i.bhu, label %bb.iv, label %._crit_edge594

bb.iv:                                            ; preds = %bb.iu
  %i.bhx = load i8, ptr %i.bgv, align 1, !tbaa !261
  %i.bhy = icmp ult i8 %i.bhw, %i.bhx
  br i1 %i.bhy, label %._crit_edge594, label %bb.iw

._crit_edge594:                                   ; preds = %bb.iu, %bb.iv
  store i8 %i.bhw, ptr %i.bgv, align 1, !tbaa !261
  br label %bb.iw

bb.iw:                                            ; preds = %._crit_edge594, %bb.iv
  store i8 1, ptr %i.bgu, align 8, !tbaa !199
  br label %bb.ix

bb.ix:                                            ; preds = %bb.it, %bb.iw, %bb.is
  %i.bhz = phi i64 [ %i.bhp, %bb.it ], [ %i.bhp, %bb.iw ], [ %i.bgw, %bb.is ]
  %i.bia = phi i64 [ %i.bhm, %bb.it ], [ %i.bhm, %bb.iw ], [ %i.bgx, %bb.is ]
  %i.bib = phi i64 [ %i.bhj, %bb.it ], [ %i.bhj, %bb.iw ], [ %i.bgy, %bb.is ]
  %i.bic = phi i64 [ %i.bhg, %bb.it ], [ %i.bhg, %bb.iw ], [ %i.bgz, %bb.is ]
  %i.bid = add nuw i64 %.0103485, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bid, %umax
  br i1 %exitcond.not, label %.loopexit, label %bb.is, !llvm.loop !262

.loopexit:                                        ; preds = %bb.ix, %._crit_edge482, %._crit_edge482.thread
  %.sroa.0175.2.lcssa695 = phi ptr [ null, %._crit_edge482.thread ], [ %.sroa.0175.2.lcssa, %._crit_edge482 ], [ %.sroa.0175.2.lcssa, %bb.ix ] ; 3 uses
  %.sroa.21.2.lcssa694 = phi ptr [ null, %._crit_edge482.thread ], [ %.sroa.21.2.lcssa, %._crit_edge482 ], [ %.sroa.21.2.lcssa, %bb.ix ]
  %i.bie = load ptr, ptr %4, align 8, !tbaa !192  ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.bie, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.iy

bb.iy:                                            ; preds = %.loopexit
  %i.bif = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !263
  %i.bih = ptrtoint ptr %i.big to i64
  %i.bii = ptrtoint ptr %i.bie to i64
  %i.bij = sub i64 %i.bih, %i.bii
  call void @_ZdlPvm(ptr noundef nonnull %i.bie, i64 noundef %i.bij) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i.i.i147 = icmp eq ptr %.sroa.0175.2.lcssa695, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bik = ptrtoint ptr %.sroa.21.2.lcssa694 to i64
  %i.bil = ptrtoint ptr %.sroa.0175.2.lcssa695 to i64
  %i.bim = sub i64 %i.bik, %i.bil
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.2.lcssa695, i64 noundef %i.bim) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.ja:                                            ; preds = %.loopexit191, %.loopexit.split-lp, %.loopexit193, %.loopexit.split-lp194, %bb.hn
  %.sroa.21.6 = phi ptr [ null, %bb.hn ], [ %.sroa.11.0458, %.loopexit.split-lp194 ], [ %.sroa.11.0458, %.loopexit193 ], [ %.sroa.11.3471, %.loopexit191 ], [ %.sroa.11.3471, %.loopexit.split-lp ]
  %.sroa.0175.6 = phi ptr [ null, %bb.hn ], [ %.sroa.0175.0459, %.loopexit.split-lp194 ], [ %.sroa.0175.0459, %.loopexit193 ], [ %.sroa.0175.3472, %.loopexit191 ], [ %.sroa.0175.3472, %.loopexit.split-lp ] ; 3 uses
  %.pn118 = phi { ptr, i32 } [ %i.axw, %bb.hn ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp194 ], [ %lpad.loopexit195, %.loopexit193 ], [ %lpad.loopexit, %.loopexit191 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bin = load ptr, ptr %4, align 8, !tbaa !192  ; 3 uses
  %.not.i.i.i148 = icmp eq ptr %i.bin, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIhSaIhEED2Ev.exit149, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bio = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !263
  %i.biq = ptrtoint ptr %i.bip to i64
  %i.bir = ptrtoint ptr %i.bin to i64
  %i.bis = sub i64 %i.biq, %i.bir
  call void @_ZdlPvm(ptr noundef nonnull %i.bin, i64 noundef %i.bis) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit149

_ZNSt6vectorIhSaIhEED2Ev.exit149:                 ; preds = %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i.i.i150 = icmp eq ptr %.sroa.0175.6, null
  br i1 %.not.i.i.i150, label %_ZNSt6vectorIjSaIjEED2Ev.exit151, label %bb.jc

bb.jc:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit149
  %i.bit = ptrtoint ptr %.sroa.21.6 to i64
  %i.biu = ptrtoint ptr %.sroa.0175.6 to i64
  %i.biv = sub i64 %i.bit, %i.biu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.6, i64 noundef %i.biv) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit151

_ZNSt6vectorIjSaIjEED2Ev.exit151:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit149, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn118
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !167    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen11RegisterSetEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen11RegisterSetEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 40                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !170
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 230584300921369395) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 40
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !alias.scope !265
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !269

_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #17
  br label %_ZNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !167
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !170
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !264
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen11RegisterSetEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen27BlockVmRegLiveInComputation8useRangeEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.c = add nsw i32 %2, %1
  %i.d = load ptr, ptr %0, align 8, !nonnull !74, !align !180
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sext i32 %1 to i64
  %i.g = sext i32 %i.c to i64
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i32 %1 to i8                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !178, !nonnull !74, !align !180 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !79, !range !73, !noundef !74
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.014.i.i = phi i8 [ %i.u, %.preheader.i.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.n = zext i8 %.014.i.i to i64                 ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !83
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.q
end_hunk_1
