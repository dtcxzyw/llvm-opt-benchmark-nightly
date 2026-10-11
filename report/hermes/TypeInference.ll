Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TypeInference?download=true
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
  %.sroa.07.019.i = load ptr, ptr %i.a, align 8, !tbaa !74 ; 2 uses
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
  %i.u = insertelement <2 x ptr> poison, ptr %i.h, i64 0
  %i.v = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x ptr> poison, ptr %i.m, i64 0
  %i.x = shufflevector <2 x ptr> %i.w, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %.lr.ph.i
  %.sroa.07.022.i = phi ptr [ %.sroa.07.019.i, %.lr.ph.i ], [ %.sroa.07.0.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ] ; 17 uses
  %.021.i = phi i1 [ false, %.lr.ph.i ], [ %11, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @_ZN6hermes23SimpleCallGraphProvider21initCallRelationshipsEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull %.sroa.07.022.i) #8
  %.val.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !10 ; 4 uses
  %.val.val29.i.i = load i32, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %i.y = icmp eq i32 %.val.val29.i.i, 0
  br i1 %i.y, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = ptrtoint ptr %.sroa.07.022.i to i64
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = lshr i32 %i.aa, 9
  %i.ad = xor i32 %i.ab, %i.ac
  %i.ae = add i32 %.val.val29.i.i, -1             ; 3 uses
  %.02744.i.i.i.i.i.i = and i32 %i.ae, %i.ad      ; 3 uses
  %i.af = zext nneg i32 %.02744.i.i.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13 ; 3 uses
  %i.ai = icmp eq ptr %.sroa.07.022.i, %i.ah
  br i1 %i.ai, label %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !75

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %i.aj = phi ptr [ %i.ap, %bb.d ], [ %i.ah, %bb.c ]
  %.02747.i.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i.i, %bb.d ], [ %.02744.i.i.i.i.i.i, %bb.c ]
  %.046.i.i.i.i.i.i = phi i32 [ %i.al, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.ak = icmp eq ptr %i.aj, inttoptr (i64 -8 to ptr)
  br i1 %i.ak, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i, label %bb.d, !prof !76

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = add i32 %.046.i.i.i.i.i.i, 1
  %i.am = add i32 %.046.i.i.i.i.i.i, %.02747.i.i.i.i.i.i
  %.027.i.i.i.i.i.i = and i32 %i.am, %i.ae        ; 2 uses
  %i.an = zext i32 %.027.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.07.022.i, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !77, !llvm.loop !62

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.e
  %i.ar = phi ptr [ %i.ax, %bb.e ], [ %i.ah, %bb.d ]
  %.02747.i.i.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i.i.i, %bb.e ], [ %.02744.i.i.i.i.i.i, %bb.d ]
  %.046.i.i.i.i.i.i.i = phi i32 [ %i.at, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.as = icmp eq ptr %i.ar, inttoptr (i64 -8 to ptr)
  br i1 %i.as, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i, label %bb.e, !prof !76

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.at = add i32 %.046.i.i.i.i.i.i.i, 1
  %i.au = add i32 %.046.i.i.i.i.i.i.i, %.02747.i.i.i.i.i.i.i
  %.027.i.i.i.i.i.i.i = and i32 %i.au, %i.ae      ; 2 uses
  %i.av = zext i32 %.027.i.i.i.i.i.i.i to i64
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = icmp eq ptr %.sroa.07.022.i, %i.ax
  br i1 %i.ay, label %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !77, !llvm.loop !62

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.az = zext i32 %.val.val29.i.i to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.val.val.i.i, i64 %i.az
  br label %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i

_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i: ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i, %bb.c
  %.sink.i.i.ph.pn.i.i.i.i.i = phi ptr [ %i.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIPKS3_EEbRKT_RPSE_.exit.i.i.i.i.i ], [ %i.ag, %bb.c ], [ %i.aw, %bb.e ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 188
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !111, !range !112, !noundef !113
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i
  %i.bf = call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.07.022.i) #8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 632
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !115, !range !112, !noundef !113
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i

bb.g:                                             ; preds = %bb.f, %_ZN6hermes17CallGraphProvider17getKnownCallsitesEPNS_8FunctionE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !116
  store ptr %i.bk, ptr %4, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 104
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !122 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph59.i.i.i.i, label %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i

.lr.ph59.i.i.i.i:                                 ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i.i.i, i64 24
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bn to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i, %.lr.ph59.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph59.i.i.i.i ], [ %.pre.i.i.i.i, %.critedge.i.i.i.i ] ; 3 uses
  %.03057.i.i.i.i = phi i1 [ false, %.lr.ph59.i.i.i.i ], [ %.1.i.i.i.i, %.critedge.i.i.i.i ] ; 2 uses
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !123
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i.i.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !124
  %i.bu = load i32, ptr %i.bp, align 8, !tbaa !125
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = load ptr, ptr %i.bb, align 8, !tbaa !28 ; 5 uses
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !126 ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 3 uses
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %i.bw, i64 %.idx.i.i.i.i.i.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not5.i5.i10.i2.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i.i

.lr.ph.i6.i12.i3.i.i.i.i.i.i:                     ; preds = %bb.j, %.critedge2.i8.i14.i6.i.i.i.i.i.i
  %.sroa.0.3.i4.i.i.i.i.i.i = phi ptr [ %i.cc, %.critedge2.i8.i14.i6.i.i.i.i.i.i ], [ %i.bw, %bb.j ] ; 3 uses
  %i.cb = load ptr, ptr %.sroa.0.3.i4.i.i.i.i.i.i, align 8, !tbaa !30
  %magicptr.i7.i13.i5.i.i.i.i.i.i = ptrtoint ptr %i.cb to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i.i.i.i:                 ; preds = %.lr.ph.i6.i12.i3.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.ca
  br i1 %.not.i9.i15.i7.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i.i.i, !llvm.loop !63

