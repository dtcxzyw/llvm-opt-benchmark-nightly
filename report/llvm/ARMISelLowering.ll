Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZL10isVEXTMaskN4llvm8ArrayRefIiEENS_3EVTERbRj:bb.a

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ] ; 4 uses
  store i8 0, ptr %3, align 1, !tbaa !213
  %i.k = load i32, ptr %0, align 4, !tbaa !324    ; 4 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  store i32 %i.k, ptr %4, align 4, !tbaa !324
  %.not23.not27 = icmp ugt i32 %i.j, 1
  br i1 %.not23.not27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.m = shl i32 %i.j, 1
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !5

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.n = phi i8 [ 0, %.lr.ph ], [ %i.q, %bb.e ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.01728 = phi i32 [ %i.k, %.lr.ph ], [ %.1, %bb.e ]
  %i.o = add i32 %.01728, 1                       ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.m
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %3, align 1, !tbaa !213
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi i8 [ 1, %bb.g ], [ %i.n, %bb.f ]     ; 2 uses
  %.1 = phi i32 [ 0, %bb.g ], [ %i.o, %bb.f ]     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !324  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %.not = icmp eq i32 %.1, %i.s
  %or.cond = or i1 %i.t, %.not
  br i1 %or.cond, label %bb.e, label %.loopexit

.critedge:                                        ; preds = %bb.e
  %i.u = trunc nuw i8 %i.q to i1
  br i1 %i.u, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.critedge
  %i.v = sub i32 %i.k, %i.j
  store i32 %i.v, ptr %4, align 4, !tbaa !324
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.i, %.critedge, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.2 = phi i1 [ false, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.d ], [ false, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 700) i32 @_ZL26isNEONTwoResultShuffleMaskN4llvm8ArrayRefIiEENS_3EVTERjRb(ptr nofree readonly captures(none) %0, i64 %1, i16 %2, ptr %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 12 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 12 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 12 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 12 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  store i8 0, ptr %5, align 1, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store i16 %2, ptr %17, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  %.not.i.i.i.i = icmp eq i16 %2, 0               ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.a
  %i.b = add i16 %2, -19
  %spec.select.i.i.i.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i.i.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i:              ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #39
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split.i.i.i
  %i.d = zext nneg i16 %2 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !58
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i
  %i.j = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, %.split.i.i.i
  %i.k = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i:          ; preds = %bb.d, %bb.c, %bb.b
  %.fca.1.insert.merged.i.i.i = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i, 0 ; 3 uses
  store i16 %i.m, ptr %16, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i, 1
  store ptr %i.o, ptr %i.n, align 8
  %.not.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.r, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i
  %i.s = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #39
  %i.t = extractvalue { i64, i8 } %i.s, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i:      ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.e ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %i.u = and i64 %.pn.i.i.i, 4294967295
  %i.v = icmp eq i64 %i.u, 64
  br i1 %i.v, label %.loopexit224, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i
  %i.w = load i16, ptr %17, align 8, !tbaa !465   ; 3 uses
  %.not.i.i44.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i44.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.g
  %i.x = add i16 %i.w, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.x, 53
  br i1 %spec.select.i.i.i.i, label %bb.h, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.g
  %i.y = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #39
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %.split.i.i
  %i.z = zext i16 %i.w to i64
  %i.aa = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !62
  %i.ad = zext i16 %i.ac to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.ae = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i:     ; preds = %bb.i, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %i.af = phi i32 [ %i.ad, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %i.ae, %bb.i ] ; 13 uses
  %i.ag = zext i32 %i.af to i64
  %.not.i = icmp eq i64 %1, %i.ag
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i
  %i.ah = shl i32 %i.af, 1
  %i.ai = zext i32 %i.ah to i64
  %.not36.i = icmp eq i64 %1, %i.ai
  %i.aj = and i32 %i.af, 1
  %.not37.i = icmp eq i32 %i.aj, 0
  %or.cond.i = and i1 %.not37.i, %.not36.i
  br i1 %or.cond.i, label %bb.l, label %.loopexit224

bb.k:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i
  %.old.i = and i32 %i.af, 1
  %.not37.old.i = icmp eq i32 %.old.i, 0
  br i1 %.not37.old.i, label %._crit_edge, label %.loopexit224

._crit_edge:                                      ; preds = %bb.k
  %.pre247 = shl i32 %i.af, 1
  %.pre248 = zext i32 %.pre247 to i64
  %i.ak = icmp eq i64 %1, %.pre248
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %.pre70.i.pre-phi = phi i1 [ %i.ak, %._crit_edge ], [ true, %bb.j ] ; 2 uses
  %.not4156.not.i = icmp eq i64 %1, 0
  br i1 %.not4156.not.i, label %.critedge43.i, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %bb.l
  %.not4054.not.i = icmp eq i32 %i.af, 0
  br i1 %.not4054.not.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i, label %.lr.ph58.split.us.i

.lr.ph58.split.us.i:                              ; preds = %.lr.ph58.i
  br i1 %.pre70.i.pre-phi, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i: ; preds = %.lr.ph58.split.us.i, %..critedge_crit_edge.us.us.i
  %.03257.us.us.i = phi i32 [ %i.ba, %..critedge_crit_edge.us.us.i ], [ 0, %.lr.ph58.split.us.i ] ; 3 uses
  %i.al = udiv i32 %.03257.us.us.i, %i.af         ; 3 uses
  store i32 %i.al, ptr %4, align 4, !tbaa !324
  %i.am = add i32 %i.al, %i.af
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i
  %.055.us.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i ], [ %i.az, %bb.o ] ; 4 uses
  %i.an = add i32 %.055.us.us.i, %.03257.us.us.i  ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !324 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = add i32 %.055.us.us.i, %i.al
  %.not38.us.us.i = icmp eq i32 %i.aq, %i.as
  %or.cond53.us.us.i = or i1 %i.ar, %.not38.us.us.i
  br i1 %or.cond53.us.us.i, label %bb.n, label %.loopexit224

bb.n:                                             ; preds = %bb.m
  %i.at = or disjoint i32 %i.an, 1
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !324 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = add i32 %i.am, %.055.us.us.i
  %.not39.us.us.i = icmp eq i32 %i.aw, %i.ay
  %or.cond64.i = or i1 %i.ax, %.not39.us.us.i
  br i1 %or.cond64.i, label %bb.o, label %.loopexit224

bb.o:                                             ; preds = %bb.n
  %i.az = add i32 %.055.us.us.i, 2                ; 2 uses
  %.not40.us.us.i = icmp ult i32 %i.az, %i.af
  br i1 %.not40.us.us.i, label %bb.m, label %..critedge_crit_edge.us.us.i, !llvm.loop !1382

..critedge_crit_edge.us.us.i:                     ; preds = %bb.o
  %i.ba = add i32 %.03257.us.us.i, %i.af          ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %.not41.us.us.i = icmp ugt i64 %1, %i.bb
  br i1 %.not41.us.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i, label %.critedge43.i, !llvm.loop !1383

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i: ; preds = %.lr.ph58.split.us.i, %..critedge_crit_edge.us.i
  %i.bc = phi i64 [ %i.bw, %..critedge_crit_edge.us.i ], [ 0, %.lr.ph58.split.us.i ]
  %.03257.us.i = phi i32 [ %i.bv, %..critedge_crit_edge.us.i ], [ 0, %.lr.ph58.split.us.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !324
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32                    ; 3 uses
  store i32 %i.bg, ptr %4, align 4, !tbaa !324
  %i.bh = add i32 %i.af, %i.bg
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i
  %.055.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i ], [ %i.bu, %bb.r ] ; 4 uses
  %i.bi = add i32 %.055.us.i, %.03257.us.i        ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !324 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = or disjoint i32 %.055.us.i, %i.bg
  %.not38.us.i = icmp eq i32 %i.bl, %i.bn
  %or.cond53.us.i = select i1 %i.bm, i1 true, i1 %.not38.us.i
  br i1 %or.cond53.us.i, label %bb.q, label %.loopexit224

bb.q:                                             ; preds = %bb.p
  %i.bo = or disjoint i32 %i.bi, 1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !324 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  %i.bt = add i32 %i.bh, %.055.us.i
  %.not39.us.i = icmp eq i32 %i.br, %i.bt
  %or.cond66.i = select i1 %i.bs, i1 true, i1 %.not39.us.i
  br i1 %or.cond66.i, label %bb.r, label %.loopexit224

bb.r:                                             ; preds = %bb.q
  %i.bu = add i32 %.055.us.i, 2                   ; 2 uses
  %.not40.us.i = icmp ult i32 %i.bu, %i.af
  br i1 %.not40.us.i, label %bb.p, label %..critedge_crit_edge.us.i, !llvm.loop !1382

..critedge_crit_edge.us.i:                        ; preds = %bb.r
  %i.bv = add i32 %.03257.us.i, %i.af             ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %.not41.us.i = icmp ugt i64 %1, %i.bw
  br i1 %.not41.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i, label %.critedge43.i, !llvm.loop !1383

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i:  ; preds = %.lr.ph58.i, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i
  %i.bx = load i32, ptr %0, align 4, !tbaa !324
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  store i32 %i.bz, ptr %4, align 4, !tbaa !324
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i

.critedge43.i:                                    ; preds = %..critedge_crit_edge.us.i, %..critedge_crit_edge.us.us.i, %bb.l
  br i1 %.pre70.i.pre-phi, label %.critedge43.i.thread, label %_ZL10isVTRNMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

.critedge43.i.thread:                             ; preds = %.critedge43.i
  store i32 0, ptr %4, align 4, !tbaa !324
  br label %_ZL10isVTRNMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

_ZL10isVTRNMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit: ; preds = %.critedge43.i, %.critedge43.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.dm

.loopexit224:                                     ; preds = %bb.q, %bb.p, %bb.m, %bb.n, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store i16 %2, ptr %15, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %3, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i71, label %.split.i.i.i50

.split.i.i.i50:                                   ; preds = %.loopexit224
  %i.cb = add i16 %2, -19
  %spec.select.i.i.i.i.i51 = icmp ult i16 %i.cb, 197
  br i1 %spec.select.i.i.i.i.i51, label %bb.s, label %bb.u

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i71:            ; preds = %.loopexit224
  %i.cc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br i1 %i.cc, label %bb.t, label %bb.u

bb.s:                                             ; preds = %.split.i.i.i50
  %i.cd = zext nneg i16 %2 to i64
  %i.ce = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !58
  %i.ch = insertvalue { i16, ptr } poison, i16 %i.cg, 0
  %i.ci = insertvalue { i16, ptr } %i.ch, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i52

bb.t:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i71
  %i.cj = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i52

bb.u:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i71, %.split.i.i.i50
  %i.ck = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.cl = insertvalue { i16, ptr } %i.ck, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i52

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i52:        ; preds = %bb.u, %bb.t, %bb.s
  %.fca.1.insert.merged.i.i.i53 = phi { i16, ptr } [ %i.cl, %bb.u ], [ %i.ci, %bb.s ], [ %i.cj, %bb.t ] ; 2 uses
  %i.cm = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i53, 0 ; 3 uses
  store i16 %i.cm, ptr %14, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.co = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i53, 1
  store ptr %i.co, ptr %i.cn, align 8
  %.not.i.i.i54 = icmp eq i16 %i.cm, 0
  br i1 %.not.i.i.i54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i52
  %i.cp = zext i16 %i.cm to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i.i.i55 = load i64, ptr %i.cr, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i56

bb.w:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i52
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #39
  %i.ct = extractvalue { i64, i8 } %i.cs, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i56

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i56:    ; preds = %bb.w, %bb.v
  %.pn.i.i.i57 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i55, %bb.v ], [ %i.ct, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.cu = trunc i64 %.pn.i.i.i57 to i32           ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 64
  br i1 %i.cv, label %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i56
  %i.cw = load i16, ptr %15, align 8, !tbaa !465  ; 5 uses
  %.not.i.i36.i = icmp eq i16 %i.cw, 0            ; 2 uses
  br i1 %.not.i.i36.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i70, label %.split.i.i58

.split.i.i58:                                     ; preds = %bb.x
  %i.cx = add i16 %i.cw, -163
  %spec.select.i.i.i.i59 = icmp ult i16 %i.cx, 53
  br i1 %spec.select.i.i.i.i59, label %bb.y, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i60

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i70:     ; preds = %bb.x
  %i.cy = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i70, %.split.i.i58
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i60: ; preds = %.split.i.i58
  %i.cz = zext i16 %i.cw to i64
  %i.da = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !62
  %i.dd = zext i16 %i.dc to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i61

bb.z:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i70
  %i.de = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i61

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i61:   ; preds = %bb.z, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i60
  %i.df = phi i32 [ %i.dd, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i60 ], [ %i.de, %bb.z ] ; 6 uses
  %i.dg = zext i32 %i.df to i64                   ; 3 uses
  %.not.i62 = icmp eq i64 %1, %i.dg
  %i.dh = shl i32 %i.df, 1
  %i.di = zext i32 %i.dh to i64
  %.not30.i = icmp eq i64 %1, %i.di               ; 3 uses
  %or.cond44.i = or i1 %.not.i62, %.not30.i
  br i1 %or.cond44.i, label %.preheader.i, label %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

.preheader.i:                                     ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i61
  %.not3347.not.i = icmp eq i64 %1, 0
  br i1 %.not3347.not.i, label %.critedge35.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.preheader.i
  %.not3245.not.i = icmp eq i32 %i.df, 0
  br i1 %.not3245.not.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i69, label %.lr.ph49.split.us.i

.lr.ph49.split.us.i:                              ; preds = %.lr.ph49.i
  br i1 %.not30.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i67, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i64

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i67: ; preds = %.lr.ph49.split.us.i, %..critedge_crit_edge.us.us.i68
  %.02648.us.us.i = phi i32 [ %i.ds, %..critedge_crit_edge.us.us.i68 ], [ 0, %.lr.ph49.split.us.i ] ; 3 uses
  %i.dj = udiv i32 %.02648.us.us.i, %i.df         ; 2 uses
  store i32 %i.dj, ptr %4, align 4, !tbaa !324
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i67
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %bb.ac ], [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i67 ] ; 2 uses
  %i.dk = trunc nuw i64 %indvars.iv58.i to i32    ; 2 uses
  %i.dl = add i32 %.02648.us.us.i, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !324 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dq = shl i32 %i.dk, 1
  %i.dr = add i32 %i.dq, %i.dj
  %.not31.us.us.i = icmp eq i32 %i.do, %i.dr
  br i1 %.not31.us.us.i, label %bb.ac, label %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %i.dg
  br i1 %exitcond62.not.i, label %..critedge_crit_edge.us.us.i68, label %bb.aa, !llvm.loop !1384

