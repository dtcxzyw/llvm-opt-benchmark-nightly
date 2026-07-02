inline.NumInlined: 4137
inline.NumDeleted: 1354
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_:bb.a
  %i.bm = load i32, ptr %.sroa.0.1, align 4, !tbaa !3 ; 2 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !737
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13, label %bb.l

bb.l:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread
  %i.bq = zext i32 %i.bl to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 6
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !93
  %i.bu = and i64 %i.bq, 63
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bt, %i.bv
  %.not.i.i.i.i11 = icmp eq i64 %i.bw, 0
  %i.bx = zext i32 %i.bm to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !93
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
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.118) #35
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i19 = and i1 %i.ce, %i.cf
  %i.ch = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.ci = xor i1 %i.ce, %i.ch
  %or.cond33.demorgan = or i1 %or.cond.i.i19, %i.ci
  br i1 %or.cond33.demorgan, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.backedge: ; preds = %bb.p, %bb.r
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread, !llvm.loop !750

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.119) #35
  unreachable

.critedge.i22:                                    ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.r:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.ck = load ptr, ptr %i.n, align 8, !tbaa !739, !nonnull !126, !align !246
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !729
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !448 ; 2 uses
  %i.co = sext i32 %i.bl to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !93
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.cr = sext i32 %i.bm to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !93
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !93
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cv, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %i.a, ptr %4, align 8, !tbaa !167
  store ptr %i.b, ptr %i.l, align 8, !tbaa !253
  store ptr %i.c, ptr %i.m, align 8, !tbaa !253
  %i.cw = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !126, !align !248
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !731, !range !125, !noundef !126
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = sub nsw i32 0, %i.cw
  %i.dc = select i1 %i.da, i32 %i.cw, i32 %i.db
  %i.dd = icmp slt i32 %i.dc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
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
  br label %bb.b, !llvm.loop !751
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.198") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.154, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.200", align 8 ; 7 uses
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
  br i1 %i.r, label %bb.d, label %bb.e, !prof !62

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
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.0.i, %bb.n ], [ %.pn24, %.lr.ph.i.preheader ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.0.09.i, %bb.n ], [ %.sroa.08.025, %.lr.ph.i.preheader ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !745
  %i.ag = load ptr, ptr %.ph, align 8, !tbaa !737
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load ptr, ptr %i.i, align 8, !nonnull !126, !align !248
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
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !93
  %i.ao = and i64 %i.an, %i.ae
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93
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
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.118) #35
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i = and i1 %i.aw, %i.ax
  %i.az = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ba = xor i1 %i.aw, %i.az
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ba
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !752

bb.m:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.119) #35
  unreachable

.critedge.i:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !748, !nonnull !126, !align !246 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !739, !nonnull !126, !align !246
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !729
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !448 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.af
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !93
  store i64 %i.bj, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.bk = sext i32 %i.am to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !93
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.a, ptr %3, align 8, !tbaa !167
  store ptr %i.b, ptr %i.g, align 8, !tbaa !253
  store ptr %i.c, ptr %i.h, align 8, !tbaa !253
  %i.bp = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !740, !nonnull !126, !align !248
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !731, !range !125, !noundef !126
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = sub nsw i32 0, %i.bp
  %i.bw = select i1 %i.bu, i32 %i.bp, i32 %i.bv
  %i.bx = icmp slt i32 %i.bw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br i1 %i.bx, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !752

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.l, %bb.n, %bb.g
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.08.025, %bb.g ], [ %.sroa.0.09.i, %bb.n ], [ %.sroa.0.09.i, %bb.l ]
  store i32 %i.y, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 4 ; 2 uses
  %i.by = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.by, label %.loopexit, label %bb.b, !llvm.loop !753

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.198") align 8 %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.154, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.200", align 8 ; 7 uses
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
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.0.i, %bb.i ], [ %.sroa.0.07.i, %.lr.ph.i.preheader ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.0.09.i, %bb.i ], [ %.sroa.03.012, %.lr.ph.i.preheader ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !745
  %i.q = load ptr, ptr %.ph, align 8, !tbaa !737
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m
  %i.u = load ptr, ptr %i.h, align 8, !nonnull !126, !align !248
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
  %i.x = load i64, ptr %i.t, align 8, !tbaa !93
  %i.y = and i64 %i.x, %i.o
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !93
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
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.118) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i = and i1 %i.ag, %i.ah
  %i.aj = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ak = xor i1 %i.ag, %i.aj
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ak
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, label %.lr.ph.i, !llvm.loop !752

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.119) #35
  unreachable

