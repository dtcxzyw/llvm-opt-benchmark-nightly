Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIISelLowering?download=true
inline.NumInlined: 17199
inline.NumDeleted: 4185
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZL18getDWordFromOffsetRN4llvm12SelectionDAGENS_5SDLocENS_7SDValueEj:bb.a
  %i.bc = zext i32 %5 to i64                      ; 2 uses
  %i.bd = lshr i64 %.pn.i.i.i, 5                  ; 2 uses
  %i.be = udiv i64 %i.bc, %i.bd
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract72 = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %.fca.0.extract71, ptr %16, align 8
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract72, ptr %.sroa.274.0..sroa_idx, align 8
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %i.av, ptr %i.aw, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #27 ; 2 uses
  %.fca.0.extract67 = extractvalue { ptr, i32 } %i.bg, 0 ; 3 uses
  %.fca.1.extract68 = extractvalue { ptr, i32 } %i.bg, 1 ; 3 uses
  %i.bh = urem i64 %i.bc, %i.bd                   ; 2 uses
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = shl nuw nsw i64 %i.bh, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %.fca.0.extract67, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !540
  %i.bl = zext i32 %.fca.1.extract68 to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %.sroa.0.0.copyload.i.i145 = load i16, ptr %i.bm, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i146 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.21.0.copyload.i.i147 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i146, align 8, !tbaa !240
  store ptr %.fca.0.extract67, ptr %17, align 8, !tbaa !533
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract68, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !233
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.bn, 1
  store ptr %.fca.0.extract56, ptr %18, align 8
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract57, ptr %.sroa.259.0..sroa_idx, align 8
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.copyload.i.i145, ptr %.sroa.21.0.copyload.i.i147, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #27 ; 2 uses
  %.fca.0.extract52 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract53 = extractvalue { ptr, i32 } %i.bo, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0177.0 = phi ptr [ %.fca.0.extract67, %bb.k ], [ %.fca.0.extract52, %bb.l ]
  %.sroa.11.0 = phi i32 [ %.fca.1.extract68, %bb.k ], [ %.fca.1.extract53, %bb.l ]
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG25getBitcastedAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0177.0, i32 %.sroa.11.0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null) #27
  br label %bb.p

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %bb.j
  %i.bq = udiv i64 %.pn.i.i202204210, %.pn.i.i.i  ; 2 uses
  %i.br = mul i64 %i.bq, %.pn.i.i.i               ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = and i64 %i.br, -32
  %i.bu = udiv i64 %i.bt, %.pn.i.i.i
  %.rhs.trunc = trunc nuw nsw i64 %.pn.i.i.i to i8
  %i.bv = udiv i8 32, %.rhs.trunc                 ; 2 uses
  %.zext = zext nneg i8 %i.bv to i64
  %i.bw = zext i32 %5 to i64
  %i.bx = icmp samesign ugt i64 %i.bs, %i.bw
  %i.by = sub i64 %i.bq, %i.bu
  %i.bz = select i1 %i.bx, i64 %.zext, i64 %i.by
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.ca, ptr %19, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !489
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 4, ptr %i.cc, align 4, !tbaa !490
  %i.cd = zext nneg i8 %i.bv to i32
  %i.ce = mul i32 %5, %i.cd
  %i.cf = trunc i64 %i.bz to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12SelectionDAG21ExtractVectorElementsENS_7SDValueERNS_15SmallVectorImplIS1_EEjjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nonnull %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef %i.ce, i32 noundef %i.cf, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %20) #27
  %i.cg = trunc nuw nsw i64 %.pn.i.i.i to i32     ; 2 uses
  %i.ch = call range(i32 1, 7) i32 @llvm.ctpop.i32(i32 %i.cg)
  %i.ci = icmp eq i32 %i.ch, 1
  %i.cj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cg, i1 true)
  %switch.idx.cast.i = trunc nuw nsw i32 %i.cj to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  %.sroa.0.0.i = select i1 %i.ci, i16 %switch.offset.i, i16 0
  %i.ck = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %i.cf)
  %i.cl = load ptr, ptr %19, align 8, !tbaa !34
  %i.cm = load i32, ptr %i.cb, align 8, !tbaa !489
  %i.cn = zext i32 %i.cm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.cl, ptr %6, align 8, !tbaa !768
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cn, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !497
  %i.co = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %i.ck, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %6) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.co, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.co, 1
  %i.cp = call { ptr, i32 } @_ZN4llvm12SelectionDAG25getBitcastedAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.fca.0.extract24, i32 %.fca.1.extract25, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null) #27
  %i.cq = load ptr, ptr %19, align 8, !tbaa !34   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ca
  br i1 %i.cr, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  call void @free(ptr noundef %i.cq) #27
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.p

