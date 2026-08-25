Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeTypesGeneric?download=true
begin_hunk_0_@_ZN4llvm16DAGTypeLegalizer25ExpandRes_EXTRACT_ELEMENTEPNS_6SDNodeERNS_7SDValueES4_:bb.a
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.g, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT9isIntegerEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.h = add i16 %.sroa.0.0.copyload.i.i.i, -2
  %or.cond.i.i.i = icmp ult i16 %i.h, 10
  %i.i = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %or.cond3.i.i.i = icmp ult i16 %i.i, 86
  %or.cond4.i.i.i = or i1 %or.cond.i.i.i, %or.cond3.i.i.i
  %i.j = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.j, 32
  %i.k = or i1 %spec.select.i.i.i, %or.cond4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br i1 %i.k, label %bb.b, label %bb.c

_ZNK4llvm3EVT9isIntegerEv.exit.i:                 ; preds = %bb.a
  %i.l = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit.i, %.split.i
  call void @_ZN4llvm16DAGTypeLegalizer18GetExpandedIntegerENS_7SDValueERS1_S2_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nonnull %.sroa.02.0.copyload, i32 %.sroa.23.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #13
  br label %_ZN4llvm16DAGTypeLegalizer13GetExpandedOpENS_7SDValueERS1_S2_.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit.i, %.split.i
  call void @_ZN4llvm16DAGTypeLegalizer16GetExpandedFloatENS_7SDValueERS1_S2_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nonnull %.sroa.02.0.copyload, i32 %.sroa.23.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #13
  br label %_ZN4llvm16DAGTypeLegalizer13GetExpandedOpENS_7SDValueERS1_S2_.exit

_ZN4llvm16DAGTypeLegalizer13GetExpandedOpENS_7SDValueERS1_S2_.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !261  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !264
  %i.u = icmp ult i32 %i.t, 65
  %i.v = load ptr, ptr %i.r, align 8
  %spec.select.i.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.v
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !266
  %.not = icmp eq i64 %.0.i.i.i.i, 0
  %i.w = select i1 %.not, ptr %2, ptr %3          ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !140
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !141
  call void @_ZN4llvm16DAGTypeLegalizer15GetPairElementsENS_7SDValueERS1_S2_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %.sroa.01.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #13
  ret void
}

declare hidden void @_ZN4llvm16DAGTypeLegalizer15GetPairElementsENS_7SDValueERS1_S2_(ptr noundef nonnull align 8 dereferenceable(2640), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm16DAGTypeLegalizer28ExpandRes_EXTRACT_VECTOR_ELTEPNS_6SDNodeERNS_7SDValueES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 12 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %.sroa.0182.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !140 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0182.0.copyload, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = zext i32 %.sroa.7.0.copyload to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.f, align 8, !tbaa !23 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !25 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.g, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !267
  %i.l = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.l, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.k to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.m = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.n = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !23
  %i.q = insertvalue { i16, ptr } poison, i16 %i.p, 0
  %i.r = insertvalue { i16, ptr } %i.q, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.s = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.t, align 8
  %i.u = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i191 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.b ], [ %i.s, %bb.c ] ; 6 uses
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.r, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.w = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !144
  store i64 %i.y, ptr %7, align 8, !tbaa !144
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !145
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !146
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ad, align 8, !tbaa !23 ; 5 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !25 ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !42, !align !43 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call { i16, ptr } %i.al(ptr noundef nonnull align 8 dereferenceable(518435) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #13 ; 2 uses
  %i.an = extractvalue { i16, ptr } %i.am, 0      ; 5 uses
  %i.ao = extractvalue { i16, ptr } %i.am, 1      ; 3 uses
  %.not.i108 = icmp ne i16 %.sroa.0.0.copyload.i, %i.v
  %i.ap = icmp ne ptr %.sroa.21.0.copyload.i, %i.w
  %i.aq = select i1 %.not.i108, i1 true, i1 %i.ap
  br i1 %i.aq, label %bb.d, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit._crit_edge

_ZNK4llvm3EVT20getVectorElementTypeEv.exit._crit_edge: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %.pre = and i64 %.sroa.0.0.in.i191, 4294967296
  br label %bb.h

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45
  %.sroa.0173.0.insert.ext = and i64 %.sroa.0.0.in.i191, 1099511627775
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.in.i191 to i32 ; 2 uses
  %i.au = and i64 %.sroa.0.0.in.i191, 4294967296  ; 2 uses
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.copyload.i, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aw = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.copyload.i, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.04.0.i.i = phi i16 [ %i.av, %bb.e ], [ %i.aw, %bb.f ] ; 2 uses
  %.not.i109 = icmp eq i16 %.sroa.04.0.i.i, 0
  br i1 %.not.i109, label %bb.g, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

bb.g:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i
  %i.ax = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, i64 %.sroa.0173.0.insert.ext) #13 ; 2 uses
  %i.ay = extractvalue { i16, ptr } %i.ax, 0
  %i.az = extractvalue { i16, ptr } %i.ax, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i, %bb.g
  %.sroa.3.0.i = phi ptr [ %i.az, %bb.g ], [ null, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %.sroa.0.0.i = phi i16 [ %i.ay, %bb.g ], [ %.sroa.04.0.i.i, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i ]
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.bc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ba, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.i, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bb) #13 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.bc, 0
  %.fca.1.extract64 = extractvalue { ptr, i32 } %i.bc, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit._crit_edge, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit._crit_edge ], [ %i.au, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit ]
  %.sroa.0182.0 = phi ptr [ %.sroa.0182.0.copyload, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit._crit_edge ], [ %.fca.0.extract63, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit._crit_edge ], [ %.fca.1.extract64, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit ]
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !45
  %.sroa.6.0.extract.shift.i = and i64 %.sroa.0.0.in.i191, 1095216660480
  %i.bg = shl i64 %.sroa.0.0.in.i191, 1           ; 2 uses
  %.sroa.0.0.insert.ext.i112 = and i64 %i.bg, 4294967294
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i112, %.sroa.6.0.extract.shift.i
  %.sroa.0.0.extract.trunc.i.i113 = trunc i64 %i.bg to i32 ; 2 uses
  %.not.i.i114 = icmp eq i64 %.pre-phi, 0
  br i1 %.not.i.i114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.an, i32 noundef %.sroa.0.0.extract.trunc.i.i113)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i115