.critedge.i:                                      ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !748, !nonnull !126, !align !246 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !739, !nonnull !126, !align !246
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !729
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !448 ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.p
  %i.at = load i64, ptr %i.as, align 8, !tbaa !93
  store i64 %i.at, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.au = sext i32 %i.w to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !93
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !93
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.a, ptr %3, align 8, !tbaa !167
  store ptr %i.b, ptr %i.f, align 8, !tbaa !253
  store ptr %i.c, ptr %i.g, align 8, !tbaa !253
  %i.az = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !740, !nonnull !126, !align !248
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !731, !range !125, !noundef !126
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = sub nsw i32 0, %i.az
  %i.bg = select i1 %i.be, i32 %i.az, i32 %i.bf
  %i.bh = icmp slt i32 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br i1 %i.bh, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit, !llvm.loop !752

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %bb.g ]
  store i32 %i.i, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %1
  br i1 %i.bj, label %._crit_edge, label %bb.b, !llvm.loop !754
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.201") align 8 %3) local_unnamed_addr #0 comdat {
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
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph27, !llvm.loop !755

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
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %.lcssa, i32 noundef %i.k, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.201") align 8 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.l = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.b, !llvm.loop !756

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %storemerge16.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.o, ptr %i.m, align 4, !tbaa !3
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_SI_SJ_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.201") align 8 %3)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !757

.lr.ph27:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1626 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01725 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.01725, -1                  ; 3 uses
  %i.u = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEET_SM_SM_SI_(ptr %0, ptr %storemerge1626, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.201") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.u, ptr %storemerge1626, i64 noundef %i.t, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.201") align 8 %3)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 16
  br i1 %i.y, label %.lr.ph, label %.loopexit, !llvm.loop !755

.loopexit:                                        ; preds = %.lr.ph27, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEET_SM_SM_SI_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.201") align 8 %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.154, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.154, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = sdiv i64 %i.j, 2
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k
end_hunk_0
begin_hunk_1_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_:bb.a
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = lshr i64 %i.cn, 6
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !93
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
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !93
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
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.118) #35
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i19 = and i1 %i.de, %i.df
  %i.dh = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.di = xor i1 %i.de, %i.dh
  %or.cond33.demorgan = or i1 %or.cond.i.i19, %i.di
  br i1 %or.cond33.demorgan, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.backedge: ; preds = %bb.p, %bb.r
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread, !llvm.loop !817

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.119) #35
  unreachable

.critedge.i22:                                    ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.r:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.dk = load ptr, ptr %i.o, align 8, !tbaa !803, !nonnull !126, !align !246 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !804
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !806, !nonnull !126, !align !246
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !170 ; 2 uses
  %i.dp = sext i32 %i.cd to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !448 ; 2 uses
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !93
  store i64 %i.dw, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.dx = sext i32 %i.ce to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !93
  store i64 %i.ec, ptr %i.c, align 8, !tbaa !93
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ee, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %i.a, ptr %4, align 8, !tbaa !167
  store ptr %i.b, ptr %i.m, align 8, !tbaa !253
  store ptr %i.c, ptr %i.n, align 8, !tbaa !253
  %i.ef = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !807, !nonnull !126, !align !248
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !731, !range !125, !noundef !126
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = sub nsw i32 0, %i.ef
  %i.el = select i1 %i.ej, i32 %i.ef, i32 %i.ek
  %i.em = icmp slt i32 %i.el, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
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
  br label %bb.b, !llvm.loop !818
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.218") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.154, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.220", align 8 ; 7 uses
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
  br i1 %i.r, label %bb.d, label %bb.e, !prof !62

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
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.0.i, %bb.n ], [ %.pn24, %.lr.ph.i.preheader ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.0.09.i, %bb.n ], [ %.sroa.08.025, %.lr.ph.i.preheader ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !812    ; 2 uses
  %i.ac = load ptr, ptr %.ph, align 8, !tbaa !800
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.ag = load ptr, ptr %i.i, align 8, !nonnull !126, !align !248
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
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !802, !nonnull !126, !align !246
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !170 ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ab
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !93
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
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !93
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
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.118) #35
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i = and i1 %i.be, %i.bf
  %i.bh = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.bi = xor i1 %i.be, %i.bh
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.bi
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !819

