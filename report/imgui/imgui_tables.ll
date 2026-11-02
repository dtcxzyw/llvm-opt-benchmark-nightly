Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui21TableAngledHeadersRowEv:bb.a
  %i.al = getelementptr [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ah, %bb.h ], [ %i.am, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !325 ; 2 uses
  %.not = icmp eq i16 %i.ao, -1
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.ap = sext i16 %i.ao to i32
  br label %bb.r

bb.j:                                             ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 526
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !395 ; 2 uses
  %i.as = sext i16 %i.ar to i32
  %i.at = icmp eq i16 %i.ar, -1
  br i1 %i.at, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 522
  %i.av = load i16, ptr %i.au, align 2, !tbaa !298 ; 2 uses
  %.not43 = icmp eq i16 %i.av, -1
  br i1 %.not43, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !362
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !297
  %i.bb = icmp eq i16 %i.ba, -1
  br i1 %i.bb, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !326 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = icmp eq i32 %i.bd, %i.ad
  %or.cond = or i1 %i.be, %i.bf
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 587
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !258, !range !175, !noundef !176
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8776
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !397, !range !175, !noundef !176
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bm = sext i16 %i.av to i32
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.l, %bb.m, %bb.p, %bb.q, %bb.k, %bb.j
  %.040 = phi i32 [ %i.bm, %bb.q ], [ -1, %bb.p ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %bb.k ], [ %i.as, %bb.j ], [ %i.ap, %.thread ]
  %i.bn = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 46, float noundef 1.000000e+00)
  %i.bo = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !221 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  br label %bb.s

._crit_edge:                                      ; preds = %bb.ab, %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 3404
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !665
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !666
  %i.bz = load i32, ptr %i.f, align 8, !tbaa !667
  tail call void @_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai(i32 noundef %i.ad, float noundef %i.bw, float noundef 0.000000e+00, ptr noundef %i.by, i32 noundef %i.bz)
  ret void

bb.s:                                             ; preds = %.lr.ph, %bb.ab
  %i.ca = phi i32 [ %i.bq, %.lr.ph ], [ %i.dt, %bb.ab ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 4 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !279
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32
  %i.cd = lshr i64 %indvars.iv, 5
  %i.ce = and i64 %i.cd, 134217727
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !299
  %i.ch = and i32 %i.cc, 31
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = and i32 %i.cg, %i.ci
  %.not44 = icmp eq i32 %i.cj, 0
  br i1 %.not44, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.bt, align 8, !tbaa !275
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !300 ; 3 uses
  %i.cn = load ptr, ptr %i.bu, align 8, !tbaa !271
  %i.co = sext i16 %i.cm to i64
  %i.cp = getelementptr inbounds [120 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !328
  %i.cr = and i32 %i.cq, 262144
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = sext i16 %i.cm to i32
  %i.cu = icmp eq i32 %.040, %i.ct
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cv = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 25, float noundef 1.000000e+00)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cw = phi i32 [ %i.cv, %bb.v ], [ 0, %bb.u ]
  %i.cx = load i32, ptr %i.f, align 8, !tbaa !471 ; 6 uses
  %i.cy = load i32, ptr %i.g, align 4, !tbaa !470
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.x, label %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i: ; preds = %bb.w
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !193
  br label %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit

bb.x:                                             ; preds = %bb.w
  %i.da = add nsw i32 %i.cx, 1
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = sdiv i32 %i.cx, 2
  %i.dc = add nsw i32 %i.db, %i.cx
  br label %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i: ; preds = %bb.y, %bb.x
  %i.dd = phi i32 [ %i.dc, %bb.y ], [ 8, %bb.x ]
  %i.de = tail call noundef i32 @llvm.smax.i32(i32 %i.dd, i32 %i.da) ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 4
  %i.dh = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.dg) ; 3 uses
  %i.di = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !193 ; 2 uses
  %.not6.i.i45 = icmp eq ptr %i.di, null
  br i1 %.not6.i.i45, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i
  %i.dj = load i32, ptr %i.f, align 8, !tbaa !471
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dh, ptr nonnull align 4 %i.di, i64 %i.dl, i1 false)
  %i.dm = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !193
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dm)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK8ImVectorI20ImGuiTableHeaderDataE14_grow_capacityEi.exit.i
  store ptr %i.dh, ptr %.phi.trans.insert.i, align 8, !tbaa !193
  store i32 %i.de, ptr %i.g, align 4, !tbaa !470
  %.pre3.i = load i32, ptr %i.f, align 8, !tbaa !471
  br label %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit

