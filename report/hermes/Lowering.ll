inline.NumInlined: 1539
inline.NumDeleted: 776
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6hermes16LowerStoreInstrs13runOnFunctionEPNS_8FunctionE:bb.a
_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.bd = trunc i64 %i.q to i32
  %i.be = add i32 %i.s, %i.bd                     ; 3 uses
  store i32 %i.be, ptr %i.l, align 8, !tbaa !10
  %i.bf = zext i32 %i.be to i64
  %.idx = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not40 = icmp eq i32 %i.be, 0
  br i1 %.not40, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.g

._crit_edge44.loopexit:                           ; preds = %._crit_edge
  %.pre46 = load ptr, ptr %5, align 8, !tbaa !7
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
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes17PostOrderAnalysisD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !227
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #14
  br label %_ZN6hermes17PostOrderAnalysisD2Ev.exit

_ZN6hermes17PostOrderAnalysisD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bq = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %i.br = load i32, ptr %i.e, align 8, !tbaa !10  ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.idx.i = shl nuw nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.br, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !7
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
  %i.bw = load ptr, ptr %.09.i, align 8, !tbaa !228
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
  %i.by = load ptr, ptr %.02541, align 8, !tbaa !129 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %.sroa.029.036 = load ptr, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
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
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !15
  %i.ce = icmp ne i8 %i.cd, 50
  %.not2835 = icmp eq ptr %.sroa.029.039, null
  %.not28 = or i1 %.not2835, %i.ce
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cf = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.029.039, i32 noundef 1) #12 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null                 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.ci = select i1 %i.cg, ptr null, ptr %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %spec.select = select i1 %i.cg, ptr null, ptr %i.cj
  %i.ck = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.029.039, i32 noundef 0) #12
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.sroa.029.039) #12
  %i.cl = load ptr, ptr %i.bh, align 8, !tbaa !230, !nonnull !143, !align !158
  %i.cm = call i32 @_ZN6hermes17RegisterAllocator11getRegisterEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1952) %i.cl, ptr noundef %spec.select) #12
  %i.cn = call noundef ptr @_ZN6hermes9IRBuilder13createMovInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ck) #12 ; 2 uses
  %i.co = load ptr, ptr %i.bh, align 8, !tbaa !230, !nonnull !143, !align !158
  %i.cp = icmp eq ptr %i.cn, null
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = select i1 %i.cp, ptr null, ptr %i.cq    ; 2 uses
  call void @_ZN6hermes17RegisterAllocator14updateRegisterEPNS_5ValueENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1952) %i.co, ptr noundef %i.cr, i32 %i.cm) #12
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef %i.cr) #12
  %i.cs = load i32, ptr %i.e, align 8, !tbaa !10  ; 2 uses
  %i.ct = load i32, ptr %i.f, align 4, !tbaa !11
  %.not.i.i = icmp ult i32 %i.cs, %i.ct
  br i1 %.not.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.d, i64 noundef 0, i64 noundef 8) #12
  %.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit: ; preds = %bb.h, %bb.i
  %i.cu = phi i32 [ %.pre.i.i, %bb.i ], [ %i.cs, %bb.h ]
  %i.cv = load ptr, ptr %3, align 8, !tbaa !7
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = ptrtoint ptr %.sroa.029.039 to i64
  store i64 %i.cy, ptr %i.cx, align 1
  %i.cz = load i32, ptr %i.e, align 8, !tbaa !10
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.e, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit
  %.2 = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit ], [ %.138, %.lr.ph ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 8
  %.sroa.029.0 = load ptr, ptr %i.db, align 8, !tbaa !12 ; 2 uses
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i8 %i.b, 116
  br i1 %.not, label %bb.b, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !239 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  %i.e = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.e, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !240
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.d, label %.preheader.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.2.0.copyload, 1
  br i1 %i.h, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

.preheader.i.i:                                   ; preds = %bb.c, %bb.f
  %.024.i.i = phi i64 [ %.fr.i.i, %bb.f ], [ 0, %bb.c ]
  %.0.i.i = phi ptr [ %i.m, %bb.f ], [ %.sroa.0.0.copyload, %bb.c ] ; 2 uses
  %i.i = load i8, ptr %.0.i.i, align 1, !tbaa !240 ; 2 uses
  %i.j = add i8 %i.i, -58
  %or.cond.i.i = icmp ult i8 %i.j, -10
  br i1 %or.cond.i.i, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %4 = zext nneg i8 %i.i to i64
  %5 = mul nuw nsw i64 %.024.i.i, 10
  %6 = add nsw i64 %5, -48
  %i.k = add nsw i64 %6, %4
  %.fr.i.i = freeze i64 %i.k                      ; 4 uses
  %i.l = icmp samesign ult i64 %.fr.i.i, 4294967296
  br i1 %i.l, label %bb.f, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !241

.critedge.i.i:                                    ; preds = %bb.f
  %.not43.i.i = icmp eq i64 %.fr.i.i, 4294967295
  br i1 %.not43.i.i, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit:  ; preds = %.critedge.i.i
  %extract.t = trunc nuw i64 %.fr.i.i to i32
  %i.n = uitofp i32 %extract.t to double
  br label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12: ; preds = %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit, %bb.d
  %.off0 = phi double [ %i.n, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit ], [ 0.000000e+00, %bb.d ]
  %i.o = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %1, double noundef %.off0) #12
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %2, ptr noundef %i.o, i32 noundef %3) #12
  br label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread: ; preds = %.preheader.i.i, %bb.e, %bb.b, %bb.d, %.critedge.i.i, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.thread12 ], [ false, %bb.b ], [ false, %.critedge.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %.preheader.i.i ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  store ptr %i.b, ptr %2, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.0108.0122 = load ptr, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %.not123 = icmp eq ptr %.sroa.0108.0122, %i.i
  br i1 %.not123, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit, label %.lr.ph127

._crit_edge128:                                   ; preds = %._crit_edge
  %.pre = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %.pre130 = load i32, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.j = zext i32 %.pre130 to i64
  %.idx.i = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i
  %.not8.i = icmp eq i32 %.pre130, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge128
  %i.l = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %.pre, %._crit_edge128 ] ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.l) #12
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit

