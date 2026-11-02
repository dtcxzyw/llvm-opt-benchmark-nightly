Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_tables?download=true
inline.NumInlined: 682
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5ImGui21TableAngledHeadersRowEv:bb.a
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

bb.i:                                             ; preds = %_ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !219
  %i.ak = sext i16 %i.af to i64
  %i.al = getelementptr [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ah, %bb.h ], [ %i.am, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 526
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !387 ; 2 uses
  %i.ap = sext i16 %i.ao to i32
  %i.aq = icmp eq i16 %i.ao, -1
  br i1 %i.aq, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 522
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !285 ; 2 uses
  %.not = icmp eq i16 %i.as, -1
  br i1 %.not, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !352
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !284
  %i.ay = icmp eq i16 %i.ax, -1
  br i1 %i.ay, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !357 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = icmp eq i32 %i.ba, %i.ad
  %or.cond = or i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 582
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !249, !range !174, !noundef !175
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8616
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !389, !range !174, !noundef !175
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bj = sext i16 %i.as to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.o, %bb.p, %bb.j, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %.038 = phi i32 [ %i.bj, %bb.p ], [ -1, %bb.o ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ], [ %i.ap, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit ]
  %i.bk = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 45, float noundef 1.000000e+00) #4
  %i.bl = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) #4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !214 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  br label %bb.r

._crit_edge:                                      ; preds = %bb.aa, %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 3316
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !626
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !627
  %i.bw = load i32, ptr %i.f, align 8, !tbaa !628
  tail call void @_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai(i32 noundef %i.ad, float noundef %i.bt, float noundef 0.000000e+00, ptr noundef %i.bv, i32 noundef %i.bw)
  ret void

bb.r:                                             ; preds = %.lr.ph, %bb.aa
  %i.bx = phi i32 [ %i.bn, %.lr.ph ], [ %i.dq, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 4 uses
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !268
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ca = lshr i64 %indvars.iv, 5
  %i.cb = and i64 %i.ca, 134217727
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !286
  %i.ce = and i32 %i.bz, 31
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = and i32 %i.cd, %i.cf
  %.not41 = icmp eq i32 %i.cg, 0
  br i1 %.not41, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.bq, align 8, !tbaa !264
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !287 ; 3 uses
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !262
  %i.cl = sext i16 %i.cj to i64
  %i.cm = getelementptr inbounds [116 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !313
  %i.co = and i32 %i.cn, 262144
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = sext i16 %i.cj to i32
  %i.cr = icmp eq i32 %.038, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 24, float noundef 1.000000e+00) #4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ct = phi i32 [ %i.cs, %bb.u ], [ 0, %bb.t ]
  %i.cu = load i32, ptr %i.f, align 8, !tbaa !625 ; 6 uses
  %i.cv = load i32, ptr %i.g, align 4, !tbaa !624
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.w, label %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i: ; preds = %bb.v
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !187
  br label %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit

bb.w:                                             ; preds = %bb.v
  %i.cx = add nsw i32 %i.cu, 1
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = sdiv i32 %i.cu, 2
  %i.cz = add nsw i32 %i.cy, %i.cu
  br label %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i: ; preds = %bb.x, %bb.w
  %i.da = phi i32 [ %i.cz, %bb.x ], [ 8, %bb.w ]
  %i.db = tail call noundef i32 @llvm.smax.i32(i32 %i.da, i32 %i.cx) ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 4
  %i.de = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.dd) #4 ; 3 uses
  %i.df = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !187 ; 2 uses
  %.not6.i.i42 = icmp eq ptr %i.df, null
  br i1 %.not6.i.i42, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i
  %i.dg = load i32, ptr %i.f, align 8, !tbaa !625
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.de, ptr nonnull align 4 %i.df, i64 %i.di, i1 false)
  %i.dj = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !187
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dj) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i
  store ptr %i.de, ptr %.phi.trans.insert.i, align 8, !tbaa !187
  store i32 %i.db, ptr %i.g, align 4, !tbaa !624
  %.pre3.i = load i32, ptr %i.f, align 8, !tbaa !625
  br label %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit

_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i, %bb.z
  %i.dk = phi i32 [ %i.cu, %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.z ]
  %i.dl = phi ptr [ %.pre.i, %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i ], [ %i.de, %bb.z ]
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.dl, i64 %i.dm ; 4 uses
  store i16 %i.cj, ptr %i.dn, align 4
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.bl, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %i.bk, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 %i.ct, ptr %.sroa.6.0..sroa_idx, align 4
  %i.do = load i32, ptr %i.f, align 8, !tbaa !625
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.f, align 8, !tbaa !625
  %.pre = load i32, ptr %i.bm, align 4, !tbaa !214
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit, %bb.s, %bb.r
  %i.dq = phi i32 [ %.pre, %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit ], [ %i.bx, %bb.s ], [ %i.bx, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %bb.r, label %._crit_edge, !llvm.loop !623
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai(i32 noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %sincos.sin236 = alloca float, align 4          ; 2 uses
  %sincos.cos237 = alloca float, align 4          ; 2 uses
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  %5 = alloca %struct.ImRect, align 16            ; 8 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %9 = alloca [4 x %struct.ImVec2], align 16      ; 12 uses
  %10 = alloca %struct.ImVec2, align 8            ; 6 uses
  %11 = alloca %struct.ImRect, align 8            ; 5 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254  ; 31 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !392  ; 8 uses
  %i.h = icmp eq ptr %i.c, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.4) #4 ; 0 uses
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp oeq float %2, 0.000000e+00
  br i1 %i.j, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !214  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 567
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.lr.ph.i
  %i.s = phi i32 [ %i.l, %.lr.ph.i ], [ %i.at, %bb.k ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 5 uses
  %.01315.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 4 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !269
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.v = lshr i64 %indvars.iv.i, 5
  %i.w = and i64 %i.v, 134217727
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !286
  %i.z = and i32 %i.u, 31
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.y, %i.aa
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !262
  %i.ad = getelementptr inbounds nuw [116 x i8], ptr %i.ac, i64 %indvars.iv.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !313
  %i.af = and i32 %i.ae, 262144
  %.not14.i = icmp eq i32 %i.af, 0
  br i1 %.not14.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.p, align 1, !tbaa !215, !range !174, !noundef !175
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i16, ptr %i.q, align 2, !tbaa !248
  %i.aj = sext i16 %i.ai to i64
  %.not.i.i = icmp slt i64 %indvars.iv.i, %i.aj
  br i1 %.not.i.i, label %bb.i, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !335 ; 2 uses
  %i.am = icmp eq i16 %i.al, -1
  br i1 %i.am, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !301
  %i.ao = sext i16 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.1.i.i = phi ptr [ @.str.6, %bb.h ], [ %i.ap, %bb.j ], [ @.str.6, %bb.i ]
  %i.aq = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i.i, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) #4
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.ar = fcmp oge float %.01315.i, %.sroa.0.0.vec.extract.i
  %i.as = select i1 %i.ar, float %.01315.i, float %.sroa.0.0.vec.extract.i
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !214
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, %bb.f, %bb.e
  %i.at = phi i32 [ %.pre.i, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %i.s, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.1.i = phi float [ %i.as, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %.01315.i, %bb.f ], [ %.01315.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %bb.e, label %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, !llvm.loop !4

_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit: ; preds = %bb.k, %bb.d
  %.013.lcssa.i = phi float [ 0.000000e+00, %bb.d ], [ %.1.i, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 3248
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !383
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float 2.000000e+00, float %.013.lcssa.i)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, %bb.c
  %.0169 = phi float [ %i.ay, %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit ], [ %2, %bb.c ] ; 2 uses
  %i.az = fcmp olt float %1, 0.000000e+00         ; 7 uses
  %i.ba = fadd float %1, f0xBFC90FDB              ; 2 uses
  call void @sincosf(float %i.ba, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4     ; 7 uses
  %cos = load float, ptr %sincos.cos, align 4     ; 6 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = fadd float %i.ba, f0x40490FDB
  call void @sincosf(float %i.bb, ptr nonnull %sincos.sin236, ptr nonnull %sincos.cos237)
  %sin238 = load float, ptr %sincos.sin236, align 4
  %cos239 = load float, ptr %sincos.cos237, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bc = phi float [ %cos239, %bb.m ], [ %cos, %bb.l ]
  %i.bd = phi float [ %sin238, %bb.m ], [ %sin, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4400 ; 3 uses
  %i.bf = load float, ptr %i.be, align 8, !tbaa !297
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 3244 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !234
  %14 = call float @llvm.fmuladd.f32(float %i.bh, float 2.000000e+00, float %i.bf) ; 2 uses
  %i.bi = fneg float %14
  %i.bj = select i1 %i.az, float %14, float %i.bi
  %i.bk = fneg float %sin                         ; 3 uses
  %i.bl = fmul float %cos, %i.bj
  %15 = call float @llvm.fmuladd.f32(float %.0169, float %sin, float %i.bl)
  %16 = call float @llvm.fabs.f32(float %15)
  %i.bm = fptosi float %16 to i32
  %i.bn = uitofp nneg i32 %i.bm to float          ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store float %i.bn, ptr %i.bo, align 8, !tbaa !250
  %i.bp = fcmp une float %sin, 0.000000e+00
  %i.bq = fdiv float %cos, %sin
  %i.br = select i1 %i.bp, float %i.bq, float 0.000000e+00
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store float %i.br, ptr %i.bs, align 4, !tbaa !360
  %i.bt = fdiv float %i.bn, %i.bk
  %i.bu = insertelement <2 x float> poison, float %cos, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %sin, i64 1
  %i.bw = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8816
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !254 ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 567
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !215, !range !174, !noundef !175
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.cb)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 568
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !405, !range !174, !noundef !175
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.q, label %_ZN5ImGui12TableNextRowEif.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.cb)
  br label %_ZN5ImGui12TableNextRowEif.exit

_ZN5ImGui12TableNextRowEif.exit:                  ; preds = %bb.p, %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 148 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = shl i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ci, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 3248
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !383
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 136 ; 2 uses
  store float %i.cn, ptr %i.co, align 8, !tbaa !415
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 132
  store float %i.bn, ptr %i.cp, align 4, !tbaa !435
  call void @_ZN5ImGui13TableBeginRowEP10ImGuiTable(ptr noundef nonnull %i.cb)
  %i.cq = load float, ptr %i.co, align 8, !tbaa !415
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 128 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !244
  %17 = call float @llvm.fmuladd.f32(float %i.cq, float 2.000000e+00, float %i.cs) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 124
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !245
  %i.cv = fadd float %i.cu, %i.bn                 ; 2 uses
  %i.cw = fcmp oge float %17, %i.cv
  %i.cx = select i1 %i.cw, float %17, float %i.cv
  store float %i.cx, ptr %i.cr, align 8, !tbaa !244
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 392
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !212
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 209
  store i8 1, ptr %i.da, align 1, !tbaa !173
  %18 = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.dc = load float, ptr %i.db, align 8, !tbaa !375
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 308 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !426 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !370
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.dj = load float, ptr %i.di, align 8, !tbaa !244 ; 2 uses
  store float %i.dc, ptr %5, align 16, !tbaa !221
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.df, ptr %i.dk, align 4, !tbaa !222
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.dh, ptr %i.dl, align 8, !tbaa !221
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store float %i.dj, ptr %i.dm, align 4, !tbaa !222
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !205
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef %i.g, i32 noundef 0) #4
  %i.dp = load float, ptr %i.dd, align 8, !tbaa !632 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 556 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 4, !tbaa !361 ; 2 uses
  %i.ds = icmp sgt i16 %i.dr, 0
  br i1 %i.ds, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui12TableNextRowEif.exit
  %i.dt = zext nneg i16 %i.dr to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !262
  %i.dw = getelementptr [116 x i8], ptr %i.dv, i64 %i.dt
  %i.dx = getelementptr i8, ptr %i.dw, i64 -104
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !365 ; 2 uses
  %i.dz = fcmp oge float %i.dp, %i.dy
  %i.ea = select i1 %i.dz, float %i.dp, float %i.dy
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui12TableNextRowEif.exit
  %.0173 = phi float [ %i.ea, %bb.r ], [ %i.dp, %_ZN5ImGui12TableNextRowEif.exit ]
  %i.eb = load ptr, ptr @GImGui, align 8, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8816
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !254 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 124
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !245
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 300
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !243
  %i.ei = fcmp ogt float %i.ef, %i.eh
  br i1 %i.ei, label %_ZN5ImGui15TableSetBgColorEiji.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 156
  store i32 0, ptr %i.ej, align 4, !tbaa !286
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

_ZN5ImGui15TableSetBgColorEiji.exit:              ; preds = %bb.s, %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 3 uses
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.dd, ptr noundef nonnull align 4 dereferenceable(8) %i.ek, i1 noundef zeroext false) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.el = load float, ptr %i.dd, align 8, !tbaa !632
  store float %i.el, ptr %6, align 4, !tbaa !221
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.df, ptr %i.em, align 4, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.en = load float, ptr %i.ek, align 8, !tbaa !633
  store float %i.en, ptr %7, align 4, !tbaa !221
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.dj, ptr %i.eo, align 4, !tbaa !222
  %19 = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 45, float noundef 2.500000e-01) #4
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %19, float noundef 0.000000e+00, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.ep = load float, ptr %i.de, align 4, !tbaa !426
  store float %.0173, ptr %8, align 4, !tbaa !221
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ep, ptr %i.eq, align 4, !tbaa !222
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.ek, i1 noundef zeroext true) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  %i.er = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0) #4 ; 0 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %0) #4
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 4392
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !634
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 68
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !635
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 4408
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !636
  %i.ey = fmul float %i.ev, %i.ex
  %i.ez = load float, ptr %i.be, align 8, !tbaa !297
  %i.fa = fsub float %i.ez, %i.ey
  %i.fb = fmul float %i.fa, 5.000000e-01          ; 2 uses
  %i.fc = fcmp oge float %i.fb, 0.000000e+00
  %i.fd = select i1 %i.fc, float %i.fb, float 0.000000e+00
  %i.fe = fdiv float %i.fd, %i.bk
  %i.ff = select i1 %i.az, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.fg = fmul float %i.ff, %i.fe
  %.sroa.066.0.copyload = load float, ptr %i.bg, align 4, !tbaa !176 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3248
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !176 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %.sroa.065.0.copyload = load float, ptr %i.fh, align 8, !tbaa !176
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3324
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !176
  %i.fi = icmp sgt i32 %4, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa_idx202 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa_idx199 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 567
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.fq = fneg float %.sroa.066.0.copyload
  %i.fr = fsub float %.0169, %.sroa.5.0.copyload  ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 608 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 612
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.fx = fmul float %cos, %.sroa.066.0.copyload
  %i.fy = call float @llvm.fabs.f32(float %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.gb = insertelement <2 x float> poison, float %sin, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %cos, i64 1 ; 2 uses
  %i.gd = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.gc, %i.ge           ; 2 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 0
  %i.gh = call float @llvm.fabs.f32(float %i.gg)
  %i.gi = fneg float %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 530
  %i.gl = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  br i1 %i.fi, label %.preheader.us.preheader, label %.split.us

.preheader.us.preheader:                          ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.gq = extractelement <2 x float> %i.by, i64 0
  %i.gr = insertelement <2 x float> poison, float %i.fr, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.gs = phi i1 [ false, %._crit_edge.us ], [ true, %.preheader.us.preheader ] ; 2 uses
  %i.gt = phi i1 [ true, %._crit_edge.us ], [ false, %.preheader.us.preheader ]
  %.0172224.us = phi float [ %.2.us238, %._crit_edge.us ], [ f0xFF7FFFFF, %.preheader.us.preheader ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader.us, %.loopexit.us.thread
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %.loopexit.us.thread ] ; 3 uses
  %.1220.us = phi float [ %.0172224.us, %.preheader.us ], [ %.2.us238, %.loopexit.us.thread ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 4 uses
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !638 ; 4 uses
  %i.gw = load ptr, ptr %i.fj, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false), !tbaa !176
  %i.gx = sext i16 %i.gv to i64                   ; 2 uses
  %i.gy = getelementptr inbounds [116 x i8], ptr %i.gw, i64 %i.gx ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !365 ; 2 uses
  %i.hb = load i32, ptr %i.dm, align 4, !tbaa !421 ; 3 uses
  store i32 %i.ha, ptr %9, align 16, !tbaa !176
  store i32 %i.hb, ptr %.sroa_idx202, align 4, !tbaa !176
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !366 ; 2 uses
  store i32 %i.hd, ptr %i.fk, align 8, !tbaa !176
  store i32 %i.hb, ptr %.sroa_idx199, align 4, !tbaa !176
  %i.he = insertelement <2 x i32> poison, i32 %i.hd, i64 0
  %i.hf = insertelement <2 x i32> %i.he, i32 %i.hb, i64 1
  %i.hg = bitcast <2 x i32> %i.hf to <2 x float>
  %i.hh = fadd <2 x float> %i.by, %i.hg           ; 2 uses
  store <2 x float> %i.hh, ptr %i.fl, align 16, !tbaa !176
  %i.hi = bitcast i32 %i.ha to float
  %i.hj = fadd float %i.gq, %i.hi
  %i.hk = insertelement <2 x float> %i.hh, float %i.hj, i64 0
  store <2 x float> %i.hk, ptr %i.fm, align 8, !tbaa !176
  br i1 %i.gs, label %bb.v, label %.loopexit.us

bb.v:                                             ; preds = %bb.u
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !639
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fk, ptr noundef nonnull align 4 dereferenceable(8) %i.fl, ptr noundef nonnull align 4 dereferenceable(8) %i.fm, i32 noundef %i.hm) #4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !640
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fk, ptr noundef nonnull align 4 dereferenceable(8) %i.fl, ptr noundef nonnull align 4 dereferenceable(8) %i.fm, i32 noundef %i.ho) #4
  %i.hp = load float, ptr %i.fm, align 8, !tbaa !221 ; 2 uses
  %i.hq = fcmp oge float %.1220.us, %i.hp
  %i.hr = select i1 %i.hq, float %.1220.us, float %i.hp ; 2 uses
  %i.hs = load i8, ptr %i.fn, align 1, !tbaa !215, !range !174, !noundef !175
  %i.ht = icmp eq i8 %i.hs, 0
  br i1 %i.ht, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hu = load i16, ptr %i.fo, align 2, !tbaa !248
  %.not.i188.us = icmp slt i16 %i.gv, %i.hu
  br i1 %.not.i188.us, label %bb.x, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hv = load ptr, ptr %i.fj, align 8, !tbaa !262
  %i.hw = getelementptr inbounds [116 x i8], ptr %i.hv, i64 %i.gx
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 84
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !335 ; 2 uses
  %i.hz = icmp eq i16 %i.hy, -1
  br i1 %i.hz, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ia = load ptr, ptr %i.fp, align 8, !tbaa !301
  %i.ib = sext i16 %i.hy to i64
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 %i.ib
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us: ; preds = %bb.y, %bb.x, %bb.w
  %.1.i187.us = phi ptr [ @.str.6, %bb.w ], [ %i.ic, %bb.y ], [ @.str.6, %bb.x ] ; 4 uses
  %i.id = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %.1.i187.us, ptr noundef null) #4 ; 4 uses
  %i.ie = load float, ptr %i.be, align 8, !tbaa !297
  %i.if = fdiv float %i.ie, %i.bk                 ; 6 uses
  %i.ig = call noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef %.1.i187.us, ptr noundef %i.id) #4 ; 2 uses
  %i.ih = load float, ptr %i.gz, align 4, !tbaa !365
  %i.ii = load float, ptr %i.hc, align 4, !tbaa !366
  %i.ij = fsub float %i.ih, %i.ii
  %i.ik = call float @llvm.fmuladd.f32(float %i.fq, float 2.000000e+00, float %i.ij)
  %i.il = sitofp i32 %i.ig to float               ; 2 uses
  %i.im = fneg float %i.il
  %i.in = call float @llvm.fmuladd.f32(float %i.im, float %i.if, float %i.ik) ; 2 uses
  %i.io = fcmp oge float %i.in, 0.000000e+00
  %i.ip = select i1 %i.io, float %i.in, float 0.000000e+00
  %i.iq = fmul float %.sroa.065.0.copyload, %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gy, i64 56 ; 3 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !341
  %i.it = fneg float %i.iq
  %i.iu = call float @llvm.fmuladd.f32(float %i.il, float %i.if, float %i.it)
  %i.iv = call float @llvm.ceil.f32(float %i.iu)
  %i.iw = fadd float %i.is, %i.iv                 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gy, i64 80
  store float %i.iw, ptr %i.ix, align 4, !tbaa !342
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gy, i64 76
  store float %i.iw, ptr %i.iy, align 4, !tbaa !431
  %i.iz = icmp ult ptr %.1.i187.us, %i.id
  br i1 %i.iz, label %.lr.ph.us, label %.loopexit.us.thread