..critedge_crit_edge.us.us.i68:                   ; preds = %bb.ac
  %i.ds = add i32 %.02648.us.us.i, %i.df          ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %.not33.us.us.i = icmp ugt i64 %1, %i.dt
  br i1 %.not33.us.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i67, label %.critedge35.i, !llvm.loop !1385

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i64: ; preds = %.lr.ph49.split.us.i, %..critedge_crit_edge.us.i65
  %i.du = phi i64 [ %i.ei, %..critedge_crit_edge.us.i65 ], [ 0, %.lr.ph49.split.us.i ]
  %.02648.us.i = phi i32 [ %i.eh, %..critedge_crit_edge.us.i65 ], [ 0, %.lr.ph49.split.us.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !324
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32                    ; 2 uses
  store i32 %i.dy, ptr %4, align 4, !tbaa !324
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i64
  %indvars.iv.i = phi i64 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i64 ], [ %indvars.iv.next.i, %bb.af ] ; 2 uses
  %i.dz = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ea = add i32 %.02648.us.i, %i.dz
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !324 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ef = shl i32 %i.dz, 1
  %i.eg = or disjoint i32 %i.ef, %i.dy
  %.not31.us.i = icmp eq i32 %i.ed, %i.eg
  br i1 %.not31.us.i, label %bb.af, label %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dg
  br i1 %exitcond.not.i, label %..critedge_crit_edge.us.i65, label %bb.ad, !llvm.loop !1384

..critedge_crit_edge.us.i65:                      ; preds = %bb.af
  %i.eh = add i32 %.02648.us.i, %i.df             ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %.not33.us.i = icmp ugt i64 %1, %i.ei
  br i1 %.not33.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i64, label %.critedge35.i, !llvm.loop !1385

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i69: ; preds = %.lr.ph49.i, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i69
  %i.ej = load i32, ptr %0, align 4, !tbaa !324
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  store i32 %i.el, ptr %4, align 4, !tbaa !324
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i69

.critedge35.i:                                    ; preds = %..critedge_crit_edge.us.i65, %..critedge_crit_edge.us.us.i68, %.preheader.i
  br i1 %.not30.i, label %.critedge35.thread.i, label %bb.ag