.lr.ph.i:                                         ; preds = %._crit_edge128, %.lr.ph.i
  %.09.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.pre, %._crit_edge128 ] ; 2 uses
  %i.n = load ptr, ptr %.09.i, align 8, !tbaa !228
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.n) #12
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.k
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.0.lcssa141143 = phi i1 [ %.1.lcssa, %bb.b ], [ %.1.lcssa, %._crit_edge.i ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.0.lcssa141143

.lr.ph127:                                        ; preds = %bb.a, %._crit_edge
  %.sroa.0108.0125 = phi ptr [ %.sroa.0108.0, %._crit_edge ], [ %.sroa.0108.0122, %bb.a ] ; 3 uses
  %.0124 = phi i1 [ %.1.lcssa, %._crit_edge ], [ false, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0108.0125, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0108.0125, i64 56 ; 2 uses
  %.sroa.0104.0112 = load ptr, ptr %i.p, align 8, !tbaa !12 ; 2 uses
  %.not111113 = icmp eq ptr %.sroa.0104.0112, %i.q
  br i1 %.not111113, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, %.lr.ph127
  %.1.lcssa = phi i1 [ %.0124, %.lr.ph127 ], [ %.2, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0108.0125, i64 8
  %.sroa.0108.0 = load ptr, ptr %i.r, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %.sroa.0108.0, %i.i
  br i1 %.not, label %._crit_edge128, label %.lr.ph127

.lr.ph:                                           ; preds = %.lr.ph127, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit
  %.sroa.0104.0115 = phi ptr [ %.sroa.0104.0, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit ], [ %.sroa.0104.0112, %.lr.ph127 ] ; 8 uses
  %.1114 = phi i1 [ %.2, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit ], [ %.0124, %.lr.ph127 ] ; 31 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0104.0115, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !15    ; 4 uses
  %i.u = add i8 %i.t, -45
  %i.v = icmp ult i8 %i.u, 4
  br i1 %i.v, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.w = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 1) #12 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !15
  %.not.i23 = icmp eq i8 %i.x, 116
  br i1 %.not.i23, label %bb.d, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.y, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !239 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.aa = icmp samesign eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.aa, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !240
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.f, label %.preheader.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %.sroa.2.0.copyload.i, 1
  br i1 %i.ad, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.h
  %.024.i.i.i = phi i64 [ %.fr.i.i.i, %bb.h ], [ 0, %bb.e ]
  %.0.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %.sroa.0.0.copyload.i, %bb.e ] ; 2 uses
  %i.ae = load i8, ptr %.0.i.i.i, align 1, !tbaa !240 ; 2 uses
  %i.af = add i8 %i.ae, -58
  %or.cond.i.i.i = icmp ult i8 %i.af, -10
  br i1 %or.cond.i.i.i, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.i
  %4 = zext nneg i8 %i.ae to i64
  %5 = mul nuw nsw i64 %.024.i.i.i, 10
  %6 = add nsw i64 %5, -48
  %i.ag = add nsw i64 %6, %4
  %.fr.i.i.i = freeze i64 %i.ag                   ; 4 uses
  %i.ah = icmp samesign ult i64 %.fr.i.i.i, 4294967296
  br i1 %i.ah, label %bb.h, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.z
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %.preheader.i.i.i, !llvm.loop !241

.critedge.i.i.i:                                  ; preds = %bb.h
  %.not43.i.i.i = icmp eq i64 %.fr.i.i.i, 4294967295
  br i1 %.not43.i.i.i, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i: ; preds = %.critedge.i.i.i
  %extract.t.i = trunc nuw i64 %.fr.i.i.i to i32
  %i.aj = uitofp i32 %extract.t.i to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

bb.i:                                             ; preds = %.lr.ph
  %i.ak = add i8 %i.t, -35
  %i.al = icmp ult i8 %i.ak, 4
  br i1 %i.al, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.am = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 2) #12 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !15
  %.not.i24 = icmp eq i8 %i.an, 116
  br i1 %.not.i24, label %bb.k, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.0.0.copyload.i.i26 = load ptr, ptr %i.ao, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i27 = load ptr, ptr %.sroa.0.0.copyload.i.i26, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i26, i64 8
  %.sroa.2.0.copyload.i29 = load i64, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !239 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i27, i64 %.sroa.2.0.copyload.i29
  %i.aq = icmp samesign eq i64 %.sroa.2.0.copyload.i29, 0
  br i1 %i.aq, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %.sroa.0.0.copyload.i27, align 1, !tbaa !240
  %i.as = icmp eq i8 %i.ar, 48
  br i1 %i.as, label %bb.m, label %.preheader.i.i.i30

