inline.NumInlined: 1077
inline.NumDeleted: 530
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::SmallPtrSet" = type { %"class.llvh::SmallPtrSetImpl.base", [8 x ptr] }
%"class.llvh::SmallPtrSetImpl.base" = type { %"class.llvh::SmallPtrSetImplBase.base" }
%"class.llvh::SmallPtrSetImplBase.base" = type <{ ptr, ptr, i32, i32, i32 }>
%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator.127", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator.127" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }
%"class.hermes::SimpleCallGraphProvider" = type { %"class.hermes::CallGraphProvider" }
%"class.hermes::CallGraphProvider" = type { %"class.llvh::DenseMap.80", %"class.llvh::DenseMap.83", %"class.llvh::DenseMap.86", %"class.llvh::DenseMap.89" }
%"class.llvh::DenseMap.80" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.83" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.86" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.89" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZN6hermes13TypeInferenceD0Ev = comdat any

$_ZN6hermes17CallGraphProviderD2Ev = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes13TypeInferenceE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes13TypeInferenceD0Ev, ptr @_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE] }, align 8
@.str = private unnamed_addr constant [14 x i8] c"TypeInference\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallPtrSet", align 16 ; 10 uses
  %3 = alloca %"class.llvh::SmallPtrSet", align 16 ; 10 uses
  %4 = alloca %"class.hermes::IRBuilder", align 8 ; 5 uses
  %5 = alloca %"class.hermes::SimpleCallGraphProvider", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.07.019.i = load ptr, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.07.019.i, %i.b
  br i1 %.not20.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %6 = insertelement <2 x ptr> poison, ptr %i.h, i64 0
  %7 = shufflevector <2 x ptr> %6, <2 x ptr> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x ptr> poison, ptr %i.m, i64 0
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %.lr.ph.i
  %.sroa.07.022.i = phi ptr [ %.sroa.07.019.i, %.lr.ph.i ], [ %.sroa.07.0.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ] ; 17 uses
  %.021.i = phi i1 [ false, %.lr.ph.i ], [ %i.tj, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @_ZN6hermes23SimpleCallGraphProvider21initCallRelationshipsEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull %.sroa.07.022.i) #8
  %.val.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !11 ; 4 uses
  %.val.val29.i.i = load i32, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %i.u = icmp eq i32 %.val.val29.i.i, 0
  br i1 %i.u, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %.sroa.07.022.i to i64
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = lshr i32 %i.w, 4
  %i.y = lshr i32 %i.w, 9
  %i.z = xor i32 %i.x, %i.y
  %i.aa = add i32 %.val.val29.i.i, -1             ; 3 uses
  %.02944.i.i.i.i.i.i = and i32 %i.aa, %i.z       ; 3 uses
  %i.ab = zext nneg i32 %.02944.i.i.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 3 uses
  %i.ae = icmp eq ptr %.sroa.07.022.i, %i.ad
  br i1 %i.ae, label %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !17

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.al, %bb.d ], [ %i.ad, %bb.c ]
  %.02947.i.i.i.i.i.i = phi i32 [ %.029.i.i.i.i.i.i, %bb.d ], [ %.02944.i.i.i.i.i.i, %bb.c ]
  %.02746.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.ag = icmp eq ptr %i.af, inttoptr (i64 -8 to ptr)
  br i1 %i.ag, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i, label %bb.d, !prof !18

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = add i32 %.02746.i.i.i.i.i.i, 1
  %i.ai = add i32 %.02746.i.i.i.i.i.i, %.02947.i.i.i.i.i.i
  %.029.i.i.i.i.i.i = and i32 %i.ai, %i.aa        ; 2 uses
  %i.aj = zext i32 %.029.i.i.i.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %i.am = icmp eq ptr %.sroa.07.022.i, %i.al
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !19, !llvm.loop !20

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.e
  %i.an = phi ptr [ %i.at, %bb.e ], [ %i.ad, %bb.d ]
  %.02947.i.i.i.i.i.i.i = phi i32 [ %.029.i.i.i.i.i.i.i, %bb.e ], [ %.02944.i.i.i.i.i.i, %bb.d ]
  %.02746.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.ao = icmp eq ptr %i.an, inttoptr (i64 -8 to ptr)
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i, label %bb.e, !prof !18

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = add i32 %.02746.i.i.i.i.i.i.i, 1
  %i.aq = add i32 %.02746.i.i.i.i.i.i.i, %.02947.i.i.i.i.i.i.i
  %.029.i.i.i.i.i.i.i = and i32 %i.aq, %i.aa      ; 2 uses
  %i.ar = zext i32 %.029.i.i.i.i.i.i.i to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.au = icmp eq ptr %.sroa.07.022.i, %i.at
  br i1 %i.au, label %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !19, !llvm.loop !20

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.av = zext i32 %.val.val29.i.i to i64
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.av
  br label %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i

_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i: ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i, %bb.c
  %.sink.i.i.ph.pn.i.i.i.i.i = phi ptr [ %i.aw, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i ], [ %i.ac, %bb.c ], [ %i.as, %bb.e ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 188
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !22, !range !67, !noundef !68
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i
  %i.bb = call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.07.022.i) #8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 632
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !69, !range !67, !noundef !68
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.g, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i

bb.g:                                             ; preds = %bb.f, %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !71
  store ptr %i.bg, ptr %4, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 104
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !77 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph59.i.i.i.i, label %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i

.lr.ph59.i.i.i.i:                                 ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i, i64 24
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bj to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i, %.lr.ph59.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph59.i.i.i.i ], [ %.pre.i.i.i.i, %.critedge.i.i.i.i ] ; 3 uses
  %.03057.i.i.i.i = phi i1 [ false, %.lr.ph59.i.i.i.i ], [ %.1.i.i.i.i, %.critedge.i.i.i.i ] ; 2 uses
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !79
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !80
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !83 ; 5 uses
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !84 ; 2 uses
  %i.bu = zext i32 %i.bt to i64                   ; 3 uses
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bu, 3
  %i.bw = getelementptr i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not5.i5.i10.i2.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i.i

.lr.ph.i6.i12.i3.i.i.i.i.i.i:                     ; preds = %bb.j, %.critedge2.i8.i14.i6.i.i.i.i.i.i
  %.sroa.0.3.i4.i.i.i.i.i.i = phi ptr [ %i.by, %.critedge2.i8.i14.i6.i.i.i.i.i.i ], [ %i.bs, %bb.j ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.0.3.i4.i.i.i.i.i.i, align 8, !tbaa !85
  %magicptr.i7.i13.i5.i.i.i.i.i.i = ptrtoint ptr %i.bx to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i.i.i.i:                 ; preds = %.lr.ph.i6.i12.i3.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bw
  br i1 %.not.i9.i15.i7.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i.i, !llvm.loop !87

_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i: ; preds = %.critedge2.i8.i14.i6.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i, %bb.j, %bb.i
  %.pn14.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.i ], [ %i.bs, %bb.j ], [ %i.bw, %.critedge2.i8.i14.i6.i.i.i.i.i.i ], [ %.sroa.0.3.i4.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i ] ; 2 uses
  %.pn12.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.i ], [ %i.bw, %bb.j ], [ %i.bw, %.lr.ph.i6.i12.i3.i.i.i.i.i.i ], [ %i.bw, %.critedge2.i8.i14.i6.i.i.i.i.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu ; 2 uses
  %.not49.i.i.i.i = icmp eq ptr %.pn14.i.i.i.i.i.i, %i.bz
  %.pre.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 3 uses
  br i1 %.not49.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i
  %i.ca = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.cb = add i32 %i.ca, 3
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.03253.i.i.i.i = phi i1 [ true, %.lr.ph.i.i.i.i ], [ false, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ]
  %.sroa.7.052.i.i.i.i = phi i32 [ 458752, %.lr.ph.i.i.i.i ], [ %.sroa.7.0.extract.shift.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ]
  %.sroa.041.051.i.i.i.i = phi i32 [ 1023, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ]
  %.sroa.038.050.i.i.i.i = phi ptr [ %.pn14.i.i.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.038.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.038.050.i.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.cd = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #8
  %i.ce = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cc) #8
  %i.cf = add i32 %i.ce, -2
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp samesign ult i64 %.pre.i.i.i.i, %i.cg
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.cc, i32 noundef %i.cb) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.034.i.i.i.i = phi ptr [ %i.ci, %bb.l ], [ %i.cd, %bb.k ] ; 2 uses
  br i1 %.03253.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.cj, align 2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.041.0.insert.ext42.i.i.i.i = and i32 %.sroa.041.051.i.i.i.i, 65535
  %.sroa.041.0.insert.insert44.i.i.i.i = or disjoint i32 %.sroa.041.0.insert.ext42.i.i.i.i, %.sroa.7.052.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i36.i.i.i.i = load i32, ptr %i.ck, align 2
  %i.cl = or i32 %.sroa.041.0.insert.insert44.i.i.i.i, %.sroa.0.0.copyload.i36.i.i.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge.i.i.i.i = phi i32 [ %i.cl, %bb.o ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.n ] ; 4 uses
  %.sroa.7.0.extract.shift.i.i.i.i = and i32 %storemerge.i.i.i.i, -65536
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.038.050.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i.i.i = icmp eq ptr %i.cm, %.pn12.i.i.i.i.i.i
  br i1 %.not5.i3.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i

.lr.ph.i4.i.i.i.i.i.i:                            ; preds = %bb.p, %.critedge2.i6.i.i.i.i.i.i
  %.sroa.038.1.i.i.i.i = phi ptr [ %i.co, %.critedge2.i6.i.i.i.i.i.i ], [ %i.cm, %bb.p ] ; 3 uses
  %i.cn = load ptr, ptr %.sroa.038.1.i.i.i.i, align 8, !tbaa !85
  %magicptr.i5.i.i.i.i.i.i = ptrtoint ptr %i.cn to i64
  switch i64 %magicptr.i5.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  %i.ek = and i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 960
  %.not.i.i.i61.i.i = icmp eq i32 %i.ek, 0
  %i.el = and i32 %.sroa.0.0.copyload.i15.i.i.i.i.i, 960
  %.not20.i.i.i.i.i = icmp eq i32 %i.el, 0
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i61.i.i, i1 true, i1 %.not20.i.i.i.i.i
  %i.em = select i1 %or.cond.i.i.i.i.i, i32 458784, i32 458848
  br label %.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.y
  %i.en = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %.sroa.0.0.copyload.i.i33.i.i.i.i = load i32, ptr %i.eo, align 2 ; 2 uses
  %.sroa.017.0.extract.trunc.i34.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i33.i.i.i.i to i16
  %i.ep = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 1) #8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %.sroa.0.0.copyload.i15.i35.i.i.i.i = load i32, ptr %i.eq, align 2 ; 2 uses
  %.sroa.0.0.extract.trunc.i36.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i15.i35.i.i.i.i to i16 ; 2 uses
  switch i16 %.sroa.017.0.extract.trunc.i34.i.i.i.i, label %.thread.i37.i.i.i.i [
    i16 32, label %bb.ad
    i16 64, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.er = icmp eq i16 %.sroa.0.0.extract.trunc.i36.i.i.i.i, 32
  br i1 %i.er, label %.sink.split.i.i.i.i, label %.thread.i37.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.es = icmp eq i16 %.sroa.0.0.extract.trunc.i36.i.i.i.i, 64
  br i1 %i.es, label %.sink.split.i.i.i.i, label %.thread.i37.i.i.i.i

.thread.i37.i.i.i.i:                              ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.et = and i32 %.sroa.0.0.copyload.i.i33.i.i.i.i, 960
  %.not.i38.i.i.i.i = icmp eq i32 %i.et, 0
  %i.eu = and i32 %.sroa.0.0.copyload.i15.i35.i.i.i.i, 960
  %.not20.i39.i.i.i.i = icmp eq i32 %i.eu, 0
  %or.cond.i40.i.i.i.i = select i1 %.not.i38.i.i.i.i, i1 true, i1 %.not20.i39.i.i.i.i
  %i.ev = select i1 %or.cond.i40.i.i.i.i, i32 458784, i32 458848
  br label %.sink.split.i.i.i.i

bb.af:                                            ; preds = %bb.y
  br label %.sink.split.i.i.i.i

bb.ag:                                            ; preds = %bb.y
  %i.ew = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %.sroa.0.0.copyload.i.i.i59.i.i = load i32, ptr %i.ex, align 2 ; 4 uses
  %.sroa.066.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i59.i.i to i16 ; 2 uses
  %i.ey = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 1) #8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %.sroa.0.0.copyload.i44.i.i.i.i = load i32, ptr %i.ez, align 2 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i44.i.i.i.i to i16 ; 3 uses
  %i.fa = icmp eq i16 %.sroa.066.0.extract.trunc.i.i.i.i, 16
  %i.fb = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 16
  %or.cond.i.i.i.i = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %or.cond.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i16 %.sroa.066.0.extract.trunc.i.i.i.i, label %.thread.i.i.i.i [
    i16 32, label %bb.ai
    i16 64, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fc = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 32
  br i1 %i.fc, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fd = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 64
  br i1 %i.fd, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fe = and i32 %.sroa.0.0.copyload.i.i.i59.i.i, 960
  %.not86.i.i.i.i = icmp eq i32 %i.fe, 0
  %i.ff = and i32 %.sroa.0.0.copyload.i44.i.i.i.i, 960
  %.not87.i.i.i.i = icmp eq i32 %i.ff, 0
  %or.cond88.i.i.i.i = select i1 %.not86.i.i.i.i, i1 true, i1 %.not87.i.i.i.i
  %.sroa.012.0.i.i.i.i = select i1 %or.cond88.i.i.i.i, i32 458784, i32 458848 ; 2 uses
  %i.fg = call noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32 %.sroa.0.0.copyload.i.i.i59.i.i) #8
  br i1 %i.fg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread.i.i.i.i
  %i.fh = call noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32 %.sroa.0.0.copyload.i44.i.i.i.i) #8
  %.not.i.i60.i.i = xor i1 %i.fh, true
  %i.fi = and i32 %.sroa.0.0.copyload.i.i.i59.i.i, 16
  %.not.i.i.i.i.i.i.i = icmp ne i32 %i.fi, 0
  %or.cond84.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %.not.i.i60.i.i
  %i.fj = and i32 %.sroa.0.0.copyload.i44.i.i.i.i, 16
  %.not.i.i.i47.i.i.i.i = icmp ne i32 %i.fj, 0
  %or.cond85.i.i.i.i = select i1 %or.cond84.i.i.i.i, i1 true, i1 %.not.i.i.i47.i.i.i.i
  br i1 %or.cond85.i.i.i.i, label %bb.al, label %.sink.split.i.i.i.i

