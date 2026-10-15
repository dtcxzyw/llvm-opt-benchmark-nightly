Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui8EndTableEv:bb.a
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !225
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = shl nuw i32 1, %i.ma
  %i.mc = trunc i32 %i.mb to i16
  %i.md = or i16 %i.lx, %i.mc
  store i16 %i.md, ptr %i.lw, align 4, !tbaa !597
  store ptr null, ptr %i.b, align 8, !tbaa !263
  tail call void @_ZN5ImGui8EndChildEv()
  store ptr %i.c, ptr %i.b, align 8, !tbaa !263
  store i16 %i.lx, ptr %i.lw, align 4, !tbaa !597
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.me = getelementptr inbounds nuw i8, ptr %i.k, i64 416 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !233
  %i.mg = add nsw i32 %i.mf, -1
  store i32 %i.mg, ptr %i.me, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  %i.mh = load <2 x float>, ptr %i.cc, align 8, !tbaa !177
  %i.mi = load <2 x float>, ptr %i.cb, align 8, !tbaa !177
  %i.mj = fsub <2 x float> %i.mh, %i.mi
  store <2 x float> %i.mj, ptr %0, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  %i.mk = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ml = load i32, ptr %i.h, align 4, !tbaa !217
  %i.mm = and i32 %i.ml, 65536
  %.not279 = icmp eq i32 %i.mm, 0
  br i1 %.not279, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mn = load float, ptr %i.cb, align 8, !tbaa !373
  %i.mo = load float, ptr %i.fp, align 4, !tbaa !439
  %i.mp = fadd float %i.mn, %i.mo
  br label %bb.bw

bb.br:                                            ; preds = %bb.bp
  %i.mq = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.mr = load float, ptr %i.mq, align 8, !tbaa !598 ; 2 uses
  %i.ms = fcmp ugt float %i.mr, 0.000000e+00
  br i1 %i.ms, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mt = load float, ptr %i.cb, align 8, !tbaa !373
  %i.mu = load float, ptr %i.fp, align 4, !tbaa !439
  %i.mv = fadd float %i.mt, %i.mu
  %i.mw = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 12
  %i.my = load float, ptr %i.mx, align 4, !tbaa !260
  br i1 %.not267, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mz = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.na = load float, ptr %i.mz, align 8, !tbaa !599
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.nb = phi float [ %i.na, %bb.bt ], [ 0.000000e+00, %bb.bs ]
  %i.nc = fadd float %i.my, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.m, i64 312 ; 2 uses
  %i.ne = load float, ptr %i.nd, align 8, !tbaa !600 ; 2 uses
  %i.nf = fadd float %i.mv, %i.nc                 ; 3 uses
  %i.ng = fsub float %i.nf, %i.mr                 ; 2 uses
  %i.nh = fcmp oge float %i.ne, %i.ng
  %i.ni = select i1 %i.nh, float %i.ne, float %i.ng
  store float %i.ni, ptr %i.nd, align 8, !tbaa !600
  %i.nj = load float, ptr %i.cc, align 8, !tbaa !363 ; 2 uses
  %i.nk = fcmp olt float %i.nj, %i.nf
  %i.nl = select i1 %i.nk, float %i.nj, float %i.nf
  br label %bb.bw

bb.bv:                                            ; preds = %bb.br
  %i.nm = load float, ptr %i.cc, align 8, !tbaa !363
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bq
  %.sink = phi float [ %i.nl, %bb.bu ], [ %i.nm, %bb.bv ], [ %i.mp, %bb.bq ] ; 2 uses
  %i.nn = fcmp oge float %.sroa.0.0.copyload, %.sink
  %i.no = select i1 %i.nn, float %.sroa.0.0.copyload, float %.sink
  store float %i.no, ptr %i.lg, align 8, !tbaa !438
  %i.np = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.nq = load float, ptr %i.np, align 4, !tbaa !601 ; 2 uses
  %i.nr = fcmp ugt float %i.nq, 0.000000e+00
  br i1 %i.nr, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ns = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  %i.nt = getelementptr inbounds nuw i8, ptr %i.k, i64 300
  %.pn.in = select i1 %.not267, ptr %i.ns, ptr %i.nt
  %.pn = load float, ptr %.pn.in, align 4, !tbaa !177
  %i.nu = fsub float %i.bp, %.pn
  %i.nv = load float, ptr %i.ch, align 4, !tbaa !366
  %i.nw = fadd float %i.nv, %i.nu
  br i1 %.not267, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nx = getelementptr inbounds nuw i8, ptr %i.k, i64 196
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !602
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.nz = phi float [ %i.ny, %bb.by ], [ 0.000000e+00, %bb.bx ]
  %i.oa = getelementptr inbounds nuw i8, ptr %i.m, i64 316 ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !603 ; 2 uses
  %i.oc = fadd float %i.nw, %i.nz                 ; 3 uses
  %i.od = fsub float %i.oc, %i.nq                 ; 2 uses
  %i.oe = fcmp oge float %i.ob, %i.od
  %i.of = select i1 %i.oe, float %i.ob, float %i.od
  store float %i.of, ptr %i.oa, align 4, !tbaa !603
  %i.og = load float, ptr %i.cd, align 4, !tbaa !364 ; 2 uses
  %i.oh = fcmp olt float %i.og, %i.oc
  %i.oi = select i1 %i.oh, float %i.og, float %i.oc
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.oj = load float, ptr %i.cd, align 4, !tbaa !364
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink329 = phi float [ %i.oj, %bb.ca ], [ %i.oi, %bb.bz ] ; 2 uses
  %i.ok = fcmp oge float %.sroa.6.0.copyload, %.sink329
  %i.ol = select i1 %i.ok, float %.sroa.6.0.copyload, float %.sink329
  store float %i.ol, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !435
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 578
  %i.on = load i8, ptr %i.om, align 2, !tbaa !284, !range !175, !noundef !176
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN5ImGui17TableSaveSettingsEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.op = getelementptr inbounds nuw i8, ptr %i.c, i64 571
  store i8 0, ptr %i.op, align 1, !tbaa !282
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 8996 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !180 ; 3 uses
  %i.os = add nsw i32 %i.or, -1
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !180
  %i.ot = icmp sgt i32 %i.or, 1
  br i1 %i.ot, label %bb.ce, label %.thread297

bb.ce:                                            ; preds = %bb.cd
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 9008
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !189
  %i.ow = zext nneg i32 %i.or to i64
  %i.ox = getelementptr [176 x i8], ptr %i.ov, i64 %i.ow ; 3 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 -352   ; 3 uses
  %.not280 = icmp eq ptr %i.oy, null
  br i1 %.not280, label %.thread297, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !238
  %i.pa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !237
  %i.pc = icmp eq i32 %i.oz, %i.pb
  br i1 %i.pc, label %bb.cg, label %.thread297

.thread297:                                       ; preds = %bb.cf, %bb.ce, %bb.cd
  store ptr null, ptr %i.b, align 8, !tbaa !263
  br label %.thread301

bb.cg:                                            ; preds = %bb.cf
  %i.pd = getelementptr i8, ptr %i.ox, i64 -348
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !208 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 9024
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !22 ; 2 uses
  %i.ph = sext i32 %i.pe to i64
  %i.pi = getelementptr inbounds [592 x i8], ptr %i.pg, i64 %i.ph ; 3 uses
  store ptr %i.pi, ptr %i.b, align 8, !tbaa !263
  %.not281 = icmp eq ptr %i.pg, null
  br i1 %.not281, label %.thread301, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  store ptr %i.oy, ptr %i.pj, align 8, !tbaa !207
  %i.pk = getelementptr i8, ptr %i.ox, i64 -272
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 416
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !211
  br label %.thread301

.thread301:                                       ; preds = %bb.cg, %.thread297, %bb.ch
  %i.pm = phi i32 [ %i.pe, %bb.ch ], [ -1, %.thread297 ], [ -1, %bb.cg ]
  %i.pn = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  store i32 %i.pm, ptr %i.pn, align 8, !tbaa !265
  call void @_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv()
  br label %bb.ci

