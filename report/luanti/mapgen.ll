inline.NumInlined: 1329
inline.NumDeleted: 628
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Mapgen11getSurfacesEN4core8vector2dIsEEssRSt6vectorIsSaIsEES6_:bb.a
  %i.bt = icmp ugt i64 %i.bs, %i.bl
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw [2072 x i8], ptr %i.bo, i64 %i.bl ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !74
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.f, label %_ZNK14NodeDefManager3getERK7MapNode.exit17

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit17

_ZNK14NodeDefManager3getERK7MapNode.exit17:       ; preds = %bb.e, %bb.f
  %i.bz = phi ptr [ %i.by, %bb.f ], [ %i.bu, %bb.e ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1403
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !115, !range !92, !noundef !93 ; 2 uses
  %i.cc = trunc nuw i8 %i.cb to i1
  %.not = xor i1 %i.cc, true                      ; 2 uses
  %i.cd = trunc nuw i8 %.036 to i1                ; 2 uses
  %or.cond = or i1 %i.cd, %.not
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !163 ; 4 uses
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !165
  %.not.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i16 %storemerge37, ptr %i.ce, align 2, !tbaa !154
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !163
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %4, align 8, !tbaa !166   ; 4 uses
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 6 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775806
  br i1 %i.cl, label %bb.j, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #33
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cm = ashr exact i64 %i.ck, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add i64 %.sroa.speculated.i.i.i, %i.cm  ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 4611686018427387903)
  %i.cq = select i1 %i.co, i64 4611686018427387903, i64 %i.cp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #32 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store i16 %storemerge37, ptr %i.ct, align 2, !tbaa !154
  %i.cu = icmp sgt i64 %i.ck, 0
  br i1 %i.cu, label %bb.k, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cs, ptr align 2 %i.ch, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %.not.i17.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ck) #31
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  store ptr %i.cs, ptr %4, align 8, !tbaa !166
  store ptr %i.cv, ptr %i.az, align 8, !tbaa !163
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.cw, ptr %i.ba, align 8, !tbaa !165
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.m:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %or.cond4 = and i1 %i.cd, %.not
  br i1 %or.cond4, label %bb.n, label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.n:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %i.bb, align 8, !tbaa !163 ; 4 uses
  %i.cy = load ptr, ptr %i.bc, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i16 %storemerge.in35, ptr %i.cx, align 2, !tbaa !154
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store ptr %i.cz, ptr %i.bb, align 8, !tbaa !163
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.p:                                             ; preds = %bb.n
  %i.da = load ptr, ptr %5, align 8, !tbaa !166   ; 4 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775806
  br i1 %i.de, label %bb.q, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #33
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.df = ashr exact i64 %i.dd, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 4611686018427387903)
  %i.dj = select i1 %i.dh, i64 4611686018427387903, i64 %i.di ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 1
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #32 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store i16 %storemerge.in35, ptr %i.dm, align 2, !tbaa !154
  %i.dn = icmp sgt i64 %i.dd, 0
  br i1 %i.dn, label %bb.r, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dl, ptr align 2 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #31
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dl, ptr %5, align 8, !tbaa !166
  store ptr %i.do, ptr %i.bb, align 8, !tbaa !163
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dp, ptr %i.bc, align 8, !tbaa !165
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