_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i, %bb.aa
  %i.dn = phi i32 [ %i.cx, %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.aa ]
  %i.do = phi ptr [ %.pre.i, %._ZN8ImVectorI20ImGuiTableHeaderDataE7reserveEi.exit_crit_edge.i ], [ %i.dh, %bb.aa ]
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.do, i64 %i.dp ; 4 uses
  store i16 %i.cm, ptr %i.dq, align 4
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %i.bo, ptr %.sroa.446.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %i.bn, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 %i.cw, ptr %.sroa.6.0..sroa_idx, align 4
  %i.dr = load i32, ptr %i.f, align 8, !tbaa !471
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.f, align 8, !tbaa !471
  %.pre = load i32, ptr %i.bp, align 4, !tbaa !221
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit, %bb.t, %bb.s
  %i.dt = phi i32 [ %.pre, %_ZN8ImVectorI20ImGuiTableHeaderDataE9push_backERKS0_.exit ], [ %i.ca, %bb.t ], [ %i.ca, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next, %i.du
  br i1 %i.dv, label %bb.s, label %._crit_edge, !llvm.loop !664
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai(i32 noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.ImRect, align 16            ; 8 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %9 = alloca [4 x %struct.ImVec2], align 16      ; 12 uses
  %10 = alloca %struct.ImVec2, align 8            ; 6 uses
  %11 = alloca %struct.ImRect, align 8            ; 5 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 32 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !401  ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp oeq float %2, 0.000000e+00
  br i1 %i.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !221  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.lr.ph.i
  %i.r = phi i32 [ %i.k, %.lr.ph.i ], [ %i.as, %bb.k ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 5 uses
  %.01315.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 4 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = lshr i64 %indvars.iv.i, 5
  %i.v = and i64 %i.u, 134217727
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !299
  %i.y = and i32 %i.t, 31
  %i.z = shl nuw i32 1, %i.y
  %i.aa = and i32 %i.x, %i.z
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !271
  %i.ac = getelementptr inbounds nuw [120 x i8], ptr %i.ab, i64 %indvars.iv.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !328
  %i.ae = and i32 %i.ad, 262144
  %.not14.i = icmp eq i32 %i.ae, 0
  br i1 %.not14.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.o, align 1, !tbaa !222, !range !175, !noundef !176
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load i16, ptr %i.p, align 2, !tbaa !257
  %i.ai = sext i16 %i.ah to i64
  %.not.i.i = icmp slt i64 %indvars.iv.i, %i.ai
  br i1 %.not.i.i, label %bb.i, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !345 ; 2 uses
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !319
  %i.an = sext i16 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.1.i.i = phi ptr [ @.str.11, %bb.h ], [ %i.ao, %bb.j ], [ @.str.11, %bb.i ]
  %i.ap = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i.i, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00)
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.aq = fcmp oge float %.01315.i, %.sroa.0.0.vec.extract.i
  %i.ar = select i1 %i.aq, float %.01315.i, float %.sroa.0.0.vec.extract.i
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !221
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i, %bb.f, %bb.e
  %i.as = phi i32 [ %.pre.i, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %i.r, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.1.i = phi float [ %i.ar, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.i ], [ %.01315.i, %bb.f ], [ %.01315.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %bb.e, label %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, !llvm.loop !8

_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit: ; preds = %bb.k, %bb.d
  %.013.lcssa.i = phi float [ 0.000000e+00, %bb.d ], [ %.1.i, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.aw = load float, ptr %i.av, align 8, !tbaa !391
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float 2.000000e+00, float %.013.lcssa.i)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit, %bb.c
  %.0169 = phi float [ %i.ax, %_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv.exit ], [ %2, %bb.c ] ; 2 uses
  %i.ay = fcmp olt float %1, 0.000000e+00         ; 7 uses
  %i.az = fadd float %1, f0xBFC90FDB              ; 3 uses
  %16 = tail call float @cosf(float noundef %i.az) #4 ; 6 uses
  %17 = tail call float @sinf(float noundef %i.az) #4 ; 7 uses
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = fadd float %i.az, f0x40490FDB           ; 2 uses
  %18 = tail call float @cosf(float noundef %i.ba) #4
  %19 = tail call float @sinf(float noundef %i.ba) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bb = phi float [ %18, %bb.m ], [ %16, %bb.l ]
  %i.bc = phi float [ %19, %bb.m ], [ %17, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4568 ; 3 uses
  %i.be = load float, ptr %i.bd, align 8, !tbaa !340
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 3316 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !243
  %20 = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.000000e+00, float %i.be) ; 2 uses
  %i.bh = fneg float %20
  %i.bi = select i1 %i.ay, float %20, float %i.bh
  %i.bj = fneg float %17                          ; 3 uses
  %i.bk = fmul float %16, %i.bi
  %21 = tail call float @llvm.fmuladd.f32(float %.0169, float %17, float %i.bk)
  %22 = tail call float @llvm.fabs.f32(float %21)
  %i.bl = fptosi float %22 to i32
  %i.bm = uitofp nneg i32 %i.bl to float          ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store float %i.bm, ptr %i.bn, align 8, !tbaa !259
  %i.bo = fcmp une float %17, 0.000000e+00
  %i.bp = fdiv float %16, %17
  %i.bq = select i1 %i.bo, float %i.bp, float 0.000000e+00
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store float %i.bq, ptr %i.br, align 4, !tbaa !369
  %i.bs = fdiv float %i.bm, %i.bj
  %i.bt = insertelement <2 x float> poison, float %16, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %17, i64 1
  %i.bv = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bu, %i.bw           ; 2 uses
  %i.by = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8984
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !263 ; 11 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 569
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !222, !range !175, !noundef !176
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.ca)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 570
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !434, !range !175, !noundef !176
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.q, label %_ZN5ImGui12TableNextRowEif.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.ca)
  br label %_ZN5ImGui12TableNextRowEif.exit

_ZN5ImGui12TableNextRowEif.exit:                  ; preds = %bb.p, %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 148 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = shl i32 %i.ci, 16
  %i.ck = or disjoint i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ch, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 3320
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !391
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 136 ; 2 uses
  store float %i.cm, ptr %i.cn, align 8, !tbaa !444
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 132
  store float %i.bm, ptr %i.co, align 4, !tbaa !465
  tail call void @_ZN5ImGui13TableBeginRowEP10ImGuiTable(ptr noundef nonnull %i.ca)
  %i.cp = load float, ptr %i.cn, align 8, !tbaa !444
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 128 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !253
  %23 = tail call float @llvm.fmuladd.f32(float %i.cp, float 2.000000e+00, float %i.cr) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 124
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !254
  %i.cu = fadd float %i.ct, %i.bm                 ; 2 uses
  %i.cv = fcmp oge float %23, %i.cu
  %i.cw = select i1 %i.cv, float %23, float %i.cu
  store float %i.cw, ptr %i.cq, align 8, !tbaa !253
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 392
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !219
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 209
  store i8 1, ptr %i.cz, align 1, !tbaa !174
  %24 = tail call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.db = load float, ptr %i.da, align 8, !tbaa !383
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 308 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !454 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.dg = load float, ptr %i.df, align 8, !tbaa !378
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.di = load float, ptr %i.dh, align 8, !tbaa !253 ; 2 uses
  store float %i.db, ptr %5, align 16, !tbaa !228
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.de, ptr %i.dj, align 4, !tbaa !229
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.dg, ptr %i.dk, align 8, !tbaa !228
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store float %i.di, ptr %i.dl, align 4, !tbaa !229
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !211
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef %i.g, i32 noundef 0)
  %i.do = load float, ptr %i.dc, align 8, !tbaa !671 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 558 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !370 ; 2 uses
  %i.dr = icmp sgt i16 %i.dq, 0
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui12TableNextRowEif.exit
  %i.ds = zext nneg i16 %i.dq to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !275
  %i.dw = getelementptr [2 x i8], ptr %i.dv, i64 %i.ds
  %i.dx = getelementptr i8, ptr %i.dw, i64 -2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !300
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !271
  %i.ea = sext i16 %i.dy to i64
  %i.eb = getelementptr inbounds [120 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !374 ; 2 uses
  %i.ee = fcmp oge float %i.do, %i.ed
  %i.ef = select i1 %i.ee, float %i.do, float %i.ed
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui12TableNextRowEif.exit
  %.0173 = phi float [ %i.ef, %bb.r ], [ %i.do, %_ZN5ImGui12TableNextRowEif.exit ]
  %i.eg = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8984
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !263 ; 4 uses
  %.not.i182 = icmp eq ptr %i.ei, null
  br i1 %.not.i182, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %25 = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

bb.u:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 124
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !254
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 300
  %i.em = load float, ptr %i.el, align 4, !tbaa !252
  %i.en = fcmp ogt float %i.ek, %i.em
  br i1 %i.en, label %_ZN5ImGui15TableSetBgColorEiji.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 156
  store i32 0, ptr %i.eo, align 4, !tbaa !299
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

_ZN5ImGui15TableSetBgColorEiji.exit:              ; preds = %bb.t, %bb.u, %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 3 uses
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.dc, ptr noundef nonnull align 4 dereferenceable(8) %i.ep, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.eq = load float, ptr %i.dc, align 8, !tbaa !671
  store float %i.eq, ptr %6, align 4, !tbaa !228
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.de, ptr %i.er, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.es = load float, ptr %i.ep, align 8, !tbaa !672
  store float %i.es, ptr %7, align 4, !tbaa !228
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.di, ptr %i.et, align 4, !tbaa !229
  %26 = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 46, float noundef 2.500000e-01)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %26, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.eu = load float, ptr %i.dd, align 4, !tbaa !454
  store float %.0173, ptr %8, align 4, !tbaa !228
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.eu, ptr %i.ev, align 4, !tbaa !229
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.ep, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  %i.ew = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %0)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 4560
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !673
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 68
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !674
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 4576
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !675
  %i.fd = fmul float %i.fa, %i.fc
  %i.fe = load float, ptr %i.bd, align 8, !tbaa !340
  %i.ff = fsub float %i.fe, %i.fd
  %i.fg = fmul float %i.ff, 5.000000e-01          ; 2 uses
  %i.fh = fcmp oge float %i.fg, 0.000000e+00
  %i.fi = select i1 %i.fh, float %i.fg, float 0.000000e+00
  %i.fj = fdiv float %i.fi, %i.bj
  %i.fk = select i1 %i.ay, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.fl = fmul float %i.fk, %i.fj
  %.sroa.066.0.copyload = load float, ptr %i.bf, align 4, !tbaa !177 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !177 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 3408
  %.sroa.065.0.copyload = load float, ptr %i.fm, align 8, !tbaa !177
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !177
  %i.fn = icmp sgt i32 %4, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa_idx210 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa_idx207 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.fv = fneg float %.sroa.066.0.copyload
  %i.fw = fsub float %.0169, %.sroa.5.0.copyload  ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 620
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.gc = fmul float %16, %.sroa.066.0.copyload
  %i.gd = call float @llvm.fabs.f32(float %i.gc)
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.gg = insertelement <2 x float> poison, float %17, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %16, i64 1 ; 2 uses
  %i.gi = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x float> %i.gh, %i.gj           ; 2 uses
  %i.gl = extractelement <2 x float> %i.gk, i64 0
  %i.gm = call float @llvm.fabs.f32(float %i.gl)
  %i.gn = fneg float %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 530
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  br i1 %i.fn, label %.preheader.us.preheader, label %.split.us

.preheader.us.preheader:                          ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.gv = extractelement <2 x float> %i.bx, i64 0
  %i.gw = insertelement <2 x float> poison, float %i.fw, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.gx = phi i1 [ false, %._crit_edge.us ], [ true, %.preheader.us.preheader ] ; 2 uses
  %i.gy = phi i1 [ true, %._crit_edge.us ], [ false, %.preheader.us.preheader ]
  %.0172232.us = phi float [ %.2.us247, %._crit_edge.us ], [ f0xFF7FFFFF, %.preheader.us.preheader ]
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us, %.loopexit.us.thread
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %.loopexit.us.thread ] ; 3 uses
  %.1228.us = phi float [ %.0172232.us, %.preheader.us ], [ %.2.us247, %.loopexit.us.thread ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 4 uses
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !677 ; 4 uses
  %i.hb = load ptr, ptr %i.fo, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false), !tbaa !177
  %i.hc = sext i16 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [120 x i8], ptr %i.hb, i64 %i.hc ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 12 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !374 ; 2 uses
  %i.hg = load i32, ptr %i.dl, align 4, !tbaa !449 ; 3 uses
  store i32 %i.hf, ptr %9, align 16, !tbaa !177
  store i32 %i.hg, ptr %.sroa_idx210, align 4, !tbaa !177
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !375 ; 2 uses
  store i32 %i.hi, ptr %i.fp, align 8, !tbaa !177
  store i32 %i.hg, ptr %.sroa_idx207, align 4, !tbaa !177
  %i.hj = insertelement <2 x i32> poison, i32 %i.hi, i64 0
  %i.hk = insertelement <2 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = bitcast <2 x i32> %i.hk to <2 x float>
  %i.hm = fadd <2 x float> %i.bx, %i.hl           ; 2 uses
  store <2 x float> %i.hm, ptr %i.fq, align 16, !tbaa !177
  %i.hn = bitcast i32 %i.hf to float
  %i.ho = fadd float %i.gv, %i.hn
  %i.hp = insertelement <2 x float> %i.hm, float %i.ho, i64 0
  store <2 x float> %i.hp, ptr %i.fr, align 8, !tbaa !177
  br i1 %i.gx, label %bb.x, label %.loopexit.us

