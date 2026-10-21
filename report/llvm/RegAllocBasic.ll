Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocBasic?download=true
inline.NumInlined: 799
inline.NumDeleted: 533
begin_hunk_0_@_ZNK4llvm7RABasic16getAnalysisUsageERNS_13AnalysisUsageE:bb.a

bb.cu:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i216
  %i.nj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i217, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i209

._crit_edge._crit_edge52.i.i.i.i.i.i209:          ; preds = %bb.cu, %._crit_edge.i.i.i.i.i.i206
  %.2.i.i.i.i.i.i210 = phi ptr [ %i.nj, %bb.cu ], [ %.029.lcssa.i.i.i.i.i.i208, %._crit_edge.i.i.i.i.i.i206 ] ; 2 uses
  %i.nk = load ptr, ptr %.2.i.i.i.i.i.i210, align 8, !tbaa !31
  %i.nl = icmp eq ptr %i.nk, @_ZN4llvm26LiveRegMatrixWrapperLegacy2IDE
  br i1 %i.nl, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i211

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit: ; preds = %bb.co
  %i.nm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i204, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit423: ; preds = %bb.cp
  %i.nn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i204, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit425: ; preds = %bb.cq
  %i.no = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i204, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213: ; preds = %bb.cn, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit423, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit425, %._crit_edge._crit_edge52.i.i.i.i.i.i209, %._crit_edge._crit_edge.i.i.i.i.i.i216, %bb.cs
  %.028.i.i.i.i.i.i214 = phi ptr [ %.1.i.i.i.i.i.i217, %._crit_edge._crit_edge.i.i.i.i.i.i216 ], [ %.029.lcssa.i.i.i.i.i.i208, %bb.cs ], [ %.2.i.i.i.i.i.i210, %._crit_edge._crit_edge52.i.i.i.i.i.i209 ], [ %i.no, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit425 ], [ %i.nn, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit423 ], [ %i.nm, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i204, %bb.cn ]
  %.not.i.i215 = icmp eq ptr %.028.i.i.i.i.i.i214, %i.mm
  br i1 %.not.i.i215, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i211, label %_ZN4llvm13AnalysisUsage12addPreservedINS_26LiveRegMatrixWrapperLegacyEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i211: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213, %._crit_edge._crit_edge52.i.i.i.i.i.i209, %._crit_edge.i.i.i.i.i.i206
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !104
  %.not.i2.i.i212 = icmp ult i32 %i.mk, %i.nq
  br i1 %.not.i2.i.i212, label %bb.cw, label %bb.cv, !prof !105

bb.cv:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i211
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm26LiveRegMatrixWrapperLegacy2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_26LiveRegMatrixWrapperLegacyEEERS0_v.exit

bb.cw:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i211
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.ml
  store ptr @_ZN4llvm26LiveRegMatrixWrapperLegacy2IDE, ptr %i.nr, align 1
  %i.ns = load i32, ptr %i.d, align 8, !tbaa !93
  %i.nt = add i32 %i.ns, 1
  store i32 %i.nt, ptr %i.d, align 8, !tbaa !93
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_26LiveRegMatrixWrapperLegacyEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_26LiveRegMatrixWrapperLegacyEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i213, %bb.cv, %bb.cw
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #18
  ret void
}

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm7RABasic13releaseMemoryEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !120
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm7SpillerESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm7SpillerEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm7SpillerEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18, !inline_history !3
  br label %_ZNSt10unique_ptrIN4llvm7SpillerESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm7SpillerESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm7SpillerEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvm7RABasic18spillInterferencesERKNS_12LiveIntervalENS_10MCRegisterERNS_15SmallVectorImplINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.151", align 8 ; 10 uses
  %5 = alloca %"class.llvm::LiveRangeEdit", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !332  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !346, !noalias !347 ; 2 uses
  %.not5867 = icmp eq ptr %i.g, null
  br i1 %.not5867, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !348, !noalias !347
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !350, !noalias !347 ; 2 uses
  %i.n = lshr i32 %i.m, 12
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.o
  %i.q = and i32 %i.m, 4095
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load float, ptr @_ZN4llvm9huge_valfE, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph71, %.critedge39
  %.sroa.652.069 = phi ptr [ %i.p, %.lr.ph71 ], [ %i.au, %.critedge39 ] ; 2 uses
  %.sroa.10.068 = phi i32 [ %i.q, %.lr.ph71 ], [ %i.ax, %.critedge39 ] ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.v = call noundef nonnull align 8 dereferenceable(172) ptr @_ZN4llvm13LiveRegMatrix5queryERKNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %.sroa.10.068) #18 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 161
  %i.x = load i8, ptr %i.w, align 1, !tbaa !368, !range !123, !noundef !118
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = call noundef i32 @_ZN4llvm17LiveIntervalUnion5Query23collectInterferingVRegsEj(ptr noundef nonnull align 8 dereferenceable(172) %i.v, i32 noundef -1) #18 ; 0 uses
  br label %_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit

_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit: ; preds = %bb.b, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94, !noalias !369 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !93, !noalias !369 ; 2 uses
  %.not6065 = icmp eq i32 %i.ad, 0
  br i1 %.not6065, label %.critedge39, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit
  %i.ae = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE9push_backES3_.exit
  %.sroa.045.066 = phi ptr [ %i.ag, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE9push_backES3_.exit ], [ %i.af, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds i8, ptr %.sroa.045.066, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !96 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !146 ; 2 uses
  %i.ak = fcmp une float %i.aj, %i.s
  br i1 %i.ak, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.al = load float, ptr %i.t, align 4, !tbaa !146
  %i.am = fcmp ogt float %i.aj, %i.al
  br i1 %i.am, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.d
  %i.an = load i32, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !104
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !105

bb.e:                                             ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.ah)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %.critedge
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %4, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  store ptr %i.ah, ptr %i.ar, align 1
  %i.as = load i32, ptr %i.b, align 8, !tbaa !93
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.b, align 8, !tbaa !93
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE9push_backES3_.exit: ; preds = %bb.e, %bb.f
  %.not60 = icmp eq ptr %i.ag, %i.ab
  br i1 %.not60, label %.critedge39, label %.lr.ph

.critedge39:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE9push_backES3_.exit, %_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.652.069, i64 2
  %i.av = load i16, ptr %.sroa.652.069, align 2, !tbaa !147 ; 2 uses
  %i.aw = sext i16 %i.av to i32
  %i.ax = add i32 %.sroa.10.068, %i.aw
  %.not.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.critedge39
  %.pre = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %.pre79 = load i32, ptr %i.b, align 8, !tbaa !93 ; 2 uses
  %i.ay = zext i32 %.pre79 to i64
  %.idx76 = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx76
  %.not72 = icmp eq i32 %.pre79, 0
  br i1 %.not72, label %.loopexit, label %.lr.ph75

.lr.ph75:                                         ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 80
  %6 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %5, i64 1
  %8 = getelementptr inbounds nuw i8, <2 x ptr> %7, <2 x i64> <i64 456, i64 104>
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 88
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 92
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph75, %bb.p
  %.03473 = phi ptr [ %.pre, %.lr.ph75 ], [ %i.ef, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr %.03473, align 8, !tbaa !96 ; 3 uses
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %.sroa.0.0.copyload.i = load i32, ptr %i.br, align 8, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bt = and i32 %.sroa.0.0.copyload.i, 2147483647
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !94
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.bw, align 4, !tbaa !107
  %.not59 = icmp eq i32 %.sroa.02.0.copyload.i.i, 0
  br i1 %.not59, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !108
  call void @_ZN4llvm13LiveRegMatrix8unassignERKNS_12LiveIntervalEb(ptr noundef nonnull align 8 dereferenceable(144) %i.bx, ptr noundef nonnull align 8 dereferenceable(120) %i.bp, i1 noundef zeroext false) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !168 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm13LiveRangeEditE, i64 16), ptr %5, align 8, !tbaa !27
  store ptr %i.bp, ptr %i.be, align 8, !tbaa !177
  store ptr %3, ptr %i.bf, align 8, !tbaa !178
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !288
  store ptr %i.ca, ptr %i.bg, align 8, !tbaa !289
  %i.cb = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !31
  %i.cc = shufflevector <2 x ptr> %i.cb, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.cc, ptr %i.bh, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !290, !nonnull !118, !align !291 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(344) %i.ce) #18, !inline_history !4
  store ptr %i.ci, ptr %i.bi, align 8, !tbaa !292
  store ptr %i.bd, ptr %i.bj, align 8, !tbaa !293
  %i.cj = load i32, ptr %i.bl, align 8, !tbaa !93
  store i32 %i.cj, ptr %i.bk, align 8, !tbaa !294
  store <2 x ptr> %8, ptr %i.bm, align 8, !tbaa !31
  store i32 4, ptr %i.bo, align 8, !tbaa !114
  store i32 0, ptr %9, align 4, !tbaa !115
  store i8 1, ptr %10, align 8, !tbaa !116
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !295, !nonnull !118, !align !291 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !116, !range !123, !noalias !370, !noundef !118
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !113, !noalias !370 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !115, !noalias !370 ; 4 uses
  %i.cs = zext i32 %i.cr to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cs, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.cv, %.critedge.i.i.i.i ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cu = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !31, !noalias !370
  %.not15.i.i.i.i = icmp eq ptr %i.cu, %5
  br i1 %.not15.i.i.i.i, label %_ZN4llvm13LiveRangeEditC2EPKNS_12LiveIntervalERNS_15SmallVectorImplINS_8RegisterEEERNS_15MachineFunctionERNS_13LiveIntervalsEPNS_10VirtRegMapEPNS0_8DelegateEPNS_11SmallPtrSetIPNS_12MachineInstrELj32EEE.exit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, %i.ct
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !114, !noalias !370
  %i.cy = icmp ult i32 %i.cr, %i.cx
  br i1 %i.cy, label %bb.j, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cz = add nuw i32 %i.cr, 1
  store i32 %i.cz, ptr %i.cq, align 4, !tbaa !115, !noalias !370
  store ptr %5, ptr %i.ct, align 8, !tbaa !31, !noalias !370
  br label %_ZN4llvm13LiveRangeEditC2EPKNS_12LiveIntervalERNS_15SmallVectorImplINS_8RegisterEEERNS_15MachineFunctionERNS_13LiveIntervalsEPNS_10VirtRegMapEPNS0_8DelegateEPNS_11SmallPtrSetIPNS_12MachineInstrELj32EEE.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.h
  %i.da = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.cl, ptr noundef nonnull align 8 dereferenceable(136) %5) #18, !noalias !370 ; 0 uses
  br label %_ZN4llvm13LiveRangeEditC2EPKNS_12LiveIntervalERNS_15SmallVectorImplINS_8RegisterEEERNS_15MachineFunctionERNS_13LiveIntervalsEPNS_10VirtRegMapEPNS0_8DelegateEPNS_11SmallPtrSetIPNS_12MachineInstrELj32EEE.exit