.critedge35.thread.i:                             ; preds = %.critedge35.i
  store i32 0, ptr %4, align 4, !tbaa !324
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge35.thread.i, %.critedge35.i
  br i1 %.not.i.i36.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = add i16 %i.cw, -19
  %spec.select.i.i.i37.i = icmp ult i16 %i.em, 144
  br i1 %spec.select.i.i.i37.i, label %bb.ai, label %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread196

_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread196: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.dm

bb.ai:                                            ; preds = %bb.ah
  %i.en = zext nneg i16 %i.cw to i64
  %i.eo = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ep, align 16
  %i.eq = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 64
  br label %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

bb.aj:                                            ; preds = %bb.ag
  %i.er = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread: ; preds = %bb.ae, %bb.ab, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i56, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.ak

_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit: ; preds = %bb.ai, %bb.aj
  %i.es = phi i1 [ %i.er, %bb.aj ], [ %i.eq, %bb.ai ]
  %i.et = icmp eq i32 %i.cu, 32
  %or.cond.i66 = and i1 %i.et, %i.es
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br i1 %or.cond.i66, label %bb.ak, label %bb.dm

bb.ak:                                            ; preds = %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i16 %2, ptr %13, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %3, ptr %i.eu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i99, label %.split.i.i.i73

.split.i.i.i73:                                   ; preds = %bb.ak
  %i.ev = add i16 %2, -19
  %spec.select.i.i.i.i.i74 = icmp ult i16 %i.ev, 197
  br i1 %spec.select.i.i.i.i.i74, label %bb.al, label %bb.an

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i99:            ; preds = %bb.ak
  %i.ew = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #39
  br i1 %i.ew, label %bb.am, label %bb.an

bb.al:                                            ; preds = %.split.i.i.i73
  %i.ex = zext nneg i16 %2 to i64
  %i.ey = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -2
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !58
  %i.fb = insertvalue { i16, ptr } poison, i16 %i.fa, 0
  %i.fc = insertvalue { i16, ptr } %i.fb, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i75

bb.am:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i99
  %i.fd = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i75

bb.an:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i99, %.split.i.i.i73
  %i.fe = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.ff = insertvalue { i16, ptr } %i.fe, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i75

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i75:        ; preds = %bb.an, %bb.am, %bb.al
  %.fca.1.insert.merged.i.i.i76 = phi { i16, ptr } [ %i.ff, %bb.an ], [ %i.fc, %bb.al ], [ %i.fd, %bb.am ] ; 2 uses
  %i.fg = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i76, 0 ; 3 uses
  store i16 %i.fg, ptr %12, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fi = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i76, 1
  store ptr %i.fi, ptr %i.fh, align 8
  %.not.i.i.i77 = icmp eq i16 %i.fg, 0
  br i1 %.not.i.i.i77, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i75
  %i.fj = zext i16 %i.fg to i64
  %i.fk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 -16
  %.sroa.0.0.copyload.i.i.i.i78 = load i64, ptr %i.fl, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i79

bb.ap:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i75
  %i.fm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #39
  %i.fn = extractvalue { i64, i8 } %i.fm, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i79

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i79:    ; preds = %bb.ap, %bb.ao
  %.pn.i.i.i80 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i78, %bb.ao ], [ %i.fn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.fo = trunc i64 %.pn.i.i.i80 to i32           ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 64
  br i1 %i.fp, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i79
  %i.fq = load i16, ptr %13, align 8, !tbaa !465  ; 5 uses
  %.not.i.i52.i = icmp eq i16 %i.fq, 0            ; 2 uses
  br i1 %.not.i.i52.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i98, label %.split.i.i81

.split.i.i81:                                     ; preds = %bb.aq
  %i.fr = add i16 %i.fq, -163
  %spec.select.i.i.i.i82 = icmp ult i16 %i.fr, 53
  br i1 %spec.select.i.i.i.i82, label %bb.ar, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i83

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i98:     ; preds = %bb.aq
  %i.fs = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #39
  br i1 %i.fs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i98, %.split.i.i81
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i83: ; preds = %.split.i.i81
  %i.ft = zext i16 %i.fq to i64
  %i.fu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 -2
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !62
  %i.fx = zext i16 %i.fw to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i84

bb.as:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i98
  %i.fy = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i84

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i84:   ; preds = %bb.as, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i83
  %i.fz = phi i32 [ %i.fx, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i83 ], [ %i.fy, %bb.as ] ; 15 uses
  %i.ga = zext i32 %i.fz to i64
  %.not.i85 = icmp eq i64 %1, %i.ga
  br i1 %.not.i85, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i84
  %i.gb = shl i32 %i.fz, 1
  %i.gc = zext i32 %i.gb to i64
  %.not43.i = icmp eq i64 %1, %i.gc
  %i.gd = and i32 %i.fz, 1
  %.not44.i = icmp eq i32 %i.gd, 0
  %or.cond49.i = and i1 %.not44.i, %.not43.i
  br i1 %or.cond49.i, label %bb.av, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.au:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i84
  %.old.i97 = and i32 %i.fz, 1
  %.not44.old.i = icmp eq i32 %.old.i97, 0
  br i1 %.not44.old.i, label %._crit_edge239, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

._crit_edge239:                                   ; preds = %bb.au
  %.pre245 = shl i32 %i.fz, 1
  %.pre246 = zext i32 %.pre245 to i64
  %i.ge = icmp eq i64 %1, %.pre246
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge239, %bb.at
  %.pre77.i.pre-phi = phi i1 [ %i.ge, %._crit_edge239 ], [ true, %bb.at ] ; 2 uses
  %.not4867.not.i = icmp eq i64 %1, 0
  br i1 %.not4867.not.i, label %.critedge51.i, label %.lr.ph69.i

.lr.ph69.i:                                       ; preds = %bb.av
  %.not4764.not.i = icmp eq i32 %i.fz, 0
  br i1 %.not4764.not.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i96, label %.lr.ph69.split.us.i

.lr.ph69.split.us.i:                              ; preds = %.lr.ph69.i
  br i1 %.pre77.i.pre-phi, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i94, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i: ; preds = %.lr.ph69.split.us.i
  %i.gf = lshr exact i32 %i.fz, 1
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i88

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i94: ; preds = %.lr.ph69.split.us.i, %..critedge_crit_edge.us.us.i95
  %.03868.us.us.i = phi i32 [ %i.gw, %..critedge_crit_edge.us.us.i95 ], [ 0, %.lr.ph69.split.us.i ] ; 3 uses
  %i.gg = udiv i32 %.03868.us.us.i, %i.fz         ; 2 uses
  store i32 %i.gg, ptr %4, align 4, !tbaa !324
  %i.gh = mul i32 %i.gg, %i.fz
  %i.gi = lshr exact i32 %i.gh, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i94
  %.066.us.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i94 ], [ %i.gv, %bb.ay ] ; 2 uses
  %.03665.us.us.i = phi i32 [ %i.gi, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i94 ], [ %i.gu, %bb.ay ] ; 3 uses
  %i.gj = add i32 %.066.us.us.i, %.03868.us.us.i  ; 2 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !324 ; 2 uses
  %i.gn = icmp slt i32 %i.gm, 0
  %.not45.us.us.i = icmp eq i32 %i.gm, %.03665.us.us.i
  %or.cond61.us.us.i = select i1 %i.gn, i1 true, i1 %.not45.us.us.i
  br i1 %or.cond61.us.us.i, label %bb.ax, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.go = or disjoint i32 %i.gj, 1
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !324 ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 0
  %i.gt = add i32 %.03665.us.us.i, %i.fz
  %.not46.us.us.i = icmp eq i32 %i.gr, %i.gt
  %or.cond63.us.us.i = select i1 %i.gs, i1 true, i1 %.not46.us.us.i
  br i1 %or.cond63.us.us.i, label %bb.ay, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.gu = add i32 %.03665.us.us.i, 1
  %i.gv = add i32 %.066.us.us.i, 2                ; 2 uses
  %.not47.us.us.i = icmp ult i32 %i.gv, %i.fz
  br i1 %.not47.us.us.i, label %bb.aw, label %..critedge_crit_edge.us.us.i95, !llvm.loop !1386

