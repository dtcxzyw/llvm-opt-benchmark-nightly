Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui21TableAngledHeadersRowEv:bb.a
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
  %i.ba = tail call float @cosf(float noundef %i.az) #4 ; 6 uses
  %i.bb = tail call float @sinf(float noundef %i.az) #4 ; 7 uses
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = fadd float %i.az, f0x40490FDB           ; 2 uses
  %i.bd = tail call float @cosf(float noundef %i.bc) #4
  %i.be = tail call float @sinf(float noundef %i.bc) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bf = phi float [ %i.bd, %bb.m ], [ %i.ba, %bb.l ]
  %i.bg = phi float [ %i.be, %bb.m ], [ %i.bb, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4568 ; 3 uses
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !340
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 3316 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !243
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float 2.000000e+00, float %i.bi) ; 2 uses
  %i.bm = fneg float %i.bl
  %i.bn = select i1 %i.ay, float %i.bl, float %i.bm
  %i.bo = fneg float %i.bb                        ; 3 uses
  %i.bp = fmul float %i.ba, %i.bn
  %i.bq = tail call float @llvm.fmuladd.f32(float %.0169, float %i.bb, float %i.bp)
  %i.br = tail call float @llvm.fabs.f32(float %i.bq)
  %i.bs = fptosi float %i.br to i32
  %i.bt = uitofp nneg i32 %i.bs to float          ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store float %i.bt, ptr %i.bu, align 8, !tbaa !259
  %i.bv = fcmp une float %i.bb, 0.000000e+00
  %i.bw = fdiv float %i.ba, %i.bb
  %i.bx = select i1 %i.bv, float %i.bw, float 0.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store float %i.bx, ptr %i.by, align 4, !tbaa !369
  %i.bz = fdiv float %i.bt, %i.bo
  %i.ca = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bb, i64 1
  %i.cc = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cb, %i.cd           ; 2 uses
  %i.cf = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8984
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !263 ; 11 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 569
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !222, !range !175, !noundef !176
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.ch)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 570
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !434, !range !175, !noundef !176
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.q, label %_ZN5ImGui12TableNextRowEif.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.ch)
  br label %_ZN5ImGui12TableNextRowEif.exit

