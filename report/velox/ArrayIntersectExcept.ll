inline.NumInlined: 20898
inline.NumDeleted: 6710
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_:bb.a
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.preheader ], [ %.sroa.0.1, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge ]
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -4 ; 6 uses
  %i.bj = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.bk = load i32, ptr %.sroa.0.1, align 4, !tbaa !3 ; 2 uses
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !2176
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13, label %bb.l

bb.l:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread
  %i.bo = zext i32 %i.bj to i64                   ; 2 uses
  %i.bp = lshr i64 %i.bo, 6
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !106
  %i.bs = and i64 %i.bo, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = and i64 %i.br, %i.bt
  %.not.i.i.i.i11 = icmp eq i64 %i.bu, 0
  %i.bv = zext i32 %i.bk to i64                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !106
  %i.bz = and i64 %i.bv, 63
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.by, %i.ca
  %.not.i.i.i11.i12 = icmp eq i64 %i.cb, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13: ; preds = %bb.l, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread
  %i.cc = phi i1 [ %.not.i.i.i.i11, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread ] ; 3 uses
  %i.cd = phi i1 [ %.not.i.i.i11.i12, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread ] ; 2 uses
  %or.cond.i14 = or i1 %i.cc, %i.cd
  br i1 %or.cond.i14, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.q, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i17 = lshr i64 %.sroa.0.0.copyload.i16, 32
  %.sroa.37.0.extract.trunc.i.i18 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i17 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i18, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ce = and i64 %.sroa.0.0.copyload.i16, 65536
  %.not.i.i21 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i21, label %bb.o, label %.critedge.i22

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i19 = and i1 %i.cc, %i.cd
  %i.cf = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.cg = xor i1 %i.cc, %i.cf
  %or.cond33.demorgan = or i1 %or.cond.i.i19, %i.cg
  br i1 %or.cond33.demorgan, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge: ; preds = %bb.p, %bb.r
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread, !llvm.loop !2194

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i22:                                    ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.r:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !2171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !2178, !nonnull !93, !align !1670
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2179
  %i.ck = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.cj, i32 noundef %i.bj)
  %i.cl = zext i1 %i.ck to i8
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !2178, !nonnull !93, !align !1670
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2179
  %i.co = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.cn, i32 noundef %i.bk)
  %i.cp = zext i1 %i.co to i8
  store i8 %i.cp, ptr %i.c, align 1, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %i.a, ptr %4, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.l, align 8, !tbaa !2007
  store ptr %i.c, ptr %i.m, align 8, !tbaa !2007
  %i.cs = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = load ptr, ptr %i.p, align 8, !tbaa !2181, !nonnull !93, !align !1672
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = sub nsw i32 0, %i.cs
  %i.cy = select i1 %i.cw, i32 %i.cs, i32 %i.cx
  %i.cz = icmp slt i32 %i.cy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.cz, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread: ; preds = %bb.p, %bb.r
  %.not = icmp ult ptr %.sroa.026.1, %.sroa.0.1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  ret ptr %.sroa.026.1

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %i.da = load i32, ptr %.sroa.026.1, align 4, !tbaa !3
  %i.db = load i32, ptr %.sroa.0.1, align 4, !tbaa !3
  store i32 %i.db, ptr %.sroa.026.1, align 4, !tbaa !3
  store i32 %i.da, ptr %.sroa.0.1, align 4, !tbaa !3
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.026.1, i64 4
  br label %bb.b, !llvm.loop !2195
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.258, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 7 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.023 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = icmp eq ptr %.sroa.08.023, %1
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.08.025 = phi ptr [ %.sroa.08.023, %.lr.ph ], [ %.sroa.08.0, %bb.o ] ; 8 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.025, %bb.o ] ; 4 uses
  %i.k = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.l = load i32, ptr %0, align 4, !tbaa !3
  %i.m = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.k, i32 noundef %i.l)
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.o = ptrtoint ptr %.sroa.08.025 to i64
  %i.p = sub i64 %i.o, %i.j                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !79

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24, i64 8
  %i.t = sub nsw i64 0, %i.q
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.u, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.p, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.p, 4
  br i1 %i.v, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24, i64 4
  %i.x = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.x, ptr %i.w, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.y = load i32, ptr %.sroa.08.025, align 4, !tbaa !3 ; 4 uses
  %i.z = load i32, ptr %.pn24, align 4, !tbaa !3
  %i.aa = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.y, i32 noundef %i.z)
  br i1 %i.aa, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = and i64 %i.ab, 63
  %i.ae = shl nuw i64 1, %i.ad
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.n, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.pn24, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.n ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.08.025, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.n ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !2189
  %i.af = load ptr, ptr %.ph, align 8, !tbaa !2176
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ac
  %i.aj = load ptr, ptr %i.i, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.l
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.l ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.ak = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.ak, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.al = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !106
  %i.an = and i64 %i.am, %i.ae
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  %i.ao = zext i32 %i.al to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !106
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i.i.i11.i = icmp eq i64 %i.au, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.h, %.lr.ph.i
  %i.av = phi i1 [ %.not.i.i.i.i, %bb.h ], [ false, %.lr.ph.i ] ; 3 uses
  %i.aw = phi i1 [ %.not.i.i.i11.i, %bb.h ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.aj, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.m [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ax = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i = and i1 %i.av, %i.aw
  %i.ay = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.az = xor i1 %i.av, %i.ay
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.az
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !2196

bb.m:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !2192, !nonnull !93, !align !1670 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !2178, !nonnull !93, !align !1670
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2179
  %i.bf = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.be, i32 noundef %i.y)
  %i.bg = zext i1 %i.bf to i8
  store i8 %i.bg, ptr %i.b, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !2178, !nonnull !93, !align !1670
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2179
  %i.bj = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bi, i32 noundef %i.al)
  %i.bk = zext i1 %i.bj to i8
  store i8 %i.bk, ptr %i.c, align 1, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %i.a, ptr %3, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.g, align 8, !tbaa !2007
  store ptr %i.c, ptr %i.h, align 8, !tbaa !2007
  %i.bn = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2181, !nonnull !93, !align !1672
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = sub nsw i32 0, %i.bn
  %i.bu = select i1 %i.bs, i32 %i.bn, i32 %i.bt
  %i.bv = icmp slt i32 %i.bu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.bv, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !2196

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.l, %bb.n, %bb.g
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.08.025, %bb.g ], [ %.sroa.0.09.i, %bb.n ], [ %.sroa.0.09.i, %bb.l ]
  store i32 %i.y, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 4 ; 2 uses
  %i.bw = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bw, label %.loopexit, label %bb.b, !llvm.loop !2197

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.258, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 7 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit
  %.sroa.03.012 = phi ptr [ %0, %.lr.ph ], [ %i.bg, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.i = load i32, ptr %.sroa.03.012, align 4, !tbaa !3 ; 4 uses
  %.sroa.0.07.i = getelementptr inbounds i8, ptr %.sroa.03.012, i64 -4 ; 2 uses
  %i.j = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  br i1 %i.k, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.l = zext i32 %i.i to i64                     ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = and i64 %i.l, 63
  %i.o = shl nuw i64 1, %i.n
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.i, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.07.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.03.012, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.i ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !2189
  %i.p = load ptr, ptr %.ph, align 8, !tbaa !2176
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m
  %i.t = load ptr, ptr %i.h, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.g
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.g ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.u = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.u, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.v = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = load i64, ptr %i.s, align 8, !tbaa !106
  %i.x = and i64 %i.w, %i.o
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = zext i32 %i.v to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !106
  %i.ac = and i64 %i.y, 63
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.ab, %i.ad
  %.not.i.i.i11.i = icmp eq i64 %i.ae, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.c, %.lr.ph.i
  %i.af = phi i1 [ %.not.i.i.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ag = phi i1 [ %.not.i.i.i11.i, %bb.c ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ah = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i = and i1 %i.af, %i.ag
  %i.ai = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aj = xor i1 %i.af, %i.ai
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.aj
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !2196

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !2192, !nonnull !93, !align !1670 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !2178, !nonnull !93, !align !1670
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2179
  %i.ap = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ao, i32 noundef %i.i)
  %i.aq = zext i1 %i.ap to i8
  store i8 %i.aq, ptr %i.b, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !2178, !nonnull !93, !align !1670
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2179
  %i.at = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.as, i32 noundef %i.v)
  %i.au = zext i1 %i.at to i8
  store i8 %i.au, ptr %i.c, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %i.a, ptr %3, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.f, align 8, !tbaa !2007
  store ptr %i.c, ptr %i.g, align 8, !tbaa !2007
  %i.ax = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIbE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKbS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2181, !nonnull !93, !align !1672
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = sub nsw i32 0, %i.ax
  %i.be = select i1 %i.bc, i32 %i.ax, i32 %i.bd
  %i.bf = icmp slt i32 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.bf, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !2196

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %bb.g ]
  store i32 %i.i, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %1
  br i1 %i.bh, label %._crit_edge, label %bb.b, !llvm.loop !2198
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.268") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph28