bb.m:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %.sroa.2.0.copyload.i29, 1
  br i1 %i.at, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i30:                               ; preds = %bb.l, %bb.o
  %.024.i.i.i31 = phi i64 [ %.fr.i.i.i34, %bb.o ], [ 0, %bb.l ]
  %.0.i.i.i32 = phi ptr [ %i.ay, %bb.o ], [ %.sroa.0.0.copyload.i27, %bb.l ] ; 2 uses
  %i.au = load i8, ptr %.0.i.i.i32, align 1, !tbaa !240 ; 2 uses
  %i.av = add i8 %i.au, -58
  %or.cond.i.i.i33 = icmp ult i8 %i.av, -10
  br i1 %or.cond.i.i.i33, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i.i30
  %7 = zext nneg i8 %i.au to i64
  %8 = mul nuw nsw i64 %.024.i.i.i31, 10
  %9 = add nsw i64 %8, -48
  %i.aw = add nsw i64 %9, %7
  %.fr.i.i.i34 = freeze i64 %i.aw                 ; 4 uses
  %i.ax = icmp samesign ult i64 %.fr.i.i.i34, 4294967296
  br i1 %i.ax, label %bb.o, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i32, i64 1 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i35, label %.critedge.i.i.i36, label %.preheader.i.i.i30, !llvm.loop !241

.critedge.i.i.i36:                                ; preds = %bb.o
  %.not43.i.i.i37 = icmp eq i64 %.fr.i.i.i34, 4294967295
  br i1 %.not43.i.i.i37, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38: ; preds = %.critedge.i.i.i36
  %extract.t.i39 = trunc nuw i64 %.fr.i.i.i34 to i32
  %i.az = uitofp i32 %extract.t.i39 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

bb.p:                                             ; preds = %bb.i
  %i.ba = add i8 %i.t, -39
  %i.bb = icmp ult i8 %i.ba, 4
  br i1 %i.bb, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bc = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 2) #12 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !15
  %.not.i43 = icmp eq i8 %i.bd, 116
  br i1 %.not.i43, label %bb.r, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.be, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i46 = load ptr, ptr %.sroa.0.0.copyload.i.i45, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i45, i64 8
  %.sroa.2.0.copyload.i48 = load i64, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !239 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i46, i64 %.sroa.2.0.copyload.i48
  %i.bg = icmp samesign eq i64 %.sroa.2.0.copyload.i48, 0
  br i1 %i.bg, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load i8, ptr %.sroa.0.0.copyload.i46, align 1, !tbaa !240
  %i.bi = icmp eq i8 %i.bh, 48
  br i1 %i.bi, label %bb.t, label %.preheader.i.i.i49