bb.x:                                             ; preds = %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !678
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fp, ptr noundef nonnull align 4 dereferenceable(8) %i.fq, ptr noundef nonnull align 4 dereferenceable(8) %i.fr, i32 noundef %i.hr)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !679
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.fp, ptr noundef nonnull align 4 dereferenceable(8) %i.fq, ptr noundef nonnull align 4 dereferenceable(8) %i.fr, i32 noundef %i.ht)
  %i.hu = load float, ptr %i.fr, align 8, !tbaa !228 ; 2 uses
  %i.hv = fcmp oge float %.1228.us, %i.hu
  %i.hw = select i1 %i.hv, float %.1228.us, float %i.hu ; 2 uses
  %i.hx = load i8, ptr %i.fs, align 1, !tbaa !222, !range !175, !noundef !176
  %i.hy = icmp eq i8 %i.hx, 0
  br i1 %i.hy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hz = load i16, ptr %i.ft, align 2, !tbaa !257
  %.not.i188.us = icmp slt i16 %i.ha, %i.hz
  br i1 %.not.i188.us, label %bb.z, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ia = load ptr, ptr %i.fo, align 8, !tbaa !271
  %i.ib = getelementptr inbounds [120 x i8], ptr %i.ia, i64 %i.hc
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !345 ; 2 uses
  %i.ie = icmp eq i16 %i.id, -1
  br i1 %i.ie, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = load ptr, ptr %i.fu, align 8, !tbaa !319
  %i.ig = sext i16 %i.id to i64
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us: ; preds = %bb.aa, %bb.z, %bb.y
  %.1.i187.us = phi ptr [ @.str.11, %bb.y ], [ %i.ih, %bb.aa ], [ @.str.11, %bb.z ] ; 4 uses
  %i.ii = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %.1.i187.us, ptr noundef null) ; 4 uses
  %i.ij = load float, ptr %i.bd, align 8, !tbaa !340
  %i.ik = fdiv float %i.ij, %i.bj                 ; 6 uses
  %i.il = call noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef %.1.i187.us, ptr noundef %i.ii) ; 2 uses
  %i.im = load float, ptr %i.he, align 4, !tbaa !374
  %i.in = load float, ptr %i.hh, align 4, !tbaa !375
  %i.io = fsub float %i.im, %i.in
  %i.ip = call float @llvm.fmuladd.f32(float %i.fv, float 2.000000e+00, float %i.io)
  %i.iq = sitofp i32 %i.il to float               ; 2 uses
  %i.ir = fneg float %i.iq
  %i.is = call float @llvm.fmuladd.f32(float %i.ir, float %i.ik, float %i.ip) ; 2 uses
  %i.it = fcmp oge float %i.is, 0.000000e+00
  %i.iu = select i1 %i.it, float %i.is, float 0.000000e+00
  %i.iv = fmul float %.sroa.065.0.copyload, %i.iu ; 3 uses
  %i.iw = fcmp ult float %i.iv, 0.000000e+00
  %i.ix = fptosi float %i.iv to i32               ; 2 uses
  %i.iy = sitofp i32 %i.ix to float
  %i.iz = fcmp une float %i.iv, %i.iy
  %or.cond.not.i.us = and i1 %i.iw, %i.iz
  %i.ja = sext i1 %or.cond.not.i.us to i32
  %i.jb = add nsw i32 %i.ja, %i.ix
  %i.jc = sitofp i32 %i.jb to float               ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hd, i64 60 ; 3 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !351
  %i.jf = fneg float %i.jc
  %i.jg = call float @llvm.fmuladd.f32(float %i.iq, float %i.ik, float %i.jf)
  %i.jh = call float @llvm.ceil.f32(float %i.jg)
  %i.ji = fadd float %i.je, %i.jh                 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hd, i64 84
  store float %i.ji, ptr %i.jj, align 4, !tbaa !352
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  store float %i.ji, ptr %i.jk, align 4, !tbaa !458
  %i.jl = icmp ult ptr %.1.i187.us, %i.ii
  br i1 %i.jl, label %.lr.ph.us, label %.loopexit.us.thread

bb.ab:                                            ; preds = %.lr.ph.us, %bb.ad
  %.0167227.us = phi float [ %i.mm, %.lr.ph.us ], [ %i.kt, %bb.ad ] ; 2 uses
  %.0168226.us = phi ptr [ %.1.i187.us, %.lr.ph.us ], [ %i.lj, %bb.ad ] ; 3 uses
  %i.jm = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0168226.us, i32 noundef 10) #26 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, null
  %spec.select.us = select i1 %i.jn, ptr %i.ii, ptr %i.jm ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.jo = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %.0168226.us, ptr noundef nonnull %spec.select.us, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.jo, ptr %10, align 8
  %i.jp = extractelement <2 x float> %i.jo, i64 1 ; 2 uses
  %i.jq = load float, ptr %i.mn, align 4, !tbaa !384
  %i.jr = load float, ptr %i.jd, align 4, !tbaa !351
  %i.js = fsub float %i.jq, %i.jr
  %i.jt = fsub float %i.js, %.0167227.us          ; 2 uses
  %i.ju = fcmp olt float %i.jp, %i.jt
  %i.jv = select i1 %i.ju, float %i.jp, float %i.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.jw = load <2 x float>, ptr %i.fy, align 8, !tbaa !177 ; 2 uses
  %i.jx = insertelement <2 x float> %i.gw, float %i.jv, i64 1
  %i.jy = fadd <2 x float> %i.jx, %i.jw
  store <2 x float> %i.jw, ptr %11, align 8, !tbaa !177
  store <2 x float> %i.jy, ptr %i.ga, align 8, !tbaa !177
  %i.jz = load i32, ptr %i.gb, align 4, !tbaa !680
  %i.ka = load i32, ptr %i.mo, align 4, !tbaa !681
  call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 0, i32 noundef %i.ka)
  %i.kb = load float, ptr %i.ga, align 8, !tbaa !358
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.ga, float noundef %i.kb, ptr noundef nonnull %.0168226.us, ptr noundef nonnull %spec.select.us, ptr noundef nonnull %10)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  %i.kc = load i32, ptr %i.gb, align 4, !tbaa !680
  %i.kd = load float, ptr %10, align 8, !tbaa !228
  %i.ke = fsub float %i.fw, %i.kd                 ; 3 uses
  %i.kf = call float @llvm.fmuladd.f32(float %i.gd, float 2.000000e+00, float %i.ke)
  %i.kg = call float @llvm.fmuladd.f32(float %i.gn, float 2.000000e+00, float %i.kf) ; 2 uses
  %i.kh = fcmp oge float %i.kg, 0.000000e+00
  %i.ki = select i1 %i.kh, float %i.kg, float 0.000000e+00
  %i.kj = fmul float %.sroa.4.0.copyload, %i.ki
  %i.kk = fmul float %i.fk, %i.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.kl = load float, ptr %i.fy, align 8, !tbaa !682
  %i.km = fsub float %i.kl, %i.kk
  %i.kn = load float, ptr %i.fz, align 4, !tbaa !472
  %i.ko = load float, ptr %i.fx, align 4, !tbaa !229
  %i.kp = fadd float %i.kn, %i.ko
  store float %i.km, ptr %12, align 4, !tbaa !228
  store float %i.kp, ptr %i.ge, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.kq = load float, ptr %i.jd, align 4, !tbaa !351
  %i.kr = load <4 x float>, ptr %5, align 16
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.kt = fadd float %i.mq, %.0167227.us          ; 3 uses
  %i.ku = insertelement <2 x float> %i.ks, float %i.kq, i64 1
  %i.kv = fadd <2 x float> %i.gk, %i.ku           ; 2 uses
  br i1 %i.ay, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kw = fcmp ole float %i.ke, 0.000000e+00
  %i.kx = select i1 %i.kw, float 0.000000e+00, float %i.ke
  %i.ky = fsub float %i.fw, %i.kx
  %i.kz = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x float> %i.gh, %i.la
  %i.lc = fadd <2 x float> %i.lb, %i.kv
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ld = phi <2 x float> [ %i.lc, %bb.ac ], [ %i.kv, %bb.ab ] ; 2 uses
  %i.le = extractelement <2 x float> %i.ld, i64 0
  store float %i.le, ptr %i.gf, align 4, !tbaa !229
  %i.lf = fadd float %i.ik, %i.kt
  %i.lg = select i1 %i.ay, float %i.lf, float %i.kt
  %i.lh = extractelement <2 x float> %i.ld, i64 1
  %i.li = fadd float %i.lg, %i.lh
  store float %i.li, ptr %13, align 4, !tbaa !228
  call void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef nonnull %i.g, i32 noundef %i.jz, i32 noundef %i.kc, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.bb, float noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(8) %13)
  %i.lj = getelementptr inbounds nuw i8, ptr %spec.select.us, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  %i.lk = icmp ult ptr %i.lj, %i.ii
  br i1 %i.lk, label %bb.ab, label %.loopexit.us, !llvm.loop !668

.loopexit.us:                                     ; preds = %bb.ad, %bb.w
  %.2.us = phi float [ %.1228.us, %bb.w ], [ %i.hw, %bb.ad ] ; 2 uses
  br i1 %i.gy, label %bb.ae, label %.loopexit.us.thread

