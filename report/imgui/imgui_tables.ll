inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui8EndTableEv:bb.a
  %i.nx = load float, ptr %i.ch, align 4, !tbaa !414
  %i.ny = fadd float %i.nx, %i.nw
  br i1 %.not267, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.k, i64 196
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !544
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.ob = phi float [ %i.oa, %bb.by ], [ 0.000000e+00, %bb.bx ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.m, i64 316 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !545 ; 2 uses
  %i.oe = fadd float %i.ny, %i.ob                 ; 3 uses
  %i.of = fsub float %i.oe, %i.ns                 ; 2 uses
  %i.og = fcmp oge float %i.od, %i.of
  %i.oh = select i1 %i.og, float %i.od, float %i.of
  store float %i.oh, ptr %i.oc, align 4, !tbaa !545
  %i.oi = load float, ptr %i.cd, align 4, !tbaa !412 ; 2 uses
  %i.oj = fcmp olt float %i.oi, %i.oe
  %i.ok = select i1 %i.oj, float %i.oi, float %i.oe
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.ol = load float, ptr %i.cd, align 4, !tbaa !412
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink331 = phi float [ %i.ol, %bb.ca ], [ %i.ok, %bb.bz ] ; 2 uses
  %i.om = fcmp oge float %.sroa.6.0.copyload, %.sink331
  %i.on = select i1 %i.om, float %.sroa.6.0.copyload, float %.sink331
  store float %i.on, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !524
  %i.oo = getelementptr inbounds nuw i8, ptr %i.c, i64 578
  %i.op = load i8, ptr %i.oo, align 2, !tbaa !306, !range !166, !noundef !167
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN5ImGui17TableSaveSettingsEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.or = getelementptr inbounds nuw i8, ptr %i.c, i64 571
  store i8 0, ptr %i.or, align 1, !tbaa !304
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 8996 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !174 ; 3 uses
  %i.ou = add nsw i32 %i.ot, -1
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !174
  %i.ov = icmp sgt i32 %i.ot, 1
  br i1 %i.ov, label %bb.ce, label %.thread297

bb.ce:                                            ; preds = %bb.cd
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 9008
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !185
  %i.oy = zext nneg i32 %i.ot to i64
  %i.oz = getelementptr [176 x i8], ptr %i.ox, i64 %i.oy ; 3 uses
  %i.pa = getelementptr i8, ptr %i.oz, i64 -352   ; 3 uses
  %.not280 = icmp eq ptr %i.pa, null
  br i1 %.not280, label %.thread297, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !246
  %i.pc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !245
  %i.pe = icmp eq i32 %i.pb, %i.pd
  br i1 %i.pe, label %bb.cg, label %.thread297

.thread297:                                       ; preds = %bb.cf, %bb.ce, %bb.cd
  store ptr null, ptr %i.b, align 8, !tbaa !277
  br label %.thread301

bb.cg:                                            ; preds = %bb.cf
  %i.pf = getelementptr i8, ptr %i.oz, i64 -348
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !206 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 9024
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !11 ; 2 uses
  %i.pj = sext i32 %i.pg to i64
  %i.pk = getelementptr inbounds [592 x i8], ptr %i.pi, i64 %i.pj ; 3 uses
  store ptr %i.pk, ptr %i.b, align 8, !tbaa !277
  %.not281 = icmp eq ptr %i.pi, null
  br i1 %.not281, label %.thread301, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store ptr %i.pa, ptr %i.pl, align 8, !tbaa !192
  %i.pm = getelementptr i8, ptr %i.oz, i64 -272
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 416
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !209
  br label %.thread301

.thread301:                                       ; preds = %bb.cg, %.thread297, %bb.ch
  %i.po = phi i32 [ %i.pg, %bb.ch ], [ -1, %.thread297 ], [ -1, %bb.cg ]
  %i.pp = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  store i32 %i.po, ptr %i.pp, align 8, !tbaa !279
  call void @_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv()
  br label %bb.ci

bb.ci:                                            ; preds = %.thread301, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr nofree noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 8 uses
  %2 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !262  ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !291
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [120 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !220  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 345
  %i.m = load i8, ptr %i.l, align 1, !tbaa !546, !range !166, !noundef !167
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
  %i.s = load i8, ptr %i.r, align 8, !tbaa !269, !range !166, !noundef !167
  %i.t = trunc nuw i8 %i.s to i1
  %.v.i = select i1 %i.t, i64 76, i64 72
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.v.sink.i = phi i64 [ %.v.i, %bb.e ], [ 80, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.v.sink.i ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !168 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.x = load float, ptr %i.w, align 8, !tbaa !528 ; 2 uses
  %i.y = fcmp oge float %i.v, %i.x
  %i.z = select i1 %i.y, float %i.v, float %i.x
  store float %i.z, ptr %i.u, align 4, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !333, !range !166, !noundef !167
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !267 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 308
  %i.ag = load float, ptr %i.af, align 4, !tbaa !524
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !547
  %i.aj = fadd float %i.ag, %i.ai                 ; 2 uses
  %i.ak = fcmp oge float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.ae, float %i.aj
  store float %i.al, ptr %i.ad, align 8, !tbaa !267
  br label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

_ZN5ImGui12TableEndCellEP10ImGuiTable.exit:       ; preds = %bb.f, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 488
  %i.an = load float, ptr %i.am, align 8, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store float %i.an, ptr %i.ao, align 4, !tbaa !424
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !548 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 340
  %i.as = load float, ptr %i.ar, align 4, !tbaa !549 ; 2 uses
  %i.at = fcmp oge float %i.aq, %i.as
  %i.au = select i1 %i.at, float %i.aq, float %i.as
  store float %i.au, ptr %i.ap, align 4, !tbaa !548
  store i32 -1, ptr %i.d, align 4, !tbaa !262
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !550, !range !166, !noundef !167
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef null)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.az = load float, ptr %i.ay, align 8, !tbaa !267 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 2 uses
  store float %i.az, ptr %i.ba, align 4, !tbaa !503
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !268 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !263 ; 5 uses
  %i.bf = add nsw i32 %i.be, 1                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !419
  %i.bi = sext i16 %i.bh to i32
  %i.bj = icmp eq i32 %i.bf, %i.bi                ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !449
  %i.bm = sext i16 %i.bl to i32
  %i.bn = icmp eq i32 %i.bf, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !217 ; 2 uses
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !229
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
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !442
  %i.cf = fadd float %i.cc, %i.ce
  store float %i.cf, ptr %i.cd, align 4, !tbaa !442
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZN5ImGui20TableGetInstanceDataEP10ImGuiTablei.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !551
  %i.ci = fcmp ult float %i.az, %i.ch
  br i1 %i.ci, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !266
  %i.cl = fcmp ugt float %i.bc, %i.ck
  br i1 %i.cl, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 522
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !320
  %.not172 = icmp eq i16 %i.cn, -1
  br i1 %.not172, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.cp = load float, ptr %i.co, align 4, !tbaa !416 ; 2 uses
  %i.cq = fcmp oge float %i.cp, %i.bc
  %i.cr = fcmp olt float %i.cp, %i.az
  %or.cond185 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond185, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !409
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.be, ptr %i.cs, align 4, !tbaa !409
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !323 ; 2 uses
  %.not173 = icmp eq i32 %i.cw, 16777216
  br i1 %.not173, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !218
  %i.cz = and i32 %i.cy, 64
  %.not174 = icmp eq i32 %i.cz, 0
  br i1 %.not174, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.db = load i32, ptr %i.da, align 8, !tbaa !264
  %i.dc = and i32 %i.db, 1
  %i.dd = add nuw nsw i32 %i.dc, 49
  %i.de = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.dd, float noundef 1.000000e+00)
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !263
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.df = phi i32 [ %i.be, %bb.v ], [ %.pre, %bb.w ], [ %i.be, %bb.u ]
  %.0 = phi i32 [ 0, %bb.v ], [ %i.de, %bb.w ], [ %i.cw, %bb.u ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !323 ; 2 uses
  %.not176 = icmp eq i32 %i.dh, 16777216
  %spec.select = select i1 %.not176, i32 0, i32 %i.dh ; 3 uses
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !218
  %i.dl = and i32 %i.dk, 128
  %.not177 = icmp eq i32 %i.dl, 0
  br i1 %.not177, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load i32, ptr %i.bx, align 4
  %i.dn = and i32 %i.dm, 65536
  %.not178 = icmp eq i32 %i.dn, 0
  %.in.v = select i1 %.not178, i64 168, i64 164
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.do = load i32, ptr %.in, align 4, !tbaa !323
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0162 = phi i32 [ %i.do, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !552
  %i.dr = icmp sgt i16 %i.dq, -1                  ; 2 uses
  %i.ds = or i32 %spec.select, %.0                ; 2 uses
  %i.dt = or i32 %.0162, %i.ds
  %i.du = icmp ne i32 %i.dt, 0
  %or.cond = select i1 %i.du, i1 true, i1 %i.bj
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.dr
  br i1 %or.cond3, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !218
  %i.dx = and i32 %i.dw, 1048576
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ea = load <4 x float>, ptr %i.dz, align 8    ; 2 uses
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !456 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !209
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !456
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef %i.eh, i32 noundef 0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad
  %.not180 = icmp eq i32 %spec.select, 0
  %or.cond5.not = icmp eq i32 %i.ds, 0
  br i1 %or.cond5.not, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not179 = icmp ne i32 %.0, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !432 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.el = load float, ptr %i.ek, align 8, !tbaa !426 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 304
  %3 = load float, ptr %i.ep, align 8, !tbaa !232 ; 2 uses
  %.inv.i.i = fcmp oge float %i.ej, %3
  %..i.i = select i1 %.inv.i.i, float %i.ej, float %3
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %5 = load float, ptr %4, align 4, !tbaa !233    ; 2 uses
  %.inv12.i.i = fcmp oge float %i.bc, %5
  %6 = select i1 %.inv12.i.i, float %i.bc, float %5 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %..i.i, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %6, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %1, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %7 = load float, ptr %i.eq, align 8, !tbaa !232 ; 2 uses
  %8 = fcmp olt float %i.el, %7
  %..i4.i = select i1 %8, float %i.el, float %7
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %10 = load float, ptr %9, align 4, !tbaa !233   ; 2 uses
  %11 = fcmp olt float %i.az, %10
  %12 = select i1 %11, float %i.az, float %10     ; 2 uses
  %.sroa.0.0.vec.insert.i5.i = insertelement <2 x float> poison, float %..i4.i, i64 0
  %.sroa.0.4.vec.insert.i6.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i5.i, float %12, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i6.i, ptr %i.en, align 8
  %13 = fcmp olt float %6, %12
  %or.cond226 = select i1 %.not179, i1 %13, i1 false
  br i1 %or.cond226, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !456
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.es, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.en, i32 noundef %.0, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %.not180, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = load float, ptr %i.em, align 4, !tbaa !527
  %i.eu = load float, ptr %i.eo, align 4, !tbaa !553
  %i.ev = fcmp olt float %i.et, %i.eu
  br i1 %i.ev, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !456
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ex, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.en, i32 noundef %spec.select, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.al

bb.al:                                            ; preds = %bb.ae, %bb.ak
  br i1 %i.dr, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ez = load i16, ptr %i.dp, align 8, !tbaa !552 ; 2 uses
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !299 ; 2 uses
  %i.fb = sext i16 %i.ez to i64
  %.idx = shl nsw i64 %i.fb, 3
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 %.idx
  %.not181200 = icmp slt i16 %i.ez, 0
  br i1 %.not181200, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 312
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %bb.ap
  %.0164201 = phi ptr [ %i.fa, %.lr.ph ], [ %i.gk, %bb.ap ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0164201, i64 4
  %i.fl = load i16, ptr %i.fk, align 4, !tbaa !554
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !291
  %i.fn = sext i16 %i.fl to i64
  %i.fo = getelementptr inbounds [120 x i8], ptr %i.fm, i64 %i.fn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !423 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 12 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !422 ; 2 uses
  %i.ft = load float, ptr %i.fe, align 8, !tbaa !432 ; 2 uses
  %i.fu = fcmp oge float %i.fq, %i.ft
  %i.fv = select i1 %i.fu, float %i.fq, float %i.ft ; 2 uses
  %i.fw = load float, ptr %i.ff, align 8, !tbaa !426 ; 2 uses
  %i.fx = fcmp olt float %i.fs, %i.fw
  %i.fy = select i1 %i.fx, float %i.fs, float %i.fw ; 2 uses
  %i.fz = load float, ptr %i.bb, align 4, !tbaa !268 ; 2 uses
  %i.ga = load float, ptr %i.ay, align 8, !tbaa !267 ; 2 uses
  %16 = load float, ptr %i.fh, align 8, !tbaa !232 ; 2 uses
  %.inv.i.i191 = fcmp ole float %16, %i.fv
  %..i.i192 = select i1 %.inv.i.i191, float %i.fv, float %16 ; 3 uses
  %17 = load float, ptr %14, align 4, !tbaa !233  ; 2 uses
  %.inv12.i.i193 = fcmp oge float %i.fz, %17
  %18 = select i1 %.inv12.i.i193, float %i.fz, float %17 ; 2 uses
  %.sroa.0.0.vec.insert.i.i194 = insertelement <2 x float> poison, float %..i.i192, i64 0
  %.sroa.0.4.vec.insert.i.i195 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i194, float %18, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i195, ptr %2, align 8
  %19 = load float, ptr %i.fi, align 8, !tbaa !232 ; 2 uses
  %20 = fcmp ogt float %19, %i.fy
  %..i4.i196 = select i1 %20, float %i.fy, float %19 ; 3 uses
  %21 = load float, ptr %15, align 4, !tbaa !233  ; 2 uses
  %22 = fcmp olt float %i.ga, %21
  %23 = select i1 %22, float %i.ga, float %21     ; 2 uses
  %.sroa.0.0.vec.insert.i5.i197 = insertelement <2 x float> poison, float %..i4.i196, i64 0
  %.sroa.0.4.vec.insert.i6.i198 = insertelement <2 x float> %.sroa.0.0.vec.insert.i5.i197, float %23, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i6.i198, ptr %i.fg, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !556 ; 2 uses
  %i.gd = fcmp ole float %i.gc, %..i.i192
  %i.ge = select i1 %i.gd, float %..i.i192, float %i.gc
  store float %i.ge, ptr %2, align 8, !tbaa !405
  %i.gf = load float, ptr %i.fr, align 4, !tbaa !422 ; 2 uses
  %i.gg = fcmp ogt float %i.gf, %..i4.i196
  %i.gh = select i1 %i.gg, float %..i4.i196, float %i.gf
  store float %i.gh, ptr %i.fg, align 8, !tbaa !404
  %24 = fcmp olt float %18, %23
  br i1 %24, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gi = load ptr, ptr %i.fj, align 8, !tbaa !456
  %i.gj = load i32, ptr %.0164201, align 4, !tbaa !557
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.gi, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.fg, i32 noundef %i.gj, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  %i.gk = getelementptr inbounds nuw i8, ptr %.0164201, i64 8 ; 2 uses
  %.not181 = icmp ugt ptr %i.gk, %i.fc
  br i1 %.not181, label %.loopexit, label %bb.an, !llvm.loop !558

.loopexit:                                        ; preds = %bb.ap, %bb.am, %bb.al
  %.not182 = icmp eq i32 %.0162, 0
  br i1 %.not182, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !559
  %i.gn = fcmp ult float %i.bc, %i.gm
  br i1 %i.gn, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.gp = load float, ptr %i.go, align 4, !tbaa !560
  %i.gq = fcmp olt float %i.bc, %i.gp
  br i1 %i.gq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !456
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !437
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gw = load float, ptr %i.gv, align 8, !tbaa !438
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.gs, float noundef %i.gu, float noundef %i.gw, float noundef %i.bc, i32 noundef %.0162, float noundef 1.000000e+00)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %.loopexit
  br i1 %i.bj, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !559
  %i.gz = fcmp ult float %i.az, %i.gy
  br i1 %i.gz, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !560
  %i.hc = fcmp olt float %i.az, %i.hb
  br i1 %i.hc, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !456
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !437
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !438
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !275
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.he, float noundef %i.hg, float noundef %i.hi, float noundef %i.az, i32 noundef %i.hk, float noundef 1.000000e+00)
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.p
  br i1 %i.bn, label %.preheader, label %bb.bc

.preheader:                                       ; preds = %.critedge
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !222 ; 5 uses
  %i.hn = icmp sgt i32 %i.hm, 0                   ; 2 uses
  br i1 %i.hn, label %.lr.ph203, label %._crit_edge

.lr.ph203:                                        ; preds = %.preheader
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !226 ; 9 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !291 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.hm to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.hs = icmp ult i32 %i.hm, 8
  br i1 %i.hs, label %.epil.preheader, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.ay

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph203
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod227 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod227)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ax ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.ht = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv.epil
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 114
  store i8 %i.hp, ptr %i.hu, align 2, !tbaa !420
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ax, !llvm.loop !561

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ax, %.preheader
  %i.hv = load float, ptr %i.ay, align 8, !tbaa !267 ; 3 uses
  %i.hw = fadd float %i.hv, 1.000000e+00          ; 2 uses
  %i.hx = load float, ptr %i.cg, align 4, !tbaa !551 ; 2 uses
  %i.hy = fcmp oge float %i.hw, %i.hx
  %i.hz = select i1 %i.hy, float %i.hw, float %i.hx ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !414 ; 2 uses
  %i.ic = fsub float %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store float %i.ic, ptr %i.id, align 4, !tbaa !450
  br i1 %i.bj, label %bb.az, label %bb.bc

bb.ay:                                            ; preds = %bb.ay, %.lr.ph203.new
  %indvars.iv = phi i64 [ 0, %.lr.ph203.new ], [ %indvars.iv.next.7, %bb.ay ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph203.new ], [ %niter.next.7, %bb.ay ]
  %i.ie = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 114
  store i8 %i.hp, ptr %i.if, align 2, !tbaa !420
  %i.ig = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 234
  store i8 %i.hp, ptr %i.ih, align 2, !tbaa !420
  %i.ii = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 354
  store i8 %i.hp, ptr %i.ij, align 2, !tbaa !420
  %i.ik = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 474
  store i8 %i.hp, ptr %i.il, align 2, !tbaa !420
  %i.im = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 594
  store i8 %i.hp, ptr %i.in, align 2, !tbaa !420
  %i.io = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 714
  store i8 %i.hp, ptr %i.ip, align 2, !tbaa !420
  %i.iq = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 834
  store i8 %i.hp, ptr %i.ir, align 2, !tbaa !420
  %i.is = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 954
  store i8 %i.hp, ptr %i.it, align 2, !tbaa !420
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !562

bb.az:                                            ; preds = %._crit_edge
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 1, ptr %i.iu, align 8, !tbaa !269
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !266 ; 4 uses
  %i.ix = fcmp olt float %i.hz, %i.iw
  %i.iy = select i1 %i.ix, float %i.hz, float %i.iw ; 7 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 340
  store float %i.iy, ptr %i.iz, align 4, !tbaa !563
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 308
  store float %i.iy, ptr %i.ja, align 4, !tbaa !559
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %i.iw, ptr %i.jb, align 4, !tbaa !564
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.iw, ptr %i.jc, align 4, !tbaa !560
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 566
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !489
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i16 %i.je, ptr %i.jf, align 4, !tbaa !488
  %i.jg = load float, ptr %i.bb, align 4, !tbaa !268
  %i.jh = fsub float %i.hv, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !454
  %i.jk = fadd float %i.hv, %i.jj
  %i.jl = fsub float %i.jk, %i.ib                 ; 3 uses
  store float %i.jl, ptr %i.ba, align 4, !tbaa !503
  store float %i.jl, ptr %i.ay, align 8, !tbaa !267
  %i.jm = fsub float %i.jl, %i.jh
  store float %i.jm, ptr %i.bb, align 4, !tbaa !268
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !291 ; 6 uses
  br i1 %i.hn, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %bb.az
  %wide.trip.count212 = zext nneg i32 %i.hm to i64 ; 2 uses
  %xtraiter229 = and i64 %wide.trip.count212, 3   ; 3 uses
  %i.jp = icmp ult i32 %i.hm, 4
  br i1 %i.jp, label %.epil.preheader228, label %.lr.ph206.new

.lr.ph206.new:                                    ; preds = %.lr.ph206
  %unroll_iter233 = and i64 %wide.trip.count212, 2147483644
  br label %bb.bb

._crit_edge207.loopexit.unr-lcssa:                ; preds = %bb.bb
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
end_hunk_0
