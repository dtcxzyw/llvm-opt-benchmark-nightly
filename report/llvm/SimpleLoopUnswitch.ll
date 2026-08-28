Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimpleLoopUnswitch?download=true
inline.NumInlined: 9189
inline.NumDeleted: 4425
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4llvm13TinyPtrVectorIPNS_5ValueEEaSEOS3_:bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i, 4
  %.not.i.i18 = icmp eq i64 %i.n, 0
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i, -5    ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %.not32 = icmp eq i64 %i.o, 0
  %.not = or i1 %.not.i.i18, %.not32
  br i1 %.not, label %bb.o, label %bb.g

.thread:                                          ; preds = %_ZNK4llvm13TinyPtrVectorIPNS_5ValueEE5emptyEv.exit
  %.sroa.0.0.copyload.i.i.i21 = load i64, ptr %0, align 8 ; 2 uses
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i21, 4
  %.not.i.i1822 = icmp eq i64 %i.q, 0
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i21, -5  ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %.not2431 = icmp eq i64 %i.r, 0
  %.not24 = or i1 %.not.i.i1822, %.not2431
  br i1 %.not24, label %bb.o, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !35
  %.0.copyload.i.i.i.i.i.i19 = load i64, ptr %1, align 8 ; 3 uses
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i19, 4
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = inttoptr i64 %.0.copyload.i.i.i.i.i.i19 to ptr
  br label %_ZNK4llvm13TinyPtrVectorIPNS_5ValueEE5frontEv.exit

bb.i:                                             ; preds = %bb.g
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i19, -5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !305
  br label %_ZNK4llvm13TinyPtrVectorIPNS_5ValueEE5frontEv.exit

_ZNK4llvm13TinyPtrVectorIPNS_5ValueEE5frontEv.exit: ; preds = %bb.h, %bb.i
  %.0.i20 = phi ptr [ %i.w, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !60
  %.not.i.not = icmp eq i32 %i.ac, 0
  br i1 %.not.i.not, label %bb.j, label %bb.k, !prof !413

bb.j:                                             ; preds = %_ZNK4llvm13TinyPtrVectorIPNS_5ValueEE5frontEv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef %.0.i20)
  br label %bb.n

bb.k:                                             ; preds = %_ZNK4llvm13TinyPtrVectorIPNS_5ValueEE5frontEv.exit
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !21
  store ptr %.0.i20, ptr %i.ad, align 1
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !35
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !35
  br label %bb.n

bb.l:                                             ; preds = %.thread
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %i.ag) #24
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit:  ; preds = %bb.l, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 48) #27
  %.pre = load i64, ptr %1, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  store i64 0, ptr %1, align 8
  br label %_ZN4llvm13TinyPtrVectorIPNS_5ValueEE5clearEv.exit

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, %bb.f, %.thread
  %i.aj = phi i64 [ %.pre, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit ], [ %.0.copyload.i.i.i.i.i.i, %bb.f ], [ %.0.copyload.i.i.i.i.i.i, %.thread ]
  store i64 %i.aj, ptr %0, align 8
  store i64 0, ptr %1, align 8
  br label %_ZN4llvm13TinyPtrVectorIPNS_5ValueEE5clearEv.exit

_ZN4llvm13TinyPtrVectorIPNS_5ValueEE5clearEv.exit: ; preds = %bb.n, %bb.e, %bb.d, %bb.a, %bb.o
  ret ptr %0
}

declare noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE23getUniqueLatchExitBlockEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