bb.b:                                             ; preds = %.lr.ph28
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph28, !llvm.loop !2199

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.268") align 8 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.m = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !2200

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %storemerge17.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.p, ptr %i.n, align 4, !tbaa !3
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.268") align 8 %3)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !2201

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1727 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01826 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ac, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.01826, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %storemerge1727, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.x, ptr nonnull %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.268") align 8 %3)
  %i.z = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1727, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.268") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.z, ptr %storemerge1727, i64 noundef %i.v, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.268") align 8 %3)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a
  %i.ac = ashr exact i64 %i.ab, 2                 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 16
  br i1 %i.ad, label %bb.b, label %.loopexit, !llvm.loop !2199

.loopexit:                                        ; preds = %.lr.ph28, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.268") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.258, align 8            ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 64
  br i1 %i.g, label %bb.b, label %bb.f
end_hunk_0
begin_hunk_1_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_:bb.a
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !2213, !nonnull !93, !align !1670
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2215
  %i.aj = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ai, i32 noundef %i.h) ; 2 uses
  %i.ak = xor i1 %i.ag, true
  %i.al = and i1 %i.aj, %i.ak
  %i.am = xor i1 %i.ag, %i.aj
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !2217, !nonnull !93, !align !1672
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.aq = trunc nuw i8 %i.ap to i1
  %not..i.i = xor i1 %i.aq, true
  %i.ar = and i1 %i.am, %not..i.i
  %i.as = xor i1 %i.al, %i.ar
  br i1 %i.as, label %bb.k, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.preheader

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.preheader: ; preds = %bb.h, %bb.j
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.027.1, i64 4
  br label %bb.c, !llvm.loop !2226

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread: ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.preheader ], [ %.sroa.0.1, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge ]
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -4 ; 6 uses
  %i.au = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.av = load i32, ptr %.sroa.0.1, align 4, !tbaa !3 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !2211
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.l

bb.l:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread
  %i.az = zext i32 %i.au to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 6
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !106
  %i.bd = and i64 %i.az, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  %.not.i.i.i.i11 = icmp eq i64 %i.bf, 0
  %i.bg = zext i32 %i.av to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 6
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !106
  %i.bk = and i64 %i.bg, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bj, %i.bl
  %.not.i.i.i11.i12 = icmp eq i64 %i.bm, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13: ; preds = %bb.l, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread
  %i.bn = phi i1 [ %.not.i.i.i.i11, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread ] ; 3 uses
  %i.bo = phi i1 [ %.not.i.i.i11.i12, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread ] ; 2 uses
  %or.cond.i14 = or i1 %i.bn, %i.bo
  br i1 %or.cond.i14, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13
  %.sroa.0.0.copyload.i17 = load i64, ptr %i.f, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i18 = lshr i64 %.sroa.0.0.copyload.i17, 32
  %.sroa.37.0.extract.trunc.i.i19 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i18 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i19, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.bp = and i64 %.sroa.0.0.copyload.i17, 65536
  %.not.i.i22 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i22, label %bb.o, label %.critedge.i23

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i20 = and i1 %i.bn, %i.bo
  %i.bq = trunc i64 %.sroa.0.0.copyload.i17 to i1
  %i.br = xor i1 %i.bn, %i.bq
  %or.cond34.demorgan = or i1 %or.cond.i.i20, %i.br
  br i1 %or.cond34.demorgan, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit24.thread, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge: ; preds = %bb.p, %bb.r
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread, !llvm.loop !2227