bb.z:                                             ; preds = %.lr.ph.us, %bb.ab
  %.0167219.us = phi float [ %i.lw, %.lr.ph.us ], [ %i.kh, %bb.ab ] ; 2 uses
  %.0168218.us = phi ptr [ %.1.i187.us, %.lr.ph.us ], [ %i.kx, %bb.ab ] ; 3 uses
  %i.ja = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0168218.us, i32 noundef 10) #20 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, null
  %spec.select.us = select i1 %i.jb, ptr %i.id, ptr %i.ja ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.jc = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %.0168218.us, ptr noundef nonnull %spec.select.us, i1 noundef zeroext false, float noundef -1.000000e+00) #4 ; 2 uses
  store <2 x float> %i.jc, ptr %10, align 8
  %i.jd = extractelement <2 x float> %i.jc, i64 1 ; 2 uses
  %i.je = load float, ptr %i.lx, align 4, !tbaa !376
  %i.jf = load float, ptr %i.ir, align 4, !tbaa !341
  %i.jg = fsub float %i.je, %i.jf
  %i.jh = fsub float %i.jg, %.0167219.us          ; 2 uses
  %i.ji = fcmp olt float %i.jd, %i.jh
  %i.jj = select i1 %i.ji, float %i.jd, float %i.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.jk = load <2 x float>, ptr %i.ft, align 8, !tbaa !176 ; 2 uses
  %i.jl = insertelement <2 x float> %i.gr, float %i.jj, i64 1
  %i.jm = fadd <2 x float> %i.jl, %i.jk
  store <2 x float> %i.jk, ptr %11, align 8, !tbaa !176
  store <2 x float> %i.jm, ptr %i.fv, align 8, !tbaa !176
  %i.jn = load i32, ptr %i.fw, align 4, !tbaa !641
  %i.jo = load i32, ptr %i.ly, align 4, !tbaa !642
  call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 0, i32 noundef %i.jo) #4
  %i.jp = load float, ptr %i.fv, align 8, !tbaa !348
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.fv, float noundef %i.jp, ptr noundef nonnull %.0168218.us, ptr noundef nonnull %spec.select.us, ptr noundef nonnull %10) #4
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1) #4
  %i.jq = load i32, ptr %i.fw, align 4, !tbaa !641
  %i.jr = load float, ptr %10, align 8, !tbaa !221
  %i.js = fsub float %i.fr, %i.jr                 ; 3 uses
  %i.jt = call float @llvm.fmuladd.f32(float %i.fy, float 2.000000e+00, float %i.js)
  %i.ju = call float @llvm.fmuladd.f32(float %i.gi, float 2.000000e+00, float %i.jt) ; 2 uses
  %i.jv = fcmp oge float %i.ju, 0.000000e+00
  %i.jw = select i1 %i.jv, float %i.ju, float 0.000000e+00
  %i.jx = fmul float %.sroa.4.0.copyload, %i.jw
  %i.jy = fmul float %i.ff, %i.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.jz = load float, ptr %i.ft, align 8, !tbaa !643
  %i.ka = fsub float %i.jz, %i.jy
  %i.kb = load float, ptr %i.fu, align 4, !tbaa !442
  %i.kc = load float, ptr %i.fs, align 4, !tbaa !222
  %i.kd = fadd float %i.kb, %i.kc
  store float %i.ka, ptr %12, align 4, !tbaa !221
  store float %i.kd, ptr %i.fz, align 4, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.ke = load float, ptr %i.ir, align 4, !tbaa !341
  %i.kf = load <4 x float>, ptr %5, align 16
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.kh = fadd float %i.ma, %.0167219.us          ; 3 uses
  %i.ki = insertelement <2 x float> %i.kg, float %i.ke, i64 1
  %i.kj = fadd <2 x float> %i.gf, %i.ki           ; 2 uses
  br i1 %i.az, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.kk = fcmp ole float %i.js, 0.000000e+00
  %i.kl = select i1 %i.kk, float 0.000000e+00, float %i.js
  %i.km = fsub float %i.fr, %i.kl
  %i.kn = insertelement <2 x float> poison, float %i.km, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = fmul <2 x float> %i.gc, %i.ko
  %i.kq = fadd <2 x float> %i.kp, %i.kj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.kr = phi <2 x float> [ %i.kq, %bb.aa ], [ %i.kj, %bb.z ] ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 0
  store float %i.ks, ptr %i.ga, align 4, !tbaa !222
  %i.kt = fadd float %i.if, %i.kh
  %i.ku = select i1 %i.az, float %i.kt, float %i.kh
  %i.kv = extractelement <2 x float> %i.kr, i64 1
  %i.kw = fadd float %i.ku, %i.kv
  store float %i.kw, ptr %13, align 4, !tbaa !221
  call void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef nonnull %i.g, i32 noundef %i.jn, i32 noundef %i.jq, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.bc, float noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %13) #4
  %i.kx = getelementptr inbounds nuw i8, ptr %spec.select.us, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  %i.ky = icmp ult ptr %i.kx, %i.id
  br i1 %i.ky, label %bb.z, label %.loopexit.us, !llvm.loop !629

.loopexit.us:                                     ; preds = %bb.ab, %bb.u
  %.2.us = phi float [ %.1220.us, %bb.u ], [ %i.hr, %bb.ab ] ; 2 uses
  br i1 %i.gt, label %bb.ac, label %.loopexit.us.thread