declare void @_ZN4llvm15ScalarEvolution30forgetBlockAndLoopDispositionsEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction10moveBeforeERNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ES1_EELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(80), ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm11Instruction5cloneEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare { ptr, i64 } @_ZN4llvm11Instruction10insertIntoEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ES1_EELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL37buildPartialUnswitchConditionalBranchRN4llvm10BasicBlockENS_8ArrayRefIPNS_5ValueEEEbS1_S1_bPKNS_11InstructionEPNS_15AssumptionCacheERKNS_13DominatorTreeERKNS_10CondBrInstE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree readonly captures(address) %1, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(204) %9, ptr noundef nonnull align 8 dereferenceable(72) %10) unnamed_addr #3 {
bb.a:
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvm::SmallVector.36", align 8 ; 9 uses
  %18 = alloca %"class.llvm::IRBuilder", align 8  ; 21 uses
  %19 = alloca %"class.llvm::SmallVector.437", align 8 ; 12 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.a = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.a, ptr %17, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 12, ptr %i.c, align 4, !tbaa !60
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL15EstimateProfileE, i64 120), align 8, !tbaa !318, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  %.not51 = xor i1 %i.e, true
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29ProfcheckDisableMetadataFixesE, i64 120), align 8, !range !18
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not51, i1 true, i1 %i.g
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN4llvm20extractBranchWeightsERKNS_11InstructionERNS_15SmallVectorImplIjEE(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(16) %17) #24
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %not. = xor i1 %3, true
  %i.i = zext i1 %not. to i64
  %i.j = load ptr, ptr %17, align 8, !tbaa !21    ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !74
  %i.m = uitofp i32 %i.l to double
  %i.n = load i32, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i = shl nuw nsw i64 %i.o, 2             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %.not6.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i.i.i, label %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.q = add nsw i64 %.idx.i.i, -4                ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.j, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !74
  %wide.load79 = load <4 x i32>, ptr %i.w, align 4, !tbaa !74
  %i.x = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.y = add <4 x i32> %wide.load79, %vec.phi78   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !818

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.y, %i.x
  %i.aa = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit.loopexit, label %.lr.ph.i.i.i.preheader82

.lr.ph.i.i.i.preheader82:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.08.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.057.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader82, %.lr.ph.i.i.i
  %.08.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader82 ]
  %.057.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader82 ] ; 2 uses
  %i.ab = load i32, ptr %.057.i.i.i, align 4, !tbaa !74
  %i.ac = add i32 %i.ab, %.08.i.i.i               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.p
  br i1 %.not.i.i.i, label %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !819

_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa = phi i32 [ %i.aa, %middle.block ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ae = uitofp i32 %.lcssa to double
  br label %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit

_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit: ; preds = %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit.loopexit, %bb.c
  %.0.lcssa.i.i.i = phi double [ 0.000000e+00, %bb.c ], [ %i.ae, %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit.loopexit ]
  %i.af = fdiv double %i.m, %.0.lcssa.i.i.i
  %21 = fcmp ogt double %i.af, 5.000000e-01
  br i1 %21, label %22, label %.thread

22:                                               ; preds = %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit
  br label %.thread

.thread:                                          ; preds = %bb.a, %22, %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit, %bb.b
  %.0.shrunk = phi i1 [ false, %22 ], [ true, %_ZN4llvm6sum_ofIRNS_11SmallVectorIjLj12EEEjEEDaOT_T0_.exit ], [ false, %bb.b ], [ false, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !497
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !498
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 5 uses
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !500
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 56
  store ptr null, ptr %i.am, align 8, !tbaa !502
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i32 0, ptr %i.an, align 8, !tbaa !511
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 68
  store i8 0, ptr %i.ao, align 4, !tbaa !512
  %i.ap = getelementptr inbounds nuw i8, ptr %18, i64 69
  store i8 2, ptr %i.ap, align 1, !tbaa !513
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 70
  store i8 7, ptr %i.aq, align 2, !tbaa !514
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.ah, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.ai, align 8, !tbaa !8
  store ptr %0, ptr %i.as, align 8, !tbaa !515
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.at, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 5 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  store i64 0, ptr %18, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.av, ptr %19, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 8 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 3 uses
  store i32 6, ptr %i.ax, align 4, !tbaa !60
  %.idx = shl nuw nsw i64 %2, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not54 = icmp eq i64 %2, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 33
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 32
  br i1 %6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.us
  %.03055.us = phi ptr [ %i.bv, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.be = load ptr, ptr %.03055.us, align 8, !tbaa !305 ; 4 uses
  %i.bf = call noundef zeroext i1 @_ZN4llvm32isGuaranteedNotToBeUndefOrPoisonEPKNS_5ValueEPNS_15AssumptionCacheEPKNS_11InstructionEPKNS_13DominatorTreeEj(ptr noundef %i.be, ptr noundef %8, ptr noundef %7, ptr noundef nonnull %9, i32 noundef 0) #24
  br i1 %i.bf, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.bg = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #24 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  store i8 5, ptr %i.az, align 8, !tbaa !516, !alias.scope !820
  store i8 3, ptr %i.ba, align 1, !tbaa !522, !alias.scope !820
  store ptr %i.bh, ptr %20, align 8, !tbaa !299, !alias.scope !820
  store i64 %i.bi, ptr %i.bb, align 8, !tbaa !299, !alias.scope !820
  store ptr @.str.47, ptr %i.bc, align 8, !tbaa !299, !alias.scope !820
  %i.bj = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store i16 257, ptr %i.bd, align 8
  call void @_ZN4llvm10FreezeInstC1EPNS_5ValueERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull %i.be, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr null, i64 0) #24
  %i.bk = load ptr, ptr %i.al, align 8, !tbaa !525, !nonnull !19, !align !34 ; 2 uses
  %.sroa.0.0.copyload.i.i.us = load ptr, ptr %i.au, align 8
  %.sroa.2.0.copyload.i.i.us = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull %i.bj, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr %.sroa.0.0.copyload.i.i.us, i64 %.sroa.2.0.copyload.i.i.us) #24, !inline_history !823
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %18, ptr noundef nonnull %i.bj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %.029.us = phi ptr [ %i.be, %.lr.ph.split.us ], [ %i.bj, %bb.d ] ; 2 uses
  %i.bo = load i32, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.bp = load i32, ptr %i.ax, align 4, !tbaa !60
  %.not.i.us = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i.us, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %.029.us)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.us