bb.j:                                             ; preds = %bb.h
  %i.bi = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.an, i32 noundef %.sroa.0.0.extract.trunc.i.i113)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i115

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i115: ; preds = %bb.j, %bb.i
  %.sroa.04.0.i.i116 = phi i16 [ %i.bh, %bb.i ], [ %i.bi, %bb.j ] ; 2 uses
  %.not.i117 = icmp eq i16 %.sroa.04.0.i.i116, 0
  br i1 %.not.i117, label %bb.k, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit122

bb.k:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i115
  %i.bj = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i16 %i.an, ptr %i.ao, i64 %.sroa.0.0.insert.insert.i) #13 ; 2 uses
  %i.bk = extractvalue { i16, ptr } %i.bj, 0
  %i.bl = extractvalue { i16, ptr } %i.bj, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit122

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit122: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i115, %bb.k
  %.sroa.3.0.i118 = phi ptr [ %i.bl, %bb.k ], [ null, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i115 ]
  %.sroa.0.0.i119 = phi i16 [ %i.bk, %bb.k ], [ %.sroa.04.0.i.i116, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i115 ]
  store ptr %.sroa.0182.0, ptr %8, align 8, !tbaa !140
  %.sroa.7.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx185, align 8, !tbaa !141
  %.sroa.10.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx188, align 4
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bd, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.i119, ptr %.sroa.3.0.i118, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #13 ; 2 uses
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.bm, 0 ; 2 uses
  %.fca.1.extract46 = extractvalue { ptr, i32 } %i.bm, 1 ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !138 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !140 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = zext i32 %.sroa.13.0.copyload to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %.sroa.0.0.copyload.i.i123 = load i16, ptr %i.bt, align 8, !tbaa !23 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i124 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.21.0.copyload.i.i125 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i124, align 8, !tbaa !25 ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %9, align 8, !tbaa !140
  %.sroa.13.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx150, align 8, !tbaa !141
  %.sroa.19.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx161, align 4
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %i.bp, i64 noundef 1, i16 %.sroa.0.0.copyload.i.i123, ptr %.sroa.21.0.copyload.i.i125, ptr noundef nonnull align 8 dereferenceable(12) %7) #13 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.bu, 1
  store ptr %.fca.0.extract34, ptr %10, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.237.0..sroa_idx, align 8
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bp, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i123, ptr %.sroa.21.0.copyload.i.i125, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #13 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.bv, 0 ; 3 uses
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.bv, 1 ; 3 uses
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43
  store ptr %.fca.0.extract45, ptr %11, align 8, !tbaa !140
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract46, ptr %.sroa.558.0..sroa_idx, align 8, !tbaa !141
  store ptr %.fca.0.extract30, ptr %12, align 8, !tbaa !140
  %.sroa.13.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract31, ptr %.sroa.13.0..sroa_idx152, align 8, !tbaa !141
  %.sroa.19.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %.sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx163, align 4
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bw, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.an, ptr %i.ao, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #13 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.bx, 1
  store ptr %.fca.0.extract20, ptr %2, align 8, !tbaa !140
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !141
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.fca.0.extract30, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !8
  %i.cb = zext i32 %.fca.1.extract31 to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %.sroa.0.0.copyload.i.i133 = load i16, ptr %i.cc, align 8, !tbaa !23 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i134 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.21.0.copyload.i.i135 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i134, align 8, !tbaa !25 ; 2 uses
  store ptr %.fca.0.extract30, ptr %13, align 8, !tbaa !140
  %.sroa.13.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract31, ptr %.sroa.13.0..sroa_idx154, align 8, !tbaa !141
  %.sroa.19.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx165, align 4
  %i.cd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.by, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i133, ptr %.sroa.21.0.copyload.i.i135, i1 noundef zeroext false, i1 noundef zeroext false) #13 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.cd, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.cd, 1
  store ptr %.fca.0.extract9, ptr %14, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.212.0..sroa_idx, align 8
  %i.ce = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.by, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i133, ptr %.sroa.21.0.copyload.i.i135, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #13 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.ce, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.ce, 1
  %i.cf = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43
  store ptr %.fca.0.extract45, ptr %15, align 8, !tbaa !140
  %.sroa.558.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract46, ptr %.sroa.558.0..sroa_idx59, align 8, !tbaa !141
  store ptr %.fca.0.extract5, ptr %16, align 8, !tbaa !140
  %.sroa.13.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.13.0..sroa_idx156, align 8, !tbaa !141
  %.sroa.19.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %.sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx167, align 4
  %i.cg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.cf, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.an, ptr %i.ao, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #13 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cg, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cg, 1
  store ptr %.fca.0.extract, ptr %3, align 8, !tbaa !140
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !141
  %i.ch = load ptr, ptr %i.af, align 8, !tbaa !44, !nonnull !42, !align !43
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !153
  %i.ck = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.cj) #13
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !154, !range !186, !noundef !42
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, i16, ptr, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm16DAGTypeLegalizer20ExpandRes_NormalLoadEPNS_6SDNodeERNS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %7 = alloca %"struct.llvm::AAMDNodes", align 8  ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 11 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !144
  store i64 %i.b, ptr %5, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !145
  store i32 %i.e, ptr %i.c, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.h = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !42, !align !43 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44, !nonnull !42, !align !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 568
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call { i16, ptr } %i.o(ptr noundef nonnull align 8 dereferenceable(518435) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #13 ; 2 uses
  %i.q = extractvalue { i16, ptr } %i.p, 0        ; 4 uses
  store i16 %i.q, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = extractvalue { i16, ptr } %i.p, 1        ; 2 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !138  ; 5 uses
  %.sroa.075.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !140 ; 2 uses
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.776.0.copyload = load i32, ptr %.sroa.776.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.064.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !140 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !141 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm16DAGTypeLegalizer10getTableIdENS_7SDValueE:bb.a

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = add nuw i32 %.01118.i.i.i.i, 1
  %.011.i.i.i.i = and i32 %i.z, %i.l              ; 3 uses
  %i.aa = zext i32 %.011.i.i.i.i to i64           ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141, !noalias !318
  %i.ae = and i32 %.011.i.i.i.i, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !230

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.ah = phi i64 [ %i.aa, %bb.c ], [ %i.s, %bb.b ]
  %.01118.i.i.i.i = phi i32 [ %.011.i.i.i.i, %bb.c ], [ %.01117.i.i.i.i, %bb.b ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !142, !noalias !318
  %i.ak = icmp eq ptr %1, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 8, !noalias !318
  %i.an = icmp eq i32 %2, %i.am
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.loopexit, label %bb.c, !prof !192

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ap = zext i32 %.sink.i.i.i.i.i.i to i64      ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.ap
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %.sink.i.i.i.i.i.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.loopexit ], [ %i.ap, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ai, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit.loopexit ], [ %i.aq, %.loopexit.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %.pre-phi
  %.not = icmp eq ptr %.lcssa.sink.i.i, %i.ar
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16 ; 2 uses
  tail call void @_ZN4llvm16DAGTypeLegalizer7RemapIdERj(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.as) #13
  %i.at = load i32, ptr %i.as, align 8, !tbaa !319
  br label %bb.f

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  store ptr %1, ptr %3, align 8, !tbaa !140
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !141
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !141, !noalias !321
  store i32 %i.aw, ptr %i.av, align 8, !tbaa !319, !alias.scope !321
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIS2_JjEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.av), !noalias !324 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.az = load i32, ptr %i.au, align 8, !tbaa !141, !noalias !329
  store i32 %i.az, ptr %4, align 8, !tbaa !332, !alias.scope !329
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.ba, align 8, !tbaa !140
  %.sroa.425.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %2, ptr %.sroa.425.0..sroa_idx26, align 8, !tbaa !141
  %i.bb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24lookupOrInsertIntoBucketIjJS2_EEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.ba), !noalias !334 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bc = load i32, ptr %i.au, align 8, !tbaa !339 ; 2 uses
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.au, align 8, !tbaa !339
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.at, %bb.d ], [ %i.bc, %bb.e ]
  ret i32 %.0
}

