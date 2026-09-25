Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Lowering?download=true
inline.NumInlined: 1539
inline.NumDeleted: 776
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes16LowerStoreInstrs13runOnFunctionEPNS_8FunctionE:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !248, !noalias !250
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 16, ptr %i.m, align 4, !tbaa !19
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 8 uses
  %i.r = icmp ugt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.k, i64 noundef %i.q, i64 noundef 8) #12
  %.pre9.i.i = load i32, ptr %i.l, align 8, !tbaa !18
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre = phi ptr [ %.pre.pre, %bb.b ], [ %i.k, %bb.a ] ; 4 uses
  %i.s = phi i32 [ %.pre9.i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.c
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.u ; 2 uses
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %.06.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %.045.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113
  store ptr %i.y, ptr %.045.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aa = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !245

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ab = icmp ult i64 %i.q, 8
  br i1 %i.ab, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ac = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113
  store ptr %i.ae, ptr %.045.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !113
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !113
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !113
  store ptr %i.an, ptr %i.al, align 8, !tbaa !113
  %i.ao = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 -40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !113
  %i.ar = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.as = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !113
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !113
  %i.au = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !113
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !113
  %i.ax = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.ay = getelementptr inbounds i8, ptr %i.ac, i64 -64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !113
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !113
  %i.ba = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.bb = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -8
  %i.bc = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit, !llvm.loop !246

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.bd = trunc i64 %i.q to i32
  %i.be = add i32 %i.s, %i.bd                     ; 3 uses
  store i32 %i.be, ptr %i.l, align 8, !tbaa !18
  %i.bf = zext i32 %i.be to i64
  %.idx = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not40 = icmp eq i32 %i.be, 0
  br i1 %.not40, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.g

._crit_edge44.loopexit:                           ; preds = %._crit_edge
  %.pre46 = load ptr, ptr %5, align 8, !tbaa !17
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge44.loopexit, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit
  %i.bi = phi ptr [ %.pre, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit ], [ %.pre46, %._crit_edge44.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ false, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit ], [ %.1.lcssa, %._crit_edge44.loopexit ]
  %i.bj = icmp eq ptr %i.bi, %i.k
  br i1 %i.bj, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge44
  call void @free(ptr noundef %i.bi) #12
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit: ; preds = %._crit_edge44, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !252 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes17PostOrderAnalysisD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !253
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #14
  br label %_ZN6hermes17PostOrderAnalysisD2Ev.exit

_ZN6hermes17PostOrderAnalysisD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bq = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %i.br = load i32, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.idx.i = shl nuw nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.br, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN6hermes17PostOrderAnalysisD2Ev.exit
  %i.bu = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.bq, %_ZN6hermes17PostOrderAnalysisD2Ev.exit ] ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.d
  br i1 %i.bv, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.bu) #12
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit

.lr.ph.i:                                         ; preds = %_ZN6hermes17PostOrderAnalysisD2Ev.exit, %.lr.ph.i
  %.09.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.bq, %_ZN6hermes17PostOrderAnalysisD2Ev.exit ] ; 2 uses
  %i.bw = load ptr, ptr %.09.i, align 8, !tbaa !153
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bw) #12
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, %i.bt
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit: ; preds = %._crit_edge.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.0.lcssa

bb.g:                                             ; preds = %.lr.ph43, %._crit_edge
  %.042 = phi i1 [ false, %.lr.ph43 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.02541 = phi ptr [ %.pre, %.lr.ph43 ], [ %i.cb, %._crit_edge ] ; 2 uses
  %i.by = load ptr, ptr %.02541, align 8, !tbaa !113 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %.sroa.029.036 = load ptr, ptr %i.ca, align 8, !tbaa !22 ; 2 uses
  %.not3437 = icmp eq ptr %.sroa.029.036, %i.bz
  br i1 %.not3437, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.1.lcssa = phi i1 [ %.042, %bb.g ], [ %.2, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02541, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cb, %i.bg
  br i1 %.not, label %._crit_edge44.loopexit, label %bb.g

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.sroa.029.039 = phi ptr [ %.sroa.029.0, %bb.j ], [ %.sroa.029.036, %bb.g ] ; 7 uses
  %.138 = phi i1 [ %.2, %bb.j ], [ %.042, %bb.g ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 16 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !32
  %i.ce = icmp ne i8 %i.cd, 50
  %.not2835 = icmp eq ptr %.sroa.029.039, null
  %.not28 = or i1 %.not2835, %i.ce
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cf = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.029.039, i32 noundef 1) #12
  %i.cg = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.029.039, i32 noundef 0) #12
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.sroa.029.039) #12
  %i.ch = load ptr, ptr %i.bh, align 8, !tbaa !256, !nonnull !124, !align !131
  %i.ci = call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ch, ptr noundef %i.cf) #12
  %i.cj = call noundef ptr @_ZN6hermes9IRBuilder13createMovInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.cg) #12 ; 2 uses
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !256, !nonnull !124, !align !131
  %i.cl = icmp eq ptr %i.cj, null
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = select i1 %i.cl, ptr null, ptr %i.cm    ; 2 uses
  call void @_ZN6hermes17RegisterAllocator14updateRegisterEPNS_5ValueENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1952) %i.ck, ptr noundef %i.cn, i32 %i.ci) #12
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef %i.cn) #12
  %i.co = load i32, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.cp = load i32, ptr %i.f, align 4, !tbaa !19
  %.not.i.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit, label %bb.i, !prof !33

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.d, i64 noundef 0, i64 noundef 8) #12
  %.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !18
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit: ; preds = %bb.h, %bb.i
  %i.cq = phi i32 [ %.pre.i.i, %bb.i ], [ %i.co, %bb.h ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !17
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = ptrtoint ptr %.sroa.029.039 to i64
  store i64 %i.cu, ptr %i.ct, align 1
  %i.cv = load i32, ptr %i.e, align 8, !tbaa !18
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit
  %.2 = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit ], [ %.138, %.lr.ph ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 8
  %.sroa.029.0 = load ptr, ptr %i.cx, align 8, !tbaa !22 ; 2 uses
  %.not34 = icmp eq ptr %.sroa.029.0, %i.bz
  br i1 %.not34, label %._crit_edge, label %.lr.ph
}