bb.g:                                             ; preds = %bb.e
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %19, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %.029.us, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.aw, align 8, !tbaa !35
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.aw, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.us

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.us: ; preds = %bb.g, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %.03055.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.bv, %i.ay
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.us, %.thread
  %i.bw = load ptr, ptr %19, align 8, !tbaa !21   ; 3 uses
  %i.bx = load i32, ptr %i.aw, align 8, !tbaa !35 ; 3 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !305 ; 4 uses
  %i.bz = icmp ugt i32 %i.bx, 1                   ; 2 uses
  br i1 %3, label %bb.j, label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %.03055 = phi ptr [ %i.ci, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.ca = load ptr, ptr %.03055, align 8, !tbaa !305 ; 2 uses
  %i.cb = load i32, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.cc = load i32, ptr %i.ax, align 4, !tbaa !60
  %.not.i = icmp ult i32 %i.cb, %i.cc
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !61

bb.h:                                             ; preds = %.lr.ph.split
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %i.ca)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

bb.i:                                             ; preds = %.lr.ph.split
  %i.cd = zext i32 %i.cb to i64
  %i.ce = load ptr, ptr %19, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  store ptr %i.ca, ptr %i.cf, align 1
  %i.cg = load i32, ptr %i.aw, align 8, !tbaa !35
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.aw, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit: ; preds = %bb.h, %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.03055, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ci, %i.ay
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

bb.j:                                             ; preds = %._crit_edge
  br i1 %i.bz, label %.lr.ph.i, label %_ZN4llvm13IRBuilderBase8CreateOrENS_8ArrayRefIPNS_5ValueEEE.exit

.lr.ph.i:                                         ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 32
  %wide.trip.count62 = zext i32 %i.bx to i64
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i, %.lr.ph.i
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i ], [ 1, %.lr.ph.i ] ; 2 uses
  %.058.i = phi ptr [ %.1.i.i, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i ], [ %i.by, %.lr.ph.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv59
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !305 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i16 257, ptr %i.cj, align 8
  %i.cn = load ptr, ptr %i.ak, align 8, !tbaa !523, !nonnull !19, !align !34 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 noundef 30, ptr noundef %.058.i, ptr noundef %i.cm) #24, !inline_history !824 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.not.i.i, label %bb.l, label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store i16 257, ptr %i.ck, align 8
  %i.cs = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 30, ptr noundef %.058.i, ptr noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr null, i64 0) #24 ; 3 uses
  %i.ct = load ptr, ptr %i.al, align 8, !tbaa !525, !nonnull !19, !align !34 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.au, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #24, !inline_history !825
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %18, ptr noundef %i.cs) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i: ; preds = %bb.l, %bb.k
  %.1.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cr, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %_ZN4llvm13IRBuilderBase8CreateOrENS_8ArrayRefIPNS_5ValueEEE.exit, label %bb.k, !llvm.loop !826

bb.m:                                             ; preds = %._crit_edge
  br i1 %i.bz, label %.lr.ph.i32, label %_ZN4llvm13IRBuilderBase8CreateOrENS_8ArrayRefIPNS_5ValueEEE.exit

.lr.ph.i32:                                       ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 32
  %wide.trip.count = zext i32 %i.bx to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit.i, %.lr.ph.i32
end_hunk_0