declare hidden void @_ZN4llvm16DAGTypeLegalizer7RemapIdERj(ptr noundef nonnull align 8 dereferenceable(2640), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIS2_JjEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !340 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !340 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !340 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !340
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !142    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !143  ; 2 uses
  %i.u = add i32 %i.t, %i.r
  %.01624.i = and i32 %i.u, %i.l                  ; 3 uses
  %i.v = zext i32 %.01624.i to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.v ; 2 uses
  %i.x = lshr i64 %i.v, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !141
  %i.aa = and i32 %.01624.i, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %.loopexit, !prof !229

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = add nuw i32 %.01625.i, 1
  %.016.i = and i32 %i.ad, %i.l                   ; 3 uses
  %i.ae = zext i32 %.016.i to i64                 ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !141
  %i.aj = and i32 %.016.i, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %.loopexit, !prof !230, !llvm.loop !345

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.af, %bb.c ], [ %i.w, %bb.b ] ; 3 uses
  %.01625.i = phi i32 [ %.016.i, %bb.c ], [ %.01624.i, %bb.b ]
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !142
  %i.ao = icmp eq ptr %i.m, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.t, %i.aq
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %i.as, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit, label %bb.c, !prof !192

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ], [ %i.af, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !346
  %i.at = shl i32 %i.b, 1
  %i.au = and i32 %i.at, -4
  %i.av = add i32 %i.au, 4
  %i.aw = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit, label %bb.d, !prof !192

bb.d:                                             ; preds = %.loopexit
  %i.ax = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ax)
  %i.ay = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !346
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.az = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.ba = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.bb = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.bc = select i1 %.not.i.i.i.i, ptr %i.ba, ptr %i.j
  %i.bd = select i1 %.not.i.i.i.i, ptr %i.az, ptr %i.d
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 24                ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 31
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = lshr i64 %i.bh, 5
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !141
  %i.bo = or i32 %i.bk, %i.bn
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !141
  %i.bp = load i32, ptr %0, align 8               ; 2 uses
  %i.bq = and i32 %i.bp, -2
  %i.br = add i32 %i.bq, 2
  %i.bs = and i32 %i.bp, 1
  %i.bt = or disjoint i32 %i.br, %i.bs
  store i32 %i.bt, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !139
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bv = load i32, ptr %2, align 4, !tbaa !141
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !141
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.bb, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ %i.am, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !348
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !348
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !348
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !142    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !143  ; 2 uses
  %i.t = add i32 %i.s, %i.q
  %.01624 = and i32 %i.t, %i.k                    ; 3 uses
  %i.u = zext i32 %.01624 to i64                  ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !141
  %i.z = and i32 %.01624, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %.thread, !prof !229