_ZN5ImGui12TableNextRowEif.exit:                  ; preds = %bb.p, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 148 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = shl i32 %i.cp, 16
  %i.cr = or disjoint i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 3320
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !391
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 136 ; 2 uses
  store float %i.ct, ptr %i.cu, align 8, !tbaa !444
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 132
  store float %i.bt, ptr %i.cv, align 4, !tbaa !465
  tail call void @_ZN5ImGui13TableBeginRowEP10ImGuiTable(ptr noundef nonnull %i.ch)
  %i.cw = load float, ptr %i.cu, align 8, !tbaa !444
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !253
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cw, float 2.000000e+00, float %i.cy) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 124
  %i.db = load float, ptr %i.da, align 4, !tbaa !254
  %i.dc = fadd float %i.db, %i.bt                 ; 2 uses
  %i.dd = fcmp oge float %i.cz, %i.dc
  %i.de = select i1 %i.dd, float %i.cz, float %i.dc
  store float %i.de, ptr %i.cx, align 8, !tbaa !253
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 392
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !219
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 209
  store i8 1, ptr %i.dh, align 1, !tbaa !174
  %i.di = tail call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !383
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 308 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !454 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.dp = load float, ptr %i.do, align 8, !tbaa !378
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !253 ; 2 uses
  store float %i.dk, ptr %5, align 16, !tbaa !228
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.dn, ptr %i.ds, align 4, !tbaa !229
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.dp, ptr %i.dt, align 8, !tbaa !228
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store float %i.dr, ptr %i.du, align 4, !tbaa !229
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !211
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef %i.g, i32 noundef 0)
  %i.dx = load float, ptr %i.dl, align 8, !tbaa !671 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 558 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !370 ; 2 uses
  %i.ea = icmp sgt i16 %i.dz, 0
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui12TableNextRowEif.exit
  %i.eb = zext nneg i16 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !275
  %i.ef = getelementptr [2 x i8], ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr i8, ptr %i.ef, i64 -2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !300
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !271
  %i.ej = sext i16 %i.eh to i64
  %i.ek = getelementptr inbounds [120 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.em = load float, ptr %i.el, align 4, !tbaa !374 ; 2 uses
  %i.en = fcmp oge float %i.dx, %i.em
  %i.eo = select i1 %i.en, float %i.dx, float %i.em
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui12TableNextRowEif.exit
  %.0173 = phi float [ %i.eo, %bb.r ], [ %i.dx, %_ZN5ImGui12TableNextRowEif.exit ]
  %i.ep = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8984
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !263 ; 4 uses
  %.not.i182 = icmp eq ptr %i.er, null
  br i1 %.not.i182, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.es = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

bb.u:                                             ; preds = %bb.s
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 124
  %i.eu = load float, ptr %i.et, align 4, !tbaa !254
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 300
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !252
  %i.ex = fcmp ogt float %i.eu, %i.ew
  br i1 %i.ex, label %_ZN5ImGui15TableSetBgColorEiji.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 156
  store i32 0, ptr %i.ey, align 4, !tbaa !299
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

_ZN5ImGui15TableSetBgColorEiji.exit:              ; preds = %bb.t, %bb.u, %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 3 uses
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.dl, ptr noundef nonnull align 4 dereferenceable(8) %i.ez, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.fa = load float, ptr %i.dl, align 8, !tbaa !671
  store float %i.fa, ptr %6, align 4, !tbaa !228
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.dn, ptr %i.fb, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.fc = load float, ptr %i.ez, align 8, !tbaa !672
  store float %i.fc, ptr %7, align 4, !tbaa !228
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.dr, ptr %i.fd, align 4, !tbaa !229
  %i.fe = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 46, float noundef 2.500000e-01)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.fe, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.ff = load float, ptr %i.dm, align 4, !tbaa !454
  store float %.0173, ptr %8, align 4, !tbaa !228
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ff, ptr %i.fg, align 4, !tbaa !229
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.ez, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  %i.fh = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %0)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 4560
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !673
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 68
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !674
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 4576
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !675
  %i.fo = fmul float %i.fl, %i.fn
  %i.fp = load float, ptr %i.bh, align 8, !tbaa !340
  %i.fq = fsub float %i.fp, %i.fo
  %i.fr = fmul float %i.fq, 5.000000e-01          ; 2 uses
  %i.fs = fcmp oge float %i.fr, 0.000000e+00
  %i.ft = select i1 %i.fs, float %i.fr, float 0.000000e+00
  %i.fu = fdiv float %i.ft, %i.bo
  %i.fv = select i1 %i.ay, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.fw = fmul float %i.fv, %i.fu
  %.sroa.066.0.copyload = load float, ptr %i.bj, align 4, !tbaa !177 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !177 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 3408
  %.sroa.065.0.copyload = load float, ptr %i.fx, align 8, !tbaa !177
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !177
  %i.fy = icmp sgt i32 %4, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa_idx210 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa_idx207 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.gg = fneg float %.sroa.066.0.copyload
  %i.gh = fsub float %.0169, %.sroa.5.0.copyload  ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 620
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.gn = fmul float %i.ba, %.sroa.066.0.copyload
  %i.go = call float @llvm.fabs.f32(float %i.gn)
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.gr = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.ba, i64 1 ; 2 uses
  %i.gt = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x float> %i.gs, %i.gu           ; 2 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 0
  %i.gx = call float @llvm.fabs.f32(float %i.gw)
  %i.gy = fneg float %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 524
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 530
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  br i1 %i.fy, label %.preheader.us.preheader, label %.split.us