..critedge_crit_edge.us.us.i95:                   ; preds = %bb.ay
  %i.gw = add i32 %.03868.us.us.i, %i.fz          ; 2 uses
  %i.gx = zext i32 %i.gw to i64
  %.not48.us.us.i = icmp ugt i64 %1, %i.gx
  br i1 %.not48.us.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i94, label %.critedge51.i, !llvm.loop !1387

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i88: ; preds = %..critedge_crit_edge.us.i89, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i
  %i.gy = phi i64 [ %i.hs, %..critedge_crit_edge.us.i89 ], [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i ]
  %.03868.us.i = phi i32 [ %i.hr, %..critedge_crit_edge.us.i89 ], [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !324
  %i.hb = icmp ne i32 %i.ha, 0                    ; 2 uses
  %i.hc = zext i1 %i.hb to i32
  store i32 %i.hc, ptr %4, align 4, !tbaa !324
  %i.hd = select i1 %i.hb, i32 %i.gf, i32 0
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i88
  %.066.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i88 ], [ %i.hq, %bb.bb ] ; 2 uses
  %.03665.us.i = phi i32 [ %i.hd, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i88 ], [ %i.hp, %bb.bb ] ; 3 uses
  %i.he = add i32 %.066.us.i, %.03868.us.i        ; 2 uses
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !324 ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  %.not45.us.i = icmp eq i32 %i.hh, %.03665.us.i
  %or.cond61.us.i = select i1 %i.hi, i1 true, i1 %.not45.us.i
  br i1 %or.cond61.us.i, label %bb.ba, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.hj = or disjoint i32 %i.he, 1
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !324 ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 0
  %i.ho = add i32 %.03665.us.i, %i.fz
  %.not46.us.i = icmp eq i32 %i.hm, %i.ho
  %or.cond63.us.i = select i1 %i.hn, i1 true, i1 %.not46.us.i
  br i1 %or.cond63.us.i, label %bb.bb, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.hp = add i32 %.03665.us.i, 1
  %i.hq = add i32 %.066.us.i, 2                   ; 2 uses
  %.not47.us.i = icmp ult i32 %i.hq, %i.fz
  br i1 %.not47.us.i, label %bb.az, label %..critedge_crit_edge.us.i89, !llvm.loop !1386

..critedge_crit_edge.us.i89:                      ; preds = %bb.bb
  %i.hr = add i32 %.03868.us.i, %i.fz             ; 2 uses
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %.not48.us.i = icmp ugt i64 %1, %i.hs
  br i1 %.not48.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i88, label %.critedge51.i, !llvm.loop !1387

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i96: ; preds = %.lr.ph69.i, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i96
  %i.ht = load i32, ptr %0, align 4, !tbaa !324
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  store i32 %i.hv, ptr %4, align 4, !tbaa !324
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i96

.critedge51.i:                                    ; preds = %..critedge_crit_edge.us.i89, %..critedge_crit_edge.us.us.i95, %bb.av
  br i1 %.pre77.i.pre-phi, label %.critedge51.i.thread, label %bb.bc

.critedge51.i.thread:                             ; preds = %.critedge51.i
  store i32 0, ptr %4, align 4, !tbaa !324
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge51.i.thread, %.critedge51.i
  br i1 %.not.i.i52.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hw = add i16 %i.fq, -19
  %spec.select.i.i.i53.i = icmp ult i16 %i.hw, 144
  br i1 %spec.select.i.i.i53.i, label %bb.be, label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread200

_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread200: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dm

bb.be:                                            ; preds = %bb.bd
  %i.hx = zext nneg i16 %i.fq to i64
  %i.hy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i93 = load i64, ptr %i.hz, align 16
  %i.ia = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i93, 64
  br label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

bb.bf:                                            ; preds = %bb.bc
  %i.ib = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #39
  br label %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread: ; preds = %bb.ba, %bb.az, %bb.aw, %bb.ax, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i79, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.bg

_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit: ; preds = %bb.be, %bb.bf
  %i.ic = phi i1 [ %i.ib, %bb.bf ], [ %i.ia, %bb.be ]
  %i.id = icmp eq i32 %i.fo, 32
  %or.cond.i91 = and i1 %i.id, %i.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %or.cond.i91, label %bb.bg, label %bb.dm

bb.bg:                                            ; preds = %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit
  store i8 1, ptr %5, align 1, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i16 %2, ptr %11, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %i.ie, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i135, label %.split.i.i.i101

.split.i.i.i101:                                  ; preds = %bb.bg
  %i.if = add i16 %2, -19
  %spec.select.i.i.i.i.i102 = icmp ult i16 %i.if, 197
  br i1 %spec.select.i.i.i.i.i102, label %bb.bh, label %bb.bj

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i135:           ; preds = %bb.bg
  %i.ig = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #39
  br i1 %i.ig, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %.split.i.i.i101
  %i.ih = zext nneg i16 %2 to i64
  %i.ii = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 -2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !58
  %i.il = insertvalue { i16, ptr } poison, i16 %i.ik, 0
  %i.im = insertvalue { i16, ptr } %i.il, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i103

bb.bi:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i135
  %i.in = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i103

bb.bj:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i135, %.split.i.i.i101
  %i.io = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.ip = insertvalue { i16, ptr } %i.io, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i103

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i103:       ; preds = %bb.bj, %bb.bi, %bb.bh
  %.fca.1.insert.merged.i.i.i104 = phi { i16, ptr } [ %i.ip, %bb.bj ], [ %i.im, %bb.bh ], [ %i.in, %bb.bi ] ; 2 uses
  %i.iq = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i104, 0 ; 3 uses
  store i16 %i.iq, ptr %10, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.is = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i104, 1
  store ptr %i.is, ptr %i.ir, align 8
  %.not.i.i.i105 = icmp eq i16 %i.iq, 0
  br i1 %.not.i.i.i105, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i103
  %i.it = zext i16 %i.iq to i64
  %i.iu = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 -16
  %.sroa.0.0.copyload.i.i.i.i106 = load i64, ptr %i.iv, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i107

bb.bl:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i103
  %i.iw = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #39
  %i.ix = extractvalue { i64, i8 } %i.iw, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i107

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i107:   ; preds = %bb.bl, %bb.bk
  %.pn.i.i.i108 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i106, %bb.bk ], [ %i.ix, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.iy = and i64 %.pn.i.i.i108, 4294967295
  %i.iz = icmp eq i64 %i.iy, 64
  br i1 %i.iz, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i107
  %i.ja = load i16, ptr %11, align 8, !tbaa !465  ; 3 uses
  %.not.i.i42.i = icmp eq i16 %i.ja, 0
  br i1 %.not.i.i42.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i134, label %.split.i.i109

.split.i.i109:                                    ; preds = %bb.bm
  %i.jb = add i16 %i.ja, -163
  %spec.select.i.i.i.i110 = icmp ult i16 %i.jb, 53
  br i1 %spec.select.i.i.i.i110, label %bb.bn, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i111

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i134:    ; preds = %bb.bm
  %i.jc = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #39
  br i1 %i.jc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i134, %.split.i.i109
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i111: ; preds = %.split.i.i109
  %i.jd = zext i16 %i.ja to i64
  %i.je = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.je, i64 -2
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !62
  %i.jh = zext i16 %i.jg to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i112

bb.bo:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i134
  %i.ji = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i112

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i112:  ; preds = %bb.bo, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i111
  %i.jj = phi i32 [ %i.jh, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i111 ], [ %i.ji, %bb.bo ] ; 11 uses
  %i.jk = zext i32 %i.jj to i64
  %.not.i113 = icmp eq i64 %1, %i.jk
  br i1 %.not.i113, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i112
  %i.jl = shl i32 %i.jj, 1
  %i.jm = zext i32 %i.jl to i64
  %.not34.i = icmp eq i64 %1, %i.jm
  %i.jn = and i32 %i.jj, 1
  %.not35.i = icmp eq i32 %i.jn, 0
  %or.cond.i114 = and i1 %.not35.i, %.not34.i
  br i1 %or.cond.i114, label %bb.br, label %.loopexit

bb.bq:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i112
  %.old.i133 = and i32 %i.jj, 1
  %.not35.old.i = icmp eq i32 %.old.i133, 0
  br i1 %.not35.old.i, label %._crit_edge240, label %.loopexit

._crit_edge240:                                   ; preds = %bb.bq
  %.pre243 = shl i32 %i.jj, 1
  %.pre244 = zext i32 %.pre243 to i64
  %i.jo = icmp eq i64 %1, %.pre244
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge240, %bb.bp
  %.pre66.i.pre-phi = phi i1 [ %i.jo, %._crit_edge240 ], [ true, %bb.bp ] ; 2 uses
  %.not3956.not.i = icmp eq i64 %1, 0
  br i1 %.not3956.not.i, label %.critedge41.i, label %.lr.ph58.i117

.lr.ph58.i117:                                    ; preds = %bb.br
  %.not3854.not.i = icmp eq i32 %i.jj, 0
  br i1 %.not3854.not.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i132, label %.lr.ph58.split.us.i118

.lr.ph58.split.us.i118:                           ; preds = %.lr.ph58.i117
  br i1 %.pre66.i.pre-phi, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i125, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i119

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i125: ; preds = %.lr.ph58.split.us.i118, %..critedge_crit_edge.us.us.i129
  %.03157.us.us.i = phi i32 [ %i.kc, %..critedge_crit_edge.us.us.i129 ], [ 0, %.lr.ph58.split.us.i118 ] ; 3 uses
  %i.jp = udiv i32 %.03157.us.us.i, %i.jj         ; 2 uses
  store i32 %i.jp, ptr %4, align 4, !tbaa !324
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i125
  %.055.us.us.i126 = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i125 ], [ %i.kb, %bb.bu ] ; 3 uses
  %i.jq = add i32 %.055.us.us.i126, %.03157.us.us.i ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !324 ; 2 uses
  %i.ju = icmp slt i32 %i.jt, 0
  %i.jv = add i32 %.055.us.us.i126, %i.jp         ; 2 uses
  %.not36.us.us.i = icmp eq i32 %i.jt, %i.jv
  %or.cond51.us.us.i = or i1 %i.ju, %.not36.us.us.i
  br i1 %or.cond51.us.us.i, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.jw = or disjoint i32 %i.jq, 1
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !324 ; 2 uses
  %i.ka = icmp slt i32 %i.jz, 0
  %.not37.us.us.i = icmp eq i32 %i.jz, %i.jv
  %or.cond53.us.us.i127 = or i1 %i.ka, %.not37.us.us.i
  br i1 %or.cond53.us.us.i127, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %bb.bt
  %i.kb = add i32 %.055.us.us.i126, 2             ; 2 uses
  %.not38.us.us.i128 = icmp ult i32 %i.kb, %i.jj
  br i1 %.not38.us.us.i128, label %bb.bs, label %..critedge_crit_edge.us.us.i129, !llvm.loop !1388