bb.o:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.cs = shl i32 %5, 5
  store ptr %3, ptr %21, align 8, !tbaa !533
  %.sroa.11185.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %4, ptr %.sroa.11185.0..sroa_idx188, align 8, !tbaa !233
  %i.ct = zext i32 %i.cs to i64
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.cu, 1
  store ptr %.fca.0.extract7, ptr %22, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.210.0..sroa_idx, align 8
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #27 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.cv, 1
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG25getBitcastedAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.fca.0.extract3, i32 %.fca.1.extract4, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.m, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.o, %bb.b
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.cw, %bb.o ], [ %i.ba, %bb.i ], [ %i.bp, %bb.m ], [ %i.cp, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL14resolveSourcesRN4llvm12SelectionDAGENS_5SDLocERNS_15SmallVectorImplI6DotSrcEEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 12 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SmallVector.719", align 8 ; 12 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !489
  %i.d = icmp eq i32 %i.c, 1
  %i.e = load ptr, ptr %3, align 8, !tbaa !34     ; 6 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.093.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !533
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.294.0.copyload = load i32, ptr %.sroa.294.0..sroa_idx, align 8, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !992
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call fastcc { ptr, i32 } @_ZL18getDWordFromOffsetRN4llvm12SelectionDAGENS_5SDLocENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, ptr %.sroa.093.0.copyload, i32 %.sroa.294.0.copyload, i32 noundef %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !991  ; 2 uses
  %i.l = icmp eq i64 %i.k, 50462976
  br i1 %i.l, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.fca.1.extract90 = extractvalue { ptr, i32 } %i.i, 1 ; 2 uses
  %.fca.0.extract89 = extractvalue { ptr, i32 } %i.i, 0 ; 2 uses
  store ptr %.fca.0.extract89, ptr %5, align 8, !tbaa !533
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract90, ptr %.sroa.6102.0..sroa_idx103, align 8, !tbaa !233
  store ptr %.fca.0.extract89, ptr %6, align 8, !tbaa !533
  %.sroa.6102.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract90, ptr %.sroa.6102.0..sroa_idx105, align 8, !tbaa !233
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract84 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract85 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract84, ptr %7, align 8
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract85, ptr %.sroa.287.0..sroa_idx, align 8
  %i.n = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 640, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #27
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  store i32 0, ptr %i.q, align 8, !tbaa !489
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 2, ptr %i.r, align 4, !tbaa !490
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit140

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit140: ; preds = %bb.g, %bb.d
  %.0134 = phi ptr [ %i.o, %bb.d ], [ %i.av, %bb.g ] ; 9 uses
  %.0133 = phi ptr [ %i.e, %bb.d ], [ %i.ap, %bb.g ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0133, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !991  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0134, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !991
  %15 = and i64 %i.t, 50529027
  %16 = and i64 %i.t, 134744072
  %17 = or disjoint i64 %16, 4160223223
  %i.w = and i64 %17, %i.v
  %i.x = or i64 %i.w, %15
  %.sroa.055.0.copyload = load ptr, ptr %4, align 8, !tbaa !550
  %.sroa.256.0.copyload = load i32, ptr %i.a, align 8, !tbaa !233
  %.sroa.052.0.copyload = load ptr, ptr %.0133, align 8, !tbaa !533
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0133, i64 8
  %.sroa.253.0.copyload = load i32, ptr %.sroa.253.0..sroa_idx, align 8, !tbaa !233
  %i.y = getelementptr inbounds nuw i8, ptr %.0133, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !992
  %i.aa = trunc i64 %i.z to i32
  %i.ab = call fastcc { ptr, i32 } @_ZL18getDWordFromOffsetRN4llvm12SelectionDAGENS_5SDLocENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.055.0.copyload, i32 %.sroa.256.0.copyload, ptr %.sroa.052.0.copyload, i32 %.sroa.253.0.copyload, i32 noundef %i.aa) ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.ab, 1
  %.sroa.043.0.copyload = load ptr, ptr %4, align 8, !tbaa !550
  %.sroa.244.0.copyload = load i32, ptr %i.a, align 8, !tbaa !233
  %.sroa.040.0.copyload = load ptr, ptr %.0134, align 8, !tbaa !533
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0134, i64 8
  %.sroa.241.0.copyload = load i32, ptr %.sroa.241.0..sroa_idx, align 8, !tbaa !233
  %i.ac = getelementptr inbounds nuw i8, ptr %.0134, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !992
  %i.ae = trunc i64 %i.ad to i32
  %i.af = call fastcc { ptr, i32 } @_ZL18getDWordFromOffsetRN4llvm12SelectionDAGENS_5SDLocENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.043.0.copyload, i32 %.sroa.244.0.copyload, ptr %.sroa.040.0.copyload, i32 %.sroa.241.0.copyload, i32 noundef %i.ae) ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.af, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.af, 1
  store ptr %.fca.0.extract48, ptr %9, align 8, !tbaa !533
  store i32 %.fca.1.extract49, ptr %.sroa.459.0..sroa_idx, align 8, !tbaa !233
  store ptr %.fca.0.extract36, ptr %10, align 8, !tbaa !533
  store i32 %.fca.1.extract37, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !233
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract30, ptr %11, align 8
  store i32 %.fca.1.extract31, ptr %.sroa.233.0..sroa_idx, align 8
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 640, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #27 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.ah, 0 ; 2 uses
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.ah, 1 ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !489 ; 2 uses
  %i.aj = load i32, ptr %i.r, align 4, !tbaa !490
  %.not.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !491

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit140
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.fca.0.extract26, i32 %.fca.1.extract27)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit140
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %8, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  store ptr %.fca.0.extract26, ptr %i.am, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.fca.1.extract27, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.an = load i32, ptr %i.q, align 8, !tbaa !489
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.q, align 8, !tbaa !489
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.e, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.0134, i64 32 ; 3 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !34
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !489
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.as ; 2 uses
  %i.au = icmp eq ptr %i.ap, %i.at
  br i1 %i.au, label %.loopexitthread-pre-split, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0134, i64 64 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit140