_ZN4llvm13LiveRangeEditC2EPKNS_12LiveIntervalERNS_15SmallVectorImplINS_8RegisterEEERNS_15MachineFunctionERNS_13LiveIntervalsEPNS_10VirtRegMapEPNS0_8DelegateEPNS_11SmallPtrSetIPNS_12MachineInstrELj32EEE.exit: ; preds = %.lr.ph.i.i.i.i, %bb.j, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i
  %i.db = load ptr, ptr %0, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(936) %0) #18 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef null) #18
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm13LiveRangeEditE, i64 16), ptr %5, align 8, !tbaa !27
  %i.di = load ptr, ptr %i.bg, align 8, !tbaa !295, !nonnull !118, !align !291 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !116, !range !123, !noundef !118
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN4llvm13LiveRangeEditC2EPKNS_12LiveIntervalERNS_15SmallVectorImplINS_8RegisterEEERNS_15MachineFunctionERNS_13LiveIntervalsEPNS_10VirtRegMapEPNS0_8DelegateEPNS_11SmallPtrSetIPNS_12MachineInstrELj32EEE.exit
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !113 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 20 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !115 ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %.idx.i.i.i.i42 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx.i.i.i.i42
  %.not1923.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not1923.i.i.i.i, label %_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i, label %.lr.ph.i.i.i.i43

.lr.ph.i.i.i.i43:                                 ; preds = %bb.k, %.critedge.i.i.i.i44
  %.01524.i.i.i.i = phi ptr [ %i.dt, %.critedge.i.i.i.i44 ], [ %i.dn, %bb.k ] ; 3 uses
  %i.ds = load ptr, ptr %.01524.i.i.i.i, align 8, !tbaa !31
  %.not20.i.i.i.i = icmp eq ptr %i.ds, %5
  br i1 %.not20.i.i.i.i, label %bb.l, label %.critedge.i.i.i.i44

.critedge.i.i.i.i44:                              ; preds = %.lr.ph.i.i.i.i43
  %i.dt = getelementptr inbounds nuw i8, ptr %.01524.i.i.i.i, i64 8 ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %i.dt, %i.dr
  br i1 %.not19.i.i.i.i, label %_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i, label %.lr.ph.i.i.i.i43

bb.l:                                             ; preds = %.lr.ph.i.i.i.i43
  %i.du = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.du, ptr %i.do, align 4, !tbaa !115
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31
  store ptr %i.dx, ptr %.01524.i.i.i.i, align 8, !tbaa !31
  br label %_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i

