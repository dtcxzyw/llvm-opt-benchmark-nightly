Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZNK4llvm23LoongArchTargetLowering20LowerFormalArgumentsENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EE:bb.a
  store i32 %.sroa.14.0.lcssa, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !147
  br label %.lr.ph.i.i.i.i.i315

.lr.ph.i.i.i.i.i315:                              ; preds = %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i311, %.lr.ph.i.i.i.i.i315
  %.012.i.i.i.i.i316 = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i315 ], [ %i.ud, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i311 ] ; 3 uses
  %.0911.i.i.i.i.i317 = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i315 ], [ %.sroa.0374.3, %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i311 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i316, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i317, i64 16, i1 false), !tbaa.struct !499, !alias.scope !1290
  %i.uf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i317, i64 16 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i316, i64 16
  %.not.i.i.i.i.i318 = icmp eq ptr %i.uf, %.sroa.20.3
  br i1 %.not.i.i.i.i.i318, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i319, label %.lr.ph.i.i.i.i.i315, !llvm.loop !1288

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i319: ; preds = %.lr.ph.i.i.i.i.i315
  %.not.i23.i.i321 = icmp eq ptr %.sroa.0374.3, null
  br i1 %.not.i23.i.i321, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i322, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i319
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0374.3, i64 noundef %i.tv) #30
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i322

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i322: ; preds = %bb.ca, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i319
  %i.uh = getelementptr inbounds nuw [16 x i8], ptr %i.ud, i64 %i.ub
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit323

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit323: ; preds = %bb.bx, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i322
  %.sroa.20.4 = phi ptr [ %i.uh, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i322 ], [ %.sroa.20.3, %bb.bx ]
  %.012.i.i.i.i.i316.pn = phi ptr [ %.012.i.i.i.i.i316, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i322 ], [ %.0.lcssa.i.i.i.i.i.pn, %bb.bx ]
  %.sroa.0374.4 = phi ptr [ %i.ud, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i322 ], [ %.sroa.0374.3, %bb.bx ] ; 3 uses
  %.sroa.10379.3 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i316.pn, i64 32
  store ptr %.sroa.0374.4, ptr %46, align 8, !tbaa !495
  %i.ui = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.uj = ptrtoint ptr %.sroa.10379.3 to i64
  %i.uk = ptrtoint ptr %.sroa.0374.4 to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %i.um = ashr exact i64 %i.ul, 4
  store i64 %i.um, ptr %i.ui, align 8, !tbaa !498
  %i.un = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.201") align 8 %46) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.un, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.un, 1
  br label %.thread

.thread:                                          ; preds = %._crit_edge452.thread, %._crit_edge, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit323, %._crit_edge452
  %.sroa.20.2 = phi ptr [ %.sroa.20.3, %._crit_edge452 ], [ %.sroa.20.4, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit323 ], [ null, %._crit_edge ], [ null, %._crit_edge452.thread ]
  %.sroa.0374.2 = phi ptr [ %.sroa.0374.3, %._crit_edge452 ], [ %.sroa.0374.4, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit323 ], [ null, %._crit_edge ], [ null, %._crit_edge452.thread ] ; 3 uses
  %.sroa.0392.3 = phi ptr [ %.sroa.0392.0.lcssa, %._crit_edge452 ], [ %.fca.0.extract, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit323 ], [ %.sroa.0392.0.lcssa, %._crit_edge ], [ %.sroa.0392.0.lcssa, %._crit_edge452.thread ]
  %.sroa.14.3 = phi i32 [ %.sroa.14.0.lcssa, %._crit_edge452 ], [ %.fca.1.extract, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit323 ], [ %.sroa.14.0.lcssa, %._crit_edge ], [ %.sroa.14.0.lcssa, %._crit_edge452.thread ]
  %i.uo = getelementptr inbounds nuw i8, ptr %35, i64 368
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !19 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %35, i64 384
  %i.ur = icmp eq ptr %i.up, %i.uq
  br i1 %i.ur, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %.thread
  call void @free(ptr noundef %i.up) #28
  br label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i: ; preds = %bb.cb, %.thread
  %i.us = getelementptr inbounds nuw i8, ptr %35, i64 288
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !19 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %35, i64 304
  %i.uv = icmp eq ptr %i.ut, %i.uu
  br i1 %i.uv, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.ut) #28
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i: ; preds = %bb.cc, %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  %i.uw = getelementptr inbounds nuw i8, ptr %35, i64 144
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !19 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %35, i64 160
  %i.uz = icmp eq ptr %i.ux, %i.uy
  br i1 %i.uz, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.ux) #28
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i: ; preds = %bb.cd, %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  %i.va = getelementptr inbounds nuw i8, ptr %35, i64 64
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !19 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %35, i64 80
  %i.vd = icmp eq ptr %i.vb, %i.vc
  br i1 %i.vd, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.vb) #28
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.ve = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.au
  br i1 %i.vf, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj1EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.ve) #28
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj1EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %.not.i.i.i324 = icmp eq ptr %.sroa.0374.2, null
  br i1 %.not.i.i.i324, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj1EED2Ev.exit
  %i.vg = ptrtoint ptr %.sroa.20.2 to i64
  %i.vh = ptrtoint ptr %.sroa.0374.2 to i64
  %i.vi = sub i64 %i.vg, %i.vh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0374.2, i64 noundef %i.vi) #30
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit:    ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj1EED2Ev.exit, %bb.cg
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0392.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.14.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #4