_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i: ; preds = %.critedge2.i8.i14.i6.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i, %bb.j, %bb.i
  %.pn14.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.i ], [ %i.bw, %bb.j ], [ %i.ca, %.critedge2.i8.i14.i6.i.i.i.i.i.i ], [ %.sroa.0.3.i4.i.i.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i.i.i ] ; 2 uses
  %.pn12.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.i ], [ %i.ca, %bb.j ], [ %i.ca, %.lr.ph.i6.i12.i3.i.i.i.i.i.i ], [ %i.ca, %.critedge2.i8.i14.i6.i.i.i.i.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by ; 2 uses
  %.not49.i.i.i.i = icmp eq ptr %.pn14.i.i.i.i.i.i, %i.cd
  %.pre.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 3 uses
  br i1 %.not49.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i
  %i.ce = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.cf = add i32 %i.ce, 3
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.03353.i.i.i.i = phi i1 [ true, %.lr.ph.i.i.i.i ], [ false, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ]
  %.sroa.038.052.i.i.i.i = phi ptr [ %.pn14.i.i.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.038.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.041.051.i.i.i.i = phi i32 [ 1023, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ]
  %.sroa.7.050.i.i.i.i = phi i32 [ 458752, %.lr.ph.i.i.i.i ], [ %.sroa.7.0.extract.shift.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ]
  %i.cg = load ptr, ptr %.sroa.038.052.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.ch = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #8
  %i.ci = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cg) #8
  %i.cj = add i32 %i.ci, -2
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %.pre.i.i.i.i, %i.ck
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.cg, i32 noundef %i.cf) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.032.i.i.i.i = phi ptr [ %i.cm, %bb.l ], [ %i.ch, %bb.k ] ; 2 uses
  br i1 %.03353.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %.032.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.cn, align 2, !tbaa !127
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.041.0.insert.ext42.i.i.i.i = and i32 %.sroa.041.051.i.i.i.i, 65535
  %.sroa.041.0.insert.insert44.i.i.i.i = or disjoint i32 %.sroa.041.0.insert.ext42.i.i.i.i, %.sroa.7.050.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.032.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i36.i.i.i.i = load i32, ptr %i.co, align 2, !tbaa !127
  %i.cp = or i32 %.sroa.041.0.insert.insert44.i.i.i.i, %.sroa.0.0.copyload.i36.i.i.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge.i.i.i.i = phi i32 [ %i.cp, %bb.o ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.n ] ; 4 uses
  %.sroa.7.0.extract.shift.i.i.i.i = and i32 %storemerge.i.i.i.i, -65536
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.038.052.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i.i.i = icmp eq ptr %i.cq, %.pn12.i.i.i.i.i.i
  br i1 %.not5.i3.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i

.lr.ph.i4.i.i.i.i.i.i:                            ; preds = %bb.p, %.critedge2.i6.i.i.i.i.i.i
  %.sroa.038.1.i.i.i.i = phi ptr [ %i.cs, %.critedge2.i6.i.i.i.i.i.i ], [ %i.cq, %bb.p ] ; 3 uses
  %i.cr = load ptr, ptr %.sroa.038.1.i.i.i.i, align 8, !tbaa !30
  %magicptr.i5.i.i.i.i.i.i = ptrtoint ptr %i.cr to i64
  switch i64 %magicptr.i5.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i.i.i
  ]

.critedge2.i6.i.i.i.i.i.i:                        ; preds = %.lr.ph.i4.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %i.cs, %.pn12.i.i.i.i.i.i
  br i1 %.not.i7.i.i.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i, !llvm.loop !63

