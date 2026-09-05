Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen?download=true
inline.NumInlined: 1329
inline.NumDeleted: 628
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Mapgen11getSurfacesEN4core8vector2dIsEEssRSt6vectorIsSaIsEES6_:bb.a
  %or.cond = or i1 %i.cd, %.not
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !295 ; 4 uses
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !296
  %.not.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i16 %storemerge37, ptr %i.ce, align 2, !tbaa !146
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !295
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %4, align 8, !tbaa !297   ; 4 uses
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 5 uses
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
  store i16 %storemerge37, ptr %i.ct, align 2, !tbaa !146
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
  %i.cw = load ptr, ptr %i.ba, align 8, !tbaa !296
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cy) #31
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  store ptr %i.cs, ptr %4, align 8, !tbaa !297
  store ptr %i.cv, ptr %i.az, align 8, !tbaa !295
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.cz, ptr %i.ba, align 8, !tbaa !296
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.m:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %or.cond4 = and i1 %i.cd, %.not
  br i1 %or.cond4, label %bb.n, label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.n:                                             ; preds = %bb.m
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !295 ; 4 uses
  %i.db = load ptr, ptr %i.bc, align 8, !tbaa !296
  %.not.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i16 %storemerge.in35, ptr %i.da, align 2, !tbaa !146
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store ptr %i.dc, ptr %i.bb, align 8, !tbaa !295
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.p:                                             ; preds = %bb.n
  %i.dd = load ptr, ptr %5, align 8, !tbaa !297   ; 4 uses
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 5 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775806
  br i1 %i.dh, label %bb.q, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #33
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.di = ashr exact i64 %i.dg, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 4611686018427387903)
  %i.dm = select i1 %i.dk, i64 4611686018427387903, i64 %i.dl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dn = shl nuw nsw i64 %i.dm, 1
  %i.do = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #32 ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dg ; 2 uses
  store i16 %storemerge.in35, ptr %i.dp, align 2, !tbaa !146
  %i.dq = icmp sgt i64 %i.dg, 0
  br i1 %i.dq, label %bb.r, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.do, ptr align 2 %i.dd, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i
  %i.ds = load ptr, ptr %i.bc, align 8, !tbaa !296
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.du) #31
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i.i
  store ptr %i.do, ptr %5, align 8, !tbaa !297
  store ptr %i.dr, ptr %i.bb, align 8, !tbaa !295
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dv, ptr %i.bc, align 8, !tbaa !296
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

