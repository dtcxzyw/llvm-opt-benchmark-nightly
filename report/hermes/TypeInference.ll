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
define hidden noundef zeroext i1 @_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallPtrSet", align 8 ; 10 uses
  %3 = alloca %"class.llvh::SmallPtrSet", align 8 ; 10 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %.lr.ph.i
  %.sroa.07.022.i = phi ptr [ %.sroa.07.019.i, %.lr.ph.i ], [ %.sroa.07.0.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ] ; 17 uses
  %.021.i = phi i1 [ false, %.lr.ph.i ], [ %.0.in.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ] ; 5 uses
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
  ]

.critedge2.i6.i.i.i.i.i.i:                        ; preds = %.lr.ph.i4.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %i.co, %.pn12.i.i.i.i.i.i
  br i1 %.not.i7.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i, !llvm.loop !87

_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i, %bb.p
  %.sroa.038.2.i.i.i.i = phi ptr [ %i.cm, %bb.p ], [ %i.co, %.critedge2.i6.i.i.i.i.i.i ], [ %.sroa.038.1.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.038.2.i.i.i.i, %i.bz
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.k

._crit_edge.i.i.i.i:                              ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i37.i.i.i.i = load i32, ptr %i.cp, align 2
  %i.cq = and i32 %storemerge.i.i.i.i, 65535      ; 2 uses
  %i.cr = and i32 %.sroa.0.0.copyload.i37.i.i.i.i, 65535 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %i.cr, %i.cq
  %i.cs = xor i32 %i.cr, -1
  %i.ct = and i32 %i.cq, %i.cs
  %.not3.i.i.i.i.i = icmp eq i32 %i.ct, 0
  %i.cu = and i1 %.not.i.i.i.i.i, %.not3.i.i.i.i.i
  br i1 %i.cu, label %bb.q, label %.critedge.i.i.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  store i32 %storemerge.i.i.i.i, ptr %i.cp, align 2
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.q, %._crit_edge.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i
  %.1.i.i.i.i = phi i1 [ %.03057.i.i.i.i, %._crit_edge.i.i.i.i ], [ true, %bb.q ], [ %.03057.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.pre.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.loopexit.i, label %bb.h, !llvm.loop !88

_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.loopexit.i: ; preds = %.critedge.i.i.i.i
  %6 = or i1 %.021.i, %.1.i.i.i.i
  br label %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i

_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i: ; preds = %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.loopexit.i, %bb.g
  %.0.ph.i.i.i = phi i1 [ %.021.i, %bb.g ], [ %6, %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i, %bb.f, %bb.b
  %.0.i.i.i = phi i1 [ %.021.i, %bb.f ], [ %.021.i, %bb.b ], [ %.0.ph.i.i.i, %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i ], [ %.021.i, %.lr.ph.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 88 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 80 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 18 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 72
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i
  %.0.in.i.i = phi i1 [ %.0.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i ], [ true, %.loopexit.i.i ] ; 2 uses
  %.sroa.0102.0123.i.i = load ptr, ptr %i.cv, align 8, !tbaa !7 ; 2 uses
  %.not105124.i.i = icmp eq ptr %.sroa.0102.0123.i.i, %i.cw
  br i1 %.not105124.i.i, label %._crit_edge129.i.i, label %.lr.ph128.i.i

._crit_edge128.loopexit.i.i:                      ; preds = %._crit_edge.i.i
  %7 = trunc nuw i8 %.1.lcssa.i.i to i1
  br label %._crit_edge129.i.i

._crit_edge129.i.i:                               ; preds = %._crit_edge128.loopexit.i.i, %bb.r
  %.027.lcssa.i.i = phi i1 [ false, %bb.r ], [ %7, %._crit_edge128.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.cy, align 2
  %i.db = load i8, ptr %i.cx, align 8, !tbaa !89
  %i.dc = icmp eq i8 %i.db, -126
  br i1 %i.dc, label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge129.i.i
  %.sroa.023.047.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !7 ; 2 uses
  %.not3648.i.i.i = icmp eq ptr %.sroa.023.047.i.i.i, %i.cw
  br i1 %.not3648.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

._crit_edge55.loopexit.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %i.dd = zext i16 %.sroa.026.1.lcssa.i.i.i to i32 ; 2 uses
  %i.de = zext i16 %.sroa.7.1.lcssa.i.i.i to i32
  %i.df = shl nuw i32 %i.de, 16
  %i.dg = or disjoint i32 %i.df, %i.dd
  br label %._crit_edge55.i.i.i

._crit_edge55.i.i.i:                              ; preds = %._crit_edge55.loopexit.i.i.i, %bb.s
  %.sroa.026.0.lcssa.i.i.i = phi i32 [ 1023, %bb.s ], [ %i.dd, %._crit_edge55.loopexit.i.i.i ] ; 2 uses
  %.sroa.7.0.lcssa.i.i.i = phi i32 [ 459775, %bb.s ], [ %i.dg, %._crit_edge55.loopexit.i.i.i ]
  %i.dh = and i32 %.sroa.0.0.copyload.i.i.i.i, 65535 ; 2 uses
  %.not.i.i30.i.i = icmp ne i32 %i.dh, %.sroa.026.0.lcssa.i.i.i
  %i.di = xor i32 %i.dh, -1
  %i.dj = and i32 %.sroa.026.0.lcssa.i.i.i, %i.di
  %.not3.i.i.i.i = icmp eq i32 %i.dj, 0
  %i.dk = and i1 %.not.i.i30.i.i, %.not3.i.i.i.i
  br i1 %i.dk, label %bb.x, label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.023.052.i.i.i = phi ptr [ %.sroa.023.0.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.023.047.i.i.i, %bb.s ] ; 3 uses
  %.01651.i.i.i = phi i1 [ %.1.lcssa.i.i.i, %._crit_edge.i.i.i ], [ true, %bb.s ] ; 2 uses
  %.sroa.7.050.i.i.i = phi i16 [ %.sroa.7.1.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 7, %bb.s ] ; 2 uses
  %.sroa.026.049.i.i.i = phi i16 [ %.sroa.026.1.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 1023, %bb.s ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.023.052.i.i.i, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.023.052.i.i.i, i64 56 ; 2 uses
  %.sroa.019.039.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !7 ; 2 uses
  %.not3740.i.i.i = icmp eq ptr %.sroa.019.039.i.i.i, %i.dm
  br i1 %.not3740.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.w, %.lr.ph54.i.i.i
  %.sroa.026.1.lcssa.i.i.i = phi i16 [ %.sroa.026.049.i.i.i, %.lr.ph54.i.i.i ], [ %.sroa.026.2.i.i.i, %bb.w ] ; 2 uses
  %.sroa.7.1.lcssa.i.i.i = phi i16 [ %.sroa.7.050.i.i.i, %.lr.ph54.i.i.i ], [ %.sroa.7.2.i.i.i, %bb.w ] ; 2 uses
  %.1.lcssa.i.i.i = phi i1 [ %.01651.i.i.i, %.lr.ph54.i.i.i ], [ %.3.i.i.i, %bb.w ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.023.052.i.i.i, i64 8
  %.sroa.023.0.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !7 ; 2 uses
  %.not36.i.i.i = icmp eq ptr %.sroa.023.0.i.i.i, %i.cw
  br i1 %.not36.i.i.i, label %._crit_edge55.loopexit.i.i.i, label %.lr.ph54.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph54.i.i.i, %bb.w
  %.sroa.019.044.i.i.i = phi ptr [ %.sroa.019.0.i.i.i, %bb.w ], [ %.sroa.019.039.i.i.i, %.lr.ph54.i.i.i ] ; 4 uses
  %.143.i.i.i = phi i1 [ %.3.i.i.i, %bb.w ], [ %.01651.i.i.i, %.lr.ph54.i.i.i ] ; 2 uses
  %.sroa.7.142.i.i.i = phi i16 [ %.sroa.7.2.i.i.i, %bb.w ], [ %.sroa.7.050.i.i.i, %.lr.ph54.i.i.i ] ; 2 uses
  %.sroa.026.141.i.i.i = phi i16 [ %.sroa.026.2.i.i.i, %bb.w ], [ %.sroa.026.049.i.i.i, %.lr.ph54.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.019.044.i.i.i, i64 16
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !89
  %i.dq = icmp ne i8 %i.dp, 78
  %.not38.i.i.i = icmp eq ptr %.sroa.019.044.i.i.i, null
  %.not.i.i.i = or i1 %.not38.i.i.i, %i.dq
  br i1 %.not.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.019.044.i.i.i, i64 18
  %.sroa.0.0.copyload.i18.i.i.i = load i32, ptr %i.dr, align 2 ; 2 uses
  br i1 %.143.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.7.0.insert.ext30.i.i.i = zext i16 %.sroa.7.142.i.i.i to i32
  %.sroa.7.0.insert.shift31.i.i.i = shl nuw i32 %.sroa.7.0.insert.ext30.i.i.i, 16
  %.sroa.026.0.insert.ext27.i.i.i = zext i16 %.sroa.026.141.i.i.i to i32
  %.sroa.026.0.insert.insert29.i.i.i = or disjoint i32 %.sroa.7.0.insert.shift31.i.i.i, %.sroa.026.0.insert.ext27.i.i.i
  %i.ds = or i32 %.sroa.0.0.copyload.i18.i.i.i, %.sroa.026.0.insert.insert29.i.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %storemerge.i.i.i = phi i32 [ %i.ds, %bb.u ], [ %.sroa.0.0.copyload.i18.i.i.i, %bb.t ] ; 2 uses
  %.sroa.026.0.extract.trunc.i.i.i = trunc i32 %storemerge.i.i.i to i16
  %.sroa.7.0.extract.shift.i.i.i = lshr i32 %storemerge.i.i.i, 16
  %.sroa.7.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i to i16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %.sroa.026.2.i.i.i = phi i16 [ %.sroa.026.141.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.026.0.extract.trunc.i.i.i, %bb.v ] ; 2 uses
  %.sroa.7.2.i.i.i = phi i16 [ %.sroa.7.142.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.7.0.extract.trunc.i.i.i, %bb.v ] ; 2 uses
  %.3.i.i.i = phi i1 [ %.143.i.i.i, %.lr.ph.i.i.i ], [ false, %bb.v ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.019.044.i.i.i, i64 8
  %.sroa.019.0.i.i.i = load ptr, ptr %i.dt, align 8, !tbaa !7 ; 2 uses
  %.not37.i.i.i = icmp eq ptr %.sroa.019.0.i.i.i, %i.dm
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.x:                                             ; preds = %._crit_edge55.i.i.i
  store i32 %.sroa.7.0.lcssa.i.i.i, ptr %i.cy, align 2
  br label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i

_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i: ; preds = %bb.x, %._crit_edge55.i.i.i, %._crit_edge129.i.i
  %.0.i31.i.i = phi i1 [ %.027.lcssa.i.i, %._crit_edge129.i.i ], [ true, %bb.x ], [ %.027.lcssa.i.i, %._crit_edge55.i.i.i ] ; 3 uses
  %i.du = load i8, ptr %i.cz, align 8, !tbaa !90, !range !67, !noundef !68
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.loopexit.i.i, label %bb.dc

.lr.ph128.i.i:                                    ; preds = %bb.r, %._crit_edge.i.i
  %.sroa.0102.0126.i.i = phi ptr [ %.sroa.0102.0.i.i, %._crit_edge.i.i ], [ %.sroa.0102.0123.i.i, %bb.r ] ; 3 uses
  %.027125.i.i = phi i8 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %bb.r ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0102.0126.i.i, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0102.0126.i.i, i64 56 ; 2 uses
  %.sroa.098.0114.i.i = load ptr, ptr %i.dw, align 8, !tbaa !7 ; 2 uses
  %.not106115.i.i = icmp eq ptr %.sroa.098.0114.i.i, %i.dx
  br i1 %.not106115.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph128.i.i
  %8 = trunc nuw i8 %.027125.i.i to i1
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i
  %9 = zext i1 %10 to i8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.lr.ph128.i.i
  %.1.lcssa.i.i = phi i8 [ %.027125.i.i, %.lr.ph128.i.i ], [ %9, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0102.0126.i.i, i64 8
  %.sroa.0102.0.i.i = load ptr, ptr %i.dy, align 8, !tbaa !7 ; 2 uses
  %.not105.i.i = icmp eq ptr %.sroa.0102.0.i.i, %i.cw
  br i1 %.not105.i.i, label %._crit_edge128.loopexit.i.i, label %.lr.ph128.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.098.0117.i.i = phi ptr [ %.sroa.098.0.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ], [ %.sroa.098.0114.i.i, %.lr.ph.preheader.i.i ] ; 30 uses
  %.1115.i.i = phi i1 [ %10, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ], [ %8, %.lr.ph.preheader.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 18 ; 18 uses
  %.sroa.0.0.copyload.i.i32.i.i = load i32, ptr %i.ea, align 2 ; 19 uses
  %i.eb = load i8, ptr %i.dz, align 8, !tbaa !89
  switch i8 %i.eb, label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i [
    i8 34, label %bb.y
    i8 26, label %bb.an
    i8 33, label %bb.aw
    i8 52, label %bb.bc
    i8 22, label %bb.bj
    i8 49, label %bb.bl
    i8 91, label %bb.bn
    i8 78, label %bb.bx
    i8 46, label %bb.bz
    i8 62, label %bb.db
  ]

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 132
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !91
  switch i32 %i.ed, label %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i [
    i32 1, label %.sink.split.i.i.i.i
    i32 2, label %.sink.split.i.i.i.i
    i32 3, label %.sink.split.i.i.i.i
    i32 4, label %.sink.split.i.i.i.i
    i32 5, label %.sink.split.i.i.i.i
    i32 6, label %.sink.split.i.i.i.i
    i32 7, label %.sink.split.i.i.i.i
    i32 8, label %.sink.split.i.i.i.i
    i32 24, label %.sink.split.i.i.i.i
    i32 25, label %.sink.split.i.i.i.i
    i32 15, label %bb.z
    i32 14, label %bb.z
    i32 13, label %bb.z
    i32 9, label %bb.z
    i32 10, label %bb.z
    i32 16, label %bb.ac
    i32 11, label %bb.af
    i32 12, label %bb.ag
    i32 19, label %bb.am
    i32 17, label %bb.am
    i32 18, label %bb.am
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  %i.ee = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ef, align 2 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i to i16
  %i.eg = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 1) #8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %.sroa.0.0.copyload.i15.i.i.i.i.i = load i32, ptr %i.eh, align 2 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i15.i.i.i.i.i to i16 ; 2 uses
  switch i16 %.sroa.017.0.extract.trunc.i.i.i.i.i, label %.thread.i.i.i.i.i [
    i16 32, label %bb.aa
    i16 64, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ei = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 32
  br i1 %i.ei, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ej = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 64
  br i1 %i.ej, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.ab, %bb.aa, %bb.z
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
end_hunk_0
begin_hunk_1_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i97.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i100.i.i.i.i = icmp eq ptr %i.px, %i.pv
  br i1 %.not.i9.i15.i7.i.i100.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i96.i.i.i.i, !llvm.loop !141

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
  %i.pz = load ptr, ptr %.sroa.0118.0168.i.i.i.i, align 8, !tbaa !116 ; 9 uses
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
  %i.qz = load ptr, ptr %.sroa.0118.1.i.i.i.i, align 8, !tbaa !116
  %magicptr.i5.i.i.i.i46.i.i = ptrtoint ptr %i.qz to i64
  switch i64 %magicptr.i5.i.i.i.i46.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i47.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i47.i.i
  ]

.critedge2.i6.i.i.i.i47.i.i:                      ; preds = %.lr.ph.i4.i.i.i.i45.i.i, %.lr.ph.i4.i.i.i.i45.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0118.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i48.i.i = icmp eq ptr %i.ra, %.pn12.i.i102.i.i.i.i
  br i1 %.not.i7.i.i.i.i48.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i45.i.i, !llvm.loop !141

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
  %i.rc = load ptr, ptr %.sroa.0127.1.i.i.i.i, align 8, !tbaa !116
  %magicptr.i5.i.i114.i.i.i.i = ptrtoint ptr %i.rc to i64
  switch i64 %magicptr.i5.i.i114.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i115.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i115.i.i.i.i
  ]

.critedge2.i6.i.i115.i.i.i.i:                     ; preds = %.lr.ph.i4.i.i113.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0127.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i116.i.i.i.i = icmp eq ptr %i.rd, %.pn12.i.i.i.i42.i.i
  br i1 %.not.i7.i.i116.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i, label %.lr.ph.i4.i.i113.i.i.i.i, !llvm.loop !141

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
  %10 = or i1 %.1115.i.i, %.0.i33.i.i             ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 8
  %.sroa.098.0.i.i = load ptr, ptr %i.ru, align 8, !tbaa !7 ; 2 uses
  %.not106.i.i = icmp eq ptr %.sroa.098.0.i.i, %i.dx
  br i1 %.not106.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

bb.dc:                                            ; preds = %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %i.rv = load ptr, ptr %i.da, align 8, !tbaa !147 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 152
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !78 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 160
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !77 ; 2 uses
  %i.sa = zext i32 %i.rz to i64
  %.idx.i.i = shl nuw nsw i64 %i.sa, 3
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 %.idx.i.i
  %.not131.i.i = icmp eq i32 %i.rz, 0
  br i1 %.not131.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.lr.ph135.i.i:                                    ; preds = %bb.dc, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i
  %.2132.i.i = phi i1 [ %11, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ]
  %.028132.i.i = phi ptr [ %i.ta, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %i.rx, %bb.dc ] ; 2 uses
  %i.sc = load ptr, ptr %.028132.i.i, align 8, !tbaa !148 ; 2 uses
  %i.sd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.sc) #8 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !78 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !77 ; 2 uses
  %i.sh = zext i32 %i.sg to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.sh, 3
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 %.idx.i.i.i.i
  %.not50.i.i.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not50.i.i.i.i, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i, label %.lr.ph.i.i62.i.i

.lr.ph.i.i62.i.i:                                 ; preds = %.lr.ph135.i.i, %.thread.i.i63.i.i
  %.054.i.i.i.i = phi i1 [ %.242.i.i.i.i, %.thread.i.i63.i.i ], [ true, %.lr.ph135.i.i ] ; 4 uses
  %.02253.i.i.i.i = phi ptr [ %i.sp, %.thread.i.i63.i.i ], [ %i.se, %.lr.ph135.i.i ] ; 2 uses
  %.sroa.0.052.i.i.i.i = phi i16 [ %.sroa.0.141.i.i.i.i, %.thread.i.i63.i.i ], [ 1023, %.lr.ph135.i.i ] ; 4 uses
  %.sroa.6.051.i.i.i.i = phi i16 [ %.sroa.6.140.i.i.i.i, %.thread.i.i63.i.i ], [ 7, %.lr.ph135.i.i ] ; 4 uses
  %i.sj = load ptr, ptr %.02253.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !89
  switch i8 %i.sl, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i [
    i8 51, label %bb.dd
    i8 50, label %bb.dd
    i8 49, label %.thread.i.i63.i.i
    i8 22, label %.thread.i.i63.i.i
  ]

bb.dd:                                            ; preds = %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %i.sm = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.sj, i32 noundef 0) #8 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.sm, null
  br i1 %.not27.i.i.i.i, label %.thread.i.i63.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 2
  %.sroa.0.0.copyload.i.i.i67.i.i = load i32, ptr %i.sn, align 2 ; 2 uses
  br i1 %.054.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.6.0.insert.ext.i.i.i.i = zext i16 %.sroa.6.051.i.i.i.i to i32
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %.sroa.0.052.i.i.i.i to i32
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.so = or i32 %.sroa.0.0.copyload.i.i.i67.i.i, %.sroa.0.0.insert.insert.i.i.i.i
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %storemerge.i.i68.i.i = phi i32 [ %i.so, %bb.df ], [ %.sroa.0.0.copyload.i.i.i67.i.i, %bb.de ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i69.i.i = trunc i32 %storemerge.i.i68.i.i to i16
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i32 %storemerge.i.i68.i.i, 16
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i to i16
  br label %.thread.i.i63.i.i

.thread.i.i63.i.i:                                ; preds = %bb.dg, %bb.dd, %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %.242.i.i.i.i = phi i1 [ false, %bb.dg ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %bb.dd ]
  %.sroa.0.141.i.i.i.i = phi i16 [ %.sroa.0.0.extract.trunc.i.i69.i.i, %bb.dg ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %bb.dd ] ; 2 uses
  %.sroa.6.140.i.i.i.i = phi i16 [ %.sroa.6.0.extract.trunc.i.i.i.i, %bb.dg ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %bb.dd ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.02253.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %i.sp, %i.si
  br i1 %.not.i.i64.i.i, label %bb.dh, label %.lr.ph.i.i62.i.i

bb.dh:                                            ; preds = %.thread.i.i63.i.i
  %i.sq = zext i16 %.sroa.6.140.i.i.i.i to i32
  %i.sr = shl nuw i32 %i.sq, 16
  %i.ss = zext i16 %.sroa.0.141.i.i.i.i to i32
  %i.st = or disjoint i32 %i.sr, %i.ss
  br label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i

_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i: ; preds = %.lr.ph.i.i62.i.i, %bb.dh, %.lr.ph135.i.i
  %.not.lcssa.i.i.i.i = phi i32 [ 459775, %.lr.ph135.i.i ], [ %i.st, %bb.dh ], [ 459775, %.lr.ph.i.i62.i.i ] ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sc, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i.i65.i.i = load i32, ptr %i.su, align 2
  %i.sv = and i32 %.not.lcssa.i.i.i.i, 65535      ; 2 uses
  %i.sw = and i32 %.sroa.0.0.copyload.i.i65.i.i, 65535 ; 2 uses
  %.not.i5.i.i.i = icmp ne i32 %i.sw, %i.sv
  %i.sx = xor i32 %i.sw, -1
  %i.sy = and i32 %i.sv, %i.sx
  %.not3.i.i66.i.i = icmp eq i32 %i.sy, 0
  %i.sz = and i1 %.not.i5.i.i.i, %.not3.i.i66.i.i ; 2 uses
  br i1 %i.sz, label %bb.di, label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

bb.di:                                            ; preds = %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  store i32 %.not.lcssa.i.i.i.i, ptr %i.su, align 2
  br label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i:    ; preds = %bb.di, %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  %11 = or i1 %.2132.i.i, %i.sz                   ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.028132.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ta, %i.sb
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.loopexit.i.i:                                    ; preds = %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i, %bb.dc, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %.3.i.i = phi i1 [ %.0.i31.i.i, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ], [ %11, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ]
  br i1 %.3.i.i, label %bb.r, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, !llvm.loop !149

_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i: ; preds = %.loopexit.i.i
  call void @_ZN6hermes17CallGraphProviderD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 8
  %.sroa.07.0.i = load ptr, ptr %i.tb, align 8, !tbaa !7 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.0.i, %i.b
  br i1 %.not.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit, label %bb.b

_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit: ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %.0.in.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes19createTypeInferenceEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes13TypeInferenceESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #9, !noalias !150 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !153, !noalias !150
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !158, !noalias !150
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !159, !noalias !150
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes13TypeInferenceE, i64 16), ptr %i.a, align 8, !tbaa !160, !noalias !150
  store ptr %i.a, ptr %0, align 8, !tbaa !162
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %.pre1.i = load ptr, ptr %i.a, align 8, !tbaa !142 ; 3 uses
  br i1 %i.d, label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.j, %bb.c ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.011.i.i, align 8, !tbaa !116
  %magicptr.i.i = ptrtoint ptr %i.g to i64
  switch i64 %magicptr.i.i, label %bb.b [
    i64 -8, label %bb.c
    i64 -16, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139
  tail call void @_ZdlPv(ptr noundef %i.i) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !165

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !142
  br label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i
  %i.k = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.k) #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %.pre1.i1 = load ptr, ptr %i.l, align 8, !tbaa !129 ; 3 uses
  br i1 %i.o, label %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i2

.lr.ph.preheader.i.i2:                            ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit
  %i.p = zext i32 %i.n to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %.pre1.i1, i64 %.idx.i.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.e, %.lr.ph.preheader.i.i2
  %.011.i.i5 = phi ptr [ %i.u, %bb.e ], [ %.pre1.i1, %.lr.ph.preheader.i.i2 ] ; 3 uses
  %i.r = load ptr, ptr %.011.i.i5, align 8, !tbaa !133
  %magicptr.i.i6 = ptrtoint ptr %i.r to i64
  switch i64 %magicptr.i.i6, label %bb.d [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139
  tail call void @_ZdlPv(ptr noundef %i.t) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i4, %.lr.ph.i.i4
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 32 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.u, %i.q
  br i1 %.not.i.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i4, !llvm.loop !166

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.e
  %.pre.i8 = load ptr, ptr %i.l, align 8, !tbaa !129
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
  br i1 %.not.i.i15, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i12, !llvm.loop !167

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.g
  %.pre.i16 = load ptr, ptr %i.w, align 8, !tbaa !11
  br label %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.ag = phi ptr [ %.pre.i16, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i9, %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.ag) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !121 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %.pre1.i17 = load ptr, ptr %0, align 8, !tbaa !118 ; 3 uses
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
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !126
  tail call void @_ZdlPv(ptr noundef %i.ao) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i20, %.lr.ph.i.i20
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i21, i64 32 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.ap, %i.al
  br i1 %.not.i.i23, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i20, !llvm.loop !168

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.i
  %.pre.i24 = load ptr, ptr %0, align 8, !tbaa !118
  br label %_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.aq = phi ptr [ %.pre.i24, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i17, %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.aq) #8
  ret void
}

declare void @_ZN6hermes23SimpleCallGraphProvider21initCallRelationshipsEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #4
end_hunk_1