bb.q:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i23:                                    ; preds = %bb.n
  tail call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.r:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i13
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !2213, !nonnull !93, !align !1670
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !2215
  %i.bu = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bt, i32 noundef %i.au) ; 2 uses
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !2213, !nonnull !93, !align !1670
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2215
  %i.bx = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bw, i32 noundef %i.av) ; 2 uses
  %i.by = xor i1 %i.bu, true
  %i.bz = and i1 %i.bx, %i.by
  %i.ca = xor i1 %i.bu, %i.bx
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !2217, !nonnull !93, !align !1672
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.ce = trunc nuw i8 %i.cd to i1
  %not..i.i15 = xor i1 %i.ce, true
  %i.cf = and i1 %i.ca, %not..i.i15
  %i.cg = xor i1 %i.bz, %i.cf
  br i1 %i.cg, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit24.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit24.thread: ; preds = %bb.p, %bb.r
  %.not = icmp ult ptr %.sroa.027.1, %.sroa.0.1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit24.thread
  ret ptr %.sroa.027.1

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit24.thread
  %i.ch = load i32, ptr %.sroa.027.1, align 4, !tbaa !3
  %i.ci = load i32, ptr %.sroa.0.1, align 4, !tbaa !3
  store i32 %i.ci, ptr %.sroa.027.1, align 4, !tbaa !3
  store i32 %i.ch, ptr %.sroa.0.1, align 4, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.027.1, i64 4
  br label %bb.b, !llvm.loop !2228
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.273") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.275", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.023 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = icmp eq ptr %.sroa.08.023, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.08.025 = phi ptr [ %.sroa.08.023, %.lr.ph ], [ %.sroa.08.0, %bb.o ] ; 8 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.025, %bb.o ] ; 4 uses
  %i.f = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  %i.h = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.f, i32 noundef %i.g)
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.j = ptrtoint ptr %.sroa.08.025 to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !79

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24, i64 8
  %i.o = sub nsw i64 0, %i.l
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.p, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.k, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.k, 4
  br i1 %i.q, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pn24, i64 4
  %i.s = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.s, ptr %i.r, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store i32 %i.i, ptr %0, align 4, !tbaa !3
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.t = load i32, ptr %.sroa.08.025, align 4, !tbaa !3 ; 4 uses
  %i.u = load i32, ptr %.pn24, align 4, !tbaa !3
  %i.v = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.t, i32 noundef %i.u)
  br i1 %i.v, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.w = zext i32 %i.t to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = and i64 %i.w, 63
  %i.z = shl nuw i64 1, %i.y
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.n, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.pn24, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.n ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.08.025, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.n ]
  %.ph = load ptr, ptr %3, align 8, !tbaa !2222
  %i.aa = load ptr, ptr %.ph, align 8, !tbaa !2211
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.x
  %i.ae = load ptr, ptr %i.d, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.l
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.l ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.af = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.af, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.ag = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !106
  %i.ai = and i64 %i.ah, %i.z
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  %i.aj = zext i32 %i.ag to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !106
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.am, %i.ao
  %.not.i.i.i11.i = icmp eq i64 %i.ap, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.h, %.lr.ph.i
  %i.aq = phi i1 [ %.not.i.i.i.i, %bb.h ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ar = phi i1 [ %.not.i.i.i11.i, %bb.h ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.m [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.as = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i = and i1 %i.aq, %i.ar
  %i.at = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.au = xor i1 %i.aq, %i.at
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.au
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !2229

bb.m:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !2225, !nonnull !93, !align !1670 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2213, !nonnull !93, !align !1670
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2215
  %i.ay = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ax, i32 noundef %i.t) ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !2213, !nonnull !93, !align !1670
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2215
  %i.bb = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ba, i32 noundef %i.ag) ; 2 uses
  %i.bc = xor i1 %i.ay, true
  %i.bd = and i1 %i.bb, %i.bc
  %i.be = xor i1 %i.ay, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2217, !nonnull !93, !align !1672
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.bj = trunc nuw i8 %i.bi to i1
  %not..i.i = xor i1 %i.bj, true
  %i.bk = and i1 %i.be, %not..i.i
  %i.bl = xor i1 %i.bd, %i.bk
  br i1 %i.bl, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !2229

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.l, %bb.n, %bb.g
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.08.025, %bb.g ], [ %.sroa.0.09.i, %bb.n ], [ %.sroa.0.09.i, %bb.l ]
  store i32 %i.t, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 4 ; 2 uses
  %i.bm = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bm, label %.loopexit, label %bb.b, !llvm.loop !2230

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.273") align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.275", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit
  %.sroa.03.012 = phi ptr [ %0, %.lr.ph ], [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = load i32, ptr %.sroa.03.012, align 4, !tbaa !3 ; 4 uses
  %.sroa.0.07.i = getelementptr inbounds i8, ptr %.sroa.03.012, i64 -4 ; 2 uses
  %i.e = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !3
  %i.f = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.d, i32 noundef %i.e)
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = and i64 %i.g, 63
  %i.j = shl nuw i64 1, %i.i
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.i, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.07.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.03.012, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.i ]
  %.ph = load ptr, ptr %3, align 8, !tbaa !2222
  %i.k = load ptr, ptr %.ph, align 8, !tbaa !2211
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.h
  %i.o = load ptr, ptr %i.c, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.g
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.g ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.p = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.p, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.q = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = load i64, ptr %i.n, align 8, !tbaa !106
  %i.s = and i64 %i.r, %i.j
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = zext i32 %i.q to i64                     ; 2 uses
  %i.u = lshr i64 %i.t, 6
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !106
  %i.x = and i64 %i.t, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = and i64 %i.w, %i.y
  %.not.i.i.i11.i = icmp eq i64 %i.z, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.c, %.lr.ph.i
  %i.aa = phi i1 [ %.not.i.i.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ab = phi i1 [ %.not.i.i.i11.i, %bb.c ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i = and i1 %i.aa, %i.ab
  %i.ad = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ae = xor i1 %i.aa, %i.ad
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ae
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !2229

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !2225, !nonnull !93, !align !1670 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2213, !nonnull !93, !align !1670
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2215
  %i.ai = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ah, i32 noundef %i.d) ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !2213, !nonnull !93, !align !1670
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2215
  %i.al = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ak, i32 noundef %i.q) ; 2 uses
  %i.am = xor i1 %i.ai, true
  %i.an = and i1 %i.al, %i.am
  %i.ao = xor i1 %i.ai, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2217, !nonnull !93, !align !1672
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.at = trunc nuw i8 %i.as to i1
  %not..i.i = xor i1 %i.at, true
  %i.au = and i1 %i.ao, %not..i.i
  %i.av = xor i1 %i.an, %i.au
  br i1 %i.av, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !2229

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %bb.g ]
  store i32 %i.d, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %1
  br i1 %i.ax, label %._crit_edge, label %bb.b, !llvm.loop !2231
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %i.h, ptr %2, ptr %3)
  %i.i = icmp sgt i64 %i.d, 64
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %0, ptr nonnull %i.j, ptr %2, ptr %3)
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i ] ; 3 uses
  %i.m = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.i.i.i = phi ptr [ %.sroa.0.09.i.i, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i.i, i64 -4 ; 3 uses
  %i.n = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !3
  %i.o = load ptr, ptr %2, align 8, !tbaa !2215
  %i.p = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.o, i32 noundef %i.m) ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !2215
  %i.r = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.q, i32 noundef %i.n) ; 2 uses
  %i.s = xor i1 %i.p, true
  %i.t = and i1 %i.r, %i.s
  %i.u = xor i1 %i.p, %i.r
  %i.v = load i8, ptr %i.l, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.w = trunc nuw i8 %i.v to i1
  %not..i.i.i.i.i = xor i1 %i.w, true
  %i.x = and i1 %i.u, %not..i.i.i.i.i
  %i.y = xor i1 %i.t, %i.x
  br i1 %i.y, label %bb.f, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !3
  store i32 %i.z, ptr %.sroa.06.0.i.i.i, align 4, !tbaa !3
  br label %bb.e, !llvm.loop !2232

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i: ; preds = %bb.e
  store i32 %i.m, ptr %.sroa.06.0.i.i.i, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit, label %bb.d, !llvm.loop !2233