.preheader.us.preheader:                          ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.hg = extractelement <2 x float> %i.ce, i64 0
  %i.hh = insertelement <2 x float> poison, float %i.gh, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %i.hi = phi i1 [ false, %._crit_edge.us ], [ true, %.preheader.us.preheader ] ; 2 uses
  %i.hj = phi i1 [ true, %._crit_edge.us ], [ false, %.preheader.us.preheader ]
  %.0172232.us = phi float [ %.2.us247, %._crit_edge.us ], [ f0xFF7FFFFF, %.preheader.us.preheader ]
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us, %.loopexit.us.thread
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %.loopexit.us.thread ] ; 3 uses
  %.1228.us = phi float [ %.0172232.us, %.preheader.us ], [ %.2.us247, %.loopexit.us.thread ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 4 uses
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !677 ; 4 uses
  %i.hm = load ptr, ptr %i.fz, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false), !tbaa !177
  %i.hn = sext i16 %i.hl to i64                   ; 2 uses
  %i.ho = getelementptr inbounds [120 x i8], ptr %i.hm, i64 %i.hn ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !374 ; 2 uses
  %i.hr = load i32, ptr %i.du, align 4, !tbaa !449 ; 3 uses
  store i32 %i.hq, ptr %9, align 16, !tbaa !177
  store i32 %i.hr, ptr %.sroa_idx210, align 4, !tbaa !177
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !375 ; 2 uses
  store i32 %i.ht, ptr %i.ga, align 8, !tbaa !177
  store i32 %i.hr, ptr %.sroa_idx207, align 4, !tbaa !177
  %i.hu = insertelement <2 x i32> poison, i32 %i.ht, i64 0
  %i.hv = insertelement <2 x i32> %i.hu, i32 %i.hr, i64 1
  %i.hw = bitcast <2 x i32> %i.hv to <2 x float>
  %i.hx = fadd <2 x float> %i.ce, %i.hw           ; 2 uses
  store <2 x float> %i.hx, ptr %i.gb, align 16, !tbaa !177
  %i.hy = bitcast i32 %i.hq to float
  %i.hz = fadd float %i.hg, %i.hy
  %i.ia = insertelement <2 x float> %i.hx, float %i.hz, i64 0
  store <2 x float> %i.ia, ptr %i.gc, align 8, !tbaa !177
  br i1 %i.hi, label %bb.x, label %.loopexit.us