bb.al:                                            ; preds = %bb.ak, %.thread.i.i.i.i
  %i.fk = or i32 %.sroa.012.0.i.i.i.i, 458768
  br label %.sink.split.i.i.i.i

bb.am:                                            ; preds = %bb.y, %bb.y, %bb.y
  %i.fl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %.sroa.0.0.copyload.i.i48.i.i.i.i = load i32, ptr %i.fm, align 2
  %i.fn = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 1) #8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %.sroa.0.0.copyload.i10.i.i.i.i.i = load i32, ptr %i.fo, align 2
  %i.fp = and i32 %.sroa.0.0.copyload.i.i48.i.i.i.i, 960
  %i.fq = icmp ne i32 %i.fp, 0
  %i.fr = and i32 %.sroa.0.0.copyload.i10.i.i.i.i.i, 960
  %i.fs = icmp ne i32 %i.fr, 0
  %or.cond.i49.i.i.i.i = select i1 %i.fq, i1 %i.fs, i1 false
  %i.ft = select i1 %or.cond.i49.i.i.i.i, i32 458848, i32 458784
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %.thread.i37.i.i.i.i, %bb.ae, %bb.ad, %.thread.i.i.i.i.i, %bb.ab, %bb.aa, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  %.sink.i.i.i.i = phi i32 [ 458816, %bb.ae ], [ 458768, %bb.ag ], [ 458784, %bb.ai ], [ %i.fk, %bb.al ], [ 458816, %bb.aj ], [ %i.ft, %bb.am ], [ 262176, %bb.af ], [ 458816, %bb.ab ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ 458760, %bb.y ], [ %i.em, %.thread.i.i.i.i.i ], [ 458784, %bb.aa ], [ %i.ev, %.thread.i37.i.i.i.i ], [ 131104, %bb.ad ], [ %.sroa.012.0.i.i.i.i, %bb.ak ] ; 2 uses
  store i32 %.sink.i.i.i.i, ptr %i.ea, align 2
  br label %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i

_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.y
  %.sroa.0.0.copyload.i44.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i32.i.i, %bb.y ], [ %.sink.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sroa.0111.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i44.i.i.i to i16
  %i.fu = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.fv = icmp ne i16 %.sroa.0111.0.extract.trunc.i.i.i, %i.fu
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 132
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !103
  switch i32 %i.fx, label %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i [
    i32 0, label %.sink.split.i45.i.i.i
    i32 1, label %bb.ao
    i32 2, label %bb.ap
    i32 7, label %bb.aq
    i32 8, label %bb.aq
    i32 4, label %bb.aq
    i32 3, label %bb.as
    i32 5, label %bb.at
    i32 6, label %.sink.split.i45.i.i.i
  ]

bb.ao:                                            ; preds = %bb.an
  br label %.sink.split.i45.i.i.i

bb.ap:                                            ; preds = %bb.an
  br label %.sink.split.i45.i.i.i

bb.aq:                                            ; preds = %bb.an, %bb.an, %bb.an
  %i.fy = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.fz, align 2 ; 2 uses
  %.sroa.018.0.extract.trunc.i.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i to i16
  switch i16 %.sroa.018.0.extract.trunc.i.i.i.i.i.i, label %bb.ar [
    i16 32, label %.sink.split.i45.i.i.i
    i16 64, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ga = and i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 960
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ga, 0
  %i.gb = select i1 %.not.i.i.i.i.i.i, i32 458784, i32 458848
  br label %.sink.split.i45.i.i.i

bb.as:                                            ; preds = %bb.an
  br label %.sink.split.i45.i.i.i

bb.at:                                            ; preds = %bb.an
  %i.gc = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %.sroa.0.0.copyload.i.i.i13.i.i.i.i = load i32, ptr %i.gd, align 2 ; 2 uses
  %.sroa.018.0.extract.trunc.i.i14.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i13.i.i.i.i to i16
  switch i16 %.sroa.018.0.extract.trunc.i.i14.i.i.i.i, label %bb.av [
    i16 32, label %.sink.split.i45.i.i.i
    i16 64, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.aq
  br label %.sink.split.i45.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ge = and i32 %.sroa.0.0.copyload.i.i.i13.i.i.i.i, 960
  %.not.i.i16.i.i.i.i = icmp eq i32 %i.ge, 0
  %i.gf = select i1 %.not.i.i16.i.i.i.i, i32 458784, i32 458848
  br label %.sink.split.i45.i.i.i

.sink.split.i45.i.i.i:                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.an
  %.sink.i46.i.i.i = phi i32 [ 131104, %bb.at ], [ 458784, %bb.aq ], [ 458784, %bb.as ], [ 458760, %bb.an ], [ 458768, %bb.ap ], [ 458754, %bb.ao ], [ 458760, %bb.an ], [ %i.gb, %bb.ar ], [ 458816, %bb.au ], [ %i.gf, %bb.av ] ; 2 uses
  store i32 %.sink.i46.i.i.i, ptr %i.ea, align 2
  br label %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i

_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i: ; preds = %.sink.split.i45.i.i.i, %bb.an
  %.sroa.0.0.copyload.i47.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i32.i.i, %bb.an ], [ %.sink.i46.i.i.i, %.sink.split.i45.i.i.i ]
  %.sroa.0109.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i47.i.i.i to i16
  %i.gg = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.gh = icmp ne i16 %.sroa.0109.0.extract.trunc.i.i.i, %i.gg
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i
  %i.gi = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i) #8
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store <2 x ptr> %7, ptr %2, align 16, !tbaa !107
  store i32 8, ptr %i.j, align 16, !tbaa !109
  store i32 0, ptr %i.k, align 4, !tbaa !111
  store i32 0, ptr %i.l, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store <2 x ptr> %9, ptr %3, align 16, !tbaa !107
  store i32 8, ptr %i.o, align 16, !tbaa !109
  store i32 0, ptr %i.p, align 4, !tbaa !111
  store i32 0, ptr %i.q, align 8, !tbaa !112
  call fastcc void @_ZL16collectPHIInputsRN4llvh15SmallPtrSetImplIPN6hermes5ValueEEES5_PNS1_7PhiInstE(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %.sroa.098.0117.i.i)
  %.sroa.0.0.copyload.i.i48.i.i.i = load i32, ptr %i.ea, align 2
  %i.gk = load ptr, ptr %i.n, align 8, !tbaa !113 ; 6 uses
  %i.gl = load ptr, ptr %3, align 16, !tbaa !114
  %i.gm = icmp eq ptr %i.gk, %i.gl                ; 2 uses
  %i.gn = load i32, ptr %i.p, align 4
  %i.go = load i32, ptr %i.o, align 16
  %.v.v.i4.i2.i.i.i.i.i = select i1 %i.gm, i32 %i.gn, i32 %i.go ; 2 uses
  %.v.i5.i3.i.i.i.i.i = zext i32 %.v.v.i4.i2.i.i.i.i.i to i64 ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.v.i5.i3.i.i.i.i.i, 3
  %i.gp = getelementptr i8, ptr %i.gk, i64 %.idx.i.i.i.i.i ; 4 uses
  %.not3.i4.i.i6.i4.i.i.i.i.i = icmp eq i32 %.v.v.i4.i2.i.i.i.i.i, 0
  br i1 %.not3.i4.i.i6.i4.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i, label %.lr.ph.i5.i.i7.i5.i.i.i.i.i

.lr.ph.i5.i.i7.i5.i.i.i.i.i:                      ; preds = %bb.ax, %.critedge2.i7.i.i9.i11.i.i.i.i.i
  %.sroa.0.3.i6.i.i.i.i.i = phi ptr [ %i.gr, %.critedge2.i7.i.i9.i11.i.i.i.i.i ], [ %i.gk, %bb.ax ] ; 3 uses
  %i.gq = load ptr, ptr %.sroa.0.3.i6.i.i.i.i.i, align 8, !tbaa !115
  %switch.i6.i.i8.i7.i.i.i.i.i = icmp ugt ptr %i.gq, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i.i.i.i.i, label %.critedge2.i7.i.i9.i11.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i

.critedge2.i7.i.i9.i11.i.i.i.i.i:                 ; preds = %.lr.ph.i5.i.i7.i5.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i.i.i.i.i = icmp eq ptr %i.gr, %i.gp
  br i1 %.not.i8.i.i10.i12.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i, label %.lr.ph.i5.i.i7.i5.i.i.i.i.i, !llvm.loop !116

_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i: ; preds = %.critedge2.i7.i.i9.i11.i.i.i.i.i, %.lr.ph.i5.i.i7.i5.i.i.i.i.i, %bb.ax
  %.sroa.0.4.i8.i.i.i.i.i = phi ptr [ %i.gk, %bb.ax ], [ %.sroa.0.3.i6.i.i.i.i.i, %.lr.ph.i5.i.i7.i5.i.i.i.i.i ], [ %i.gp, %.critedge2.i7.i.i9.i11.i.i.i.i.i ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.v.i5.i3.i.i.i.i.i ; 2 uses
  %.not33.i.i.i.i = icmp eq ptr %.sroa.0.4.i8.i.i.i.i.i, %i.gs
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i57.i.i, label %.lr.ph.i.i54.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i
  %i.gt = and i32 %storemerge.i.i55.i.i, 65535
  br label %._crit_edge.i.i57.i.i

._crit_edge.i.i57.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i
  %.sroa.025.0.lcssa.i.i.i.i = phi i32 [ 1023, %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i ], [ %i.gt, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %.sroa.7.0.lcssa.i.i.i.i = phi i32 [ 459775, %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i ], [ %storemerge.i.i55.i.i, %._crit_edge.loopexit.i.i.i.i ]
  %i.gu = and i32 %.sroa.0.0.copyload.i.i48.i.i.i, 65535 ; 2 uses
  %.not.i.i50.i.i.i = icmp ne i32 %i.gu, %.sroa.025.0.lcssa.i.i.i.i
  %i.gv = xor i32 %i.gu, -1
  %i.gw = and i32 %.sroa.025.0.lcssa.i.i.i.i, %i.gv
  %.not3.i.i.i58.i.i = icmp eq i32 %i.gw, 0
  %i.gx = and i1 %.not.i.i50.i.i.i, %.not3.i.i.i58.i.i
  br i1 %i.gx, label %bb.ay, label %bb.az

.lr.ph.i.i54.i.i:                                 ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i
  %.01737.i.i.i.i = phi i1 [ true, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i ], [ false, %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i ]
  %.sroa.7.036.i.i.i.i = phi i32 [ %.sroa.7.0.extract.shift.i.i56.i.i, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i ], [ 458752, %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i ]
  %.sroa.025.035.i.i.i.i = phi i32 [ %storemerge.i.i55.i.i, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i ], [ 1023, %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i ]
  %.sroa.022.034.i.i.i.i = phi ptr [ %.sroa.022.2.i.i.i.i, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i ], [ %.sroa.0.4.i8.i.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes5ValueEE5beginEv.exit.i.i.i.i ] ; 2 uses
  %i.gy = load ptr, ptr %.sroa.022.034.i.i.i.i, align 8, !tbaa !115
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %.sroa.0.0.copyload.i20.i.i.i.i = load i32, ptr %i.gz, align 2
  %.sroa.025.0.insert.ext26.i.i.i.i = and i32 %.sroa.025.035.i.i.i.i, 65535
  %.sroa.025.0.insert.insert28.i.i.i.i = or disjoint i32 %.sroa.025.0.insert.ext26.i.i.i.i, %.sroa.7.036.i.i.i.i
  %i.ha = select i1 %.01737.i.i.i.i, i32 %.sroa.025.0.insert.insert28.i.i.i.i, i32 0
  %storemerge.i.i55.i.i = or i32 %.sroa.0.0.copyload.i20.i.i.i.i, %i.ha ; 4 uses
  %.sroa.7.0.extract.shift.i.i56.i.i = and i32 %storemerge.i.i55.i.i, -65536
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.022.034.i.i.i.i, i64 8 ; 3 uses
  %.not3.i3.i.i.i.i.i = icmp eq ptr %i.hb, %i.gp
  br i1 %.not3.i3.i.i.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i

.lr.ph.i4.i.i.i.i.i:                              ; preds = %.lr.ph.i.i54.i.i, %.critedge2.i6.i.i.i.i.i
  %.sroa.022.1.i.i.i.i = phi ptr [ %i.hd, %.critedge2.i6.i.i.i.i.i ], [ %i.hb, %.lr.ph.i.i54.i.i ] ; 3 uses
  %i.hc = load ptr, ptr %.sroa.022.1.i.i.i.i, align 8, !tbaa !115
  %switch.i5.i.i.i.i.i = icmp ugt ptr %i.hc, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i.i.i.i.i, label %.critedge2.i6.i.i.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i

.critedge2.i6.i.i.i.i.i:                          ; preds = %.lr.ph.i4.i.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i.i = icmp eq ptr %i.hd, %i.gp
  br i1 %.not.i7.i.i.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i, !llvm.loop !116

_ZN4llvh19SmallPtrSetIteratorIPN6hermes5ValueEEppEv.exit.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i, %.lr.ph.i.i54.i.i
  %.sroa.022.2.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i54.i.i ], [ %.sroa.022.1.i.i.i.i, %.lr.ph.i4.i.i.i.i.i ], [ %i.hd, %.critedge2.i6.i.i.i.i.i ] ; 2 uses
  %.not.i49.i.i.i = icmp eq ptr %.sroa.022.2.i.i.i.i, %i.gs
  br i1 %.not.i49.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i54.i.i

bb.ay:                                            ; preds = %._crit_edge.i.i57.i.i
  store i32 %.sroa.7.0.lcssa.i.i.i.i, ptr %i.ea, align 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i.i57.i.i
  br i1 %i.gm, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef %i.gk) #8
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i:   ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.he = load ptr, ptr %i.i, align 8, !tbaa !113 ; 2 uses
  %i.hf = load ptr, ptr %2, align 16, !tbaa !114
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit21.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.he) #8
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit21.i.i.i.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit21.i.i.i.i: ; preds = %bb.bb, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i