bb.t:                                             ; preds = %bb.s
  %i.bj = icmp eq i64 %.sroa.2.0.copyload.i48, 1
  br i1 %i.bj, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i49:                               ; preds = %bb.s, %bb.v
  %.024.i.i.i50 = phi i64 [ %.fr.i.i.i53, %bb.v ], [ 0, %bb.s ]
  %.0.i.i.i51 = phi ptr [ %i.bo, %bb.v ], [ %.sroa.0.0.copyload.i46, %bb.s ] ; 2 uses
  %i.bk = load i8, ptr %.0.i.i.i51, align 1, !tbaa !240 ; 2 uses
  %i.bl = add i8 %i.bk, -58
  %or.cond.i.i.i52 = icmp ult i8 %i.bl, -10
  br i1 %or.cond.i.i.i52, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.u

bb.u:                                             ; preds = %.preheader.i.i.i49
  %10 = zext nneg i8 %i.bk to i64
  %11 = mul nuw nsw i64 %.024.i.i.i50, 10
  %12 = add nsw i64 %11, -48
  %i.bm = add nsw i64 %12, %10
  %.fr.i.i.i53 = freeze i64 %i.bm                 ; 4 uses
  %i.bn = icmp samesign ult i64 %.fr.i.i.i53, 4294967296
  br i1 %i.bn, label %bb.v, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i51, i64 1 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.bo, %i.bf
  br i1 %.not.i.i.i54, label %.critedge.i.i.i55, label %.preheader.i.i.i49, !llvm.loop !241

.critedge.i.i.i55:                                ; preds = %bb.v
  %.not43.i.i.i56 = icmp eq i64 %.fr.i.i.i53, 4294967295
  br i1 %.not43.i.i.i56, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57: ; preds = %.critedge.i.i.i55
  %extract.t.i58 = trunc nuw i64 %.fr.i.i.i53 to i32
  %i.bp = uitofp i32 %extract.t.i58 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

bb.w:                                             ; preds = %bb.p
  switch i8 %i.t, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit [
    i8 44, label %bb.x
    i8 43, label %bb.ad
  ]

bb.x:                                             ; preds = %bb.w
  %i.bq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 1) #12 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !15
  %.not.i62 = icmp eq i8 %i.br, 116
  br i1 %.not.i62, label %bb.y, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.sroa.0.0.copyload.i.i64 = load ptr, ptr %i.bs, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i65 = load ptr, ptr %.sroa.0.0.copyload.i.i64, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 8
  %.sroa.2.0.copyload.i67 = load i64, ptr %.sroa.2.0..sroa_idx.i66, align 8, !tbaa !239 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i65, i64 %.sroa.2.0.copyload.i67
  %i.bu = icmp samesign eq i64 %.sroa.2.0.copyload.i67, 0
  br i1 %i.bu, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load i8, ptr %.sroa.0.0.copyload.i65, align 1, !tbaa !240
  %i.bw = icmp eq i8 %i.bv, 48
  br i1 %i.bw, label %bb.aa, label %.preheader.i.i.i68

bb.aa:                                            ; preds = %bb.z
  %i.bx = icmp eq i64 %.sroa.2.0.copyload.i67, 1
  br i1 %i.bx, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i68:                               ; preds = %bb.z, %bb.ac
  %.024.i.i.i69 = phi i64 [ %.fr.i.i.i72, %bb.ac ], [ 0, %bb.z ]
  %.0.i.i.i70 = phi ptr [ %i.cc, %bb.ac ], [ %.sroa.0.0.copyload.i65, %bb.z ] ; 2 uses
  %i.by = load i8, ptr %.0.i.i.i70, align 1, !tbaa !240 ; 2 uses
  %i.bz = add i8 %i.by, -58
  %or.cond.i.i.i71 = icmp ult i8 %i.bz, -10
  br i1 %or.cond.i.i.i71, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i.i68
  %13 = zext nneg i8 %i.by to i64
  %14 = mul nuw nsw i64 %.024.i.i.i69, 10
  %15 = add nsw i64 %14, -48
  %i.ca = add nsw i64 %15, %13
  %.fr.i.i.i72 = freeze i64 %i.ca                 ; 4 uses
  %i.cb = icmp samesign ult i64 %.fr.i.i.i72, 4294967296
  br i1 %i.cb, label %bb.ac, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i70, i64 1 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.cc, %i.bt
  br i1 %.not.i.i.i73, label %.critedge.i.i.i74, label %.preheader.i.i.i68, !llvm.loop !241