bb.m:                                             ; preds = %_ZN4llvm13LiveRangeEditC2EPKNS_12LiveIntervalERNS_15SmallVectorImplINS_8RegisterEEERNS_15MachineFunctionERNS_13LiveIntervalsEPNS_10VirtRegMapEPNS0_8DelegateEPNS_11SmallPtrSetIPNS_12MachineInstrELj32EEE.exit
  %i.dy = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.dj, ptr noundef nonnull align 8 dereferenceable(136) %5) #18 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.not.i.i.i.i, label %_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.dj, ptr noundef nonnull %i.dy) #18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 20 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !115
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !115
  br label %_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i

_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i: ; preds = %.critedge.i.i.i.i44, %bb.n, %bb.m, %bb.l, %bb.k
  %i.ec = load i8, ptr %10, align 8, !tbaa !116, !range !123, !noundef !118
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN4llvm13LiveRangeEditD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i
  %i.ee = load ptr, ptr %i.bn, align 8, !tbaa !113
  call void @free(ptr noundef %i.ee) #18
  br label %_ZN4llvm13LiveRangeEditD2Ev.exit

_ZN4llvm13LiveRangeEditD2Ev.exit:                 ; preds = %_ZN4llvm19MachineRegisterInfo13resetDelegateEPNS0_8DelegateE.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN4llvm13LiveRangeEditD2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %.03473, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ef, %i.az
  br i1 %.not, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %bb.p, %bb.a, %._crit_edge
  %.not5864 = phi i1 [ true, %._crit_edge ], [ true, %bb.p ], [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.d ]
  %i.eg = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.a
  br i1 %i.eh, label %_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.eg) #18
  br label %_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj8EED2Ev.exit: ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i1 %.not5864
}

declare noundef nonnull align 8 dereferenceable(172) ptr @_ZN4llvm13LiveRegMatrix5queryERKNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN4llvm7RABasic13selectOrSplitERKNS_12LiveIntervalERNS_15SmallVectorImplINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.249", align 8 ; 10 uses
  %4 = alloca %"class.llvm::AllocationOrder", align 8 ; 10 uses
  %5 = alloca %"class.llvm::LiveRangeEdit", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108
  call void @_ZN4llvm15AllocationOrder6createENS_8RegisterERKNS_10VirtRegMapERKNS_17RegisterClassInfoEPKNS_13LiveRegMatrixE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::AllocationOrder") align 8 %4, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(320) %i.g, ptr noundef %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !375
  %i.l = trunc i64 %i.k to i32
  %i.m = sub nsw i32 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !378  ; 2 uses
  %.not4973 = icmp eq i32 %i.o, %i.m
  br i1 %.not4973, label %.critedge, label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit.lr.ph

_ZNK4llvm15AllocationOrder8IteratordeEv.exit.lr.ph: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  br label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit

_ZNK4llvm15AllocationOrder8IteratordeEv.exit:     ; preds = %_ZNK4llvm15AllocationOrder8IteratordeEv.exit.lr.ph, %_ZN4llvm15AllocationOrder8IteratorppEv.exit
  %.sroa.643.074 = phi i32 [ %i.m, %_ZNK4llvm15AllocationOrder8IteratordeEv.exit.lr.ph ], [ %.sroa.643.3, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ] ; 5 uses
  %i.q = icmp slt i32 %.sroa.643.074, 0
  %i.r = load ptr, ptr %4, align 8
  %i.s = load i64, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = sext i32 %.sroa.643.074 to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  %i.w = zext nneg i32 %.sroa.643.074 to i64
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.w
  %.sroa.0.0.in.in.i = select i1 %i.q, ptr %i.v, ptr %i.y
  %.sroa.0.0.in.i = load i16, ptr %.sroa.0.0.in.in.i, align 2, !tbaa !147
  %.sroa.0.0.i = zext i16 %.sroa.0.0.in.i to i32  ; 4 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.aa = call noundef i32 @_ZN4llvm13LiveRegMatrix17checkInterferenceERKNS_12LiveIntervalENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 %.sroa.0.0.i) #18
  switch i32 %i.aa, label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit [
    i32 0, label %.loopexit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNK4llvm15AllocationOrder8IteratordeEv.exit
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !104
  %.not.i = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !105

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %.sroa.0.0.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %3, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  store i32 %.sroa.0.0.i, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !93
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.b, align 8, !tbaa !93
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit: ; preds = %bb.d, %bb.c, %_ZNK4llvm15AllocationOrder8IteratordeEv.exit
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !378 ; 5 uses
  %i.aj = icmp slt i32 %.sroa.643.074, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %spec.select = add nsw i32 %.sroa.643.074, %i.ak ; 8 uses
  %i.al = icmp sgt i32 %spec.select, -1
  %i.am = icmp slt i32 %spec.select, %i.ai
  %or.cond13.i = and i1 %i.al, %i.am
  br i1 %or.cond13.i, label %.lr.ph.i, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE9push_backES1_.exit
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !379 ; 3 uses
  %i.ao = zext nneg i32 %spec.select to i64       ; 3 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !147 ; 3 uses
  %.not.i3760 = icmp eq i16 %i.aq, 0
  br i1 %.not.i3760, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !296   ; 8 uses
  %i.as = load i64, ptr %i.j, align 8, !tbaa !375 ; 4 uses
  %.idx4.i.i.i = shl nuw nsw i64 %i.as, 1         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx4.i.i.i ; 2 uses
  %i.au = lshr i64 %i.as, 2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.au, 0
  %i.av = and i64 %.idx4.i.i.i, 9223372036854775800
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ar, i64 %i.av ; 5 uses
  %i.aw = and i64 %i.as, 3
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  br label %._crit_edge.i.i.i.i.i.i.us

._crit_edge.i.i.i.i.i.i.us:                       ; preds = %bb.e, %.lr.ph.split.us
  %i.ay = phi i16 [ %i.aq, %.lr.ph.split.us ], [ %i.ba, %bb.e ] ; 3 uses
  %indvars.iv.i63.us = phi i64 [ %i.ao, %.lr.ph.split.us ], [ %indvars.iv.next.i.us, %bb.e ]
  %.sroa.643.261.us = phi i32 [ %spec.select, %.lr.ph.split.us ], [ %i.bi, %bb.e ] ; 2 uses
  switch i64 %i.as, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit [
    i64 3, label %bb.f
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.us
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.us
  ]

bb.e:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next.i.us
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !147 ; 2 uses
  %.not.i37.us = icmp eq i16 %i.ba, 0
  br i1 %.not.i37.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %._crit_edge.i.i.i.i.i.i.us, !llvm.loop !371

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.us
  %i.bb = load i16, ptr %i.ar, align 2, !tbaa !147
  %i.bc = icmp eq i16 %i.ay, %i.bb
  br i1 %i.bc, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us, label %._crit_edge._crit_edge.i.i.i.i.i.i.us

._crit_edge._crit_edge.i.i.i.i.i.i.us:            ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i.us
  %.1.i.i.i.i.i.i.us = phi ptr [ %i.ar, %._crit_edge.i.i.i.i.i.i.us ], [ %i.ax, %bb.f ] ; 3 uses
  %i.bd = load i16, ptr %.1.i.i.i.i.i.i.us, align 2, !tbaa !147
  %i.be = icmp eq i16 %i.ay, %i.bd
  br i1 %i.be, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.us, i64 2
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.us

._crit_edge._crit_edge52.i.i.i.i.i.i.us:          ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.us
  %.2.i.i.i.i.i.i.us = phi ptr [ %i.bf, %bb.g ], [ %i.ar, %._crit_edge.i.i.i.i.i.i.us ] ; 2 uses
  %i.bg = load i16, ptr %.2.i.i.i.i.i.i.us, align 2, !tbaa !147
  %i.bh = icmp eq i16 %i.ay, %i.bg
  br i1 %i.bh, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us: ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.us, %._crit_edge._crit_edge.i.i.i.i.i.i.us, %bb.f
  %.028.i.i.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.i.i.us, %._crit_edge._crit_edge.i.i.i.i.i.i.us ], [ %i.ar, %bb.f ], [ %.2.i.i.i.i.i.i.us, %._crit_edge._crit_edge52.i.i.i.i.i.i.us ]
  %.not4.i.us = icmp eq ptr %.028.i.i.i.i.i.i.us, %i.at
  br i1 %.not4.i.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i63.us, 1 ; 3 uses
  %i.bi = trunc nuw i64 %indvars.iv.next.i.us to i32 ; 3 uses
  %i.bj = icmp sgt i32 %i.ai, %i.bi
  br i1 %i.bj, label %bb.e, label %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge, !llvm.loop !371

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i, i64 2
  br label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !147 ; 2 uses
  %.not.i37 = icmp eq i16 %i.bm, 0
end_hunk_0