bb.ci:                                            ; preds = %.thread301, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr nofree noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.ImRect, align 16            ; 8 uses
  %2 = alloca %struct.ImRect, align 16            ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !248  ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [120 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !219  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 345
  %i.m = load i8, ptr %i.l, align 1, !tbaa !443, !range !175, !noundef !176
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 1
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.s = load i8, ptr %i.r, align 8, !tbaa !255, !range !175, !noundef !176
  %i.t = trunc nuw i8 %i.s to i1
  %.v.i = select i1 %i.t, i64 76, i64 72
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.v.sink.i = phi i64 [ %.v.i, %bb.e ], [ 80, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.v.sink.i ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !177 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.x = load float, ptr %i.w, align 8, !tbaa !438 ; 2 uses
  %i.y = fcmp oge float %i.v, %i.x
  %i.z = select i1 %i.y, float %i.v, float %i.x
  store float %i.z, ptr %i.u, align 4, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !309, !range !175, !noundef !176
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !253 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 308
  %i.ag = load float, ptr %i.af, align 4, !tbaa !435
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !444
  %i.aj = fadd float %i.ag, %i.ai                 ; 2 uses
  %i.ak = fcmp oge float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.ae, float %i.aj
  store float %i.al, ptr %i.ad, align 8, !tbaa !253
  br label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

_ZN5ImGui12TableEndCellEP10ImGuiTable.exit:       ; preds = %bb.f, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 488
  %i.an = load float, ptr %i.am, align 8, !tbaa !239
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store float %i.an, ptr %i.ao, align 4, !tbaa !376
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !445 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 340
  %i.as = load float, ptr %i.ar, align 4, !tbaa !446 ; 2 uses
  %i.at = fcmp oge float %i.aq, %i.as
  %i.au = select i1 %i.at, float %i.aq, float %i.as
  store float %i.au, ptr %i.ap, align 4, !tbaa !445
  store i32 -1, ptr %i.d, align 4, !tbaa !248
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !447, !range !175, !noundef !176
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef null)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.az = load float, ptr %i.ay, align 8, !tbaa !253 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 2 uses
  store float %i.az, ptr %i.ba, align 4, !tbaa !427
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !254 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !249 ; 5 uses
  %i.bf = add nsw i32 %i.be, 1                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !371
  %i.bi = sext i16 %i.bh to i32
  %i.bj = icmp eq i32 %i.bf, %i.bi                ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !398
  %i.bm = sext i16 %i.bl to i32
  %i.bn = icmp eq i32 %i.bf, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !216 ; 2 uses
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !226
  %i.bu = sext i16 %i.bp to i64
  %i.bv = getelementptr [24 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.br, %bb.k ], [ %i.bw, %bb.l ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %i.bz = and i32 %i.by, 1
  %.not170 = icmp eq i32 %i.bz, 0
  br i1 %.not170, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.ca = icmp ne i32 %i.be, 0
  %i.cb = and i32 %i.by, 65536
  %.not171 = icmp eq i32 %i.cb, 0
  %or.cond184 = and i1 %i.ca, %.not171
  br i1 %or.cond184, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = fsub float %i.az, %i.bc
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !393
  %i.cf = fadd float %i.cc, %i.ce
  store float %i.cf, ptr %i.cd, align 4, !tbaa !393
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !609
  %i.ci = fcmp ult float %i.az, %i.ch
  br i1 %i.ci, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !252
  %i.cl = fcmp ugt float %i.bc, %i.ck
  br i1 %i.cl, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 522
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !298
  %.not172 = icmp eq i16 %i.cn, -1
  br i1 %.not172, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.cp = load float, ptr %i.co, align 4, !tbaa !368 ; 2 uses
  %i.cq = fcmp oge float %i.cp, %i.bc
  %i.cr = fcmp olt float %i.cp, %i.az
  %or.cond185 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond185, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !361
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.be, ptr %i.cs, align 4, !tbaa !361
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !299 ; 2 uses
  %.not173 = icmp eq i32 %i.cw, 16777216
  br i1 %.not173, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !217
  %i.cz = and i32 %i.cy, 64
  %.not174 = icmp eq i32 %i.cz, 0
  br i1 %.not174, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.db = load i32, ptr %i.da, align 8, !tbaa !250
  %i.dc = and i32 %i.db, 1
  %i.dd = add nuw nsw i32 %i.dc, 49
  %i.de = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.dd, float noundef 1.000000e+00)
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !249
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.df = phi i32 [ %i.be, %bb.v ], [ %.pre, %bb.w ], [ %i.be, %bb.u ]
  %.0164 = phi i32 [ 0, %bb.v ], [ %i.de, %bb.w ], [ %i.cw, %bb.u ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !299 ; 2 uses
  %.not176 = icmp eq i32 %i.dh, 16777216
  %spec.select = select i1 %.not176, i32 0, i32 %i.dh ; 3 uses
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !217
  %i.dl = and i32 %i.dk, 128
  %.not177 = icmp eq i32 %i.dl, 0
  br i1 %.not177, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load i32, ptr %i.bx, align 4
  %i.dn = and i32 %i.dm, 65536
  %.not178 = icmp eq i32 %i.dn, 0
  %.in.v = select i1 %.not178, i64 168, i64 164
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.do = load i32, ptr %.in, align 4, !tbaa !299
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0162 = phi i32 [ %i.do, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !448
  %i.dr = icmp sgt i16 %i.dq, -1                  ; 2 uses
  %i.ds = or i32 %spec.select, %.0164             ; 2 uses
  %i.dt = or i32 %.0162, %i.ds
  %i.du = icmp ne i32 %i.dt, 0
  %or.cond = select i1 %i.du, i1 true, i1 %i.bj
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.dr
  br i1 %or.cond3, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !217
  %i.dx = and i32 %i.dw, 1048576
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ac, label %._crit_edge214

._crit_edge214:                                   ; preds = %bb.ab
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %.pre215 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !401
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ea = load <4 x float>, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !401 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  store <4 x float> %i.ea, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !177
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge214, %bb.ac
  %i.ed = phi ptr [ %.pre215, %._crit_edge214 ], [ %i.ec, %bb.ac ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !211
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef %i.ed, i32 noundef 0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad
  %.not180 = icmp eq i32 %spec.select, 0
  %or.cond5.not = icmp eq i32 %i.ds, 0
  br i1 %or.cond5.not, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not179 = icmp ne i32 %.0164, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !383
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !378
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.eo = load <2 x float>, ptr %i.en, align 8, !tbaa !177 ; 2 uses
  %i.ep = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.bc, i64 1 ; 2 uses
  %i.er = fcmp oge <2 x float> %i.eq, %i.eo
  %i.es = select <2 x i1> %i.er, <2 x float> %i.eq, <2 x float> %i.eo ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.eu = load <2 x float>, ptr %i.et, align 8, !tbaa !177 ; 2 uses
  %i.ev = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.az, i64 1 ; 2 uses
  %i.ex = fcmp olt <2 x float> %i.ew, %i.eu
  %i.ey = select <2 x i1> %i.ex, <2 x float> %i.ew, <2 x float> %i.eu ; 2 uses
  %3 = shufflevector <2 x float> %i.es, <2 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %1, align 16, !tbaa !177
  %i.ez = fcmp olt <2 x float> %i.es, %i.ey
  %i.fa = extractelement <2 x i1> %i.ez, i64 1
  %or.cond228 = select i1 %.not179, i1 %i.fa, i1 false
  br i1 %or.cond228, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !401
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fc, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.el, i32 noundef %.0164, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %.not180, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load float, ptr %i.ek, align 4, !tbaa !437
  %i.fe = load float, ptr %i.em, align 4, !tbaa !449
  %i.ff = fcmp olt float %i.fd, %i.fe
  br i1 %i.ff, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !401
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fh, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.el, i32 noundef %spec.select, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.al

bb.al:                                            ; preds = %bb.ae, %bb.ak
  br i1 %i.dr, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fj = load i16, ptr %i.dp, align 8, !tbaa !448 ; 2 uses
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !277 ; 2 uses
  %i.fl = sext i16 %i.fj to i64
  %.idx = shl nsw i64 %i.fl, 3
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %.idx
  %.not181200 = icmp slt i16 %i.fj, 0
  br i1 %.not181200, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %bb.ap
  %.0161201 = phi ptr [ %i.fk, %.lr.ph ], [ %i.hi, %bb.ap ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0161201, i64 4
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !451
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !271
  %i.fx = sext i16 %i.fv to i64
  %i.fy = getelementptr inbounds [120 x i8], ptr %i.fw, i64 %i.fx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !375 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 12 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !374 ; 2 uses
  %i.gd = load float, ptr %i.fo, align 8, !tbaa !383 ; 2 uses
  %i.ge = fcmp oge float %i.ga, %i.gd
  %i.gf = select i1 %i.ge, float %i.ga, float %i.gd
  %i.gg = load float, ptr %i.fp, align 8, !tbaa !378 ; 2 uses
  %i.gh = fcmp olt float %i.gc, %i.gg
  %i.gi = select i1 %i.gh, float %i.gc, float %i.gg
  %i.gj = load float, ptr %i.bb, align 4, !tbaa !254
  %i.gk = load float, ptr %i.ay, align 8, !tbaa !253
  %i.gl = load <2 x float>, ptr %i.fr, align 8, !tbaa !177 ; 2 uses
  %i.gm = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.gj, i64 1 ; 2 uses
  %i.go = fcmp ole <2 x float> %i.gl, %i.gn
  %i.gp = select <2 x i1> %i.go, <2 x float> %i.gn, <2 x float> %i.gl ; 3 uses
  %i.gq = load <2 x float>, ptr %i.fs, align 8, !tbaa !177 ; 2 uses
  %i.gr = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.gk, i64 1 ; 2 uses
  %i.gt = fcmp ogt <2 x float> %i.gq, %i.gs
  %i.gu = select <2 x i1> %i.gt, <2 x float> %i.gs, <2 x float> %i.gq ; 3 uses
  %4 = shufflevector <2 x float> %i.gp, <2 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %2, align 16, !tbaa !177
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 36
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !452 ; 2 uses
  %i.gx = extractelement <2 x float> %i.gp, i64 0 ; 2 uses
  %i.gy = fcmp ole float %i.gw, %i.gx
  %i.gz = select i1 %i.gy, float %i.gx, float %i.gw
  store float %i.gz, ptr %2, align 16, !tbaa !359
  %i.ha = load float, ptr %i.gb, align 4, !tbaa !374 ; 2 uses
  %i.hb = extractelement <2 x float> %i.gu, i64 0 ; 2 uses
  %i.hc = fcmp ogt float %i.ha, %i.hb
  %i.hd = select i1 %i.hc, float %i.hb, float %i.ha
  store float %i.hd, ptr %i.fq, align 8, !tbaa !358
  %i.he = fcmp olt <2 x float> %i.gp, %i.gu
  %i.hf = extractelement <2 x i1> %i.he, i64 1
  br i1 %i.hf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hg = load ptr, ptr %i.ft, align 8, !tbaa !401
  %i.hh = load i32, ptr %.0161201, align 4, !tbaa !453
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.hg, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.fq, i32 noundef %i.hh, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  %i.hi = getelementptr inbounds nuw i8, ptr %.0161201, i64 8 ; 2 uses
  %.not181 = icmp ugt ptr %i.hi, %i.fm
  br i1 %.not181, label %.loopexit, label %bb.an, !llvm.loop !604

.loopexit:                                        ; preds = %bb.ap, %bb.am, %bb.al
  %.not182 = icmp eq i32 %.0162, 0
  br i1 %.not182, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !454
  %i.hl = fcmp ult float %i.bc, %i.hk
  br i1 %i.hl, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !455
  %i.ho = fcmp olt float %i.bc, %i.hn
  br i1 %i.ho, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !401
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !388
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hu = load float, ptr %i.ht, align 8, !tbaa !389
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.hq, float noundef %i.hs, float noundef %i.hu, float noundef %i.bc, i32 noundef %.0162, float noundef 1.000000e+00)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %.loopexit
  br i1 %i.bj, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !454
  %i.hx = fcmp ult float %i.az, %i.hw
  br i1 %i.hx, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !455
  %i.ia = fcmp olt float %i.az, %i.hz
  br i1 %i.ia, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !401
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ie = load float, ptr %i.id, align 4, !tbaa !388
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ig = load float, ptr %i.if, align 8, !tbaa !389
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !261
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.ic, float noundef %i.ie, float noundef %i.ig, float noundef %i.az, i32 noundef %i.ii, float noundef 1.000000e+00)
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.p
  br i1 %i.bn, label %.preheader, label %bb.bc

.preheader:                                       ; preds = %.critedge
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !221 ; 5 uses
  %i.il = icmp sgt i32 %i.ik, 0                   ; 2 uses
  br i1 %i.il, label %.lr.ph203, label %._crit_edge

.lr.ph203:                                        ; preds = %.preheader
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.in = load i8, ptr %i.im, align 8, !tbaa !225 ; 9 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !271 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.ik to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.iq = icmp ult i32 %i.ik, 8
  br i1 %i.iq, label %.epil.preheader, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.ay

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph203
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod229 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod229)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ax ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.ir = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv.epil
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 114
  store i8 %i.in, ptr %i.is, align 2, !tbaa !372
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ax, !llvm.loop !605

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ax, %.preheader
  %i.it = load float, ptr %i.ay, align 8, !tbaa !253 ; 3 uses
  %i.iu = fadd float %i.it, 1.000000e+00          ; 2 uses
  %i.iv = load float, ptr %i.cg, align 4, !tbaa !609 ; 2 uses
  %i.iw = fcmp oge float %i.iu, %i.iv
  %i.ix = select i1 %i.iw, float %i.iu, float %i.iv ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !366 ; 2 uses
  %i.ja = fsub float %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store float %i.ja, ptr %i.jb, align 4, !tbaa !399
  br i1 %i.bj, label %bb.az, label %bb.bc

bb.ay:                                            ; preds = %bb.ay, %.lr.ph203.new
  %indvars.iv = phi i64 [ 0, %.lr.ph203.new ], [ %indvars.iv.next.7, %bb.ay ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph203.new ], [ %niter.next.7, %bb.ay ]
  %i.jc = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 114
  store i8 %i.in, ptr %i.jd, align 2, !tbaa !372
  %i.je = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 234
  store i8 %i.in, ptr %i.jf, align 2, !tbaa !372
  %i.jg = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 354
  store i8 %i.in, ptr %i.jh, align 2, !tbaa !372
  %i.ji = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 474
  store i8 %i.in, ptr %i.jj, align 2, !tbaa !372
  %i.jk = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 594
  store i8 %i.in, ptr %i.jl, align 2, !tbaa !372
  %i.jm = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 714
  store i8 %i.in, ptr %i.jn, align 2, !tbaa !372
  %i.jo = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 834
  store i8 %i.in, ptr %i.jp, align 2, !tbaa !372
  %i.jq = getelementptr inbounds nuw [120 x i8], ptr %i.ip, i64 %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 954
  store i8 %i.in, ptr %i.jr, align 2, !tbaa !372
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !606

bb.az:                                            ; preds = %._crit_edge
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 1, ptr %i.js, align 8, !tbaa !255
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !252 ; 4 uses
  %i.jv = fcmp olt float %i.ix, %i.ju
  %i.jw = select i1 %i.jv, float %i.ix, float %i.ju ; 7 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 340
  store float %i.jw, ptr %i.jx, align 4, !tbaa !610
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 308
  store float %i.jw, ptr %i.jy, align 4, !tbaa !454
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %i.ju, ptr %i.jz, align 4, !tbaa !611
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.ju, ptr %i.ka, align 4, !tbaa !455
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 566
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !420
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i16 %i.kc, ptr %i.kd, align 4, !tbaa !419
  %i.ke = load float, ptr %i.bb, align 4, !tbaa !254
  %i.kf = fsub float %i.it, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !400
  %i.ki = fadd float %i.it, %i.kh
  %i.kj = fsub float %i.ki, %i.iz                 ; 3 uses
  store float %i.kj, ptr %i.ba, align 4, !tbaa !427
  store float %i.kj, ptr %i.ay, align 8, !tbaa !253
  %i.kk = fsub float %i.kj, %i.kf
  store float %i.kk, ptr %i.bb, align 4, !tbaa !254
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !271 ; 6 uses
  br i1 %i.il, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %bb.az
  %wide.trip.count212 = zext nneg i32 %i.ik to i64 ; 2 uses
  %xtraiter231 = and i64 %wide.trip.count212, 3   ; 3 uses
  %i.kn = icmp ult i32 %i.ik, 4
  br i1 %i.kn, label %.epil.preheader230, label %.lr.ph206.new

.lr.ph206.new:                                    ; preds = %.lr.ph206
  %unroll_iter235 = and i64 %wide.trip.count212, 2147483644
  br label %bb.bb

._crit_edge207.loopexit.unr-lcssa:                ; preds = %bb.bb
  %lcmp.mod233.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod233.not, label %._crit_edge207, label %.epil.preheader230

.epil.preheader230:                               ; preds = %._crit_edge207.loopexit.unr-lcssa, %.lr.ph206
  %indvars.iv209.epil.init = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next210.3, %._crit_edge207.loopexit.unr-lcssa ]
  %lcmp.mod234 = icmp ne i64 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader230
  %indvars.iv209.epil = phi i64 [ %indvars.iv209.epil.init, %.epil.preheader230 ], [ %indvars.iv.next210.epil, %bb.ba ] ; 2 uses
  %epil.iter232 = phi i64 [ 0, %.epil.preheader230 ], [ %epil.iter232.next, %bb.ba ]
  %i.ko = getelementptr inbounds nuw [120 x i8], ptr %i.km, i64 %indvars.iv209.epil ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 104
  %i.kq = load i16, ptr %i.kp, align 4, !tbaa !422
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 100
  store i16 %i.kq, ptr %i.kr, align 4, !tbaa !423
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  store float %i.jw, ptr %i.ks, align 4, !tbaa !612
  %indvars.iv.next210.epil = add nuw nsw i64 %indvars.iv209.epil, 1
  %epil.iter232.next = add i64 %epil.iter232, 1   ; 2 uses
  %epil.iter232.cmp.not = icmp eq i64 %epil.iter232.next, %xtraiter231
  br i1 %epil.iter232.cmp.not, label %._crit_edge207, label %bb.ba, !llvm.loop !607

._crit_edge207:                                   ; preds = %._crit_edge207.loopexit.unr-lcssa, %bb.ba, %bb.az
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 36 ; 2 uses
  %i.kv = load <4 x float>, ptr %i.ku, align 4    ; 3 uses
  %.sroa.0.4.vec.insert.i.i199 = shufflevector <4 x float> %i.kv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.kv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kw, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ku, i64 16, i1 false), !tbaa.struct !230
  %i.kx = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !401 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ky, i64 96
  store <4 x float> %i.kv, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 160
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 168
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !456
  %i.lc = load i32, ptr %i.kz, align 8, !tbaa !457
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr [16 x i8], ptr %i.lb, i64 %i.ld ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i199, ptr %i.lf, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.le, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !211
  %i.li = load ptr, ptr %i.kt, align 8, !tbaa !271
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 100
  %i.lk = load i16, ptr %i.lj, align 4, !tbaa !423
  %i.ll = zext i16 %i.lk to i32
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, ptr noundef %i.ky, i32 noundef %i.ll)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bb, %.lr.ph206.new
  %indvars.iv209 = phi i64 [ 0, %.lr.ph206.new ], [ %indvars.iv.next210.3, %bb.bb ] ; 5 uses
  %niter236 = phi i64 [ 0, %.lr.ph206.new ], [ %niter236.next.3, %bb.bb ]
  %i.lm = getelementptr inbounds nuw [120 x i8], ptr %i.km, i64 %indvars.iv209 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 104
  %i.lo = load i16, ptr %i.ln, align 4, !tbaa !422
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 100
  store i16 %i.lo, ptr %i.lp, align 4, !tbaa !423
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  store float %i.jw, ptr %i.lq, align 4, !tbaa !612
  %i.lr = getelementptr inbounds nuw [120 x i8], ptr %i.km, i64 %indvars.iv209 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 224
  %i.lt = load i16, ptr %i.ls, align 4, !tbaa !422
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 220
  store i16 %i.lt, ptr %i.lu, align 4, !tbaa !423
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 160
  store float %i.jw, ptr %i.lv, align 4, !tbaa !612
  %i.lw = getelementptr inbounds nuw [120 x i8], ptr %i.km, i64 %indvars.iv209 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 344
  %i.ly = load i16, ptr %i.lx, align 4, !tbaa !422
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 340
  store i16 %i.ly, ptr %i.lz, align 4, !tbaa !423
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 280
  store float %i.jw, ptr %i.ma, align 4, !tbaa !612
  %i.mb = getelementptr inbounds nuw [120 x i8], ptr %i.km, i64 %indvars.iv209 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 464
  %i.md = load i16, ptr %i.mc, align 4, !tbaa !422
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 460
  store i16 %i.md, ptr %i.me, align 4, !tbaa !423
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 400
  store float %i.jw, ptr %i.mf, align 4, !tbaa !612
  %indvars.iv.next210.3 = add nuw nsw i64 %indvars.iv209, 4 ; 2 uses
  %niter236.next.3 = add i64 %niter236, 4         ; 2 uses
  %niter236.ncmp.3 = icmp eq i64 %niter236.next.3, %unroll_iter235
  br i1 %niter236.ncmp.3, label %._crit_edge207.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !608