bb.ac:                                            ; preds = %.loopexit.us
  %i.kz = load i16, ptr %i.gj, align 4, !tbaa !284
  %i.la = icmp eq i16 %i.gv, %i.kz
  %i.lb = load i16, ptr %i.gk, align 2, !tbaa !281
  %i.lc = icmp eq i16 %i.gv, %i.lb
  br i1 %i.lc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ld = load i16, ptr %i.gl, align 2, !tbaa !278
  %i.le = load i16, ptr %i.gm, align 8, !tbaa !209
  %i.lf = icmp eq i16 %i.ld, %i.le
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.lg = phi i1 [ false, %bb.ac ], [ %i.lf, %bb.ad ] ; 2 uses
  %or.cond.i.us = select i1 %i.lg, i1 true, i1 %i.la
  br i1 %or.cond.i.us, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lh = load i16, ptr %i.dq, align 4, !tbaa !361
  %i.li = add nuw nsw i64 %indvars.iv, 1
  %i.lj = sext i16 %i.lh to i64
  %i.lk = icmp eq i64 %i.li, %i.lj
  br i1 %i.lk, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ll = load i32, ptr %i.gn, align 4, !tbaa !210
  %i.lm = and i32 %i.ll, 6144
  %.not.i195.us = icmp eq i32 %i.lm, 0
  br i1 %.not.i195.us, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ln = load i32, ptr %i.go, align 8, !tbaa !253
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.lo = load i32, ptr %i.gp, align 4, !tbaa !252
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.aj:                                            ; preds = %bb.ae
  %i.lp = select i1 %i.lg, i32 29, i32 28
  %i.lq = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.lp, float noundef 1.000000e+00) #4
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us: ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i.us = phi i32 [ %i.lq, %bb.aj ], [ %i.lo, %bb.ai ], [ %i.ln, %bb.ah ]
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fm, i32 noundef %.0.i.us, float noundef 1.000000e+00) #4
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us, %.loopexit.us
  %.2.us238 = phi float [ %.2.us, %.loopexit.us ], [ %.2.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us ], [ %i.hr, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.u, !llvm.loop !630

.lr.ph.us:                                        ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us
  %i.lr = add nsw i32 %i.ig, -1
  %i.ls = sitofp i32 %i.lr to float
  %i.lt = fmul float %i.if, %i.ls
  %i.lu = select i1 %i.az, float %i.lt, float 0.000000e+00
  %i.lv = fsub float %i.iq, %i.fg
  %i.lw = fadd float %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.lz = fneg float %i.if
  %i.ma = select i1 %i.az, float %i.lz, float %i.if
  br label %bb.z

._crit_edge.us:                                   ; preds = %.loopexit.us.thread
  br i1 %i.gs, label %.preheader.us, label %.split.us, !llvm.loop !631

.split.us:                                        ; preds = %._crit_edge.us, %_ZN5ImGui15TableSetBgColorEiji.exit
  %.us-phi = phi float [ f0xFF7FFFFF, %_ZN5ImGui15TableSetBgColorEiji.exit ], [ %.2.us238, %._crit_edge.us ]
  call void @_ZN5ImGui11PopClipRectEv() #4
  call void @_ZN5ImGui11PopClipRectEv() #4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.c, i64 542
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !344
  %i.md = load ptr, ptr %i.fj, align 8, !tbaa !262
  %i.me = sext i16 %i.mc to i64
  %i.mf = getelementptr inbounds [116 x i8], ptr %i.md, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !365
  %i.mi = fsub float %.us-phi, %i.mh              ; 2 uses
  %i.mj = fcmp ole float %i.mi, 0.000000e+00
  %i.mk = select i1 %i.mj, float 0.000000e+00, float %i.mi
  %i.ml = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !203
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store float %i.mk, ptr %i.mn, align 8, !tbaa !251
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.ak

bb.ak:                                            ; preds = %.split.us, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

declare void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui11KeepAliveIDEj(i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

declare void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN5ImGui11PopClipRectEv() local_unnamed_addr #2

declare noundef i32 @_Z9ImHashStrPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #2

declare void @_ZN5ImGui12PushItemFlagEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui11PopItemFlagEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9888 ; 3 uses
  %i.c = shl i32 %1, 4
  %i.d = load i32, ptr %i.b, align 8, !tbaa !308  ; 2 uses
  %i.e = add i32 %i.c, 24                         ; 2 uses
  %i.f = add nsw i32 %i.d, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9892 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !300  ; 4 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i

._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i:       ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9896
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !305
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i32 %i.h, 2
  %i.k = add nsw i32 %i.j, %i.h
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.k, %bb.c ], [ 8, %bb.b ]
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.l, i32 %i.f) ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.n) #4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9896 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !301  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.r = load i32, ptr %i.b, align 8, !tbaa !302
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !301
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !301
  store i32 %i.m, ptr %i.g, align 4, !tbaa !300
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit: ; preds = %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i, %bb.e
  %i.u = phi ptr [ %.pre.i, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ], [ %i.o, %bb.e ]
  store i32 %i.f, ptr %i.b, align 8, !tbaa !302
  %i.v = sext i32 %i.d to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 6 uses
  store i32 %i.e, ptr %i.w, align 4, !tbaa !286
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  %i.y = icmp sgt i32 %1, 0
  br i1 %i.y, label %.lr.ph.preheader.i, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.preheader.i:                               ; preds = %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %xtraiter = and i32 %1, 1
  %i.aa = icmp eq i32 %1, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %1, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.01315.i = phi ptr [ %i.z, %.lr.ph.preheader.i.new ], [ %i.as, %.lr.ph.i ] ; 13 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  store float 0.000000e+00, ptr %.01315.i, align 4, !tbaa !320
  %i.ab = getelementptr inbounds nuw i8, ptr %.01315.i, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !443
  %i.ac = getelementptr inbounds nuw i8, ptr %.01315.i, i64 8
  store i16 -1, ptr %i.ac, align 4, !tbaa !319
  %i.ad = getelementptr inbounds nuw i8, ptr %.01315.i, i64 12
  store i16 -1, ptr %i.ad, align 4, !tbaa !322
  %i.ae = getelementptr inbounds nuw i8, ptr %.01315.i, i64 10
  store i16 -1, ptr %i.ae, align 2, !tbaa !321
  %i.af = getelementptr inbounds nuw i8, ptr %.01315.i, i64 14 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = and i8 %i.ag, -32
  %i.ai = or disjoint i8 %i.ah, 12
  store i8 %i.ai, ptr %i.af, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.01315.i, i64 16
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !320
  %i.ak = getelementptr inbounds nuw i8, ptr %.01315.i, i64 20
  store i32 0, ptr %i.ak, align 4, !tbaa !443
  %i.al = getelementptr inbounds nuw i8, ptr %.01315.i, i64 24
  store i16 -1, ptr %i.al, align 4, !tbaa !319
  %i.am = getelementptr inbounds nuw i8, ptr %.01315.i, i64 28
  store i16 -1, ptr %i.am, align 4, !tbaa !322
  %i.an = getelementptr inbounds nuw i8, ptr %.01315.i, i64 26
  store i16 -1, ptr %i.an, align 2, !tbaa !321
  %i.ao = getelementptr inbounds nuw i8, ptr %.01315.i, i64 30 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = and i8 %i.ap, -32
  %i.ar = or disjoint i8 %i.aq, 12
  store i8 %i.ar, ptr %i.ao, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %.01315.i, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.01315.i.epil.init = phi ptr [ %i.z, %.lr.ph.preheader.i ], [ %i.as, %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod9 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  store float 0.000000e+00, ptr %.01315.i.epil.init, align 4, !tbaa !320
  %i.at = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !443
  %i.au = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 8
  store i16 -1, ptr %i.au, align 4, !tbaa !319
  %i.av = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 12
  store i16 -1, ptr %i.av, align 4, !tbaa !322
  %i.aw = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 10
  store i16 -1, ptr %i.aw, align 2, !tbaa !321
  %i.ax = getelementptr inbounds nuw i8, ptr %.01315.i.epil.init, i64 14 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 2
  %i.az = and i8 %i.ay, -32
  %i.ba = or disjoint i8 %i.az, 12
  store i8 %i.ba, ptr %i.ax, align 2
  br label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit.loopexit.unr-lcssa, %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit
  store i32 %0, ptr %i.x, align 4, !tbaa !307
  %i.bb = trunc i32 %1 to i16                     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i16 %i.bb, ptr %i.bc, align 4, !tbaa !309
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  store i16 %i.bb, ptr %i.bd, align 2, !tbaa !310
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i8 1, ptr %i.be, align 4, !tbaa !444
  ret ptr %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5ImGui21TableSettingsFindByIDEj(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9888
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9896
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.0812 = phi ptr [ %i.k, %select.unfold ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i32, ptr %.0812, align 4, !tbaa !307
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %._crit_edge, label %select.unfold

end_hunk_0
begin_hunk_1_@_ZN5ImGui10EndColumnsEv:bb.a
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !459
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  store float %i.dr, ptr %i.ds, align 4, !tbaa !463
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !675

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph93
  %indvars.iv97.epil.init = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next98.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv97.epil = phi i64 [ %indvars.iv97.epil.init, %.epil.preheader ], [ %indvars.iv.next98.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dt = getelementptr inbounds nuw [28 x i8], ptr %i.db, i64 %indvars.iv97.epil ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !459
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store float %i.du, ptr %i.dv, align 4, !tbaa !463
  %indvars.iv.next98.epil = add nuw nsw i64 %indvars.iv97.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !676

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.r, %bb.p
  store i8 1, ptr %i.cx, align 1, !tbaa !462
  %i.dw = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 5184
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !148 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 224
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !358
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 5320
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !413
  %i.ed = fsub float %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 4416
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !399
  %i.eg = fmul float %i.ef, 4.000000e+00
  %i.eh = fptosi float %i.eg to i32
  %i.ei = sitofp i32 %i.eh to float
  %i.ej = fadd float %i.ed, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.el = load float, ptr %i.ek, align 8, !tbaa !412
  %i.em = fsub float %i.ej, %i.el                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 456
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !449 ; 9 uses
  %i.ep = icmp eq ptr %i.eo, null                 ; 2 uses
  br i1 %i.ep, label %_ZN5ImGui15GetColumnOffsetEi.exit.i, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.eq = add nsw i32 %.2, -1
  %i.er = icmp slt i32 %.2, 1
  br i1 %i.er, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !453
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.010.i.i = phi i32 [ %i.et, %bb.t ], [ %i.eq, %bb.s ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !457
  %i.ew = sext i32 %.010.i.i to i64
  %i.ex = getelementptr inbounds [28 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !459
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !456 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !455
  %i.fd = fsub float %i.fc, %i.fa
  %i.fe = call noundef float @llvm.fmuladd.f32(float %i.fd, float %i.ey, float %i.fa)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit.i

_ZN5ImGui15GetColumnOffsetEi.exit.i:              ; preds = %bb.u, %.loopexit
  %.0.i.i = phi float [ %i.fe, %bb.u ], [ 0.000000e+00, %.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dw, i64 3264
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !461 ; 2 uses
  %i.fh = fadd float %.0.i.i, %i.fg               ; 2 uses
  %i.fi = fcmp oge float %i.em, %i.fh
  %i.fj = select i1 %i.fi, float %i.em, float %i.fh ; 3 uses
  %i.fk = load i32, ptr %i.o, align 4, !tbaa !460
  %i.fl = and i32 %i.fk, 4
  %.not.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i, label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i
  br i1 %i.ep, label %_ZN5ImGui15GetColumnOffsetEi.exit14.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fm = add nuw nsw i32 %.2, 1
  %i.fn = icmp slt i32 %.2, -1
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !453
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.010.i12.i = phi i32 [ %i.fp, %bb.x ], [ %i.fm, %bb.w ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !457
  %i.fs = sext i32 %.010.i12.i to i64
  %i.ft = getelementptr inbounds [28 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !459
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !456 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !455
  %i.fz = fsub float %i.fy, %i.fw
  %i.ga = call noundef float @llvm.fmuladd.f32(float %i.fz, float %i.fu, float %i.fw)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit14.i

_ZN5ImGui15GetColumnOffsetEi.exit14.i:            ; preds = %bb.y, %bb.v
  %.0.i13.i = phi float [ %i.ga, %bb.y ], [ 0.000000e+00, %bb.v ]
  %i.gb = fsub float %.0.i13.i, %i.fg             ; 2 uses
  %i.gc = fcmp olt float %i.fj, %i.gb
  %i.gd = select i1 %i.gc, float %i.fj, float %i.gb
  br label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit

_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit: ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i, %_ZN5ImGui15GetColumnOffsetEi.exit14.i
  %.0.i82 = phi float [ %i.gd, %_ZN5ImGui15GetColumnOffsetEi.exit14.i ], [ %i.fj, %_ZN5ImGui15GetColumnOffsetEi.exit.i ]
  call void @_ZN5ImGui15SetColumnOffsetEif(i32 noundef %.2, float noundef %.0.i82)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, %bb.g, %bb.f, %bb.e
  %.176 = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %._crit_edge ], [ 1, %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit ], [ 0, %bb.g ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 %.176, ptr %i.gf, align 1, !tbaa !462
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 592 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !223
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 4 dereferenceable(16) %i.gi, i64 16, i1 false), !tbaa.struct !223
  store ptr null, ptr %i.g, align 8, !tbaa !449
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store float 0.000000e+00, ptr %i.gj, align 8, !tbaa !439
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !412
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 348
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !227
  %i.go = fadd float %i.gl, %i.gn
  %i.gp = fptosi float %i.go to i32
  %i.gq = sitofp i32 %i.gp to float
  store float %i.gq, ptr %i.ge, align 8, !tbaa !437
  call void @_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv() #4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui7ColumnsEiPKcb(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !172
  %not. = xor i1 %2, true
  %i.e = zext i1 %not. to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !449  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !454
  %i.j = icmp eq i32 %i.i, %0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !460
  %i.m = icmp eq i32 %i.l, %i.e
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @_ZN5ImGui10EndColumnsEv()
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d
  %.not12 = icmp eq i32 %0, 1
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @_ZN5ImGui12BeginColumnsEPKcii(ptr noundef %1, i32 noundef %0, i32 noundef %i.e)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #16

declare noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #2

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v4i16(<4 x i16>) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !185}
!1 = distinct !{!1, !185}
!2 = distinct !{!2, !185}
!3 = distinct !{!3, !185}
!4 = distinct !{!4, !185}
!5 = distinct !{!5, !185}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTS12ImGuiContext", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS10ImGuiTable", !18, i64 0}
!22 = !{!"_ZTS8ImVectorI10ImGuiTableE", !15, i64 0, !15, i64 4, !21, i64 8}
!23 = !{!22, !21, i64 8}
!24 = !{!"bool", !14, i64 0}
!25 = !{!"float", !14, i64 0}
!26 = !{!"_ZTS6ImVec2", !25, i64 0, !25, i64 4}
!27 = !{!"p1 omnipotent char", !18, i64 0}
!28 = !{!"p1 _ZTS11ImFontAtlas", !18, i64 0}
!29 = !{!"p1 _ZTS6ImFont", !18, i64 0}
!30 = !{!"_ZTS16ImGuiMouseSource", !14, i64 0}
!31 = !{!"short", !14, i64 0}
!32 = !{!"p1 short", !18, i64 0}
!33 = !{!"_ZTS8ImVectorItE", !15, i64 0, !15, i64 4, !32, i64 8}
!34 = !{!"_ZTS7ImGuiIO", !15, i64 0, !15, i64 4, !26, i64 8, !26, i64 16, !25, i64 24, !25, i64 28, !27, i64 32, !27, i64 40, !18, i64 48, !28, i64 56, !29, i64 64, !24, i64 72, !24, i64 73, !24, i64 74, !24, i64 75, !24, i64 76, !24, i64 77, !24, i64 78, !24, i64 79, !24, i64 80, !24, i64 81, !24, i64 82, !24, i64 83, !24, i64 84, !24, i64 85, !24, i64 86, !24, i64 87, !24, i64 88, !24, i64 89, !25, i64 92, !25, i64 96, !25, i64 100, !25, i64 104, !25, i64 108, !25, i64 112, !24, i64 116, !24, i64 117, !24, i64 118, !24, i64 119, !24, i64 120, !24, i64 121, !24, i64 122, !24, i64 123, !24, i64 124, !24, i64 125, !24, i64 126, !27, i64 128, !27, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !24, i64 168, !24, i64 169, !24, i64 170, !24, i64 171, !24, i64 172, !24, i64 173, !24, i64 174, !25, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !26, i64 196, !19, i64 208, !26, i64 216, !14, i64 224, !25, i64 232, !25, i64 236, !30, i64 240, !24, i64 244, !24, i64 245, !24, i64 246, !24, i64 247, !15, i64 248, !14, i64 252, !24, i64 2732, !26, i64 2736, !14, i64 2744, !14, i64 2784, !14, i64 2824, !14, i64 2829, !14, i64 2834, !14, i64 2844, !14, i64 2854, !14, i64 2864, !14, i64 2904, !14, i64 2909, !24, i64 2914, !24, i64 2915, !14, i64 2916, !14, i64 2936, !14, i64 2956, !25, i64 2976, !24, i64 2980, !24, i64 2981, !31, i64 2982, !33, i64 2984, !25, i64 3000, !18, i64 3008, !18, i64 3016, !18, i64 3024}
!35 = !{!"any p2 pointer", !18, i64 0}
!36 = !{!"p2 _ZTS13ImTextureData", !35, i64 0}
!37 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !15, i64 0, !15, i64 4, !36, i64 8}
!38 = !{!"_ZTS15ImGuiPlatformIO", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !31, i64 56, !15, i64 60, !15, i64 64, !18, i64 72, !37, i64 80}
!39 = !{!"_ZTS8ImGuiDir", !14, i64 0}
!40 = !{!"_ZTS10ImGuiStyle", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !26, i64 20, !25, i64 28, !25, i64 32, !25, i64 36, !26, i64 40, !26, i64 48, !39, i64 56, !25, i64 60, !25, i64 64, !25, i64 68, !25, i64 72, !26, i64 76, !25, i64 84, !25, i64 88, !26, i64 92, !26, i64 100, !26, i64 108, !26, i64 116, !25, i64 124, !25, i64 128, !25, i64 132, !25, i64 136, !25, i64 140, !25, i64 144, !25, i64 148, !25, i64 152, !25, i64 156, !25, i64 160, !25, i64 164, !25, i64 168, !25, i64 172, !25, i64 176, !25, i64 180, !26, i64 184, !15, i64 192, !25, i64 196, !25, i64 200, !39, i64 204, !26, i64 208, !26, i64 216, !25, i64 224, !26, i64 228, !26, i64 236, !26, i64 244, !26, i64 252, !25, i64 260, !24, i64 264, !24, i64 265, !24, i64 266, !25, i64 268, !25, i64 272, !14, i64 276, !25, i64 1204, !25, i64 1208, !25, i64 1212, !15, i64 1216, !15, i64 1220, !25, i64 1224, !25, i64 1228}
!41 = !{!"p2 _ZTS11ImFontAtlas", !35, i64 0}
!42 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !15, i64 0, !15, i64 4, !41, i64 8}
!43 = !{!"p1 _ZTS11ImFontBaked", !18, i64 0}
!44 = !{!"p1 _ZTS6ImVec4", !18, i64 0}
!45 = !{!"_ZTS6ImVec4", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!46 = !{!"p1 _ZTS6ImVec2", !18, i64 0}
!47 = !{!"_ZTS8ImVectorI6ImVec2E", !15, i64 0, !15, i64 4, !46, i64 8}
!48 = !{!"p2 _ZTS10ImDrawList", !35, i64 0}
!49 = !{!"_ZTS8ImVectorIP10ImDrawListE", !15, i64 0, !15, i64 4, !48, i64 8}
!50 = !{!"_ZTS20ImDrawListSharedData", !26, i64 0, !44, i64 8, !28, i64 16, !29, i64 24, !25, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !25, i64 48, !15, i64 52, !45, i64 56, !47, i64 72, !49, i64 88, !19, i64 104, !14, i64 112, !25, i64 496, !14, i64 500}
!51 = !{!"double", !14, i64 0}
!52 = !{!"p1 _ZTS15ImGuiInputEvent", !18, i64 0}
!53 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !15, i64 0, !15, i64 4, !52, i64 8}
!54 = !{!"p2 _ZTS11ImGuiWindow", !35, i64 0}
!55 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !15, i64 0, !15, i64 4, !54, i64 8}
!56 = !{!"p1 _ZTS20ImGuiWindowStackData", !18, i64 0}
!57 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !15, i64 0, !15, i64 4, !56, i64 8}
!58 = !{!"p1 _ZTS16ImGuiStoragePair", !18, i64 0}
!59 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !15, i64 0, !15, i64 4, !58, i64 8}
!60 = !{!"_ZTS12ImGuiStorage", !59, i64 0}
!61 = !{!"p1 _ZTS11ImGuiWindow", !18, i64 0}
!62 = !{!"_ZTS16ImGuiInputSource", !14, i64 0}
!63 = !{!"_ZTS24ImGuiDeactivatedItemData", !15, i64 0, !15, i64 4, !24, i64 8, !24, i64 9}
!64 = !{!"_ZTS20ImGuiDataTypeStorage", !14, i64 0}
!65 = !{!"_ZTS10ImBitArrayILi155ELin512EE", !14, i64 0}
!66 = !{!"p1 _ZTS19ImGuiKeyRoutingData", !18, i64 0}
!67 = !{!"_ZTS8ImVectorI19ImGuiKeyRoutingDataE", !15, i64 0, !15, i64 4, !66, i64 8}
!68 = !{!"_ZTS20ImGuiKeyRoutingTable", !14, i64 0, !67, i64 312, !67, i64 328}
!69 = !{!"long long", !14, i64 0}
!70 = !{!"_ZTS17ImGuiNextItemData", !15, i64 0, !15, i64 4, !15, i64 8, !69, i64 16, !25, i64 24, !15, i64 28, !15, i64 32, !24, i64 36, !14, i64 37, !64, i64 38, !15, i64 48}
!71 = !{!"_ZTS6ImRect", !26, i64 0, !26, i64 8}
!72 = !{!"_ZTS17ImGuiLastItemData", !15, i64 0, !15, i64 4, !15, i64 8, !71, i64 12, !71, i64 28, !71, i64 44, !71, i64 60, !15, i64 76}
!73 = !{!"_ZTS19ImGuiNextWindowData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !15, i64 56, !15, i64 60, !24, i64 64, !71, i64 68, !18, i64 88, !18, i64 96, !25, i64 104, !26, i64 108, !15, i64 116}
!74 = !{!"p1 _ZTS13ImGuiColorMod", !18, i64 0}
!75 = !{!"_ZTS8ImVectorI13ImGuiColorModE", !15, i64 0, !15, i64 4, !74, i64 8}
!76 = !{!"p1 _ZTS13ImGuiStyleMod", !18, i64 0}
!77 = !{!"_ZTS8ImVectorI13ImGuiStyleModE", !15, i64 0, !15, i64 4, !76, i64 8}
!78 = !{!"p1 _ZTS15ImFontStackData", !18, i64 0}
!79 = !{!"_ZTS8ImVectorI15ImFontStackDataE", !15, i64 0, !15, i64 4, !78, i64 8}
!80 = !{!"p1 _ZTS19ImGuiFocusScopeData", !18, i64 0}
!81 = !{!"_ZTS8ImVectorI19ImGuiFocusScopeDataE", !15, i64 0, !15, i64 4, !80, i64 8}
!82 = !{!"p1 int", !18, i64 0}
!83 = !{!"_ZTS8ImVectorIiE", !15, i64 0, !15, i64 4, !82, i64 8}
!84 = !{!"p1 _ZTS14ImGuiGroupData", !18, i64 0}
!85 = !{!"_ZTS8ImVectorI14ImGuiGroupDataE", !15, i64 0, !15, i64 4, !84, i64 8}
!86 = !{!"p1 _ZTS14ImGuiPopupData", !18, i64 0}
!87 = !{!"_ZTS8ImVectorI14ImGuiPopupDataE", !15, i64 0, !15, i64 4, !86, i64 8}
!88 = !{!"p1 _ZTS22ImGuiTreeNodeStackData", !18, i64 0}
!89 = !{!"_ZTS8ImVectorI22ImGuiTreeNodeStackDataE", !15, i64 0, !15, i64 4, !88, i64 8}
!90 = !{!"p2 _ZTS14ImGuiViewportP", !35, i64 0}
!91 = !{!"_ZTS8ImVectorIP14ImGuiViewportPE", !15, i64 0, !15, i64 4, !90, i64 8}
!92 = !{!"_ZTS13ImGuiNavLayer", !14, i64 0}
!93 = !{!"_ZTS16ImGuiNavItemData", !61, i64 0, !15, i64 8, !15, i64 12, !71, i64 16, !15, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !69, i64 48}
!94 = !{!"_ZTS8ImGuiKey", !14, i64 0}
!95 = !{!"_ZTS12ImGuiPayload", !18, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !14, i64 24, !24, i64 57, !24, i64 58}
!96 = !{!"_ZTS8ImVectorIhE", !15, i64 0, !15, i64 4, !27, i64 8}
!97 = !{!"p1 _ZTS20ImGuiListClipperData", !18, i64 0}
!98 = !{!"_ZTS8ImVectorI20ImGuiListClipperDataE", !15, i64 0, !15, i64 4, !97, i64 8}
!99 = !{!"p1 _ZTS18ImGuiTableTempData", !18, i64 0}
!100 = !{!"_ZTS8ImVectorI18ImGuiTableTempDataE", !15, i64 0, !15, i64 4, !99, i64 8}
!101 = !{!"_ZTS6ImPoolI10ImGuiTableE", !22, i64 0, !60, i64 16, !15, i64 32, !15, i64 36}
!102 = !{!"p1 float", !18, i64 0}
!103 = !{!"_ZTS8ImVectorIfE", !15, i64 0, !15, i64 4, !102, i64 8}
!104 = !{!"p1 _ZTS13ImDrawChannel", !18, i64 0}
!105 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !15, i64 0, !15, i64 4, !104, i64 8}
!106 = !{!"p1 _ZTS11ImGuiTabBar", !18, i64 0}
!107 = !{!"_ZTS8ImVectorI11ImGuiTabBarE", !15, i64 0, !15, i64 4, !106, i64 8}
!108 = !{!"_ZTS6ImPoolI11ImGuiTabBarE", !107, i64 0, !60, i64 16, !15, i64 32, !15, i64 36}
!109 = !{!"p1 _ZTS15ImGuiPtrOrIndex", !18, i64 0}
!110 = !{!"_ZTS8ImVectorI15ImGuiPtrOrIndexE", !15, i64 0, !15, i64 4, !109, i64 8}
!111 = !{!"p1 _ZTS20ImGuiShrinkWidthItem", !18, i64 0}
!112 = !{!"_ZTS8ImVectorI20ImGuiShrinkWidthItemE", !15, i64 0, !15, i64 4, !111, i64 8}
!113 = !{!"_ZTS19ImGuiBoxSelectState", !15, i64 0, !24, i64 4, !24, i64 5, !24, i64 6, !24, i64 7, !24, i64 8, !15, i64 9, !26, i64 12, !26, i64 20, !26, i64 28, !61, i64 40, !24, i64 48, !71, i64 52, !71, i64 68, !71, i64 84}
!114 = !{!"p1 _ZTS24ImGuiMultiSelectTempData", !18, i64 0}
!115 = !{!"_ZTS8ImVectorI24ImGuiMultiSelectTempDataE", !15, i64 0, !15, i64 4, !114, i64 8}
!116 = !{!"p1 _ZTS21ImGuiMultiSelectState", !18, i64 0}
!117 = !{!"_ZTS8ImVectorI21ImGuiMultiSelectStateE", !15, i64 0, !15, i64 4, !116, i64 8}
!118 = !{!"_ZTS6ImPoolI21ImGuiMultiSelectStateE", !117, i64 0, !60, i64 16, !15, i64 32, !15, i64 36}
!119 = !{!"p1 _ZTSN5ImStb17STB_TexteditStateE", !18, i64 0}
!120 = !{!"_ZTS8ImVectorIcE", !15, i64 0, !15, i64 4, !27, i64 8}
!121 = !{!"_ZTS19ImGuiInputTextState", !19, i64 0, !119, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !27, i64 32, !120, i64 40, !120, i64 56, !120, i64 72, !15, i64 88, !26, i64 92, !25, i64 100, !24, i64 104, !24, i64 105, !24, i64 106, !24, i64 107, !15, i64 108, !15, i64 112}
!122 = !{!"_ZTS30ImGuiInputTextDeactivatedState", !15, i64 0, !120, i64 8}
!123 = !{!"p1 _ZTS11ImFontGlyph", !18, i64 0}
!124 = !{!"_ZTS8ImVectorI11ImFontGlyphE", !15, i64 0, !15, i64 4, !123, i64 8}
!125 = !{!"_ZTS11ImFontBaked", !103, i64 0, !25, i64 16, !25, i64 20, !25, i64 24, !33, i64 32, !124, i64 48, !15, i64 64, !25, i64 68, !25, i64 72, !15, i64 76, !15, i64 79, !15, i64 79, !15, i64 80, !15, i64 84, !29, i64 88, !18, i64 96}
!126 = !{!"_ZTS21ImGuiComboPreviewData", !71, i64 0, !26, i64 16, !26, i64 24, !26, i64 32, !25, i64 40, !15, i64 44}
!127 = !{!"_ZTS8ImVectorIjE", !15, i64 0, !15, i64 4, !82, i64 8}
!128 = !{!"_ZTS24ImGuiTypingSelectRequest", !15, i64 0, !15, i64 4, !27, i64 8, !24, i64 16, !24, i64 17, !14, i64 18}
!129 = !{!"_ZTS22ImGuiTypingSelectState", !128, i64 0, !14, i64 24, !15, i64 88, !15, i64 92, !25, i64 96, !24, i64 100}
!130 = !{!"_ZTS20ImGuiPlatformImeData", !24, i64 0, !24, i64 1, !26, i64 4, !25, i64 12, !15, i64 16}
!131 = !{!"_ZTS15ImGuiTextBuffer", !120, i64 0}
!132 = !{!"p1 _ZTS20ImGuiSettingsHandler", !18, i64 0}
!133 = !{!"_ZTS8ImVectorI20ImGuiSettingsHandlerE", !15, i64 0, !15, i64 4, !132, i64 8}
!134 = !{!"_ZTS13ImChunkStreamI19ImGuiWindowSettingsE", !120, i64 0}
!135 = !{!"_ZTS13ImChunkStreamI18ImGuiTableSettingsE", !120, i64 0}
!136 = !{!"p1 _ZTS16ImGuiContextHook", !18, i64 0}
!137 = !{!"_ZTS8ImVectorI16ImGuiContextHookE", !15, i64 0, !15, i64 4, !136, i64 8}
!138 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!139 = !{!"_ZTS23ImGuiErrorRecoveryState", !31, i64 0, !31, i64 2, !31, i64 4, !31, i64 6, !31, i64 8, !31, i64 10, !31, i64 12, !31, i64 14, !31, i64 16, !31, i64 18, !31, i64 20}
!140 = !{!"p1 _ZTS23ImGuiErrorRecoveryState", !18, i64 0}
!141 = !{!"_ZTS14ImGuiTextIndex", !83, i64 0, !15, i64 16}
!142 = !{!"_ZTS18ImGuiMetricsConfig", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !24, i64 4, !24, i64 5, !24, i64 6, !24, i64 7, !24, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !24, i64 28}
!143 = !{!"p1 _ZTS19ImGuiStackLevelInfo", !18, i64 0}
!144 = !{!"_ZTS8ImVectorI19ImGuiStackLevelInfoE", !15, i64 0, !15, i64 4, !143, i64 8}
!145 = !{!"_ZTS16ImGuiIDStackTool", !15, i64 0, !15, i64 4, !15, i64 8, !144, i64 16, !24, i64 32, !25, i64 36, !131, i64 40}
!146 = !{!"_ZTS19ImGuiDebugAllocInfo", !15, i64 0, !15, i64 4, !31, i64 8, !14, i64 12}
!147 = !{!"_ZTS12ImGuiContext", !24, i64 0, !34, i64 8, !38, i64 3040, !40, i64 3136, !42, i64 4368, !29, i64 4384, !43, i64 4392, !25, i64 4400, !25, i64 4404, !25, i64 4408, !25, i64 4412, !25, i64 4416, !50, i64 4424, !51, i64 4992, !15, i64 5000, !15, i64 5004, !15, i64 5008, !15, i64 5012, !24, i64 5016, !24, i64 5017, !24, i64 5018, !24, i64 5019, !18, i64 5024, !14, i64 5032, !53, i64 5048, !53, i64 5064, !30, i64 5080, !15, i64 5084, !55, i64 5088, !55, i64 5104, !55, i64 5120, !57, i64 5136, !60, i64 5152, !15, i64 5168, !25, i64 5172, !15, i64 5176, !61, i64 5184, !61, i64 5192, !61, i64 5200, !61, i64 5208, !61, i64 5216, !61, i64 5224, !26, i64 5232, !15, i64 5240, !15, i64 5244, !25, i64 5248, !26, i64 5252, !26, i64 5260, !15, i64 5268, !15, i64 5272, !15, i64 5276, !15, i64 5280, !15, i64 5284, !25, i64 5288, !25, i64 5292, !24, i64 5296, !24, i64 5297, !24, i64 5298, !15, i64 5300, !15, i64 5304, !25, i64 5308, !24, i64 5312, !24, i64 5313, !24, i64 5314, !24, i64 5315, !24, i64 5316, !24, i64 5317, !24, i64 5318, !15, i64 5319, !26, i64 5320, !61, i64 5328, !62, i64 5336, !15, i64 5340, !63, i64 5344, !64, i64 5356, !15, i64 5364, !25, i64 5368, !51, i64 5376, !51, i64 5384, !51, i64 5392, !65, i64 5400, !14, i64 5420, !68, i64 7280, !15, i64 7624, !24, i64 7628, !15, i64 7632, !15, i64 7636, !15, i64 7640, !15, i64 7644, !70, i64 7648, !72, i64 7704, !73, i64 7784, !24, i64 7904, !15, i64 7908, !75, i64 7912, !77, i64 7928, !79, i64 7944, !81, i64 7960, !83, i64 7976, !85, i64 7992, !87, i64 8008, !87, i64 8024, !89, i64 8040, !91, i64 8056, !24, i64 8072, !24, i64 8073, !24, i64 8074, !24, i64 8075, !15, i64 8076, !61, i64 8080, !15, i64 8088, !92, i64 8092, !15, i64 8096, !15, i64 8100, !15, i64 8104, !15, i64 8108, !81, i64 8112, !15, i64 8128, !25, i64 8132, !15, i64 8136, !15, i64 8140, !62, i64 8144, !69, i64 8152, !14, i64 8160, !24, i64 8161, !24, i64 8162, !24, i64 8163, !93, i64 8168, !24, i64 8224, !24, i64 8225, !24, i64 8226, !15, i64 8228, !15, i64 8232, !15, i64 8236, !39, i64 8240, !39, i64 8244, !39, i64 8248, !71, i64 8252, !71, i64 8268, !15, i64 8284, !15, i64 8288, !15, i64 8292, !93, i64 8296, !93, i64 8352, !93, i64 8408, !93, i64 8464, !15, i64 8520, !15, i64 8524, !15, i64 8528, !15, i64 8532, !24, i64 8536, !24, i64 8537, !24, i64 8538, !15, i64 8540, !15, i64 8544, !61, i64 8552, !61, i64 8560, !61, i64 8568, !25, i64 8576, !25, i64 8580, !62, i64 8584, !24, i64 8588, !94, i64 8592, !26, i64 8596, !26, i64 8604, !25, i64 8612, !24, i64 8616, !24, i64 8617, !24, i64 8618, !15, i64 8620, !15, i64 8624, !15, i64 8628, !95, i64 8632, !71, i64 8696, !71, i64 8712, !15, i64 8728, !15, i64 8732, !25, i64 8736, !15, i64 8740, !15, i64 8744, !15, i64 8748, !15, i64 8752, !96, i64 8760, !14, i64 8776, !15, i64 8792, !98, i64 8800, !21, i64 8816, !15, i64 8824, !15, i64 8828, !100, i64 8832, !101, i64 8848, !103, i64 8888, !105, i64 8904, !106, i64 8920, !108, i64 8928, !110, i64 8968, !112, i64 8984, !113, i64 9000, !114, i64 9104, !15, i64 9112, !115, i64 9120, !118, i64 9136, !15, i64 9176, !15, i64 9180, !25, i64 9184, !25, i64 9188, !15, i64 9192, !15, i64 9196, !15, i64 9200, !25, i64 9204, !26, i64 9208, !121, i64 9216, !122, i64 9336, !125, i64 9360, !15, i64 9464, !15, i64 9468, !64, i64 9472, !15, i64 9480, !15, i64 9484, !15, i64 9488, !15, i64 9492, !15, i64 9496, !25, i64 9500, !25, i64 9504, !15, i64 9508, !45, i64 9512, !126, i64 9528, !71, i64 9576, !24, i64 9592, !31, i64 9594, !25, i64 9596, !25, i64 9600, !25, i64 9604, !24, i64 9608, !24, i64 9609, !25, i64 9612, !25, i64 9616, !25, i64 9620, !31, i64 9624, !31, i64 9626, !61, i64 9632, !120, i64 9640, !127, i64 9656, !129, i64 9672, !130, i64 9776, !130, i64 9796, !37, i64 9816, !24, i64 9832, !25, i64 9836, !131, i64 9840, !133, i64 9856, !134, i64 9872, !135, i64 9888, !137, i64 9904, !15, i64 9920, !14, i64 9928, !24, i64 10008, !15, i64 10012, !61, i64 10016, !138, i64 10024, !131, i64 10032, !27, i64 10048, !27, i64 10056, !25, i64 10064, !24, i64 10068, !15, i64 10072, !15, i64 10076, !15, i64 10080, !18, i64 10088, !18, i64 10096, !26, i64 10104, !24, i64 10112, !15, i64 10116, !139, i64 10120, !140, i64 10144, !15, i64 10152, !15, i64 10156, !131, i64 10160, !141, i64 10176, !15, i64 10200, !15, i64 10204, !14, i64 10208, !14, i64 10209, !24, i64 10210, !15, i64 10212, !14, i64 10216, !24, i64 10217, !14, i64 10218, !15, i64 10220, !25, i64 10224, !45, i64 10228, !142, i64 10244, !145, i64 10280, !146, i64 10336, !14, i64 10396, !15, i64 10636, !15, i64 10640, !25, i64 10644, !15, i64 10648, !15, i64 10652, !15, i64 10656, !120, i64 10664, !14, i64 10680}
!148 = !{!147, !61, i64 5184}
!149 = !{!"p1 _ZTS14ImGuiViewportP", !18, i64 0}
!150 = !{!"_ZTS6ImVec1", !25, i64 0}
!151 = !{!"_ZTS16ImGuiMenuColumns", !15, i64 0, !15, i64 4, !31, i64 8, !31, i64 10, !31, i64 12, !31, i64 14, !31, i64 16, !14, i64 18}
!152 = !{!"p1 _ZTS12ImGuiStorage", !18, i64 0}
!153 = !{!"p1 _ZTS15ImGuiOldColumns", !18, i64 0}
!154 = !{!"_ZTS19ImGuiWindowTempData", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !25, i64 56, !25, i64 60, !24, i64 64, !24, i64 65, !150, i64 68, !150, i64 72, !150, i64 76, !26, i64 80, !92, i64 88, !31, i64 92, !31, i64 94, !24, i64 96, !24, i64 97, !24, i64 98, !24, i64 99, !26, i64 100, !151, i64 108, !15, i64 136, !15, i64 140, !15, i64 144, !55, i64 152, !152, i64 168, !153, i64 176, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !25, i64 208, !25, i64 212, !103, i64 216, !103, i64 232}
!155 = !{!"_ZTS8ImVec2ih", !31, i64 0, !31, i64 2}
!156 = !{!"_ZTS8ImVectorI15ImGuiOldColumnsE", !15, i64 0, !15, i64 4, !153, i64 8}
!157 = !{!"p1 _ZTS10ImDrawList", !18, i64 0}
!158 = !{!"p1 _ZTS9ImDrawCmd", !18, i64 0}
!159 = !{!"_ZTS8ImVectorI9ImDrawCmdE", !15, i64 0, !15, i64 4, !158, i64 8}
!160 = !{!"p1 _ZTS10ImDrawVert", !18, i64 0}
!161 = !{!"_ZTS8ImVectorI10ImDrawVertE", !15, i64 0, !15, i64 4, !160, i64 8}
!162 = !{!"p1 _ZTS20ImDrawListSharedData", !18, i64 0}
!163 = !{!"p1 _ZTS13ImTextureData", !18, i64 0}
!164 = !{!"_ZTS12ImTextureRef", !163, i64 0, !69, i64 8}
!165 = !{!"_ZTS15ImDrawCmdHeader", !45, i64 0, !164, i64 16, !15, i64 32}
!166 = !{!"_ZTS18ImDrawListSplitter", !15, i64 0, !15, i64 4, !105, i64 8}
!167 = !{!"_ZTS8ImVectorI6ImVec4E", !15, i64 0, !15, i64 4, !44, i64 8}
!168 = !{!"p1 _ZTS12ImTextureRef", !18, i64 0}
!169 = !{!"_ZTS8ImVectorI12ImTextureRefE", !15, i64 0, !15, i64 4, !168, i64 8}
!170 = !{!"_ZTS10ImDrawList", !159, i64 0, !33, i64 16, !161, i64 32, !15, i64 48, !15, i64 52, !162, i64 56, !160, i64 64, !32, i64 72, !47, i64 80, !165, i64 96, !166, i64 136, !167, i64 160, !169, i64 176, !96, i64 192, !25, i64 208, !27, i64 216}
!171 = !{!"_ZTS11ImGuiWindow", !19, i64 0, !27, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !149, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !26, i64 88, !25, i64 96, !25, i64 100, !25, i64 104, !25, i64 108, !25, i64 112, !25, i64 116, !25, i64 120, !25, i64 124, !25, i64 128, !25, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !26, i64 152, !26, i64 160, !26, i64 168, !26, i64 176, !26, i64 184, !26, i64 192, !24, i64 200, !24, i64 201, !24, i64 202, !14, i64 203, !24, i64 204, !24, i64 205, !24, i64 206, !24, i64 207, !24, i64 208, !24, i64 209, !24, i64 210, !24, i64 211, !24, i64 212, !24, i64 213, !24, i64 214, !24, i64 215, !14, i64 216, !14, i64 217, !31, i64 218, !31, i64 220, !31, i64 222, !31, i64 224, !31, i64 226, !14, i64 228, !14, i64 229, !24, i64 230, !39, i64 232, !14, i64 236, !14, i64 237, !14, i64 238, !14, i64 239, !15, i64 240, !15, i64 241, !15, i64 242, !26, i64 244, !26, i64 252, !127, i64 264, !154, i64 280, !71, i64 528, !71, i64 544, !71, i64 560, !71, i64 576, !71, i64 592, !71, i64 608, !71, i64 624, !155, i64 640, !155, i64 644, !15, i64 648, !25, i64 652, !25, i64 656, !60, i64 664, !156, i64 680, !25, i64 696, !25, i64 700, !25, i64 704, !15, i64 708, !157, i64 712, !170, i64 720, !61, i64 944, !61, i64 952, !61, i64 960, !61, i64 968, !61, i64 976, !61, i64 984, !61, i64 992, !61, i64 1000, !14, i64 1008, !14, i64 1016, !14, i64 1048, !15, i64 1064, !15, i64 1068, !15, i64 1072, !24, i64 1076}
!172 = !{!171, !24, i64 206}
!173 = !{!171, !24, i64 209}
!174 = !{i8 0, i8 2}
!175 = !{}
!176 = !{!25, !25, i64 0}
!177 = !{!147, !15, i64 8824}
!178 = !{!101, !21, i64 8}
!179 = !{!147, !15, i64 8828}
!180 = !{!"p1 _ZTS20ImGuiTableHeaderData", !18, i64 0}
!181 = !{!"_ZTS8ImVectorI20ImGuiTableHeaderDataE", !15, i64 0, !15, i64 4, !180, i64 8}
!182 = !{!"_ZTS18ImGuiTableTempData", !15, i64 0, !25, i64 4, !25, i64 8, !181, i64 16, !26, i64 32, !166, i64 40, !71, i64 64, !71, i64 80, !26, i64 96, !26, i64 104, !26, i64 112, !150, i64 120, !25, i64 124, !15, i64 128}
!183 = !{!182, !25, i64 4}
!184 = !{!100, !99, i64 8}
!185 = !{!"llvm.loop.mustprogress"}
!186 = !{!105, !104, i64 8}
!187 = !{!181, !180, i64 8}
!188 = !{!"p1 _ZTS16ImGuiTableColumn", !18, i64 0}
!189 = !{!"_ZTS6ImSpanI16ImGuiTableColumnE", !188, i64 0, !188, i64 8}
!190 = !{!"_ZTS6ImSpanIsE", !32, i64 0, !32, i64 8}
!191 = !{!"p1 _ZTS18ImGuiTableCellData", !18, i64 0}
!192 = !{!"_ZTS6ImSpanI18ImGuiTableCellDataE", !191, i64 0, !191, i64 8}
end_hunk_1