.critedge.i.i.i74:                                ; preds = %bb.ac
  %.not43.i.i.i75 = icmp eq i64 %.fr.i.i.i72, 4294967295
  br i1 %.not43.i.i.i75, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76: ; preds = %.critedge.i.i.i74
  %extract.t.i77 = trunc nuw i64 %.fr.i.i.i72 to i32
  %i.cd = uitofp i32 %extract.t.i77 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

bb.ad:                                            ; preds = %bb.w
  %i.ce = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 3) #12 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !15
  %.not.i81 = icmp eq i8 %i.cf, 116
  br i1 %.not.i81, label %bb.ae, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %.sroa.0.0.copyload.i.i83 = load ptr, ptr %i.cg, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i84 = load ptr, ptr %.sroa.0.0.copyload.i.i83, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i83, i64 8
  %.sroa.2.0.copyload.i86 = load i64, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !239 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i84, i64 %.sroa.2.0.copyload.i86
  %i.ci = icmp samesign eq i64 %.sroa.2.0.copyload.i86, 0
  br i1 %i.ci, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = load i8, ptr %.sroa.0.0.copyload.i84, align 1, !tbaa !240
  %i.ck = icmp eq i8 %i.cj, 48
  br i1 %i.ck, label %bb.ag, label %.preheader.i.i.i87

bb.ag:                                            ; preds = %bb.af
  %i.cl = icmp eq i64 %.sroa.2.0.copyload.i86, 1
  br i1 %i.cl, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i87:                               ; preds = %bb.af, %bb.ai
  %.024.i.i.i88 = phi i64 [ %.fr.i.i.i91, %bb.ai ], [ 0, %bb.af ]
  %.0.i.i.i89 = phi ptr [ %i.cq, %bb.ai ], [ %.sroa.0.0.copyload.i84, %bb.af ] ; 2 uses
  %i.cm = load i8, ptr %.0.i.i.i89, align 1, !tbaa !240 ; 2 uses
  %i.cn = add i8 %i.cm, -58
  %or.cond.i.i.i90 = icmp ult i8 %i.cn, -10
  br i1 %or.cond.i.i.i90, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.ah

bb.ah:                                            ; preds = %.preheader.i.i.i87
  %16 = zext nneg i8 %i.cm to i64
  %17 = mul nuw nsw i64 %.024.i.i.i88, 10
  %18 = add nsw i64 %17, -48
  %i.co = add nsw i64 %18, %16
  %.fr.i.i.i91 = freeze i64 %i.co                 ; 4 uses
  %i.cp = icmp samesign ult i64 %.fr.i.i.i91, 4294967296
  br i1 %i.cp, label %bb.ai, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i89, i64 1 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.cq, %i.ch
  br i1 %.not.i.i.i92, label %.critedge.i.i.i93, label %.preheader.i.i.i87, !llvm.loop !241