_ZNSt6vectorIsSaIsEE9push_backERKs.exit:          ; preds = %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i, %bb.o, %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, %bb.h, %bb.m
  %i.dq = load i32, ptr %i.d, align 4, !tbaa !167
  %i.dr = sub i32 %.03134, %i.dq
  %storemerge = add i16 %storemerge37, -1         ; 2 uses
  %.not16 = icmp slt i16 %storemerge, %2
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !168
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1, i48 %2, i48 %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.246.0.extract.shift = lshr i48 %2, 16
  %.sroa.246.0.extract.trunc = trunc i48 %.sroa.246.0.extract.shift to i16 ; 2 uses
  %.sroa.042.0.extract.trunc = trunc i48 %3 to i16 ; 2 uses
  %.sroa.243.0.extract.shift = lshr i48 %3, 16
  %.sroa.243.0.extract.trunc = trunc i48 %.sroa.243.0.extract.shift to i16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.d = lshr i48 %2, 32
  %i.e = trunc nuw i48 %i.d to i16
  %i.f = ashr i48 %3, 32
  %i.g = trunc nsw i48 %i.f to i32                ; 2 uses
  %.063342 = add i16 %i.e, 1                      ; 2 uses
  %i.h = sext i16 %.063342 to i32                 ; 2 uses
  %.not.not343 = icmp sgt i32 %i.g, %i.h
  br i1 %.not.not343, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.045.0.extract.trunc = trunc i48 %2 to i16
  %.062330 = add i16 %.sroa.045.0.extract.trunc, 1 ; 2 uses
  %.not.not66331 = icmp sge i16 %.062330, %.sroa.042.0.extract.trunc
  %i.i = sext i16 %.sroa.243.0.extract.trunc to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not316 = icmp slt i16 %.sroa.243.0.extract.trunc, %.sroa.246.0.extract.trunc
  %or.cond = or i1 %.not.not66331, %.not316
  br i1 %or.cond, label %._crit_edge, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %..loopexit220_crit_edge.split.us351
  %i.aa = phi i32 [ %i.wp, %..loopexit220_crit_edge.split.us351 ], [ %i.h, %.preheader.lr.ph ]
  %.063347.us = phi i16 [ %.063.us, %..loopexit220_crit_edge.split.us351 ], [ %.063342, %.preheader.lr.ph ] ; 12 uses
  %.0346.us = phi i1 [ %.3.us, %..loopexit220_crit_edge.split.us351 ], [ true, %.preheader.lr.ph ]
  %.047345.us = phi i8 [ %.350.us, %..loopexit220_crit_edge.split.us351 ], [ 0, %.preheader.lr.ph ]
  %.057344.us = phi i16 [ %i.bc, %..loopexit220_crit_edge.split.us351 ], [ 127, %.preheader.lr.ph ]
  %i.ab = sext i16 %.063347.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us, %..loopexit_crit_edge.us
  %.062335.us348 = phi i16 [ %.062330, %.preheader.us ], [ %.062.us349, %..loopexit_crit_edge.us ] ; 13 uses
  %.1334.us = phi i1 [ %.0346.us, %.preheader.us ], [ %.3.us, %..loopexit_crit_edge.us ]
  %.148333.us = phi i8 [ %.047345.us, %.preheader.us ], [ %.350.us, %..loopexit_crit_edge.us ]
  %.158332.us = phi i16 [ %.057344.us, %.preheader.us ], [ %i.bc, %..loopexit_crit_edge.us ]
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !98  ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !103
  %i.ag = sext i16 %i.af to i32
  %i.ah = sub nsw i32 %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !104
  %i.al = mul nsw i32 %i.ah, %i.ak
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !105
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add i32 %i.al, %i.i
  %i.ar = sub i32 %i.aq, %i.ap
  %i.as = mul i32 %i.ar, %i.am
  %4 = sext i16 %.062335.us348 to i32
  %i.at = load i16, ptr %i.ad, align 4, !tbaa !102
  %i.au = sext i16 %i.at to i32
  %i.av = sub nsw i32 %4, %i.au
  %i.aw = add nsw i32 %i.av, %i.as
  %5 = sext i16 %.062335.us348 to i64             ; 2 uses
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 40)
  %7 = xor i64 %6, %i.ab                          ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, %.lr.ph.us
  %.2327.us = phi i1 [ %.1334.us, %.lr.ph.us ], [ %.3.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.249326.us = phi i8 [ %.148333.us, %.lr.ph.us ], [ %.350.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.051325.us = phi i1 [ true, %.lr.ph.us ], [ %.3.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.052324.us = phi i32 [ 0, %.lr.ph.us ], [ %i.wl, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.053322.us = phi i1 [ false, %.lr.ph.us ], [ %.154.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ] ; 6 uses
  %.055320.us = phi i1 [ false, %.lr.ph.us ], [ %.156.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.259319.us = phi i16 [ %.158332.us, %.lr.ph.us ], [ %i.bc, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.061318.us = phi i16 [ %.sroa.243.0.extract.trunc, %.lr.ph.us ], [ %i.wo, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ] ; 9 uses
  %.0197317.us = phi i32 [ %i.aw, %.lr.ph.us ], [ %i.wn, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ] ; 7 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !106 ; 9 uses
  %i.ba = zext i32 %.0197317.us to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !113 ; 7 uses
  %.not67.us = icmp eq i16 %i.bc, %.259319.us
  br i1 %.not67.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = icmp eq i16 %i.bc, 127
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.bf = zext i16 %i.bc to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !109
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !112 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 2072
  %i.bn = icmp ugt i64 %i.bm, %i.bf
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw [2072 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !74
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.e, label %_ZNK14NodeDefManager3getEt.exit.us

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit.us

_ZNK14NodeDefManager3getEt.exit.us:               ; preds = %bb.e, %bb.d
  %i.bt = phi ptr [ %i.bs, %bb.e ], [ %i.bo, %bb.d ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1449
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !151
  %i.bw = icmp ne i8 %i.bv, 0
  %i.bx = zext i1 %i.bw to i8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit.us, %bb.b
  %.350.us = phi i8 [ %i.bx, %_ZNK14NodeDefManager3getEt.exit.us ], [ %.249326.us, %bb.b ] ; 6 uses
  %.3.us = phi i1 [ %i.bd, %_ZNK14NodeDefManager3getEt.exit.us ], [ %.2327.us, %bb.b ] ; 5 uses
  %or.cond.us = or i1 %.051325.us, %.3.us
  %i.by = zext nneg i8 %.350.us to i32
  %i.bz = icmp eq i32 %.052324.us, %i.by
  %or.cond574 = select i1 %or.cond.us, i1 true, i1 %i.bz
  br i1 %or.cond574, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = trunc nuw i8 %.350.us to i1             ; 2 uses
  br i1 %i.ca, label %bb.bp, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !167
  %i.cc = add i32 %i.cb, %.0197317.us             ; 4 uses
  br i1 %.055320.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.ce = zext i16 %i.bc to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !109
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !112 ; 11 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 2072              ; 5 uses
  %i.cm = icmp ugt i64 %i.cl, %i.ce
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw [2072 x i8], ptr %i.ch, i64 %i.ce ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !74
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.k, label %_ZNK14NodeDefManager3getERK7MapNode.exit.us

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.us

_ZNK14NodeDefManager3getERK7MapNode.exit.us:      ; preds = %bb.k, %bb.j
  %i.cs = phi ptr [ %i.cr, %bb.k ], [ %i.cn, %bb.j ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1534
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !169, !range !92, !noundef !93
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us, label %bb.l

bb.l:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.us
  br i1 %.053322.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.02.0.copyload.us = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i68.us = trunc i64 %.sroa.02.0.copyload.us to i32
  %.sroa.3.0.extract.shift.i69.us = lshr i64 %.sroa.02.0.copyload.us, 32
  %.sroa.3.0.extract.trunc.i70.us = trunc nuw i64 %.sroa.3.0.extract.shift.i69.us to i32
  %i.cw = add i32 %i.cc, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !113 ; 2 uses
  %.not.i71.us = icmp eq i16 %i.cz, 127
  br i1 %.not.i71.us, label %.critedge.i73.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = zext i16 %i.cz to i64                   ; 2 uses
  %i.db = icmp ugt i64 %i.cl, %i.da
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw [2072 x i8], ptr %i.ch, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !74
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.p, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us

_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us:  ; preds = %bb.p, %bb.o
  %i.dh = phi ptr [ %i.dg, %bb.p ], [ %i.dc, %bb.o ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1534
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !169, !range !92, !noundef !93
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.q, label %.critedge.i73.us

bb.q:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 1449
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !151
  %.not49.i87.us = icmp eq i8 %i.dm, 0
  br i1 %.not49.i87.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us, label %.critedge.i73.us

.critedge.i73.us:                                 ; preds = %bb.q, %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us, %bb.m
  %i.dn = add i32 %i.cc, 1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !113 ; 2 uses
  %.not24.i74.us = icmp eq i16 %i.dq, 127
  br i1 %.not24.i74.us, label %.critedge28.i76.us, label %bb.r

bb.r:                                             ; preds = %.critedge.i73.us
  %i.dr = zext i16 %i.dq to i64                   ; 2 uses
  %i.ds = icmp ugt i64 %i.cl, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw [2072 x i8], ptr %i.ch, i64 %i.dr ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !74
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.t, label %_ZNK14NodeDefManager3getERK7MapNode.exit33.i75.us

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit33.i75.us

_ZNK14NodeDefManager3getERK7MapNode.exit33.i75.us: ; preds = %bb.t, %bb.s
  %i.dy = phi ptr [ %i.dx, %bb.t ], [ %i.dt, %bb.s ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1534
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !169, !range !92, !noundef !93
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.u, label %.critedge28.i76.us

bb.u:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit33.i75.us
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 1449
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !151
  %.not50.i86.us = icmp eq i8 %i.ed, 0
  br i1 %.not50.i86.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us, label %.critedge28.i76.us

.critedge28.i76.us:                               ; preds = %bb.u, %_ZNK14NodeDefManager3getERK7MapNode.exit33.i75.us, %.critedge.i73.us
  %i.ee = mul i32 %.sroa.3.0.extract.trunc.i70.us, %.sroa.0.0.extract.trunc.i68.us ; 2 uses
  %i.ef = sub i32 %i.cc, %i.ee
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !113 ; 2 uses
  %.not25.i77.us = icmp eq i16 %i.ei, 127
  br i1 %.not25.i77.us, label %.critedge30.i79.us, label %bb.v

bb.v:                                             ; preds = %.critedge28.i76.us
  %i.ej = zext i16 %i.ei to i64                   ; 2 uses
  %i.ek = icmp ugt i64 %i.cl, %i.ej
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw [2072 x i8], ptr %i.ch, i64 %i.ej ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !74
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.x, label %_ZNK14NodeDefManager3getERK7MapNode.exit34.i78.us

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ch, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit34.i78.us

_ZNK14NodeDefManager3getERK7MapNode.exit34.i78.us: ; preds = %bb.x, %bb.w
  %i.eq = phi ptr [ %i.ep, %bb.x ], [ %i.el, %bb.w ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1534
  %i.es = load i8, ptr %i.er, align 2, !tbaa !169, !range !92, !noundef !93
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.y, label %.critedge30.i79.us

bb.y:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit34.i78.us
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1449
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !151
  %.not51.i85.us = icmp eq i8 %i.ev, 0
  br i1 %.not51.i85.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us, label %.critedge30.i79.us

.critedge30.i79.us:                               ; preds = %bb.y, %_ZNK14NodeDefManager3getERK7MapNode.exit34.i78.us, %.critedge28.i76.us
  %i.ew = add i32 %i.ee, %i.cc
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 4, !tbaa !113 ; 2 uses
  %.not26.i80.us = icmp eq i16 %i.ez, 127
  br i1 %.not26.i80.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.z

bb.z:                                             ; preds = %.critedge30.i79.us
  %i.fa = zext i16 %i.ez to i64                   ; 2 uses
  %i.fb = icmp ugt i64 %i.cl, %i.fa
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fc = getelementptr inbounds nuw [2072 x i8], ptr %i.ch, i64 %i.fa ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !74
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ab, label %_ZNK14NodeDefManager3getERK7MapNode.exit35.i81.us

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ch, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit35.i81.us

_ZNK14NodeDefManager3getERK7MapNode.exit35.i81.us: ; preds = %bb.ab, %bb.aa
  %i.fh = phi ptr [ %i.fg, %bb.ab ], [ %i.fc, %bb.aa ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1534
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !169, !range !92, !noundef !93
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ac, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us

bb.ac:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit35.i81.us
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 1449
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !151
  %.not52.i84.us = icmp eq i8 %i.fm, 0
  br i1 %.not52.i84.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us

_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us: ; preds = %bb.ac, %bb.y, %bb.u, %bb.q, %_ZNK14NodeDefManager3getERK7MapNode.exit.us
  %i.fn = add i16 %.061318.us, 1                  ; 7 uses
  %i.fo = load i64, ptr %i.k, align 8, !tbaa !170 ; 2 uses
  %.not.not.i97.us = icmp eq i64 %i.fo, 0
  br i1 %.not.not.i97.us, label %bb.ad, label %.thread.i100.us.thread512

.thread.i100.us.thread512:                        ; preds = %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us
  %i.fp = sext i16 %i.fn to i64                   ; 2 uses
  %i.fq = tail call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 16)
  %i.fr = xor i64 %7, %i.fq                       ; 5 uses
  %i.fs = load i64, ptr %i.m, align 8, !tbaa !172 ; 5 uses
  %i.ft = urem i64 %i.fr, %i.fs                   ; 5 uses
  %i.fu = load ptr, ptr %1, align 8, !tbaa !173
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i101.us = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i101.us, label %.critedge.i107.us, label %bb.af

bb.ad:                                            ; preds = %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us
  %.sroa.028.039.i114.us = load ptr, ptr %i.l, align 8, !tbaa !175 ; 2 uses
  %.not40.i115.us = icmp eq ptr %.sroa.028.039.i114.us, null
  br i1 %.not40.i115.us, label %.critedge.i107.us.sink.split, label %.lr.ph.i117.us

.lr.ph.i117.us:                                   ; preds = %bb.ad, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i119.us
  %.sroa.028.041.i118.us = phi ptr [ %.sroa.028.0.i120.us, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i119.us ], [ %.sroa.028.039.i114.us, %bb.ad ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i118.us, i64 8
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !63
  %i.fz = icmp eq i16 %.062335.us348, %i.fy
  br i1 %i.fz, label %bb.ae, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i119.us

bb.ae:                                            ; preds = %.lr.ph.i117.us
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i118.us, i64 10
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !64
  %i.gc = icmp eq i16 %i.fn, %i.gb
  br i1 %i.gc, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i122.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i119.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i122.us: ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i118.us, i64 12
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !65
  %i.gf = icmp eq i16 %.063347.us, %i.ge
  br i1 %i.gf, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i119.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i119.us: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i122.us, %bb.ae, %.lr.ph.i117.us
  %.sroa.028.0.i120.us = load ptr, ptr %.sroa.028.041.i118.us, align 8, !tbaa !175 ; 2 uses
  %.not.i121.us = icmp eq ptr %.sroa.028.0.i120.us, null
  br i1 %.not.i121.us, label %.critedge.i107.us.sink.split, label %.lr.ph.i117.us, !llvm.loop !176

bb.af:                                            ; preds = %.thread.i100.us.thread512
  %i.gg = load ptr, ptr %i.fw, align 8, !tbaa !175 ; 2 uses
  %.phi.trans.insert.i.i.i102.us = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %.pre.i.i.i103.us = load i64, ptr %.phi.trans.insert.i.i.i102.us, align 8, !tbaa !177
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %bb.af
  %i.gh = phi i64 [ %.pre.i.i.i103.us, %bb.af ], [ %i.gv, %bb.aj ]
  %i.gi = phi ptr [ %i.gg, %bb.af ], [ %i.gt, %bb.aj ] ; 4 uses
  %i.gj = icmp eq i64 %i.fr, %i.gh
  br i1 %i.gj, label %bb.ah, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !63
  %i.gm = icmp eq i16 %.062335.us348, %i.gl
  br i1 %i.gm, label %bb.ai, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us

bb.ai:                                            ; preds = %bb.ah
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 10
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !64
  %i.gp = icmp eq i16 %i.fn, %i.go
  br i1 %i.gp, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i113.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i113.us: ; preds = %bb.ai
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !65
  %i.gs = icmp eq i16 %.063347.us, %i.gr
  br i1 %i.gs, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i113.us, %bb.ai, %bb.ah, %bb.ag
  %i.gt = load ptr, ptr %i.gi, align 8, !tbaa !175 ; 3 uses
  %.not18.i.i.i105.us = icmp eq ptr %i.gt, null
  br i1 %.not18.i.i.i105.us, label %.critedge.i107.us, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !177 ; 2 uses
  %i.gw = urem i64 %i.gv, %i.fs
  %.not19.i.i.i106.us = icmp eq i64 %i.gw, %i.ft
  br i1 %.not19.i.i.i106.us, label %bb.ag, label %.critedge.i107.us, !llvm.loop !179

.critedge.i107.us.sink.split:                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i119.us, %bb.ad
  %i.gx = sext i16 %i.fn to i64                   ; 2 uses
  %i.gy = tail call i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 16)
  %i.gz = xor i64 %7, %i.gy                       ; 2 uses
  %i.ha = load i64, ptr %i.m, align 8, !tbaa !172 ; 2 uses
  %i.hb = urem i64 %i.gz, %i.ha
  br label %.critedge.i107.us

.critedge.i107.us:                                ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us, %bb.aj, %.critedge.i107.us.sink.split, %.thread.i100.us.thread512
  %i.hc = phi i64 [ %i.ft, %.thread.i100.us.thread512 ], [ %i.hb, %.critedge.i107.us.sink.split ], [ %i.ft, %bb.aj ], [ %i.ft, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us ]
  %i.hd = phi i64 [ %i.fs, %.thread.i100.us.thread512 ], [ %i.ha, %.critedge.i107.us.sink.split ], [ %i.fs, %bb.aj ], [ %i.fs, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us ]
  %i.he = phi i64 [ %i.fr, %.thread.i100.us.thread512 ], [ %i.gz, %.critedge.i107.us.sink.split ], [ %i.fr, %bb.aj ], [ %i.fr, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i104.us ] ; 2 uses
  %i.hf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 12 uses
  store ptr null, ptr %i.hf, align 8, !tbaa !175
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i16 %.062335.us348, ptr %i.hg, align 8, !tbaa !154
  %.sroa.8.0..sroa_idx166.us = getelementptr inbounds nuw i8, ptr %i.hf, i64 10
  store i16 %i.fn, ptr %.sroa.8.0..sroa_idx166.us, align 2, !tbaa !154
  %.sroa.11.0..sroa_idx171.us = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i16 %.063347.us, ptr %.sroa.11.0..sroa_idx171.us, align 4, !tbaa !154
  %i.hh = load i64, ptr %i.o, align 8, !tbaa !180
  %i.hi = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.hd, i64 noundef %i.fo, i64 noundef 1)
          to label %.noexc136.us unwind label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us ; 2 uses

.noexc136.us:                                     ; preds = %.critedge.i107.us
  %i.hj = extractvalue { i8, i64 } %i.hi, 0
  %i.hk = trunc i8 %i.hj to i1
  br i1 %i.hk, label %bb.ak, label %.noexc136.us._crit_edge

.noexc136.us._crit_edge:                          ; preds = %.noexc136.us
  %.pre = load ptr, ptr %1, align 8, !tbaa !173
  br label %bb.as

bb.ak:                                            ; preds = %.noexc136.us
  %i.hl = extractvalue { i8, i64 } %i.hi, 1       ; 7 uses
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.am, label %bb.al, !prof !181

bb.al:                                            ; preds = %bb.ak
  %i.hn = icmp ugt i64 %i.hl, 1152921504606846975
  br i1 %i.hn, label %.split.us, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i144.us, !prof !181

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i144.us: ; preds = %bb.al
  %i.ho = shl nuw nsw i64 %i.hl, 3                ; 2 uses
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #32
          to label %.noexc160.us unwind label %.loopexit214.split.us ; 2 uses

.noexc160.us:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i144.us
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hp, i8 0, i64 %i.ho, i1 false)
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i145.us

bb.am:                                            ; preds = %bb.ak
  store ptr null, ptr %i.p, align 8, !tbaa !182
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i145.us

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i145.us: ; preds = %bb.am, %.noexc160.us
  %.0.i.i146.us = phi ptr [ %i.p, %bb.am ], [ %i.hp, %.noexc160.us ] ; 4 uses
  %i.hq = load ptr, ptr %i.l, align 8, !tbaa !183 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !183
  %.not29.i147.us = icmp eq ptr %i.hq, null
  br i1 %.not29.i147.us, label %._crit_edge.i154.us, label %.lr.ph.i148.us

.lr.ph.i148.us:                                   ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i145.us, %bb.aq
  %.031.i149.us = phi i64 [ %.1.i152.us, %bb.aq ], [ 0, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i145.us ] ; 2 uses
  %.02530.i150.us = phi ptr [ %i.hr, %bb.aq ], [ %i.hq, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i145.us ] ; 8 uses
  %i.hr = load ptr, ptr %.02530.i150.us, align 8, !tbaa !175 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.02530.i150.us, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !177
  %i.hu = urem i64 %i.ht, %i.hl                   ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i146.us, i64 %i.hu ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !174 ; 2 uses
  %.not27.i151.us = icmp eq ptr %i.hw, null
  br i1 %.not27.i151.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i148.us
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !175
  store ptr %i.hx, ptr %.02530.i150.us, align 8, !tbaa !175
  %i.hy = load ptr, ptr %i.hv, align 8, !tbaa !174
  store ptr %.02530.i150.us, ptr %i.hy, align 8, !tbaa !175
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph.i148.us
  %i.hz = load ptr, ptr %i.l, align 8, !tbaa !183
  store ptr %i.hz, ptr %.02530.i150.us, align 8, !tbaa !175
  store ptr %.02530.i150.us, ptr %i.l, align 8, !tbaa !183
  store ptr %i.l, ptr %i.hv, align 8, !tbaa !174
  %i.ia = load ptr, ptr %.02530.i150.us, align 8, !tbaa !175
  %.not28.i155.us = icmp eq ptr %i.ia, null
  br i1 %.not28.i155.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i146.us, i64 %.031.i149.us
  store ptr %.02530.i150.us, ptr %i.ib, align 8, !tbaa !174
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.1.i152.us = phi i64 [ %.031.i149.us, %bb.an ], [ %i.hu, %bb.ap ], [ %i.hu, %bb.ao ]
  %.not.i153.us = icmp eq ptr %i.hr, null
  br i1 %.not.i153.us, label %._crit_edge.i154.us, label %.lr.ph.i148.us, !llvm.loop !184

._crit_edge.i154.us:                              ; preds = %bb.aq, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i145.us
  %i.ic = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.p
  br i1 %i.id, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i135.us, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i154.us
  %i.ie = load i64, ptr %i.m, align 8, !tbaa !172
  %i.if = shl i64 %i.ie, 3
  tail call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #31
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i135.us

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i135.us: ; preds = %bb.ar, %._crit_edge.i154.us
  store i64 %i.hl, ptr %i.m, align 8, !tbaa !172
  store ptr %.0.i.i146.us, ptr %1, align 8, !tbaa !173
  %i.ig = urem i64 %i.he, %i.hl
  br label %bb.as

bb.as:                                            ; preds = %.noexc136.us._crit_edge, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i135.us
  %i.ih = phi ptr [ %.0.i.i146.us, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i135.us ], [ %.pre, %.noexc136.us._crit_edge ] ; 2 uses
  %.0.i132.us = phi i64 [ %i.ig, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i135.us ], [ %i.hc, %.noexc136.us._crit_edge ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store i64 %i.he, ptr %i.ii, align 8, !tbaa !177
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.0.i132.us ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !174 ; 2 uses
  %.not.i.i133.us = icmp eq ptr %i.ik, null
  br i1 %.not.i.i133.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !175
  store ptr %i.il, ptr %i.hf, align 8, !tbaa !175
  %i.im = load ptr, ptr %i.ij, align 8, !tbaa !174
  store ptr %i.hf, ptr %i.im, align 8, !tbaa !175
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.in = load ptr, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  store ptr %i.in, ptr %i.hf, align 8, !tbaa !175
  store ptr %i.hf, ptr %i.l, align 8, !tbaa !183
  %.not11.i.i134.us = icmp eq ptr %i.in, null
  br i1 %.not11.i.i134.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.io = load i64, ptr %i.m, align 8, !tbaa !172
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !177
  %i.ir = urem i64 %i.iq, %i.io
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ir
  store ptr %i.hf, ptr %i.is, align 8, !tbaa !174
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  store ptr %i.l, ptr %i.ij, align 8, !tbaa !174
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %i.it = load i64, ptr %i.k, align 8, !tbaa !170
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %i.k, align 8, !tbaa !170
  %i.iv = load ptr, ptr %i.q, align 8, !tbaa !185 ; 6 uses
  %i.iw = load ptr, ptr %i.r, align 8, !tbaa !190
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -6
  %.not.i.i.i90.us = icmp eq ptr %i.iv, %i.ix
  br i1 %.not.i.i.i90.us, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i16 %.062335.us348, ptr %i.iv, align 2, !tbaa !154
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  store i16 %i.fn, ptr %.sroa.8.0..sroa_idx.us, align 2, !tbaa !154
  %.sroa.11.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i16 %.063347.us, ptr %.sroa.11.0..sroa_idx.us, align 2, !tbaa !154
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 6
  br label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split

bb.az:                                            ; preds = %bb.ax
  %i.iz = load ptr, ptr %i.u, align 8, !tbaa !191 ; 5 uses
  %i.ja = load ptr, ptr %i.v, align 8, !tbaa !191 ; 8 uses
  %i.jb = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64               ; 4 uses
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = ashr exact i64 %i.jd, 3                 ; 3 uses
  %i.jf = icmp ne ptr %i.iz, null
  %.neg.i.i.i95.us = sext i1 %i.jf to i64
  %i.jg = add nsw i64 %i.je, %.neg.i.i.i95.us
  %i.jh = mul nsw i64 %i.jg, 85
  %i.ji = load ptr, ptr %i.w, align 8, !tbaa !192
  %i.jj = ptrtoint ptr %i.iv to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = sdiv exact i64 %i.jl, 6
  %i.jn = add nsw i64 %i.jh, %i.jm
  %i.jo = load ptr, ptr %i.x, align 8, !tbaa !193
  %i.jp = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = sdiv exact i64 %i.js, 6
  %i.ju = add nsw i64 %i.jn, %i.jt
  %i.jv = icmp eq i64 %i.ju, 1537228672809129301
  br i1 %i.jv, label %.split362.us, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jw = load i64, ptr %i.y, align 8, !tbaa !195 ; 6 uses
  %i.jx = load ptr, ptr %i.s, align 8, !tbaa !196 ; 3 uses
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = sub i64 %i.jb, %i.jy
  %i.ka = ashr exact i64 %i.jz, 3
  %i.kb = sub i64 %i.jw, %i.ka
  %i.kc = icmp ult i64 %i.kb, 2
  br i1 %i.kc, label %bb.bb, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit96.us

bb.bb:                                            ; preds = %bb.ba
  %i.kd = add nsw i64 %i.je, 1                    ; 2 uses
  %i.ke = add nsw i64 %i.je, 2                    ; 3 uses
  %i.kf = shl nsw i64 %i.ke, 1
  %i.kg = icmp ugt i64 %i.jw, %i.kf
  br i1 %i.kg, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.speculated.i125.us = tail call i64 @llvm.umax.i64(i64 %i.jw, i64 1)
  %i.kh = add i64 %i.jw, 2
  %i.ki = add i64 %i.kh, %.sroa.speculated.i125.us ; 5 uses
  %i.kj = icmp ugt i64 %i.ki, 1152921504606846975
  br i1 %i.kj, label %.split364.us, label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i126.us, !prof !181

_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i126.us: ; preds = %bb.bc
  %i.kk = shl nuw nsw i64 %i.ki, 3
  %i.kl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #32 ; 2 uses
  %i.km = sub nsw i64 %i.ki, %i.ke
  %i.kn = lshr i64 %i.km, 1
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kn ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = sub i64 %i.kq, %i.jc                    ; 3 uses
  %i.ks = icmp sgt i64 %i.kr, 8
  br i1 %i.ks, label %bb.bf, label %bb.bd, !prof !197

bb.bd:                                            ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i126.us
  %i.kt = icmp eq i64 %i.kr, 8
  br i1 %i.kt, label %bb.be, label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i127.us

bb.be:                                            ; preds = %bb.bd
  %i.ku = load ptr, ptr %i.ja, align 8, !tbaa !198
  store ptr %i.ku, ptr %i.ko, align 8, !tbaa !198
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i127.us

bb.bf:                                            ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i126.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ko, ptr align 8 %i.ja, i64 %i.kr, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i127.us

_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i127.us: ; preds = %bb.bf, %bb.be, %bb.bd
  %i.kv = shl i64 %i.jw, 3
  tail call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kv) #31
  store ptr %i.kl, ptr %i.s, align 8, !tbaa !196
  store i64 %i.ki, ptr %i.y, align 8, !tbaa !195
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us

bb.bg:                                            ; preds = %bb.bb
  %i.kw = sub i64 %i.jw, %i.ke
  %i.kx = lshr i64 %i.kw, 1
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.kx ; 10 uses
  %i.kz = icmp ult ptr %i.ky, %i.ja
  %i.la = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  br i1 %i.kz, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kd ; 2 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lc, %i.jc                    ; 3 uses
  %i.le = ashr exact i64 %i.ld, 3                 ; 2 uses
  %i.lf = icmp sgt i64 %i.le, 1
  br i1 %i.lf, label %bb.bk, label %bb.bi, !prof !197

bb.bi:                                            ; preds = %bb.bh
  %i.lg = icmp eq i64 %i.ld, 8
  br i1 %i.lg, label %bb.bj, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us

bb.bj:                                            ; preds = %bb.bi
  %i.lh = getelementptr inbounds i8, ptr %i.lb, i64 -8
  %i.li = load ptr, ptr %i.ja, align 8, !tbaa !198
  store ptr %i.li, ptr %i.lh, align 8, !tbaa !198
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us

bb.bk:                                            ; preds = %bb.bh
  %i.lj = sub nsw i64 0, %i.le
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.lj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lk, ptr align 8 %i.ja, i64 %i.ld, i1 false)
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us

bb.bl:                                            ; preds = %bb.bg
  %i.ll = ptrtoint ptr %i.la to i64
  %i.lm = sub i64 %i.ll, %i.jc                    ; 3 uses
  %i.ln = icmp sgt i64 %i.lm, 8
  br i1 %i.ln, label %bb.bo, label %bb.bm, !prof !197

bb.bm:                                            ; preds = %bb.bl
  %i.lo = icmp eq i64 %i.lm, 8
  br i1 %i.lo, label %bb.bn, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us

bb.bn:                                            ; preds = %bb.bm
  %i.lp = load ptr, ptr %i.ja, align 8, !tbaa !198
  store ptr %i.lp, ptr %i.ky, align 8, !tbaa !198
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us

bb.bo:                                            ; preds = %bb.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ky, ptr nonnull align 8 %i.ja, i64 %i.lm, i1 false)
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us

_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i127.us
  %.0.i128.us = phi ptr [ %i.ko, %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i127.us ], [ %i.ky, %bb.bn ], [ %i.ky, %bb.bo ], [ %i.ky, %bb.bm ], [ %i.ky, %bb.bk ], [ %i.ky, %bb.bi ], [ %i.ky, %bb.bj ] ; 3 uses
  store ptr %.0.i128.us, ptr %i.v, align 8, !tbaa !191
  %i.lq = load ptr, ptr %.0.i128.us, align 8, !tbaa !198 ; 2 uses
  store ptr %i.lq, ptr %i.z, align 8, !tbaa !192
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 510
  store ptr %i.lr, ptr %i.x, align 8, !tbaa !193
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.0.i128.us, i64 %i.kd
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -8 ; 3 uses
  store ptr %i.lt, ptr %i.u, align 8, !tbaa !191
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !198 ; 2 uses
  store ptr %i.lu, ptr %i.w, align 8, !tbaa !192
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 510
  store ptr %i.lv, ptr %i.r, align 8, !tbaa !193
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit96.us

_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit96.us: ; preds = %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us, %bb.ba
  %i.lw = phi ptr [ %i.lt, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit131.us ], [ %i.iz, %bb.ba ]
  %i.lx = tail call noalias noundef nonnull dereferenceable(510) ptr @_Znwm(i64 noundef 510) #32 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 2 uses
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !198
  %i.lz = load ptr, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  store i16 %.062335.us348, ptr %i.lz, align 2, !tbaa !154
  %.sroa.8.0..sroa_idx164.us = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  store i16 %i.fn, ptr %.sroa.8.0..sroa_idx164.us, align 2, !tbaa !154
  %.sroa.11.0..sroa_idx169.us = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i16 %.063347.us, ptr %.sroa.11.0..sroa_idx169.us, align 2, !tbaa !154
  store ptr %i.ly, ptr %i.u, align 8, !tbaa !191
  store ptr %i.lx, ptr %i.w, align 8, !tbaa !192
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 510
  store ptr %i.ma, ptr %i.r, align 8, !tbaa !193
  br label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split

bb.bp:                                            ; preds = %bb.g
  %.sroa.06.0.copyload.us = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.us = trunc i64 %.sroa.06.0.copyload.us to i32
  %.sroa.3.0.extract.shift.i.us = lshr i64 %.sroa.06.0.copyload.us, 32
  %.sroa.3.0.extract.trunc.i.us = trunc nuw i64 %.sroa.3.0.extract.shift.i.us to i32
  %i.mb = add i32 %.0197317.us, -1
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 4, !tbaa !113 ; 2 uses
  %.not.i.us = icmp eq i16 %i.me, 127
  br i1 %.not.i.us, label %.critedge.i.us, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mf = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.mg = zext i16 %i.me to i64                   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !109
  %i.mj = load ptr, ptr %i.mf, align 8, !tbaa !112 ; 3 uses
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = sdiv exact i64 %i.mm, 2072
  %i.mo = icmp ugt i64 %i.mn, %i.mg
  br i1 %i.mo, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mp = getelementptr inbounds nuw [2072 x i8], ptr %i.mj, i64 %i.mg ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !74
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.bs, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i.us

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mj, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i.us

_ZNK14NodeDefManager3getERK7MapNode.exit.i.us:    ; preds = %bb.bs, %bb.br
  %i.mu = phi ptr [ %i.mt, %bb.bs ], [ %i.mp, %bb.br ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 1534
  %i.mw = load i8, ptr %i.mv, align 2, !tbaa !169, !range !92, !noundef !93
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.bt, label %.critedge.i.us

bb.bt:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i.us
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 1449
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !151
  %.not49.i.us = icmp eq i8 %i.mz, 0
  br i1 %.not49.i.us, label %bb.cg, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.bt, %_ZNK14NodeDefManager3getERK7MapNode.exit.i.us, %bb.bp
  %i.na = add i32 %.0197317.us, 1
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 4, !tbaa !113 ; 2 uses
  %.not24.i.us = icmp eq i16 %i.nd, 127
  br i1 %.not24.i.us, label %.critedge28.i.us, label %bb.bu

bb.bu:                                            ; preds = %.critedge.i.us
  %i.ne = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.nf = zext i16 %i.nd to i64                   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !109
  %i.ni = load ptr, ptr %i.ne, align 8, !tbaa !112 ; 3 uses
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = sdiv exact i64 %i.nl, 2072
  %i.nn = icmp ugt i64 %i.nm, %i.nf
  br i1 %i.nn, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.no = getelementptr inbounds nuw [2072 x i8], ptr %i.ni, i64 %i.nf ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !74
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.bw, label %_ZNK14NodeDefManager3getERK7MapNode.exit33.i.us

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit33.i.us

_ZNK14NodeDefManager3getERK7MapNode.exit33.i.us:  ; preds = %bb.bw, %bb.bv
  %i.nt = phi ptr [ %i.ns, %bb.bw ], [ %i.no, %bb.bv ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 1534
  %i.nv = load i8, ptr %i.nu, align 2, !tbaa !169, !range !92, !noundef !93
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %bb.bx, label %.critedge28.i.us

bb.bx:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit33.i.us
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 1449
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !151
  %.not50.i.us = icmp eq i8 %i.ny, 0
  br i1 %.not50.i.us, label %bb.cg, label %.critedge28.i.us

.critedge28.i.us:                                 ; preds = %bb.bx, %_ZNK14NodeDefManager3getERK7MapNode.exit33.i.us, %.critedge.i.us
  %i.nz = mul i32 %.sroa.3.0.extract.trunc.i.us, %.sroa.0.0.extract.trunc.i.us ; 2 uses
  %i.oa = sub i32 %.0197317.us, %i.nz
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 4, !tbaa !113 ; 2 uses
  %.not25.i.us = icmp eq i16 %i.od, 127
  br i1 %.not25.i.us, label %.critedge30.i.us, label %bb.by

bb.by:                                            ; preds = %.critedge28.i.us
  %i.oe = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.of = zext i16 %i.od to i64                   ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !109
  %i.oi = load ptr, ptr %i.oe, align 8, !tbaa !112 ; 3 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = sdiv exact i64 %i.ol, 2072
  %i.on = icmp ugt i64 %i.om, %i.of
  br i1 %i.on, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.oo = getelementptr inbounds nuw [2072 x i8], ptr %i.oi, i64 %i.of ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !74
  %i.or = icmp eq i64 %i.oq, 0
  br i1 %i.or, label %bb.ca, label %_ZNK14NodeDefManager3getERK7MapNode.exit34.i.us

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit34.i.us

_ZNK14NodeDefManager3getERK7MapNode.exit34.i.us:  ; preds = %bb.ca, %bb.bz
  %i.ot = phi ptr [ %i.os, %bb.ca ], [ %i.oo, %bb.bz ] ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1534
  %i.ov = load i8, ptr %i.ou, align 2, !tbaa !169, !range !92, !noundef !93
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.cb, label %.critedge30.i.us

bb.cb:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit34.i.us
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 1449
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !151
  %.not51.i.us = icmp eq i8 %i.oy, 0
  br i1 %.not51.i.us, label %bb.cg, label %.critedge30.i.us

.critedge30.i.us:                                 ; preds = %bb.cb, %_ZNK14NodeDefManager3getERK7MapNode.exit34.i.us, %.critedge28.i.us
  %i.oz = add i32 %i.nz, %.0197317.us
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.pa
  %i.pc = load i16, ptr %i.pb, align 4, !tbaa !113 ; 2 uses
  %.not26.i.us = icmp eq i16 %i.pc, 127
  br i1 %.not26.i.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.cc

bb.cc:                                            ; preds = %.critedge30.i.us
  %i.pd = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.pe = zext i16 %i.pc to i64                   ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !109
  %i.ph = load ptr, ptr %i.pd, align 8, !tbaa !112 ; 3 uses
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = sdiv exact i64 %i.pk, 2072
  %i.pm = icmp ugt i64 %i.pl, %i.pe
  br i1 %i.pm, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.pn = getelementptr inbounds nuw [2072 x i8], ptr %i.ph, i64 %i.pe ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !74
  %i.pq = icmp eq i64 %i.pp, 0
  br i1 %i.pq, label %bb.ce, label %_ZNK14NodeDefManager3getERK7MapNode.exit35.i.us

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit35.i.us

_ZNK14NodeDefManager3getERK7MapNode.exit35.i.us:  ; preds = %bb.ce, %bb.cd
  %i.ps = phi ptr [ %i.pr, %bb.ce ], [ %i.pn, %bb.cd ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 1534
  %i.pu = load i8, ptr %i.pt, align 2, !tbaa !169, !range !92, !noundef !93
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %bb.cf, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us

bb.cf:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit35.i.us
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 1449
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !151
  %.not52.i.us = icmp eq i8 %i.px, 0
  br i1 %.not52.i.us, label %bb.cg, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us

bb.cg:                                            ; preds = %bb.cf, %bb.cb, %bb.bx, %bb.bt
  %i.py = load i64, ptr %i.k, align 8, !tbaa !170 ; 2 uses
  %.not.not.i.us = icmp eq i64 %i.py, 0
  br i1 %.not.not.i.us, label %bb.ch, label %.thread.i.us.thread513

.thread.i.us.thread513:                           ; preds = %bb.cg
  %i.pz = sext i16 %.061318.us to i64             ; 2 uses
  %i.qa = tail call i64 @llvm.fshl.i64(i64 %i.pz, i64 %i.pz, i64 16)
  %i.qb = xor i64 %7, %i.qa                       ; 5 uses
  %i.qc = load i64, ptr %i.m, align 8, !tbaa !172 ; 5 uses
  %i.qd = urem i64 %i.qb, %i.qc                   ; 5 uses
  %i.qe = load ptr, ptr %1, align 8, !tbaa !173
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qd
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i92.us = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i92.us, label %.critedge.i93.us, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %.sroa.028.039.i.us = load ptr, ptr %i.l, align 8, !tbaa !175 ; 2 uses
  %.not40.i.us = icmp eq ptr %.sroa.028.039.i.us, null
  br i1 %.not40.i.us, label %.critedge.i93.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.ch, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.us
  %.sroa.028.041.i.us = phi ptr [ %.sroa.028.0.i.us, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.us ], [ %.sroa.028.039.i.us, %bb.ch ] ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i.us, i64 8
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !63
  %i.qj = icmp eq i16 %.062335.us348, %i.qi
  br i1 %i.qj, label %bb.ci, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.us

bb.ci:                                            ; preds = %.lr.ph.i.us
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i.us, i64 10
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !64
  %i.qm = icmp eq i16 %.061318.us, %i.ql
  br i1 %i.qm, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.us: ; preds = %bb.ci
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i.us, i64 12
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !65
  %i.qp = icmp eq i16 %.063347.us, %i.qo
  br i1 %i.qp, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.us: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.us, %bb.ci, %.lr.ph.i.us
  %.sroa.028.0.i.us = load ptr, ptr %.sroa.028.041.i.us, align 8, !tbaa !175 ; 2 uses
  %.not.i94.us = icmp eq ptr %.sroa.028.0.i.us, null
  br i1 %.not.i94.us, label %.critedge.i93.us.sink.split, label %.lr.ph.i.us, !llvm.loop !176

bb.cj:                                            ; preds = %.thread.i.us.thread513
  %i.qq = load ptr, ptr %i.qg, align 8, !tbaa !175 ; 2 uses
  %.phi.trans.insert.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %.pre.i.i.i.us = load i64, ptr %.phi.trans.insert.i.i.i.us, align 8, !tbaa !177
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %bb.cj
  %i.qr = phi i64 [ %.pre.i.i.i.us, %bb.cj ], [ %i.rf, %bb.cn ]
  %i.qs = phi ptr [ %i.qq, %bb.cj ], [ %i.rd, %bb.cn ] ; 4 uses
  %i.qt = icmp eq i64 %i.qb, %i.qr
  br i1 %i.qt, label %bb.cl, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us

bb.cl:                                            ; preds = %bb.ck
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !63
  %i.qw = icmp eq i16 %.062335.us348, %i.qv
  br i1 %i.qw, label %bb.cm, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us

bb.cm:                                            ; preds = %bb.cl
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 10
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !64
  %i.qz = icmp eq i16 %.061318.us, %i.qy
  br i1 %i.qz, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.us: ; preds = %bb.cm
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qs, i64 12
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !65
  %i.rc = icmp eq i16 %.063347.us, %i.rb
  br i1 %i.rc, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.us, %bb.cm, %bb.cl, %bb.ck
  %i.rd = load ptr, ptr %i.qs, align 8, !tbaa !175 ; 3 uses
  %.not18.i.i.i.us = icmp eq ptr %i.rd, null
  br i1 %.not18.i.i.i.us, label %.critedge.i93.us, label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !177 ; 2 uses
  %i.rg = urem i64 %i.rf, %i.qc
  %.not19.i.i.i.us = icmp eq i64 %i.rg, %i.qd
  br i1 %.not19.i.i.i.us, label %bb.ck, label %.critedge.i93.us, !llvm.loop !179

.critedge.i93.us.sink.split:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.us, %bb.ch
  %i.rh = sext i16 %.061318.us to i64             ; 2 uses
  %i.ri = tail call i64 @llvm.fshl.i64(i64 %i.rh, i64 %i.rh, i64 16)
  %i.rj = xor i64 %7, %i.ri                       ; 2 uses
  %i.rk = load i64, ptr %i.m, align 8, !tbaa !172 ; 2 uses
  %i.rl = urem i64 %i.rj, %i.rk
  br label %.critedge.i93.us

.critedge.i93.us:                                 ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us, %bb.cn, %.critedge.i93.us.sink.split, %.thread.i.us.thread513
  %i.rm = phi i64 [ %i.qd, %.thread.i.us.thread513 ], [ %i.rl, %.critedge.i93.us.sink.split ], [ %i.qd, %bb.cn ], [ %i.qd, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us ]
  %i.rn = phi i64 [ %i.qc, %.thread.i.us.thread513 ], [ %i.rk, %.critedge.i93.us.sink.split ], [ %i.qc, %bb.cn ], [ %i.qc, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us ]
  %i.ro = phi i64 [ %i.qb, %.thread.i.us.thread513 ], [ %i.rj, %.critedge.i93.us.sink.split ], [ %i.qb, %bb.cn ], [ %i.qb, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i.us ] ; 2 uses
  %i.rp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 12 uses
  store ptr null, ptr %i.rp, align 8, !tbaa !175
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i16 %.062335.us348, ptr %i.rq, align 8, !tbaa !154
  %.sroa.8178.0..sroa_idx181.us = getelementptr inbounds nuw i8, ptr %i.rp, i64 10
  store i16 %.061318.us, ptr %.sroa.8178.0..sroa_idx181.us, align 2, !tbaa !154
  %.sroa.11184.0..sroa_idx187.us = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  store i16 %.063347.us, ptr %.sroa.11184.0..sroa_idx187.us, align 4, !tbaa !154
  %i.rr = load i64, ptr %i.o, align 8, !tbaa !180
  %i.rs = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.rn, i64 noundef %i.py, i64 noundef 1)
          to label %.noexc.us unwind label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us ; 2 uses

.noexc.us:                                        ; preds = %.critedge.i93.us
  %i.rt = extractvalue { i8, i64 } %i.rs, 0
  %i.ru = trunc i8 %i.rt to i1
  br i1 %i.ru, label %bb.co, label %.noexc.us._crit_edge

.noexc.us._crit_edge:                             ; preds = %.noexc.us
  %.pre442 = load ptr, ptr %1, align 8, !tbaa !173
  br label %bb.cw

bb.co:                                            ; preds = %.noexc.us
  %i.rv = extractvalue { i8, i64 } %i.rs, 1       ; 7 uses
  %i.rw = icmp eq i64 %i.rv, 1
  br i1 %i.rw, label %bb.cq, label %bb.cp, !prof !181

bb.cp:                                            ; preds = %bb.co
  %i.rx = icmp ugt i64 %i.rv, 1152921504606846975
  br i1 %i.rx, label %.split369.us, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.us, !prof !181

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.us: ; preds = %bb.cp
  %i.ry = shl nuw nsw i64 %i.rv, 3                ; 2 uses
  %i.rz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #32
          to label %.noexc143.us unwind label %.loopexit215.split.us ; 2 uses

.noexc143.us:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.us
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rz, i8 0, i64 %i.ry, i1 false)
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.us

bb.cq:                                            ; preds = %bb.co
  store ptr null, ptr %i.p, align 8, !tbaa !182
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.us

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.us: ; preds = %bb.cq, %.noexc143.us
  %.0.i.i.us = phi ptr [ %i.p, %bb.cq ], [ %i.rz, %.noexc143.us ] ; 4 uses
  %i.sa = load ptr, ptr %i.l, align 8, !tbaa !183 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !183
  %.not29.i.us = icmp eq ptr %i.sa, null
  br i1 %.not29.i.us, label %._crit_edge.i.us, label %.lr.ph.i139.us

.lr.ph.i139.us:                                   ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.us, %bb.cu
  %.031.i.us = phi i64 [ %.1.i.us, %bb.cu ], [ 0, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.us ] ; 2 uses
  %.02530.i.us = phi ptr [ %i.sb, %bb.cu ], [ %i.sa, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.us ] ; 8 uses
  %i.sb = load ptr, ptr %.02530.i.us, align 8, !tbaa !175 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.02530.i.us, i64 16
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !177
  %i.se = urem i64 %i.sd, %i.rv                   ; 3 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.us, i64 %i.se ; 3 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !174 ; 2 uses
  %.not27.i.us = icmp eq ptr %i.sg, null
  br i1 %.not27.i.us, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i139.us
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !175
  store ptr %i.sh, ptr %.02530.i.us, align 8, !tbaa !175
  %i.si = load ptr, ptr %i.sf, align 8, !tbaa !174
  store ptr %.02530.i.us, ptr %i.si, align 8, !tbaa !175
  br label %bb.cu

bb.cs:                                            ; preds = %.lr.ph.i139.us
  %i.sj = load ptr, ptr %i.l, align 8, !tbaa !183
  store ptr %i.sj, ptr %.02530.i.us, align 8, !tbaa !175
  store ptr %.02530.i.us, ptr %i.l, align 8, !tbaa !183
  store ptr %i.l, ptr %i.sf, align 8, !tbaa !174
  %i.sk = load ptr, ptr %.02530.i.us, align 8, !tbaa !175
  %.not28.i.us = icmp eq ptr %i.sk, null
  br i1 %.not28.i.us, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.us, i64 %.031.i.us
  store ptr %.02530.i.us, ptr %i.sl, align 8, !tbaa !174
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %.1.i.us = phi i64 [ %.031.i.us, %bb.cr ], [ %i.se, %bb.ct ], [ %i.se, %bb.cs ]
  %.not.i140.us = icmp eq ptr %i.sb, null
  br i1 %.not.i140.us, label %._crit_edge.i.us, label %.lr.ph.i139.us, !llvm.loop !184

._crit_edge.i.us:                                 ; preds = %bb.cu, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.us
  %i.sm = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.p
  br i1 %i.sn, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.us, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge.i.us
  %i.so = load i64, ptr %i.m, align 8, !tbaa !172
  %i.sp = shl i64 %i.so, 3
  tail call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #31
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.us

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.us: ; preds = %bb.cv, %._crit_edge.i.us
  store i64 %i.rv, ptr %i.m, align 8, !tbaa !172
  store ptr %.0.i.i.us, ptr %1, align 8, !tbaa !173
  %i.sq = urem i64 %i.ro, %i.rv
  br label %bb.cw

bb.cw:                                            ; preds = %.noexc.us._crit_edge, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.us
  %i.sr = phi ptr [ %.0.i.i.us, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.us ], [ %.pre442, %.noexc.us._crit_edge ] ; 2 uses
  %.0.i124.us = phi i64 [ %i.sq, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit.i.us ], [ %i.rm, %.noexc.us._crit_edge ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store i64 %i.ro, ptr %i.ss, align 8, !tbaa !177
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.0.i124.us ; 3 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.su, null
  br i1 %.not.i.i.us, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !175
  store ptr %i.sv, ptr %i.rp, align 8, !tbaa !175
  %i.sw = load ptr, ptr %i.st, align 8, !tbaa !174
  store ptr %i.rp, ptr %i.sw, align 8, !tbaa !175
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.sx = load ptr, ptr %i.l, align 8, !tbaa !183 ; 3 uses
  store ptr %i.sx, ptr %i.rp, align 8, !tbaa !175
  store ptr %i.rp, ptr %i.l, align 8, !tbaa !183
  %.not11.i.i.us = icmp eq ptr %i.sx, null
  br i1 %.not11.i.i.us, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.sy = load i64, ptr %i.m, align 8, !tbaa !172
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !177
  %i.tb = urem i64 %i.ta, %i.sy
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.tb
  store ptr %i.rp, ptr %i.tc, align 8, !tbaa !174
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store ptr %i.l, ptr %i.st, align 8, !tbaa !174
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cx
  %i.td = load i64, ptr %i.k, align 8, !tbaa !170
  %i.te = add i64 %i.td, 1
  store i64 %i.te, ptr %i.k, align 8, !tbaa !170
  %i.tf = load ptr, ptr %i.q, align 8, !tbaa !185 ; 6 uses
  %i.tg = load ptr, ptr %i.r, align 8, !tbaa !190
  %i.th = getelementptr inbounds i8, ptr %i.tg, i64 -6
  %.not.i.i.i.us = icmp eq ptr %i.tf, %i.th
  br i1 %.not.i.i.i.us, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i16 %.062335.us348, ptr %i.tf, align 2, !tbaa !154
  %.sroa.8178.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.tf, i64 2
  store i16 %.061318.us, ptr %.sroa.8178.0..sroa_idx.us, align 2, !tbaa !154
  %.sroa.11184.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  store i16 %.063347.us, ptr %.sroa.11184.0..sroa_idx.us, align 2, !tbaa !154
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 6
  br label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split

bb.dd:                                            ; preds = %bb.db
  %i.tj = load ptr, ptr %i.u, align 8, !tbaa !191 ; 5 uses
  %i.tk = load ptr, ptr %i.v, align 8, !tbaa !191 ; 8 uses
  %i.tl = ptrtoint ptr %i.tj to i64               ; 2 uses
  %i.tm = ptrtoint ptr %i.tk to i64               ; 4 uses
  %i.tn = sub i64 %i.tl, %i.tm
  %i.to = ashr exact i64 %i.tn, 3                 ; 3 uses
  %i.tp = icmp ne ptr %i.tj, null
  %.neg.i.i.i.us = sext i1 %i.tp to i64
  %i.tq = add nsw i64 %i.to, %.neg.i.i.i.us
  %i.tr = mul nsw i64 %i.tq, 85
  %i.ts = load ptr, ptr %i.w, align 8, !tbaa !192
  %i.tt = ptrtoint ptr %i.tf to i64
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = sub i64 %i.tt, %i.tu
  %i.tw = sdiv exact i64 %i.tv, 6
  %i.tx = add nsw i64 %i.tr, %i.tw
  %i.ty = load ptr, ptr %i.x, align 8, !tbaa !193
  %i.tz = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.ua = ptrtoint ptr %i.ty to i64
  %i.ub = ptrtoint ptr %i.tz to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = sdiv exact i64 %i.uc, 6
  %i.ue = add nsw i64 %i.tx, %i.ud
  %i.uf = icmp eq i64 %i.ue, 1537228672809129301
  br i1 %i.uf, label %.split377.us, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ug = load i64, ptr %i.y, align 8, !tbaa !195 ; 6 uses
  %i.uh = load ptr, ptr %i.s, align 8, !tbaa !196 ; 3 uses
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = sub i64 %i.tl, %i.ui
  %i.uk = ashr exact i64 %i.uj, 3
  %i.ul = sub i64 %i.ug, %i.uk
  %i.um = icmp ult i64 %i.ul, 2
  br i1 %i.um, label %bb.df, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit.us

bb.df:                                            ; preds = %bb.de
  %i.un = add nsw i64 %i.to, 1                    ; 2 uses
  %i.uo = add nsw i64 %i.to, 2                    ; 3 uses
  %i.up = shl nsw i64 %i.uo, 1
  %i.uq = icmp ugt i64 %i.ug, %i.up
  br i1 %i.uq, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.sroa.speculated.i.us = tail call i64 @llvm.umax.i64(i64 %i.ug, i64 1)
  %i.ur = add i64 %i.ug, 2
  %i.us = add i64 %i.ur, %.sroa.speculated.i.us   ; 5 uses
  %i.ut = icmp ugt i64 %i.us, 1152921504606846975
  br i1 %i.ut, label %.split379.us, label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i.us, !prof !181

_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i.us: ; preds = %bb.dg
  %i.uu = shl nuw nsw i64 %i.us, 3
  %i.uv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #32 ; 2 uses
  %i.uw = sub nsw i64 %i.us, %i.uo
  %i.ux = lshr i64 %i.uw, 1
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.ux ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.va = ptrtoint ptr %i.uz to i64
  %i.vb = sub i64 %i.va, %i.tm                    ; 3 uses
  %i.vc = icmp sgt i64 %i.vb, 8
  br i1 %i.vc, label %bb.dj, label %bb.dh, !prof !197

bb.dh:                                            ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i.us
  %i.vd = icmp eq i64 %i.vb, 8
  br i1 %i.vd, label %bb.di, label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i.us

bb.di:                                            ; preds = %bb.dh
  %i.ve = load ptr, ptr %i.tk, align 8, !tbaa !198
  store ptr %i.ve, ptr %i.uy, align 8, !tbaa !198
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i.us

bb.dj:                                            ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE15_M_allocate_mapEm.exit.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uy, ptr align 8 %i.tk, i64 %i.vb, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i.us

_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i.us: ; preds = %bb.dj, %bb.di, %bb.dh
  %i.vf = shl i64 %i.ug, 3
  tail call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.vf) #31
  store ptr %i.uv, ptr %i.s, align 8, !tbaa !196
  store i64 %i.us, ptr %i.y, align 8, !tbaa !195
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us

bb.dk:                                            ; preds = %bb.df
  %i.vg = sub i64 %i.ug, %i.uo
  %i.vh = lshr i64 %i.vg, 1
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.vh ; 10 uses
  %i.vj = icmp ult ptr %i.vi, %i.tk
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 2 uses
  br i1 %i.vj, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.un ; 2 uses
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vm, %i.tm                    ; 3 uses
  %i.vo = ashr exact i64 %i.vn, 3                 ; 2 uses
  %i.vp = icmp sgt i64 %i.vo, 1
  br i1 %i.vp, label %bb.do, label %bb.dm, !prof !197

bb.dm:                                            ; preds = %bb.dl
  %i.vq = icmp eq i64 %i.vn, 8
  br i1 %i.vq, label %bb.dn, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us

bb.dn:                                            ; preds = %bb.dm
  %i.vr = getelementptr inbounds i8, ptr %i.vl, i64 -8
  %i.vs = load ptr, ptr %i.tk, align 8, !tbaa !198
  store ptr %i.vs, ptr %i.vr, align 8, !tbaa !198
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us

bb.do:                                            ; preds = %bb.dl
  %i.vt = sub nsw i64 0, %i.vo
  %i.vu = getelementptr inbounds [8 x i8], ptr %i.vl, i64 %i.vt
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vu, ptr align 8 %i.tk, i64 %i.vn, i1 false)
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us

bb.dp:                                            ; preds = %bb.dk
  %i.vv = ptrtoint ptr %i.vk to i64
  %i.vw = sub i64 %i.vv, %i.tm                    ; 3 uses
  %i.vx = icmp sgt i64 %i.vw, 8
  br i1 %i.vx, label %bb.ds, label %bb.dq, !prof !197

bb.dq:                                            ; preds = %bb.dp
  %i.vy = icmp eq i64 %i.vw, 8
  br i1 %i.vy, label %bb.dr, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us

bb.dr:                                            ; preds = %bb.dq
  %i.vz = load ptr, ptr %i.tk, align 8, !tbaa !198
  store ptr %i.vz, ptr %i.vi, align 8, !tbaa !198
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us

bb.ds:                                            ; preds = %bb.dp
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.vi, ptr nonnull align 8 %i.tk, i64 %i.vw, i1 false)
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us

_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us: ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.do, %bb.dn, %bb.dm, %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i.us
  %.0.i.us = phi ptr [ %i.uy, %_ZSt4copyIPPN4core8vector3dIsEES4_ET0_T_S6_S5_.exit24.i.us ], [ %i.vi, %bb.dr ], [ %i.vi, %bb.ds ], [ %i.vi, %bb.dq ], [ %i.vi, %bb.do ], [ %i.vi, %bb.dm ], [ %i.vi, %bb.dn ] ; 3 uses
  store ptr %.0.i.us, ptr %i.v, align 8, !tbaa !191
  %i.wa = load ptr, ptr %.0.i.us, align 8, !tbaa !198 ; 2 uses
  store ptr %i.wa, ptr %i.z, align 8, !tbaa !192
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 510
  store ptr %i.wb, ptr %i.x, align 8, !tbaa !193
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %i.un
  %i.wd = getelementptr inbounds i8, ptr %i.wc, i64 -8 ; 3 uses
  store ptr %i.wd, ptr %i.u, align 8, !tbaa !191
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !198 ; 2 uses
  store ptr %i.we, ptr %i.w, align 8, !tbaa !192
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 510
  store ptr %i.wf, ptr %i.r, align 8, !tbaa !193
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit.us

_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit.us: ; preds = %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us, %bb.de
  %i.wg = phi ptr [ %i.wd, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE17_M_reallocate_mapEmb.exit.us ], [ %i.tj, %bb.de ]
  %i.wh = tail call noalias noundef nonnull dereferenceable(510) ptr @_Znwm(i64 noundef 510) #32 ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 8 ; 2 uses
  store ptr %i.wh, ptr %i.wi, align 8, !tbaa !198
  %i.wj = load ptr, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  store i16 %.062335.us348, ptr %i.wj, align 2, !tbaa !154
  %.sroa.8178.0..sroa_idx179.us = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  store i16 %.061318.us, ptr %.sroa.8178.0..sroa_idx179.us, align 2, !tbaa !154
  %.sroa.11184.0..sroa_idx185.us = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  store i16 %.063347.us, ptr %.sroa.11184.0..sroa_idx185.us, align 2, !tbaa !154
  store ptr %i.wi, ptr %i.u, align 8, !tbaa !191
  store ptr %i.wh, ptr %i.w, align 8, !tbaa !192
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 510
  store ptr %i.wk, ptr %i.r, align 8, !tbaa !193
  br label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split

_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split: ; preds = %bb.ay, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit96.us, %bb.dc, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit.us
  %.sink = phi ptr [ %i.wh, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit.us ], [ %i.ti, %bb.dc ], [ %i.lx, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit96.us ], [ %i.iy, %bb.ay ]
  %.154.us.ph = phi i1 [ true, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit.us ], [ true, %bb.dc ], [ %.053322.us, %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit96.us ], [ %.053322.us, %bb.ay ]
  store ptr %.sink, ptr %i.q, align 8, !tbaa !185
  br label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us

_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i113.us, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i122.us, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.us, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split, %bb.cf, %_ZNK14NodeDefManager3getERK7MapNode.exit35.i.us, %.critedge30.i.us, %bb.ac, %_ZNK14NodeDefManager3getERK7MapNode.exit35.i81.us, %.critedge30.i79.us, %bb.l, %bb.h, %bb.f
  %.156.us = phi i1 [ false, %bb.f ], [ true, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.us ], [ false, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i122.us ], [ false, %_ZNK14NodeDefManager3getERK7MapNode.exit35.i.us ], [ true, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.us ], [ false, %_ZNK14NodeDefManager3getERK7MapNode.exit35.i81.us ], [ true, %bb.h ], [ false, %.critedge30.i79.us ], [ false, %bb.l ], [ false, %bb.ac ], [ %i.ca, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split ], [ false, %bb.cf ], [ false, %.critedge30.i.us ], [ false, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i113.us ]
  %.154.us = phi i1 [ false, %bb.f ], [ true, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.us ], [ %.053322.us, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i122.us ], [ true, %_ZNK14NodeDefManager3getERK7MapNode.exit35.i.us ], [ true, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i.us ], [ false, %_ZNK14NodeDefManager3getERK7MapNode.exit35.i81.us ], [ %.053322.us, %bb.h ], [ false, %.critedge30.i79.us ], [ true, %bb.l ], [ false, %bb.ac ], [ %.154.us.ph, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us.sink.split ], [ true, %bb.cf ], [ true, %.critedge30.i.us ], [ %.053322.us, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i113.us ]
  %i.wl = zext nneg i8 %.350.us to i32
  %i.wm = load i32, ptr %i.c, align 4, !tbaa !167
  %i.wn = sub i32 %.0197317.us, %i.wm
  %i.wo = add i16 %.061318.us, -1                 ; 2 uses
  %.not.us = icmp slt i16 %i.wo, %.sroa.246.0.extract.trunc
  br i1 %.not.us, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !199

..loopexit_crit_edge.us:                          ; preds = %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us
  %.062.us349 = add nsw i16 %.062335.us348, 1     ; 2 uses
  %exitcond.not = icmp eq i16 %.062.us349, %.sroa.042.0.extract.trunc
  br i1 %exitcond.not, label %..loopexit220_crit_edge.split.us351, label %.lr.ph.us, !llvm.loop !200

..loopexit220_crit_edge.split.us351:              ; preds = %..loopexit_crit_edge.us
  %.063.us = add i16 %.063347.us, 1               ; 2 uses
  %i.wp = sext i16 %.063.us to i32                ; 2 uses
  %.not.not.us = icmp sgt i32 %i.g, %i.wp
  br i1 %.not.not.us, label %.preheader.us, label %._crit_edge, !llvm.loop !201

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us: ; preds = %.critedge.i107.us
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.loopexit214.split.us:                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i144.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dx

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us: ; preds = %.critedge.i93.us
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.loopexit215.split.us:                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.us
  %lpad.loopexit217.us = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dt

._crit_edge:                                      ; preds = %..loopexit220_crit_edge.split.us351, %.preheader.lr.ph, %bb.a
  ret void

.split369.us:                                     ; preds = %bb.cp
  %i.ws = icmp ugt i64 %i.rv, 2305843009213693951
  br i1 %i.ws, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %.split369.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc141 unwind label %.loopexit.split-lp216

.noexc141:                                        ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %.split369.us
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc142 unwind label %.loopexit.split-lp216

.noexc142:                                        ; preds = %.noexc7.i.i.i
  unreachable

.loopexit.split-lp216:                            ; preds = %.noexc.i.i.i, %.noexc7.i.i.i
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dt

bb.dt:                                            ; preds = %.loopexit.split-lp216, %.loopexit215.split.us
  %lpad.phi219 = phi { ptr, i32 } [ %lpad.loopexit217.us, %.loopexit215.split.us ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp216 ]
  %i.wt = extractvalue { ptr, i32 } %lpad.phi219, 0
  %i.wu = tail call ptr @__cxa_begin_catch(ptr %i.wt) #30 ; 0 uses
  store i64 %i.rr, ptr %i.o, align 8, !tbaa !180
  invoke void @__cxa_rethrow() #33
          to label %bb.dw unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.wv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  tail call void @__clang_call_terminate(ptr %i.wx) #34
  unreachable

bb.dw:                                            ; preds = %bb.dt
  unreachable

common.resume:                                    ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us, %bb.dy, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us, %bb.du
  %.sink575 = phi ptr [ %i.rp, %bb.du ], [ %i.rp, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us ], [ %i.hf, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us ], [ %i.hf, %bb.dy ]
  %common.resume.op = phi { ptr, i32 } [ %i.wv, %bb.du ], [ %i.wr, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us ], [ %i.wq, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us ], [ %i.xc, %bb.dy ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink575, i64 noundef 24) #31
  resume { ptr, i32 } %common.resume.op

.split377.us:                                     ; preds = %bb.dd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
  unreachable

.split379.us:                                     ; preds = %bb.dg
  %i.wy = icmp ugt i64 %i.us, 2305843009213693951
  br i1 %i.wy, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split379.us
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc3.i.i:                                      ; preds = %.split379.us
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

.split.us:                                        ; preds = %bb.al
  %i.wz = icmp ugt i64 %i.hl, 2305843009213693951
  br i1 %i.wz, label %.noexc.i.i.i157, label %.noexc7.i.i.i156

.noexc.i.i.i157:                                  ; preds = %.split.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc158 unwind label %.loopexit.split-lp

.noexc158:                                        ; preds = %.noexc.i.i.i157
  unreachable

.noexc7.i.i.i156:                                 ; preds = %.split.us
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc159 unwind label %.loopexit.split-lp

.noexc159:                                        ; preds = %.noexc7.i.i.i156
  unreachable

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i157, %.noexc7.i.i.i156
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.split-lp, %.loopexit214.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit214.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.xa = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.xb = tail call ptr @__cxa_begin_catch(ptr %i.xa) #30 ; 0 uses
  store i64 %i.hh, ptr %i.o, align 8, !tbaa !180
  invoke void @__cxa_rethrow() #33
          to label %bb.ea unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.xd = landingpad { ptr, i32 }
          catch ptr null
  %i.xe = extractvalue { ptr, i32 } %i.xd, 0
  tail call void @__clang_call_terminate(ptr %i.xe) #34
  unreachable

bb.ea:                                            ; preds = %bb.dx
  unreachable

.split362.us:                                     ; preds = %bb.az
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
  unreachable

.split364.us:                                     ; preds = %bb.bc
  %i.xf = icmp ugt i64 %i.ki, 2305843009213693951
  br i1 %i.xf, label %.noexc.i.i130, label %.noexc3.i.i129

.noexc.i.i130:                                    ; preds = %.split364.us
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc3.i.i129:                                   ; preds = %.split364.us
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11setLightingEhN4core8vector3dIsEES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i8 noundef zeroext %1, i48 %2, i48 %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %class.ScopeProfiler, align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.sroa.036.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.237.0.extract.shift = lshr i48 %2, 16
  %.sroa.237.0.extract.trunc = trunc i48 %.sroa.237.0.extract.shift to i16 ; 3 uses
  %.sroa.035.0.extract.trunc = trunc i48 %3 to i16 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i48 %3, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 29, ptr %i.a, align 8, !tbaa !97
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !96
  %i.e = load i64, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.d, ptr noundef nonnull align 1 dereferenceable(29) @.str.16, i64 29, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !74
  %i.g = load ptr, ptr %5, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %4, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.i = load ptr, ptr %5, align 8, !tbaa !96     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
end_hunk_0