_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit21.i.i.i.i, %bb.aw
  %.sroa.0.0.copyload.i51.i.i.i = load i32, ptr %i.ea, align 2
  %.sroa.0107.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i51.i.i.i to i16
  %i.hh = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.hi = icmp ne i16 %.sroa.0107.0.extract.trunc.i.i.i, %i.hh
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i
  %i.hj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dz) #8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !78 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !77 ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %.idx.i.i70.i.i = shl nuw nsw i64 %i.hn, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx.i.i70.i.i
  %.not50.i.i71.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not50.i.i71.i.i, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i82.i.i, label %.lr.ph.i.i72.i.i

.lr.ph.i.i72.i.i:                                 ; preds = %bb.bc, %.thread.i.i77.i.i
  %.054.i.i73.i.i = phi i1 [ %.242.i.i78.i.i, %.thread.i.i77.i.i ], [ true, %bb.bc ] ; 4 uses
  %.02253.i.i74.i.i = phi ptr [ %i.hv, %.thread.i.i77.i.i ], [ %i.hk, %bb.bc ] ; 2 uses
  %.sroa.0.052.i.i75.i.i = phi i16 [ %.sroa.0.141.i.i79.i.i, %.thread.i.i77.i.i ], [ 1023, %bb.bc ] ; 4 uses
  %.sroa.6.051.i.i76.i.i = phi i16 [ %.sroa.6.140.i.i80.i.i, %.thread.i.i77.i.i ], [ 7, %bb.bc ] ; 4 uses
  %i.hp = load ptr, ptr %.02253.i.i74.i.i, align 8, !tbaa !117 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load i8, ptr %i.hq, align 8, !tbaa !89
  switch i8 %i.hr, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i82.i.i [
    i8 51, label %bb.bd
    i8 50, label %bb.bd
    i8 49, label %.thread.i.i77.i.i
    i8 22, label %.thread.i.i77.i.i
  ]

