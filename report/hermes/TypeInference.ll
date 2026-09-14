Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TypeInference?download=true
inline.NumInlined: 1077
inline.NumDeleted: 530
begin_hunk_0
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
  %.021.i = phi i1 [ false, %.lr.ph.i ], [ %i.tn, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
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
  %i.ce = trunc nuw i64 %indvars.iv.i.i.i.i to i32
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
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.cn, align 2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.041.0.insert.ext42.i.i.i.i = and i32 %.sroa.041.051.i.i.i.i, 65535
  %.sroa.041.0.insert.insert44.i.i.i.i = or disjoint i32 %.sroa.041.0.insert.ext42.i.i.i.i, %.sroa.7.050.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.032.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i36.i.i.i.i = load i32, ptr %i.co, align 2
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
  %.sroa.0.0.copyload.i37.i.i.i.i = load i32, ptr %i.ct, align 2
  %i.cu = and i32 %storemerge.i.i.i.i, 65535      ; 2 uses
  %i.cv = and i32 %.sroa.0.0.copyload.i37.i.i.i.i, 65535 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %i.cv, %i.cu
  %i.cw = xor i32 %i.cv, -1
  %i.cx = and i32 %i.cu, %i.cw
  %.not3.i.i.i.i.i = icmp eq i32 %i.cx, 0
  %i.cy = and i1 %.not.i.i.i.i.i, %.not3.i.i.i.i.i
  br i1 %i.cy, label %bb.q, label %.critedge.i.i.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  store i32 %storemerge.i.i.i.i, ptr %i.ct, align 2
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
  %.0.in.i.i = phi i1 [ %.0.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i ], [ %i.tm, %.loopexit.i.i ]
  %.sroa.0102.0123.i.i = load ptr, ptr %i.cz, align 8, !tbaa !74 ; 2 uses
  %.not105124.i.i = icmp eq ptr %.sroa.0102.0123.i.i, %i.da
  br i1 %.not105124.i.i, label %._crit_edge129.i.i, label %.lr.ph128.i.i

._crit_edge129.i.i:                               ; preds = %._crit_edge.i.i, %bb.r
  %.028.lcssa.i.i = phi i8 [ 0, %bb.r ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.dc, align 2
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
  %.sroa.0.0.copyload.i18.i.i.i = load i32, ptr %i.dv, align 2 ; 2 uses
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
  store i32 %.sroa.7.0.lcssa.i.i.i, ptr %i.dc, align 2
  br label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i

end_hunk_0