..critedge_crit_edge.us.us.i129:                  ; preds = %bb.bu
  %i.kc = add i32 %.03157.us.us.i, %i.jj          ; 2 uses
  %i.kd = zext i32 %i.kc to i64
  %.not39.us.us.i130 = icmp ugt i64 %1, %i.kd
  br i1 %.not39.us.us.i130, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i125, label %.critedge41.i, !llvm.loop !1389

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i119: ; preds = %.lr.ph58.split.us.i118, %..critedge_crit_edge.us.i123
  %i.ke = phi i64 [ %i.kw, %..critedge_crit_edge.us.i123 ], [ 0, %.lr.ph58.split.us.i118 ]
  %.03157.us.i = phi i32 [ %i.kv, %..critedge_crit_edge.us.i123 ], [ 0, %.lr.ph58.split.us.i118 ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !324
  %i.kh = icmp ne i32 %i.kg, 0
  %i.ki = zext i1 %i.kh to i32                    ; 2 uses
  store i32 %i.ki, ptr %4, align 4, !tbaa !324
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bx
  %i.kj = add i32 %.055.us.i120, 2                ; 2 uses
  %.not38.us.i122 = icmp ult i32 %i.kj, %i.jj
  br i1 %.not38.us.i122, label %bb.bw, label %..critedge_crit_edge.us.i123, !llvm.loop !1388

bb.bw:                                            ; preds = %bb.bv, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i119
  %.055.us.i120 = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i119 ], [ %i.kj, %bb.bv ] ; 3 uses
  %i.kk = add i32 %.055.us.i120, %.03157.us.i     ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !324 ; 2 uses
  %i.ko = icmp slt i32 %i.kn, 0
  %i.kp = or disjoint i32 %.055.us.i120, %i.ki    ; 2 uses
  %.not36.us.i = icmp eq i32 %i.kn, %i.kp
  %or.cond51.us.i = select i1 %i.ko, i1 true, i1 %.not36.us.i
  br i1 %or.cond51.us.i, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.kq = or disjoint i32 %i.kk, 1
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !324 ; 2 uses
  %i.ku = icmp slt i32 %i.kt, 0
  %.not37.us.i = icmp eq i32 %i.kt, %i.kp
  %or.cond53.us.i121 = select i1 %i.ku, i1 true, i1 %.not37.us.i
  br i1 %or.cond53.us.i121, label %bb.bv, label %.loopexit

..critedge_crit_edge.us.i123:                     ; preds = %bb.bv
  %i.kv = add i32 %.03157.us.i, %i.jj             ; 2 uses
  %i.kw = zext i32 %i.kv to i64                   ; 2 uses
  %.not39.us.i124 = icmp ugt i64 %1, %i.kw
  br i1 %.not39.us.i124, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i119, label %.critedge41.i, !llvm.loop !1389

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i132: ; preds = %.lr.ph58.i117, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i132
  %i.kx = load i32, ptr %0, align 4, !tbaa !324
  %i.ky = icmp ne i32 %i.kx, 0
  %i.kz = zext i1 %i.ky to i32
  store i32 %i.kz, ptr %4, align 4, !tbaa !324
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i132

.critedge41.i:                                    ; preds = %..critedge_crit_edge.us.i123, %..critedge_crit_edge.us.us.i129, %bb.br
  br i1 %.pre66.i.pre-phi, label %.critedge41.i.thread, label %_ZL19isVTRN_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

.critedge41.i.thread:                             ; preds = %.critedge41.i
  store i32 0, ptr %4, align 4, !tbaa !324
  br label %_ZL19isVTRN_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

_ZL19isVTRN_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit: ; preds = %.critedge41.i, %.critedge41.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.dm

.loopexit:                                        ; preds = %bb.bx, %bb.bw, %bb.bs, %bb.bt, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i107, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i16 %2, ptr %9, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %i.la, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i160, label %.split.i.i.i137

.split.i.i.i137:                                  ; preds = %.loopexit
  %i.lb = add i16 %2, -19
  %spec.select.i.i.i.i.i138 = icmp ult i16 %i.lb, 197
  br i1 %spec.select.i.i.i.i.i138, label %bb.by, label %bb.ca

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i160:           ; preds = %.loopexit
  %i.lc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br i1 %i.lc, label %bb.bz, label %bb.ca

bb.by:                                            ; preds = %.split.i.i.i137
  %i.ld = zext nneg i16 %2 to i64
  %i.le = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.le, i64 -2
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !58
  %i.lh = insertvalue { i16, ptr } poison, i16 %i.lg, 0
  %i.li = insertvalue { i16, ptr } %i.lh, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i139

bb.bz:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i160
  %i.lj = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i139

bb.ca:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i160, %.split.i.i.i137
  %i.lk = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.ll = insertvalue { i16, ptr } %i.lk, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i139

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i139:       ; preds = %bb.ca, %bb.bz, %bb.by
  %.fca.1.insert.merged.i.i.i140 = phi { i16, ptr } [ %i.ll, %bb.ca ], [ %i.li, %bb.by ], [ %i.lj, %bb.bz ] ; 2 uses
  %i.lm = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i140, 0 ; 3 uses
  store i16 %i.lm, ptr %8, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lo = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i140, 1
  store ptr %i.lo, ptr %i.ln, align 8
  %.not.i.i.i141 = icmp eq i16 %i.lm, 0
  br i1 %.not.i.i.i141, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i139
  %i.lp = zext i16 %i.lm to i64
  %i.lq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -16
  %.sroa.0.0.copyload.i.i.i.i142 = load i64, ptr %i.lr, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i143