bb.g:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit

_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SM_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph36

bb.b:                                             ; preds = %.lr.ph36
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph36, !llvm.loop !2234

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i
end_hunk_1
begin_hunk_2_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_:bb.a

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.027.1, i64 4
  br label %bb.c, !llvm.loop !2298

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread: ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.preheader ], [ %.sroa.0.1, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge ]
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -4 ; 6 uses
  %i.bp = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.bq = load i32, ptr %.sroa.0.1, align 4, !tbaa !3 ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !2281
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.l

bb.l:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !2283, !nonnull !93, !align !1670
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1816 ; 2 uses
  %i.bw = sext i32 %i.bp to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !106
  %i.cd = and i64 %i.bz, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.cc
  %.not.i.i.i.i11 = icmp eq i64 %i.cf, 0
  %i.cg = sext i32 %i.bq to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = lshr i64 %i.cj, 6
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !106
  %i.cn = and i64 %i.cj, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not.i.i.i11.i12 = icmp eq i64 %i.cp, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13: ; preds = %bb.l, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread
  %i.cq = phi i1 [ %.not.i.i.i.i11, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread ] ; 3 uses
  %i.cr = phi i1 [ %.not.i.i.i11.i12, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread ] ; 2 uses
  %or.cond.i14 = or i1 %i.cq, %i.cr
  br i1 %or.cond.i14, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13
  %.sroa.0.0.copyload.i17 = load i64, ptr %i.g, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i18 = lshr i64 %.sroa.0.0.copyload.i17, 32
  %.sroa.37.0.extract.trunc.i.i19 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i18 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i19, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.cs = and i64 %.sroa.0.0.copyload.i17, 65536
  %.not.i.i22 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i22, label %bb.o, label %.critedge.i23

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i20 = and i1 %i.cq, %i.cr
  %i.ct = trunc i64 %.sroa.0.0.copyload.i17 to i1
  %i.cu = xor i1 %i.cq, %i.ct
  %or.cond34.demorgan = or i1 %or.cond.i.i20, %i.cu
  br i1 %or.cond34.demorgan, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit24.thread, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge: ; preds = %bb.p, %bb.r
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread, !llvm.loop !2299