bb.c:                                             ; preds = %.lr.ph
  %i.ac = add nuw i32 %.01625, 1
  %.016 = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ad = zext i32 %.016 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !141
  %i.ai = and i32 %.016, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph, label %.thread, !prof !230, !llvm.loop !345

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.al = phi ptr [ %i.ae, %bb.c ], [ %i.v, %bb.b ] ; 3 uses
  %.01625 = phi i32 [ %.016, %bb.c ], [ %.01624, %bb.b ]
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !142
  %i.an = icmp eq ptr %i.l, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp eq i32 %i.s, %i.ap
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false     ; 3 uses
  br i1 %i.ar, label %.thread, label %bb.c, !prof !192

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ae, %bb.c ], [ %i.al, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ar, %bb.c ], [ %i.ar, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !346
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  br label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEC2EjNS_12DenseMapBaseIS7_S1_jS3_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !266
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !266
  br label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEC2EjNS_12DenseMapBaseIS7_S1_jS3_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEC2EjNS_12DenseMapBaseIS7_S1_jS3_S6_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit.thread, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEC2EjNS_12DenseMapBaseIS7_S1_jS3_S6_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !353
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !266
  br label %bb.b

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEC2EjNS_12DenseMapBaseIS7_S1_jS3_S6_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #13 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !266
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !266
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !266
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE13maybeMoveFastEOS7_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !266 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !266
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #13
  br label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 8
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 7
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i25 = icmp eq i64 %i.ab, 0
  br i1 %.not.i25, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141 ; 2 uses
  %.not11.i23 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph28
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i24 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i24, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !142
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !143
  %i.ar = add i32 %i.aq, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ar, %bb.b ], [ %i.az, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.as = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !141
  %i.aw = and i32 %.0.i11, 31                     ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  %i.az = add i32 %.0.i11, 1
  br i1 %i.ay, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !355

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.at ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.as ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !139
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !141
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !141
  %i.bf = shl nuw i32 1, %i.aw
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !141
  %i.bh = or i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !141
  %i.bi = add i32 %.0.i24, -1
  %i.bj = and i32 %i.bi, %.0.i24                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !356

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph28, !llvm.loop !357

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre32 = load i32, ptr %0, align 8
  %.pre33 = and i32 %.pre32, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre33, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bk = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bl = and i32 %i.bk, -2
  %i.bm = or disjoint i32 %.pre-phi, %i.bl
  store i32 %i.bm, ptr %0, align 8
  %i.bn = load i32, ptr %1, align 8               ; 3 uses
  %i.bo = and i32 %i.bn, 1
  %.not.i.i12 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bp = load i32, ptr %i.j, align 8, !tbaa !266 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.bs = zext i32 %i.bp to i64                   ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bs, 31
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1073741820
  %i.bx = add nuw nsw i64 %i.bw, %i.bt
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.br, i64 noundef %i.bx, i64 noundef 8) #13
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit

_ZN4llvm13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.by = phi i32 [ %i.bn, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapINS_7SDValueEjLj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit ], [ %i.bn, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bz = and i32 %i.by, -2
  store i32 %i.bz, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24lookupOrInsertIntoBucketIjJS2_EEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !358 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !358 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !358 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !358
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !141    ; 2 uses
  %i.n = mul i32 %i.m, 37
  %.01624.i = and i32 %i.n, %i.l                  ; 3 uses
  %i.o = zext i32 %.01624.i to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !141
  %i.t = and i32 %.01624.i, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !229

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i32 %.01625.i, 1
  %.016.i = and i32 %i.w, %i.l                    ; 3 uses
  %i.x = zext i32 %.016.i to i64                  ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !141
  %i.ac = and i32 %.016.i, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !230, !llvm.loop !363

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01625.i = phi i32 [ %.016.i, %bb.c ], [ %.01624.i, %bb.b ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !141
  %i.ah = icmp eq i32 %i.m, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit, label %bb.c, !prof !192

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !364
  %i.ai = shl i32 %i.b, 1
  %i.aj = and i32 %i.ai, -4
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !192

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !364
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aq = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.ap, ptr %i.j
  %i.as = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.d
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 24                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = load i32, ptr %0, align 8               ; 2 uses
  %i.bf = and i32 %i.be, -2
  %i.bg = add i32 %i.bf, 2
  %i.bh = and i32 %i.be, 1
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i32, ptr %1, align 4, !tbaa !141
  store i32 %i.bj, ptr %i.aq, align 4, !tbaa !141
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !139
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_7SDValueELj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !366
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !366
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !366
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !366
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

end_hunk_1