bb.x:                                             ; preds = %bb.w
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !678
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.ga, ptr noundef nonnull align 4 dereferenceable(8) %i.gb, ptr noundef nonnull align 4 dereferenceable(8) %i.gc, i32 noundef %i.ic)
  %i.id = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !679
  call void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.ga, ptr noundef nonnull align 4 dereferenceable(8) %i.gb, ptr noundef nonnull align 4 dereferenceable(8) %i.gc, i32 noundef %i.ie)
  %i.if = load float, ptr %i.gc, align 8, !tbaa !228 ; 2 uses
  %i.ig = fcmp oge float %.1228.us, %i.if
  %i.ih = select i1 %i.ig, float %.1228.us, float %i.if ; 2 uses
  %i.ii = load i8, ptr %i.gd, align 1, !tbaa !222, !range !175, !noundef !176
  %i.ij = icmp eq i8 %i.ii, 0
  br i1 %i.ij, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ik = load i16, ptr %i.ge, align 2, !tbaa !257
  %.not.i188.us = icmp slt i16 %i.hl, %i.ik
  br i1 %.not.i188.us, label %bb.z, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.il = load ptr, ptr %i.fz, align 8, !tbaa !271
  %i.im = getelementptr inbounds [120 x i8], ptr %i.il, i64 %i.hn
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 88
  %i.io = load i16, ptr %i.in, align 4, !tbaa !345 ; 2 uses
  %i.ip = icmp eq i16 %i.io, -1
  br i1 %i.ip, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iq = load ptr, ptr %i.gf, align 8, !tbaa !319
  %i.ir = sext i16 %i.io to i64
  %i.is = getelementptr inbounds i8, ptr %i.iq, i64 %i.ir
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us: ; preds = %bb.aa, %bb.z, %bb.y
  %.1.i187.us = phi ptr [ @.str.11, %bb.y ], [ %i.is, %bb.aa ], [ @.str.11, %bb.z ] ; 4 uses
  %i.it = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %.1.i187.us, ptr noundef null) ; 4 uses
  %i.iu = load float, ptr %i.bh, align 8, !tbaa !340
  %i.iv = fdiv float %i.iu, %i.bo                 ; 6 uses
  %i.iw = call noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef %.1.i187.us, ptr noundef %i.it) ; 2 uses
  %i.ix = load float, ptr %i.hp, align 4, !tbaa !374
  %i.iy = load float, ptr %i.hs, align 4, !tbaa !375
  %i.iz = fsub float %i.ix, %i.iy
  %i.ja = call float @llvm.fmuladd.f32(float %i.gg, float 2.000000e+00, float %i.iz)
  %i.jb = sitofp i32 %i.iw to float               ; 2 uses
  %i.jc = fneg float %i.jb
  %i.jd = call float @llvm.fmuladd.f32(float %i.jc, float %i.iv, float %i.ja) ; 2 uses
  %i.je = fcmp oge float %i.jd, 0.000000e+00
  %i.jf = select i1 %i.je, float %i.jd, float 0.000000e+00
  %i.jg = fmul float %.sroa.065.0.copyload, %i.jf ; 3 uses
  %i.jh = fcmp ult float %i.jg, 0.000000e+00
  %i.ji = fptosi float %i.jg to i32               ; 2 uses
  %i.jj = sitofp i32 %i.ji to float
  %i.jk = fcmp une float %i.jg, %i.jj
  %or.cond.not.i.us = and i1 %i.jh, %i.jk
  %i.jl = sext i1 %or.cond.not.i.us to i32
  %i.jm = add nsw i32 %i.jl, %i.ji
  %i.jn = sitofp i32 %i.jm to float               ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ho, i64 60 ; 3 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !351
  %i.jq = fneg float %i.jn
  %i.jr = call float @llvm.fmuladd.f32(float %i.jb, float %i.iv, float %i.jq)
  %i.js = call float @llvm.ceil.f32(float %i.jr)
  %i.jt = fadd float %i.jp, %i.js                 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ho, i64 84
  store float %i.jt, ptr %i.ju, align 4, !tbaa !352
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  store float %i.jt, ptr %i.jv, align 4, !tbaa !458
  %i.jw = icmp ult ptr %.1.i187.us, %i.it
  br i1 %i.jw, label %.lr.ph.us, label %.loopexit.us.thread

