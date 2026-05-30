inline.NumInlined: 209
inline.NumDeleted: 147
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::PostOrderAnalysis" = type { ptr, %"class.std::vector.86" }
%"class.std::vector.86" = type { %"struct.std::_Vector_base.87" }
%"struct.std::_Vector_base.87" = type { %"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [16 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.77" }
%"struct.std::_Head_base.77" = type { ptr }

$_ZN6hermes3DCED0Ev = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes3DCEE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3DCED0Ev, ptr @_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE] }, align 8
@.str = private unnamed_addr constant [4 x i8] c"DCE\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::PostOrderAnalysis", align 8 ; 6 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  %4 = alloca %"class.llvh::SmallVector", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %.sroa.053.059 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not5760 = icmp eq ptr %.sroa.053.059, %i.e
  br i1 %.not5760, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

.preheader.loopexit:                              ; preds = %_ZL18performFunctionDCEPN6hermes8FunctionE.exit
  %5 = zext i1 %.0.lcssa.i to i8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i8 [ 0, %bb.a ], [ %5, %.preheader.loopexit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %i.i, ptr %4, align 8, !tbaa !7
  store i32 0, ptr %i.j, align 8, !tbaa !10
  store i32 16, ptr %i.k, align 4, !tbaa !11
  %.sroa.049.063116 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not5864117 = icmp eq ptr %.sroa.049.063116, %i.e
  br i1 %.not5864117, label %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread, label %.lr.ph68

bb.b:                                             ; preds = %.lr.ph, %_ZL18performFunctionDCEPN6hermes8FunctionE.exit
  %.sroa.053.062 = phi ptr [ %.sroa.053.059, %.lr.ph ], [ %.sroa.053.0, %_ZL18performFunctionDCEPN6hermes8FunctionE.exit ] ; 2 uses
  %.061 = phi i1 [ false, %.lr.ph ], [ %.0.lcssa.i, %_ZL18performFunctionDCEPN6hermes8FunctionE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %.sroa.053.062) #6
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.not1824.i = icmp eq ptr %i.o, %i.p
  br i1 %.not1824.i, label %._crit_edge29.i, label %.lr.ph28.i

._crit_edge29.loopexit.i:                         ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.q = or i1 %.061, %.1.lcssa.i
  br label %._crit_edge29.i

._crit_edge29.i:                                  ; preds = %._crit_edge29.loopexit.i, %bb.b
  %i.r = phi ptr [ %i.o, %bb.b ], [ %.pre.i, %._crit_edge29.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i1 [ %.061, %bb.b ], [ %i.q, %._crit_edge29.loopexit.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZL18performFunctionDCEPN6hermes8FunctionE.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge29.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #7
  br label %_ZL18performFunctionDCEPN6hermes8FunctionE.exit

.lr.ph28.i:                                       ; preds = %bb.b, %._crit_edge.i
  %.026.i = phi i1 [ %.1.lcssa.i, %._crit_edge.i ], [ false, %bb.b ] ; 2 uses
  %.sroa.014.025.i = phi ptr [ %i.z, %._crit_edge.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.014.025.i, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %.not1921.i = icmp eq ptr %i.y, %i.x
  br i1 %.not1921.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.g, %.lr.ph28.i
  %.1.lcssa.i = phi i1 [ %.026.i, %.lr.ph28.i ], [ %.2.i, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %i.z, %i.p
  br i1 %.not18.i, label %._crit_edge29.loopexit.i, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %.lr.ph28.i, %bb.g
  %.123.i = phi i1 [ %.2.i, %bb.g ], [ %.026.i, %.lr.ph28.i ] ; 5 uses
  %.sroa.010.022.i = phi ptr [ %i.aa, %bb.g ], [ %i.y, %.lr.ph28.i ] ; 4 uses
  %i.aa = load ptr, ptr %.sroa.010.022.i, align 8, !tbaa !23 ; 2 uses
  %i.ab = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.022.i) #6
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.g, label %bb.d, !llvm.loop !24

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.022.i, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !26
  %.fr20.i = freeze i8 %i.ae                      ; 2 uses
  %i.af = add i8 %.fr20.i, -75
  %i.ag = icmp ult i8 %i.af, 15
  br i1 %i.ag, label %bb.g, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.d
  switch i8 %.fr20.i, label %bb.e [
    i8 7, label %bb.g
    i8 4, label %bb.g
  ]

bb.e:                                             ; preds = %switch.early.test.i
  %i.ah = call noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #6
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.f, label %bb.g, !llvm.loop !24

bb.f:                                             ; preds = %bb.e
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.022.i) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %switch.early.test.i, %switch.early.test.i, %bb.d, %.lr.ph.i
  %.2.i = phi i1 [ true, %bb.f ], [ %.123.i, %.lr.ph.i ], [ %.123.i, %switch.early.test.i ], [ %.123.i, %bb.e ], [ %.123.i, %bb.d ], [ %.123.i, %switch.early.test.i ] ; 2 uses
  %.not19.i = icmp eq ptr %i.aa, %i.x
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

_ZL18performFunctionDCEPN6hermes8FunctionE.exit:  ; preds = %._crit_edge29.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.053.062, i64 8
  %.sroa.053.0 = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 2 uses
  %.not57 = icmp eq ptr %.sroa.053.0, %i.e
  br i1 %.not57, label %.preheader.loopexit, label %bb.b

_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread: ; preds = %.backedge, %.preheader
  %.1.lcssa = phi i8 [ %.0.lcssa, %.preheader ], [ %.4, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.o
  %.pre = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %.pre82 = load i32, ptr %i.j, align 8, !tbaa !10 ; 2 uses
  %i.aj = zext i32 %.pre82 to i64
  %.idx = shl nuw nsw i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not71 = icmp eq i32 %.pre82, 0
  br i1 %.not71, label %._crit_edge75, label %.lr.ph74

.lr.ph68:                                         ; preds = %.preheader, %.lr.ph68.backedge
  %.sroa.049.067 = phi ptr [ %.sroa.049.067.be, %.lr.ph68.backedge ], [ %.sroa.049.063116, %.preheader ] ; 8 uses
  %.266 = phi i8 [ %.4, %.lr.ph68.backedge ], [ %.0.lcssa, %.preheader ] ; 4 uses
  %.03265 = phi i1 [ %.03265.be, %.lr.ph68.backedge ], [ false, %.preheader ] ; 4 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !36  ; 4 uses
  %i.am = load i32, ptr %i.m, align 8, !tbaa !39  ; 4 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph68
  %i.ao = ptrtoint ptr %.sroa.049.067 to i64
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = lshr i32 %i.ap, 4
  %i.ar = lshr i32 %i.ap, 9
  %i.as = xor i32 %i.aq, %i.ar
  %i.at = add i32 %i.am, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.at, %i.as            ; 2 uses
  %i.au = zext nneg i32 %.02944.i.i.i to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40 ; 2 uses
  %i.ax = icmp eq ptr %.sroa.049.067, %i.aw
  br i1 %i.ax, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !42

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %i.ay = phi ptr [ %i.be, %bb.i ], [ %i.aw, %bb.h ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.i ], [ %.02944.i.i.i, %bb.h ]
  %.02746.i.i.i = phi i32 [ %i.ba, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.az = icmp eq ptr %i.ay, inttoptr (i64 -8 to ptr)
  br i1 %i.az, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i, label %bb.i, !prof !43

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = add i32 %.02746.i.i.i, 1
  %i.bb = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bb, %i.at              ; 2 uses
  %i.bc = zext i32 %.029.i.i.i to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.049.067, %i.be
  br i1 %i.bf, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !44, !llvm.loop !45

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph68
  %i.bg = zext i32 %i.am to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.bg
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i: ; preds = %bb.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i, %bb.h
  %.sink.i.ph.pn.i.i = phi ptr [ %i.bh, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i ], [ %i.av, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bi = zext i32 %i.am to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.bi
  %i.bk = icmp eq ptr %.sink.i.ph.pn.i.i, %i.bj
  br i1 %i.bk, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit

_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46
  %.not39 = icmp eq ptr %i.bm, null
  br i1 %.not39, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, label %bb.o

_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.049.067, i64 64
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !49, !range !84, !noundef !85
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !86  ; 2 uses
  %.not.i41 = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %i.d, align 8
  %i.bs = select i1 %.not.i41, ptr %i.br, ptr %i.bq
  %.not40 = icmp eq ptr %.sroa.049.067, %i.bs
  br i1 %.not40, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.049.067, i64 16
  %i.bu = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bt) #6
  br i1 %i.bu, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !10  ; 2 uses
  %i.bw = load i32, ptr %i.k, align 4, !tbaa !11
  %.not.i42 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i42, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit, label %bb.m, !prof !43

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 8) #6
  %.pre.i43 = load i32, ptr %i.j, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit: ; preds = %bb.l, %bb.m
  %i.bx = phi i32 [ %.pre.i43, %bb.m ], [ %i.bv, %bb.l ]
  %i.by = load ptr, ptr %4, align 8, !tbaa !7
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = ptrtoint ptr %.sroa.049.067 to i64      ; 2 uses
  store i64 %i.cb, ptr %i.ca, align 1
  %i.cc = load i32, ptr %i.j, align 8, !tbaa !10
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.j, align 8, !tbaa !10
  %i.ce = load i32, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i44 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i44, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46, label %bb.n, !prof !43

bb.n:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #6
  %.pre.i45 = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit, %bb.n
  %i.cg = phi i32 [ %.pre.i45, %bb.n ], [ %i.ce, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit ]
  %i.ch = load ptr, ptr %3, align 8, !tbaa !7
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  store i64 %i.cb, ptr %i.cj, align 1
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !10
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.b, align 8, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, %bb.j, %bb.k, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %.234 = phi i1 [ %.03265, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %.03265, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread ], [ %.03265, %bb.k ], [ true, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46 ], [ %.03265, %bb.j ] ; 3 uses
  %.4 = phi i8 [ %.266, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %.266, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread ], [ %.266, %bb.k ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46 ], [ %.266, %bb.j ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.049.067, i64 8
  %.sroa.049.0 = load ptr, ptr %i.cm, align 8, !tbaa !12 ; 2 uses
  %.not58 = icmp eq ptr %.sroa.049.0, %i.e
  br i1 %.not58, label %._crit_edge, label %.lr.ph68.backedge

.lr.ph68.backedge:                                ; preds = %bb.o, %.backedge
  %.sroa.049.067.be = phi ptr [ %.sroa.049.0, %bb.o ], [ %.sroa.049.063, %.backedge ]
  %.03265.be = phi i1 [ %.234, %bb.o ], [ false, %.backedge ]
  br label %.lr.ph68, !llvm.loop !147

._crit_edge75.loopexit:                           ; preds = %.lr.ph74
  %.pre83 = load ptr, ptr %4, align 8, !tbaa !7
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %._crit_edge
  %i.cn = phi ptr [ %.pre83, %._crit_edge75.loopexit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.i
  br i1 %i.co, label %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge75
  call void @free(ptr noundef %i.cn) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %.234, label %.backedge, label %.loopexit

_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit: ; preds = %._crit_edge75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %.234, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %i.i, ptr %4, align 8, !tbaa !7
  store i32 0, ptr %i.j, align 8, !tbaa !10
  store i32 16, ptr %i.k, align 4, !tbaa !11
  %.sroa.049.063 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not5864 = icmp eq ptr %.sroa.049.063, %i.e
  br i1 %.not5864, label %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread, label %.lr.ph68.backedge

.lr.ph74:                                         ; preds = %._crit_edge, %.lr.ph74
  %.03672 = phi ptr [ %i.cq, %.lr.ph74 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.cp = load ptr, ptr %.03672, align 8, !tbaa !40
  call void @_ZN6hermes8Function24eraseFromParentNoDestroyEv(ptr noundef nonnull align 8 dereferenceable(304) %i.cp) #6
  %i.cq = getelementptr inbounds nuw i8, ptr %.03672, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.ak
  br i1 %.not, label %._crit_edge75.loopexit, label %.lr.ph74

.loopexit:                                        ; preds = %bb.p, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread
  %.2.lcssa107110114 = phi i8 [ %.1.lcssa, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread ], [ %.4, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit ], [ %.4, %bb.p ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %i.cs = load i32, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %.idx81 = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx81
  %.not3876 = icmp eq i32 %i.cs, 0
  br i1 %.not3876, label %._crit_edge80, label %.lr.ph79

._crit_edge80.loopexit:                           ; preds = %.lr.ph79
  %.pre84 = load ptr, ptr %3, align 8, !tbaa !7
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %.loopexit
  %i.cv = phi ptr [ %.pre84, %._crit_edge80.loopexit ], [ %i.cr, %.loopexit ] ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.a
  br i1 %i.cw, label %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit47, label %bb.q

bb.q:                                             ; preds = %._crit_edge80
  call void @free(ptr noundef %i.cv) #6
  br label %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit47

_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit47: ; preds = %._crit_edge80, %bb.q
  %6 = trunc nuw i8 %.2.lcssa107110114 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i1 %6

.lr.ph79:                                         ; preds = %.loopexit, %.lr.ph79
  %.03577 = phi ptr [ %i.da, %.lr.ph79 ], [ %i.cr, %.loopexit ] ; 2 uses
  %i.cx = load ptr, ptr %.03577, align 8, !tbaa !40 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %spec.select = select i1 %i.cy, ptr null, ptr %i.cz
  call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef %spec.select) #6
  %i.da = getelementptr inbounds nuw i8, ptr %.03577, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.da, %i.cu
  br i1 %.not38, label %._crit_edge80.loopexit, label %.lr.ph79
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6hermes8Function24eraseFromParentNoDestroyEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

declare void @_ZN6hermes5Value7destroyEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9createDCEEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes3DCEESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8, !noalias !148 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !151, !noalias !148
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !155, !noalias !148
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !156, !noalias !148
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes3DCEE, i64 16), ptr %i.a, align 8, !tbaa !157, !noalias !148
  store ptr %i.a, ptr %0, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3DCED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #7
  ret void
}

declare void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }
attributes #8 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !4, i64 12}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !14, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p2 _ZTSN6hermes10BasicBlockE", !17, i64 0}
!17 = !{!"any p2 pointer", !9, i64 0}
!18 = !{!19, !16, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!20 = !{!19, !16, i64 16}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSN6hermes10BasicBlockE", !9, i64 0}
!23 = !{!13, !14, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN6hermes5ValueE", !28, i64 0, !29, i64 2, !31, i64 8}
!28 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!29 = !{!"_ZTSN6hermes4TypeE", !30, i64 0, !30, i64 2}
!30 = !{!"short", !5, i64 0}
!31 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !32, i64 0, !35, i64 16}
!32 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !33, i64 0}
!33 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !34, i64 0}
!34 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !8, i64 0}
!35 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN4llvh8DenseMapIPN6hermes8FunctionEPNS1_6Module9CJSModuleENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEEE", !38, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!38 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes8FunctionEPNS2_6Module9CJSModuleEEE", !9, i64 0}
!39 = !{!37, !4, i64 16}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN6hermes8FunctionE", !9, i64 0}
!42 = !{!"branch_weights", i32 1999, i32 1}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{!"branch_weights", i32 1, i32 0}
!45 = distinct !{!45, !25}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSSt4pairIPN6hermes8FunctionEPNS0_6Module9CJSModuleEE", !41, i64 0, !48, i64 8}
!48 = !{!"p1 _ZTSN6hermes6Module9CJSModuleE", !9, i64 0}
!49 = !{!50, !55, i64 64}
!50 = !{!"_ZTSN6hermes8FunctionE", !51, i64 0, !27, i64 16, !54, i64 56, !55, i64 64, !56, i64 72, !57, i64 80, !62, i64 96, !67, i64 176, !69, i64 184, !55, i64 188, !70, i64 192, !73, i64 208, !67, i64 216, !74, i64 224, !4, i64 232, !75, i64 236, !76, i64 248, !78, i64 280, !83, i64 296}
!51 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !52, i64 0}
!52 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !53, i64 0}
!53 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !13, i64 0}
!54 = !{!"p1 _ZTSN6hermes6ModuleE", !9, i64 0}
!55 = !{!"bool", !5, i64 0}
!56 = !{!"p1 _ZTSN6hermes9ScopeDescE", !9, i64 0}
!57 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !58, i64 0}
!58 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !59, i64 0}
!59 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !60, i64 0}
!60 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !61, i64 0}
!61 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !13, i64 0}
!62 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !63, i64 0, !66, i64 16}
!63 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !64, i64 0}
!64 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !65, i64 0}
!65 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !8, i64 0}
!66 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !5, i64 0}
!67 = !{!"_ZTSN6hermes10IdentifierE", !68, i64 0}
!68 = !{!"p1 _ZTSN6hermes12UniqueStringE", !9, i64 0}
!69 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !5, i64 0}
!70 = !{!"_ZTSN4llvh7SMRangeE", !71, i64 0, !71, i64 8}
!71 = !{!"_ZTSN4llvh5SMLocE", !72, i64 0}
!72 = !{!"p1 omnipotent char", !9, i64 0}
!73 = !{!"_ZTSN6hermes16SourceVisibilityE", !5, i64 0}
!74 = !{!"p1 _ZTSN6hermes9ParameterE", !9, i64 0}
!75 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !55, i64 4}
!76 = !{!"_ZTSN6hermes10LazySourceE", !77, i64 0, !4, i64 4, !70, i64 8, !55, i64 24, !55, i64 25}
!77 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!78 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !79, i64 0}
!79 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !80, i64 0, !81, i64 8}
!80 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !9, i64 0}
!81 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !82, i64 0}
!82 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!83 = !{!"p1 _ZTSN6hermes8VariableE", !9, i64 0}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!87, !41, i64 56}
!87 = !{!"_ZTSN6hermes6ModuleE", !27, i64 0, !88, i64 40, !41, i64 56, !91, i64 64, !95, i64 80, !100, i64 104, !102, i64 128, !113, i64 368, !115, i64 408, !116, i64 448, !117, i64 488, !118, i64 528, !118, i64 576, !119, i64 624, !120, i64 664, !123, i64 688, !125, i64 712, !127, i64 736, !129, i64 760, !37, i64 840, !127, i64 864, !136, i64 888, !55, i64 912, !138, i64 920, !145, i64 976, !55, i64 1032}
!88 = !{!"_ZTSSt10shared_ptrIN6hermes7ContextEE", !89, i64 0}
!89 = !{!"_ZTSSt12__shared_ptrIN6hermes7ContextELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !81, i64 8}
!90 = !{!"p1 _ZTSN6hermes7ContextE", !9, i64 0}
!91 = !{!"_ZTSN4llvh6iplistIN6hermes8FunctionEJEEE", !92, i64 0}
!92 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes8FunctionEJEEENS_12ilist_traitsIS3_EEEE", !93, i64 0}
!93 = !{!"_ZTSN4llvh12simple_ilistIN6hermes8FunctionEJEEE", !94, i64 0}
!94 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !53, i64 0}
!95 = !{!"_ZTSSt6vectorIPN6hermes20GlobalObjectPropertyESaIS2_EE", !96, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIPN6hermes20GlobalObjectPropertyESaIS2_EE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIPN6hermes20GlobalObjectPropertyESaIS2_EE12_Vector_implE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIPN6hermes20GlobalObjectPropertyESaIS2_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!99 = !{!"p2 _ZTSN6hermes20GlobalObjectPropertyE", !17, i64 0}
!100 = !{!"_ZTSN4llvh8DenseMapIN6hermes10IdentifierEPNS1_20GlobalObjectPropertyENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S4_EEEE", !101, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!101 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN6hermes10IdentifierEPNS2_20GlobalObjectPropertyEEE", !9, i64 0}
!102 = !{!"_ZTSN6hermes9ScopeDescE", !27, i64 0, !56, i64 40, !103, i64 48, !78, i64 128, !41, i64 144, !108, i64 152, !55, i64 232}
!103 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ScopeDescELj8EEE", !104, i64 0, !107, i64 16}
!104 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ScopeDescEEE", !105, i64 0}
!105 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EEE", !106, i64 0}
!106 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ScopeDescEvEE", !8, i64 0}
!107 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ScopeDescELj8EEE", !5, i64 0}
!108 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes8VariableELj8EEE", !109, i64 0, !112, i64 16}
!109 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes8VariableEEE", !110, i64 0}
!110 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EEE", !111, i64 0}
!111 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes8VariableEvEE", !8, i64 0}
!112 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes8VariableELj8EEE", !5, i64 0}
!113 = !{!"_ZTSN6hermes12GlobalObjectE", !114, i64 0}
end_hunk_0