declare void @_ZN4llvm7CCState22AnalyzeFormalArgumentsERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL16CC_LoongArch_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #1 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread82 [
    i16 7, label %.critedge
    i16 8, label %.critedge
    i16 14, label %._crit_edge
    i16 15, label %._crit_edge93
  ]

._crit_edge93:                                    ; preds = %bb.a
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre95 = load ptr, ptr %.phi.trans.insert94, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %.pre95, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !147  ; 4 uses
  %i.c = and i32 %i.b, 8192
  %.not.i.i41 = icmp eq i32 %i.c, 0
  br i1 %.not.i.i41, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44, label %bb.s

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  %i.d = load i32, ptr %.pre, align 4, !tbaa !147 ; 4 uses
  %i.e = and i32 %i.d, 33554432
  %.not.i.i34 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i34, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.m

.critedge:                                        ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !147  ; 9 uses
  %i.j = and i32 %i.i, 16
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.k = and i32 %i.i, 32
  %.not.i.i.1 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.i, 64
  %.not.i.i.2 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.i, 128
  %.not.i.i.3 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 256
  %.not.i.i.4 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %i.i, 512
  %.not.i.i.5 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %i.i, 1024
  %.not.i.i.6 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = and i32 %i.i, 2048
  %.not.i.i.7 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.i, 4096
  %.not.i.i.8 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread82

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.critedge
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZZL16CC_LoongArch_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE7GPRList, i64 %.0613.i.i.lcssa.wide
  %i.t = load i16, ptr %i.s, align 2, !tbaa !142  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.t) #28
  %i.u = zext i16 %i.t to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.v, align 8, !tbaa !1220, !alias.scope !1294
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.w, align 8, !tbaa !1297, !alias.scope !1294
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !alias.scope !1294
  %i.z = and i8 %i.y, -128
  %i.aa = trunc i32 %3 to i8
  %i.ab = shl i8 %i.aa, 1
  %i.ac = and i8 %i.ab, 126
  %i.ad = or disjoint i8 %i.z, %i.ac
  store i8 %i.ad, ptr %i.x, align 4, !alias.scope !1294
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.ae, align 2, !tbaa !31, !alias.scope !1294
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.af, align 8, !tbaa !31, !alias.scope !1294
  store i32 %i.u, ptr %8, align 8, !tbaa !147, !alias.scope !1294
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1306, !nonnull !27, !align !150 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !567 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !568
  %.not.i.i32 = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i.i32, label %bb.k, label %bb.j, !prof !570

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.l

bb.k:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.am = zext i32 %i.aj to i64
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !567
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !567
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.y

bb.m:                                             ; preds = %._crit_edge
  %i.ar = and i32 %i.d, 67108864
  %.not.i.i34.1 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i34.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = and i32 %i.d, 134217728
  %.not.i.i34.2 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i34.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = and i32 %i.d, 268435456
  %.not.i.i34.3 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i34.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37, label %.thread82

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37: ; preds = %bb.o, %bb.n, %bb.m, %._crit_edge
  %.0613.i.i33.lcssa.wide = phi i64 [ 0, %._crit_edge ], [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZZL16CC_LoongArch_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9FPR32List, i64 %.0613.i.i33.lcssa.wide
  %i.av = load i16, ptr %i.au, align 2, !tbaa !142 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.av) #28
  %i.aw = zext i16 %i.av to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.ax, align 8, !tbaa !1220, !alias.scope !1326
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ay, align 8, !tbaa !1297, !alias.scope !1326
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4, !alias.scope !1326
  %i.bb = and i8 %i.ba, -128
  %i.bc = trunc i32 %3 to i8
  %i.bd = shl i8 %i.bc, 1
  %i.be = and i8 %i.bd, 126
  %i.bf = or disjoint i8 %i.bb, %i.be
  store i8 %i.bf, ptr %i.az, align 4, !alias.scope !1326
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.bg, align 2, !tbaa !31, !alias.scope !1326
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %2, ptr %i.bh, align 8, !tbaa !31, !alias.scope !1326
  store i32 %i.aw, ptr %9, align 8, !tbaa !147, !alias.scope !1326
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1306, !nonnull !27, !align !150 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !567 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !568
  %.not.i.i38 = icmp ult i32 %i.bl, %i.bn
  br i1 %.not.i.i38, label %bb.q, label %bb.p, !prof !570

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.r