bb.bc:                                            ; preds = %._crit_edge, %._crit_edge207, %.critedge
  %i.mg = load i32, ptr %i.bx, align 4
  %i.mh = and i32 %i.mg, 1
  %.not183 = icmp eq i32 %i.mh, 0
  br i1 %.not183, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !250
  %i.mk = add nsw i32 %i.mj, 1
  store i32 %i.mk, ptr %i.mi, align 8, !tbaa !250
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 570
  store i8 0, ptr %i.ml, align 2, !tbaa !434
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui20TableOpenContextMenuEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 8 uses
  %i.d = icmp eq i32 %0, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !248
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %0, %bb.a ], [ %i.f, %bb.b ]    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !217
  %i.i = and i32 %i.h, 7
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !221
  %i.l = icmp eq i32 %.0, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 575
  store i8 1, ptr %i.m, align 1, !tbaa !396
  %i.n = trunc i32 %.0 to i16
  %i.o = select i1 %i.l, i16 -1, i16 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 550
  store i16 %i.o, ptr %i.p, align 2, !tbaa !291
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.r = load i16, ptr %i.q, align 8, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  store i16 %i.r, ptr %i.s, align 2, !tbaa !290
  %i.t = load i32, ptr %i.c, align 8, !tbaa !218
  %i.u = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.17, i64 noundef 0, i32 noundef %i.t)
  %i.v = tail call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.u, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #12

declare void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16TableDrawBordersEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 4             ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.h = load float, ptr %i.g, align 4, !tbaa !437
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  %i.k = load float, ptr %i.j, align 4, !tbaa !449
  %i.l = fcmp olt float %i.h, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !449
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 620
  %i.q = load float, ptr %i.p, align 4, !tbaa !437
  %i.r = fcmp ogt float %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load float, ptr %i.f, align 8, !tbaa !359
  %i.t = load float, ptr %i.i, align 4, !tbaa !358
  %i.u = fcmp olt float %i.s, %i.t
  br i1 %i.u, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.c
  %i.v = load float, ptr %i.m, align 8, !tbaa !358
  %i.w = load float, ptr %i.e, align 4, !tbaa !359
  %i.x = fcmp ogt float %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.d:                                             ; preds = %_ZNK6ImRect8OverlapsERKS_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !401  ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef %i.z, i32 noundef 0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.z, ptr noundef nonnull align 4 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %i.ad, i1 noundef zeroext false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !216 ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !226
  %i.ak = sext i16 %i.af to i64
  %i.al = getelementptr [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ah, %bb.e ], [ %i.am, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !614 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !371
  %i.ar = icmp sgt i16 %i.aq, 0                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui22TableMergeDrawChannelsEP10ImGuiTable:bb.a

bb.ab:                                            ; preds = %._crit_edge
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 9072 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 7 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !212 ; 2 uses
  %i.gf = add nsw i32 %i.ge, -2                   ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 9076 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !635 ; 4 uses
  %i.gi = icmp sgt i32 %i.gf, %i.gh
  br i1 %i.gi, label %bb.ac, label %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge

._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge: ; preds = %bb.ab
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %i.a, i64 9080
  %.pre231 = load ptr, ptr %.phi.trans.insert230, align 8, !tbaa !636
  br label %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = sdiv i32 %i.gh, 2
  %i.gk = add nsw i32 %i.gj, %i.gh
  br label %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i

_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i: ; preds = %bb.ad, %bb.ac
  %i.gl = phi i32 [ %i.gk, %bb.ad ], [ 8, %bb.ac ]
  %i.gm = tail call noundef i32 @llvm.smax.i32(i32 %i.gl, i32 %i.gf) ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = shl nsw i64 %i.gn, 5
  %i.gp = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.go) ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 9080 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !191 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.gr, null
  br i1 %.not6.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i
  %i.gs = load i32, ptr %i.gc, align 8, !tbaa !637
  %i.gt = sext i32 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gp, ptr nonnull align 8 %i.gr, i64 %i.gu, i1 false)
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !191
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.gv)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK8ImVectorI13ImDrawChannelE14_grow_capacityEi.exit.i
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !191
  store i32 %i.gm, ptr %i.gg, align 4, !tbaa !635
  %.pre232 = load i32, ptr %i.gd, align 4, !tbaa !212
  br label %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit

_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit:      ; preds = %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge, %bb.af
  %i.gw = phi i32 [ %i.ge, %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge ], [ %.pre232, %bb.af ] ; 3 uses
  %i.gx = phi ptr [ %.pre231, %._ZN8ImVectorI13ImDrawChannelE6resizeEi.exit_crit_edge ], [ %i.gp, %bb.af ]
  store i32 %i.gf, ptr %i.gc, align 8, !tbaa !637
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 9080
  %i.gz = add nsw i32 %i.gw, -1                   ; 2 uses
  %.not.not14.i = icmp sgt i32 %i.gw, 2
  br i1 %.not.not14.i, label %.lr.ph.i, label %_Z21ImBitArraySetBitRangePjii.exit

.lr.ph.i:                                         ; preds = %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit
  %i.ha = and i32 %i.gz, 31
  %i.hb = add nuw nsw i32 %i.ha, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i
  %.015.i = phi i32 [ 2, %.lr.ph.i ], [ %i.hq, %bb.ag ] ; 4 uses
  %i.hc = and i32 %.015.i, 31
  %i.hd = or i32 %.015.i, 31
  %i.he = icmp sgt i32 %i.gz, %i.hd
  %i.hf = select i1 %i.he, i32 32, i32 %i.hb
  %i.hg = zext nneg i32 %i.hf to i64
  %notmask.i = shl nsw i64 -1, %i.hg
  %i.hh = trunc i64 %notmask.i to i32
  %i.hi = xor i32 %i.hh, -1
  %notmask13.i = shl nsw i32 -1, %i.hc
  %i.hj = and i32 %notmask13.i, %i.hi
  %i.hk = ashr i32 %.015.i, 5
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !299
  %i.ho = or i32 %i.hj, %i.hn
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !299
  %i.hp = and i32 %.015.i, -32
  %i.hq = add nsw i32 %i.hp, 32                   ; 2 uses
  %.not.not.i = icmp slt i32 %i.hq, %i.gw
  br i1 %.not.not.i, label %bb.ag, label %_Z21ImBitArraySetBitRangePjii.exit, !llvm.loop !616

_Z21ImBitArraySetBitRangePjii.exit:               ; preds = %bb.ag, %_ZN8ImVectorI13ImDrawChannelE6resizeEi.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 566 ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !420
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = and i32 %i.ht, 31
  %i.hv = shl nuw i32 1, %i.hu
  %i.hw = xor i32 %i.hv, -1
  %i.hx = lshr i32 %i.ht, 5
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !299
  %i.ib = and i32 %i.ia, %i.hw
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !299
  %i.ic = load i32, ptr %i.gd, align 4, !tbaa !212
  %.neg = select i1 %i.l, i32 -3, i32 -2
  %i.id = add i32 %i.ic, %.neg
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.sroa.040.0.copyload = load float, ptr %i.ie, align 8, !tbaa !177 ; 2 uses
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.sroa.441.0.copyload = load float, ptr %.sroa.441.0..sroa_idx, align 4, !tbaa !177 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !177 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !177 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ig = ashr i32 %i.t, 5                        ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %wide.trip.count = zext i32 %i.ig to i64        ; 6 uses
  %i.ij = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ik = getelementptr i8, ptr %i.aj, i64 %i.ij
  %scevgep = getelementptr i8, ptr %i.ik, i64 %i.ar
  %min.iters.check = icmp ult i32 %i.ig, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.il = add nsw i64 %wide.trip.count, -1
  br label %bb.ah

.preheader:                                       ; preds = %bb.aw
  %i.im = load i32, ptr %i.gd, align 4, !tbaa !212 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 0
  %i.io = icmp ne i32 %.1146, 0
  %i.ip = select i1 %i.in, i1 %i.io, i1 false
  br i1 %i.ip, label %.lr.ph203, label %._crit_edge204