bb.bd:                                            ; preds = %.lr.ph.i.i72.i.i, %.lr.ph.i.i72.i.i
  %i.hs = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.hp, i32 noundef 0) #8 ; 2 uses
  %.not27.i.i87.i.i = icmp eq ptr %i.hs, null
  br i1 %.not27.i.i87.i.i, label %.thread.i.i77.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %.sroa.0.0.copyload.i.i.i88.i.i = load i32, ptr %i.ht, align 2 ; 2 uses
  br i1 %.054.i.i73.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.6.0.insert.ext.i.i89.i.i = zext i16 %.sroa.6.051.i.i76.i.i to i32
  %.sroa.6.0.insert.shift.i.i90.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i89.i.i, 16
  %.sroa.0.0.insert.ext.i.i91.i.i = zext i16 %.sroa.0.052.i.i75.i.i to i32
  %.sroa.0.0.insert.insert.i.i92.i.i = or disjoint i32 %.sroa.6.0.insert.shift.i.i90.i.i, %.sroa.0.0.insert.ext.i.i91.i.i
  %i.hu = or i32 %.sroa.0.0.copyload.i.i.i88.i.i, %.sroa.0.0.insert.insert.i.i92.i.i
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %storemerge.i.i93.i.i = phi i32 [ %i.hu, %bb.bf ], [ %.sroa.0.0.copyload.i.i.i88.i.i, %bb.be ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i94.i.i = trunc i32 %storemerge.i.i93.i.i to i16
  %.sroa.6.0.extract.shift.i.i95.i.i = lshr i32 %storemerge.i.i93.i.i, 16
  %.sroa.6.0.extract.trunc.i.i96.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i95.i.i to i16
  br label %.thread.i.i77.i.i

.thread.i.i77.i.i:                                ; preds = %bb.bg, %bb.bd, %.lr.ph.i.i72.i.i, %.lr.ph.i.i72.i.i
  %.242.i.i78.i.i = phi i1 [ false, %bb.bg ], [ %.054.i.i73.i.i, %.lr.ph.i.i72.i.i ], [ %.054.i.i73.i.i, %.lr.ph.i.i72.i.i ], [ %.054.i.i73.i.i, %bb.bd ]
  %.sroa.0.141.i.i79.i.i = phi i16 [ %.sroa.0.0.extract.trunc.i.i94.i.i, %bb.bg ], [ %.sroa.0.052.i.i75.i.i, %.lr.ph.i.i72.i.i ], [ %.sroa.0.052.i.i75.i.i, %.lr.ph.i.i72.i.i ], [ %.sroa.0.052.i.i75.i.i, %bb.bd ] ; 2 uses
  %.sroa.6.140.i.i80.i.i = phi i16 [ %.sroa.6.0.extract.trunc.i.i96.i.i, %bb.bg ], [ %.sroa.6.051.i.i76.i.i, %.lr.ph.i.i72.i.i ], [ %.sroa.6.051.i.i76.i.i, %.lr.ph.i.i72.i.i ], [ %.sroa.6.051.i.i76.i.i, %bb.bd ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.02253.i.i74.i.i, i64 8 ; 2 uses
  %.not.i.i81.i.i = icmp eq ptr %i.hv, %i.ho
  br i1 %.not.i.i81.i.i, label %bb.bh, label %.lr.ph.i.i72.i.i

bb.bh:                                            ; preds = %.thread.i.i77.i.i
  %i.hw = zext i16 %.sroa.6.140.i.i80.i.i to i32
  %i.hx = shl nuw i32 %i.hw, 16
  %i.hy = zext i16 %.sroa.0.141.i.i79.i.i to i32
  %i.hz = or disjoint i32 %i.hx, %i.hy
  br label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i82.i.i

_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i82.i.i: ; preds = %.lr.ph.i.i72.i.i, %bb.bh, %bb.bc
  %.not.lcssa.i.i83.i.i = phi i32 [ 459775, %bb.bc ], [ %i.hz, %bb.bh ], [ 459775, %.lr.ph.i.i72.i.i ] ; 3 uses
  %.sroa.0.0.copyload.i.i84.i.i = load i32, ptr %i.ea, align 2 ; 2 uses
  %i.ia = and i32 %.not.lcssa.i.i83.i.i, 65535    ; 2 uses
  %i.ib = and i32 %.sroa.0.0.copyload.i.i84.i.i, 65535 ; 2 uses
  %.not.i5.i85.i.i = icmp ne i32 %i.ib, %i.ia
  %i.ic = xor i32 %i.ib, -1
  %i.id = and i32 %i.ia, %i.ic
  %.not3.i.i86.i.i = icmp eq i32 %i.id, 0
  %i.ie = and i1 %.not.i5.i85.i.i, %.not3.i.i86.i.i
  br i1 %i.ie, label %bb.bi, label %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i

bb.bi:                                            ; preds = %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i82.i.i
  store i32 %.not.lcssa.i.i83.i.i, ptr %i.ea, align 2
  br label %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i

_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i:  ; preds = %bb.bi, %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i82.i.i
  %.sroa.0.0.copyload.i52.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i84.i.i, %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i82.i.i ], [ %.not.lcssa.i.i83.i.i, %bb.bi ]
  %.sroa.0105.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i52.i.i.i to i16
  %i.if = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.ig = icmp ne i16 %.sroa.0105.0.extract.trunc.i.i.i, %i.if
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.ih = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %.sroa.0.0.copyload.i.i53.i.i.i = load i32, ptr %i.ii, align 2 ; 3 uses
  %.sroa.0.0.copyload.i5.i.i.i.i = load i32, ptr %i.ea, align 2 ; 2 uses
  %i.ij = and i32 %.sroa.0.0.copyload.i.i53.i.i.i, 65535 ; 2 uses
  %i.ik = and i32 %.sroa.0.0.copyload.i5.i.i.i.i, 65535 ; 2 uses
  %.not.i.i54.i.i.i = icmp ne i32 %i.ik, %i.ij
  %i.il = xor i32 %i.ik, -1
  %i.im = and i32 %i.ij, %i.il
  %.not3.i.i55.i.i.i = icmp eq i32 %i.im, 0
  %i.in = and i1 %.not.i.i54.i.i.i, %.not3.i.i55.i.i.i
  br i1 %i.in, label %bb.bk, label %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  store i32 %.sroa.0.0.copyload.i.i53.i.i.i, ptr %i.ea, align 2
  br label %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i

_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %.sroa.0.0.copyload.i56.i.i.i = phi i32 [ %.sroa.0.0.copyload.i5.i.i.i.i, %bb.bj ], [ %.sroa.0.0.copyload.i.i53.i.i.i, %bb.bk ]
  %.sroa.0103.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i56.i.i.i to i16
  %i.io = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.ip = icmp ne i16 %.sroa.0103.0.extract.trunc.i.i.i, %i.io
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.bl:                                            ; preds = %.lr.ph.i.i
  %i.iq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %.sroa.0.0.copyload.i.i57.i.i.i = load i32, ptr %i.ir, align 2 ; 3 uses
  %.sroa.0.0.copyload.i5.i58.i.i.i = load i32, ptr %i.ea, align 2 ; 2 uses
  %i.is = and i32 %.sroa.0.0.copyload.i.i57.i.i.i, 65535 ; 2 uses
  %i.it = and i32 %.sroa.0.0.copyload.i5.i58.i.i.i, 65535 ; 2 uses
  %.not.i.i59.i.i.i = icmp ne i32 %i.it, %i.is
  %i.iu = xor i32 %i.it, -1
  %i.iv = and i32 %i.is, %i.iu
  %.not3.i.i60.i.i.i = icmp eq i32 %i.iv, 0
  %i.iw = and i1 %.not.i.i59.i.i.i, %.not3.i.i60.i.i.i
  br i1 %i.iw, label %bb.bm, label %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  store i32 %.sroa.0.0.copyload.i.i57.i.i.i, ptr %i.ea, align 2
  br label %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i

_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.0.0.copyload.i61.i.i.i = phi i32 [ %.sroa.0.0.copyload.i5.i58.i.i.i, %bb.bl ], [ %.sroa.0.0.copyload.i.i57.i.i.i, %bb.bm ]
  %.sroa.0101.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i61.i.i.i to i16
  %i.ix = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.iy = icmp ne i16 %.sroa.0101.0.extract.trunc.i.i.i, %i.ix
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i
  %.val.val.i.i.i = load ptr, ptr %5, align 8, !tbaa !119 ; 4 uses
  %.val.val43.i.i.i = load i32, ptr %i.t, align 8, !tbaa !122 ; 3 uses
  %i.iz = icmp eq i32 %.val.val43.i.i.i, 0
  br i1 %i.iz, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ja = ptrtoint ptr %.sroa.098.0117.i.i to i64
  %i.jb = trunc i64 %i.ja to i32                  ; 2 uses
  %i.jc = lshr i32 %i.jb, 4
  %i.jd = lshr i32 %i.jb, 9
  %i.je = xor i32 %i.jc, %i.jd
  %i.jf = add i32 %.val.val43.i.i.i, -1           ; 3 uses
  %.02944.i.i.i.i.i.i.i = and i32 %i.jf, %i.je    ; 3 uses
  %i.jg = zext nneg i32 %.02944.i.i.i.i.i.i.i to i64
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i.i, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !85 ; 3 uses
  %i.jj = icmp eq ptr %.sroa.098.0117.i.i, %i.ji
  br i1 %i.jj, label %_ZN6hermes17CallGraphProvider15getKnownCalleesEPNS_8CallInstE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i50.i.i, !prof !17

.lr.ph.i.i.i.i.i50.i.i:                           ; preds = %bb.bo, %bb.bp
  %i.jk = phi ptr [ %i.jq, %bb.bp ], [ %i.ji, %bb.bo ]
  %.02947.i.i.i.i.i51.i.i = phi i32 [ %.029.i.i.i.i.i53.i.i, %bb.bp ], [ %.02944.i.i.i.i.i.i.i, %bb.bo ]
  %.02746.i.i.i.i.i52.i.i = phi i32 [ %i.jm, %bb.bp ], [ 1, %bb.bo ] ; 2 uses
  %i.jl = icmp eq ptr %i.jk, inttoptr (i64 -8 to ptr)
  br i1 %i.jl, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i, label %bb.bp, !prof !18

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i50.i.i
  %i.jm = add i32 %.02746.i.i.i.i.i52.i.i, 1
  %i.jn = add i32 %.02746.i.i.i.i.i52.i.i, %.02947.i.i.i.i.i51.i.i
  %.029.i.i.i.i.i53.i.i = and i32 %i.jn, %i.jf    ; 2 uses
  %i.jo = zext i32 %.029.i.i.i.i.i53.i.i to i64
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i.i, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !85 ; 2 uses
  %i.jr = icmp eq ptr %.sroa.098.0117.i.i, %i.jq
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i50.i.i, !prof !19, !llvm.loop !123

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bp, %bb.bq
  %i.js = phi ptr [ %i.jy, %bb.bq ], [ %i.ji, %bb.bp ]
  %.02947.i.i.i.i.i.i.i.i = phi i32 [ %.029.i.i.i.i.i.i.i.i, %bb.bq ], [ %.02944.i.i.i.i.i.i.i, %bb.bp ]
  %.02746.i.i.i.i.i.i.i.i = phi i32 [ %i.ju, %bb.bq ], [ 1, %bb.bp ] ; 2 uses
  %i.jt = icmp eq ptr %i.js, inttoptr (i64 -8 to ptr)
  br i1 %i.jt, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i, label %bb.bq, !prof !18

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ju = add i32 %.02746.i.i.i.i.i.i.i.i, 1
  %i.jv = add i32 %.02746.i.i.i.i.i.i.i.i, %.02947.i.i.i.i.i.i.i.i
  %.029.i.i.i.i.i.i.i.i = and i32 %i.jv, %i.jf    ; 2 uses
  %i.jw = zext i32 %.029.i.i.i.i.i.i.i.i to i64
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i.i, i64 %i.jw ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !85 ; 2 uses
  %i.jz = icmp eq ptr %.sroa.098.0117.i.i, %i.jy
  br i1 %i.jz, label %_ZN6hermes17CallGraphProvider15getKnownCalleesEPNS_8CallInstE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !prof !19, !llvm.loop !123

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ka = zext i32 %.val.val43.i.i.i to i64
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i.i, i64 %i.ka
  br label %_ZN6hermes17CallGraphProvider15getKnownCalleesEPNS_8CallInstE.exit.i.i.i.i

_ZN6hermes17CallGraphProvider15getKnownCalleesEPNS_8CallInstE.exit.i.i.i.i: ; preds = %bb.bq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i, %bb.bo
  %.sink.i.i.ph.pn.i.i.i.i.i.i = phi ptr [ %i.kb, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i ], [ %i.jh, %bb.bo ], [ %i.jx, %bb.bq ] ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i.i, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i.i, i64 16
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !124
  %i.kf = icmp eq i32 %i.ke, 0
  %i.kg = load ptr, ptr %i.kc, align 8, !tbaa !127 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i.i, i64 24
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !128 ; 2 uses
  %i.kj = zext i32 %i.ki to i64                   ; 3 uses
  br i1 %i.kf, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN6hermes17CallGraphProvider15getKnownCalleesEPNS_8CallInstE.exit.i.i.i.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kj ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i

bb.bs:                                            ; preds = %_ZN6hermes17CallGraphProvider15getKnownCalleesEPNS_8CallInstE.exit.i.i.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.kj, 3
  %i.kl = getelementptr i8, ptr %i.kg, i64 %.idx.i.i.i.i.i.i.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i.i.i.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not5.i5.i10.i2.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i.i.i

.lr.ph.i6.i12.i3.i.i.i.i.i.i.i:                   ; preds = %bb.bs, %.critedge2.i8.i14.i6.i.i.i.i.i.i.i
  %.sroa.0.3.i4.i.i.i.i.i.i.i = phi ptr [ %i.kn, %.critedge2.i8.i14.i6.i.i.i.i.i.i.i ], [ %i.kg, %bb.bs ] ; 3 uses
  %i.km = load ptr, ptr %.sroa.0.3.i4.i.i.i.i.i.i.i, align 8, !tbaa !15
  %magicptr.i7.i13.i5.i.i.i.i.i.i.i = ptrtoint ptr %i.km to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i.i.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i.i.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i6.i12.i3.i.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i.i.i.i.i = icmp eq ptr %i.kn, %i.kl
  br i1 %.not.i9.i15.i7.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i.i.i, !llvm.loop !129

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i: ; preds = %.critedge2.i8.i14.i6.i.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i.i, %bb.bs, %bb.br
  %.pn14.i.i.i.i.i.i.i = phi ptr [ %i.kk, %bb.br ], [ %i.kg, %bb.bs ], [ %.sroa.0.3.i4.i.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i.i ], [ %i.kl, %.critedge2.i8.i14.i6.i.i.i.i.i.i.i ] ; 2 uses
  %.pn12.i.i.i.i.i.i.i = phi ptr [ %i.kk, %bb.br ], [ %i.kl, %bb.bs ], [ %i.kl, %.lr.ph.i6.i12.i3.i.i.i.i.i.i.i ], [ %i.kl, %.critedge2.i8.i14.i6.i.i.i.i.i.i.i ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kj ; 2 uses
  %.not28.i.i.i.i.i = icmp eq ptr %.pn14.i.i.i.i.i.i.i, %i.ko
  br i1 %.not28.i.i.i.i.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i
  %.01432.i.i.i.i.i = phi i1 [ false, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i ], [ true, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i ]
  %.sroa.7.031.i.i.i.i.i = phi i32 [ %.sroa.7.0.extract.shift.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i ], [ 458752, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i ]
  %.sroa.020.030.i.i.i.i.i = phi i32 [ %storemerge.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i ], [ 1023, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i ]
  %.sroa.017.029.i.i.i.i.i = phi ptr [ %.sroa.017.2.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i ], [ %.pn14.i.i.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i ] ; 2 uses
  %i.kp = load ptr, ptr %.sroa.017.029.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  br i1 %.01432.i.i.i.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 18
  %.sroa.0.0.copyload.i.i.i66.i.i.i = load i32, ptr %i.kq, align 2
  br label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.020.0.insert.ext21.i.i.i.i.i = and i32 %.sroa.020.030.i.i.i.i.i, 65535
  %.sroa.020.0.insert.insert23.i.i.i.i.i = or disjoint i32 %.sroa.020.0.insert.ext21.i.i.i.i.i, %.sroa.7.031.i.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 18
  %.sroa.0.0.copyload.i15.i.i62.i.i.i = load i32, ptr %i.kr, align 2
  %i.ks = or i32 %.sroa.020.0.insert.insert23.i.i.i.i.i, %.sroa.0.0.copyload.i15.i.i62.i.i.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %storemerge.i.i.i.i.i = phi i32 [ %i.ks, %bb.bu ], [ %.sroa.0.0.copyload.i.i.i66.i.i.i, %bb.bt ] ; 5 uses
  %.sroa.7.0.extract.shift.i.i.i.i.i = and i32 %storemerge.i.i.i.i.i, -65536
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.017.029.i.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i.i.i.i = icmp eq ptr %i.kt, %.pn12.i.i.i.i.i.i.i
  br i1 %.not5.i3.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i.i

.lr.ph.i4.i.i.i.i.i.i.i:                          ; preds = %bb.bv, %.critedge2.i6.i.i.i.i.i.i.i
  %.sroa.017.1.i.i.i.i.i = phi ptr [ %i.kv, %.critedge2.i6.i.i.i.i.i.i.i ], [ %i.kt, %bb.bv ] ; 3 uses
  %i.ku = load ptr, ptr %.sroa.017.1.i.i.i.i.i, align 8, !tbaa !15
  %magicptr.i5.i.i.i.i.i.i.i = ptrtoint ptr %i.ku to i64
  switch i64 %magicptr.i5.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i.i.i.i
  ]

.critedge2.i6.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i4.i.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i.i.i.i = icmp eq ptr %i.kv, %.pn12.i.i.i.i.i.i.i
  br i1 %.not.i7.i.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i.i, !llvm.loop !129

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i.i, %bb.bv
  %.sroa.017.2.i.i.i.i.i = phi ptr [ %i.kt, %bb.bv ], [ %.sroa.017.1.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i.i ], [ %i.kv, %.critedge2.i6.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i63.i.i.i = icmp eq ptr %.sroa.017.2.i.i.i.i.i, %i.ko
  br i1 %.not.i.i63.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i.i
  %i.kw = and i32 %storemerge.i.i.i.i.i, 65535    ; 2 uses
  %i.kx = and i32 %.sroa.0.0.copyload.i.i32.i.i, 65535 ; 2 uses
  %.not.i.i.i64.i.i.i = icmp ne i32 %i.kx, %i.kw
  %i.ky = xor i32 %i.kx, -1
  %i.kz = and i32 %i.kw, %i.ky
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.kz, 0
  %i.la = and i1 %.not.i.i.i64.i.i.i, %.not3.i.i.i.i.i.i
  br i1 %i.la, label %bb.bw, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i
  store i32 %storemerge.i.i.i.i.i, ptr %i.ea, align 2
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i50.i.i, %bb.bw, %._crit_edge.i.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i, %bb.bn
  %.sroa.0.0.copyload.i67.i.i.i = phi i32 [ %storemerge.i.i.i.i.i, %bb.bw ], [ %.sroa.0.0.copyload.i.i32.i.i, %bb.bn ], [ %.sroa.0.0.copyload.i.i32.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i32.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i32.i.i, %.lr.ph.i.i.i.i.i50.i.i ]
  %.sroa.099.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i67.i.i.i to i16
  %i.lb = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.lc = icmp ne i16 %.sroa.099.0.extract.trunc.i.i.i, %i.lb
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.bx:                                            ; preds = %.lr.ph.i.i
  %i.ld = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %.sroa.0.0.copyload.i7.i.i.i.i = load i32, ptr %i.le, align 2 ; 3 uses
  %i.lf = and i32 %.sroa.0.0.copyload.i7.i.i.i.i, 65535 ; 2 uses
  %i.lg = and i32 %.sroa.0.0.copyload.i.i32.i.i, 65535 ; 2 uses
  %.not.i.i69.i.i.i = icmp ne i32 %i.lg, %i.lf
  %i.lh = xor i32 %i.lg, -1
  %i.li = and i32 %i.lf, %i.lh
  %.not3.i.i70.i.i.i = icmp eq i32 %i.li, 0
  %i.lj = and i1 %.not.i.i69.i.i.i, %.not3.i.i70.i.i.i
  br i1 %i.lj, label %bb.by, label %._ZL15inferReturnInstPN6hermes10ReturnInstE.exit_crit_edge.i.i.i

._ZL15inferReturnInstPN6hermes10ReturnInstE.exit_crit_edge.i.i.i: ; preds = %bb.bx
  %.sroa.0.0.copyload.i71.pre.i.i.i = load i32, ptr %i.ea, align 2
  br label %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i

bb.by:                                            ; preds = %bb.bx
  store i32 %.sroa.0.0.copyload.i7.i.i.i.i, ptr %i.ea, align 2
  br label %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i

_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i: ; preds = %bb.by, %._ZL15inferReturnInstPN6hermes10ReturnInstE.exit_crit_edge.i.i.i
  %.sroa.0.0.copyload.i71.i.i.i = phi i32 [ %.sroa.0.0.copyload.i71.pre.i.i.i, %._ZL15inferReturnInstPN6hermes10ReturnInstE.exit_crit_edge.i.i.i ], [ %.sroa.0.0.copyload.i7.i.i.i.i, %bb.by ]
  %.sroa.097.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i71.i.i.i to i16
  %i.lk = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.ll = icmp ne i16 %.sroa.097.0.extract.trunc.i.i.i, %i.lk
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i
  %i.lm = load ptr, ptr %i.d, align 8, !tbaa !130 ; 4 uses
  %i.ln = load i32, ptr %i.r, align 8, !tbaa !133 ; 3 uses
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lp = ptrtoint ptr %.sroa.098.0117.i.i to i64
  %i.lq = trunc i64 %i.lp to i32                  ; 2 uses
  %i.lr = lshr i32 %i.lq, 4
  %i.ls = lshr i32 %i.lq, 9
  %i.lt = xor i32 %i.lr, %i.ls
  %i.lu = add i32 %i.ln, -1                       ; 3 uses
  %.02944.i.i.i.i73.i.i.i = and i32 %i.lu, %i.lt  ; 3 uses
  %i.lv = zext nneg i32 %.02944.i.i.i.i73.i.i.i to i64
  %i.lw = getelementptr inbounds nuw [32 x i8], ptr %i.lm, i64 %i.lv ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !134 ; 3 uses
  %i.ly = icmp eq ptr %.sroa.098.0117.i.i, %i.lx
  br i1 %i.ly, label %_ZN6hermes17CallGraphProvider17getKnownReceiversEPNS_16LoadPropertyInstE.exit.i.i.i.i, label %.lr.ph.i.i.i.i74.i.i.i, !prof !17

.lr.ph.i.i.i.i74.i.i.i:                           ; preds = %bb.ca, %bb.cb
  %i.lz = phi ptr [ %i.mf, %bb.cb ], [ %i.lx, %bb.ca ]
  %.02947.i.i.i.i75.i.i.i = phi i32 [ %.029.i.i.i.i77.i.i.i, %bb.cb ], [ %.02944.i.i.i.i73.i.i.i, %bb.ca ]
  %.02746.i.i.i.i76.i.i.i = phi i32 [ %i.mb, %bb.cb ], [ 1, %bb.ca ] ; 2 uses
  %i.ma = icmp eq ptr %i.lz, inttoptr (i64 -8 to ptr)
  br i1 %i.ma, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %bb.cb, !prof !18

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i74.i.i.i
  %i.mb = add i32 %.02746.i.i.i.i76.i.i.i, 1
  %i.mc = add i32 %.02746.i.i.i.i76.i.i.i, %.02947.i.i.i.i75.i.i.i
  %.029.i.i.i.i77.i.i.i = and i32 %i.mc, %i.lu    ; 2 uses
  %i.md = zext i32 %.029.i.i.i.i77.i.i.i to i64
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.lm, i64 %i.md
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !134 ; 2 uses
  %i.mg = icmp eq ptr %.sroa.098.0117.i.i, %i.mf
  br i1 %i.mg, label %.lr.ph.i.i.i.i.i78.i.i.i, label %.lr.ph.i.i.i.i74.i.i.i, !prof !19, !llvm.loop !136

.lr.ph.i.i.i.i.i78.i.i.i:                         ; preds = %bb.cb, %bb.cc
  %i.mh = phi ptr [ %i.mn, %bb.cc ], [ %i.lx, %bb.cb ]
  %.02947.i.i.i.i.i79.i.i.i = phi i32 [ %.029.i.i.i.i.i81.i.i.i, %bb.cc ], [ %.02944.i.i.i.i73.i.i.i, %bb.cb ]
  %.02746.i.i.i.i.i80.i.i.i = phi i32 [ %i.mj, %bb.cc ], [ 1, %bb.cb ] ; 2 uses
  %i.mi = icmp eq ptr %i.mh, inttoptr (i64 -8 to ptr)
  br i1 %i.mi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i, label %bb.cc, !prof !18

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i.i78.i.i.i
  %i.mj = add i32 %.02746.i.i.i.i.i80.i.i.i, 1
  %i.mk = add i32 %.02746.i.i.i.i.i80.i.i.i, %.02947.i.i.i.i.i79.i.i.i
  %.029.i.i.i.i.i81.i.i.i = and i32 %i.mk, %i.lu  ; 2 uses
  %i.ml = zext i32 %.029.i.i.i.i.i81.i.i.i to i64
  %i.mm = getelementptr inbounds nuw [32 x i8], ptr %i.lm, i64 %i.ml ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !134 ; 2 uses
  %i.mo = icmp eq ptr %.sroa.098.0117.i.i, %i.mn
  br i1 %i.mo, label %_ZN6hermes17CallGraphProvider17getKnownReceiversEPNS_16LoadPropertyInstE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i78.i.i.i, !prof !19, !llvm.loop !136

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i78.i.i.i
  %i.mp = zext i32 %i.ln to i64
  %i.mq = getelementptr inbounds nuw [32 x i8], ptr %i.lm, i64 %i.mp
  br label %_ZN6hermes17CallGraphProvider17getKnownReceiversEPNS_16LoadPropertyInstE.exit.i.i.i.i

_ZN6hermes17CallGraphProvider17getKnownReceiversEPNS_16LoadPropertyInstE.exit.i.i.i.i: ; preds = %bb.cc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i, %bb.ca
  %.sink.i.i.ph.pn.i.i.i82.i.i.i = phi ptr [ %i.mq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i.i ], [ %i.lw, %bb.ca ], [ %i.mm, %bb.cc ] ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i82.i.i.i, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i82.i.i.i, i64 16
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !137
  %i.mu = icmp eq i32 %i.mt, 0
  %i.mv = load ptr, ptr %i.mr, align 8, !tbaa !140 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i82.i.i.i, i64 24
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !141 ; 2 uses
  %i.my = zext i32 %i.mx to i64                   ; 3 uses
  br i1 %i.mu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZN6hermes17CallGraphProvider17getKnownReceiversEPNS_16LoadPropertyInstE.exit.i.i.i.i
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.my ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i

bb.ce:                                            ; preds = %_ZN6hermes17CallGraphProvider17getKnownReceiversEPNS_16LoadPropertyInstE.exit.i.i.i.i
  %.idx.i.i.i.i34.i.i = shl nuw nsw i64 %i.my, 3
  %i.na = getelementptr i8, ptr %i.mv, i64 %.idx.i.i.i.i34.i.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i.i35.i.i = icmp eq i32 %i.mx, 0
  br i1 %.not5.i5.i10.i2.i.i.i.i35.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i36.i.i

.lr.ph.i6.i12.i3.i.i.i.i36.i.i:                   ; preds = %bb.ce, %.critedge2.i8.i14.i6.i.i.i.i39.i.i
  %.sroa.0.3.i4.i.i.i.i37.i.i = phi ptr [ %i.nc, %.critedge2.i8.i14.i6.i.i.i.i39.i.i ], [ %i.mv, %bb.ce ] ; 3 uses
  %i.nb = load ptr, ptr %.sroa.0.3.i4.i.i.i.i37.i.i, align 8, !tbaa !117
  %magicptr.i7.i13.i5.i.i.i.i38.i.i = ptrtoint ptr %i.nb to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i.i38.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i.i39.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i.i39.i.i
  ]

.critedge2.i8.i14.i6.i.i.i.i39.i.i:               ; preds = %.lr.ph.i6.i12.i3.i.i.i.i36.i.i, %.lr.ph.i6.i12.i3.i.i.i.i36.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i.i37.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i.i40.i.i = icmp eq ptr %i.nc, %i.na
  br i1 %.not.i9.i15.i7.i.i.i.i40.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i36.i.i, !llvm.loop !142

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i: ; preds = %.critedge2.i8.i14.i6.i.i.i.i39.i.i, %.lr.ph.i6.i12.i3.i.i.i.i36.i.i, %bb.ce, %bb.cd
  %.pn14.i.i.i.i41.i.i = phi ptr [ %i.mz, %bb.cd ], [ %i.mv, %bb.ce ], [ %i.na, %.critedge2.i8.i14.i6.i.i.i.i39.i.i ], [ %.sroa.0.3.i4.i.i.i.i37.i.i, %.lr.ph.i6.i12.i3.i.i.i.i36.i.i ] ; 2 uses
  %.pn12.i.i.i.i42.i.i = phi ptr [ %i.mz, %bb.cd ], [ %i.na, %bb.ce ], [ %i.na, %.lr.ph.i6.i12.i3.i.i.i.i36.i.i ], [ %i.na, %.critedge2.i8.i14.i6.i.i.i.i39.i.i ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.my ; 2 uses
  %.not177.i.i.i.i = icmp eq ptr %.pn14.i.i.i.i41.i.i, %i.nd
  br i1 %.not177.i.i.i.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %.lr.ph182.i.i.i.i

.lr.ph182.i.i.i.i:                                ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i
  %.050181.i.i.i.i = phi i8 [ %.151.lcssa.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i ], [ 1, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.7.0180.i.i.i.i = phi i16 [ %.sroa.7.1.lcssa.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i ], [ 7, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.0131.0179.i.i.i.i = phi i16 [ %.sroa.0131.1.lcssa.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i ], [ 1023, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.0127.0178.i.i.i.i = phi ptr [ %.sroa.0127.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i ], [ %.pn14.i.i.i.i41.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i ] ; 2 uses
  %i.ne = load ptr, ptr %.sroa.0127.0178.i.i.i.i, align 8, !tbaa !117 ; 6 uses
  %i.nf = load ptr, ptr %i.e, align 8, !tbaa !143 ; 2 uses
  %i.ng = load i32, ptr %i.s, align 8, !tbaa !146 ; 2 uses
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph182.i.i.i.i
  %i.ni = ptrtoint ptr %i.ne to i64
  %i.nj = trunc i64 %i.ni to i32                  ; 2 uses
  %i.nk = lshr i32 %i.nj, 4
  %i.nl = lshr i32 %i.nj, 9
  %i.nm = xor i32 %i.nk, %i.nl                    ; 2 uses
  %i.nn = add i32 %i.ng, -1                       ; 2 uses
  %.02944.i.i.i83.i.i.i.i = and i32 %i.nm, %i.nn  ; 2 uses
  %i.no = zext nneg i32 %.02944.i.i.i83.i.i.i.i to i64
  %i.np = getelementptr inbounds nuw [32 x i8], ptr %i.nf, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !117 ; 2 uses
  %i.nr = icmp eq ptr %i.ne, %i.nq
  br i1 %i.nr, label %_ZN6hermes17CallGraphProvider16hasUnknownStoresEPNS_11InstructionE.exit.i.i.i.i, label %.lr.ph.i.i.i84.i.i.i.i, !prof !17

.lr.ph.i.i.i84.i.i.i.i:                           ; preds = %bb.cf, %bb.cg
  %i.ns = phi ptr [ %i.ny, %bb.cg ], [ %i.nq, %bb.cf ]
  %.02947.i.i.i85.i.i.i.i = phi i32 [ %.029.i.i.i87.i.i.i.i, %bb.cg ], [ %.02944.i.i.i83.i.i.i.i, %bb.cf ]
  %.02746.i.i.i86.i.i.i.i = phi i32 [ %i.nu, %bb.cg ], [ 1, %bb.cf ] ; 2 uses
  %i.nt = icmp eq ptr %i.ns, inttoptr (i64 -8 to ptr)
  br i1 %i.nt, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %bb.cg, !prof !18

bb.cg:                                            ; preds = %.lr.ph.i.i.i84.i.i.i.i
  %i.nu = add i32 %.02746.i.i.i86.i.i.i.i, 1
  %i.nv = add i32 %.02746.i.i.i86.i.i.i.i, %.02947.i.i.i85.i.i.i.i
  %.029.i.i.i87.i.i.i.i = and i32 %i.nv, %i.nn    ; 2 uses
  %i.nw = zext i32 %.029.i.i.i87.i.i.i.i to i64
  %i.nx = getelementptr inbounds nuw [32 x i8], ptr %i.nf, i64 %i.nw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !117 ; 2 uses
  %i.nz = icmp eq ptr %i.ne, %i.ny
  br i1 %i.nz, label %_ZN6hermes17CallGraphProvider16hasUnknownStoresEPNS_11InstructionE.exit.i.i.i.i, label %.lr.ph.i.i.i84.i.i.i.i, !prof !19, !llvm.loop !147

_ZN6hermes17CallGraphProvider16hasUnknownStoresEPNS_11InstructionE.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %i.oa = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 1) #8 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 5 uses
  %i.oc = load i8, ptr %i.ob, align 8, !tbaa !89
  %i.od = icmp eq i8 %i.oc, 53
  br i1 %i.od, label %bb.ch, label %_ZL15isOwnedPropertyPN6hermes15AllocObjectInstEPNS_5ValueE.exit.i.i.i.i

bb.ch:                                            ; preds = %_ZN6hermes17CallGraphProvider16hasUnknownStoresEPNS_11InstructionE.exit.i.i.i.i
  %i.oe = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ob) #8 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !78 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !77 ; 2 uses
  %i.oi = zext i32 %i.oh to i64
  %.idx.i.i90.i.i.i = shl nuw nsw i64 %i.oi, 3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 %.idx.i.i90.i.i.i
  %.not25.not.i.i.i.i.i = icmp eq i32 %i.oh, 0
  br i1 %.not25.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %.lr.ph.i.i91.i.i.i

.lr.ph.i.i91.i.i.i:                               ; preds = %bb.ch, %.critedge.i.i.i.i.i
  %.01726.i.i.i.i.i = phi ptr [ %i.ot, %.critedge.i.i.i.i.i ], [ %i.of, %bb.ch ] ; 2 uses
  %i.ok = load ptr, ptr %.01726.i.i.i.i.i, align 8, !tbaa !117 ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !89
  %i.on = add i8 %i.om, -43
  %i.oo = icmp ult i8 %i.on, -4
  %.not2124.i.i.i.i.i = icmp eq ptr %i.ok, null
  %.not21.i.i.i.i.i = or i1 %.not2124.i.i.i.i.i, %i.oo
  br i1 %.not21.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i91.i.i.i
  %i.op = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ok, i32 noundef 1) #8
  %i.oq = icmp eq ptr %i.op, %i.ob
  br i1 %i.oq, label %bb.cj, label %.critedge.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.or = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ok, i32 noundef 2) #8
  %i.os = icmp eq ptr %i.oa, %i.or
  br i1 %i.os, label %_ZL15isOwnedPropertyPN6hermes15AllocObjectInstEPNS_5ValueE.exit.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.cj, %bb.ci, %.lr.ph.i.i91.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.01726.i.i.i.i.i, i64 8 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.ot, %i.oj
  br i1 %.not.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %.lr.ph.i.i91.i.i.i

_ZL15isOwnedPropertyPN6hermes15AllocObjectInstEPNS_5ValueE.exit.i.i.i.i: ; preds = %bb.cj, %_ZN6hermes17CallGraphProvider16hasUnknownStoresEPNS_11InstructionE.exit.i.i.i.i
  %i.ou = load ptr, ptr %i.e, align 8, !tbaa !143 ; 3 uses
  %i.ov = load i32, ptr %i.s, align 8, !tbaa !146 ; 3 uses
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZL15isOwnedPropertyPN6hermes15AllocObjectInstEPNS_5ValueE.exit.i.i.i.i
  %i.ox = add i32 %i.ov, -1                       ; 2 uses
  %.02944.i.i.i.i88.i.i.i.i = and i32 %i.ox, %i.nm ; 2 uses
  %i.oy = zext nneg i32 %.02944.i.i.i.i88.i.i.i.i to i64
  %i.oz = getelementptr inbounds nuw [32 x i8], ptr %i.ou, i64 %i.oy ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !117 ; 2 uses
  %i.pb = icmp eq ptr %i.ne, %i.pa
  br i1 %i.pb, label %_ZN6hermes17CallGraphProvider14getKnownStoresEPNS_11InstructionE.exit.i.i.i.i, label %.lr.ph.i.i.i.i89.i.i.i.i, !prof !17

.lr.ph.i.i.i.i89.i.i.i.i:                         ; preds = %bb.ck, %bb.cl
  %i.pc = phi ptr [ %i.pi, %bb.cl ], [ %i.pa, %bb.ck ]
  %.02947.i.i.i.i90.i.i.i.i = phi i32 [ %.029.i.i.i.i92.i.i.i.i, %bb.cl ], [ %.02944.i.i.i.i88.i.i.i.i, %bb.ck ]
  %.02746.i.i.i.i91.i.i.i.i = phi i32 [ %i.pe, %bb.cl ], [ 1, %bb.ck ] ; 2 uses
  %i.pd = icmp eq ptr %i.pc, inttoptr (i64 -8 to ptr)
  br i1 %i.pd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i.i.i.i, label %bb.cl, !prof !18

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i89.i.i.i.i
  %i.pe = add i32 %.02746.i.i.i.i91.i.i.i.i, 1
  %i.pf = add i32 %.02746.i.i.i.i91.i.i.i.i, %.02947.i.i.i.i90.i.i.i.i
  %.029.i.i.i.i92.i.i.i.i = and i32 %i.pf, %i.ox  ; 2 uses
  %i.pg = zext i32 %.029.i.i.i.i92.i.i.i.i to i64
  %i.ph = getelementptr inbounds nuw [32 x i8], ptr %i.ou, i64 %i.pg ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !117 ; 2 uses
  %i.pj = icmp eq ptr %i.ne, %i.pi
  br i1 %i.pj, label %_ZN6hermes17CallGraphProvider14getKnownStoresEPNS_11InstructionE.exit.i.i.i.i, label %.lr.ph.i.i.i.i89.i.i.i.i, !prof !19, !llvm.loop !147

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i89.i.i.i.i, %_ZL15isOwnedPropertyPN6hermes15AllocObjectInstEPNS_5ValueE.exit.i.i.i.i
  %i.pk = zext i32 %i.ov to i64
  %i.pl = getelementptr inbounds nuw [32 x i8], ptr %i.ou, i64 %i.pk
  br label %_ZN6hermes17CallGraphProvider14getKnownStoresEPNS_11InstructionE.exit.i.i.i.i

_ZN6hermes17CallGraphProvider14getKnownStoresEPNS_11InstructionE.exit.i.i.i.i: ; preds = %bb.cl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i.i.i.i, %bb.ck
  %.sink.i.i.ph.pn.i.i93.i.i.i.i = phi ptr [ %i.pl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i.i.i.i ], [ %i.oz, %bb.ck ], [ %i.ph, %bb.cl ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i93.i.i.i.i, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i93.i.i.i.i, i64 16
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !137
  %i.pp = icmp eq i32 %i.po, 0
  %i.pq = load ptr, ptr %i.pm, align 8, !tbaa !140 ; 5 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i93.i.i.i.i, i64 24
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !141 ; 2 uses
  %i.pt = zext i32 %i.ps to i64                   ; 3 uses
  br i1 %i.pp, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN6hermes17CallGraphProvider14getKnownStoresEPNS_11InstructionE.exit.i.i.i.i
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pt ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i

bb.cn:                                            ; preds = %_ZN6hermes17CallGraphProvider14getKnownStoresEPNS_11InstructionE.exit.i.i.i.i
  %.idx.i.i94.i.i.i.i = shl nuw nsw i64 %i.pt, 3
  %i.pv = getelementptr i8, ptr %i.pq, i64 %.idx.i.i94.i.i.i.i ; 5 uses
  %.not5.i5.i10.i2.i.i95.i.i.i.i = icmp eq i32 %i.ps, 0
  br i1 %.not5.i5.i10.i2.i.i95.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i96.i.i.i.i

.lr.ph.i6.i12.i3.i.i96.i.i.i.i:                   ; preds = %bb.cn, %.critedge2.i8.i14.i6.i.i99.i.i.i.i
  %.sroa.0.3.i4.i.i97.i.i.i.i = phi ptr [ %i.px, %.critedge2.i8.i14.i6.i.i99.i.i.i.i ], [ %i.pq, %bb.cn ] ; 3 uses
  %i.pw = load ptr, ptr %.sroa.0.3.i4.i.i97.i.i.i.i, align 8, !tbaa !117
  %magicptr.i7.i13.i5.i.i98.i.i.i.i = ptrtoint ptr %i.pw to i64
  switch i64 %magicptr.i7.i13.i5.i.i98.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i99.i.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i99.i.i.i.i
  ]

.critedge2.i8.i14.i6.i.i99.i.i.i.i:               ; preds = %.lr.ph.i6.i12.i3.i.i96.i.i.i.i, %.lr.ph.i6.i12.i3.i.i96.i.i.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i97.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i100.i.i.i.i = icmp eq ptr %i.px, %i.pv
  br i1 %.not.i9.i15.i7.i.i100.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i96.i.i.i.i, !llvm.loop !142

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i: ; preds = %.critedge2.i8.i14.i6.i.i99.i.i.i.i, %.lr.ph.i6.i12.i3.i.i96.i.i.i.i, %bb.cn, %bb.cm
  %.pn14.i.i101.i.i.i.i = phi ptr [ %i.pu, %bb.cm ], [ %i.pq, %bb.cn ], [ %i.pv, %.critedge2.i8.i14.i6.i.i99.i.i.i.i ], [ %.sroa.0.3.i4.i.i97.i.i.i.i, %.lr.ph.i6.i12.i3.i.i96.i.i.i.i ] ; 2 uses
  %.pn12.i.i102.i.i.i.i = phi ptr [ %i.pu, %bb.cm ], [ %i.pv, %bb.cn ], [ %i.pv, %.lr.ph.i6.i12.i3.i.i96.i.i.i.i ], [ %i.pv, %.critedge2.i8.i14.i6.i.i99.i.i.i.i ] ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pt ; 2 uses
  %.not150167.i.i.i.i = icmp eq ptr %.pn14.i.i101.i.i.i.i, %i.py
  br i1 %.not150167.i.i.i.i, label %._crit_edge.i86.i.i.i, label %.lr.ph.i83.i.i.i

.lr.ph.i83.i.i.i:                                 ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i
  %.151173.i.i.i.i = phi i8 [ %.353.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ], [ %.050181.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ] ; 3 uses
  %.sroa.7.1171.i.i.i.i = phi i16 [ %.sroa.7.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ], [ %.sroa.7.0180.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ] ; 3 uses
  %.sroa.0131.1169.i.i.i.i = phi i16 [ %.sroa.0131.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ], [ %.sroa.0131.0179.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ] ; 3 uses
  %.sroa.0118.0168.i.i.i.i = phi ptr [ %.sroa.0118.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ], [ %.pn14.i.i101.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ] ; 2 uses
  %i.pz = load ptr, ptr %.sroa.0118.0168.i.i.i.i, align 8, !tbaa !117 ; 9 uses
  %i.qa = load i8, ptr %i.ob, align 8, !tbaa !89  ; 2 uses
  %i.qb = icmp eq i8 %i.qa, 53
  br i1 %i.qb, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %.lr.ph.i83.i.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qd = load i8, ptr %i.qc, align 8, !tbaa !89  ; 2 uses
  %i.qe = add i8 %i.qd, -43
  %i.qf = icmp ult i8 %i.qe, -4
  %.not78151.i.i.i.i = icmp eq ptr %i.pz, null    ; 2 uses
  %.not78.i.i.i.i = select i1 %i.qf, i1 true, i1 %.not78151.i.i.i.i
  br i1 %.not78.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qg = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.pz, i32 noundef 0) #8
  %i.qh = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.pz, i32 noundef 2) #8
  %.not79.i.i.i.i = icmp eq ptr %i.oa, %i.qh
  br i1 %.not79.i.i.i.i, label %._crit_edge190.i.i.i.i, label %.critedge.i.i43.i.i