bb.cc:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i139
  %i.ls = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #39
  %i.lt = extractvalue { i64, i8 } %i.ls, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i143

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i143:   ; preds = %bb.cc, %bb.cb
  %.pn.i.i.i144 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i142, %bb.cb ], [ %i.lt, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.lu = trunc i64 %.pn.i.i.i144 to i32          ; 2 uses
  %i.lv = icmp eq i32 %i.lu, 64
  br i1 %i.lv, label %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i143
  %i.lw = load i16, ptr %9, align 8, !tbaa !465   ; 5 uses
  %.not.i.i60.i = icmp eq i16 %i.lw, 0            ; 2 uses
  br i1 %.not.i.i60.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i159, label %.split.i.i145

.split.i.i145:                                    ; preds = %bb.cd
  %i.lx = add i16 %i.lw, -163
  %spec.select.i.i.i.i146 = icmp ult i16 %i.lx, 53
  br i1 %spec.select.i.i.i.i146, label %bb.ce, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i147

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i159:    ; preds = %bb.cd
  %i.ly = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br i1 %i.ly, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i159, %.split.i.i145
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i147: ; preds = %.split.i.i145
  %i.lz = zext i16 %i.lw to i64
  %i.ma = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.ma, i64 -2
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !62
  %i.md = zext i16 %i.mc to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i148

bb.cf:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i159
  %i.me = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i148

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i148:  ; preds = %bb.cf, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i147
  %i.mf = phi i32 [ %i.md, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i147 ], [ %i.me, %bb.cf ] ; 9 uses
  %i.mg = zext i32 %i.mf to i64
  %.not.i149 = icmp eq i64 %1, %i.mg
  %i.mh = shl i32 %i.mf, 1
  %i.mi = zext i32 %i.mh to i64
  %.not49.i = icmp eq i64 %1, %i.mi               ; 4 uses
  %or.cond67.i = or i1 %.not.i149, %.not49.i
  br i1 %or.cond67.i, label %bb.cg, label %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.cg:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i148
  %i.mj = lshr i32 %i.mf, 1                       ; 4 uses
  %.not5273.not.i = icmp eq i64 %1, 0
  br i1 %.not5273.not.i, label %.critedge58.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cg
  %.not5371.not.i = icmp eq i32 %i.mf, 0
  br i1 %.not5371.not.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i158, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.not5168.not.i = icmp eq i32 %i.mj, 0
  br i1 %.not5168.not.i, label %.lr.ph.split.us.split.i, label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  %wide.trip.count97.i = zext nneg i32 %i.mj to i64 ; 2 uses
  br i1 %.not49.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i150

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.us.i: ; preds = %.lr.ph.split.us.split.us.i, %..critedge56_crit_edge.split.us.us.us.us.i
  %.04274.us.us.us.i = phi i32 [ %i.mu, %..critedge56_crit_edge.split.us.us.us.us.i ], [ 0, %.lr.ph.split.us.split.us.i ] ; 3 uses
  %i.mk = udiv i32 %.04274.us.us.us.i, %i.mf      ; 2 uses
  store i32 %i.mk, ptr %4, align 4, !tbaa !324
  br label %.preheader.us.us.us.us.i

.preheader.us.us.us.us.i:                         ; preds = %..critedge_crit_edge.us.us.us.us.i, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.us.i
  %.03972.us.us.us.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.us.i ], [ %i.mt, %..critedge_crit_edge.us.us.us.us.i ] ; 2 uses
  %i.ml = add i32 %.03972.us.us.us.us.i, %.04274.us.us.us.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.preheader.us.us.us.us.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %bb.ci ], [ 0, %.preheader.us.us.us.us.i ] ; 2 uses
  %.03869.us.us.us.us.i = phi i32 [ %i.ms, %bb.ci ], [ %i.mk, %.preheader.us.us.us.us.i ] ; 2 uses
  %i.mm = trunc nuw nsw i64 %indvars.iv94.i to i32
  %i.mn = add i32 %i.ml, %i.mm
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !324 ; 2 uses
  %i.mr = icmp slt i32 %i.mq, 0
  %.not50.us.us.us.us.i = icmp eq i32 %i.mq, %.03869.us.us.us.us.i
  %or.cond54.us.us.us.us.i = select i1 %i.mr, i1 true, i1 %.not50.us.us.us.us.i
  br i1 %or.cond54.us.us.us.us.i, label %bb.ci, label %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %i.ms = add i32 %.03869.us.us.us.us.i, 2
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %..critedge_crit_edge.us.us.us.us.i, label %bb.ch, !llvm.loop !1390

..critedge_crit_edge.us.us.us.us.i:               ; preds = %bb.ci
  %i.mt = add i32 %.03972.us.us.us.us.i, %i.mj    ; 2 uses
  %.not53.us.us.us.us.i = icmp ult i32 %i.mt, %i.mf
  br i1 %.not53.us.us.us.us.i, label %.preheader.us.us.us.us.i, label %..critedge56_crit_edge.split.us.us.us.us.i, !llvm.loop !1391

..critedge56_crit_edge.split.us.us.us.us.i:       ; preds = %..critedge_crit_edge.us.us.us.us.i
  %i.mu = add i32 %.04274.us.us.us.i, %i.mf       ; 2 uses
  %i.mv = zext i32 %i.mu to i64
  %.not52.us.us.us.i = icmp ugt i64 %1, %i.mv
  br i1 %.not52.us.us.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.us.i, label %.critedge58.i, !llvm.loop !1392

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i150: ; preds = %.lr.ph.split.us.split.us.i, %..critedge56_crit_edge.split.us.us.us.i
  %i.mw = phi i64 [ %i.nl, %..critedge56_crit_edge.split.us.us.us.i ], [ 0, %.lr.ph.split.us.split.us.i ]
  %.04274.us.us.i = phi i32 [ %i.nk, %..critedge56_crit_edge.split.us.us.us.i ], [ 0, %.lr.ph.split.us.split.us.i ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !324
  %i.mz = icmp ne i32 %i.my, 0
  %i.na = zext i1 %i.mz to i32                    ; 2 uses
  store i32 %i.na, ptr %4, align 4, !tbaa !324
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %..critedge_crit_edge.us.us.us.i, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i150
  %.03972.us.us.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i150 ], [ %i.nj, %..critedge_crit_edge.us.us.us.i ] ; 2 uses
  %i.nb = add i32 %.03972.us.us.us.i, %.04274.us.us.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %.preheader.us.us.us.i
  %indvars.iv.i151 = phi i64 [ %indvars.iv.next.i152, %bb.ck ], [ 0, %.preheader.us.us.us.i ] ; 2 uses
  %.03869.us.us.us.i = phi i32 [ %i.ni, %bb.ck ], [ %i.na, %.preheader.us.us.us.i ] ; 2 uses
  %i.nc = trunc nuw nsw i64 %indvars.iv.i151 to i32
  %i.nd = add i32 %i.nb, %i.nc
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !324 ; 2 uses
  %i.nh = icmp slt i32 %i.ng, 0
  %.not50.us.us.us.i = icmp eq i32 %i.ng, %.03869.us.us.us.i
  %or.cond54.us.us.us.i = select i1 %i.nh, i1 true, i1 %.not50.us.us.us.i
  br i1 %or.cond54.us.us.us.i, label %bb.ck, label %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.ni = add nuw i32 %.03869.us.us.us.i, 2
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %indvars.iv.next.i152, %wide.trip.count97.i
  br i1 %exitcond.not.i153, label %..critedge_crit_edge.us.us.us.i, label %bb.cj, !llvm.loop !1390

..critedge_crit_edge.us.us.us.i:                  ; preds = %bb.ck
  %i.nj = add i32 %.03972.us.us.us.i, %i.mj       ; 2 uses
  %.not53.us.us.us.i = icmp ult i32 %i.nj, %i.mf
  br i1 %.not53.us.us.us.i, label %.preheader.us.us.us.i, label %..critedge56_crit_edge.split.us.us.us.i, !llvm.loop !1391

..critedge56_crit_edge.split.us.us.us.i:          ; preds = %..critedge_crit_edge.us.us.us.i
  %i.nk = add i32 %.04274.us.us.i, %i.mf          ; 2 uses
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %.not52.us.us.i = icmp ugt i64 %1, %i.nl
  br i1 %.not52.us.us.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i150, label %.critedge58.i, !llvm.loop !1392

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %.not49.i, label %.sink.split.i, label %.critedge58.thread108.i

.critedge58.thread108.i:                          ; preds = %.lr.ph.split.us.split.i
  %i.nm = load i32, ptr %0, align 4, !tbaa !324
  %i.nn = icmp ne i32 %i.nm, 0
  %i.no = zext i1 %i.nn to i32
  br label %.sink.split.i

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i158: ; preds = %.lr.ph.i, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i158
  %i.np = load i32, ptr %0, align 4, !tbaa !324
  %i.nq = icmp ne i32 %i.np, 0
  %i.nr = zext i1 %i.nq to i32
  store i32 %i.nr, ptr %4, align 4, !tbaa !324
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i158

.critedge58.i:                                    ; preds = %..critedge56_crit_edge.split.us.us.us.i, %..critedge56_crit_edge.split.us.us.us.us.i, %bb.cg
  br i1 %.not49.i, label %.sink.split.i, label %bb.cl