_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i, %bb.p
  %.sroa.038.2.i.i.i.i = phi ptr [ %i.cq, %bb.p ], [ %i.cs, %.critedge2.i6.i.i.i.i.i.i ], [ %.sroa.038.1.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.038.2.i.i.i.i, %i.cd
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.k

._crit_edge.i.i.i.i:                              ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i37.i.i.i.i = load i32, ptr %i.ct, align 2, !tbaa !127
  %i.cu = and i32 %storemerge.i.i.i.i, 65535      ; 2 uses
  %i.cv = and i32 %.sroa.0.0.copyload.i37.i.i.i.i, 65535 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %i.cv, %i.cu
  %i.cw = xor i32 %i.cv, -1
  %i.cx = and i32 %i.cu, %i.cw
  %.not3.i.i.i.i.i = icmp eq i32 %i.cx, 0
  %i.cy = and i1 %.not.i.i.i.i.i, %.not3.i.i.i.i.i
  br i1 %i.cy, label %bb.q, label %.critedge.i.i.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  store i32 %storemerge.i.i.i.i, ptr %i.ct, align 2, !tbaa !127
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.q, %._crit_edge.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i
  %.1.i.i.i.i = phi i1 [ %.03057.i.i.i.i, %._crit_edge.i.i.i.i ], [ true, %bb.q ], [ %.03057.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.pre.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i, label %bb.h, !llvm.loop !64

_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i: ; preds = %.critedge.i.i.i.i, %bb.g
  %.0.ph.i.i.i = phi i1 [ false, %bb.g ], [ %.1.i.i.i.i, %.critedge.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i, %bb.f, %bb.b
  %.0.i.i.i = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ %.0.ph.i.i.i, %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 88 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 80 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 18 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 72
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i
  %.0.in.i.i = phi i1 [ %.0.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i ], [ %10, %.loopexit.i.i ]
  %.sroa.0102.0123.i.i = load ptr, ptr %i.cz, align 8, !tbaa !74 ; 2 uses
  %.not105124.i.i = icmp eq ptr %.sroa.0102.0123.i.i, %i.da
  br i1 %.not105124.i.i, label %._crit_edge129.i.i, label %.lr.ph128.i.i

._crit_edge129.i.i:                               ; preds = %._crit_edge.i.i, %bb.r
  %.028.lcssa.i.i = phi i8 [ 0, %bb.r ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.dc, align 2, !tbaa !127
  %i.df = load i8, ptr %i.db, align 8, !tbaa !31
  %i.dg = icmp eq i8 %i.df, -126
  br i1 %i.dg, label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge129.i.i
  %.sroa.023.047.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !74 ; 2 uses
  %.not3648.i.i.i = icmp eq ptr %.sroa.023.047.i.i.i, %i.da
  br i1 %.not3648.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

._crit_edge55.loopexit.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %i.dh = zext i16 %.sroa.026.1.lcssa.i.i.i to i32 ; 2 uses
  %i.di = zext i16 %.sroa.7.1.lcssa.i.i.i to i32
  %i.dj = shl nuw i32 %i.di, 16
  %i.dk = or disjoint i32 %i.dj, %i.dh
  br label %._crit_edge55.i.i.i

._crit_edge55.i.i.i:                              ; preds = %._crit_edge55.loopexit.i.i.i, %bb.s
  %.sroa.7.0.lcssa.i.i.i = phi i32 [ 459775, %bb.s ], [ %i.dk, %._crit_edge55.loopexit.i.i.i ]
  %.sroa.026.0.lcssa.i.i.i = phi i32 [ 1023, %bb.s ], [ %i.dh, %._crit_edge55.loopexit.i.i.i ] ; 2 uses
  %i.dl = and i32 %.sroa.0.0.copyload.i.i.i.i, 65535 ; 2 uses
  %.not.i.i30.i.i = icmp ne i32 %i.dl, %.sroa.026.0.lcssa.i.i.i
  %i.dm = xor i32 %i.dl, -1
  %i.dn = and i32 %.sroa.026.0.lcssa.i.i.i, %i.dm
  %.not3.i.i.i.i = icmp eq i32 %i.dn, 0
  %i.do = and i1 %.not.i.i30.i.i, %.not3.i.i.i.i
  br i1 %i.do, label %bb.x, label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.023.052.i.i.i = phi ptr [ %.sroa.023.0.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.023.047.i.i.i, %bb.s ] ; 3 uses
  %.01651.i.i.i = phi i1 [ %.1.lcssa.i.i.i, %._crit_edge.i.i.i ], [ true, %bb.s ] ; 2 uses
  %.sroa.026.050.i.i.i = phi i16 [ %.sroa.026.1.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 1023, %bb.s ] ; 2 uses
  %.sroa.7.049.i.i.i = phi i16 [ %.sroa.7.1.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 7, %bb.s ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.023.052.i.i.i, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.023.052.i.i.i, i64 56 ; 2 uses
  %.sroa.019.039.i.i.i = load ptr, ptr %i.dp, align 8, !tbaa !74 ; 2 uses
  %.not3740.i.i.i = icmp eq ptr %.sroa.019.039.i.i.i, %i.dq
  br i1 %.not3740.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.w, %.lr.ph54.i.i.i
  %.sroa.7.1.lcssa.i.i.i = phi i16 [ %.sroa.7.049.i.i.i, %.lr.ph54.i.i.i ], [ %.sroa.7.2.i.i.i, %bb.w ] ; 2 uses
  %.sroa.026.1.lcssa.i.i.i = phi i16 [ %.sroa.026.050.i.i.i, %.lr.ph54.i.i.i ], [ %.sroa.026.2.i.i.i, %bb.w ] ; 2 uses
  %.1.lcssa.i.i.i = phi i1 [ %.01651.i.i.i, %.lr.ph54.i.i.i ], [ %.3.i.i.i, %bb.w ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.023.052.i.i.i, i64 8
  %.sroa.023.0.i.i.i = load ptr, ptr %i.dr, align 8, !tbaa !74 ; 2 uses
  %.not36.i.i.i = icmp eq ptr %.sroa.023.0.i.i.i, %i.da
  br i1 %.not36.i.i.i, label %._crit_edge55.loopexit.i.i.i, label %.lr.ph54.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph54.i.i.i, %bb.w
  %.sroa.019.044.i.i.i = phi ptr [ %.sroa.019.0.i.i.i, %bb.w ], [ %.sroa.019.039.i.i.i, %.lr.ph54.i.i.i ] ; 4 uses
  %.143.i.i.i = phi i1 [ %.3.i.i.i, %bb.w ], [ %.01651.i.i.i, %.lr.ph54.i.i.i ] ; 2 uses
  %.sroa.026.142.i.i.i = phi i16 [ %.sroa.026.2.i.i.i, %bb.w ], [ %.sroa.026.050.i.i.i, %.lr.ph54.i.i.i ] ; 2 uses
  %.sroa.7.141.i.i.i = phi i16 [ %.sroa.7.2.i.i.i, %bb.w ], [ %.sroa.7.049.i.i.i, %.lr.ph54.i.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.019.044.i.i.i, i64 16
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !31
  %i.du = icmp ne i8 %i.dt, 78
  %.not38.i.i.i = icmp eq ptr %.sroa.019.044.i.i.i, null
  %.not.i.i.i = or i1 %.not38.i.i.i, %i.du
  br i1 %.not.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.019.044.i.i.i, i64 18
  %.sroa.0.0.copyload.i18.i.i.i = load i32, ptr %i.dv, align 2, !tbaa !127 ; 2 uses
  br i1 %.143.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.7.0.insert.ext30.i.i.i = zext i16 %.sroa.7.141.i.i.i to i32
  %.sroa.7.0.insert.shift31.i.i.i = shl nuw i32 %.sroa.7.0.insert.ext30.i.i.i, 16
  %.sroa.026.0.insert.ext27.i.i.i = zext i16 %.sroa.026.142.i.i.i to i32
  %.sroa.026.0.insert.insert29.i.i.i = or disjoint i32 %.sroa.7.0.insert.shift31.i.i.i, %.sroa.026.0.insert.ext27.i.i.i
  %i.dw = or i32 %.sroa.0.0.copyload.i18.i.i.i, %.sroa.026.0.insert.insert29.i.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %storemerge.i.i.i = phi i32 [ %i.dw, %bb.u ], [ %.sroa.0.0.copyload.i18.i.i.i, %bb.t ] ; 2 uses
  %.sroa.026.0.extract.trunc.i.i.i = trunc i32 %storemerge.i.i.i to i16
  %.sroa.7.0.extract.shift.i.i.i = lshr i32 %storemerge.i.i.i, 16
  %.sroa.7.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i to i16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %.sroa.7.2.i.i.i = phi i16 [ %.sroa.7.141.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.7.0.extract.trunc.i.i.i, %bb.v ] ; 2 uses
  %.sroa.026.2.i.i.i = phi i16 [ %.sroa.026.142.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.026.0.extract.trunc.i.i.i, %bb.v ] ; 2 uses
  %.3.i.i.i = phi i1 [ %.143.i.i.i, %.lr.ph.i.i.i ], [ false, %bb.v ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.019.044.i.i.i, i64 8
  %.sroa.019.0.i.i.i = load ptr, ptr %i.dx, align 8, !tbaa !74 ; 2 uses
  %.not37.i.i.i = icmp eq ptr %.sroa.019.0.i.i.i, %i.dq
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.x:                                             ; preds = %._crit_edge55.i.i.i
  store i32 %.sroa.7.0.lcssa.i.i.i, ptr %i.dc, align 2, !tbaa !127
  br label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i

_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i: ; preds = %bb.x, %._crit_edge55.i.i.i, %._crit_edge129.i.i
  %.0.i31.i.i = phi i8 [ %.028.lcssa.i.i, %._crit_edge129.i.i ], [ 1, %bb.x ], [ %.028.lcssa.i.i, %._crit_edge55.i.i.i ] ; 3 uses
  %i.dy = load i8, ptr %i.dd, align 8, !tbaa !128, !range !112, !noundef !113
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.loopexit.i.i, label %bb.dc

.lr.ph128.i.i:                                    ; preds = %bb.r, %._crit_edge.i.i
  %.sroa.0102.0126.i.i = phi ptr [ %.sroa.0102.0.i.i, %._crit_edge.i.i ], [ %.sroa.0102.0123.i.i, %bb.r ] ; 3 uses
  %.028125.i.i = phi i8 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %bb.r ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0102.0126.i.i, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0102.0126.i.i, i64 56 ; 2 uses
  %.sroa.098.0114.i.i = load ptr, ptr %i.ea, align 8, !tbaa !74 ; 2 uses
  %.not106115.i.i = icmp eq ptr %.sroa.098.0114.i.i, %i.eb
  br i1 %.not106115.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i, %.lr.ph128.i.i
  %.1.lcssa.i.i = phi i8 [ %.028125.i.i, %.lr.ph128.i.i ], [ %i.rz, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0102.0126.i.i, i64 8
  %.sroa.0102.0.i.i = load ptr, ptr %i.ec, align 8, !tbaa !74 ; 2 uses
  %.not105.i.i = icmp eq ptr %.sroa.0102.0.i.i, %i.da
  br i1 %.not105.i.i, label %._crit_edge129.i.i, label %.lr.ph128.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph128.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i
  %.sroa.098.0117.i.i = phi ptr [ %.sroa.098.0.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ], [ %.sroa.098.0114.i.i, %.lr.ph128.i.i ] ; 30 uses
  %.1116.i.i = phi i8 [ %i.rz, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ], [ %.028125.i.i, %.lr.ph128.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 18 ; 18 uses
  %.sroa.0.0.copyload.i.i32.i.i = load i32, ptr %i.ee, align 2, !tbaa !127 ; 19 uses
  %i.ef = load i8, ptr %i.ed, align 8, !tbaa !31
  switch i8 %i.ef, label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i [
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
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 132
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !140
  switch i32 %i.eh, label %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i [
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
  %i.ei = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ej, align 2, !tbaa !127 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i.i to i16
  %i.ek = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.098.0117.i.i, i32 noundef 1) #8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %.sroa.0.0.copyload.i15.i.i.i.i.i = load i32, ptr %i.el, align 2, !tbaa !127 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i15.i.i.i.i.i to i16 ; 2 uses
  switch i16 %.sroa.017.0.extract.trunc.i.i.i.i.i, label %.thread.i.i.i.i.i [
    i16 32, label %bb.aa
    i16 64, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.em = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 32
  br i1 %i.em, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.en = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 64
  br i1 %i.en, label %.sink.split.i.i.i.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.ab, %bb.aa, %bb.z
  %i.eo = and i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 960
  %.not.i.i.i61.i.i = icmp eq i32 %i.eo, 0
  %i.ep = and i32 %.sroa.0.0.copyload.i15.i.i.i.i.i, 960
  %.not20.i.i.i.i.i = icmp eq i32 %i.ep, 0
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i61.i.i, i1 true, i1 %.not20.i.i.i.i.i
  %i.eq = select i1 %or.cond.i.i.i.i.i, i32 458784, i32 458848
  br label %.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  %i.qe = load i8, ptr %i.of, align 8, !tbaa !31  ; 2 uses
  %i.qf = icmp eq i8 %i.qe, 53
  br i1 %i.qf, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %.lr.ph.i83.i.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 2 uses
  %i.qh = load i8, ptr %i.qg, align 8, !tbaa !31  ; 2 uses
  %i.qi = add i8 %i.qh, -43
  %i.qj = icmp ult i8 %i.qi, -4
  %.not78151.i.i.i.i = icmp eq ptr %i.qd, null    ; 2 uses
  %.not78.i.i.i.i = select i1 %i.qj, i1 true, i1 %.not78151.i.i.i.i
  br i1 %.not78.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qk = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 0) #8
  %i.ql = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 2) #8
  %.not79.i.i.i.i = icmp eq ptr %i.oe, %i.ql
  br i1 %.not79.i.i.i.i, label %._crit_edge190.i.i.i.i, label %.critedge.i.i43.i.i

._crit_edge190.i.i.i.i:                           ; preds = %bb.cp
  %.pre.i.i49.i.i = load i8, ptr %i.qg, align 8, !tbaa !31
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge190.i.i.i.i, %bb.co
  %i.qm = phi i8 [ %i.qh, %bb.co ], [ %.pre.i.i49.i.i, %._crit_edge190.i.i.i.i ]
  %.169.i.i.i.i = phi ptr [ null, %bb.co ], [ %i.qk, %._crit_edge190.i.i.i.i ]
  %i.qn = add i8 %i.qm, -39
  %i.qo = icmp ult i8 %i.qn, -4
  %.not80.i.i.i.i = select i1 %i.qo, i1 true, i1 %.not78151.i.i.i.i
  br i1 %.not80.i.i.i.i, label %thread-pre-split.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qp = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 0) #8
  %i.qq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 2) #8
  %.not81.i.i.i.i = icmp eq ptr %i.oe, %i.qq
  br i1 %.not81.i.i.i.i, label %thread-pre-split.i.i.i.i, label %.critedge.i.i43.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.cr, %bb.cq
  %.472.ph.i.i.i.i = phi ptr [ %i.qp, %bb.cr ], [ %.169.i.i.i.i, %bb.cq ]
  %.pr.i.i.i.i = load i8, ptr %i.of, align 8, !tbaa !31
  br label %bb.cs

bb.cs:                                            ; preds = %thread-pre-split.i.i.i.i, %.lr.ph.i83.i.i.i
  %i.qr = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.qe, %.lr.ph.i83.i.i.i ]
  %.472.i.i.i.i = phi ptr [ %.472.ph.i.i.i.i, %thread-pre-split.i.i.i.i ], [ null, %.lr.ph.i83.i.i.i ] ; 2 uses
  %i.qs = icmp eq i8 %i.qr, 54
  br i1 %i.qs, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qu = load i8, ptr %i.qt, align 8, !tbaa !31
  %i.qv = add i8 %i.qu, -39
  %i.qw = icmp ult i8 %i.qv, -4
  %.not82153.i.i.i.i = icmp eq ptr %i.qd, null
  %.not82.i.i.i.i = select i1 %i.qw, i1 true, i1 %.not82153.i.i.i.i
  br i1 %.not82.i.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qx = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 0) #8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %.674.i.i.i.i = phi ptr [ %.472.i.i.i.i, %bb.cs ], [ %i.qx, %bb.cu ], [ %.472.i.i.i.i, %bb.ct ] ; 2 uses
  %i.qy = trunc nuw i8 %.151173.i.i.i.i to i1
  br i1 %i.qy, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.qz = getelementptr inbounds nuw i8, ptr %.674.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i110.i.i.i.i = load i32, ptr %i.qz, align 2, !tbaa !127
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %.sroa.7.0.insert.ext135.i.i.i.i = zext i16 %.sroa.7.1168.i.i.i.i to i32
  %.sroa.7.0.insert.shift136.i.i.i.i = shl nuw i32 %.sroa.7.0.insert.ext135.i.i.i.i, 16
  %.sroa.0131.0.insert.ext132.i.i.i.i = zext i16 %.sroa.0131.1170.i.i.i.i to i32
  %.sroa.0131.0.insert.insert134.i.i.i.i = or disjoint i32 %.sroa.7.0.insert.shift136.i.i.i.i, %.sroa.0131.0.insert.ext132.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.674.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i111.i.i.i.i = load i32, ptr %i.ra, align 2, !tbaa !127
  %i.rb = or i32 %.sroa.0.0.copyload.i111.i.i.i.i, %.sroa.0131.0.insert.insert134.i.i.i.i
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %storemerge.i84.i.i.i = phi i32 [ %i.rb, %bb.cx ], [ %.sroa.0.0.copyload.i110.i.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.0131.0.extract.trunc.i.i.i.i = trunc i32 %storemerge.i84.i.i.i to i16
  %.sroa.7.0.extract.shift.i85.i.i.i = lshr i32 %storemerge.i84.i.i.i, 16
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i85.i.i.i to i16
  br label %.critedge.i.i43.i.i

.critedge.i.i43.i.i:                              ; preds = %bb.cy, %bb.cr, %bb.cp
  %.sroa.7.2.i.i.i.i = phi i16 [ %.sroa.7.0.extract.trunc.i.i.i.i, %bb.cy ], [ %.sroa.7.1168.i.i.i.i, %bb.cr ], [ %.sroa.7.1168.i.i.i.i, %bb.cp ] ; 2 uses
  %.sroa.0131.2.i.i.i.i = phi i16 [ %.sroa.0131.0.extract.trunc.i.i.i.i, %bb.cy ], [ %.sroa.0131.1170.i.i.i.i, %bb.cr ], [ %.sroa.0131.1170.i.i.i.i, %bb.cp ] ; 2 uses
  %.353.i.i.i.i = phi i8 [ 0, %bb.cy ], [ %.151173.i.i.i.i, %bb.cr ], [ %.151173.i.i.i.i, %bb.cp ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0118.0172.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i44.i.i = icmp eq ptr %i.rc, %.pn12.i.i102.i.i.i.i
  br i1 %.not5.i3.i.i.i.i44.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i45.i.i

.lr.ph.i4.i.i.i.i45.i.i:                          ; preds = %.critedge.i.i43.i.i, %.critedge2.i6.i.i.i.i47.i.i
  %.sroa.0118.1.i.i.i.i = phi ptr [ %i.re, %.critedge2.i6.i.i.i.i47.i.i ], [ %i.rc, %.critedge.i.i43.i.i ] ; 3 uses
  %i.rd = load ptr, ptr %.sroa.0118.1.i.i.i.i, align 8, !tbaa !41
  %magicptr.i5.i.i.i.i46.i.i = ptrtoint ptr %i.rd to i64
  switch i64 %magicptr.i5.i.i.i.i46.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i47.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i47.i.i
  ]

.critedge2.i6.i.i.i.i47.i.i:                      ; preds = %.lr.ph.i4.i.i.i.i45.i.i, %.lr.ph.i4.i.i.i.i45.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0118.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i48.i.i = icmp eq ptr %i.re, %.pn12.i.i102.i.i.i.i
  br i1 %.not.i7.i.i.i.i48.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i45.i.i, !llvm.loop !69

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i47.i.i, %.lr.ph.i4.i.i.i.i45.i.i, %.critedge.i.i43.i.i
  %.sroa.0118.2.i.i.i.i = phi ptr [ %i.rc, %.critedge.i.i43.i.i ], [ %i.re, %.critedge2.i6.i.i.i.i47.i.i ], [ %.sroa.0118.1.i.i.i.i, %.lr.ph.i4.i.i.i.i45.i.i ] ; 2 uses
  %.not150.i.i.i.i = icmp eq ptr %.sroa.0118.2.i.i.i.i, %i.qc
  br i1 %.not150.i.i.i.i, label %._crit_edge.i86.i.i.i, label %.lr.ph.i83.i.i.i

._crit_edge.i86.i.i.i:                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i
  %.sroa.7.1.lcssa.i.i.i.i = phi i16 [ %.sroa.7.0178.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.sroa.7.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.0131.1.lcssa.i.i.i.i = phi i16 [ %.sroa.0131.0179.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.sroa.0131.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.151.lcssa.i.i.i.i = phi i8 [ %.050181.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.353.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0127.0180.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i112.i.i.i.i = icmp eq ptr %i.rf, %.pn12.i.i.i.i42.i.i
  br i1 %.not5.i3.i.i112.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i, label %.lr.ph.i4.i.i113.i.i.i.i

.lr.ph.i4.i.i113.i.i.i.i:                         ; preds = %._crit_edge.i86.i.i.i, %.critedge2.i6.i.i115.i.i.i.i
  %.sroa.0127.1.i.i.i.i = phi ptr [ %i.rh, %.critedge2.i6.i.i115.i.i.i.i ], [ %i.rf, %._crit_edge.i86.i.i.i ] ; 3 uses
  %i.rg = load ptr, ptr %.sroa.0127.1.i.i.i.i, align 8, !tbaa !41
  %magicptr.i5.i.i114.i.i.i.i = ptrtoint ptr %i.rg to i64
  switch i64 %magicptr.i5.i.i114.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i115.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i115.i.i.i.i
  ]

.critedge2.i6.i.i115.i.i.i.i:                     ; preds = %.lr.ph.i4.i.i113.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0127.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i116.i.i.i.i = icmp eq ptr %i.rh, %.pn12.i.i.i.i42.i.i
  br i1 %.not.i7.i.i116.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i, label %.lr.ph.i4.i.i113.i.i.i.i, !llvm.loop !69

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i: ; preds = %.critedge2.i6.i.i115.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i, %._crit_edge.i86.i.i.i
  %.sroa.0127.2.i.i.i.i = phi ptr [ %i.rf, %._crit_edge.i86.i.i.i ], [ %i.rh, %.critedge2.i6.i.i115.i.i.i.i ], [ %.sroa.0127.1.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i ] ; 2 uses
  %.not.i87.i.i.i = icmp eq ptr %.sroa.0127.2.i.i.i.i, %i.nh
  br i1 %.not.i87.i.i.i, label %.thread149.i.i.i.i, label %.lr.ph182.i.i.i.i

.thread149.i.i.i.i:                               ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i
  %i.ri = trunc nuw i8 %.151.lcssa.i.i.i.i to i1
  %i.rj = zext i16 %.sroa.0131.1.lcssa.i.i.i.i to i32 ; 3 uses
  %i.rk = zext i16 %.sroa.7.1.lcssa.i.i.i.i to i32
  %i.rl = shl nuw i32 %i.rk, 16
  %i.rm = or disjoint i32 %i.rl, %i.rj
  br i1 %i.ri, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %.thread149.i.i.i.i
  %i.rn = and i32 %.sroa.0.0.copyload.i.i32.i.i, 65535 ; 2 uses
  %.not.i.i88.i.i.i = icmp ne i32 %i.rn, %i.rj
  %i.ro = xor i32 %i.rn, -1
  %i.rp = and i32 %i.rj, %i.ro
  %.not3.i.i89.i.i.i = icmp eq i32 %i.rp, 0
  %i.rq = and i1 %.not.i.i88.i.i.i, %.not3.i.i89.i.i.i
  br i1 %i.rq, label %bb.da, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  store i32 %i.rm, ptr %i.ee, align 2, !tbaa !127
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i74.i.i.i, %bb.ch, %.lr.ph182.i.i.i.i, %.lr.ph.i.i.i84.i.i.i.i, %.critedge.i.i.i.i.i, %bb.da, %bb.cz, %.thread149.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, %bb.bz
  %.sroa.0.0.copyload.i92.i.i.i = load i32, ptr %i.ee, align 2, !tbaa !127
  %.sroa.095.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i92.i.i.i to i16
  %i.rr = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.rs = icmp ne i16 %.sroa.095.0.extract.trunc.i.i.i, %i.rr
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.db:                                            ; preds = %.lr.ph.i.i
  %i.rt = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %.sroa.0.0.copyload.i.i93.i.i.i = load i32, ptr %i.ru, align 2, !tbaa !127
  %i.rv = and i32 %.sroa.0.0.copyload.i.i93.i.i.i, -458754 ; 2 uses
  store i32 %i.rv, ptr %i.ee, align 2, !tbaa !127
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.rv to i16
  %i.rw = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.rx = icmp ne i16 %.sroa.0.0.extract.trunc.i.i.i, %i.rw
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i: ; preds = %bb.db, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i, %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i, %.lr.ph.i.i
  %.0.i33.i.i = phi i1 [ %i.rx, %bb.db ], [ %i.fz, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i ], [ %i.gl, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i ], [ %i.hm, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i ], [ %i.ik, %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i ], [ %i.it, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i ], [ %i.jc, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i ], [ %i.lg, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i ], [ %i.lp, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i ], [ %i.rs, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i ], [ false, %.lr.ph.i.i ]
  %i.ry = zext i1 %.0.i33.i.i to i8
  %i.rz = or i8 %.1116.i.i, %i.ry                 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 8
  %.sroa.098.0.i.i = load ptr, ptr %i.sa, align 8, !tbaa !74 ; 2 uses
  %.not106.i.i = icmp eq ptr %.sroa.098.0.i.i, %i.eb
  br i1 %.not106.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dc:                                            ; preds = %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %i.sb = load ptr, ptr %i.de, align 8, !tbaa !150 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 152
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !123 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 160
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !122 ; 2 uses
  %i.sg = zext i32 %i.sf to i64
  %.idx.i.i = shl nuw nsw i64 %i.sg, 3
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx.i.i
  %.not131.i.i = icmp eq i32 %i.sf, 0
  br i1 %.not131.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.lr.ph135.i.i:                                    ; preds = %bb.dc, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i
  %.027133.i.i = phi ptr [ %i.tg, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %i.sd, %bb.dc ] ; 2 uses
  %.2132.i.i = phi i8 [ %7, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ]
  %i.si = load ptr, ptr %.027133.i.i, align 8, !tbaa !151 ; 2 uses
  %i.sj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.si) #8 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !123 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !122 ; 2 uses
  %i.sn = zext i32 %i.sm to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.sn, 3
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 %.idx.i.i.i.i
  %.not50.i.i.i.i = icmp eq i32 %i.sm, 0
  br i1 %.not50.i.i.i.i, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i, label %.lr.ph.i.i62.i.i

.lr.ph.i.i62.i.i:                                 ; preds = %.lr.ph135.i.i, %.thread.i.i63.i.i
  %.054.i.i.i.i = phi i1 [ %.242.i.i.i.i, %.thread.i.i63.i.i ], [ true, %.lr.ph135.i.i ] ; 4 uses
  %.02253.i.i.i.i = phi ptr [ %i.sv, %.thread.i.i63.i.i ], [ %i.sk, %.lr.ph135.i.i ] ; 2 uses
  %.sroa.0.052.i.i.i.i = phi i16 [ %.sroa.0.141.i.i.i.i, %.thread.i.i63.i.i ], [ 1023, %.lr.ph135.i.i ] ; 4 uses
  %.sroa.6.051.i.i.i.i = phi i16 [ %.sroa.6.140.i.i.i.i, %.thread.i.i63.i.i ], [ 7, %.lr.ph135.i.i ] ; 4 uses
  %i.sp = load ptr, ptr %.02253.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i8, ptr %i.sq, align 8, !tbaa !31
  switch i8 %i.sr, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i [
    i8 51, label %bb.dd
    i8 50, label %bb.dd
    i8 49, label %.thread.i.i63.i.i
    i8 22, label %.thread.i.i63.i.i
  ]

bb.dd:                                            ; preds = %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %i.ss = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.sp, i32 noundef 0) #8 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.ss, null
  br i1 %.not27.i.i.i.i, label %.thread.i.i63.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 2
  %.sroa.0.0.copyload.i.i.i67.i.i = load i32, ptr %i.st, align 2, !tbaa !127 ; 2 uses
  br i1 %.054.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.6.0.insert.ext.i.i.i.i = zext i16 %.sroa.6.051.i.i.i.i to i32
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %.sroa.0.052.i.i.i.i to i32
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.su = or i32 %.sroa.0.0.copyload.i.i.i67.i.i, %.sroa.0.0.insert.insert.i.i.i.i
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %storemerge.i.i68.i.i = phi i32 [ %i.su, %bb.df ], [ %.sroa.0.0.copyload.i.i.i67.i.i, %bb.de ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i69.i.i = trunc i32 %storemerge.i.i68.i.i to i16
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i32 %storemerge.i.i68.i.i, 16
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i to i16
  br label %.thread.i.i63.i.i

.thread.i.i63.i.i:                                ; preds = %bb.dg, %bb.dd, %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %.242.i.i.i.i = phi i1 [ false, %bb.dg ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %bb.dd ]
  %.sroa.0.141.i.i.i.i = phi i16 [ %.sroa.0.0.extract.trunc.i.i69.i.i, %bb.dg ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %bb.dd ] ; 2 uses
  %.sroa.6.140.i.i.i.i = phi i16 [ %.sroa.6.0.extract.trunc.i.i.i.i, %bb.dg ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %bb.dd ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.02253.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %i.sv, %i.so
  br i1 %.not.i.i64.i.i, label %bb.dh, label %.lr.ph.i.i62.i.i

bb.dh:                                            ; preds = %.thread.i.i63.i.i
  %i.sw = zext i16 %.sroa.6.140.i.i.i.i to i32
  %i.sx = shl nuw i32 %i.sw, 16
  %i.sy = zext i16 %.sroa.0.141.i.i.i.i to i32
  %i.sz = or disjoint i32 %i.sx, %i.sy
  br label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i

_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i: ; preds = %.lr.ph.i.i62.i.i, %bb.dh, %.lr.ph135.i.i
  %.not.lcssa.i.i.i.i = phi i32 [ 459775, %.lr.ph135.i.i ], [ %i.sz, %bb.dh ], [ 459775, %.lr.ph.i.i62.i.i ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.si, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i.i65.i.i = load i32, ptr %i.ta, align 2, !tbaa !127
  %i.tb = and i32 %.not.lcssa.i.i.i.i, 65535      ; 2 uses
  %i.tc = and i32 %.sroa.0.0.copyload.i.i65.i.i, 65535 ; 2 uses
  %.not.i5.i.i.i = icmp ne i32 %i.tc, %i.tb
  %i.td = xor i32 %i.tc, -1
  %i.te = and i32 %i.tb, %i.td
  %.not3.i.i66.i.i = icmp eq i32 %i.te, 0
  %i.tf = and i1 %.not.i5.i.i.i, %.not3.i.i66.i.i ; 2 uses
  br i1 %i.tf, label %bb.di, label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

bb.di:                                            ; preds = %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  store i32 %.not.lcssa.i.i.i.i, ptr %i.ta, align 2, !tbaa !127
  br label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i:    ; preds = %bb.di, %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  %6 = zext i1 %i.tf to i8
  %7 = or i8 %.2132.i.i, %6                       ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.027133.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.tg, %i.sh
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.loopexit.i.i:                                    ; preds = %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i, %bb.dc, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %.3.i.i = phi i8 [ %.0.i31.i.i, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ], [ %7, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ] ; 2 uses
  %i.th = trunc nuw i8 %.3.i.i to i1
  %8 = zext i1 %.0.in.i.i to i8
  %9 = or i8 %.3.i.i, %8
  %10 = icmp ne i8 %9, 0                          ; 2 uses
  br i1 %i.th, label %bb.r, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, !llvm.loop !71

_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i: ; preds = %.loopexit.i.i
  %11 = or i1 %.021.i, %10                        ; 2 uses
  call void @_ZN6hermes17CallGraphProviderD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 8
  %.sroa.07.0.i = load ptr, ptr %i.ti, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.0.i, %i.b
  br i1 %.not.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit, label %bb.b

_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit: ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %11, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
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
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #9, !noalias !154 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !159, !noalias !154
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !160, !noalias !154
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !161, !noalias !154
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes13TypeInferenceE, i64 16), ptr %i.a, align 8, !tbaa !163, !noalias !154
  store ptr %i.a, ptr %0, align 8, !tbaa !166
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %.pre1.i = load ptr, ptr %i.a, align 8, !tbaa !60 ; 3 uses
  br i1 %i.d, label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.j, %bb.c ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.011.i.i, align 8, !tbaa !41
  %magicptr.i.i = ptrtoint ptr %i.g to i64
  switch i64 %magicptr.i.i, label %bb.b [
    i64 -8, label %bb.c
    i64 -16, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  tail call void @_ZdlPv(ptr noundef %i.i) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !167

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i
  %i.k = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.k) #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %.pre1.i1 = load ptr, ptr %i.l, align 8, !tbaa !51 ; 3 uses
  br i1 %i.o, label %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i2

.lr.ph.preheader.i.i2:                            ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit
  %i.p = zext i32 %i.n to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %.pre1.i1, i64 %.idx.i.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.e, %.lr.ph.preheader.i.i2
  %.011.i.i5 = phi ptr [ %i.u, %bb.e ], [ %.pre1.i1, %.lr.ph.preheader.i.i2 ] ; 3 uses
  %i.r = load ptr, ptr %.011.i.i5, align 8, !tbaa !54
  %magicptr.i.i6 = ptrtoint ptr %i.r to i64
  switch i64 %magicptr.i.i6, label %bb.d [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
  tail call void @_ZdlPv(ptr noundef %i.t) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i4, %.lr.ph.i.i4
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 32 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.u, %i.q
  br i1 %.not.i.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i4, !llvm.loop !168

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.e
  %.pre.i8 = load ptr, ptr %i.l, align 8, !tbaa !51
  br label %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.v = phi ptr [ %.pre.i8, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i1, %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.v) #8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %.pre1.i9 = load ptr, ptr %i.w, align 8, !tbaa !10 ; 3 uses
  br i1 %i.z, label %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i10

.lr.ph.preheader.i.i10:                           ; preds = %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.aa = zext i32 %i.y to i64
  %.idx.i.i11 = shl nuw nsw i64 %i.aa, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre1.i9, i64 %.idx.i.i11
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i10
  %.011.i.i13 = phi ptr [ %i.af, %bb.g ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 3 uses
  %i.ac = load ptr, ptr %.011.i.i13, align 8, !tbaa !13
  %magicptr.i.i14 = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.i.i14, label %bb.f [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph.i.i12
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i13, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  tail call void @_ZdlPv(ptr noundef %i.ae) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i12, %.lr.ph.i.i12
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i13, i64 32 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.af, %i.ab
  br i1 %.not.i.i15, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i12, !llvm.loop !169

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.g
  %.pre.i16 = load ptr, ptr %i.w, align 8, !tbaa !10
  br label %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.ag = phi ptr [ %.pre.i16, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i9, %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.ag) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %.pre1.i17 = load ptr, ptr %0, align 8, !tbaa !44 ; 3 uses
  br i1 %i.aj, label %_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i18

.lr.ph.preheader.i.i18:                           ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.ak = zext i32 %i.ai to i64
  %.idx.i.i19 = shl nuw nsw i64 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %.pre1.i17, i64 %.idx.i.i19
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i18
  %.011.i.i21 = phi ptr [ %i.ap, %bb.i ], [ %.pre1.i17, %.lr.ph.preheader.i.i18 ] ; 3 uses
  %i.am = load ptr, ptr %.011.i.i21, align 8, !tbaa !30
  %magicptr.i.i22 = ptrtoint ptr %i.am to i64
  switch i64 %magicptr.i.i22, label %bb.h [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph.i.i20
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i21, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  tail call void @_ZdlPv(ptr noundef %i.ao) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i20, %.lr.ph.i.i20
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i21, i64 32 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.ap, %i.al
  br i1 %.not.i.i23, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i20, !llvm.loop !170

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.i
  %.pre.i24 = load ptr, ptr %0, align 8, !tbaa !44
  br label %_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.aq = phi ptr [ %.pre.i24, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS2_8FunctionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i17, %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.aq) #8
  ret void
}

declare void @_ZN6hermes23SimpleCallGraphProvider21initCallRelationshipsEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #4
end_hunk_1