._crit_edge190.i.i.i.i:                           ; preds = %bb.cp
  %.pre.i.i49.i.i = load i8, ptr %i.qc, align 8, !tbaa !89
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge190.i.i.i.i, %bb.co
  %i.qi = phi i8 [ %i.qd, %bb.co ], [ %.pre.i.i49.i.i, %._crit_edge190.i.i.i.i ]
  %.169.i.i.i.i = phi ptr [ null, %bb.co ], [ %i.qg, %._crit_edge190.i.i.i.i ]
  %i.qj = add i8 %i.qi, -39
  %i.qk = icmp ult i8 %i.qj, -4
  %.not80.i.i.i.i = select i1 %i.qk, i1 true, i1 %.not78151.i.i.i.i
  br i1 %.not80.i.i.i.i, label %thread-pre-split.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ql = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.pz, i32 noundef 0) #8
  %i.qm = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.pz, i32 noundef 2) #8
  %.not81.i.i.i.i = icmp eq ptr %i.oa, %i.qm
  br i1 %.not81.i.i.i.i, label %thread-pre-split.i.i.i.i, label %.critedge.i.i43.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.cr, %bb.cq
  %.472.ph.i.i.i.i = phi ptr [ %i.ql, %bb.cr ], [ %.169.i.i.i.i, %bb.cq ]
  %.pr.i.i.i.i = load i8, ptr %i.ob, align 8, !tbaa !89
  br label %bb.cs