declare void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder13createMovInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes17RegisterAllocator14updateRegisterEPNS_5ValueENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1952), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(132) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %2, i32 noundef %3) #12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32
  %.not = icmp eq i8 %i.b, 116
  br i1 %.not, label %bb.b, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !158 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !159 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !160 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %i.e = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.e, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !161
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %.split.i.i, label %.preheader.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.2.0.copyload, 1
  br i1 %i.h, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

.preheader.i.i:                                   ; preds = %bb.c, %bb.e
  %.0.i.i = phi i64 [ %.fr.i.i, %bb.e ], [ 0, %bb.c ]
  %.016.i.i = phi ptr [ %i.p, %bb.e ], [ %.sroa.0.0.copyload, %bb.c ] ; 2 uses
  %i.i = load i8, ptr %.016.i.i, align 1, !tbaa !161 ; 2 uses
  %i.j = add i8 %i.i, -58
  %or.cond.i.i = icmp ult i8 %i.j, -10
  br i1 %or.cond.i.i, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.k = zext nneg i8 %i.i to i64
  %i.l = mul nuw nsw i64 %.0.i.i, 10
  %i.m = add nsw i64 %i.l, -48
  %i.n = add nsw i64 %i.m, %i.k
  %.fr.i.i = freeze i64 %i.n                      ; 4 uses
  %i.o = icmp samesign ult i64 %.fr.i.i, 4294967296
  br i1 %i.o, label %bb.e, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !6

.critedge.i.i:                                    ; preds = %bb.e
  %.not42.i.i = icmp eq i64 %.fr.i.i, 4294967295
  br i1 %.not42.i.i, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit:  ; preds = %.critedge.i.i
  %extract.t = trunc nuw i64 %.fr.i.i to i32
  %i.q = uitofp i32 %extract.t to double
  br label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12: ; preds = %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit, %.split.i.i
  %.off0 = phi double [ %i.q, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit ], [ 0.000000e+00, %.split.i.i ]
  %i.r = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %1, double noundef %.off0) #12
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %2, ptr noundef %i.r, i32 noundef %3) #12
  br label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread: ; preds = %.preheader.i.i, %bb.d, %bb.b, %.split.i.i, %.critedge.i.i, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12 ], [ false, %bb.b ], [ false, %.critedge.i.i ], [ false, %.split.i.i ], [ false, %bb.d ], [ false, %.preheader.i.i ]
  ret i1 %.1
}

declare void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes22LowerNumericProperties13runOnFunctionEPNS_8FunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 5 uses
  %3 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  store ptr %i.b, ptr %2, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.g, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.0112.0126 = load ptr, ptr %i.h, align 8, !tbaa !22 ; 2 uses
  %.not127 = icmp eq ptr %.sroa.0112.0126, %i.i
  br i1 %.not127, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit, label %.lr.ph131

._crit_edge132:                                   ; preds = %._crit_edge
  %.pre = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %.pre134 = load i32, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.j = zext i32 %.pre134 to i64
  %.idx.i = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i
  %.not8.i = icmp eq i32 %.pre134, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge132
  %i.l = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %.pre, %._crit_edge132 ] ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.l) #12
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit

.lr.ph.i:                                         ; preds = %._crit_edge132, %.lr.ph.i
  %.09.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.pre, %._crit_edge132 ] ; 2 uses
  %i.n = load ptr, ptr %.09.i, align 8, !tbaa !153
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.n) #12
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.k
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.0.lcssa145147 = phi i1 [ %.1.lcssa, %bb.b ], [ %.1.lcssa, %._crit_edge.i ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.0.lcssa145147

.lr.ph131:                                        ; preds = %bb.a, %._crit_edge
  %.sroa.0112.0129 = phi ptr [ %.sroa.0112.0, %._crit_edge ], [ %.sroa.0112.0126, %bb.a ] ; 3 uses
  %.0128 = phi i1 [ %.1.lcssa, %._crit_edge ], [ false, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0112.0129, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0112.0129, i64 56 ; 2 uses
  %.sroa.0108.0116 = load ptr, ptr %i.p, align 8, !tbaa !22 ; 2 uses
  %.not115117 = icmp eq ptr %.sroa.0108.0116, %i.q
  br i1 %.not115117, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, %.lr.ph131
  %.1.lcssa = phi i1 [ %.0128, %.lr.ph131 ], [ %.2, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0112.0129, i64 8
  %.sroa.0112.0 = load ptr, ptr %i.r, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %.sroa.0112.0, %i.i
  br i1 %.not, label %._crit_edge132, label %.lr.ph131

.lr.ph:                                           ; preds = %.lr.ph131, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit
end_hunk_0