bb.ab:                                            ; preds = %.lr.ph.us, %bb.ad
  %.0167227.us = phi float [ %i.mt, %.lr.ph.us ], [ %i.le, %bb.ad ] ; 2 uses
  %.0168226.us = phi ptr [ %.1.i187.us, %.lr.ph.us ], [ %i.lu, %bb.ad ] ; 3 uses
  %i.jx = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0168226.us, i32 noundef 10) #26 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  %spec.select.us = select i1 %i.jy, ptr %i.it, ptr %i.jx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.jz = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %.0168226.us, ptr noundef nonnull %spec.select.us, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.jz, ptr %10, align 8
  %i.ka = extractelement <2 x float> %i.jz, i64 1 ; 2 uses
  %i.kb = load float, ptr %i.mu, align 4, !tbaa !384
  %i.kc = load float, ptr %i.jo, align 4, !tbaa !351
  %i.kd = fsub float %i.kb, %i.kc
  %i.ke = fsub float %i.kd, %.0167227.us          ; 2 uses
  %i.kf = fcmp olt float %i.ka, %i.ke
  %i.kg = select i1 %i.kf, float %i.ka, float %i.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.kh = load <2 x float>, ptr %i.gj, align 8, !tbaa !177 ; 2 uses
  %i.ki = insertelement <2 x float> %i.hh, float %i.kg, i64 1
  %i.kj = fadd <2 x float> %i.ki, %i.kh
  store <2 x float> %i.kh, ptr %11, align 8, !tbaa !177
  store <2 x float> %i.kj, ptr %i.gl, align 8, !tbaa !177
  %i.kk = load i32, ptr %i.gm, align 4, !tbaa !680
  %i.kl = load i32, ptr %i.mv, align 4, !tbaa !681
  call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 0, i32 noundef %i.kl)
  %i.km = load float, ptr %i.gl, align 8, !tbaa !358
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.gl, float noundef %i.km, ptr noundef nonnull %.0168226.us, ptr noundef nonnull %spec.select.us, ptr noundef nonnull %10)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  %i.kn = load i32, ptr %i.gm, align 4, !tbaa !680
  %i.ko = load float, ptr %10, align 8, !tbaa !228
  %i.kp = fsub float %i.gh, %i.ko                 ; 3 uses
  %i.kq = call float @llvm.fmuladd.f32(float %i.go, float 2.000000e+00, float %i.kp)
  %i.kr = call float @llvm.fmuladd.f32(float %i.gy, float 2.000000e+00, float %i.kq) ; 2 uses
  %i.ks = fcmp oge float %i.kr, 0.000000e+00
  %i.kt = select i1 %i.ks, float %i.kr, float 0.000000e+00
  %i.ku = fmul float %.sroa.4.0.copyload, %i.kt
  %i.kv = fmul float %i.fv, %i.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.kw = load float, ptr %i.gj, align 8, !tbaa !682
  %i.kx = fsub float %i.kw, %i.kv
  %i.ky = load float, ptr %i.gk, align 4, !tbaa !472
  %i.kz = load float, ptr %i.gi, align 4, !tbaa !229
  %i.la = fadd float %i.ky, %i.kz
  store float %i.kx, ptr %12, align 4, !tbaa !228
  store float %i.la, ptr %i.gp, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.lb = load float, ptr %i.jo, align 4, !tbaa !351
  %i.lc = load <4 x float>, ptr %5, align 16
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.le = fadd float %i.mx, %.0167227.us          ; 3 uses
  %i.lf = insertelement <2 x float> %i.ld, float %i.lb, i64 1
  %i.lg = fadd <2 x float> %i.gv, %i.lf           ; 2 uses
  br i1 %i.ay, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lh = fcmp ole float %i.kp, 0.000000e+00
  %i.li = select i1 %i.lh, float 0.000000e+00, float %i.kp
  %i.lj = fsub float %i.gh, %i.li
  %i.lk = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x float> %i.gs, %i.ll
  %i.ln = fadd <2 x float> %i.lm, %i.lg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.lo = phi <2 x float> [ %i.ln, %bb.ac ], [ %i.lg, %bb.ab ] ; 2 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 0
  store float %i.lp, ptr %i.gq, align 4, !tbaa !229
  %i.lq = fadd float %i.iv, %i.le
  %i.lr = select i1 %i.ay, float %i.lq, float %i.le
  %i.ls = extractelement <2 x float> %i.lo, i64 1
  %i.lt = fadd float %i.lr, %i.ls
  store float %i.lt, ptr %13, align 4, !tbaa !228
  call void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef nonnull %i.g, i32 noundef %i.kk, i32 noundef %i.kn, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.bf, float noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(8) %13)
  %i.lu = getelementptr inbounds nuw i8, ptr %spec.select.us, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  %i.lv = icmp ult ptr %i.lu, %i.it
  br i1 %i.lv, label %bb.ab, label %.loopexit.us, !llvm.loop !668

.loopexit.us:                                     ; preds = %bb.ad, %bb.w
  %.2.us = phi float [ %.1228.us, %bb.w ], [ %i.ih, %bb.ad ] ; 2 uses
  br i1 %i.hj, label %bb.ae, label %.loopexit.us.thread