.sink.split.i:                                    ; preds = %.critedge58.i, %.critedge58.thread108.i, %.lr.ph.split.us.split.i
  %.sink.i = phi i32 [ %i.no, %.critedge58.thread108.i ], [ 0, %.lr.ph.split.us.split.i ], [ 0, %.critedge58.i ]
  store i32 %.sink.i, ptr %4, align 4, !tbaa !324
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split.i, %.critedge58.i
  br i1 %.not.i.i60.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ns = add i16 %i.lw, -19
  %spec.select.i.i.i61.i = icmp ult i16 %i.ns, 144
  br i1 %spec.select.i.i.i61.i, label %bb.cn, label %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread205

_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread205: ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.dm

bb.cn:                                            ; preds = %bb.cm
  %i.nt = zext nneg i16 %i.lw to i64
  %i.nu = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.nt
  %i.nv = getelementptr i8, ptr %i.nu, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i157 = load i64, ptr %i.nv, align 16
  %i.nw = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i157, 64
  br label %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

bb.co:                                            ; preds = %bb.cl
  %i.nx = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br label %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread: ; preds = %bb.cj, %bb.ch, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i143, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.cp

_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit: ; preds = %bb.cn, %bb.co
  %i.ny = phi i1 [ %i.nx, %bb.co ], [ %i.nw, %bb.cn ]
  %i.nz = icmp eq i32 %i.lu, 32
  %or.cond.i155 = and i1 %i.nz, %i.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %or.cond.i155, label %bb.cp, label %bb.dm

bb.cp:                                            ; preds = %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i16 %2, ptr %7, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.oa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i193, label %.split.i.i.i162

.split.i.i.i162:                                  ; preds = %bb.cp
  %i.ob = add i16 %2, -19
  %spec.select.i.i.i.i.i163 = icmp ult i16 %i.ob, 197
  br i1 %spec.select.i.i.i.i.i163, label %bb.cq, label %bb.cs

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i193:           ; preds = %bb.cp
  %i.oc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  br i1 %i.oc, label %bb.cr, label %bb.cs

bb.cq:                                            ; preds = %.split.i.i.i162
  %i.od = zext nneg i16 %2 to i64
  %i.oe = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 -2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !58
  %i.oh = insertvalue { i16, ptr } poison, i16 %i.og, 0
  %i.oi = insertvalue { i16, ptr } %i.oh, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i164

bb.cr:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i193
  %i.oj = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i164

bb.cs:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i193, %.split.i.i.i162
  %i.ok = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.ol = insertvalue { i16, ptr } %i.ok, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i164

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i164:       ; preds = %bb.cs, %bb.cr, %bb.cq
  %.fca.1.insert.merged.i.i.i165 = phi { i16, ptr } [ %i.ol, %bb.cs ], [ %i.oi, %bb.cq ], [ %i.oj, %bb.cr ] ; 2 uses
  %i.om = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i165, 0 ; 3 uses
  store i16 %i.om, ptr %6, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.oo = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i165, 1
  store ptr %i.oo, ptr %i.on, align 8
  %.not.i.i.i166 = icmp eq i16 %i.om, 0
  br i1 %.not.i.i.i166, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i164
  %i.op = zext i16 %i.om to i64
  %i.oq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 -16
  %.sroa.0.0.copyload.i.i.i.i167 = load i64, ptr %i.or, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i168

bb.cu:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i164
  %i.os = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  %i.ot = extractvalue { i64, i8 } %i.os, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i168

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i168:   ; preds = %bb.cu, %bb.ct
  %.pn.i.i.i169 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i167, %bb.ct ], [ %i.ot, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.ou = trunc i64 %.pn.i.i.i169 to i32          ; 2 uses
  %i.ov = icmp eq i32 %i.ou, 64
  br i1 %i.ov, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i168
  %i.ow = load i16, ptr %7, align 8, !tbaa !465   ; 5 uses
  %.not.i.i50.i = icmp eq i16 %i.ow, 0            ; 2 uses
  br i1 %.not.i.i50.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i192, label %.split.i.i170

.split.i.i170:                                    ; preds = %bb.cv
  %i.ox = add i16 %i.ow, -163
  %spec.select.i.i.i.i171 = icmp ult i16 %i.ox, 53
  br i1 %spec.select.i.i.i.i171, label %bb.cw, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i172

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i192:    ; preds = %bb.cv
  %i.oy = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  br i1 %i.oy, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i192, %.split.i.i170
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i172: ; preds = %.split.i.i170
  %i.oz = zext i16 %i.ow to i64
  %i.pa = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 -2
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !62
  %i.pd = zext i16 %i.pc to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i173

bb.cx:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i192
  %i.pe = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i173

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i173:  ; preds = %bb.cx, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i172
  %i.pf = phi i32 [ %i.pd, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i172 ], [ %i.pe, %bb.cx ] ; 13 uses
  %i.pg = zext i32 %i.pf to i64
  %.not.i174 = icmp eq i64 %1, %i.pg
  br i1 %.not.i174, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i173
  %i.ph = shl i32 %i.pf, 1
  %i.pi = zext i32 %i.ph to i64
  %.not41.i = icmp eq i64 %1, %i.pi
  %i.pj = and i32 %i.pf, 1
  %.not42.i = icmp eq i32 %i.pj, 0
  %or.cond47.i = and i1 %.not42.i, %.not41.i
  br i1 %or.cond47.i, label %bb.da, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.cz:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i173
  %.old.i191 = and i32 %i.pf, 1
  %.not42.old.i = icmp eq i32 %.old.i191, 0
  br i1 %.not42.old.i, label %._crit_edge241, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

._crit_edge241:                                   ; preds = %bb.cz
  %.pre = shl i32 %i.pf, 1
  %.pre242 = zext i32 %.pre to i64
  %i.pk = icmp eq i64 %1, %.pre242
  br label %bb.da

bb.da:                                            ; preds = %._crit_edge241, %bb.cy
  %.pre74.i.pre-phi = phi i1 [ %i.pk, %._crit_edge241 ], [ true, %bb.cy ] ; 2 uses
  %.not4664.not.i = icmp eq i64 %1, 0
  br i1 %.not4664.not.i, label %.critedge49.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.da
  %.not4561.not.i = icmp eq i32 %i.pf, 0
  br i1 %.not4561.not.i, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i190, label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.lr.ph66.i
  br i1 %.pre74.i.pre-phi, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i186, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i177

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i177: ; preds = %.lr.ph66.split.us.i
  %i.pl = lshr exact i32 %i.pf, 1
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i178

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i186: ; preds = %.lr.ph66.split.us.i, %..critedge_crit_edge.us.us.i188
  %.03765.us.us.i = phi i32 [ %i.qb, %..critedge_crit_edge.us.us.i188 ], [ 0, %.lr.ph66.split.us.i ] ; 3 uses
  %i.pm = udiv i32 %.03765.us.us.i, %i.pf         ; 2 uses
  store i32 %i.pm, ptr %4, align 4, !tbaa !324
  %i.pn = mul i32 %i.pm, %i.pf
  %i.po = lshr exact i32 %i.pn, 1
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i186
  %.063.us.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i186 ], [ %i.qa, %bb.dd ] ; 2 uses
  %.03562.us.us.i = phi i32 [ %i.po, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i186 ], [ %i.pz, %bb.dd ] ; 3 uses
  %i.pp = add i32 %.063.us.us.i, %.03765.us.us.i  ; 2 uses
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !324 ; 2 uses
  %i.pt = icmp slt i32 %i.ps, 0
  %.not43.us.us.i = icmp eq i32 %i.ps, %.03562.us.us.i
  %or.cond59.us.us.i = select i1 %i.pt, i1 true, i1 %.not43.us.us.i
  br i1 %or.cond59.us.us.i, label %bb.dc, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.dc:                                            ; preds = %bb.db
  %i.pu = or disjoint i32 %i.pp, 1
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !324 ; 2 uses
  %i.py = icmp slt i32 %i.px, 0
  %.not44.us.us.i = icmp eq i32 %i.px, %.03562.us.us.i
  %or.cond60.us.us.i = select i1 %i.py, i1 true, i1 %.not44.us.us.i
  br i1 %or.cond60.us.us.i, label %bb.dd, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.dd:                                            ; preds = %bb.dc
  %i.pz = add i32 %.03562.us.us.i, 1
  %i.qa = add i32 %.063.us.us.i, 2                ; 2 uses
  %.not45.us.us.i187 = icmp ult i32 %i.qa, %i.pf
  br i1 %.not45.us.us.i187, label %bb.db, label %..critedge_crit_edge.us.us.i188, !llvm.loop !1393