bb.h:                                             ; preds = %bb.g
  %.sroa.017.0.copyload = load ptr, ptr %4, align 8, !tbaa !550
  %.sroa.218.0.copyload = load i32, ptr %i.a, align 8, !tbaa !233
  %.sroa.015.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !533
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0134, i64 40
  %.sroa.216.0.copyload = load i32, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !233
  %i.ax = getelementptr inbounds nuw i8, ptr %.0134, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !992
  %i.az = trunc i64 %i.ay to i32
  %i.ba = call fastcc { ptr, i32 } @_ZL18getDWordFromOffsetRN4llvm12SelectionDAGENS_5SDLocENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.017.0.copyload, i32 %.sroa.218.0.copyload, ptr %.sroa.015.0.copyload, i32 %.sroa.216.0.copyload, i32 noundef %i.az) ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ba, 0 ; 2 uses
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ba, 1 ; 2 uses
  store ptr %.fca.0.extract11, ptr %12, align 8, !tbaa !533
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !233
  store ptr %.fca.0.extract11, ptr %13, align 8, !tbaa !533
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.5.0..sroa_idx22, align 8, !tbaa !233
  %i.bb = getelementptr inbounds nuw i8, ptr %.0134, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !991
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.bd, 1
  store ptr %.fca.0.extract5, ptr %14, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 640, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #27 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.be, 0 ; 2 uses
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.be, 1 ; 2 uses
  %i.bf = load i32, ptr %i.q, align 8, !tbaa !489 ; 2 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !490
  %.not.i138 = icmp ult i32 %i.bf, %i.bg
  br i1 %.not.i138, label %bb.j, label %bb.i, !prof !491

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.fca.0.extract1, i32 %.fca.1.extract2)
  br label %.loopexitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.bh = zext i32 %i.bf to i64
  %i.bi = load ptr, ptr %8, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  store ptr %.fca.0.extract1, ptr %i.bj, align 1
  %.sroa.32.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.32.0..sroa_idx.i139, align 1
  %i.bk = load i32, ptr %i.q, align 8, !tbaa !489
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bl, ptr %i.q, align 8, !tbaa !489
  br label %.loopexit