_ZNSt6vectorIsSaIsEE9push_backERKs.exit:          ; preds = %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i.i, %bb.o, %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, %bb.h, %bb.m
  %i.dw = load i32, ptr %i.d, align 4, !tbaa !147
  %i.dx = sub i32 %.03134, %i.dw
  %storemerge = add i16 %storemerge37, -1         ; 2 uses
  %.not16 = icmp slt i16 %storemerge, %2
  br i1 %.not16, label %._crit_edge, label %bb.d, !llvm.loop !293
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
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
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not316 = icmp slt i16 %.sroa.243.0.extract.trunc, %.sroa.246.0.extract.trunc
  %or.cond = or i1 %.not.not66331, %.not316
  br i1 %or.cond, label %._crit_edge, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.aa = sext i16 %.062330 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit220_crit_edge.split.us351
  %i.ab = phi i32 [ %i.xl, %..loopexit220_crit_edge.split.us351 ], [ %i.h, %.preheader.us.preheader ]
  %.063347.us = phi i16 [ %.063.us, %..loopexit220_crit_edge.split.us351 ], [ %.063342, %.preheader.us.preheader ] ; 12 uses
  %.0346.us = phi i1 [ %.3.us, %..loopexit220_crit_edge.split.us351 ], [ true, %.preheader.us.preheader ]
  %.047345.us = phi i8 [ %.350.us, %..loopexit220_crit_edge.split.us351 ], [ 0, %.preheader.us.preheader ]
  %.057344.us = phi i16 [ %i.bm, %..loopexit220_crit_edge.split.us351 ], [ 127, %.preheader.us.preheader ]
  %i.ac = sext i16 %.063347.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us, %..loopexit_crit_edge.us
  %indvars.iv = phi i64 [ %i.aa, %.preheader.us ], [ %indvars.iv.next, %..loopexit_crit_edge.us ] ; 10 uses
  %.1334.us = phi i1 [ %.0346.us, %.preheader.us ], [ %.3.us, %..loopexit_crit_edge.us ]
  %.148333.us = phi i8 [ %.047345.us, %.preheader.us ], [ %.350.us, %..loopexit_crit_edge.us ]
  %.158332.us = phi i16 [ %.057344.us, %.preheader.us ], [ %i.bm, %..loopexit_crit_edge.us ]
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !92  ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !97
  %i.ah = sext i16 %i.ag to i32
  %i.ai = sub nsw i32 %i.ab, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98
  %i.am = mul nsw i32 %i.ai, %i.al
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !95
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !99
  %i.aq = sext i16 %i.ap to i32
  %i.ar = add i32 %i.am, %i.i
  %i.as = sub i32 %i.ar, %i.aq
  %i.at = mul i32 %i.as, %i.an
  %i.au = trunc nsw i64 %indvars.iv to i32
  %i.av = load i16, ptr %i.ae, align 4, !tbaa !96
  %i.aw = sext i16 %i.av to i32
  %i.ax = sub nsw i32 %i.au, %i.aw
  %i.ay = add nsw i32 %i.ax, %i.at
  %i.az = tail call i64 @llvm.fshl.i64(i64 %indvars.iv, i64 %indvars.iv, i64 40)
  %i.ba = xor i64 %i.az, %i.ac                    ; 4 uses
  %i.bb = trunc nsw i64 %indvars.iv to i16
  %i.bc = trunc nsw i64 %indvars.iv to i16
  %i.bd = trunc nsw i64 %indvars.iv to i16        ; 3 uses
  %i.be = trunc nsw i64 %indvars.iv to i16
  %i.bf = trunc nsw i64 %indvars.iv to i16
  %i.bg = trunc nsw i64 %indvars.iv to i16        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, %.lr.ph.us
  %.2327.us = phi i1 [ %.1334.us, %.lr.ph.us ], [ %.3.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.249326.us = phi i8 [ %.148333.us, %.lr.ph.us ], [ %.350.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.051325.us = phi i1 [ true, %.lr.ph.us ], [ %.3.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.052324.us = phi i32 [ 0, %.lr.ph.us ], [ %i.xh, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.053322.us = phi i1 [ false, %.lr.ph.us ], [ %.154.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ] ; 6 uses
  %.055320.us = phi i1 [ false, %.lr.ph.us ], [ %.156.us, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.259319.us = phi i16 [ %.158332.us, %.lr.ph.us ], [ %i.bm, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ]
  %.061318.us = phi i16 [ %.sroa.243.0.extract.trunc, %.lr.ph.us ], [ %i.xk, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ] ; 9 uses
  %.0197317.us = phi i32 [ %i.ay, %.lr.ph.us ], [ %i.xj, %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us ] ; 7 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !102 ; 9 uses
  %i.bk = zext i32 %.0197317.us to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !108 ; 7 uses
  %.not67.us = icmp eq i16 %i.bm, %.259319.us
  br i1 %.not67.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bn = icmp eq i16 %i.bm, 127
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !72  ; 2 uses
  %i.bp = zext i16 %i.bm to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !105
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !106 ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 2072
  %i.bx = icmp ugt i64 %i.bw, %i.bp
  br i1 %i.bx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw [2072 x i8], ptr %i.bs, i64 %i.bp ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !79
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.e, label %_ZNK14NodeDefManager3getEt.exit.us

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit.us

_ZNK14NodeDefManager3getEt.exit.us:               ; preds = %bb.e, %bb.d
  %i.cd = phi ptr [ %i.cc, %bb.e ], [ %i.by, %bb.d ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1449
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !144
  %i.cg = icmp ne i8 %i.cf, 0
  %i.ch = zext i1 %i.cg to i8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit.us, %bb.b
  %.350.us = phi i8 [ %i.ch, %_ZNK14NodeDefManager3getEt.exit.us ], [ %.249326.us, %bb.b ] ; 6 uses
  %.3.us = phi i1 [ %i.bn, %_ZNK14NodeDefManager3getEt.exit.us ], [ %.2327.us, %bb.b ] ; 5 uses
  %or.cond.us = or i1 %.051325.us, %.3.us
  %i.ci = zext nneg i8 %.350.us to i32
  %i.cj = icmp eq i32 %.052324.us, %i.ci
  %or.cond574 = select i1 %or.cond.us, i1 true, i1 %i.cj
  br i1 %or.cond574, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = trunc nuw i8 %.350.us to i1             ; 2 uses
  br i1 %i.ck, label %bb.bp, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = load i32, ptr %i.c, align 4, !tbaa !147
  %i.cm = add i32 %i.cl, %.0197317.us             ; 4 uses
  br i1 %.055320.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !72  ; 2 uses
  %i.co = zext i16 %i.bm to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !105
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !106 ; 11 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 2072              ; 5 uses
  %i.cw = icmp ugt i64 %i.cv, %i.co
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw [2072 x i8], ptr %i.cr, i64 %i.co ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !79
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.k, label %_ZNK14NodeDefManager3getERK7MapNode.exit.us

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.us

_ZNK14NodeDefManager3getERK7MapNode.exit.us:      ; preds = %bb.k, %bb.j
  %i.dc = phi ptr [ %i.db, %bb.k ], [ %i.cx, %bb.j ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1534
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !304, !range !86, !noundef !87
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us, label %bb.l

bb.l:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.us
  br i1 %.053322.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.02.0.copyload.us = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i68.us = trunc i64 %.sroa.02.0.copyload.us to i32
  %.sroa.3.0.extract.shift.i69.us = lshr i64 %.sroa.02.0.copyload.us, 32
  %.sroa.3.0.extract.trunc.i70.us = trunc nuw i64 %.sroa.3.0.extract.shift.i69.us to i32
  %i.dg = add i32 %i.cm, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !108 ; 2 uses
  %.not.i71.us = icmp eq i16 %i.dj, 127
  br i1 %.not.i71.us, label %.critedge.i73.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = zext i16 %i.dj to i64                   ; 2 uses
  %i.dl = icmp ugt i64 %i.cv, %i.dk
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw [2072 x i8], ptr %i.cr, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !79
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.p, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us

_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us:  ; preds = %bb.p, %bb.o
  %i.dr = phi ptr [ %i.dq, %bb.p ], [ %i.dm, %bb.o ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1534
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !304, !range !86, !noundef !87
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.q, label %.critedge.i73.us

bb.q:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 1449
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !144
  %.not49.i87.us = icmp eq i8 %i.dw, 0
  br i1 %.not49.i87.us, label %_ZN6Mapgen28isLiquidHorizontallyFlowableEjN4core8vector3dIiEE.exit88.thread.us, label %.critedge.i73.us

.critedge.i73.us:                                 ; preds = %bb.q, %_ZNK14NodeDefManager3getERK7MapNode.exit.i72.us, %bb.m
  %i.dx = add i32 %i.cm, 1
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !108 ; 2 uses
  %.not24.i74.us = icmp eq i16 %i.ea, 127
  br i1 %.not24.i74.us, label %.critedge28.i76.us, label %bb.r

bb.r:                                             ; preds = %.critedge.i73.us
  %i.eb = zext i16 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ugt i64 %i.cv, %i.eb
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw [2072 x i8], ptr %i.cr, i64 %i.eb ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !79
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.t, label %_ZNK14NodeDefManager3getERK7MapNode.exit33.i75.us

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cr, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit33.i75.us
end_hunk_0