bb.q:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit37
  %i.bo = zext i32 %i.bl to i64
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !567
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bk, align 8, !tbaa !567
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge93
  %i.bt = and i32 %i.b, 16384
  %.not.i.i41.1 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i41.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = and i32 %i.b, 32768
  %.not.i.i41.2 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i41.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = and i32 %i.b, 65536
  %.not.i.i41.3 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i41.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44, label %.thread82

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44: ; preds = %bb.u, %bb.t, %bb.s, %._crit_edge93
  %.0613.i.i40.lcssa.wide = phi i64 [ 0, %._crit_edge93 ], [ 1, %bb.s ], [ 2, %bb.t ], [ 3, %bb.u ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @_ZZL16CC_LoongArch_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9FPR64List, i64 %.0613.i.i40.lcssa.wide
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !142 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bx) #28
  %i.by = zext i16 %i.bx to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.bz, align 8, !tbaa !1220, !alias.scope !1329
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.ca, align 8, !tbaa !1297, !alias.scope !1329
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !alias.scope !1329
  %i.cd = and i8 %i.cc, -128
  %i.ce = trunc i32 %3 to i8
  %i.cf = shl i8 %i.ce, 1
  %i.cg = and i8 %i.cf, 126
  %i.ch = or disjoint i8 %i.cd, %i.cg
  store i8 %i.ch, ptr %i.cb, align 4, !alias.scope !1329
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.ci, align 2, !tbaa !31, !alias.scope !1329
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %2, ptr %i.cj, align 8, !tbaa !31, !alias.scope !1329
  store i32 %i.by, ptr %10, align 8, !tbaa !147, !alias.scope !1329
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1306, !nonnull !27, !align !150 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !567 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !568
  %.not.i.i45 = icmp ult i32 %i.cn, %i.cp
  br i1 %.not.i.i45, label %bb.w, label %bb.v, !prof !570

bb.v:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.x

bb.w:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44
  %i.cq = zext i32 %i.cn to i64
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !567
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cm, align 8, !tbaa !567
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.y

.thread82:                                        ; preds = %bb.i, %bb.u, %bb.o, %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.94, i1 noundef zeroext true) #29
  unreachable

bb.y:                                             ; preds = %bb.x, %bb.r, %bb.l
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL12CC_LoongArchRKN4llvm10DataLayoutENS_12LoongArchABI3ABIEjNS_3MVTENS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyERNS_7CCStateEbPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef %1, i32 noundef %2, i16 %3, i32 noundef %4, ptr nofree noundef readonly byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(420) %6, i1 noundef zeroext %7, ptr noundef %8) unnamed_addr #1 {
bb.a:
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm7CCState6addLocERKNS_11CCValAssignE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1306, !nonnull !27, !align !150 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !567  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !568
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !570

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !567
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !567
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::CCValAssign", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !567
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load i32, ptr %i.a, align 8, !tbaa !567
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !567
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !567
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #23

declare noundef i32 @_ZNK4llvm10DataLayout32getLargestLegalIntTypeSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(912)) local_unnamed_addr #4