bb.cs:                                            ; preds = %thread-pre-split.i.i.i.i, %.lr.ph.i83.i.i.i
  %i.qn = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.qa, %.lr.ph.i83.i.i.i ]
  %.472.i.i.i.i = phi ptr [ %.472.ph.i.i.i.i, %thread-pre-split.i.i.i.i ], [ null, %.lr.ph.i83.i.i.i ] ; 2 uses
  %i.qo = icmp eq i8 %i.qn, 54
  br i1 %i.qo, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !89
  %i.qr = add i8 %i.qq, -39
  %i.qs = icmp ult i8 %i.qr, -4
  %.not82153.i.i.i.i = icmp eq ptr %i.pz, null
  %.not82.i.i.i.i = select i1 %i.qs, i1 true, i1 %.not82153.i.i.i.i
  br i1 %.not82.i.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qt = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.pz, i32 noundef 0) #8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %.674.i.i.i.i = phi ptr [ %.472.i.i.i.i, %bb.cs ], [ %i.qt, %bb.cu ], [ %.472.i.i.i.i, %bb.ct ] ; 2 uses
  %i.qu = trunc nuw i8 %.151173.i.i.i.i to i1
  br i1 %i.qu, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.qv = getelementptr inbounds nuw i8, ptr %.674.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i110.i.i.i.i = load i32, ptr %i.qv, align 2
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %.sroa.7.0.insert.ext135.i.i.i.i = zext i16 %.sroa.7.1171.i.i.i.i to i32
  %.sroa.7.0.insert.shift136.i.i.i.i = shl nuw i32 %.sroa.7.0.insert.ext135.i.i.i.i, 16
  %.sroa.0131.0.insert.ext132.i.i.i.i = zext i16 %.sroa.0131.1169.i.i.i.i to i32
  %.sroa.0131.0.insert.insert134.i.i.i.i = or disjoint i32 %.sroa.7.0.insert.shift136.i.i.i.i, %.sroa.0131.0.insert.ext132.i.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.674.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i111.i.i.i.i = load i32, ptr %i.qw, align 2
  %i.qx = or i32 %.sroa.0.0.copyload.i111.i.i.i.i, %.sroa.0131.0.insert.insert134.i.i.i.i
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %storemerge.i84.i.i.i = phi i32 [ %i.qx, %bb.cx ], [ %.sroa.0.0.copyload.i110.i.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.0131.0.extract.trunc.i.i.i.i = trunc i32 %storemerge.i84.i.i.i to i16
  %.sroa.7.0.extract.shift.i85.i.i.i = lshr i32 %storemerge.i84.i.i.i, 16
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i85.i.i.i to i16
  br label %.critedge.i.i43.i.i

.critedge.i.i43.i.i:                              ; preds = %bb.cy, %bb.cr, %bb.cp
  %.sroa.0131.2.i.i.i.i = phi i16 [ %.sroa.0131.0.extract.trunc.i.i.i.i, %bb.cy ], [ %.sroa.0131.1169.i.i.i.i, %bb.cr ], [ %.sroa.0131.1169.i.i.i.i, %bb.cp ] ; 2 uses
  %.sroa.7.2.i.i.i.i = phi i16 [ %.sroa.7.0.extract.trunc.i.i.i.i, %bb.cy ], [ %.sroa.7.1171.i.i.i.i, %bb.cr ], [ %.sroa.7.1171.i.i.i.i, %bb.cp ] ; 2 uses
  %.353.i.i.i.i = phi i8 [ 0, %bb.cy ], [ %.151173.i.i.i.i, %bb.cr ], [ %.151173.i.i.i.i, %bb.cp ] ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0118.0168.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i44.i.i = icmp eq ptr %i.qy, %.pn12.i.i102.i.i.i.i
  br i1 %.not5.i3.i.i.i.i44.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i45.i.i

.lr.ph.i4.i.i.i.i45.i.i:                          ; preds = %.critedge.i.i43.i.i, %.critedge2.i6.i.i.i.i47.i.i
  %.sroa.0118.1.i.i.i.i = phi ptr [ %i.ra, %.critedge2.i6.i.i.i.i47.i.i ], [ %i.qy, %.critedge.i.i43.i.i ] ; 3 uses
  %i.qz = load ptr, ptr %.sroa.0118.1.i.i.i.i, align 8, !tbaa !117
  %magicptr.i5.i.i.i.i46.i.i = ptrtoint ptr %i.qz to i64
  switch i64 %magicptr.i5.i.i.i.i46.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i47.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i47.i.i
  ]

.critedge2.i6.i.i.i.i47.i.i:                      ; preds = %.lr.ph.i4.i.i.i.i45.i.i, %.lr.ph.i4.i.i.i.i45.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0118.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i48.i.i = icmp eq ptr %i.ra, %.pn12.i.i102.i.i.i.i
  br i1 %.not.i7.i.i.i.i48.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i45.i.i, !llvm.loop !142

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i47.i.i, %.lr.ph.i4.i.i.i.i45.i.i, %.critedge.i.i43.i.i
  %.sroa.0118.2.i.i.i.i = phi ptr [ %i.qy, %.critedge.i.i43.i.i ], [ %i.ra, %.critedge2.i6.i.i.i.i47.i.i ], [ %.sroa.0118.1.i.i.i.i, %.lr.ph.i4.i.i.i.i45.i.i ] ; 2 uses
  %.not150.i.i.i.i = icmp eq ptr %.sroa.0118.2.i.i.i.i, %i.py
  br i1 %.not150.i.i.i.i, label %._crit_edge.i86.i.i.i, label %.lr.ph.i83.i.i.i