bb.ae:                                            ; preds = %.loopexit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.ll = load <2 x float>, ptr %9, align 16, !tbaa !177
  %i.lm = fadd <2 x float> %i.ll, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %i.lm, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #4
  %i.ln = load <2 x float>, ptr %i.fr, align 8, !tbaa !177
  %i.lo = fadd <2 x float> %i.ln, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %i.lo, ptr %15, align 8
  %i.lp = load i16, ptr %i.go, align 4, !tbaa !297
  %i.lq = icmp eq i16 %i.ha, %i.lp
  %i.lr = load i16, ptr %i.gp, align 2, !tbaa !293
  %i.ls = icmp eq i16 %i.ha, %i.lr
  br i1 %i.ls, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lt = load i16, ptr %i.gq, align 2, !tbaa !290
  %i.lu = load i16, ptr %i.gr, align 8, !tbaa !216
  %i.lv = icmp eq i16 %i.lt, %i.lu
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.lw = phi i1 [ false, %bb.ae ], [ %i.lv, %bb.af ] ; 2 uses
  %or.cond.i.us = select i1 %i.lw, i1 true, i1 %i.lq
  br i1 %or.cond.i.us, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lx = load i16, ptr %i.dp, align 2, !tbaa !370
  %i.ly = add nuw nsw i64 %indvars.iv, 1
  %i.lz = sext i16 %i.lx to i64
  %i.ma = icmp eq i64 %i.ly, %i.lz
  br i1 %i.ma, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mb = load i32, ptr %i.gs, align 4, !tbaa !217
  %i.mc = and i32 %i.mb, 6144
  %.not.i199.us = icmp eq i32 %i.mc, 0
  br i1 %.not.i199.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.md = load i32, ptr %i.gt, align 8, !tbaa !262
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.me = load i32, ptr %i.gu, align 4, !tbaa !261
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.al:                                            ; preds = %bb.ag
  %i.mf = select i1 %i.lw, i32 30, i32 29
  %i.mg = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.mf, float noundef 1.000000e+00)
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us: ; preds = %bb.al, %bb.ak, %bb.aj
  %.0.i.us = phi i32 [ %i.mg, %bb.al ], [ %i.me, %bb.ak ], [ %i.md, %bb.aj ]
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %.0.i.us, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us, %.loopexit.us
  %.2.us247 = phi float [ %.2.us, %.loopexit.us ], [ %.2.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us ], [ %i.hw, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.w, !llvm.loop !669

.lr.ph.us:                                        ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us
  %i.mh = add nsw i32 %i.il, -1
  %i.mi = sitofp i32 %i.mh to float
  %i.mj = fmul float %i.ik, %i.mi
  %i.mk = select i1 %i.ay, float %i.mj, float 0.000000e+00
  %i.ml = fsub float %i.jc, %i.fl
  %i.mm = fadd float %i.mk, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.hd, i64 44
  %i.mo = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.mp = fneg float %i.ik
  %i.mq = select i1 %i.ay, float %i.mp, float %i.ik
  br label %bb.ab

._crit_edge.us:                                   ; preds = %.loopexit.us.thread
  br i1 %i.gx, label %.preheader.us, label %.split.us, !llvm.loop !670

.split.us:                                        ; preds = %._crit_edge.us, %_ZN5ImGui15TableSetBgColorEiji.exit
  %.us-phi = phi float [ f0xFF7FFFFF, %_ZN5ImGui15TableSetBgColorEiji.exit ], [ %.2.us247, %._crit_edge.us ]
  call void @_ZN5ImGui11PopClipRectEv()
  call void @_ZN5ImGui11PopClipRectEv()
  %i.mr = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.ms = load i16, ptr %i.mr, align 8, !tbaa !354
  %i.mt = load ptr, ptr %i.fo, align 8, !tbaa !271
  %i.mu = sext i16 %i.ms to i64
  %i.mv = getelementptr inbounds [120 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !374
  %i.my = fsub float %.us-phi, %i.mx              ; 2 uses
  %i.mz = fcmp ole float %i.my, 0.000000e+00
  %i.na = select i1 %i.mz, float 0.000000e+00, float %i.my
  %i.nb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !207
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store float %i.na, ptr %i.nd, align 4, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.am

bb.am:                                            ; preds = %.split.us, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

declare void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui11KeepAliveIDEj(i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11PopClipRectEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui7EndMenuEv() local_unnamed_addr #2

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #2

declare void @_ZN5ImGui12PushItemFlagEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11PopItemFlagEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10120 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !310  ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0812.i = phi ptr [ %i.k, %select.unfold.i ], [ %i.e, %.lr.ph.i.preheader ] ; 12 uses
  %i.f = load i32, ptr %.0812.i, align 4, !tbaa !312
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %_ZN5ImGui21TableSettingsFindByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !299
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %.0812.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !313
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = icmp eq ptr %i.k, %i.o
  br i1 %i.p, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i

_ZN5ImGui21TableSettingsFindByIDEj.exit:          ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0812.i, i64 14 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !461  ; 6 uses
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %.not21 = icmp sgt i32 %1, %i.s
  br i1 %.not21, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.0812.i, i8 0, i64 20, i1 false)
  %i.t = icmp sgt i16 %i.r, 0
  br i1 %i.t, label %.lr.ph.preheader.i, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %.0812.i, i64 20 ; 2 uses
  %i.v = icmp eq i16 %i.r, 1
  br i1 %i.v, label %.lr.ph.i22.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.s, 32766
  br label %.lr.ph.i22

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i22
  %i.w = and i16 %i.r, 1
  %lcmp.mod.not = icmp eq i16 %i.w, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %.01517.i.epil.init = phi ptr [ %i.u, %.lr.ph.preheader.i ], [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ] ; 6 uses
  %lcmp.mod49 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  store float 0.000000e+00, ptr %.01517.i.epil.init, align 4, !tbaa !412
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !411
  %i.y = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 8
  store i16 -1, ptr %i.y, align 4, !tbaa !462
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 12
  store i16 -1, ptr %i.z, align 4, !tbaa !413
  %i.aa = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 10
  store i16 -1, ptr %i.aa, align 2, !tbaa !463
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 14 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = and i8 %i.ac, -64
  %i.ae = or disjoint i8 %i.ad, 12
  store i8 %i.ae, ptr %i.ab, align 2
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i22.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0812.i, i64 18
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2
  %i.af = or i8 %.pre.i, 1
  br label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.i22:                                       ; preds = %.lr.ph.i22, %.lr.ph.preheader.i.new
  %.01517.i = phi ptr [ %i.u, %.lr.ph.preheader.i.new ], [ %i.ax, %.lr.ph.i22 ] ; 13 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i22 ]
  store float 0.000000e+00, ptr %.01517.i, align 4, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !411
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i16 -1, ptr %i.ah, align 4, !tbaa !462
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i, i64 12
  store i16 -1, ptr %i.ai, align 4, !tbaa !413
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i, i64 10
  store i16 -1, ptr %i.aj, align 2, !tbaa !463
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i, i64 14 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = and i8 %i.al, -64
  %i.an = or disjoint i8 %i.am, 12
  store i8 %i.an, ptr %i.ak, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !412
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i, i64 20
  store i32 0, ptr %i.ap, align 4, !tbaa !411
  %i.aq = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24
  store i16 -1, ptr %i.aq, align 4, !tbaa !462
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i, i64 28
  store i16 -1, ptr %i.ar, align 4, !tbaa !413
  %i.as = getelementptr inbounds nuw i8, ptr %.01517.i, i64 26
  store i16 -1, ptr %i.as, align 2, !tbaa !463
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i, i64 30 ; 2 uses
  %i.au = load i8, ptr %i.at, align 2
  %i.av = and i8 %i.au, -64
  %i.aw = or disjoint i8 %i.av, 12
  store i8 %i.aw, ptr %i.at, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i22, !llvm.loop !683

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit: ; preds = %.critedge, %._crit_edge.loopexit.i
  %i.ay = phi i8 [ %i.af, %._crit_edge.loopexit.i ], [ 1, %.critedge ]
  store i32 %0, ptr %.0812.i, align 4, !tbaa !312
  %i.az = trunc i32 %1 to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0812.i, i64 12
  store i16 %i.az, ptr %i.ba, align 4, !tbaa !314
  store i16 %i.r, ptr %i.q, align 2, !tbaa !461
  %i.bb = getelementptr inbounds nuw i8, ptr %.0812.i, i64 18
  store i8 %i.ay, ptr %i.bb, align 2
  br label %bb.g

bb.b:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  store i32 0, ptr %.0812.i, align 4, !tbaa !312
  br label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

_ZN5ImGui21TableSettingsFindByIDEj.exit.thread:   ; preds = %select.unfold.i, %bb.a, %bb.b
  %i.bc = shl i32 %1, 4
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !313 ; 2 uses
  %i.be = add i32 %i.bc, 24                       ; 2 uses
  %i.bf = add nsw i32 %i.bd, %i.be                ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 10124 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !318 ; 4 uses
  %i.bi = icmp sgt i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.c, label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

bb.c:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = sdiv i32 %i.bh, 2
  %i.bk = add nsw i32 %i.bj, %i.bh
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.d, %bb.c
  %i.bl = phi i32 [ %i.bk, %bb.d ], [ 8, %bb.c ]
  %i.bm = tail call noundef i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bf) ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bn) ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui10EndColumnsEv:bb.a
  %i.dp = load float, ptr %i.do, align 4, !tbaa !487
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  store float %i.dp, ptr %i.dq, align 4, !tbaa !491
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !724

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph92
  %indvars.iv96.epil.init = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next97.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv96.epil = phi i64 [ %indvars.iv96.epil.init, %.epil.preheader ], [ %indvars.iv.next97.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dr = getelementptr inbounds nuw [28 x i8], ptr %i.cz, i64 %indvars.iv96.epil ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !487
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store float %i.ds, ptr %i.dt, align 4, !tbaa !491
  %indvars.iv.next97.epil = add nuw nsw i64 %indvars.iv96.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !725

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.r, %bb.p
  store i8 1, ptr %i.cv, align 1, !tbaa !490
  %i.du = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 5312
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !149 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 272
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !367
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 5456
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !442
  %i.eb = fsub float %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 4584
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !424
  %i.ee = fmul float %i.ed, 4.000000e+00
  %i.ef = fptosi float %i.ee to i32
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fadd float %i.eb, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !441
  %i.ek = fsub float %i.eh, %i.ej                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 456
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !477 ; 9 uses
  %i.en = icmp eq ptr %i.em, null                 ; 2 uses
  br i1 %i.en, label %_ZN5ImGui15GetColumnOffsetEi.exit.i, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.eo = add nsw i32 %.2, -1
  %i.ep = icmp slt i32 %.2, 1
  br i1 %i.ep, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !481
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.010.i.i = phi i32 [ %i.er, %bb.t ], [ %i.eo, %bb.s ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !485
  %i.eu = sext i32 %.010.i.i to i64
  %i.ev = getelementptr inbounds [28 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !487
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !484 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !483
  %i.fb = fsub float %i.fa, %i.ey
  %i.fc = call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.ew, float %i.ey)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit.i

_ZN5ImGui15GetColumnOffsetEi.exit.i:              ; preds = %bb.u, %.loopexit
  %.0.i.i = phi float [ %i.fc, %bb.u ], [ 0.000000e+00, %.loopexit ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.du, i64 3336
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !489 ; 2 uses
  %i.ff = fadd float %.0.i.i, %i.fe               ; 2 uses
  %i.fg = fcmp oge float %i.ek, %i.ff
  %i.fh = select i1 %i.fg, float %i.ek, float %i.ff ; 3 uses
  %i.fi = load i32, ptr %i.o, align 4, !tbaa !488
  %i.fj = and i32 %i.fi, 4
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i
  br i1 %i.en, label %_ZN5ImGui15GetColumnOffsetEi.exit14.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fk = add nuw nsw i32 %.2, 1
  %i.fl = icmp slt i32 %.2, -1
  br i1 %i.fl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !481
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.010.i12.i = phi i32 [ %i.fn, %bb.x ], [ %i.fk, %bb.w ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !485
  %i.fq = sext i32 %.010.i12.i to i64
  %i.fr = getelementptr inbounds [28 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !487
  %i.ft = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !484 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !483
  %i.fx = fsub float %i.fw, %i.fu
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.fs, float %i.fu)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit14.i

_ZN5ImGui15GetColumnOffsetEi.exit14.i:            ; preds = %bb.y, %bb.v
  %.0.i13.i = phi float [ %i.fy, %bb.y ], [ 0.000000e+00, %bb.v ]
  %i.fz = fsub float %.0.i13.i, %i.fe             ; 2 uses
  %i.ga = fcmp olt float %i.fh, %i.fz
  %i.gb = select i1 %i.ga, float %i.fh, float %i.fz
  br label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit

_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit: ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i, %_ZN5ImGui15GetColumnOffsetEi.exit14.i
  %.0.i81 = phi float [ %i.gb, %_ZN5ImGui15GetColumnOffsetEi.exit14.i ], [ %i.fh, %_ZN5ImGui15GetColumnOffsetEi.exit.i ]
  call void @_ZN5ImGui15SetColumnOffsetEif(i32 noundef %.2, float noundef %.0.i81)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, %bb.g, %bb.f, %bb.e
  %.175 = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %._crit_edge ], [ 1, %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit ], [ 0, %bb.g ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 %.175, ptr %i.gd, align 1, !tbaa !490
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 600 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !230
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !230
  store ptr null, ptr %i.g, align 8, !tbaa !477
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store float 0.000000e+00, ptr %i.gh, align 8, !tbaa !468
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !441
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 348
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !234
  %i.gm = fadd float %i.gj, %i.gl
  %i.gn = fptosi float %i.gm to i32
  %i.go = sitofp i32 %i.gn to float
  store float %i.go, ptr %i.gc, align 8, !tbaa !426
  call void @_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui7ColumnsEiPKcb(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !173
  %not. = xor i1 %2, true
  %i.e = zext i1 %not. to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !477  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !482
  %i.j = icmp eq i32 %i.i, %0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !488
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

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

declare noundef float @_ZN16ImGuiMenuColumns11DeclColumnsEffff(ptr noundef nonnull align 4 dereferenceable(26), float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui15RenderCheckMarkEP10ImDrawList6ImVec2jf(ptr noundef, <2 x float>, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11EndDisabledEv() local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #21

declare noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() local_unnamed_addr #2

declare noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10ImGuiTableD2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.b)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !431  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN8ImVectorI25ImGuiTableColumnSortSpecsED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.d)
          to label %_ZN8ImVectorI25ImGuiTableColumnSortSpecsED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZN8ImVectorI25ImGuiTableColumnSortSpecsED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !226  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZN8ImVectorI22ImGuiTableInstanceDataED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8ImVectorI25ImGuiTableColumnSortSpecsED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.h)
          to label %_ZN8ImVectorI22ImGuiTableInstanceDataED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZN8ImVectorI22ImGuiTableInstanceDataED2Ev.exit:  ; preds = %_ZN8ImVectorI25ImGuiTableColumnSortSpecsED2Ev.exit, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !319  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextBufferD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8ImVectorI22ImGuiTableInstanceDataED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.l)
          to label %_ZN15ImGuiTextBufferD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #25
  unreachable

_ZN15ImGuiTextBufferD2Ev.exit:                    ; preds = %_ZN8ImVectorI22ImGuiTableInstanceDataED2Ev.exit, %bb.g
  ret void

bb.i:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable
}

declare void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v4i16(<4 x i16>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !190}
!1 = distinct !{!1, !190}
!2 = distinct !{!2, !190}
!3 = distinct !{!3, !190}
!4 = distinct !{!4, !190}
!5 = distinct !{!5, !190}
!6 = distinct !{!6, !190}
!7 = distinct !{!7, !190}
!8 = distinct !{!8, !190}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 _ZTS12ImGuiContext", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTS10ImGuiTable", !17, i64 0}
!21 = !{!"_ZTS8ImVectorI10ImGuiTableE", !14, i64 0, !14, i64 4, !20, i64 8}
!22 = !{!21, !20, i64 8}
!23 = !{!"bool", !13, i64 0}
!24 = !{!"double", !13, i64 0}
!25 = !{!"float", !13, i64 0}
!26 = !{!"_ZTS6ImVec2", !25, i64 0, !25, i64 4}
!27 = !{!"p1 omnipotent char", !17, i64 0}
!28 = !{!"p1 _ZTS11ImFontAtlas", !17, i64 0}
!29 = !{!"p1 _ZTS6ImFont", !17, i64 0}
!30 = !{!"_ZTS16ImGuiMouseSource", !13, i64 0}
!31 = !{!"short", !13, i64 0}
!32 = !{!"p1 short", !17, i64 0}
!33 = !{!"_ZTS8ImVectorItE", !14, i64 0, !14, i64 4, !32, i64 8}
!34 = !{!"_ZTS7ImGuiIO", !14, i64 0, !14, i64 4, !26, i64 8, !26, i64 16, !25, i64 24, !25, i64 28, !27, i64 32, !27, i64 40, !17, i64 48, !28, i64 56, !29, i64 64, !23, i64 72, !23, i64 73, !23, i64 74, !23, i64 75, !23, i64 76, !23, i64 77, !23, i64 78, !23, i64 79, !23, i64 80, !23, i64 81, !23, i64 82, !23, i64 83, !14, i64 84, !23, i64 88, !23, i64 89, !23, i64 90, !23, i64 91, !23, i64 92, !23, i64 93, !14, i64 96, !23, i64 100, !23, i64 101, !25, i64 104, !25, i64 108, !25, i64 112, !25, i64 116, !25, i64 120, !25, i64 124, !25, i64 128, !23, i64 132, !23, i64 133, !23, i64 134, !23, i64 135, !23, i64 136, !23, i64 137, !23, i64 138, !23, i64 139, !23, i64 140, !23, i64 141, !27, i64 144, !27, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !23, i64 184, !23, i64 185, !23, i64 186, !23, i64 187, !23, i64 188, !23, i64 189, !23, i64 190, !25, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !14, i64 208, !26, i64 212, !18, i64 224, !26, i64 232, !13, i64 240, !25, i64 248, !25, i64 252, !30, i64 256, !23, i64 260, !23, i64 261, !23, i64 262, !23, i64 263, !14, i64 264, !13, i64 268, !23, i64 2748, !26, i64 2752, !13, i64 2760, !13, i64 2800, !13, i64 2840, !13, i64 2845, !13, i64 2850, !13, i64 2860, !13, i64 2870, !13, i64 2880, !13, i64 2920, !13, i64 2925, !23, i64 2930, !23, i64 2931, !13, i64 2932, !13, i64 2952, !13, i64 2972, !25, i64 2992, !23, i64 2996, !23, i64 2997, !31, i64 2998, !33, i64 3000, !25, i64 3016, !17, i64 3024, !17, i64 3032, !17, i64 3040}
!35 = !{!"any p2 pointer", !17, i64 0}
!36 = !{!"p2 _ZTS13ImTextureData", !35, i64 0}
!37 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !14, i64 0, !14, i64 4, !36, i64 8}
!38 = !{!"_ZTS15ImGuiPlatformIO", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !31, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !37, i64 104}
!39 = !{!"_ZTS8ImGuiDir", !13, i64 0}
!40 = !{!"_ZTS10ImGuiStyle", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !26, i64 20, !25, i64 28, !25, i64 32, !25, i64 36, !26, i64 40, !26, i64 48, !39, i64 56, !25, i64 60, !25, i64 64, !25, i64 68, !25, i64 72, !26, i64 76, !25, i64 84, !25, i64 88, !26, i64 92, !26, i64 100, !26, i64 108, !26, i64 116, !25, i64 124, !25, i64 128, !25, i64 132, !25, i64 136, !25, i64 140, !25, i64 144, !25, i64 148, !25, i64 152, !25, i64 156, !25, i64 160, !25, i64 164, !25, i64 168, !25, i64 172, !25, i64 176, !25, i64 180, !25, i64 184, !25, i64 188, !25, i64 192, !25, i64 196, !26, i64 200, !14, i64 208, !25, i64 212, !25, i64 216, !25, i64 220, !25, i64 224, !25, i64 228, !25, i64 232, !25, i64 236, !25, i64 240, !39, i64 244, !26, i64 248, !26, i64 256, !25, i64 264, !25, i64 268, !25, i64 272, !26, i64 276, !26, i64 284, !26, i64 292, !26, i64 300, !25, i64 308, !23, i64 312, !23, i64 313, !23, i64 314, !25, i64 316, !25, i64 320, !13, i64 324, !25, i64 1300, !25, i64 1304, !25, i64 1308, !14, i64 1312, !14, i64 1316, !25, i64 1320, !25, i64 1324}
!41 = !{!"p2 _ZTS11ImFontAtlas", !35, i64 0}
!42 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !14, i64 0, !14, i64 4, !41, i64 8}
!43 = !{!"p1 _ZTS11ImFontBaked", !17, i64 0}
!44 = !{!"p1 _ZTS6ImVec4", !17, i64 0}
!45 = !{!"_ZTS6ImVec4", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!46 = !{!"p1 _ZTS6ImVec2", !17, i64 0}
!47 = !{!"_ZTS8ImVectorI6ImVec2E", !14, i64 0, !14, i64 4, !46, i64 8}
!48 = !{!"p2 _ZTS10ImDrawList", !35, i64 0}
!49 = !{!"_ZTS8ImVectorIP10ImDrawListE", !14, i64 0, !14, i64 4, !48, i64 8}
!50 = !{!"_ZTS20ImDrawListSharedData", !26, i64 0, !44, i64 8, !28, i64 16, !29, i64 24, !25, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !25, i64 48, !14, i64 52, !45, i64 56, !47, i64 72, !49, i64 88, !18, i64 104, !13, i64 112, !25, i64 496, !13, i64 500}
!51 = !{!"p1 _ZTS15ImGuiInputEvent", !17, i64 0}
!52 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !14, i64 0, !14, i64 4, !51, i64 8}
!53 = !{!"p2 _ZTS11ImGuiWindow", !35, i64 0}
!54 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !14, i64 0, !14, i64 4, !53, i64 8}
!55 = !{!"p1 _ZTS20ImGuiWindowStackData", !17, i64 0}
!56 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !14, i64 0, !14, i64 4, !55, i64 8}
!57 = !{!"p1 _ZTS16ImGuiStoragePair", !17, i64 0}
!58 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !14, i64 0, !14, i64 4, !57, i64 8}
!59 = !{!"_ZTS12ImGuiStorage", !58, i64 0}
!60 = !{!"p1 _ZTS11ImGuiWindow", !17, i64 0}
!61 = !{!"_ZTS16ImGuiInputSource", !13, i64 0}
!62 = !{!"_ZTS24ImGuiDeactivatedItemData", !14, i64 0, !14, i64 4, !23, i64 8, !23, i64 9}
!63 = !{!"_ZTS20ImGuiDataTypeStorage", !13, i64 0}
!64 = !{!"_ZTS10ImBitArrayILi155ELin512EE", !13, i64 0}
!65 = !{!"p1 _ZTS19ImGuiKeyRoutingData", !17, i64 0}
!66 = !{!"_ZTS8ImVectorI19ImGuiKeyRoutingDataE", !14, i64 0, !14, i64 4, !65, i64 8}
!67 = !{!"_ZTS20ImGuiKeyRoutingTable", !13, i64 0, !66, i64 312, !66, i64 328}
!68 = !{!"long long", !13, i64 0}
!69 = !{!"_ZTS17ImGuiNextItemData", !14, i64 0, !14, i64 4, !14, i64 8, !68, i64 16, !25, i64 24, !14, i64 28, !14, i64 32, !23, i64 36, !13, i64 37, !63, i64 38, !14, i64 48, !14, i64 52}
!70 = !{!"_ZTS6ImRect", !26, i64 0, !26, i64 8}
!71 = !{!"_ZTS17ImGuiLastItemData", !14, i64 0, !14, i64 4, !14, i64 8, !70, i64 12, !70, i64 28, !70, i64 44, !70, i64 60, !14, i64 76}
!72 = !{!"_ZTS19ImGuiNextWindowData", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !14, i64 56, !14, i64 60, !23, i64 64, !70, i64 68, !17, i64 88, !17, i64 96, !25, i64 104, !26, i64 108, !14, i64 116}
!73 = !{!"p1 _ZTS13ImGuiColorMod", !17, i64 0}
!74 = !{!"_ZTS8ImVectorI13ImGuiColorModE", !14, i64 0, !14, i64 4, !73, i64 8}
!75 = !{!"p1 _ZTS13ImGuiStyleMod", !17, i64 0}
!76 = !{!"_ZTS8ImVectorI13ImGuiStyleModE", !14, i64 0, !14, i64 4, !75, i64 8}
!77 = !{!"p1 _ZTS15ImFontStackData", !17, i64 0}
!78 = !{!"_ZTS8ImVectorI15ImFontStackDataE", !14, i64 0, !14, i64 4, !77, i64 8}
!79 = !{!"p1 _ZTS19ImGuiFocusScopeData", !17, i64 0}
!80 = !{!"_ZTS8ImVectorI19ImGuiFocusScopeDataE", !14, i64 0, !14, i64 4, !79, i64 8}
!81 = !{!"p1 int", !17, i64 0}
!82 = !{!"_ZTS8ImVectorIiE", !14, i64 0, !14, i64 4, !81, i64 8}
!83 = !{!"p1 _ZTS14ImGuiGroupData", !17, i64 0}
!84 = !{!"_ZTS8ImVectorI14ImGuiGroupDataE", !14, i64 0, !14, i64 4, !83, i64 8}
!85 = !{!"p1 _ZTS14ImGuiPopupData", !17, i64 0}
!86 = !{!"_ZTS8ImVectorI14ImGuiPopupDataE", !14, i64 0, !14, i64 4, !85, i64 8}
!87 = !{!"p1 _ZTS22ImGuiTreeNodeStackData", !17, i64 0}
!88 = !{!"_ZTS8ImVectorI22ImGuiTreeNodeStackDataE", !14, i64 0, !14, i64 4, !87, i64 8}
!89 = !{!"p2 _ZTS14ImGuiViewportP", !35, i64 0}
!90 = !{!"_ZTS8ImVectorIP14ImGuiViewportPE", !14, i64 0, !14, i64 4, !89, i64 8}
!91 = !{!"_ZTS13ImGuiNavLayer", !13, i64 0}
!92 = !{!"_ZTS16ImGuiNavItemData", !60, i64 0, !14, i64 8, !14, i64 12, !70, i64 16, !14, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !68, i64 48}
!93 = !{!"_ZTS8ImGuiKey", !13, i64 0}
!94 = !{!"_ZTS12ImGuiPayload", !17, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !13, i64 24, !23, i64 57, !23, i64 58}
!95 = !{!"_ZTS8ImVectorIhE", !14, i64 0, !14, i64 4, !27, i64 8}
!96 = !{!"p1 _ZTS20ImGuiListClipperData", !17, i64 0}
!97 = !{!"_ZTS8ImVectorI20ImGuiListClipperDataE", !14, i64 0, !14, i64 4, !96, i64 8}
!98 = !{!"p1 _ZTS18ImGuiTableTempData", !17, i64 0}
!99 = !{!"_ZTS8ImVectorI18ImGuiTableTempDataE", !14, i64 0, !14, i64 4, !98, i64 8}
!100 = !{!"_ZTS6ImPoolI10ImGuiTableE", !21, i64 0, !59, i64 16, !14, i64 32, !14, i64 36}
!101 = !{!"p1 float", !17, i64 0}
!102 = !{!"_ZTS8ImVectorIfE", !14, i64 0, !14, i64 4, !101, i64 8}
!103 = !{!"p1 _ZTS13ImDrawChannel", !17, i64 0}
!104 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !14, i64 0, !14, i64 4, !103, i64 8}
!105 = !{!"p1 _ZTS11ImGuiTabBar", !17, i64 0}
!106 = !{!"_ZTS8ImVectorI11ImGuiTabBarE", !14, i64 0, !14, i64 4, !105, i64 8}
!107 = !{!"_ZTS6ImPoolI11ImGuiTabBarE", !106, i64 0, !59, i64 16, !14, i64 32, !14, i64 36}
!108 = !{!"p1 _ZTS15ImGuiPtrOrIndex", !17, i64 0}
!109 = !{!"_ZTS8ImVectorI15ImGuiPtrOrIndexE", !14, i64 0, !14, i64 4, !108, i64 8}
!110 = !{!"p1 _ZTS20ImGuiShrinkWidthItem", !17, i64 0}
!111 = !{!"_ZTS8ImVectorI20ImGuiShrinkWidthItemE", !14, i64 0, !14, i64 4, !110, i64 8}
!112 = !{!"_ZTS19ImGuiBoxSelectState", !14, i64 0, !23, i64 4, !23, i64 5, !23, i64 6, !23, i64 7, !23, i64 8, !14, i64 9, !26, i64 12, !26, i64 20, !26, i64 28, !60, i64 40, !23, i64 48, !70, i64 52, !13, i64 68, !70, i64 100, !70, i64 116}
!113 = !{!"p1 _ZTS24ImGuiMultiSelectTempData", !17, i64 0}
!114 = !{!"_ZTS8ImVectorI24ImGuiMultiSelectTempDataE", !14, i64 0, !14, i64 4, !113, i64 8}
!115 = !{!"p1 _ZTS21ImGuiMultiSelectState", !17, i64 0}
!116 = !{!"_ZTS8ImVectorI21ImGuiMultiSelectStateE", !14, i64 0, !14, i64 4, !115, i64 8}
!117 = !{!"_ZTS6ImPoolI21ImGuiMultiSelectStateE", !116, i64 0, !59, i64 16, !14, i64 32, !14, i64 36}
!118 = !{!"p1 _ZTSN5ImStb17STB_TexteditStateE", !17, i64 0}
!119 = !{!"_ZTS8ImVectorIcE", !14, i64 0, !14, i64 4, !27, i64 8}
!120 = !{!"_ZTS19ImGuiInputTextState", !18, i64 0, !118, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !27, i64 32, !119, i64 40, !119, i64 56, !119, i64 72, !14, i64 88, !26, i64 92, !14, i64 100, !25, i64 104, !25, i64 108, !23, i64 112, !23, i64 113, !23, i64 114, !23, i64 115, !23, i64 116, !23, i64 117, !13, i64 118, !14, i64 120, !14, i64 124}
!121 = !{!"_ZTS14ImGuiTextIndex", !82, i64 0, !14, i64 16}
!122 = !{!"_ZTS30ImGuiInputTextDeactivatedState", !14, i64 0, !14, i64 4, !119, i64 8}
!123 = !{!"p1 _ZTS11ImFontGlyph", !17, i64 0}
!124 = !{!"_ZTS8ImVectorI11ImFontGlyphE", !14, i64 0, !14, i64 4, !123, i64 8}
!125 = !{!"_ZTS11ImFontBaked", !102, i64 0, !25, i64 16, !25, i64 20, !25, i64 24, !33, i64 32, !124, i64 48, !14, i64 64, !25, i64 68, !25, i64 72, !14, i64 76, !14, i64 79, !14, i64 79, !14, i64 79, !14, i64 80, !14, i64 84, !29, i64 88, !17, i64 96}
!126 = !{!"_ZTS21ImGuiComboPreviewData", !70, i64 0, !26, i64 16, !26, i64 24, !26, i64 32, !25, i64 40, !14, i64 44}
!127 = !{!"_ZTS8ImVectorIjE", !14, i64 0, !14, i64 4, !81, i64 8}
!128 = !{!"_ZTS24ImGuiTypingSelectRequest", !14, i64 0, !14, i64 4, !27, i64 8, !23, i64 16, !23, i64 17, !13, i64 18}
!129 = !{!"_ZTS22ImGuiTypingSelectState", !128, i64 0, !13, i64 24, !14, i64 88, !14, i64 92, !25, i64 96, !23, i64 100}
!130 = !{!"_ZTS20ImGuiPlatformImeData", !23, i64 0, !23, i64 1, !26, i64 4, !25, i64 12, !14, i64 16}
!131 = !{!"_ZTS15ImGuiPackedDate", !31, i64 0, !31, i64 0, !31, i64 1}
!132 = !{!"_ZTS15ImGuiTextBuffer", !119, i64 0}
!133 = !{!"p1 _ZTS20ImGuiSettingsHandler", !17, i64 0}
!134 = !{!"_ZTS8ImVectorI20ImGuiSettingsHandlerE", !14, i64 0, !14, i64 4, !133, i64 8}
!135 = !{!"_ZTS13ImChunkStreamI19ImGuiWindowSettingsE", !119, i64 0}
!136 = !{!"_ZTS13ImChunkStreamI18ImGuiTableSettingsE", !119, i64 0}
!137 = !{!"p1 _ZTS16ImGuiContextHook", !17, i64 0}
!138 = !{!"_ZTS8ImVectorI16ImGuiContextHookE", !14, i64 0, !14, i64 4, !137, i64 8}
!139 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!140 = !{!"_ZTS23ImGuiErrorRecoveryState", !31, i64 0, !31, i64 2, !31, i64 4, !31, i64 6, !31, i64 8, !31, i64 10, !31, i64 12, !31, i64 14, !31, i64 16, !31, i64 18, !31, i64 20}
!141 = !{!"p1 _ZTS23ImGuiErrorRecoveryState", !17, i64 0}
!142 = !{!"_ZTS18ImGuiMetricsConfig", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !23, i64 4, !23, i64 5, !23, i64 6, !23, i64 7, !23, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !23, i64 32, !23, i64 33}
!143 = !{!"p1 _ZTS19ImGuiStackLevelInfo", !17, i64 0}
!144 = !{!"_ZTS8ImVectorI19ImGuiStackLevelInfoE", !14, i64 0, !14, i64 4, !143, i64 8}
!145 = !{!"_ZTS23ImGuiDebugItemPathQuery", !14, i64 0, !23, i64 4, !23, i64 5, !13, i64 6, !144, i64 8, !132, i64 24, !132, i64 40}
!146 = !{!"_ZTS16ImGuiIDStackTool", !23, i64 0, !23, i64 1, !14, i64 4, !25, i64 8}
!147 = !{!"_ZTS19ImGuiDebugAllocInfo", !14, i64 0, !14, i64 4, !31, i64 8, !13, i64 12}
!148 = !{!"_ZTS12ImGuiContext", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !14, i64 4, !14, i64 8, !14, i64 12, !24, i64 16, !13, i64 24, !34, i64 40, !38, i64 3088, !40, i64 3208, !42, i64 4536, !29, i64 4552, !43, i64 4560, !25, i64 4568, !25, i64 4572, !25, i64 4576, !25, i64 4580, !25, i64 4584, !50, i64 4592, !14, i64 5160, !14, i64 5164, !17, i64 5168, !52, i64 5176, !52, i64 5192, !30, i64 5208, !14, i64 5212, !54, i64 5216, !54, i64 5232, !54, i64 5248, !56, i64 5264, !59, i64 5280, !14, i64 5296, !25, i64 5300, !14, i64 5304, !60, i64 5312, !60, i64 5320, !60, i64 5328, !60, i64 5336, !60, i64 5344, !60, i64 5352, !26, i64 5360, !14, i64 5368, !14, i64 5372, !25, i64 5376, !26, i64 5380, !26, i64 5388, !14, i64 5396, !14, i64 5400, !14, i64 5404, !14, i64 5408, !14, i64 5412, !25, i64 5416, !25, i64 5420, !23, i64 5424, !23, i64 5425, !23, i64 5426, !23, i64 5427, !14, i64 5428, !14, i64 5432, !25, i64 5436, !23, i64 5440, !23, i64 5441, !23, i64 5442, !23, i64 5443, !23, i64 5444, !23, i64 5445, !23, i64 5446, !23, i64 5447, !23, i64 5448, !13, i64 5449, !14, i64 5452, !26, i64 5456, !61, i64 5464, !60, i64 5472, !14, i64 5480, !62, i64 5484, !63, i64 5496, !14, i64 5504, !25, i64 5508, !23, i64 5512, !23, i64 5513, !24, i64 5520, !24, i64 5528, !24, i64 5536, !64, i64 5544, !13, i64 5564, !67, i64 7424, !14, i64 7768, !23, i64 7772, !14, i64 7776, !14, i64 7780, !14, i64 7784, !14, i64 7788, !69, i64 7792, !71, i64 7848, !72, i64 7928, !23, i64 8048, !23, i64 8049, !14, i64 8052, !74, i64 8056, !76, i64 8072, !78, i64 8088, !80, i64 8104, !82, i64 8120, !84, i64 8136, !86, i64 8152, !86, i64 8168, !88, i64 8184, !90, i64 8200, !23, i64 8216, !23, i64 8217, !23, i64 8218, !23, i64 8219, !14, i64 8220, !60, i64 8224, !14, i64 8232, !91, i64 8236, !14, i64 8240, !14, i64 8244, !14, i64 8248, !14, i64 8252, !14, i64 8256, !80, i64 8264, !14, i64 8280, !25, i64 8284, !14, i64 8288, !14, i64 8292, !14, i64 8296, !14, i64 8300, !61, i64 8304, !68, i64 8312, !13, i64 8320, !23, i64 8321, !23, i64 8322, !23, i64 8323, !92, i64 8328, !23, i64 8384, !23, i64 8385, !23, i64 8386, !14, i64 8388, !14, i64 8392, !14, i64 8396, !39, i64 8400, !39, i64 8404, !39, i64 8408, !70, i64 8412, !70, i64 8428, !14, i64 8444, !14, i64 8448, !14, i64 8452, !92, i64 8456, !92, i64 8512, !92, i64 8568, !92, i64 8624, !14, i64 8680, !14, i64 8684, !14, i64 8688, !14, i64 8692, !23, i64 8696, !23, i64 8697, !23, i64 8698, !23, i64 8699, !14, i64 8700, !14, i64 8704, !60, i64 8712, !60, i64 8720, !60, i64 8728, !25, i64 8736, !25, i64 8740, !61, i64 8744, !23, i64 8748, !93, i64 8752, !26, i64 8756, !26, i64 8764, !25, i64 8772, !23, i64 8776, !23, i64 8777, !23, i64 8778, !14, i64 8780, !14, i64 8784, !14, i64 8788, !94, i64 8792, !70, i64 8856, !70, i64 8872, !14, i64 8888, !14, i64 8892, !14, i64 8896, !14, i64 8900, !25, i64 8904, !14, i64 8908, !14, i64 8912, !14, i64 8916, !14, i64 8920, !95, i64 8928, !13, i64 8944, !14, i64 8960, !97, i64 8968, !20, i64 8984, !14, i64 8992, !14, i64 8996, !99, i64 9000, !100, i64 9016, !102, i64 9056, !104, i64 9072, !105, i64 9088, !107, i64 9096, !109, i64 9136, !111, i64 9152, !112, i64 9168, !113, i64 9304, !14, i64 9312, !114, i64 9320, !117, i64 9336, !14, i64 9376, !14, i64 9380, !25, i64 9384, !25, i64 9388, !14, i64 9392, !14, i64 9396, !14, i64 9400, !25, i64 9404, !26, i64 9408, !120, i64 9416, !121, i64 9544, !122, i64 9568, !125, i64 9592, !14, i64 9696, !14, i64 9700, !14, i64 9704, !63, i64 9708, !14, i64 9716, !14, i64 9720, !14, i64 9724, !14, i64 9728, !25, i64 9732, !25, i64 9736, !14, i64 9740, !45, i64 9744, !126, i64 9760, !70, i64 9808, !23, i64 9824, !31, i64 9826, !25, i64 9828, !25, i64 9832, !25, i64 9836, !23, i64 9840, !23, i64 9841, !25, i64 9844, !25, i64 9848, !25, i64 9852, !31, i64 9856, !31, i64 9858, !60, i64 9864, !119, i64 9872, !127, i64 9888, !129, i64 9904, !130, i64 10008, !130, i64 10028, !37, i64 10048, !131, i64 10064, !23, i64 10066, !25, i64 10068, !132, i64 10072, !134, i64 10088, !135, i64 10104, !136, i64 10120, !138, i64 10136, !14, i64 10152, !17, i64 10160, !13, i64 10168, !23, i64 10264, !23, i64 10265, !14, i64 10268, !60, i64 10272, !139, i64 10280, !132, i64 10288, !27, i64 10304, !27, i64 10312, !25, i64 10320, !14, i64 10324, !14, i64 10328, !14, i64 10332, !17, i64 10336, !17, i64 10344, !26, i64 10352, !23, i64 10360, !14, i64 10364, !140, i64 10368, !141, i64 10392, !14, i64 10400, !14, i64 10404, !132, i64 10408, !121, i64 10424, !14, i64 10448, !14, i64 10452, !13, i64 10456, !13, i64 10457, !23, i64 10458, !14, i64 10460, !13, i64 10464, !23, i64 10465, !13, i64 10466, !14, i64 10468, !25, i64 10472, !45, i64 10476, !142, i64 10492, !145, i64 10528, !146, i64 10584, !147, i64 10596, !13, i64 10656, !14, i64 10896, !14, i64 10900, !25, i64 10904, !14, i64 10908, !14, i64 10912, !14, i64 10916, !119, i64 10920, !13, i64 10936}
!149 = !{!148, !60, i64 5312}
!150 = !{!"p1 _ZTS14ImGuiViewportP", !17, i64 0}
!151 = !{!"_ZTS6ImVec1", !25, i64 0}
!152 = !{!"_ZTS16ImGuiMenuColumns", !14, i64 0, !14, i64 4, !31, i64 8, !31, i64 10, !31, i64 12, !31, i64 14, !31, i64 16, !13, i64 18}
!153 = !{!"p1 _ZTS12ImGuiStorage", !17, i64 0}
!154 = !{!"p1 _ZTS15ImGuiOldColumns", !17, i64 0}
!155 = !{!"_ZTS19ImGuiWindowTempData", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !25, i64 56, !25, i64 60, !23, i64 64, !23, i64 65, !151, i64 68, !151, i64 72, !151, i64 76, !26, i64 80, !91, i64 88, !31, i64 92, !31, i64 94, !23, i64 96, !23, i64 97, !23, i64 98, !23, i64 99, !26, i64 100, !152, i64 108, !14, i64 136, !14, i64 140, !14, i64 144, !54, i64 152, !153, i64 168, !154, i64 176, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !25, i64 208, !25, i64 212, !25, i64 216, !102, i64 224, !102, i64 240}
!156 = !{!"_ZTS8ImVec2ih", !31, i64 0, !31, i64 2}
!157 = !{!"_ZTS8ImVectorI15ImGuiOldColumnsE", !14, i64 0, !14, i64 4, !154, i64 8}
!158 = !{!"p1 _ZTS10ImDrawList", !17, i64 0}
!159 = !{!"p1 _ZTS9ImDrawCmd", !17, i64 0}
!160 = !{!"_ZTS8ImVectorI9ImDrawCmdE", !14, i64 0, !14, i64 4, !159, i64 8}
!161 = !{!"p1 _ZTS10ImDrawVert", !17, i64 0}
!162 = !{!"_ZTS8ImVectorI10ImDrawVertE", !14, i64 0, !14, i64 4, !161, i64 8}
!163 = !{!"p1 _ZTS20ImDrawListSharedData", !17, i64 0}
!164 = !{!"p1 _ZTS13ImTextureData", !17, i64 0}
!165 = !{!"_ZTS12ImTextureRef", !164, i64 0, !68, i64 8}
!166 = !{!"_ZTS15ImDrawCmdHeader", !45, i64 0, !165, i64 16, !14, i64 32}
!167 = !{!"_ZTS18ImDrawListSplitter", !14, i64 0, !14, i64 4, !104, i64 8}
!168 = !{!"_ZTS8ImVectorI6ImVec4E", !14, i64 0, !14, i64 4, !44, i64 8}
!169 = !{!"p1 _ZTS12ImTextureRef", !17, i64 0}
!170 = !{!"_ZTS8ImVectorI12ImTextureRefE", !14, i64 0, !14, i64 4, !169, i64 8}
!171 = !{!"_ZTS10ImDrawList", !160, i64 0, !33, i64 16, !162, i64 32, !14, i64 48, !14, i64 52, !163, i64 56, !161, i64 64, !32, i64 72, !47, i64 80, !166, i64 96, !167, i64 136, !168, i64 160, !170, i64 176, !95, i64 192, !25, i64 208, !27, i64 216}
!172 = !{!"_ZTS11ImGuiWindow", !18, i64 0, !27, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !150, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !26, i64 88, !25, i64 96, !25, i64 100, !25, i64 104, !25, i64 108, !25, i64 112, !25, i64 116, !25, i64 120, !25, i64 124, !25, i64 128, !25, i64 132, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !26, i64 152, !26, i64 160, !26, i64 168, !26, i64 176, !26, i64 184, !26, i64 192, !23, i64 200, !23, i64 201, !23, i64 202, !13, i64 203, !23, i64 204, !23, i64 205, !23, i64 206, !23, i64 207, !23, i64 208, !23, i64 209, !23, i64 210, !23, i64 211, !23, i64 212, !23, i64 213, !23, i64 214, !23, i64 215, !13, i64 216, !13, i64 217, !31, i64 218, !31, i64 220, !31, i64 222, !31, i64 224, !31, i64 226, !39, i64 228, !13, i64 232, !13, i64 233, !23, i64 234, !13, i64 235, !13, i64 236, !13, i64 237, !13, i64 238, !14, i64 239, !14, i64 240, !14, i64 241, !14, i64 242, !26, i64 244, !26, i64 252, !127, i64 264, !155, i64 280, !70, i64 536, !70, i64 552, !70, i64 568, !70, i64 584, !70, i64 600, !70, i64 616, !70, i64 632, !156, i64 648, !156, i64 652, !14, i64 656, !25, i64 660, !59, i64 664, !157, i64 680, !25, i64 696, !25, i64 700, !25, i64 704, !14, i64 708, !158, i64 712, !171, i64 720, !60, i64 944, !60, i64 952, !60, i64 960, !60, i64 968, !60, i64 976, !60, i64 984, !60, i64 992, !60, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1048, !14, i64 1064, !14, i64 1068, !14, i64 1072, !23, i64 1076}
!173 = !{!172, !23, i64 206}
!174 = !{!172, !23, i64 209}
!175 = !{i8 0, i8 2}
!176 = !{}
!177 = !{!25, !25, i64 0}
!178 = !{!148, !14, i64 8992}
!179 = !{!100, !20, i64 8}
!180 = !{!148, !14, i64 8996}
!181 = !{!"p1 _ZTS20ImGuiTableHeaderData", !17, i64 0}
!182 = !{!"_ZTS8ImVectorI20ImGuiTableHeaderDataE", !14, i64 0, !14, i64 4, !181, i64 8}
!183 = !{!"p1 _ZTS29ImGuiTableReconcileColumnData", !17, i64 0}
!184 = !{!"_ZTS8ImVectorI29ImGuiTableReconcileColumnDataE", !14, i64 0, !14, i64 4, !183, i64 8}
!185 = !{!"p1 _ZTS16ImGuiTableColumn", !17, i64 0}
!186 = !{!"_ZTS6ImSpanI16ImGuiTableColumnE", !185, i64 0, !185, i64 8}
!187 = !{!"_ZTS18ImGuiTableTempData", !14, i64 0, !14, i64 4, !25, i64 8, !25, i64 12, !182, i64 16, !184, i64 32, !17, i64 48, !186, i64 56, !26, i64 72, !167, i64 80, !70, i64 104, !70, i64 120, !26, i64 136, !26, i64 144, !26, i64 152, !151, i64 160, !25, i64 164, !14, i64 168}
!188 = !{!187, !25, i64 8}
!189 = !{!99, !98, i64 8}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !{!104, !103, i64 8}
end_hunk_1
