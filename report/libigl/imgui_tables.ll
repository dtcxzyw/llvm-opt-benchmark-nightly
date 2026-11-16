Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_tables?download=true
inline.NumInlined: 561
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5ImGui10NextColumnEv:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.r = load float, ptr %i.q, align 8, !tbaa !166
  %i.s = fadd float %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.u = load float, ptr %i.t, align 4, !tbaa !352
  %i.v = fadd float %i.s, %i.u
  %i.w = fptosi float %i.v to i32
  %i.x = sitofp i32 %i.w to float
  store float %i.x, ptr %i.h, align 8, !tbaa !351
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 5 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !364
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.m
  %spec.store.select = select i1 %i.ab, i32 0, i32 %i.aa
  store i32 %spec.store.select, ptr %i.y, align 4, !tbaa !364
  tail call void @_ZN5ImGui12PopItemWidthEv()
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !364
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !368
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [28 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.ai = load <4 x float>, ptr %i.ah, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !165
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !312 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.am, align 8, !tbaa !131
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !131
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !345
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !346
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [16 x i8], ptr %i.ap, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.at, align 4, !tbaa !131
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.as, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !131
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.av = load i32, ptr %i.y, align 4, !tbaa !364
  %i.aw = add nsw i32 %i.av, 1
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.al, i32 noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 5548
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !378 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.ba = load float, ptr %i.az, align 8, !tbaa !380 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 220 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !335 ; 2 uses
  %i.bd = fcmp oge float %i.ba, %i.bc
  %i.be = select i1 %i.bd, float %i.ba, float %i.bc ; 3 uses
  store float %i.be, ptr %i.az, align 8, !tbaa !380
  %i.bf = load i32, ptr %i.y, align 4, !tbaa !364 ; 6 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr @GImGui, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 7184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !105
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 376
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !360 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN5ImGui15GetColumnOffsetEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !368
  %i.bp = zext nneg i32 %i.bf to i64
  %i.bq = getelementptr inbounds nuw [28 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !370
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !367 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !366
  %i.bw = fsub float %i.bv, %i.bt
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.br, float %i.bt)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit

_ZN5ImGui15GetColumnOffsetEi.exit:                ; preds = %bb.f, %bb.g
  %.0.i = phi float [ %i.bx, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bz = load float, ptr %i.by, align 8, !tbaa !166 ; 2 uses
  %i.ca = fsub float %.0.i, %i.bz
  %i.cb = fadd float %i.ay, %i.ca                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.cb, ptr %i.cc, align 4, !tbaa !352
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.pre60 = load float, ptr %.phi.trans.insert59, align 4, !tbaa !381
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !379
  %i.cf = fsub float %i.ay, %i.ce                 ; 2 uses
  %i.cg = fcmp oge float %i.cf, 0.000000e+00
  %i.ch = select i1 %i.cg, float %i.cf, float 0.000000e+00 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.ch, ptr %i.ci, align 4, !tbaa !352
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store float %i.be, ptr %i.cj, align 4, !tbaa !381
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !166
  %.pre61 = load ptr, ptr @GImGui, align 8, !tbaa !15
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.pre61, i64 7184
  %.pre63 = load ptr, ptr %.phi.trans.insert62, align 8, !tbaa !105
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %.pre63, i64 376
  %.pre65 = load ptr, ptr %.phi.trans.insert64, align 8, !tbaa !360
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5ImGui15GetColumnOffsetEi.exit
  %i.ck = phi ptr [ %.pre65, %bb.h ], [ %i.bl, %_ZN5ImGui15GetColumnOffsetEi.exit ] ; 6 uses
  %i.cl = phi float [ %i.be, %bb.h ], [ %.pre60, %_ZN5ImGui15GetColumnOffsetEi.exit ]
  %i.cm = phi float [ %i.ch, %bb.h ], [ %i.cb, %_ZN5ImGui15GetColumnOffsetEi.exit ]
  %i.cn = phi float [ %.pre, %bb.h ], [ %i.bz, %_ZN5ImGui15GetColumnOffsetEi.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cp = load float, ptr %i.co, align 8, !tbaa !331
  %i.cq = fadd float %i.cp, %i.cn
  %i.cr = fadd float %i.cq, %i.cm
  %i.cs = fptosi float %i.cr to i32
  %i.ct = sitofp i32 %i.cs to float
  store float %i.ct, ptr %i.h, align 8, !tbaa !351
  store float %i.cl, ptr %i.bb, align 4, !tbaa !335
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store i32 0, ptr %i.cu, align 8, !tbaa !131
  %.sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  store i32 0, ptr %.sroa_idx56, align 4, !tbaa !131
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store float 0.000000e+00, ptr %i.cv, align 8, !tbaa !353
  %i.cw = icmp eq ptr %i.ck, null
  br i1 %i.cw, label %_ZN5ImGui15GetColumnOffsetEi.exit55, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = icmp slt i32 %i.bf, 0
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !364
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.010.i50 = phi i32 [ %i.cz, %bb.k ], [ %i.bf, %bb.j ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !368 ; 2 uses
  %i.dc = sext i32 %.010.i50 to i64
  %i.dd = getelementptr inbounds [28 x i8], ptr %i.db, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !370
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.dg = load float, ptr %i.df, align 4, !tbaa !367 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.di = load float, ptr %i.dh, align 8, !tbaa !366
  %i.dj = fsub float %i.di, %i.dg                 ; 2 uses
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.de, float %i.dg)
  %i.dl = add nsw i32 %i.bf, 1
  %i.dm = icmp slt i32 %i.bf, -1
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !364
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.010.i53 = phi i32 [ %i.do, %bb.m ], [ %i.dl, %bb.l ]
  %i.dp = sext i32 %.010.i53 to i64
  %i.dq = getelementptr inbounds [28 x i8], ptr %i.db, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !370
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.dr, float %i.dg)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit55

_ZN5ImGui15GetColumnOffsetEi.exit55:              ; preds = %bb.i, %bb.n
  %.0.i5158 = phi float [ %i.dk, %bb.n ], [ 0.000000e+00, %bb.i ]
  %.0.i54 = phi float [ %i.ds, %bb.n ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.dt = fsub float %.0.i54, %.0.i5158
  %i.du = fmul float %i.dt, 6.500000e-01
  tail call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.du)
  %i.dv = load float, ptr %i.co, align 8, !tbaa !331
  %i.dw = fadd float %.0.i54, %i.dv
  %i.dx = fsub float %i.dw, %i.ay
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store float %i.dx, ptr %i.dy, align 8, !tbaa !354
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %_ZN5ImGui15GetColumnOffsetEi.exit55, %bb.a, %bb.b
  ret void
}

declare void @_ZN5ImGui12PopItemWidthEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui10EndColumnsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 4             ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i8 1, ptr %i.f, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 376 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !360  ; 12 uses
  tail call void @_ZN5ImGui12PopItemWidthEv()
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !365
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui11PopClipRectEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !312
  tail call void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !371  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !380 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 220 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !335 ; 2 uses
  %i.u = fcmp oge float %i.r, %i.t
  %i.v = select i1 %i.u, float %i.r, float %i.t   ; 4 uses
  store float %i.v, ptr %i.q, align 8, !tbaa !380
  store float %i.v, ptr %i.s, align 4, !tbaa !335
  %i.w = and i32 %i.p, 16
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load float, ptr %i.x, align 8, !tbaa !377
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store float %i.y, ptr %i.z, align 8, !tbaa !328
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = and i32 %i.p, 1
  %.not76 = icmp eq i32 %i.aa, 0
  br i1 %.not76, label %bb.f, label %._crit_edge.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 147
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !128, !range !129, !noundef !130
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %4 = load float, ptr %3, align 4, !tbaa !376    ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 524
  %6 = load float, ptr %5, align 4, !tbaa !542    ; 2 uses
  %7 = fcmp oge float %4, %6
  %8 = select i1 %7, float %4, float %6           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 532
  %i.af = load float, ptr %i.ae, align 4, !tbaa !182 ; 2 uses
  %i.ag = fcmp olt float %i.v, %i.af
  %i.ah = select i1 %i.ag, float %i.v, float %i.af ; 2 uses
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !365
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa_idx83 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = and i32 %i.p, 2
  %.not79 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8056
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.ar = fadd float %8, 1.000000e+00
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.h

._crit_edge:                                      ; preds = %bb.o
  %.not77.not = icmp eq i32 %.2, -1
  br i1 %.not77.not, label %._crit_edge.thread, label %bb.p

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.07386 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.o ] ; 3 uses
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !368
  %i.av = getelementptr inbounds nuw [28 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load float, ptr %i.al, align 8, !tbaa !331
  %i.ax = load ptr, ptr @GImGui, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 7184
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 376
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !360 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN5ImGui15GetColumnOffsetEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !368
  %i.bf = getelementptr inbounds nuw [28 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !370
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !367 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !366
  %i.bl = fsub float %i.bk, %i.bi
  %i.bm = call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.bg, float %i.bi)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit

_ZN5ImGui15GetColumnOffsetEi.exit:                ; preds = %bb.h, %bb.i
  %.0.i = phi float [ %i.bm, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.bn = fadd float %i.aw, %.0.i                 ; 3 uses
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !375
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bq = add i32 %i.bo, %i.bp                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %9 = fadd float %i.bn, -4.000000e+00
  %10 = fadd float %i.bn, 4.000000e+00
  store float %9, ptr %0, align 4, !tbaa !131
  store float %8, ptr %.sroa_idx83, align 4, !tbaa !131
  store float %10, ptr %i.am, align 4, !tbaa !131
  store float %i.ah, ptr %i.an, align 4, !tbaa !131
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.bq)
  %i.br = call noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bq)
  br i1 %i.br, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 1, !tbaa !216
  br i1 %.not79, label %bb.k, label %.thread.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) ; 0 uses
  %i.bt = load i8, ptr %i.a, align 1, !tbaa !216, !range !129, !noundef !130 ; 2 uses
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load i8, ptr %i.b, align 1, !range !129
  %i.bw = trunc nuw i8 %i.bv to i1                ; 2 uses
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond, label %bb.l, label %.thread.thread