bb.q:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i23:                                    ; preds = %bb.n
  tail call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.r:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !2284, !nonnull !93, !align !1670 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !2286
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2288, !nonnull !93, !align !1670
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1816
  %i.da = sext i32 %i.bp to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.cw, i32 noundef %i.dc) ; 2 uses
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !2284, !nonnull !93, !align !1670 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !2286
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2288, !nonnull !93, !align !1670
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1816
  %i.dj = sext i32 %i.bq to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = tail call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.df, i32 noundef %i.dl) ; 2 uses
  %i.dn = xor i1 %i.dd, true
  %i.do = and i1 %i.dm, %i.dn
  %i.dp = xor i1 %i.dd, %i.dm
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !2289, !nonnull !93, !align !1672
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.dt = trunc nuw i8 %i.ds to i1
  %not..i.i15 = xor i1 %i.dt, true
  %i.du = and i1 %i.dp, %not..i.i15
  %i.dv = xor i1 %i.do, %i.du
  br i1 %i.dv, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit24.thread

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit24.thread: ; preds = %bb.p, %bb.r
  %.not = icmp ult ptr %.sroa.027.1, %.sroa.0.1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit24.thread
  ret ptr %.sroa.027.1

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit24.thread
  %i.dw = load i32, ptr %.sroa.027.1, align 4, !tbaa !3
  %i.dx = load i32, ptr %.sroa.0.1, align 4, !tbaa !3
  store i32 %i.dx, ptr %.sroa.027.1, align 4, !tbaa !3
  store i32 %i.dw, ptr %.sroa.0.1, align 4, !tbaa !3
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.027.1, i64 4
  br label %bb.b, !llvm.loop !2300
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.293") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.295", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.023 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = icmp eq ptr %.sroa.08.023, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.08.025 = phi ptr [ %.sroa.08.023, %.lr.ph ], [ %.sroa.08.0, %bb.o ] ; 8 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.025, %bb.o ] ; 4 uses
  %i.f = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  %i.h = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.f, i32 noundef %i.g)
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.j = ptrtoint ptr %.sroa.08.025 to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !79

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24, i64 8
  %i.o = sub nsw i64 0, %i.l
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.p, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.k, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.k, 4
  br i1 %i.q, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pn24, i64 4
  %i.s = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.s, ptr %i.r, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store i32 %i.i, ptr %0, align 4, !tbaa !3
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.t = load i32, ptr %.sroa.08.025, align 4, !tbaa !3 ; 3 uses
  %i.u = load i32, ptr %.pn24, align 4, !tbaa !3
  %i.v = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.t, i32 noundef %i.u)
  br i1 %i.v, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.w = sext i32 %i.t to i64                     ; 2 uses
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.n, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.pn24, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.n ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.08.025, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.n ]
  %.ph = load ptr, ptr %3, align 8, !tbaa !2294   ; 2 uses
  %i.x = load ptr, ptr %.ph, align 8, !tbaa !2281
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.ab = load ptr, ptr %i.d, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.l
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.l ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.ac = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.ac, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.ad = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !2283, !nonnull !93, !align !1670
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1816 ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.w
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !106
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.an, %i.al
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0
  %i.ap = sext i32 %i.ad to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !106
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.ax, %i.av
  %.not.i.i.i11.i = icmp eq i64 %i.ay, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.h, %.lr.ph.i
  %i.az = phi i1 [ %.not.i.i.i.i, %bb.h ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ba = phi i1 [ %.not.i.i.i11.i, %bb.h ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.m [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bb = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i = and i1 %i.az, %i.ba
  %i.bc = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.bd = xor i1 %i.az, %i.bc
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.bd
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !2301

bb.m:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !2297, !nonnull !93, !align !1670 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2284, !nonnull !93, !align !1670 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2286
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2288, !nonnull !93, !align !1670
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1816
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.w
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bg, i32 noundef %i.bl) ; 2 uses
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !2284, !nonnull !93, !align !1670 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2286
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2288, !nonnull !93, !align !1670
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1816
  %i.bs = sext i32 %i.ad to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.bo, i32 noundef %i.bu) ; 2 uses
  %i.bw = xor i1 %i.bm, true
  %i.bx = and i1 %i.bv, %i.bw
  %i.by = xor i1 %i.bm, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2289, !nonnull !93, !align !1672
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.cd = trunc nuw i8 %i.cc to i1
  %not..i.i = xor i1 %i.cd, true
  %i.ce = and i1 %i.by, %not..i.i
  %i.cf = xor i1 %i.bx, %i.ce
  br i1 %i.cf, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, !llvm.loop !2301

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit: ; preds = %bb.l, %bb.n, %bb.g
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.08.025, %bb.g ], [ %.sroa.0.09.i, %bb.n ], [ %.sroa.0.09.i, %bb.l ]
  store i32 %i.t, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cg, label %.loopexit, label %bb.b, !llvm.loop !2302

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.293") align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.295", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit
  %.sroa.03.012 = phi ptr [ %0, %.lr.ph ], [ %i.bq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.d = load i32, ptr %.sroa.03.012, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.07.i = getelementptr inbounds i8, ptr %.sroa.03.012, i64 -4 ; 2 uses
  %i.e = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !3
  %i.f = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.d, i32 noundef %i.e)
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.i, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.07.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.03.012, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.i ]
  %.ph = load ptr, ptr %3, align 8, !tbaa !2294   ; 2 uses
  %i.h = load ptr, ptr %.ph, align 8, !tbaa !2281
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.l = load ptr, ptr %i.c, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.g
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.g ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.m = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.m, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.n = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !2283, !nonnull !93, !align !1670
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1816 ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.g
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !106
  %i.w = and i64 %i.s, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = and i64 %i.x, %i.v
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  %i.z = sext i32 %i.n to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !106
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, %i.af
  %.not.i.i.i11.i = icmp eq i64 %i.ai, 0
  br label %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = phi i1 [ %.not.i.i.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ak = phi i1 [ %.not.i.i.i11.i, %bb.c ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.al = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i = and i1 %i.aj, %i.ak
  %i.am = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.an = xor i1 %i.aj, %i.am
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.an
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !2301

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIbE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !2297, !nonnull !93, !align !1670 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2284, !nonnull !93, !align !1670 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2286
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2288, !nonnull !93, !align !1670
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1816
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.g
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.aq, i32 noundef %i.av) ; 2 uses
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !2284, !nonnull !93, !align !1670 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2286
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2288, !nonnull !93, !align !1670
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1816
  %i.bc = sext i32 %i.n to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, i32 noundef %i.be) ; 2 uses
  %i.bg = xor i1 %i.aw, true
  %i.bh = and i1 %i.bf, %i.bg
  %i.bi = xor i1 %i.aw, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2289, !nonnull !93, !align !1672
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.bn = trunc nuw i8 %i.bm to i1
  %not..i.i = xor i1 %i.bn, true
  %i.bo = and i1 %i.bi, %not..i.i
  %i.bp = xor i1 %i.bh, %i.bo
  br i1 %i.bp, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, !llvm.loop !2301

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %bb.g ]
  store i32 %i.d, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %1
  br i1 %i.br, label %._crit_edge, label %bb.b, !llvm.loop !2303
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SO_SK_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph36

bb.b:                                             ; preds = %.lr.ph36
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph36, !llvm.loop !2304

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SK_SK_SL_T2_(ptr %0, i64 noundef %.09.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr %3, ptr %4)
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.m = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !2305

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.p, ptr %i.n, align 4, !tbaa !3
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SK_SK_SL_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr %3, ptr %4)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SO_SK_.exit, !llvm.loop !2306