bb.ah:                                            ; preds = %_Z21ImBitArraySetBitRangePjii.exit, %bb.aw
  %indvars.iv215 = phi i64 [ 0, %_Z21ImBitArraySetBitRangePjii.exit ], [ %indvars.iv.next216, %bb.aw ] ; 5 uses
  %.0145198 = phi i32 [ %i.id, %_Z21ImBitArraySetBitRangePjii.exit ], [ %.1146, %bb.aw ] ; 2 uses
  %.0147197 = phi ptr [ %i.gx, %_Z21ImBitArraySetBitRangePjii.exit ], [ %.4, %bb.aw ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv215 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load i32, ptr %i.ir, align 16, !tbaa !634 ; 3 uses
  %.not163 = icmp eq i32 %i.is, 0
  br i1 %.not163, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload = load <4 x float>, ptr %i.iq, align 16, !tbaa !177 ; 3 uses
  %i.it = trunc i64 %indvars.iv215 to i1          ; 2 uses
  %or.cond = select i1 %i.it, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %i.iu = fcmp olt float %.sroa.0.0.vec.extract, %.sroa.040.0.copyload
  %i.iv = select i1 %i.iu, float %.sroa.0.0.vec.extract, float %.sroa.040.0.copyload
  %.sroa.0.0.vec.insert = insertelement <4 x float> %.sroa.0.0.copyload, float %i.iv, i64 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.0.copyload, %bb.ai ], [ %.sroa.0.0.vec.insert, %bb.aj ] ; 3 uses
  %i.iw = icmp samesign ugt i64 %indvars.iv215, 1 ; 2 uses
  %or.cond3 = select i1 %i.iw, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.ix = fcmp olt float %.sroa.0.4.vec.extract, %.sroa.441.0.copyload
  %i.iy = select i1 %i.ix, float %.sroa.0.4.vec.extract, float %.sroa.441.0.copyload
  %.sroa.0.4.vec.insert = insertelement <4 x float> %.sroa.0.0, float %i.iy, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.0.1 = phi <4 x float> [ %.sroa.0.0, %bb.ak ], [ %.sroa.0.4.vec.insert, %bb.al ] ; 3 uses
  br i1 %i.it, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.sroa.0.1, i64 2 ; 2 uses
  %i.iz = fcmp oge float %.sroa.0.8.vec.extract, %.sroa.5.0.copyload
  %i.ja = select i1 %i.iz, float %.sroa.0.8.vec.extract, float %.sroa.5.0.copyload
  %.sroa.0.8.vec.insert = insertelement <4 x float> %.sroa.0.1, float %i.ja, i64 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.0.2 = phi <4 x float> [ %.sroa.0.8.vec.insert, %bb.an ], [ %.sroa.0.1, %bb.am ] ; 4 uses
  br i1 %i.iw, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.jb = load i32, ptr %i.if, align 4, !tbaa !217
  %i.jc = and i32 %i.jb, 131072
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.sroa.0.2, i64 3 ; 2 uses
  %i.je = fcmp oge float %.sroa.0.12.vec.extract, %.sroa.6.0.copyload
  %i.jf = select i1 %i.je, float %.sroa.0.12.vec.extract, float %.sroa.6.0.copyload
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.0.2, float %i.jf, i64 3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.0.3 = phi <4 x float> [ %.sroa.0.12.vec.insert, %bb.aq ], [ %.sroa.0.2, %bb.ap ], [ %.sroa.0.2, %bb.ao ]
  %i.jg = sub nsw i32 %.0145198, %i.is            ; 2 uses
  br i1 %i.ih, label %.lr.ph191, label %.preheader183

.lr.ph191:                                        ; preds = %bb.ar
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !626 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph191
  %scevgep251 = getelementptr i8, ptr %i.ji, i64 %i.ij
  %bound0 = icmp ult ptr %i.as, %scevgep251
  %bound1 = icmp ult ptr %i.ji, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %index ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load = load <4 x i32>, ptr %i.jj, align 4, !tbaa !299, !alias.scope !638
  %wide.load252 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !299, !alias.scope !638
  %i.jl = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.jm = xor <4 x i32> %wide.load252, splat (i32 -1)
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load253 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  %wide.load254 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  %i.jp = and <4 x i32> %wide.load253, %i.jl
  %i.jq = and <4 x i32> %wide.load254, %i.jm
  store <4 x i32> %i.jp, ptr %i.jn, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  store <4 x i32> %i.jq, ptr %i.jo, align 4, !tbaa !299, !alias.scope !639, !noalias !638
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader183, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph191, %middle.block
  %indvars.iv209.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph191 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv209.ph
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !299
  %i.ju = xor i32 %i.jt, -1
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv209.ph ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !299
  %i.jx = and i32 %i.jw, %i.ju
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !299
  %indvars.iv.next210.prol = or disjoint i64 %indvars.iv209.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv209.unr = phi i64 [ %indvars.iv209.ph, %scalar.ph.preheader ], [ %indvars.iv.next210.prol, %scalar.ph.prol ]
  %i.jy = icmp eq i64 %indvars.iv209.ph, %i.il
  br i1 %i.jy, label %.preheader183, label %scalar.ph

.preheader183:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ar
  %i.jz = load i32, ptr %i.gd, align 4, !tbaa !212 ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %.lr.ph195, label %.loopexit

.lr.ph195:                                        ; preds = %.preheader183
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !626
  br label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv209 = phi i64 [ %indvars.iv.next210.1, %scalar.ph ], [ %indvars.iv209.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv209
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !299
  %i.kf = xor i32 %i.ke, -1
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv209 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !299
  %i.ki = and i32 %i.kh, %i.kf
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !299
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next210
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !299
  %i.kl = xor i32 %i.kk, -1
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next210 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !299
  %i.ko = and i32 %i.kn, %i.kl
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !299
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next210.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader183, label %scalar.ph, !llvm.loop !621

bb.as:                                            ; preds = %.lr.ph195, %bb.au
  %i.kp = phi i32 [ %i.jz, %.lr.ph195 ], [ %i.lg, %bb.au ]
  %indvars.iv212 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next213, %bb.au ] ; 4 uses
  %.0143193 = phi i32 [ %i.is, %.lr.ph195 ], [ %.1, %bb.au ] ; 2 uses
  %.1148192 = phi ptr [ %.0147197, %.lr.ph195 ], [ %.2149, %bb.au ] ; 3 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv212 to i32
  %i.kr = lshr i64 %indvars.iv212, 5
  %i.ks = and i64 %i.kr, 134217727
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !299 ; 2 uses
  %i.kv = and i32 %i.kq, 31
  %i.kw = shl nuw i32 1, %i.kv                    ; 2 uses
  %i.kx = and i32 %i.ku, %i.kw
  %.not164 = icmp eq i32 %i.kx, 0
  br i1 %.not164, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ky = xor i32 %i.kw, -1
  %i.kz = and i32 %i.ku, %i.ky
  store i32 %i.kz, ptr %i.kt, align 4, !tbaa !299
  %i.la = add nsw i32 %.0143193, -1
  %i.lb = load ptr, ptr %i.ii, align 8, !tbaa !191
  %i.lc = getelementptr inbounds nuw [32 x i8], ptr %i.lb, i64 %indvars.iv212 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !629
  store <4 x float> %.sroa.0.3, ptr %i.le, align 8, !tbaa !177
  %i.lf = getelementptr inbounds nuw i8, ptr %.1148192, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.1148192, ptr noundef nonnull align 8 dereferenceable(32) %i.lc, i64 32, i1 false)
  %.pre233 = load i32, ptr %i.gd, align 4, !tbaa !212
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.lg = phi i32 [ %.pre233, %bb.at ], [ %i.kp, %bb.as ] ; 2 uses
  %.2149 = phi ptr [ %i.lf, %bb.at ], [ %.1148192, %bb.as ] ; 2 uses
  %.1 = phi i32 [ %i.la, %bb.at ], [ %.0143193, %bb.as ] ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next213, %i.lh
  %i.lj = icmp ne i32 %.1, 0
  %i.lk = select i1 %i.li, i1 %i.lj, i1 false
  br i1 %i.lk, label %bb.as, label %.loopexit, !llvm.loop !622

.loopexit:                                        ; preds = %bb.au, %.preheader183, %bb.ah
  %.3150 = phi ptr [ %.0147197, %bb.ah ], [ %.0147197, %.preheader183 ], [ %.2149, %bb.au ] ; 3 uses
  %.1146 = phi i32 [ %.0145198, %bb.ah ], [ %i.jg, %.preheader183 ], [ %i.jg, %bb.au ] ; 3 uses
  %i.ll = icmp eq i64 %indvars.iv215, 1
  %or.cond5 = select i1 %i.ll, i1 %i.l, i1 false
  br i1 %or.cond5, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit
  %i.lm = getelementptr inbounds nuw i8, ptr %.3150, i64 32
  %i.ln = load i16, ptr %i.hr, align 2, !tbaa !420
  %i.lo = load ptr, ptr %i.ii, align 8, !tbaa !191
  %i.lp = zext i16 %i.ln to i64
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %i.lo, i64 %i.lp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.3150, ptr noundef nonnull align 8 dereferenceable(32) %i.lq, i64 32, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %bb.av
  %.4 = phi ptr [ %i.lm, %bb.av ], [ %.3150, %.loopexit ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, 4
  br i1 %exitcond218.not, label %.preheader, label %bb.ah, !llvm.loop !623

._crit_edge204:                                   ; preds = %bb.ay, %.preheader
  %.lcssa = phi i32 [ %i.im, %.preheader ], [ %i.mk, %bb.ay ]
  %i.lr = load ptr, ptr %i.ii, align 8, !tbaa !640
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 64
  %i.lt = load ptr, ptr %i.gy, align 8, !tbaa !636
  %i.lu = add nsw i32 %.lcssa, -2
  %i.lv = sext i32 %i.lu to i64
  %i.lw = shl nsw i64 %i.lv, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ls, ptr align 8 %i.lt, i64 %i.lw, i1 false)
  br label %._crit_edge.thread