bb.l:                                             ; preds = %bb.k
  store i32 4, ptr %i.ap, align 8, !tbaa !543
  br i1 %i.bw, label %bb.m, label %.thread.thread

.thread.thread:                                   ; preds = %bb.j, %bb.l, %bb.k
  %.ph = phi i8 [ 0, %bb.k ], [ %i.bt, %bb.l ], [ 0, %bb.j ]
  %i.bx = trunc nuw i8 %.ph to i1
  %i.by = select i1 %i.bx, i32 28, i32 27
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !544
  %i.cb = and i32 %i.ca, 2
  %.not80 = icmp eq i32 %i.cb, 0
  %spec.select = select i1 %.not80, i32 %i.bp, i32 %.07386
  br label %bb.n

bb.n:                                             ; preds = %.thread.thread, %bb.m
  %.1108 = phi i32 [ %spec.select, %bb.m ], [ %.07386, %.thread.thread ]
  %i.cc = phi i32 [ 29, %bb.m ], [ %i.by, %.thread.thread ]
  %i.cd = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.cc, float noundef 1.000000e+00)
  %i.ce = fptosi float %i.bn to i32
  %i.cf = sitofp i32 %i.ce to float               ; 2 uses
  %i.cg = load ptr, ptr %i.aq, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store float %i.cf, ptr %1, align 4, !tbaa !163
  store float %i.ar, ptr %i.as, align 4, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store float %i.cf, ptr %2, align 4, !tbaa !163
  store float %i.ah, ptr %i.at, align 4, !tbaa !164
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.cg, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.cd, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit, %bb.n
  %.2 = phi i32 [ %.1108, %bb.n ], [ %.07386, %_ZN5ImGui15GetColumnOffsetEi.exit ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.i, align 8, !tbaa !365 ; 4 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.h, label %._crit_edge, !llvm.loop !539

bb.p:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 9 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !373, !range !129, !noundef !130
  %i.cm = trunc nuw i8 %i.cl to i1
  %.not7890 = icmp slt i32 %i.ch, 0
  %or.cond93 = or i1 %.not7890, %i.cm
  br i1 %or.cond93, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !368 ; 5 uses
  %i.cp = add nuw i32 %i.ch, 1
  %wide.trip.count = zext i32 %i.cp to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cq = icmp ult i32 %i.ch, 3
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph92.new

.lr.ph92.new:                                     ; preds = %.lr.ph92
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph92.new
  %indvars.iv96 = phi i64 [ 0, %.lr.ph92.new ], [ %indvars.iv.next97.3, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph92.new ], [ %niter.next.3, %bb.q ]
  %i.cr = getelementptr inbounds nuw [28 x i8], ptr %i.co, i64 %indvars.iv96 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !370
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store float %i.cs, ptr %i.ct, align 4, !tbaa !374
  %i.cu = getelementptr inbounds nuw [28 x i8], ptr %i.co, i64 %indvars.iv96 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !370
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store float %i.cw, ptr %i.cx, align 4, !tbaa !374
  %i.cy = getelementptr inbounds nuw [28 x i8], ptr %i.co, i64 %indvars.iv96 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load float, ptr %i.cz, align 4, !tbaa !370
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  store float %i.da, ptr %i.db, align 4, !tbaa !374
  %i.dc = getelementptr inbounds nuw [28 x i8], ptr %i.co, i64 %indvars.iv96 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 84
  %i.de = load float, ptr %i.dd, align 4, !tbaa !370
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 88
  store float %i.de, ptr %i.df, align 4, !tbaa !374
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !540

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph92
  %indvars.iv96.epil.init = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next97.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv96.epil = phi i64 [ %indvars.iv96.epil.init, %.epil.preheader ], [ %indvars.iv.next97.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dg = getelementptr inbounds nuw [28 x i8], ptr %i.co, i64 %indvars.iv96.epil ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !370
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store float %i.dh, ptr %i.di, align 4, !tbaa !374
  %indvars.iv.next97.epil = add nuw nsw i64 %indvars.iv96.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !541

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.r, %bb.p
  store i8 1, ptr %i.ck, align 1, !tbaa !373
  %i.dj = load ptr, ptr @GImGui, align 8, !tbaa !15 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 7184
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !105 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 296
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !298
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 7296
  %i.dp = load float, ptr %i.do, align 8, !tbaa !332
  %i.dq = fsub float %i.dn, %i.dp
  %i.dr = fadd float %i.dq, 4.000000e+00
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !331
  %i.du = fsub float %i.dr, %i.dt                 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 376
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !360 ; 9 uses
  %i.dx = icmp eq ptr %i.dw, null                 ; 2 uses
  br i1 %i.dx, label %_ZN5ImGui15GetColumnOffsetEi.exit.i, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.dy = add nsw i32 %.2, -1
  %i.dz = icmp slt i32 %.2, 1
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !364
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.010.i.i = phi i32 [ %i.eb, %bb.t ], [ %i.dy, %bb.s ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !368
  %i.ee = sext i32 %.010.i.i to i64
  %i.ef = getelementptr inbounds [28 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !370
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !367 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !366
  %i.el = fsub float %i.ek, %i.ei
  %i.em = call noundef float @llvm.fmuladd.f32(float %i.el, float %i.eg, float %i.ei)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit.i

_ZN5ImGui15GetColumnOffsetEi.exit.i:              ; preds = %bb.u, %.loopexit
  %.0.i.i = phi float [ %i.em, %bb.u ], [ 0.000000e+00, %.loopexit ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 5584
  %i.eo = load float, ptr %i.en, align 8, !tbaa !372 ; 2 uses
  %i.ep = fadd float %.0.i.i, %i.eo               ; 2 uses
  %i.eq = fcmp oge float %i.du, %i.ep
  %i.er = select i1 %i.eq, float %i.du, float %i.ep ; 3 uses
  %i.es = load i32, ptr %i.o, align 4, !tbaa !371
  %i.et = and i32 %i.es, 4
  %.not.i = icmp eq i32 %i.et, 0
  br i1 %.not.i, label %_ZL22GetDraggedColumnOffsetP15ImGuiOldColumnsi.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5ImGui15GetColumnOffsetEi.exit.i
  br i1 %i.dx, label %_ZN5ImGui15GetColumnOffsetEi.exit13.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = add nuw nsw i32 %.2, 1
  %i.ev = icmp slt i32 %.2, -1
  br i1 %i.ev, label %bb.x, label %bb.y
end_hunk_0