..critedge_crit_edge.us.us.i188:                  ; preds = %bb.dd
  %i.qb = add i32 %.03765.us.us.i, %i.pf          ; 2 uses
  %i.qc = zext i32 %i.qb to i64
  %.not46.us.us.i189 = icmp ugt i64 %1, %i.qc
  br i1 %.not46.us.us.i189, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.us.i186, label %.critedge49.i, !llvm.loop !1394

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i178: ; preds = %..critedge_crit_edge.us.i180, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i177
  %i.qd = phi i64 [ %i.qw, %..critedge_crit_edge.us.i180 ], [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i177 ]
  %.03765.us.i = phi i32 [ %i.qv, %..critedge_crit_edge.us.i180 ], [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.preheader.i177 ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !324
  %i.qg = icmp ne i32 %i.qf, 0                    ; 2 uses
  %i.qh = zext i1 %i.qg to i32
  store i32 %i.qh, ptr %4, align 4, !tbaa !324
  %i.qi = select i1 %i.qg, i32 %i.pl, i32 0
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i178
  %.063.us.i = phi i32 [ 0, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i178 ], [ %i.qu, %bb.dg ] ; 2 uses
  %.03562.us.i = phi i32 [ %i.qi, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i178 ], [ %i.qt, %bb.dg ] ; 3 uses
  %i.qj = add i32 %.063.us.i, %.03765.us.i        ; 2 uses
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !324 ; 2 uses
  %i.qn = icmp slt i32 %i.qm, 0
  %.not43.us.i = icmp eq i32 %i.qm, %.03562.us.i
  %or.cond59.us.i = select i1 %i.qn, i1 true, i1 %.not43.us.i
  br i1 %or.cond59.us.i, label %bb.df, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.df:                                            ; preds = %bb.de
  %i.qo = or disjoint i32 %i.qj, 1
  %i.qp = zext i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !324 ; 2 uses
  %i.qs = icmp slt i32 %i.qr, 0
  %.not44.us.i = icmp eq i32 %i.qr, %.03562.us.i
  %or.cond60.us.i = select i1 %i.qs, i1 true, i1 %.not44.us.i
  br i1 %or.cond60.us.i, label %bb.dg, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread

bb.dg:                                            ; preds = %bb.df
  %i.qt = add i32 %.03562.us.i, 1
  %i.qu = add i32 %.063.us.i, 2                   ; 2 uses
  %.not45.us.i179 = icmp ult i32 %i.qu, %i.pf
  br i1 %.not45.us.i179, label %bb.de, label %..critedge_crit_edge.us.i180, !llvm.loop !1393

..critedge_crit_edge.us.i180:                     ; preds = %bb.dg
  %i.qv = add i32 %.03765.us.i, %i.pf             ; 2 uses
  %i.qw = zext i32 %i.qv to i64                   ; 2 uses
  %.not46.us.i181 = icmp ugt i64 %1, %i.qw
  br i1 %.not46.us.i181, label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.us.i178, label %.critedge49.i, !llvm.loop !1394

_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i190: ; preds = %.lr.ph66.i, %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i190
  %i.qx = load i32, ptr %0, align 4, !tbaa !324
  %i.qy = icmp ne i32 %i.qx, 0
  %i.qz = zext i1 %i.qy to i32
  store i32 %i.qz, ptr %4, align 4, !tbaa !324
  br label %_ZL14SelectPairHalfjN4llvm8ArrayRefIiEEj.exit.i190

.critedge49.i:                                    ; preds = %..critedge_crit_edge.us.i180, %..critedge_crit_edge.us.us.i188, %bb.da
  br i1 %.pre74.i.pre-phi, label %.critedge49.i.thread, label %bb.dh

.critedge49.i.thread:                             ; preds = %.critedge49.i
  store i32 0, ptr %4, align 4, !tbaa !324
  br label %bb.dh

bb.dh:                                            ; preds = %.critedge49.i.thread, %.critedge49.i
  br i1 %.not.i.i50.i, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ra = add i16 %i.ow, -19
  %spec.select.i.i.i51.i = icmp ult i16 %i.ra, 144
  br i1 %spec.select.i.i.i51.i, label %bb.dj, label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread210

_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread210: ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.rb = zext nneg i16 %i.ow to i64
  %i.rc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.rb
  %i.rd = getelementptr i8, ptr %i.rc, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i185 = load i64, ptr %i.rd, align 16
  %i.re = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i185, 64
  br label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

bb.dk:                                            ; preds = %bb.dh
  %i.rf = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #39
  br label %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit

_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread: ; preds = %bb.df, %bb.de, %bb.db, %bb.dc, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i168, %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.dm

_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit: ; preds = %bb.dj, %bb.dk
  %i.rg = phi i1 [ %i.rf, %bb.dk ], [ %i.re, %bb.dj ]
  %i.rh = icmp eq i32 %i.ou, 32
  %or.cond.i183 = and i1 %i.rh, %i.rg
  %or.cond.i183.fr = freeze i1 %or.cond.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %or.cond.i183.fr, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread210, %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit, %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread, %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread205, %_ZL19isVTRN_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit, %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread200, %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread196, %_ZL10isVTRNMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit, %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit, %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit, %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit
  %.0 = phi i32 [ 698, %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit ], [ 696, %_ZL10isVTRNMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit ], [ 698, %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit ], [ 699, %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit ], [ 696, %_ZL19isVTRN_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit ], [ 698, %_ZL19isVUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread205 ], [ 698, %_ZL10isVUZPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread196 ], [ 699, %_ZL10isVZIPMaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread200 ], [ 699, %bb.dl ], [ 0, %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit ], [ 0, %_ZL19isVZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL13isReverseMaskN4llvm8ArrayRefIiEENS_3EVTE(ptr nofree readonly captures(none) %0, i64 %1, i16 %2, ptr %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %2, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %2, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %2 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !62
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = zext i32 %i.j to i64
  %.not = icmp eq i64 %1, %i.k
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not1215 = icmp eq i32 %i.j, 0
  br i1 %.not1215, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !324  ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.o = trunc nuw i64 %indvars.iv to i32
  %i.p = xor i32 %i.o, -1
  %i.q = add i32 %i.j, %i.p
  %.not13 = icmp eq i32 %i.m, %i.q
  br i1 %.not13, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not12 = icmp eq i64 %indvars.iv.next, %1
  br i1 %.not12, label %.loopexit, label %.lr.ph, !llvm.loop !6

.loopexit:                                        ; preds = %bb.d, %bb.e, %.preheader, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.1 = phi i1 [ false, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ true, %.preheader ], [ false, %bb.d ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL11isVMOVNMaskN4llvm8ArrayRefIiEENS_3EVTEbb(ptr nofree readonly captures(none) %0, i64 %1, i16 %2, ptr %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %2, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %2, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %2 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !62
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ] ; 4 uses
  %i.k = zext i32 %i.j to i64
  %.not = icmp eq i64 %1, %i.k
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not.i = icmp ne i16 %2, 62
  %i.l = icmp ne ptr %3, null
  %.not.i21 = icmp ne i16 %2, 48
  %i.m = and i1 %.not.i, %.not.i21
  %or.cond = select i1 %i.m, i1 true, i1 %i.l
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %not. = xor i1 %4, true
  %i.n = zext i1 %not. to i32
  %i.o = select i1 %5, i32 0, i32 %i.j
  %i.p = add i32 %i.o, %i.n
  %.not20.not29.not = icmp eq i32 %i.j, 0
  br i1 %.not20.not29.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.030 = phi i32 [ %i.aa, %bb.g ], [ 0, %bb.e ]  ; 5 uses
  %i.q = zext i32 %.030 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !324  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %.not18 = icmp eq i32 %i.s, %.030
  %or.cond28 = or i1 %i.t, %.not18
  br i1 %or.cond28, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.u = or disjoint i32 %.030, 1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !324  ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  %i.z = add i32 %i.p, %.030
  %.not19 = icmp eq i32 %i.x, %i.z
  %or.cond35 = or i1 %i.y, %.not19
  br i1 %or.cond35, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %.030, 2                        ; 2 uses
  %.not20.not = icmp ult i32 %i.aa, %i.j
  br i1 %.not20.not, label %.lr.ph, label %.critedge, !llvm.loop !1395

.critedge:                                        ; preds = %bb.f, %bb.g, %.lr.ph, %bb.e, %bb.d, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
end_hunk_0