bb.ae:                                            ; preds = %.loopexit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %16 = load <2 x float>, ptr %9, align 16, !tbaa !177
  %17 = fadd <2 x float> %16, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %17, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #4
  %18 = load <2 x float>, ptr %i.gc, align 8, !tbaa !177
  %19 = fadd <2 x float> %18, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %19, ptr %15, align 8
  %i.lw = load i16, ptr %i.gz, align 4, !tbaa !297
  %i.lx = icmp eq i16 %i.hl, %i.lw
  %i.ly = load i16, ptr %i.ha, align 2, !tbaa !293
  %i.lz = icmp eq i16 %i.hl, %i.ly
  br i1 %i.lz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ma = load i16, ptr %i.hb, align 2, !tbaa !290
  %i.mb = load i16, ptr %i.hc, align 8, !tbaa !216
  %i.mc = icmp eq i16 %i.ma, %i.mb
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.md = phi i1 [ false, %bb.ae ], [ %i.mc, %bb.af ] ; 2 uses
  %or.cond.i.us = select i1 %i.md, i1 true, i1 %i.lx
  br i1 %or.cond.i.us, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.me = load i16, ptr %i.dy, align 2, !tbaa !370
  %i.mf = add nuw nsw i64 %indvars.iv, 1
  %i.mg = sext i16 %i.me to i64
  %i.mh = icmp eq i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mi = load i32, ptr %i.hd, align 4, !tbaa !217
  %i.mj = and i32 %i.mi, 6144
  %.not.i199.us = icmp eq i32 %i.mj, 0
  br i1 %.not.i199.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.mk = load i32, ptr %i.he, align 8, !tbaa !262
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.ml = load i32, ptr %i.hf, align 4, !tbaa !261
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.al:                                            ; preds = %bb.ag
  %i.mm = select i1 %i.md, i32 30, i32 29
  %i.mn = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.mm, float noundef 1.000000e+00)
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us: ; preds = %bb.al, %bb.ak, %bb.aj
  %.0.i.us = phi i32 [ %i.mn, %bb.al ], [ %i.ml, %bb.ak ], [ %i.mk, %bb.aj ]
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %.0.i.us, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us, %.loopexit.us
  %.2.us247 = phi float [ %.2.us, %.loopexit.us ], [ %.2.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us ], [ %i.ih, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.w, !llvm.loop !669

.lr.ph.us:                                        ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us
  %i.mo = add nsw i32 %i.iw, -1
  %i.mp = sitofp i32 %i.mo to float
  %i.mq = fmul float %i.iv, %i.mp
  %i.mr = select i1 %i.ay, float %i.mq, float 0.000000e+00
  %i.ms = fsub float %i.jn, %i.fw
  %i.mt = fadd float %i.mr, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ho, i64 44
  %i.mv = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.mw = fneg float %i.iv
  %i.mx = select i1 %i.ay, float %i.mw, float %i.iv
  br label %bb.ab

._crit_edge.us:                                   ; preds = %.loopexit.us.thread
  br i1 %i.hi, label %.preheader.us, label %.split.us, !llvm.loop !670

.split.us:                                        ; preds = %._crit_edge.us, %_ZN5ImGui15TableSetBgColorEiji.exit
  %.us-phi = phi float [ f0xFF7FFFFF, %_ZN5ImGui15TableSetBgColorEiji.exit ], [ %.2.us247, %._crit_edge.us ]
  call void @_ZN5ImGui11PopClipRectEv()
  call void @_ZN5ImGui11PopClipRectEv()
  %i.my = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.mz = load i16, ptr %i.my, align 8, !tbaa !354
  %i.na = load ptr, ptr %i.fz, align 8, !tbaa !271
  %i.nb = sext i16 %i.mz to i64
  %i.nc = getelementptr inbounds [120 x i8], ptr %i.na, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !374
  %i.nf = fsub float %.us-phi, %i.ne              ; 2 uses
  %i.ng = fcmp ole float %i.nf, 0.000000e+00
  %i.nh = select i1 %i.ng, float 0.000000e+00, float %i.nf
  %i.ni = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !207
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  store float %i.nh, ptr %i.nk, align 4, !tbaa !260
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
end_hunk_0