._crit_edge.i86.i.i.i:                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i
  %.sroa.0131.1.lcssa.i.i.i.i = phi i16 [ %.sroa.0131.0179.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.sroa.0131.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.7.1.lcssa.i.i.i.i = phi i16 [ %.sroa.7.0180.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.sroa.7.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.151.lcssa.i.i.i.i = phi i8 [ %.050181.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.353.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0127.0178.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i112.i.i.i.i = icmp eq ptr %i.rb, %.pn12.i.i.i.i42.i.i
  br i1 %.not5.i3.i.i112.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i, label %.lr.ph.i4.i.i113.i.i.i.i

.lr.ph.i4.i.i113.i.i.i.i:                         ; preds = %._crit_edge.i86.i.i.i, %.critedge2.i6.i.i115.i.i.i.i
  %.sroa.0127.1.i.i.i.i = phi ptr [ %i.rd, %.critedge2.i6.i.i115.i.i.i.i ], [ %i.rb, %._crit_edge.i86.i.i.i ] ; 3 uses
  %i.rc = load ptr, ptr %.sroa.0127.1.i.i.i.i, align 8, !tbaa !117
  %magicptr.i5.i.i114.i.i.i.i = ptrtoint ptr %i.rc to i64
  switch i64 %magicptr.i5.i.i114.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i115.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i115.i.i.i.i
  ]

.critedge2.i6.i.i115.i.i.i.i:                     ; preds = %.lr.ph.i4.i.i113.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0127.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i116.i.i.i.i = icmp eq ptr %i.rd, %.pn12.i.i.i.i42.i.i
  br i1 %.not.i7.i.i116.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i, label %.lr.ph.i4.i.i113.i.i.i.i, !llvm.loop !142

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i: ; preds = %.critedge2.i6.i.i115.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i, %._crit_edge.i86.i.i.i
  %.sroa.0127.2.i.i.i.i = phi ptr [ %i.rb, %._crit_edge.i86.i.i.i ], [ %i.rd, %.critedge2.i6.i.i115.i.i.i.i ], [ %.sroa.0127.1.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i ] ; 2 uses
  %.not.i87.i.i.i = icmp eq ptr %.sroa.0127.2.i.i.i.i, %i.nd
  br i1 %.not.i87.i.i.i, label %.thread149.i.i.i.i, label %.lr.ph182.i.i.i.i

.thread149.i.i.i.i:                               ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i
  %i.re = trunc nuw i8 %.151.lcssa.i.i.i.i to i1
  %i.rf = zext i16 %.sroa.0131.1.lcssa.i.i.i.i to i32 ; 3 uses
  %i.rg = zext i16 %.sroa.7.1.lcssa.i.i.i.i to i32
  %i.rh = shl nuw i32 %i.rg, 16
  %i.ri = or disjoint i32 %i.rh, %i.rf
  br i1 %i.re, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %.thread149.i.i.i.i
  %i.rj = and i32 %.sroa.0.0.copyload.i.i32.i.i, 65535 ; 2 uses
  %.not.i.i88.i.i.i = icmp ne i32 %i.rj, %i.rf
  %i.rk = xor i32 %i.rj, -1
  %i.rl = and i32 %i.rf, %i.rk
  %.not3.i.i89.i.i.i = icmp eq i32 %i.rl, 0
  %i.rm = and i1 %.not.i.i88.i.i.i, %.not3.i.i89.i.i.i
  br i1 %i.rm, label %bb.da, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  store i32 %i.ri, ptr %i.ea, align 2
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i74.i.i.i, %bb.ch, %.lr.ph182.i.i.i.i, %.lr.ph.i.i.i84.i.i.i.i, %.critedge.i.i.i.i.i, %bb.da, %bb.cz, %.thread149.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, %bb.bz
  %.sroa.0.0.copyload.i92.i.i.i = load i32, ptr %i.ea, align 2
  %.sroa.095.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i92.i.i.i to i16
  %i.rn = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.ro = icmp ne i16 %.sroa.095.0.extract.trunc.i.i.i, %i.rn
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.db:                                            ; preds = %.lr.ph.i.i
  %i.rp = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 2
  %.sroa.0.0.copyload.i.i93.i.i.i = load i32, ptr %i.rq, align 2
  %i.rr = and i32 %.sroa.0.0.copyload.i.i93.i.i.i, -458754 ; 2 uses
  store i32 %i.rr, ptr %i.ea, align 2
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.rr to i16
  %i.rs = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.rt = icmp ne i16 %.sroa.0.0.extract.trunc.i.i.i, %i.rs
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i: ; preds = %bb.db, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i, %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i, %.lr.ph.i.i
  %.0.i33.i.i = phi i1 [ %i.rt, %bb.db ], [ %i.fv, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i ], [ %i.gh, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i ], [ %i.hi, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i ], [ %i.ig, %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i ], [ %i.ip, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i ], [ %i.iy, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i ], [ %i.lc, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i ], [ %i.ll, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i ], [ %i.ro, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i ], [ false, %.lr.ph.i.i ]
  %i.ru = zext i1 %.0.i33.i.i to i8
  %i.rv = or i8 %.1116.i.i, %i.ru                 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 8
  %.sroa.098.0.i.i = load ptr, ptr %i.rw, align 8, !tbaa !7 ; 2 uses
  %.not106.i.i = icmp eq ptr %.sroa.098.0.i.i, %i.dx
  br i1 %.not106.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dc:                                            ; preds = %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %i.rx = load ptr, ptr %i.da, align 8, !tbaa !148 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 152
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !78 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 160
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !77 ; 2 uses
  %i.sc = zext i32 %i.sb to i64
  %.idx.i.i = shl nuw nsw i64 %i.sc, 3
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 %.idx.i.i
  %.not131.i.i = icmp eq i32 %i.sb, 0
  br i1 %.not131.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.lr.ph135.i.i:                                    ; preds = %bb.dc, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i
  %.2133.i.i = phi i8 [ %i.td, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ]
  %.028132.i.i = phi ptr [ %i.te, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %i.rz, %bb.dc ] ; 2 uses
  %i.se = load ptr, ptr %.028132.i.i, align 8, !tbaa !149 ; 2 uses
  %i.sf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.se) #8 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !78 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !77 ; 2 uses
  %i.sj = zext i32 %i.si to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.sj, 3
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 %.idx.i.i.i.i
  %.not50.i.i.i.i = icmp eq i32 %i.si, 0
  br i1 %.not50.i.i.i.i, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i, label %.lr.ph.i.i62.i.i

.lr.ph.i.i62.i.i:                                 ; preds = %.lr.ph135.i.i, %.thread.i.i63.i.i
  %.054.i.i.i.i = phi i1 [ %.242.i.i.i.i, %.thread.i.i63.i.i ], [ true, %.lr.ph135.i.i ] ; 4 uses
  %.02253.i.i.i.i = phi ptr [ %i.sr, %.thread.i.i63.i.i ], [ %i.sg, %.lr.ph135.i.i ] ; 2 uses
  %.sroa.0.052.i.i.i.i = phi i16 [ %.sroa.0.141.i.i.i.i, %.thread.i.i63.i.i ], [ 1023, %.lr.ph135.i.i ] ; 4 uses
  %.sroa.6.051.i.i.i.i = phi i16 [ %.sroa.6.140.i.i.i.i, %.thread.i.i63.i.i ], [ 7, %.lr.ph135.i.i ] ; 4 uses
  %i.sl = load ptr, ptr %.02253.i.i.i.i, align 8, !tbaa !117 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = load i8, ptr %i.sm, align 8, !tbaa !89
  switch i8 %i.sn, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i [
    i8 51, label %bb.dd
    i8 50, label %bb.dd
    i8 49, label %.thread.i.i63.i.i
    i8 22, label %.thread.i.i63.i.i
  ]

bb.dd:                                            ; preds = %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %i.so = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.sl, i32 noundef 0) #8 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.so, null
  br i1 %.not27.i.i.i.i, label %.thread.i.i63.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  %.sroa.0.0.copyload.i.i.i67.i.i = load i32, ptr %i.sp, align 2 ; 2 uses
  br i1 %.054.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.6.0.insert.ext.i.i.i.i = zext i16 %.sroa.6.051.i.i.i.i to i32
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %.sroa.0.052.i.i.i.i to i32
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.sq = or i32 %.sroa.0.0.copyload.i.i.i67.i.i, %.sroa.0.0.insert.insert.i.i.i.i
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %storemerge.i.i68.i.i = phi i32 [ %i.sq, %bb.df ], [ %.sroa.0.0.copyload.i.i.i67.i.i, %bb.de ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i69.i.i = trunc i32 %storemerge.i.i68.i.i to i16
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i32 %storemerge.i.i68.i.i, 16
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i to i16
  br label %.thread.i.i63.i.i

.thread.i.i63.i.i:                                ; preds = %bb.dg, %bb.dd, %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %.242.i.i.i.i = phi i1 [ false, %bb.dg ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %bb.dd ]
  %.sroa.0.141.i.i.i.i = phi i16 [ %.sroa.0.0.extract.trunc.i.i69.i.i, %bb.dg ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %bb.dd ] ; 2 uses
  %.sroa.6.140.i.i.i.i = phi i16 [ %.sroa.6.0.extract.trunc.i.i.i.i, %bb.dg ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %bb.dd ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.02253.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %i.sr, %i.sk
  br i1 %.not.i.i64.i.i, label %bb.dh, label %.lr.ph.i.i62.i.i

bb.dh:                                            ; preds = %.thread.i.i63.i.i
  %i.ss = zext i16 %.sroa.6.140.i.i.i.i to i32
  %i.st = shl nuw i32 %i.ss, 16
  %i.su = zext i16 %.sroa.0.141.i.i.i.i to i32
  %i.sv = or disjoint i32 %i.st, %i.su
  br label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i

_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i: ; preds = %.lr.ph.i.i62.i.i, %bb.dh, %.lr.ph135.i.i
  %.not.lcssa.i.i.i.i = phi i32 [ 459775, %.lr.ph135.i.i ], [ %i.sv, %bb.dh ], [ 459775, %.lr.ph.i.i62.i.i ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.se, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i.i65.i.i = load i32, ptr %i.sw, align 2
  %i.sx = and i32 %.not.lcssa.i.i.i.i, 65535      ; 2 uses
  %i.sy = and i32 %.sroa.0.0.copyload.i.i65.i.i, 65535 ; 2 uses
  %.not.i5.i.i.i = icmp ne i32 %i.sy, %i.sx
  %i.sz = xor i32 %i.sy, -1
  %i.ta = and i32 %i.sx, %i.sz
  %.not3.i.i66.i.i = icmp eq i32 %i.ta, 0
  %i.tb = and i1 %.not.i5.i.i.i, %.not3.i.i66.i.i ; 2 uses
  br i1 %i.tb, label %bb.di, label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

bb.di:                                            ; preds = %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  store i32 %.not.lcssa.i.i.i.i, ptr %i.sw, align 2
  br label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i:    ; preds = %bb.di, %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  %i.tc = zext i1 %i.tb to i8
  %i.td = or i8 %.2133.i.i, %i.tc                 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.028132.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.te, %i.sd
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.loopexit.i.i:                                    ; preds = %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i, %bb.dc, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %.3.i.i = phi i8 [ %.0.i31.i.i, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ], [ %i.td, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ] ; 2 uses
  %i.tf = trunc nuw i8 %.3.i.i to i1
  %i.tg = zext i1 %.0.in.i.i to i8
  %i.th = or i8 %.3.i.i, %i.tg
  %i.ti = icmp ne i8 %i.th, 0                     ; 2 uses
  br i1 %i.tf, label %bb.r, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, !llvm.loop !150

_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i: ; preds = %.loopexit.i.i
  %i.tj = or i1 %.021.i, %i.ti                    ; 2 uses
  call void @_ZN6hermes17CallGraphProviderD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 8
  %.sroa.07.0.i = load ptr, ptr %i.tk, align 8, !tbaa !7 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.0.i, %i.b
  br i1 %.not.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit, label %bb.b

_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit: ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.tj, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes19createTypeInferenceEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes13TypeInferenceESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #9, !noalias !151 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !154, !noalias !151
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !159, !noalias !151
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !160, !noalias !151
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes13TypeInferenceE, i64 16), ptr %i.a, align 8, !tbaa !161, !noalias !151
  store ptr %i.a, ptr %0, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes13TypeInferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes17CallGraphProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %.pre1.i = load ptr, ptr %i.a, align 8, !tbaa !143 ; 3 uses
  br i1 %i.d, label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.j, %bb.c ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.011.i.i, align 8, !tbaa !117
  %magicptr.i.i = ptrtoint ptr %i.g to i64
  switch i64 %magicptr.i.i, label %bb.b [
    i64 -8, label %bb.c
    i64 -16, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140
  tail call void @_ZdlPv(ptr noundef %i.i) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !166

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !143
  br label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i
  %i.k = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.k) #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !133  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %.pre1.i1 = load ptr, ptr %i.l, align 8, !tbaa !130 ; 3 uses
  br i1 %i.o, label %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i2

.lr.ph.preheader.i.i2:                            ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit
  %i.p = zext i32 %i.n to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %.pre1.i1, i64 %.idx.i.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.e, %.lr.ph.preheader.i.i2
  %.011.i.i5 = phi ptr [ %i.u, %bb.e ], [ %.pre1.i1, %.lr.ph.preheader.i.i2 ] ; 3 uses
  %i.r = load ptr, ptr %.011.i.i5, align 8, !tbaa !134
  %magicptr.i.i6 = ptrtoint ptr %i.r to i64
  switch i64 %magicptr.i.i6, label %bb.d [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !140
  tail call void @_ZdlPv(ptr noundef %i.t) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i4, %.lr.ph.i.i4
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 32 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.u, %i.q
  br i1 %.not.i.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i4, !llvm.loop !167

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.e
  %.pre.i8 = load ptr, ptr %i.l, align 8, !tbaa !130
  br label %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.v = phi ptr [ %.pre.i8, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i1, %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.v) #8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %.pre1.i9 = load ptr, ptr %i.w, align 8, !tbaa !11 ; 3 uses
  br i1 %i.z, label %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i10

.lr.ph.preheader.i.i10:                           ; preds = %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.aa = zext i32 %i.y to i64
  %.idx.i.i11 = shl nuw nsw i64 %i.aa, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre1.i9, i64 %.idx.i.i11
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i10
  %.011.i.i13 = phi ptr [ %i.af, %bb.g ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 3 uses
  %i.ac = load ptr, ptr %.011.i.i13, align 8, !tbaa !15
  %magicptr.i.i14 = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.i.i14, label %bb.f [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph.i.i12
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i13, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  tail call void @_ZdlPv(ptr noundef %i.ae) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i12, %.lr.ph.i.i12
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i13, i64 32 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.af, %i.ab
  br i1 %.not.i.i15, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i12, !llvm.loop !168

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.g
  %.pre.i16 = load ptr, ptr %i.w, align 8, !tbaa !11
  br label %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.ag = phi ptr [ %.pre.i16, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i9, %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.ag) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !122 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %.pre1.i17 = load ptr, ptr %0, align 8, !tbaa !119 ; 3 uses
  br i1 %i.aj, label %_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i18

.lr.ph.preheader.i.i18:                           ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.ak = zext i32 %i.ai to i64
  %.idx.i.i19 = shl nuw nsw i64 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %.pre1.i17, i64 %.idx.i.i19
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i18
  %.011.i.i21 = phi ptr [ %i.ap, %bb.i ], [ %.pre1.i17, %.lr.ph.preheader.i.i18 ] ; 3 uses
  %i.am = load ptr, ptr %.011.i.i21, align 8, !tbaa !85
  %magicptr.i.i22 = ptrtoint ptr %i.am to i64
  switch i64 %magicptr.i.i22, label %bb.h [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph.i.i20
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i21, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !127
  tail call void @_ZdlPv(ptr noundef %i.ao) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i20, %.lr.ph.i.i20
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i21, i64 32 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.ap, %i.al
  br i1 %.not.i.i23, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i20, !llvm.loop !169

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.i
  %.pre.i24 = load ptr, ptr %0, align 8, !tbaa !119
  br label %_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.aq = phi ptr [ %.pre.i24, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i17, %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.aq) #8
  ret void
}

declare void @_ZN6hermes23SimpleCallGraphProvider21initCallRelationshipsEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #4

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32) local_unnamed_addr #4

declare noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16collectPHIInputsRN4llvh15SmallPtrSetImplIPN6hermes5ValueEEES5_PNS1_7PhiInstE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select = select i1 %i.a, ptr null, ptr %i.b ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113, !noalias !170
  %i.e = load ptr, ptr %0, align 8, !tbaa !114, !noalias !170 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !111, !noalias !170 ; 4 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 2 uses
  %.not63.i.i = icmp eq i32 %i.h, 0
  br i1 %.not63.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.065.i.i = phi ptr [ %spec.select.i.i, %bb.c ], [ null, %bb.b ]
  %.04964.i.i = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %.04964.i.i, align 8, !tbaa !115, !noalias !170 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.k, %spec.select
  br i1 %.not27.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp eq ptr %i.k, inttoptr (i64 -2 to ptr)
  %spec.select.i.i = select i1 %i.l, ptr %.04964.i.i, ptr %.065.i.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04964.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.j
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !173

.critedge.i.i:                                    ; preds = %bb.c
  %.not28.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28.i.i, label %.critedge.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i
  store ptr %spec.select, ptr %spec.select.i.i, align 8, !tbaa !115, !noalias !170
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !112, !noalias !170
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !112, !noalias !170
  br label %.critedge

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !109, !noalias !170
  %i.s = icmp ult i32 %i.h, %i.r
  br i1 %i.s, label %bb.e, label %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit

bb.e:                                             ; preds = %.critedge.thread.i.i
  %i.t = add nuw i32 %i.h, 1
  store i32 %i.t, ptr %i.g, align 4, !tbaa !111, !noalias !170
  store ptr %spec.select, ptr %i.j, align 8, !tbaa !115, !noalias !170
  br label %.critedge

_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit: ; preds = %.critedge.thread.i.i, %bb.a
  %i.u = tail call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %spec.select) #8, !noalias !170
  %i.v = extractvalue { ptr, i8 } %i.u, 1
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.e, %bb.d, %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit
  %i.x = tail call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %2) #8 ; 2 uses
  %.not47 = icmp eq i32 %i.x, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39
  %.046 = phi i32 [ 0, %.lr.ph ], [ %i.av, %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39 ] ; 2 uses
  %i.ac = tail call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %2, i32 noundef %.046) #8
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 6 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !89
  %.not = icmp eq i8 %i.ae, 33
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -16
  tail call fastcc void @_ZL16collectPHIInputsRN4llvh15SmallPtrSetImplIPN6hermes5ValueEEES5_PNS1_7PhiInstE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull %i.af)
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39

