inline.NumInlined: 22097
inline.NumDeleted: 4794
begin_hunk_0_@_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE:_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = zext i1 %4 to i8                         ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE:_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gy = and i64 %i.gu, 63
  %i.gz = shl nuw i64 1, %i.gy
  %i.ha = and i64 %i.gz, %i.gx
  %.not35.i.i.i = icmp eq i64 %i.ha, 0            ; 2 uses
  %12 = load ptr, ptr %5, align 8, !tbaa !215
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv50.i.i.i ; 3 uses
  %i.hb = load ptr, ptr %13, align 8, !tbaa !219
  %14 = select i1 %.not35.i.i.i, i8 -2, i8 -3
  %15 = select i1 %.not35.i.i.i, i8 1, i8 2
  %.sink.i.i.i = select i1 %3, i8 %14, i8 %15
  store i8 %.sink.i.i.i, ptr %i.hb, align 1, !tbaa !14
  %i.hc = load ptr, ptr %13, align 8, !tbaa !219
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  store ptr %i.hd, ptr %13, align 8, !tbaa !219
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE:_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hy = shl nuw i64 1, %i.hx
  %i.hz = and i64 %i.hy, %i.hw
  %.not.i.i.i10 = icmp eq i64 %i.hz, 0
  %i.ia = load ptr, ptr %5, align 8, !tbaa !215
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i.i.i ; 3 uses
  %16 = select i1 %.not.i.i.i10, i8 1, i8 2
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !219
  store i8 %16, ptr %i.ic, align 1, !tbaa !14
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !219
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store ptr %i.ie, ptr %i.ib, align 8, !tbaa !219
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE:_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.amk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aml = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.amm = getelementptr inbounds nuw i8, ptr %7, i64 4
  %17 = sext i1 %3 to i8                          ; 2 uses
  %i.amn = insertelement <32 x i8> poison, i8 %17, i64 0
  %i.amo = shufflevector <32 x i8> %i.amn, <32 x i8> poison, <32 x i32> zeroinitializer
  %i.amp = bitcast <32 x i8> %i.amo to <4 x i64>  ; 2 uses
  %wide.trip.count.i11 = zext nneg i32 %2 to i64
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE:_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.amz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ana = getelementptr inbounds nuw i8, ptr %6, i64 4
  %18 = sext i1 %3 to i8                          ; 2 uses
  %i.anb = insertelement <32 x i8> poison, i8 %18, i64 0
  %i.anc = shufflevector <32 x i8> %i.anb, <32 x i8> poison, <32 x i32> zeroinitializer
  %i.and = bitcast <32 x i8> %i.anc to <4 x i64>  ; 2 uses
  %wide.trip.count125.i = zext nneg i32 %2 to i64
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE:_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

._crit_edge105.i:                                 ; preds = %._crit_edge105.i.loopexit, %.loopexit85.i.._crit_edge105.i_crit_edge
  %i.arg = phi ptr [ %.pre151, %.loopexit85.i.._crit_edge105.i_crit_edge ], [ %storemerge83.i.le, %._crit_edge105.i.loopexit ]
  store i8 %18, ptr %i.arg, align 1, !tbaa !14
  %i.arh = load ptr, ptr %i.ape, align 8, !tbaa !219
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 1
  store ptr %i.ari, ptr %i.ape, align 8, !tbaa !219
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox10serializer10KeyEncoder12encodeColumnERKNS0_13DecodedVectorEibbRSt6vectorIPcSaIS7_EE:_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.loopexit90.i.._crit_edge.i_crit_edge
  %i.auh = phi ptr [ %.pre149, %.loopexit90.i.._crit_edge.i_crit_edge ], [ %storemerge79.i.le, %._crit_edge.i.loopexit ]
  store i8 %17, ptr %i.auh, align 1, !tbaa !14
  %i.aui = load ptr, ptr %i.asf, align 8, !tbaa !219
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 1
  store ptr %i.auj, ptr %i.asf, align 8, !tbaa !219
end_hunk_6