bb.m:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.119) #35
  unreachable

.critedge.i:                                      ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !815, !nonnull !126, !align !246 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !803, !nonnull !126, !align !246 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !804
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !806, !nonnull !126, !align !246
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !170 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ab
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !448 ; 2 uses
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !93
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.by = sext i32 %i.ai to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !93
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.a, ptr %3, align 8, !tbaa !167
  store ptr %i.b, ptr %i.g, align 8, !tbaa !253
  store ptr %i.c, ptr %i.h, align 8, !tbaa !253
  %i.cg = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !807, !nonnull !126, !align !248
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !731, !range !125, !noundef !126
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = sub nsw i32 0, %i.cg
  %i.cn = select i1 %i.cl, i32 %i.cg, i32 %i.cm
  %i.co = icmp slt i32 %i.cn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br i1 %i.co, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, !llvm.loop !819

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit: ; preds = %bb.l, %bb.n, %bb.g
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.08.025, %bb.g ], [ %.sroa.0.09.i, %bb.n ], [ %.sroa.0.09.i, %bb.l ]
  store i32 %i.y, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.025, i64 4 ; 2 uses
  %i.cp = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cp, label %.loopexit, label %bb.b, !llvm.loop !820

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.218") align 8 %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.154, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.220", align 8 ; 7 uses
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
  %.sroa.0.09.i.ph = phi ptr [ %.sroa.0.0.i, %bb.i ], [ %.sroa.0.07.i, %.lr.ph.i.preheader ]
  %.sroa.04.08.i.ph = phi ptr [ %.sroa.0.09.i, %bb.i ], [ %.sroa.03.012, %.lr.ph.i.preheader ]
  %.ph = load ptr, ptr %4, align 8, !tbaa !812    ; 2 uses
  %i.m = load ptr, ptr %.ph, align 8, !tbaa !800
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !126, !align !248
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
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !802, !nonnull !126, !align !246
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !170  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.l
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !93
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
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !93
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
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.118) #35
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i = and i1 %i.ao, %i.ap
  %i.ar = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.as = xor i1 %i.ao, %i.ar
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.as
  br i1 %or.cond.demorgan, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !819

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.119) #35
  unreachable

.critedge.i:                                      ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !815, !nonnull !126, !align !246 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !803, !nonnull !126, !align !246 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !804
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !806, !nonnull !126, !align !246
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !170 ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.l
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !448 ; 2 uses
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !93
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.bi = sext i32 %i.s to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !93
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !93
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.a, ptr %3, align 8, !tbaa !167
  store ptr %i.b, ptr %i.f, align 8, !tbaa !253
  store ptr %i.c, ptr %i.g, align 8, !tbaa !253
  %i.bq = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !807, !nonnull !126, !align !248
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !731, !range !125, !noundef !126
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = sub nsw i32 0, %i.bq
  %i.bx = select i1 %i.bv, i32 %i.bq, i32 %i.bw
  %i.by = icmp slt i32 %i.bx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br i1 %i.by, label %.lr.ph.i.outer, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit, !llvm.loop !819

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_.exit: ; preds = %bb.g, %bb.i, %bb.b
  %.sroa.04.0.lcssa.i = phi ptr [ %.sroa.03.012, %bb.b ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %bb.g ]
  store i32 %i.i, ptr %.sroa.04.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 4 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %1
  br i1 %i.ca, label %._crit_edge, label %bb.b, !llvm.loop !821
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.221") align 8 %3) local_unnamed_addr #0 comdat {
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph28, !llvm.loop !822

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
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SK_SK_SL_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.221") align 8 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.m = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !823

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %storemerge17.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.p, ptr %i.n, align 4, !tbaa !3
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SK_SK_SL_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.221") align 8 %3)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !824

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1727 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01826 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ac, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.01826, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %storemerge1727, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.x, ptr nonnull %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.221") align 8 %3)
  %i.z = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1727, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.221") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.z, ptr %storemerge1727, i64 noundef %i.v, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.221") align 8 %3)
end_hunk_1