.loopexitthread-pre-split:                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.i
  %.pr = load i32, ptr %i.q, align 8, !tbaa !489
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.j
  %i.bm = phi i32 [ %.pr, %.loopexitthread-pre-split ], [ %i.bl, %bb.j ]
  %i.bn = icmp eq i32 %i.bm, 2
  %i.bo = load ptr, ptr %8, align 8, !tbaa !34    ; 5 uses
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bo, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bp) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bq, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bq, 1
  %.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %.sroa.0131.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !533
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.5132.0.copyload = load i32, ptr %.sroa.5132.0..sroa_idx, align 8, !tbaa !233
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.br = phi ptr [ %.pre, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %.sroa.0131.1 = phi ptr [ %.fca.0.extract, %bb.k ], [ %.sroa.0131.0.copyload, %bb.l ]
  %.sroa.5132.1 = phi i32 [ %.fca.1.extract, %bb.k ], [ %.sroa.5132.0.copyload, %bb.l ]
  %i.bs = icmp eq ptr %i.br, %i.p
  br i1 %i.bs, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.br) #27
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.bt = insertvalue { ptr, i32 } poison, ptr %.sroa.0131.1, 0
  %i.bu = insertvalue { ptr, i32 } %i.bt, i32 %.sroa.5132.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.b, %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.bu, %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit ], [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm16SITargetLowering20performPtrAddCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !936, !nonnull !31, !align !456 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550
  store i64 %i.d, ptr %3, align 8, !tbaa !550
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !551
  store i32 %i.g, ptr %i.e, align 8, !tbaa !553
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !540  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.i, align 8, !tbaa !217 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !240 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !846  ; 4 uses
  %.sroa.0137.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !533 ; 3 uses
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.l = load <2 x i32>, ptr %.sroa.5139.0..sroa_idx, align 8
  %.sroa.5139.0.copyload = load i32, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !233
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.0128.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !533 ; 6 uses
  %.sroa.11135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.11135.0.copyload = load i32, ptr %.sroa.11135.0..sroa_idx, align 8, !tbaa !233
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0128.0.copyload, i64 24 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !812  ; 2 uses
  %i.p = icmp eq i32 %i.o, 198
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0128.0.copyload, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !846
  %.sroa.03.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !533 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !812
  %i.u = icmp eq i32 %i.t, 60
  br i1 %i.u, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !846  ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.w, align 8, !tbaa !533
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.24.0.copyload.i.i = load i32, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !233
  %i.x = tail call noundef zeroext i1 @_ZN4llvm17isZeroOrZeroSplatENS_7SDValueEb(ptr %.sroa.03.0.copyload.i.i, i32 %.sroa.24.0.copyload.i.i, i1 noundef zeroext false) #27
  br i1 %i.x, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, label %thread-pre-split

_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i: ; preds = %bb.c
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !846  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.z, align 8, !tbaa !533 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !233
end_hunk_0