.lr.ph36:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2235 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02334 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ac, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.02334, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %storemerge2235, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.x, ptr nonnull %i.y, ptr %3, ptr %4)
  %i.z = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge2235, ptr %0, ptr %3, ptr %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.z, ptr %storemerge2235, i64 noundef %i.v, ptr %3, ptr %4)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a
  %i.ac = ashr exact i64 %i.ab, 2                 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 16
  br i1 %i.ad, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SO_SK_.exit, !llvm.loop !2304

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SO_SK_.exit: ; preds = %.lr.ph36, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIbE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
end_hunk_2
begin_hunk_3_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_:bb.a
  %i.bm = load i32, ptr %.sroa.0.1, align 4, !tbaa !3 ; 2 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !2667
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13, label %bb.l

bb.l:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread
  %i.bq = zext i32 %i.bl to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 6
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !106
  %i.bu = and i64 %i.bq, 63
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bt, %i.bv
  %.not.i.i.i.i11 = icmp eq i64 %i.bw, 0
  %i.bx = zext i32 %i.bm to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !106
  %i.cb = and i64 %i.bx, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  %.not.i.i.i11.i12 = icmp eq i64 %i.cd, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13: ; preds = %bb.l, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread
  %i.ce = phi i1 [ %.not.i.i.i.i11, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread ] ; 3 uses
  %i.cf = phi i1 [ %.not.i.i.i11.i12, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread ] ; 2 uses
  %or.cond.i14 = or i1 %i.ce, %i.cf
  br i1 %or.cond.i14, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.q, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i17 = lshr i64 %.sroa.0.0.copyload.i16, 32
  %.sroa.37.0.extract.trunc.i.i18 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i17 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i18, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.cg = and i64 %.sroa.0.0.copyload.i16, 65536
  %.not.i.i21 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i21, label %bb.o, label %.critedge.i22

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i19 = and i1 %i.ce, %i.cf
  %i.ch = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.ci = xor i1 %i.ce, %i.ch
  %or.cond33.demorgan = or i1 %or.cond.i.i19, %i.ci
  br i1 %or.cond33.demorgan, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge: ; preds = %bb.p, %bb.r
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread, !llvm.loop !2680

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i22:                                    ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.r:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !2660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !2669, !nonnull !93, !align !1670
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2662
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2414 ; 2 uses
  %i.co = sext i32 %i.bl to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !106
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.cr = sext i32 %i.bm to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !106
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cv, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %i.a, ptr %4, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.l, align 8, !tbaa !1677
  store ptr %i.c, ptr %i.m, align 8, !tbaa !1677
  %i.cw = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !2670, !nonnull !93, !align !1672
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = sub nsw i32 0, %i.cw
  %i.dc = select i1 %i.da, i32 %i.cw, i32 %i.db
  %i.dd = icmp slt i32 %i.dc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.dd, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread: ; preds = %bb.p, %bb.r
  %.not = icmp ult ptr %.sroa.026.1, %.sroa.0.1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  ret ptr %.sroa.026.1

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %i.de = load i32, ptr %.sroa.026.1, align 4, !tbaa !3
  %i.df = load i32, ptr %.sroa.0.1, align 4, !tbaa !3
  store i32 %i.df, ptr %.sroa.026.1, align 4, !tbaa !3
  store i32 %i.de, ptr %.sroa.0.1, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.026.1, i64 4
  br label %bb.b, !llvm.loop !2681
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.415") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.371, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.417", align 8 ; 7 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.023 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = icmp eq ptr %.sroa.08.023, %1
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.08.025 = phi ptr [ %.sroa.08.023, %.lr.ph ], [ %.sroa.08.0, %bb.o ] ; 8 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.025, %bb.o ] ; 4 uses
  %i.k = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.l = load i32, ptr %0, align 4, !tbaa !3
  %i.m = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.k, i32 noundef %i.l)
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.o = ptrtoint ptr %.sroa.08.025 to i64
  %i.p = sub i64 %i.o, %i.j                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !79

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24, i64 8
  %i.t = sub nsw i64 0, %i.q
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.u, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.p, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.p, 4
  br i1 %i.v, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24, i64 4
  %i.x = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.x, ptr %i.w, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.y = load i32, ptr %.sroa.08.025, align 4, !tbaa !3 ; 4 uses
  %i.z = load i32, ptr %.pn24, align 4, !tbaa !3
  %i.aa = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.y, i32 noundef %i.z)
  br i1 %i.aa, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = and i64 %i.ab, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = sext i32 %i.y to i64
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.n, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.pn24, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.n ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.08.025, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.n ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !2675
  %i.ag = load ptr, ptr %.ph, align 8, !tbaa !2667
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load ptr, ptr %i.i, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.l
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.l ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.al = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.al, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.am = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.ao = and i64 %i.an, %i.ae
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !106
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.h, %.lr.ph.i
  %i.aw = phi i1 [ %.not.i.i.i.i, %bb.h ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i, %bb.h ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.m [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ay = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i = and i1 %i.aw, %i.ax
  %i.az = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ba = xor i1 %i.aw, %i.az
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ba
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !2682

bb.m:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !2678, !nonnull !93, !align !1670 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !2669, !nonnull !93, !align !1670
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2662
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2414 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.af
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !106
  store i64 %i.bj, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.bk = sext i32 %i.am to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !106
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !106
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %i.a, ptr %3, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.g, align 8, !tbaa !1677
  store ptr %i.c, ptr %i.h, align 8, !tbaa !1677
  %i.bp = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2670, !nonnull !93, !align !1672
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = sub nsw i32 0, %i.bp
  %i.bw = select i1 %i.bu, i32 %i.bp, i32 %i.bv
  %i.bx = icmp slt i32 %i.bw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.bx, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !2682

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.l, %bb.n, %bb.g
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.08.025, %bb.g ], [ %.sroa.0.09.i, %bb.n ], [ %.sroa.0.09.i, %bb.l ]
  store i32 %i.y, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 4 ; 2 uses
  %i.by = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.by, label %.loopexit, label %bb.b, !llvm.loop !2683

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.415") align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.371, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.417", align 8 ; 7 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit
  %.sroa.03.012 = phi ptr [ %0, %.lr.ph ], [ %i.bi, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.i = load i32, ptr %.sroa.03.012, align 4, !tbaa !3 ; 4 uses
  %.sroa.0.07.i = getelementptr inbounds i8, ptr %.sroa.03.012, i64 -4 ; 2 uses
  %i.j = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  br i1 %i.k, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.l = zext i32 %i.i to i64                     ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = and i64 %i.l, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = sext i32 %i.i to i64
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.i, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.07.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.03.012, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.i ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !2675
  %i.q = load ptr, ptr %.ph, align 8, !tbaa !2667
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m
  %i.u = load ptr, ptr %i.h, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.g
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.g ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.v = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.v, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.w = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.t, align 8, !tbaa !106
  %i.y = and i64 %i.x, %i.o
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !106
  %i.ad = and i64 %i.z, 63
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ac, %i.ae
  %.not.i.i.i11.i = icmp eq i64 %i.af, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.c, %.lr.ph.i
  %i.ag = phi i1 [ %.not.i.i.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ah = phi i1 [ %.not.i.i.i11.i, %bb.c ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ai = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i = and i1 %i.ag, %i.ah
  %i.aj = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ak = xor i1 %i.ag, %i.aj
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ak
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !2682

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !2678, !nonnull !93, !align !1670 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !2669, !nonnull !93, !align !1670
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2662
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2414 ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.p
  %i.at = load i64, ptr %i.as, align 8, !tbaa !106
  store i64 %i.at, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.au = sext i32 %i.w to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !106
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !106
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %i.a, ptr %3, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.f, align 8, !tbaa !1677
  store ptr %i.c, ptr %i.g, align 8, !tbaa !1677
  %i.az = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2670, !nonnull !93, !align !1672
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = sub nsw i32 0, %i.az
  %i.bg = select i1 %i.be, i32 %i.az, i32 %i.bf
  %i.bh = icmp slt i32 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.bh, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !2682

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %bb.g ]
  store i32 %i.i, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %1
  br i1 %i.bj, label %._crit_edge, label %bb.b, !llvm.loop !2684
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.418") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph27

.lr.ph:                                           ; preds = %.lr.ph27
  %i.g = icmp eq i64 %i.t, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph27, !llvm.loop !2685

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %storemerge16.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.h = add nsw i64 %.lcssa, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.08.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %.lcssa, i32 noundef %i.k, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.418") align 8 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.l = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.b, !llvm.loop !2686

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %storemerge16.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.o, ptr %i.m, align 4, !tbaa !3
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.418") align 8 %3)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !2687

.lr.ph27:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1626 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01725 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.01725, -1                  ; 3 uses
  %i.u = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEET_SM_SM_SI_(ptr %0, ptr %storemerge1626, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.418") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.u, ptr %storemerge1626, i64 noundef %i.t, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.418") align 8 %3)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 16
  br i1 %i.y, label %.lr.ph, label %.loopexit, !llvm.loop !2685

.loopexit:                                        ; preds = %.lr.ph27, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEET_SM_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.418") align 8 %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.371, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.371, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = sdiv i64 %i.j, 2
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k
end_hunk_3
begin_hunk_4_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_:bb.a
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = lshr i64 %i.cn, 6
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !106
  %i.cr = and i64 %i.cn, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %i.cq
  %.not.i.i.i.i11 = icmp eq i64 %i.ct, 0
  %i.cu = sext i32 %i.ce to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !106
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not.i.i.i11.i12 = icmp eq i64 %i.dd, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13: ; preds = %bb.l, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread
  %i.de = phi i1 [ %.not.i.i.i.i11, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread ] ; 3 uses
  %i.df = phi i1 [ %.not.i.i.i11.i12, %bb.l ], [ false, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread ] ; 2 uses
  %or.cond.i14 = or i1 %i.de, %i.df
  br i1 %or.cond.i14, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %.sroa.0.0.copyload.i16 = load i64, ptr %i.r, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i17 = lshr i64 %.sroa.0.0.copyload.i16, 32
  %.sroa.37.0.extract.trunc.i.i18 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i17 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i18, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.dg = and i64 %.sroa.0.0.copyload.i16, 65536
  %.not.i.i21 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i21, label %bb.o, label %.critedge.i22

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i19 = and i1 %i.de, %i.df
  %i.dh = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.di = xor i1 %i.de, %i.dh
  %or.cond33.demorgan = or i1 %or.cond.i.i19, %i.di
  br i1 %or.cond33.demorgan, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge: ; preds = %bb.p, %bb.r
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread, !llvm.loop !2747

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i22:                                    ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.r:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !2727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.dk = load ptr, ptr %i.o, align 8, !tbaa !2733, !nonnull !93, !align !1670 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !2734
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2736, !nonnull !93, !align !1670
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1816 ; 2 uses
  %i.dp = sext i32 %i.cd to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2414 ; 2 uses
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !106
  store i64 %i.dw, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.dx = sext i32 %i.ce to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !106
  store i64 %i.ec, ptr %i.c, align 8, !tbaa !106
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ee, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %i.a, ptr %4, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.m, align 8, !tbaa !1677
  store ptr %i.c, ptr %i.n, align 8, !tbaa !1677
  %i.ef = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !2737, !nonnull !93, !align !1672
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = sub nsw i32 0, %i.ef
  %i.el = select i1 %i.ej, i32 %i.ef, i32 %i.ek
  %i.em = icmp slt i32 %i.el, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.em, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread: ; preds = %bb.p, %bb.r
  %.not = icmp ult ptr %.sroa.026.1, %.sroa.0.1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  ret ptr %.sroa.026.1

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %i.en = load i32, ptr %.sroa.026.1, align 4, !tbaa !3
  %i.eo = load i32, ptr %.sroa.0.1, align 4, !tbaa !3
  store i32 %i.eo, ptr %.sroa.026.1, align 4, !tbaa !3
  store i32 %i.en, ptr %.sroa.0.1, align 4, !tbaa !3
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.026.1, i64 4
  br label %bb.b, !llvm.loop !2748
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.435") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.371, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.437", align 8 ; 7 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.023 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = icmp eq ptr %.sroa.08.023, %1
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.08.025 = phi ptr [ %.sroa.08.023, %.lr.ph ], [ %.sroa.08.0, %bb.o ] ; 8 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.025, %bb.o ] ; 4 uses
  %i.k = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.l = load i32, ptr %0, align 4, !tbaa !3
  %i.m = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.k, i32 noundef %i.l)
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %.sroa.08.025, align 4, !tbaa !3
  %i.o = ptrtoint ptr %.sroa.08.025 to i64
  %i.p = sub i64 %i.o, %i.j                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !79

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24, i64 8
  %i.t = sub nsw i64 0, %i.q
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.u, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.p, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.p, 4
  br i1 %i.v, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24, i64 4
  %i.x = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.x, ptr %i.w, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.y = load i32, ptr %.sroa.08.025, align 4, !tbaa !3 ; 3 uses
  %i.z = load i32, ptr %.pn24, align 4, !tbaa !3
  %i.aa = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.y, i32 noundef %i.z)
  br i1 %i.aa, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.n, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.pn24, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.n ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.08.025, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.n ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !2742   ; 2 uses
  %i.ac = load ptr, ptr %.ph, align 8, !tbaa !2730
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.ag = load ptr, ptr %i.i, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.l
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.l ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.ah = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.ah, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.ai = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !2732, !nonnull !93, !align !1670
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1816 ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ab
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !106
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  %i.au = sext i32 %i.ai to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !106
  %i.bb = and i64 %i.ax, 63
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = and i64 %i.bc, %i.ba
  %.not.i.i.i11.i = icmp eq i64 %i.bd, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.h, %.lr.ph.i
  %i.be = phi i1 [ %.not.i.i.i.i, %bb.h ], [ false, %.lr.ph.i ] ; 3 uses
  %i.bf = phi i1 [ %.not.i.i.i11.i, %bb.h ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.be, %i.bf
  br i1 %or.cond.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.m [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bg = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i = and i1 %i.be, %i.bf
  %i.bh = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.bi = xor i1 %i.be, %i.bh
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.bi
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !2749

bb.m:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !2745, !nonnull !93, !align !1670 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !2733, !nonnull !93, !align !1670 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2734
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2736, !nonnull !93, !align !1670
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1816 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ab
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2414 ; 2 uses
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !106
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.by = sext i32 %i.ai to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !106
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !106
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %i.a, ptr %3, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.g, align 8, !tbaa !1677
  store ptr %i.c, ptr %i.h, align 8, !tbaa !1677
  %i.cg = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2737, !nonnull !93, !align !1672
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = sub nsw i32 0, %i.cg
  %i.cn = select i1 %i.cl, i32 %i.cg, i32 %i.cm
  %i.co = icmp slt i32 %i.cn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.co, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, !llvm.loop !2749

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit: ; preds = %bb.l, %bb.n, %bb.g
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.08.025, %bb.g ], [ %.sroa.0.09.i, %bb.n ], [ %.sroa.0.09.i, %bb.l ]
  store i32 %i.y, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 4 ; 2 uses
  %i.cp = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cp, label %.loopexit, label %bb.b, !llvm.loop !2750

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.435") align 8 %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.371, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.437", align 8 ; 7 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit
  %.sroa.03.012 = phi ptr [ %0, %.lr.ph ], [ %i.bz, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.i = load i32, ptr %.sroa.03.012, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.07.i = getelementptr inbounds i8, ptr %.sroa.03.012, i64 -4 ; 2 uses
  %i.j = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  br i1 %i.k, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.l = sext i32 %i.i to i64                     ; 2 uses
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.i, %.lr.ph.i.preheader
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.07.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.03.012, %.lr.ph.i.preheader ], [ %.sroa.0.09.i, %bb.i ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !2742   ; 2 uses
  %i.m = load ptr, ptr %.ph, align 8, !tbaa !2730
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1999 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !93, !align !1672
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.g
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.09.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %.sroa.04.08.i = phi ptr [ %.sroa.0.09.i, %bb.g ], [ %.sroa.04.08.i.ph, %.lr.ph.i.outer ]
  %i.r = load i32, ptr %.sroa.0.09.i, align 4, !tbaa !3
  store i32 %i.r, ptr %.sroa.04.08.i, align 4, !tbaa !3
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -4 ; 3 uses
  %i.s = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3 ; 2 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !2732, !nonnull !93, !align !1670
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1816 ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.l
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !106
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %i.aa
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = sext i32 %i.s to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.al = and i64 %i.ah, 63
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ak
  %.not.i.i.i11.i = icmp eq i64 %i.an, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.c, %.lr.ph.i
  %i.ao = phi i1 [ %.not.i.i.i.i, %bb.c ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ap = phi i1 [ %.not.i.i.i11.i, %bb.c ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i = or i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aq = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.65) #47
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i = and i1 %i.ao, %i.ap
  %i.ar = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.as = xor i1 %i.ao, %i.ar
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.as
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !2749

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.66) #47
  unreachable

.critedge.i:                                      ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #47
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !2745, !nonnull !93, !align !1670 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !2733, !nonnull !93, !align !1670 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2734
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2736, !nonnull !93, !align !1670
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1816 ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.l
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2414 ; 2 uses
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !106
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.bi = sext i32 %i.s to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !106
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !2121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %i.a, ptr %3, align 8, !tbaa !2122
  store ptr %i.b, ptr %i.f, align 8, !tbaa !1677
  store ptr %i.c, ptr %i.g, align 8, !tbaa !1677
  %i.bq = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2737, !nonnull !93, !align !1672
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !2182, !range !92, !noundef !93
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = sub nsw i32 0, %i.bq
  %i.bx = select i1 %i.bv, i32 %i.bq, i32 %i.bw
  %i.by = icmp slt i32 %i.bx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br i1 %i.by, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, !llvm.loop !2749

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %bb.g ]
  store i32 %i.i, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %1
  br i1 %i.ca, label %._crit_edge, label %bb.b, !llvm.loop !2751
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.438") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph28

bb.b:                                             ; preds = %.lr.ph28
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph28, !llvm.loop !2752

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SK_SK_SL_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.438") align 8 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.m = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !2753

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %storemerge17.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.p, ptr %i.n, align 4, !tbaa !3
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SK_SK_SL_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.438") align 8 %3)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !2754

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1727 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01826 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ac, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.01826, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %storemerge1727, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.x, ptr nonnull %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.438") align 8 %3)
  %i.z = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1727, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.438") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.z, ptr %storemerge1727, i64 noundef %i.v, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.438") align 8 %3)
end_hunk_4