.critedge.i.i.i93:                                ; preds = %bb.ai
  %.not43.i.i.i94 = icmp eq i64 %.fr.i.i.i91, 4294967295
  br i1 %.not43.i.i.i94, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95: ; preds = %.critedge.i.i.i93
  %extract.t.i96 = trunc nuw i64 %.fr.i.i.i91 to i32
  %i.cr = uitofp i32 %extract.t.i96 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split: ; preds = %bb.ag, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95, %bb.aa, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76, %bb.t, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57, %bb.m, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38, %bb.f, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i
  %.off0.i98.sink = phi double [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.f ], [ %i.aj, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i ], [ %i.az, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38 ], [ %i.bp, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57 ], [ %i.cd, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76 ], [ %i.cr, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95 ], [ 0.000000e+00, %bb.ag ]
  %.sink148 = phi i32 [ 1, %bb.aa ], [ 2, %bb.t ], [ 2, %bb.m ], [ 1, %bb.f ], [ 1, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i ], [ 2, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38 ], [ 2, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57 ], [ 1, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76 ], [ 3, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95 ], [ 3, %bb.ag ]
  %i.cs = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %.off0.i98.sink) #12
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, ptr noundef %i.cs, i32 noundef %.sink148) #12
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit: ; preds = %bb.ah, %.preheader.i.i.i87, %bb.ab, %.preheader.i.i.i68, %bb.u, %.preheader.i.i.i49, %bb.n, %.preheader.i.i.i30, %bb.g, %.preheader.i.i.i, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, %.critedge.i.i.i93, %bb.ag, %bb.ae, %bb.ad, %.critedge.i.i.i74, %bb.aa, %bb.y, %bb.x, %.critedge.i.i.i55, %bb.t, %bb.r, %bb.q, %.critedge.i.i.i36, %bb.m, %bb.k, %bb.j, %.critedge.i.i.i, %bb.f, %bb.d, %bb.c, %bb.w
  %.2 = phi i1 [ %.1114, %bb.w ], [ %.1114, %bb.ad ], [ %.1114, %bb.ag ], [ %.1114, %.critedge.i.i.i93 ], [ %.1114, %bb.ae ], [ %.1114, %bb.c ], [ %.1114, %bb.ab ], [ %.1114, %bb.d ], [ %.1114, %.critedge.i.i.i ], [ %.1114, %bb.f ], [ %.1114, %bb.u ], [ %.1114, %bb.j ], [ %.1114, %bb.aa ], [ %.1114, %bb.k ], [ %.1114, %.critedge.i.i.i36 ], [ %.1114, %bb.m ], [ %.1114, %bb.n ], [ %.1114, %bb.q ], [ %.1114, %.critedge.i.i.i74 ], [ %.1114, %bb.r ], [ %.1114, %.critedge.i.i.i55 ], [ %.1114, %bb.t ], [ true, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split ], [ %.1114, %bb.x ], [ %.1114, %bb.g ], [ %.1114, %bb.y ], [ %.1114, %.preheader.i.i.i ], [ %.1114, %.preheader.i.i.i30 ], [ %.1114, %.preheader.i.i.i49 ], [ %.1114, %.preheader.i.i.i68 ], [ %.1114, %.preheader.i.i.i87 ], [ %.1114, %bb.ah ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0104.0115, i64 8
  %.sroa.0104.0 = load ptr, ptr %i.ct, align 8, !tbaa !12 ; 2 uses
  %.not111 = icmp eq ptr %.sroa.0104.0, %i.q
  br i1 %.not111, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes15LimitAllocArray13runOnFunctionEPNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.059.094 = load ptr, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %.not6295 = icmp eq ptr %.sroa.059.094, %i.b
  br i1 %.not6295, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

._crit_edge100:                                   ; preds = %._crit_edge92, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1.lcssa, %._crit_edge92 ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge92
  %.sroa.059.097 = phi ptr [ %.sroa.059.094, %.lr.ph99 ], [ %.sroa.059.0, %._crit_edge92 ] ; 3 uses
  %.096 = phi i1 [ false, %.lr.ph99 ], [ %.1.lcssa, %._crit_edge92 ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 56 ; 2 uses
  %.sroa.055.083 = load ptr, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %.not6384 = icmp eq ptr %.sroa.055.083, %i.h
  br i1 %.not6384, label %._crit_edge92, label %.lr.ph91

._crit_edge92:                                    ; preds = %bb.i, %bb.b
  %.1.lcssa = phi i1 [ %.096, %bb.b ], [ %.4, %bb.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 8
  %.sroa.059.0 = load ptr, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %.not62 = icmp eq ptr %.sroa.059.0, %i.b
  br i1 %.not62, label %._crit_edge100, label %bb.b

.lr.ph91:                                         ; preds = %bb.b, %bb.i
  %.sroa.055.086 = phi ptr [ %.sroa.055.0, %bb.i ], [ %.sroa.055.083, %bb.b ] ; 19 uses
  %.185 = phi i1 [ %.4, %bb.i ], [ %.096, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 16 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp ne i8 %i.k, 54
  %.not64 = icmp eq ptr %.sroa.055.086, null
  %.not = or i1 %.not64, %i.l
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph91
  %i.m = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !52
  store ptr %i.o, ptr %2, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.sroa.055.086) #12
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 112
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !87
  %i.r = shufflevector <2 x ptr> %i.q, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.r, ptr %i.e, align 8, !tbaa !87
  %i.s = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12 ; 3 uses
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.outer
  %.047.ph73 = phi i32 [ %i.ar, %.outer ], [ 1, %bb.d ] ; 11 uses
  %.048.ph72 = phi i32 [ %i.u, %.outer ], [ -1, %bb.d ]
  %i.u = add i32 %.048.ph72, 1                    ; 3 uses
  %i.v = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.w = load i8, ptr %i.v, align 8, !tbaa !15
  %i.x = icmp eq i8 %i.w, 115
  br i1 %i.x, label %.critedge.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.z = load i8, ptr %i.y, align 8, !tbaa !15
  %.not113 = icmp eq i8 %i.z, 112
  br i1 %.not113, label %.critedge.peel, label %.outer

.critedge.peel:                                   ; preds = %bb.e, %.lr.ph
  %i.aa = add i32 %i.s, -1                        ; 2 uses
  %i.ab = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.ac = uitofp i32 %i.u to double
  %i.ad = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.ac) #12
  %i.ae = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ab, ptr noundef nonnull %i.j, ptr noundef %i.ad, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.af = icmp ult i32 %.047.ph73, %i.aa
  br i1 %i.af, label %.peel.next, label %.outer._crit_edge

.peel.next:                                       ; preds = %.critedge.peel, %.critedge
  %.04669 = phi i32 [ %i.al, %.critedge ], [ %i.aa, %.critedge.peel ]
  %.04868 = phi i32 [ %i.ag, %.critedge ], [ %i.u, %.critedge.peel ]
  %i.ag = add i32 %.04868, 1                      ; 2 uses
  %i.ah = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !15
  %i.aj = icmp eq i8 %i.ai, 115
  br i1 %i.aj, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.ak = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.peel.next
  %i.al = add i32 %.04669, -1                     ; 2 uses
  %i.am = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.an = uitofp i32 %i.ag to double
  %i.ao = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.an) #12
  %i.ap = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.am, ptr noundef nonnull %i.j, ptr noundef %i.ao, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.aq = icmp ult i32 %.047.ph73, %i.al
  br i1 %i.aq, label %.peel.next, label %.outer._crit_edge, !llvm.loop !242

.outer:                                           ; preds = %bb.e
  %i.ar = add nuw i32 %.047.ph73, 1               ; 2 uses
  %i.as = icmp ult i32 %i.ar, %i.s
  br i1 %i.as, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !244

.outer._crit_edge:                                ; preds = %.outer, %.critedge, %.critedge.peel, %bb.d
  %.2.lcssa = phi i1 [ true, %.critedge ], [ %.185, %bb.d ], [ true, %.critedge.peel ], [ %.185, %.outer ]
  %i.at = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.outer._crit_edge
  %i.av = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12 ; 2 uses
  %.04577 = add i32 %i.av, -2                     ; 2 uses
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !245
  %.not5378 = icmp ult i32 %.04577, %i.aw
  br i1 %.not5378, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.g
  %i.ax = add i32 %i.av, -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph82, %bb.h
  %.04580 = phi i32 [ %.04577, %.lr.ph82 ], [ %.045, %bb.h ] ; 3 uses
  %.045.in79 = phi i32 [ %i.ax, %.lr.ph82 ], [ %.04580, %bb.h ] ; 2 uses
  %i.ay = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.045.in79) #12
  %i.az = uitofp i32 %.04580 to double
  %i.ba = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.az) #12
  %i.bb = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ay, ptr noundef nonnull %i.j, ptr noundef %i.ba, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.045.in79) #12
  %.045 = add i32 %.04580, -1                     ; 2 uses
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !245
  %.not53 = icmp ult i32 %.045, %i.bc
  br i1 %.not53, label %.loopexit, label %bb.h, !llvm.loop !247

.loopexit:                                        ; preds = %bb.h, %bb.g, %.outer._crit_edge
  %.3 = phi i1 [ %.2.lcssa, %.outer._crit_edge ], [ true, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %bb.c, %.loopexit
  %.4 = phi i1 [ %.3, %.loopexit ], [ %.185, %bb.c ], [ %.185, %.lr.ph91 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 8
  %.sroa.055.0 = load ptr, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %.not63 = icmp eq ptr %.sroa.055.0, %i.h
  br i1 %.not63, label %._crit_edge92, label %.lr.ph91
}

declare void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

end_hunk_0