declare { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 65536) i32 @_ZL14allocateArgGPRRN4llvm7CCStateE(ptr noundef nonnull align 8 dereferenceable(420) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1967
  %cond = icmp ne i32 %i.a, 21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i8, ptr %i.b, align 4, !range !26
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %cond, i1 true, i1 %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  br i1 %or.cond, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !147  ; 10 uses
  %i.i = and i32 %i.h, 16
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 32
  %.not.i.i.1 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, 64
  %.not.i.i.2 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %i.h, 128
  %.not.i.i.3 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.h, 256
  %.not.i.i.4 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = and i32 %i.h, 512
  %.not.i.i.5 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = and i32 %i.h, 1024
  %.not.i.i.6 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = and i32 %i.h, 2048
  %.not.i.i.7 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !147  ; 15 uses
  %i.s = and i32 %i.r, 131072
  %.not.i.i.8 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.8, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = and i32 %i.r, 262144
  %.not.i.i.9 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.9, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = and i32 %i.r, 524288
  %.not.i.i.10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.10, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = and i32 %i.r, 1048576
  %.not.i.i.11 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.11, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = and i32 %i.r, 2097152
  %.not.i.i.12 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.12, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = and i32 %i.r, 4194304
  %.not.i.i.13 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.13, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = and i32 %i.r, 8388608
  %.not.i.i.14 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.14, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = and i32 %i.r, 16777216
  %.not.i.i.15 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.15, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = and i32 %i.r, 33554432
  %.not.i.i.16 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.16, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = and i32 %i.r, 67108864
  %.not.i.i.17 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.17, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = and i32 %i.r, 134217728
  %.not.i.i.18 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.18, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = and i32 %i.r, 268435456
  %.not.i.i.19 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.19, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ae = and i32 %i.r, 536870912
  %.not.i.i.20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.20, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.af = and i32 %i.r, 1073741824
  %.not.i.i.21 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.21, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i.22 = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i.22, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ag = and i32 %i.h, 1
  %.not.i.i.23 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.23, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = and i32 %i.h, 2
  %.not.i.i.24 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.24, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @_ZL19PreserveNoneArgGPRs, i64 %.0613.i.i.lcssa.wide
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split

bb.aa:                                            ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !147 ; 8 uses
  %i.al = and i32 %i.ak, 131072
  %.not.i.i6 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.am = and i32 %i.ak, 262144
  %.not.i.i6.1 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i6.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.an = and i32 %i.ak, 524288
  %.not.i.i6.2 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i6.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = and i32 %i.ak, 1048576
  %.not.i.i6.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i6.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ap = and i32 %i.ak, 2097152
  %.not.i.i6.4 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i6.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aq = and i32 %i.ak, 4194304
  %.not.i.i6.5 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i6.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ar = and i32 %i.ak, 8388608
  %.not.i.i6.6 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i6.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.as = and i32 %i.ak, 16777216
  %.not.i.i6.7 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i6.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0613.i.i5.lcssa.wide = phi i64 [ 0, %bb.aa ], [ 1, %bb.ab ], [ 2, %bb.ac ], [ 3, %bb.ad ], [ 4, %bb.ae ], [ 5, %bb.af ], [ 6, %bb.ag ], [ 7, %bb.ah ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZL7ArgGPRs, i64 %.0613.i.i5.lcssa.wide
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8
  %.sink.in = phi ptr [ %i.at, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i8 ], [ %i.ai, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !142 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %.sink) #28
  %i.au = zext i16 %.sink to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split, %bb.ah, %bb.z
  %.sroa.012.0.shrunk = phi i32 [ 0, %bb.z ], [ 0, %bb.ah ], [ %i.au, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.sink.split ]
  ret i32 %.sroa.012.0.shrunk
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %1, i8 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1332, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1333 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = zext nneg i8 %2 to i64
  %i.h = shl nuw i64 1, %i.g                      ; 2 uses
  %i.i = add nsw i64 %i.f, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = add i64 %i.j, %i.e
  %i.l = sub i64 0, %i.h
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !1333
  %i.n = sub i64 0, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %2 to i64
  %i.p = shl nuw i64 1, %i.o                      ; 2 uses
  %i.q = add i64 %i.p, -1
  %i.r = add i64 %i.q, %i.e
  %i.s = sub i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %1 to i64
  %i.v = add nsw i64 %i.t, %i.u
  store i64 %i.v, ptr %i.d, align 8, !tbaa !1333
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.w, align 8, !tbaa !151
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %2, i8 %.sroa.0.0.copyload.i)
  store i8 %.sroa.speculated, ptr %i.w, align 8, !tbaa !151
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %2) #28
  ret i64 %.0
}

declare void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420), i8) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !567
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load i32, ptr %i.a, align 8, !tbaa !567
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !567
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !567
  ret void
}

declare void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG10getExtLoadENS_3ISD11LoadExtTypeERKNS_5SDLocENS_3EVTENS_7SDValueES7_NS_18MachinePointerInfoES6_NS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, i16, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8RegisterENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1392, !noalias !1968 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1402, !noalias !1968 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1403, !noalias !1968 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !147    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !147
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !1405

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !147
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !1406, !llvm.loop !1973

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !147
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8RegisterENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit, label %bb.c, !prof !570

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1974
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1975
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8RegisterENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !570

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8RegisterENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
end_hunk_1