.lr.ph203:                                        ; preds = %.preheader, %bb.ay
  %i.lx = phi i32 [ %i.mk, %bb.ay ], [ %i.im, %.preheader ]
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %bb.ay ], [ 0, %.preheader ] ; 4 uses
  %.2201 = phi i32 [ %.3, %bb.ay ], [ %.1146, %.preheader ] ; 2 uses
  %.5200 = phi ptr [ %.6, %bb.ay ], [ %.4, %.preheader ] ; 3 uses
  %i.ly = trunc nuw nsw i64 %indvars.iv219 to i32
  %i.lz = lshr i64 %indvars.iv219, 5
  %i.ma = and i64 %i.lz, 134217727
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !299
  %i.md = and i32 %i.ly, 31
  %i.me = shl nuw i32 1, %i.md
  %i.mf = and i32 %i.mc, %i.me
  %.not162 = icmp eq i32 %i.mf, 0
  br i1 %.not162, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph203
  %i.mg = load ptr, ptr %i.ii, align 8, !tbaa !191
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %i.mg, i64 %indvars.iv219
  %i.mi = getelementptr inbounds nuw i8, ptr %.5200, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.5200, ptr noundef nonnull align 8 dereferenceable(32) %i.mh, i64 32, i1 false)
  %i.mj = add nsw i32 %.2201, -1
  %.pre234 = load i32, ptr %i.gd, align 4, !tbaa !212
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph203, %bb.ax
  %i.mk = phi i32 [ %.pre234, %bb.ax ], [ %i.lx, %.lr.ph203 ] ; 3 uses
  %.6 = phi ptr [ %i.mi, %bb.ax ], [ %.5200, %.lr.ph203 ]
  %.3 = phi i32 [ %i.mj, %bb.ax ], [ %.2201, %.lr.ph203 ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = icmp slt i64 %indvars.iv.next220, %i.ml
  %i.mn = icmp ne i32 %.3, 0
  %i.mo = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %i.mo, label %.lr.ph203, label %._crit_edge204, !llvm.loop !624

._crit_edge.thread:                               ; preds = %_ZN8ImVectorIcE7reserveEi.exit, %._crit_edge204, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

declare void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui17SetScrollFromPosXEP11ImGuiWindowff(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui5PopIDEv() local_unnamed_addr #2

declare void @_ZN5ImGui8EndChildEv() local_unnamed_addr #2

declare void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17TableSaveSettingsEP10ImGuiTable(ptr nofree noundef captures(none) initializes((578, 579)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 0, ptr %i.a, align 2, !tbaa !284
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !217
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !287  ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310  ; 2 uses
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 3 uses
  %.not67 = icmp eq ptr %i.j, null
  br i1 %.not67, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !221  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.p = load i16, ptr %i.o, align 2, !tbaa !461
  %i.q = sext i16 %i.p to i32
  %i.r = icmp sgt i32 %i.n, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 4, !tbaa !312
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread: ; preds = %bb.b, %bb.d, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.s = load i32, ptr %0, align 8, !tbaa !218
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !221
  %i.v = tail call noundef ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %i.s, i32 noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !287
  %.pre = load i32, ptr %i.t, align 4, !tbaa !221
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  %i.ac = phi i32 [ %.pre, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.n, %bb.c ]
  %.164 = phi ptr [ %i.v, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.l, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ae = trunc i32 %i.ac to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.164, i64 12
  store i16 %i.ae, ptr %i.af, align 4, !tbaa !314
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 10064
  %i.ah = getelementptr inbounds nuw i8, ptr %.164, i64 16
  %i.ai = load i16, ptr %i.ag, align 8, !tbaa !302
  store i16 %i.ai, ptr %i.ah, align 4, !tbaa !302
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !642
  %i.al = getelementptr inbounds nuw i8, ptr %.164, i64 4 ; 11 uses
  store i32 0, ptr %i.al, align 4, !tbaa !315
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !221
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.164, i64 20
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !217
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ar = and i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !315
  br i1 %.1, label %bb.n, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.079 = phi i32 [ %i.cu, %bb.m ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.06078 = phi i1 [ %.1, %bb.m ], [ false, %.lr.ph.preheader ]
  %.06177 = phi ptr [ %i.cw, %bb.m ], [ %i.ao, %.lr.ph.preheader ] ; 7 uses
  %.06276 = phi ptr [ %i.cv, %bb.m ], [ %i.ak, %.lr.ph.preheader ] ; 11 uses
  %i.as = load i32, ptr %.06276, align 4, !tbaa !328
  %i.at = and i32 %i.as, 8
  %.not68 = icmp eq i32 %i.at, 0
  %.in.v = select i1 %.not68, i64 16, i64 28
  %.in = getelementptr inbounds nuw i8, ptr %.06276, i64 %.in.v
  %i.au = load float, ptr %.in, align 4, !tbaa !177 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06276, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !347
  %i.ax = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !411
  store float %i.au, ptr %.06177, align 4, !tbaa !412
end_hunk_1
begin_hunk_2_@_ZN5ImGui13TableBeginRowEP10ImGuiTable:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !249
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 -1, ptr %i.f, align 4, !tbaa !248
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 16777216, ptr %i.h, align 8, !tbaa !299
  store i32 16777216, ptr %i.g, align 4, !tbaa !299
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i16 -1, ptr %i.i, align 8, !tbaa !448
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 570
  store i8 1, ptr %i.j, align 2, !tbaa !434
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !253 ; 2 uses
  %i.m = icmp eq i32 %i.e, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.o = load i16, ptr %i.n, align 2, !tbaa !371
  %i.p = icmp sgt i16 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.r = load float, ptr %i.q, align 4, !tbaa !366 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  store float %i.r, ptr %i.s, align 4, !tbaa !427
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi float [ %i.r, %bb.c ], [ %i.l, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  store float %.0, ptr %i.k, align 8, !tbaa !253
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %.0, ptr %i.t, align 4, !tbaa !254
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !445
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  %i.x = load float, ptr %i.w, align 4, !tbaa !234
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.z = load float, ptr %i.y, align 4, !tbaa !235
  %i.aa = fsub float %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.aa, ptr %i.ab, align 8, !tbaa !466
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !446
  %i.ad = load i32, ptr %i.v, align 8, !tbaa !426
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.af = load float, ptr %i.ae, align 4, !tbaa !427
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !444
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i32 %i.ad, ptr %i.aj, align 8, !tbaa !177
  %.sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  store float %i.ai, ptr %.sroa_idx35, align 4, !tbaa !177
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 345
  store i8 0, ptr %i.al, align 1, !tbaa !443
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i8 0, ptr %i.am, align 8, !tbaa !467
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 308
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float %.0, ptr %i.an, align 4, !tbaa !435
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 1
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 46, float noundef 1.000000e+00) ; 2 uses
  %i.as = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8984
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !263 ; 4 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 124
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !254
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 300
  %i.az = load float, ptr %i.ay, align 4, !tbaa !252
  %i.ba = fcmp ogt float %i.ax, %i.az
  br i1 %i.ba, label %_ZN5ImGui15TableSetBgColorEiji.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp eq i32 %i.ar, 16777216
  %spec.store.select.i = select i1 %i.bb, i32 0, i32 %i.ar
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 156
  store i32 %spec.store.select.i, ptr %i.bc, align 4, !tbaa !299
  br label %_ZN5ImGui15TableSetBgColorEiji.exit

_ZN5ImGui15TableSetBgColorEiji.exit:              ; preds = %bb.f, %bb.g, %bb.h
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !249
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 574
  store i8 1, ptr %i.bf, align 2, !tbaa !394
  br label %bb.j

bb.j:                                             ; preds = %_ZN5ImGui15TableSetBgColorEiji.exit, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui12TableEndCellEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.c = load i32, ptr %i.b, align 4, !tbaa !248
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [120 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !219  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 345
  %i.j = load i8, ptr %i.i, align 1, !tbaa !443, !range !175, !noundef !176
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.p = load i8, ptr %i.o, align 8, !tbaa !255, !range !175, !noundef !176
  %i.q = trunc nuw i8 %i.p to i1
  %.v = select i1 %i.q, i64 76, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.v.sink = phi i64 [ %.v, %bb.d ], [ 80, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %.v.sink ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !177 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.u = load float, ptr %i.t, align 8, !tbaa !438 ; 2 uses
  %i.v = fcmp oge float %i.s, %i.u
  %i.w = select i1 %i.v, float %i.s, float %i.u
  store float %i.w, ptr %i.r, align 4, !tbaa !177
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 106
  %i.y = load i8, ptr %i.x, align 2, !tbaa !309, !range !175, !noundef !176
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !253 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 308
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !435
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load float, ptr %i.ae, align 8, !tbaa !444
  %i.ag = fadd float %i.ad, %i.af                 ; 2 uses
  %i.ah = fcmp oge float %i.ab, %i.ag
  %i.ai = select i1 %i.ah, float %i.ab, float %i.ag
  store float %i.ai, ptr %i.aa, align 8, !tbaa !253
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !239
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store float %i.ak, ptr %i.al, align 4, !tbaa !376
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !445 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 340
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !446 ; 2 uses
  %i.aq = fcmp oge float %i.an, %i.ap
  %i.ar = select i1 %i.aq, float %i.an, float %i.ap
  store float %i.ar, ptr %i.am, align 4, !tbaa !445
  ret void
}

declare void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui33SetWindowClipRectBeforeSetChannelEP11ImGuiWindowRK6ImRect(ptr nofree noundef captures(none) initializes((616, 632)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load <4 x float>, ptr %1, align 4        ; 3 uses
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !230
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401  ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <4 x float> %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !456
  %i.h = load i32, ptr %i.e, align 8, !tbaa !457
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [16 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.k, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2 = getelementptr i8, ptr %i.j, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx2, align 4, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5ImGui19TableGetColumnIndexEv() local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !248
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 12 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !248  ; 3 uses
  %.not16 = icmp eq i32 %i.e, %0
  br i1 %.not16, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not17 = icmp eq i32 %i.e, -1
  br i1 %.not17, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [120 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !219  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 345
  %i.m = load i8, ptr %i.l, align 1, !tbaa !443, !range !175, !noundef !176
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 1
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.s = load i8, ptr %i.r, align 8, !tbaa !255, !range !175, !noundef !176
  %i.t = trunc nuw i8 %i.s to i1
  %.v.i = select i1 %i.t, i64 76, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.v.sink.i = phi i64 [ %.v.i, %bb.g ], [ 80, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.v.sink.i ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !177 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.x = load float, ptr %i.w, align 8, !tbaa !438 ; 2 uses
  %i.y = fcmp oge float %i.v, %i.x
  %i.z = select i1 %i.y, float %i.v, float %i.x
  store float %i.z, ptr %i.u, align 4, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !309, !range !175, !noundef !176
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !253 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 308
  %i.ag = load float, ptr %i.af, align 4, !tbaa !435
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !444
  %i.aj = fadd float %i.ag, %i.ai                 ; 2 uses
  %i.ak = fcmp oge float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.ae, float %i.aj
  store float %i.al, ptr %i.ad, align 8, !tbaa !253
  br label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

_ZN5ImGui12TableEndCellEP10ImGuiTable.exit:       ; preds = %bb.h, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 488
  %i.an = load float, ptr %i.am, align 8, !tbaa !239
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store float %i.an, ptr %i.ao, align 4, !tbaa !376
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !445 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 340
  %i.as = load float, ptr %i.ar, align 4, !tbaa !446 ; 2 uses
  %i.at = fcmp oge float %i.aq, %i.as
  %i.au = select i1 %i.at, float %i.aq, float %i.as
  store float %i.au, ptr %i.ap, align 4, !tbaa !445
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit
  %i.av = icmp sgt i32 %0, -1
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !221
  %i.ay = icmp slt i32 %0, %i.ax
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN5ImGui14TableBeginCellEP10ImGuiTablei(ptr noundef nonnull %i.c, i32 noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !271
  %i.bc = sext i32 %0 to i64
  %i.bd = getelementptr inbounds [120 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 111
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !357, !range !175, !noundef !176
  %i.bg = trunc nuw i8 %i.bf to i1
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.l
  %.0 = phi i1 [ %i.bg, %bb.n ], [ false, %bb.l ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14TableBeginCellEP10ImGuiTablei(ptr nofree noundef captures(none) initializes((116, 120)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [120 x i8], ptr %i.c, i64 %i.d ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !219  ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %1, ptr %i.h, align 4, !tbaa !248
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.j = load float, ptr %i.i, align 4, !tbaa !351 ; 3 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !328
  %i.l = and i32 %i.k, 65536
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load float, ptr %i.m, align 8, !tbaa !466
  %i.o = fadd float %i.j, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 280 ; 2 uses
  store float %.0, ptr %i.p, align 8, !tbaa !426
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.r = load float, ptr %i.q, align 4, !tbaa !254
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load float, ptr %i.s, align 8, !tbaa !444
  %i.u = fadd float %i.r, %i.t                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  store float %i.u, ptr %i.v, align 4, !tbaa !427
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store float %.0, ptr %i.w, align 8, !tbaa !438
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.y = load float, ptr %i.x, align 8, !tbaa !441
  %i.z = fsub float %.0, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 348
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !234
  %i.ac = fsub float %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  store float %i.ac, ptr %i.ad, align 8, !tbaa !468
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  store float %.0, ptr %i.ae, align 8, !tbaa !644
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ag = load float, ptr %i.af, align 4, !tbaa !445
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  store float %i.ag, ptr %i.ah, align 8, !tbaa !428
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 114
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !372
  %i.ak = sext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !224
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 584
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 588
  store float %i.u, ptr %i.an, align 4, !tbaa !392
  store float %i.j, ptr %i.am, align 8, !tbaa !645
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !379
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  store float %i.ap, ptr %i.aq, align 8, !tbaa !469
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.as = load float, ptr %i.ar, align 4, !tbaa !376
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  store float %i.as, ptr %i.at, align 8, !tbaa !239
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !tbaa !382, !range !175, !noundef !176 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 209
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !174
  %i.ax = trunc nuw i8 %i.av to i1
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  store i32 0, ptr %i.ay, align 8, !tbaa !646
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 7856
  store i32 0, ptr %i.az, align 8, !tbaa !429
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !217
  %i.bc = and i32 %i.bb, 1048576
  %.not50 = icmp eq i32 %i.bc, 0
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !211
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !401
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef %i.bg, i32 noundef 2)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  %i.bi = load <4 x float>, ptr %i.bh, align 4    ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !230
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !401 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <4 x float> %i.bi, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !456
  %i.bp = load i32, ptr %i.bm, align 8, !tbaa !457
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [16 x i8], ptr %i.bo, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bs, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.br, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !211
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !423
  %i.bx = zext i16 %i.bw to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef %i.bl, i32 noundef %i.bx)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !447, !range !175, !noundef !176
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cb = load i8, ptr %i.au, align 4, !tbaa !382, !range !175, !noundef !176
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.12, ptr noundef null)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 10320
  store float f0x7F7FFFFF, ptr %i.cd, align 8, !tbaa !647
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 24 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 570 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !434, !range !175, !noundef !176 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !248  ; 3 uses
  %i.i = add nsw i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !221
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.not14 = icmp eq i32 %i.h, -1
  br i1 %.not14, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !271
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [120 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !219  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 345
  %i.t = load i8, ptr %i.s, align 1, !tbaa !443, !range !175, !noundef !176
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.z = load i8, ptr %i.y, align 8, !tbaa !255, !range !175, !noundef !176
  %i.aa = trunc nuw i8 %i.z to i1
  %.v.i = select i1 %i.aa, i64 76, i64 72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.v.sink.i = phi i64 [ %.v.i, %bb.h ], [ 80, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %.v.sink.i ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !177 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 304
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !438 ; 2 uses
  %i.af = fcmp oge float %i.ac, %i.ae
  %i.ag = select i1 %i.af, float %i.ac, float %i.ae
  store float %i.ag, ptr %i.ab, align 4, !tbaa !177
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 106
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !309, !range !175, !noundef !176
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !253 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 308
  %i.an = load float, ptr %i.am, align 4, !tbaa !435
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !444
  %i.aq = fadd float %i.an, %i.ap                 ; 2 uses
  %i.ar = fcmp oge float %i.al, %i.aq
  %i.as = select i1 %i.ar, float %i.al, float %i.aq
  store float %i.as, ptr %i.ak, align 8, !tbaa !253
  br label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

_ZN5ImGui12TableEndCellEP10ImGuiTable.exit:       ; preds = %bb.i, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 488
  %i.au = load float, ptr %i.at, align 8, !tbaa !239
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  store float %i.au, ptr %i.av, align 4, !tbaa !376
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !445 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 340
  %i.az = load float, ptr %i.ay, align 4, !tbaa !446 ; 2 uses
  %i.ba = fcmp oge float %i.ax, %i.az
  %i.bb = select i1 %i.ba, float %i.ax, float %i.az
  store float %i.bb, ptr %i.aw, align 4, !tbaa !445
  %.pre15 = load i32, ptr %i.g, align 4, !tbaa !248
  %i.bc = add nsw i32 %.pre15, 1
  br label %bb.o

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !222, !range !175, !noundef !176
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.c)
  %.pre = load i8, ptr %i.d, align 2, !tbaa !434, !range !175
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi i8 [ %.pre, %bb.l ], [ %i.e, %bb.k ]
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.n, label %_ZN5ImGui12TableNextRowEif.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %_ZN5ImGui12TableNextRowEif.exit

_ZN5ImGui12TableNextRowEif.exit:                  ; preds = %bb.m, %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 148 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = shl i32 %i.bj, 16
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !391
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  store float %i.bm, ptr %i.bn, align 8, !tbaa !444
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !465
  tail call void @_ZN5ImGui13TableBeginRowEP10ImGuiTable(ptr noundef nonnull %i.c)
  %i.bp = load float, ptr %i.bn, align 8, !tbaa !444
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !253
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bp, float 2.000000e+00, float %i.br) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !254 ; 2 uses
  %i.bv = fadd float %i.bu, 0.000000e+00
  %i.bw = fcmp oge float %i.bs, %i.bu
  %i.bx = select i1 %i.bw, float %i.bs, float %i.bv
  store float %i.bx, ptr %i.bq, align 8, !tbaa !253
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !219
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 209
  store i8 1, ptr %i.ca, align 1, !tbaa !174
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit, %_ZN5ImGui12TableNextRowEif.exit
  %.sink = phi i32 [ 0, %_ZN5ImGui12TableNextRowEif.exit ], [ %i.bc, %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit ], [ 0, %bb.d ]
  tail call void @_ZN5ImGui14TableBeginCellEP10ImGuiTablei(ptr noundef nonnull %i.c, i32 noundef %.sink)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !248
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !271
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [120 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 111
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !357, !range !175, !noundef !176
  %i.cj = trunc nuw i8 %i.ci to i1
end_hunk_2
begin_hunk_3_@_ZN5ImGui33TableUpdateColumnsWeightFromWidthEP10ImGuiTable:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  br label %bb.b

.lr.ph32:                                         ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271  ; 3 uses
  %i.h = extractelement <2 x float> %i.y, i64 0   ; 3 uses
  %i.i = extractelement <2 x float> %i.y, i64 1   ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph32.new

.lr.ph32.new:                                     ; preds = %.lr.ph32
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.y, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 106
  %i.n = load i8, ptr %i.m, align 2, !tbaa !309, !range !175, !noundef !176
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.l, align 4, !tbaa !328
  %i.q = and i32 %i.p, 8
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !336
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !332
  %i.v = insertelement <2 x float> poison, float %i.s, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.u, i64 1
  %i.x = fadd <2 x float> %i.k, %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.y = phi <2 x float> [ %i.x, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph32, label %bb.b, !llvm.loop !2

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph32
  %indvars.iv34.epil.init = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next35.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34.epil.init ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !309, !range !175, !noundef !176
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !328
  %i.ae = and i32 %i.ad, 8
  %.not.epil = icmp eq i32 %i.ae, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !332
  %i.ah = fdiv float %i.ag, %i.i
  %i.ai = fmul float %i.h, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store float %i.ai, ptr %i.aj, align 4, !tbaa !336
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %bb.f, %.epil.preheader, %bb.a
  ret void

bb.h:                                             ; preds = %bb.n, %.lr.ph32.new
  %indvars.iv34 = phi i64 [ 0, %.lr.ph32.new ], [ %indvars.iv.next35.1, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph32.new ], [ %niter.next.1, %bb.n ]
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 106
  %i.am = load i8, ptr %i.al, align 2, !tbaa !309, !range !175, !noundef !176
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !328
  %i.ap = and i32 %i.ao, 8
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !332
  %i.as = fdiv float %i.ar, %i.i
  %i.at = fmul float %i.h, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store float %i.at, ptr %i.au, align 4, !tbaa !336
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %indvars.iv34 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 226
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !309, !range !175, !noundef !176
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !328
  %i.bb = and i32 %i.ba, 8
  %.not.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !332
  %i.be = fdiv float %i.bd, %i.i
  %i.bf = fmul float %i.h, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 148
  store float %i.bf, ptr %i.bg, align 4, !tbaa !336
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %indvars.iv.next35.1 = add nuw nsw i64 %indvars.iv34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui26TableSetColumnWidthAutoAllEP10ImGuiTable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !221  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre10 = load ptr, ptr %i.d, align 8, !tbaa !271
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.q, %bb.e ]
  %i.f = phi ptr [ %.pre10, %.lr.ph ], [ %i.r, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 106
  %i.i = load i8, ptr %i.h, align 2, !tbaa !309, !range !175, !noundef !176
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 4, !tbaa !328
  %i.l = and i32 %i.k, 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 115 ; 2 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, -256
  %i.p = or disjoint i16 %i.o, 18
  store i16 %i.p, ptr %i.m, align 1
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !271
  %.pre11 = load i32, ptr %i.a, align 4, !tbaa !221
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %i.e, %bb.c ], [ %.pre11, %bb.d ] ; 2 uses
  %i.r = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !6
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26TablePushBackgroundChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !263  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 616 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !230
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.i = load <4 x float>, ptr %i.h, align 8      ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !230
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !401  ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store <4 x float> %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !456
  %i.o = load i32, ptr %i.l, align 8, !tbaa !457
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [16 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.r, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.q, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !211
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 564
  %i.v = load i16, ptr %i.u, align 4, !tbaa !419
  %i.w = zext i16 %i.v to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef %i.k, i32 noundef %i.w)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25TablePopBackgroundChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !263  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.g = load <4 x float>, ptr %i.f, align 4      ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !230
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !401  ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store <4 x float> %i.g, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !456
  %i.n = load i32, ptr %i.k, align 8, !tbaa !457
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [16 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.q, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.p, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !248
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !271
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [120 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !423
  %i.ab = zext i16 %i.aa to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %i.j, i32 noundef %i.ab)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TablePushColumnChannelEi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [120 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4      ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !230
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !401  ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <4 x float> %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !456
  %i.u = load i32, ptr %i.r, align 8, !tbaa !457
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [16 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.x, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.w, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !211
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !423
  %i.ac = zext i16 %i.ab to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef %i.q, i32 noundef %i.ac)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21TablePopColumnChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !248  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [120 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36 ; 2 uses
  %i.q = load <4 x float>, ptr %i.p, align 4      ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !230
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 712
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !401  ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store <4 x float> %i.q, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !456
  %i.x = load i32, ptr %i.u, align 8, !tbaa !457
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [16 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.aa, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.z, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !423
  %i.af = zext i16 %i.ae to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.t, i32 noundef %i.af)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui17TableGetSortSpecsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217
  %i.g = and i32 %i.f, 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.i = load i8, ptr %i.h, align 1, !tbaa !222, !range !175, !noundef !176
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5ImGui19TableSortSpecsBuildEP10ImGuiTable(ptr noundef nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  %.0 = phi ptr [ %i.k, %bb.e ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.b = load i16, ptr %i.a, align 2, !tbaa !339
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 115 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1              ; 3 uses
  %i.f = lshr i16 %i.e, 12
  %i.g = zext nneg i16 %i.f to i32
  %i.h = lshr i16 %i.e, 8
  %i.i = and i16 %i.h, 3
  %i.j = zext nneg i16 %i.i to i32
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = and i32 %i.k, %i.g
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 117
  %.val = load i8, ptr %i.m, align 1, !tbaa !418
  %i.n = and i8 %.val, 3
  %i.o = zext nneg i8 %i.n to i16
  %i.p = shl nuw nsw i16 %i.o, 8
  %i.q = and i16 %i.e, -769
  %i.r = or disjoint i16 %i.p, %i.q
  store i16 %i.r, ptr %i.d, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.s, align 1, !tbaa !288
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 4) i8 @_ZN5ImGui31TableGetColumnNextSortDirectionEP16ImGuiTableColumn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.b = load i16, ptr %i.a, align 2, !tbaa !339
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = lshr i16 %i.e, 8                         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 117
  %.val13 = load i8, ptr %i.g, align 1, !tbaa !418 ; 4 uses
  %i.h = zext i8 %.val13 to i16
  %i.i = xor i16 %i.f, %i.h
  %i.j = and i16 %i.i, 3
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 117
  %.val14 = load i8, ptr %i.l, align 1, !tbaa !418
  %i.m = and i8 %.val14, 3
  br label %.loopexit

bb.c:                                             ; preds = %.preheader
  %i.n = lshr i8 %.val13, 2
  %i.o = zext nneg i8 %i.n to i16
  %i.p = xor i16 %i.f, %i.o
  %i.q = and i16 %i.p, 3
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i8 %.val13, 4
  %i.t = zext nneg i8 %i.s to i16
  %i.u = xor i16 %i.f, %i.t
  %i.v = and i16 %i.u, 3
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c, %.preheader
  %.01118.lcssa = phi i8 [ 1, %.preheader ], [ 2, %bb.c ], [ 3, %bb.d ]
  %i.x = lshr i16 %i.e, 10
  %i.y = trunc nuw nsw i16 %i.x to i8
  %.rhs.trunc = and i8 %i.y, 3
  %i.z = urem i8 %.01118.lcssa, %.rhs.trunc
  %i.aa = shl nuw nsw i8 %i.z, 1
  %i.ab = lshr i8 %.val13, %i.aa
  %i.ac = and i8 %i.ab, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i8 [ %i.m, %bb.b ], [ %i.ac, %bb.e ], [ 0, %bb.d ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 67108864
  %.not = icmp ne i32 %i.f, 0
  %spec.select = and i1 %2, %.not                 ; 3 uses
  br i1 %spec.select, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !221  ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271  ; 21 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i32 %i.h, 16
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi64 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
end_hunk_3
begin_hunk_4_@_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai:bb.a
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
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
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
  %i.hx = fadd <2 x float> %i.ce, %i.hw
  %i.hy = bitcast i32 %i.hq to float
  %i.hz = fadd float %i.hg, %i.hy
  %i.ia = insertelement <2 x float> poison, float %i.hz, i64 0
  %16 = shufflevector <2 x float> %i.hx, <2 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x float> %16, ptr %i.gb, align 16, !tbaa !177
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
  %.0167227.us = phi float [ %i.mx, %.lr.ph.us ], [ %i.le, %bb.ad ] ; 2 uses
  %.0168226.us = phi ptr [ %.1.i187.us, %.lr.ph.us ], [ %i.lu, %bb.ad ] ; 3 uses
  %i.jx = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0168226.us, i32 noundef 10) #26 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  %spec.select.us = select i1 %i.jy, ptr %i.it, ptr %i.jx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.jz = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %.0168226.us, ptr noundef nonnull %spec.select.us, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.jz, ptr %10, align 8
  %i.ka = extractelement <2 x float> %i.jz, i64 1 ; 2 uses
  %i.kb = load float, ptr %i.my, align 4, !tbaa !384
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
  %i.kl = load i32, ptr %i.mz, align 4, !tbaa !681
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
  %i.le = fadd float %i.nb, %.0167227.us          ; 3 uses
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
  %i.lw = load <2 x float>, ptr %9, align 16, !tbaa !177
  %i.lx = fadd <2 x float> %i.lw, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %i.lx, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #4
  %i.ly = load <2 x float>, ptr %i.gc, align 8, !tbaa !177
  %i.lz = fadd <2 x float> %i.ly, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %i.lz, ptr %15, align 8
  %i.ma = load i16, ptr %i.gz, align 4, !tbaa !297
  %i.mb = icmp eq i16 %i.hl, %i.ma
  %i.mc = load i16, ptr %i.ha, align 2, !tbaa !293
  %i.md = icmp eq i16 %i.hl, %i.mc
  br i1 %i.md, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.me = load i16, ptr %i.hb, align 2, !tbaa !290
  %i.mf = load i16, ptr %i.hc, align 8, !tbaa !216
  %i.mg = icmp eq i16 %i.me, %i.mf
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.mh = phi i1 [ false, %bb.ae ], [ %i.mg, %bb.af ] ; 2 uses
  %or.cond.i.us = select i1 %i.mh, i1 true, i1 %i.mb
  br i1 %or.cond.i.us, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mi = load i16, ptr %i.dy, align 2, !tbaa !370
  %i.mj = add nuw nsw i64 %indvars.iv, 1
  %i.mk = sext i16 %i.mi to i64
  %i.ml = icmp eq i64 %i.mj, %i.mk
  br i1 %i.ml, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mm = load i32, ptr %i.hd, align 4, !tbaa !217
  %i.mn = and i32 %i.mm, 6144
  %.not.i199.us = icmp eq i32 %i.mn, 0
  br i1 %.not.i199.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.mo = load i32, ptr %i.he, align 8, !tbaa !262
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us
end_hunk_4
begin_hunk_5_@_ZN5ImGui15SetColumnOffsetEif:bb.a
tailrecurse.us:                                   ; preds = %.split.us, %_ZL16GetColumnWidthExP15ImGuiOldColumnsib.exit.us
  %.tr.us = phi i32 [ %i.cg, %_ZL16GetColumnWidthExP15ImGuiOldColumnsib.exit.us ], [ %0, %.split.us ] ; 2 uses
  %.tr29.us = phi float [ %i.ck, %_ZL16GetColumnWidthExP15ImGuiOldColumnsib.exit.us ], [ %1, %.split.us ] ; 3 uses
  %i.bj = icmp slt i32 %.tr.us, 0
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %tailrecurse.us
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !481
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %tailrecurse.us
  %.026.us = phi i32 [ %i.bk, %bb.i ], [ %.tr.us, %tailrecurse.us ] ; 6 uses
  %i.bl = icmp slt i32 %.026.us, %i.v
  br i1 %i.bl, label %bb.k, label %.split31.us

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.r, align 1, !tbaa !490, !range !175, !noundef !176
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = icmp slt i32 %.026.us, 0
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = load i32, ptr %i.q, align 4, !tbaa !481
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.012.i.us = phi i32 [ %i.bp, %bb.l ], [ %.026.us, %bb.k ]
  %i.bq = sext i32 %.012.i.us to i64
  %i.br = getelementptr [28 x i8], ptr %i.p, i64 %i.bq ; 4 uses
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr i8, ptr %i.br, i64 28
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !487
  %i.bu = load float, ptr %i.br, align 4, !tbaa !487
  %i.bv = fsub float %i.bt, %i.bu
  br label %_ZL16GetColumnWidthExP15ImGuiOldColumnsib.exit.us

bb.o:                                             ; preds = %bb.m
  %i.bw = getelementptr i8, ptr %i.br, i64 32
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !491
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !491
  %i.ca = fsub float %i.bx, %i.bz
  br label %_ZL16GetColumnWidthExP15ImGuiOldColumnsib.exit.us

_ZL16GetColumnWidthExP15ImGuiOldColumnsib.exit.us: ; preds = %bb.o, %bb.n
  %.0.i.us = phi float [ %i.ca, %bb.o ], [ %i.bv, %bb.n ]
  %i.cb = fmul float %.0.i.us, %i.n               ; 2 uses
  %i.cc = fsub float %.tr29.us, %i.k
  %i.cd = fdiv float %i.cc, %i.n
  %i.ce = sext i32 %.026.us to i64
  %i.cf = getelementptr inbounds [28 x i8], ptr %i.p, i64 %i.ce
  store float %i.cd, ptr %i.cf, align 4, !tbaa !487
  %i.cg = add nsw i32 %.026.us, 1
  %i.ch = load float, ptr %i.s, align 8, !tbaa !489 ; 2 uses
  %i.ci = fcmp oge float %i.ch, %i.cb
  %i.cj = select i1 %i.ci, float %i.ch, float %i.cb
  %i.ck = fadd float %.tr29.us, %i.cj
  br label %tailrecurse.us

.split:                                           ; preds = %bb.a
  br i1 %.not28, label %.split.split.us, label %tailrecurse

.split.split.us:                                  ; preds = %.split
  %i.cl = load float, ptr %i.s, align 8, !tbaa !489
  %i.cm = load i32, ptr %i.t, align 8, !tbaa !482
  %i.cn = fneg float %i.cl
  %i.co = icmp slt i32 %0, 0
  br i1 %i.co, label %bb.p, label %.thread.us35

bb.p:                                             ; preds = %.split.split.us
  %i.cp = load i32, ptr %i.q, align 4, !tbaa !481
  br label %.thread.us35

.thread.us35:                                     ; preds = %bb.p, %.split.split.us
  %.026.us36 = phi i32 [ %i.cp, %bb.p ], [ %0, %.split.split.us ] ; 2 uses
  %i.cq = sub nsw i32 %i.cm, %.026.us36
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cr, float %i.m) ; 2 uses
  %i.ct = fcmp olt float %1, %i.cs
  %i.cu = select i1 %i.ct, float %1, float %i.cs
  br label %.split31.us

tailrecurse:                                      ; preds = %.split
  %i.cv = icmp slt i32 %0, 0
  br i1 %i.cv, label %bb.q, label %.split31.us

bb.q:                                             ; preds = %tailrecurse
  %i.cw = load i32, ptr %i.q, align 4, !tbaa !481
  br label %.split31.us

.split31.us:                                      ; preds = %bb.j, %tailrecurse, %bb.q, %.thread.us35, %.split31.us.split.us.critedge
  %.sink = phi float [ %1, %tailrecurse ], [ %i.cu, %.thread.us35 ], [ %i.bi, %.split31.us.split.us.critedge ], [ %1, %bb.q ], [ %.tr29.us, %bb.j ]
  %.026.sink = phi i32 [ %0, %tailrecurse ], [ %.026.us36, %.thread.us35 ], [ %.026.us.us, %.split31.us.split.us.critedge ], [ %i.cw, %bb.q ], [ %.026.us, %bb.j ]
  %i.cx = fsub float %.sink, %i.k
  %i.cy = fdiv float %i.cx, %i.n
  %i.cz = sext i32 %.026.sink to i64
  %i.da = getelementptr inbounds [28 x i8], ptr %i.p, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !487
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui14SetColumnWidthEif(i32 noundef %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = icmp slt i32 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !477  ; 6 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN5ImGui15GetColumnOffsetEi.exit, label %.thread11

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !481  ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.thread11

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !481
  br label %.thread11

.thread11:                                        ; preds = %bb.b, %bb.d, %bb.c
  %.0913 = phi i32 [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %0, %bb.b ]
  %.010.i = phi i32 [ %i.l, %bb.d ], [ %i.i, %bb.c ], [ %0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !485
  %i.o = sext i32 %.010.i to i64
  %i.p = getelementptr inbounds [28 x i8], ptr %i.n, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !487
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !484 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.u = load float, ptr %i.t, align 8, !tbaa !483
  %i.v = fsub float %i.u, %i.s
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.q, float %i.s)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit

_ZN5ImGui15GetColumnOffsetEi.exit:                ; preds = %bb.b, %.thread11
  %.010 = phi i32 [ %.0913, %.thread11 ], [ %0, %bb.b ]
  %.0.i = phi float [ %i.w, %.thread11 ], [ 0.000000e+00, %bb.b ]
  %i.x = add nsw i32 %.010, 1
  %i.y = fadd float %1, %.0.i
  tail call void @_ZN5ImGui15SetColumnOffsetEif(i32 noundef %i.x, float noundef %i.y)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui18PushColumnClipRectEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !477  ; 2 uses
  %i.f = icmp slt i32 %0, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !481
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ %0, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !485
  %i.k = sext i32 %.0 to i64
  %i.l = getelementptr inbounds [28 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(8) %i.n, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21PushColumnsBackgroundEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !477  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !482
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 616 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.l = load <4 x float>, ptr %i.k, align 4      ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !230
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !401  ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store <4 x float> %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !456
  %i.r = load i32, ptr %i.o, align 8, !tbaa !457
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.u, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.t, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef %i.n, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui20PopColumnsBackgroundEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !477  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !482
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %i.j = load <4 x float>, ptr %i.i, align 4      ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !230
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !401  ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store <4 x float> %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !456
  %i.q = load i32, ptr %i.n, align 8, !tbaa !457
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [16 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.t, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.s, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !481
  %i.x = add nsw i32 %i.w, 1
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.m, i32 noundef %i.x)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui19FindOrCreateColumnsEP11ImGuiWindowj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.ImGuiOldColumns, align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !712  ; 8 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !713
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !711

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !492
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, i8 0, i64 136, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 684 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !714
  %i.k = icmp eq i32 %i.b, %i.j
  br i1 %i.k, label %bb.d, label %._ZN8ImVectorI15ImGuiOldColumnsE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI15ImGuiOldColumnsE7reserveEi.exit_crit_edge.i: ; preds = %._crit_edge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !713
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.l = add nsw i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI15ImGuiOldColumnsE14_grow_capacityEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = sdiv i32 %i.b, 2
  %i.n = add nsw i32 %i.m, %i.b
  br label %_ZNK8ImVectorI15ImGuiOldColumnsE14_grow_capacityEi.exit.i

_ZNK8ImVectorI15ImGuiOldColumnsE14_grow_capacityEi.exit.i: ; preds = %bb.e, %bb.d
  %i.o = phi i32 [ %i.n, %bb.e ], [ 8, %bb.d ]
  %i.p = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.l) ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 136
  %i.s = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.r)
          to label %.noexc unwind label %bb.n     ; 3 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI15ImGuiOldColumnsE14_grow_capacityEi.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !713  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i, label %.noexc18, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.v = load i32, ptr %i.a, align 8, !tbaa !715
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr nonnull align 8 %i.u, i64 %i.x, i1 false)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !713
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.y)
          to label %.noexc18 unwind label %bb.n

.noexc18:                                         ; preds = %bb.f, %.noexc
  store ptr %i.s, ptr %i.t, align 8, !tbaa !713
  store i32 %i.p, ptr %i.i, align 4, !tbaa !714
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !715
  br label %bb.g

bb.g:                                             ; preds = %.noexc18, %._ZN8ImVectorI15ImGuiOldColumnsE7reserveEi.exit_crit_edge.i
  %i.z = phi i32 [ %i.b, %._ZN8ImVectorI15ImGuiOldColumnsE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %.noexc18 ]
  %i.aa = phi ptr [ %.pre.i, %._ZN8ImVectorI15ImGuiOldColumnsE7reserveEi.exit_crit_edge.i ], [ %i.s, %.noexc18 ]
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [136 x i8], ptr %i.aa, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !715
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !715
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112
  invoke void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN18ImDrawListSplitterD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ah)
          to label %_ZN18ImDrawListSplitterD2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

_ZN18ImDrawListSplitterD2Ev.exit.i:               ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !485 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.an, null
  br i1 %.not.i.i19, label %_ZN15ImGuiOldColumnsD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN18ImDrawListSplitterD2Ev.exit.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.an)
          to label %_ZN15ImGuiOldColumnsD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #25
  unreachable

_ZN15ImGuiOldColumnsD2Ev.exit:                    ; preds = %_ZN18ImDrawListSplitterD2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !713
  %i.as = load i32, ptr %i.a, align 8, !tbaa !715
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [136 x i8], ptr %i.ar, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -136   ; 2 uses
  store i32 %1, ptr %i.av, align 8, !tbaa !492
  br label %.loopexit

bb.n:                                             ; preds = %bb.f, %_ZNK8ImVectorI15ImGuiOldColumnsE14_grow_capacityEi.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ImGuiOldColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  resume { ptr, i32 } %i.aw

.loopexit:                                        ; preds = %bb.c, %_ZN15ImGuiOldColumnsD2Ev.exit
  %.1 = phi ptr [ %i.av, %_ZN15ImGuiOldColumnsD2Ev.exit ], [ %i.f, %bb.c ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN15ImGuiOldColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN18ImDrawListSplitterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.c)
          to label %_ZN18ImDrawListSplitterD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable
end_hunk_5
begin_hunk_6_@_ZN5ImGui12BeginColumnsEPKcii:bb.a
  %i.fg = fcmp ogt float %i.ff, f0xFF7FFFFF
  br i1 %i.fg, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fh = load float, ptr %i.dz, align 4, !tbaa !229 ; 2 uses
  %i.fi = fcmp olt float %i.fh, f0xFF7FFFFF
  %.19.i.i = select i1 %i.fi, float %i.fh, float f0xFF7FFFFF
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.t, %bb.s
  %i.fj = phi float [ %i.ff, %bb.s ], [ %.19.i.i, %bb.t ]
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.fe, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.fj, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ex, align 4, !tbaa !177
  %i.fk = load float, ptr %i.u, align 8, !tbaa !228 ; 2 uses
  %i.fl = fcmp ogt float %i.fk, %i.ez
  br i1 %i.fl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.fm = load float, ptr %i.dx, align 8, !tbaa !228 ; 2 uses
  %i.fn = fcmp olt float %i.fm, %i.ez
  %..i6.i = select i1 %i.fn, float %i.fm, float %i.ez
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.fo = phi float [ %i.fk, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %..i6.i, %bb.u ]
  %i.fp = load float, ptr %i.dy, align 4, !tbaa !229 ; 2 uses
  %i.fq = fcmp ogt float %i.fp, f0x7F7FFFFF
  br i1 %i.fq, label %_ZN6ImRect12ClipWithFullERKS_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fr = load float, ptr %i.dz, align 4, !tbaa !229 ; 2 uses
  %i.fs = fcmp olt float %i.fr, f0x7F7FFFFF
  %.19.i7.i = select i1 %i.fs, float %i.fr, float f0x7F7FFFFF
  br label %_ZN6ImRect12ClipWithFullERKS_.exit

_ZN6ImRect12ClipWithFullERKS_.exit:               ; preds = %bb.v, %bb.w
  %i.ft = phi float [ %i.fp, %bb.v ], [ %.19.i7.i, %bb.w ]
  %.sroa.0.0.vec.insert.i8.i = insertelement <2 x float> poison, float %i.fo, i64 0
  %.sroa.0.4.vec.insert.i9.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i, float %i.ft, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i9.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !177
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond120.not, label %._crit_edge, label %bb.p, !llvm.loop !717

bb.x:                                             ; preds = %._crit_edge
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !401
  %i.fx = add nuw nsw i32 %i.ea, 1
  tail call void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef %i.fw, i32 noundef %i.fx)
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !401
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef %i.fy, i32 noundef 1)
  %i.fz = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 5312
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !149
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 456
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !477
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !485 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.gg, ptr noundef nonnull align 4 dereferenceable(8) %i.gh, i1 noundef zeroext false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.gi = load i32, ptr %i.j, align 4, !tbaa !481 ; 4 uses
  %i.gj = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 5312
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !149
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 456
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !477 ; 6 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %_ZN5ImGui15GetColumnOffsetEi.exit110, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gp = icmp slt i32 %i.gi, 0
  br i1 %i.gp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !481
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.010.i = phi i32 [ %i.gr, %bb.aa ], [ %i.gi, %bb.z ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !485 ; 2 uses
  %i.gu = sext i32 %.010.i to i64
  %i.gv = getelementptr inbounds [28 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !487
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !484 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !483
  %i.hb = fsub float %i.ha, %i.gy                 ; 2 uses
  %i.hc = tail call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.gw, float %i.gy)
  %i.hd = add nsw i32 %i.gi, 1
  %i.he = icmp slt i32 %i.gi, -1
  br i1 %i.he, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !481
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.010.i108 = phi i32 [ %i.hg, %bb.ac ], [ %i.hd, %bb.ab ]
  %i.hh = sext i32 %.010.i108 to i64
  %i.hi = getelementptr inbounds [28 x i8], ptr %i.gt, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !487
  %i.hk = tail call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.hj, float %i.gy)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit110

_ZN5ImGui15GetColumnOffsetEi.exit110:             ; preds = %bb.y, %bb.ad
  %.0.i106115 = phi float [ %i.hc, %bb.ad ], [ 0.000000e+00, %bb.y ]
  %.0.i109 = phi float [ %i.hk, %bb.ad ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.hm = fsub float %.0.i109, %.0.i106115
  %i.hn = fmul float %i.hm, 6.500000e-01
  tail call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.hn)
  %i.ho = load float, ptr %i.ab, align 8, !tbaa !496
  %i.hp = fsub float %i.aa, %i.ho                 ; 2 uses
  %i.hq = fcmp oge float %i.hp, 0.000000e+00
  %i.hr = select i1 %i.hq, float %i.hp, float 0.000000e+00 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store float %i.hr, ptr %i.hs, align 8, !tbaa !468
  %i.ht = load float, ptr %i.az, align 8, !tbaa !441 ; 2 uses
  %i.hu = load float, ptr %i.as, align 4, !tbaa !234
  %i.hv = fadd float %i.ht, %i.hu
  %i.hw = fadd float %i.hr, %i.hv
  %i.hx = fptosi float %i.hw to i32
  %i.hy = sitofp i32 %i.hx to float
  store float %i.hy, ptr %i.hl, align 8, !tbaa !426
  %i.hz = fadd float %.0.i109, %i.ht
  %i.ia = fsub float %i.hz, %i.aa
  store float %i.ia, ptr %i.ak, align 8, !tbaa !469
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 644
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !390
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 596
  store float %i.ic, ptr %i.id, align 4, !tbaa !251
  ret void
}

declare void @_ZN5ImGui13PushItemWidthEf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10NextColumnEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !174, !range !175, !noundef !176
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !477  ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !482  ; 2 uses
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load float, ptr %i.o, align 8, !tbaa !441
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.r = load float, ptr %i.q, align 4, !tbaa !234
  %i.s = fadd float %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.u = load float, ptr %i.t, align 8, !tbaa !468
  %i.v = fadd float %i.s, %i.u
  %i.w = fptosi float %i.v to i32
  %i.x = sitofp i32 %i.w to float
  store float %i.x, ptr %i.h, align 8, !tbaa !426
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 5 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !481
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.m
  %spec.store.select = select i1 %i.ab, i32 0, i32 %i.aa
  store i32 %spec.store.select, ptr %i.y, align 4, !tbaa !481
  tail call void @_ZN5ImGui12PopItemWidthEv()
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !481
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !485
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [28 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.ai = load <4 x float>, ptr %i.ah, align 4    ; 3 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !230
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !401 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store <4 x float> %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !177
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !456
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !457
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [16 x i8], ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.as, align 4, !tbaa !177
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.ar, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4, !tbaa !177
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.au = load i32, ptr %i.y, align 4, !tbaa !481
  %i.av = add nsw i32 %i.au, 1
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef %i.al, i32 noundef %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 3300
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !495 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.az = load float, ptr %i.ay, align 8, !tbaa !497 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !427 ; 2 uses
  %i.bc = fcmp oge float %i.az, %i.bb
  %i.bd = select i1 %i.bc, float %i.az, float %i.bb ; 3 uses
  store float %i.bd, ptr %i.ay, align 8, !tbaa !497
  %i.be = load i32, ptr %i.y, align 4, !tbaa !481 ; 6 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5312
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !149
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 456
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !477 ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN5ImGui15GetColumnOffsetEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !485
  %i.bo = zext nneg i32 %i.be to i64
  %i.bp = getelementptr inbounds nuw [28 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !487
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !484 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !483
  %i.bv = fsub float %i.bu, %i.bs
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.bq, float %i.bs)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit

_ZN5ImGui15GetColumnOffsetEi.exit:                ; preds = %bb.f, %bb.g
  %.0.i = phi float [ %i.bw, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.by = load float, ptr %i.bx, align 4, !tbaa !234 ; 2 uses
  %i.bz = fsub float %.0.i, %i.by
  %i.ca = fadd float %i.ax, %i.bz                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store float %i.ca, ptr %i.cb, align 8, !tbaa !468
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.pre61 = load float, ptr %.phi.trans.insert60, align 4, !tbaa !498
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !496
  %i.ce = fsub float %i.ax, %i.cd                 ; 2 uses
  %i.cf = fcmp oge float %i.ce, 0.000000e+00
  %i.cg = select i1 %i.cf, float %i.ce, float 0.000000e+00 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store float %i.cg, ptr %i.ch, align 8, !tbaa !468
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.ci, align 8, !tbaa !467
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store float %i.bd, ptr %i.cj, align 4, !tbaa !498
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !234
  %.pre62 = load ptr, ptr @GImGui, align 8, !tbaa !19
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %.pre62, i64 5312
  %.pre64 = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !149
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %.pre64, i64 456
  %.pre66 = load ptr, ptr %.phi.trans.insert65, align 8, !tbaa !477
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5ImGui15GetColumnOffsetEi.exit
  %i.ck = phi ptr [ %.pre66, %bb.h ], [ %i.bk, %_ZN5ImGui15GetColumnOffsetEi.exit ] ; 6 uses
  %i.cl = phi float [ %i.bd, %bb.h ], [ %.pre61, %_ZN5ImGui15GetColumnOffsetEi.exit ]
  %i.cm = phi float [ %i.cg, %bb.h ], [ %i.ca, %_ZN5ImGui15GetColumnOffsetEi.exit ]
  %i.cn = phi float [ %.pre, %bb.h ], [ %i.by, %_ZN5ImGui15GetColumnOffsetEi.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.cp = load float, ptr %i.co, align 8, !tbaa !441
  %i.cq = fadd float %i.cp, %i.cn
  %i.cr = fadd float %i.cq, %i.cm
  %i.cs = fptosi float %i.cr to i32
  %i.ct = sitofp i32 %i.cs to float
  store float %i.ct, ptr %i.h, align 8, !tbaa !426
  store float %i.cl, ptr %i.ba, align 4, !tbaa !427
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store i32 0, ptr %i.cu, align 8, !tbaa !177
  %.sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  store i32 0, ptr %.sroa_idx57, align 4, !tbaa !177
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store float 0.000000e+00, ptr %i.cv, align 8, !tbaa !428
  %i.cw = icmp eq ptr %i.ck, null
  br i1 %i.cw, label %_ZN5ImGui15GetColumnOffsetEi.exit56, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = icmp slt i32 %i.be, 0
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !481
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.010.i51 = phi i32 [ %i.cz, %bb.k ], [ %i.be, %bb.j ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !485 ; 2 uses
  %i.dc = sext i32 %.010.i51 to i64
  %i.dd = getelementptr inbounds [28 x i8], ptr %i.db, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !487
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.dg = load float, ptr %i.df, align 4, !tbaa !484 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.di = load float, ptr %i.dh, align 8, !tbaa !483
  %i.dj = fsub float %i.di, %i.dg                 ; 2 uses
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.de, float %i.dg)
  %i.dl = add nsw i32 %i.be, 1
  %i.dm = icmp slt i32 %i.be, -1
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !481
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.010.i54 = phi i32 [ %i.do, %bb.m ], [ %i.dl, %bb.l ]
  %i.dp = sext i32 %.010.i54 to i64
  %i.dq = getelementptr inbounds [28 x i8], ptr %i.db, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !487
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.dr, float %i.dg)
  br label %_ZN5ImGui15GetColumnOffsetEi.exit56

_ZN5ImGui15GetColumnOffsetEi.exit56:              ; preds = %bb.i, %bb.n
  %.0.i5259 = phi float [ %i.dk, %bb.n ], [ 0.000000e+00, %bb.i ]
  %.0.i55 = phi float [ %i.ds, %bb.n ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.dt = fsub float %.0.i55, %.0.i5259
  %i.du = fmul float %i.dt, 6.500000e-01
  tail call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.du)
  %i.dv = load float, ptr %i.co, align 8, !tbaa !441
  %i.dw = fadd float %.0.i55, %i.dv
  %i.dx = fsub float %i.dw, %i.ax
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store float %i.dx, ptr %i.dy, align 8, !tbaa !469
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %_ZN5ImGui15GetColumnOffsetEi.exit56, %bb.a, %bb.b
  ret void
}

declare void @_ZN5ImGui12PopItemWidthEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10EndColumnsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 4             ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 456 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !477  ; 12 uses
  tail call void @_ZN5ImGui12PopItemWidthEv()
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !482
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui11PopClipRectEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !401
  tail call void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !488  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !497 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 284 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !427 ; 2 uses
  %i.u = fcmp oge float %i.r, %i.t
  %i.v = select i1 %i.u, float %i.r, float %i.t   ; 4 uses
  store float %i.v, ptr %i.q, align 8, !tbaa !497
end_hunk_6