bb.h:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !113, !noalias !174
  %i.ah = load ptr, ptr %1, align 8, !tbaa !114, !noalias !174 ; 3 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.z, align 4, !tbaa !111, !noalias !174 ; 4 uses
  %i.ak = zext i32 %i.aj to i64
  %.idx.i.i28 = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i28 ; 2 uses
  %.not63.i.i29 = icmp eq i32 %i.aj, 0
  br i1 %.not63.i.i29, label %.critedge.thread.i.i38, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.i, %bb.j
  %.065.i.i31 = phi ptr [ %spec.select.i.i34, %bb.j ], [ null, %bb.i ]
  %.04964.i.i32 = phi ptr [ %i.ao, %bb.j ], [ %i.ah, %bb.i ] ; 3 uses
  %i.am = load ptr, ptr %.04964.i.i32, align 8, !tbaa !115, !noalias !174 ; 2 uses
  %.not27.i.i33 = icmp eq ptr %i.am, %i.ad
  br i1 %.not27.i.i33, label %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i30
  %i.an = icmp eq ptr %i.am, inttoptr (i64 -2 to ptr)
  %spec.select.i.i34 = select i1 %i.an, ptr %.04964.i.i32, ptr %.065.i.i31 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04964.i.i32, i64 8 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.ao, %i.al
  br i1 %.not.i.i35, label %.critedge.i.i36, label %.lr.ph.i.i30, !llvm.loop !173

.critedge.i.i36:                                  ; preds = %bb.j
  %.not28.i.i37 = icmp eq ptr %spec.select.i.i34, null
  br i1 %.not28.i.i37, label %.critedge.thread.i.i38, label %bb.k

bb.k:                                             ; preds = %.critedge.i.i36
  store ptr %i.ad, ptr %spec.select.i.i34, align 8, !tbaa !115, !noalias !174
  %i.ap = load i32, ptr %i.aa, align 8, !tbaa !112, !noalias !174
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.aa, align 8, !tbaa !112, !noalias !174
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39

.critedge.thread.i.i38:                           ; preds = %.critedge.i.i36, %bb.i
  %i.ar = load i32, ptr %i.ab, align 8, !tbaa !109, !noalias !174
  %i.as = icmp ult i32 %i.aj, %i.ar
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge.thread.i.i38
  %i.at = add nuw i32 %i.aj, 1
  store i32 %i.at, ptr %i.z, align 4, !tbaa !111, !noalias !174
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !115, !noalias !174
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39

bb.m:                                             ; preds = %.critedge.thread.i.i38, %bb.h
  %i.au = tail call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull %i.ad) #8, !noalias !174 ; 0 uses
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39

_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39: ; preds = %.lr.ph.i.i30, %bb.k, %bb.l, %bb.m, %bb.g
  %i.av = add nuw i32 %.046, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %i.x
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !177

.loopexit:                                        ; preds = %.lr.ph.i.i, %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit39, %.critedge, %_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_.exit
  ret void
}

declare { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #4

declare { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind allocsize(0) }
attributes #10 = { builtin nounwind }

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
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !9, i64 0, !9, i64 8}
!9 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEEE", !13, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!13 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEEEE", !10, i64 0}
!14 = !{!12, !4, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN6hermes8FunctionE", !10, i64 0}
!17 = !{!"branch_weights", i32 1999, i32 1}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !38, i64 188}
!23 = !{!"_ZTSN6hermes8FunctionE", !24, i64 0, !27, i64 16, !37, i64 56, !38, i64 64, !39, i64 72, !40, i64 80, !45, i64 96, !50, i64 176, !52, i64 184, !38, i64 188, !53, i64 192, !56, i64 208, !50, i64 216, !57, i64 224, !4, i64 232, !58, i64 236, !59, i64 248, !61, i64 280, !66, i64 296}
!24 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !25, i64 0}
!25 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !26, i64 0}
!26 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !8, i64 0}
!27 = !{!"_ZTSN6hermes5ValueE", !28, i64 0, !29, i64 2, !31, i64 8}
!28 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!29 = !{!"_ZTSN6hermes4TypeE", !30, i64 0, !30, i64 2}
!30 = !{!"short", !5, i64 0}
!31 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !32, i64 0, !36, i64 16}
!32 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !33, i64 0}
!33 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !34, i64 0}
!34 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !35, i64 0}
!35 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!36 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!37 = !{!"p1 _ZTSN6hermes6ModuleE", !10, i64 0}
!38 = !{!"bool", !5, i64 0}
!39 = !{!"p1 _ZTSN6hermes9ScopeDescE", !10, i64 0}
!40 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !41, i64 0}
!41 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !42, i64 0}
!42 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !43, i64 0}
!43 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !44, i64 0}
!44 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !8, i64 0}
!45 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !46, i64 0, !49, i64 16}
!46 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !47, i64 0}
!47 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !48, i64 0}
!48 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !35, i64 0}
!49 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !5, i64 0}
!50 = !{!"_ZTSN6hermes10IdentifierE", !51, i64 0}
!51 = !{!"p1 _ZTSN6hermes12UniqueStringE", !10, i64 0}
!52 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !5, i64 0}
!53 = !{!"_ZTSN4llvh7SMRangeE", !54, i64 0, !54, i64 8}
!54 = !{!"_ZTSN4llvh5SMLocE", !55, i64 0}
!55 = !{!"p1 omnipotent char", !10, i64 0}
!56 = !{!"_ZTSN6hermes16SourceVisibilityE", !5, i64 0}
!57 = !{!"p1 _ZTSN6hermes9ParameterE", !10, i64 0}
!58 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !38, i64 4}
!59 = !{!"_ZTSN6hermes10LazySourceE", !60, i64 0, !4, i64 4, !53, i64 8, !38, i64 24, !38, i64 25}
!60 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!61 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !62, i64 0}
!62 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0, !64, i64 8}
!63 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !10, i64 0}
!64 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0}
!65 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!66 = !{!"p1 _ZTSN6hermes8VariableE", !10, i64 0}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!70, !38, i64 0}
!70 = !{!"_ZTSN6hermes20OptimizationSettingsE", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5}
!71 = !{!23, !37, i64 56}
!72 = !{!73, !37, i64 0}
!73 = !{!"_ZTSN6hermes9IRBuilderE", !37, i64 0, !74, i64 8, !76, i64 16, !54, i64 24, !39, i64 32}
!74 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !75, i64 0}
!75 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !10, i64 0}
!76 = !{!"p1 _ZTSN6hermes10BasicBlockE", !10, i64 0}
!77 = !{!35, !4, i64 8}
!78 = !{!35, !10, i64 0}
!79 = !{!57, !57, i64 0}
!80 = !{!81, !4, i64 8}
!81 = !{!"_ZTSN4llvh8DenseMapIPN6hermes8CallInstENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !82, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!82 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPN6hermes8CallInstEEE", !10, i64 0}
!83 = !{!81, !82, i64 0}
!84 = !{!81, !4, i64 16}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTSN6hermes8CallInstE", !10, i64 0}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = !{!27, !28, i64 0}
!90 = !{!23, !38, i64 64}
!91 = !{!92, !102, i64 132}
!92 = !{!"_ZTSN6hermes18BinaryOperatorInstE", !93, i64 0, !102, i64 132}
!93 = !{!"_ZTSN6hermes11InstructionE", !94, i64 0, !27, i64 16, !76, i64 56, !97, i64 64, !39, i64 112, !54, i64 120, !4, i64 128}
!94 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !95, i64 0}
!95 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !96, i64 0}
!96 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !8, i64 0}
!97 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !98, i64 0, !101, i64 16}
!98 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !99, i64 0}
!99 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !100, i64 0}
!100 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !35, i64 0}
!101 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !5, i64 0}
!102 = !{!"_ZTSN6hermes18BinaryOperatorInst6OpKindE", !5, i64 0}
!103 = !{!104, !106, i64 132}
!104 = !{!"_ZTSN6hermes17UnaryOperatorInstE", !105, i64 0, !106, i64 132}
!105 = !{!"_ZTSN6hermes17SingleOperandInstE", !93, i64 0}
!106 = !{!"_ZTSN6hermes17UnaryOperatorInst6OpKindE", !5, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"any p2 pointer", !10, i64 0}
!109 = !{!110, !4, i64 16}
!110 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !108, i64 0, !108, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!111 = !{!110, !4, i64 20}
!112 = !{!110, !4, i64 24}
!113 = !{!110, !108, i64 8}
!114 = !{!110, !108, i64 0}
!115 = !{!10, !10, i64 0}
!116 = distinct !{!116, !21}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSN6hermes11InstructionE", !10, i64 0}
!119 = !{!120, !121, i64 0}
!120 = !{!"_ZTSN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEEE", !121, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!121 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEEEE", !10, i64 0}
!122 = !{!120, !4, i64 16}
!123 = distinct !{!123, !21}
!124 = !{!125, !4, i64 8}
!125 = !{!"_ZTSN4llvh8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !126, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!126 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPN6hermes8FunctionEEE", !10, i64 0}
!127 = !{!125, !126, i64 0}
!128 = !{!125, !4, i64 16}
!129 = distinct !{!129, !21}
!130 = !{!131, !132, i64 0}
!131 = !{!"_ZTSN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEEE", !132, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!132 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEEEE", !10, i64 0}
!133 = !{!131, !4, i64 16}
!134 = !{!135, !135, i64 0}
!135 = !{!"p1 _ZTSN6hermes16LoadPropertyInstE", !10, i64 0}
!136 = distinct !{!136, !21}
!137 = !{!138, !4, i64 8}
!138 = !{!"_ZTSN4llvh8DenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEEE", !139, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!139 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPN6hermes11InstructionEEE", !10, i64 0}
!140 = !{!138, !139, i64 0}
!141 = !{!138, !4, i64 16}
!142 = distinct !{!142, !21}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEEE", !145, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!145 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEEEE", !10, i64 0}
!146 = !{!144, !4, i64 16}
!147 = distinct !{!147, !21}
!148 = !{!23, !39, i64 72}
!149 = !{!66, !66, i64 0}
!150 = distinct !{!150, !21}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZSt11make_uniqueIN6hermes13TypeInferenceEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!153 = distinct !{!153, !"_ZSt11make_uniqueIN6hermes13TypeInferenceEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!154 = !{!155, !156, i64 8}
!155 = !{!"_ZTSN6hermes4PassE", !156, i64 8, !157, i64 16}
!156 = !{!"_ZTSN6hermes4Pass8PassKindE", !5, i64 0}
!157 = !{!"_ZTSN4llvh9StringRefE", !55, i64 0, !158, i64 8}
!158 = !{!"long", !5, i64 0}
!159 = !{!55, !55, i64 0}
!160 = !{!158, !158, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"vtable pointer", !6, i64 0}
!163 = !{!164, !165, i64 0}
!164 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes4PassELb0EE", !165, i64 0}
!165 = !{!"p1 _ZTSN6hermes4PassE", !10, i64 0}
!166 = distinct !{!166, !21}
!167 = distinct !{!167, !21}
!168 = distinct !{!168, !21}
!169 = distinct !{!169, !21}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_: argument 0"}
!172 = distinct !{!172, !"_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_"}
!173 = distinct !{!173, !21}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_: argument 0"}
!176 = distinct !{!176, !"_ZN4llvh15SmallPtrSetImplIPN6hermes5ValueEE6insertES3_"}
!177 = distinct !{!177, !21}
end_hunk_1
