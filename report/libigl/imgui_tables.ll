inline.NumInlined: 561
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5ImGui8EndTableEv:bb.a
  %i.kg = phi float [ %i.kf, %bb.bg ], [ 0.000000e+00, %bb.bf ]
  %i.kh = getelementptr inbounds nuw i8, ptr %i.l, i64 248 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 8, !tbaa !392 ; 2 uses
  %i.kj = load float, ptr %i.bn, align 4, !tbaa !333
  %i.kk = load float, ptr %i.eq, align 4, !tbaa !384
  %i.kl = fadd float %i.kj, %i.kk                 ; 3 uses
  %i.km = fadd float %i.kg, %i.kl
  %i.kn = fsub float %i.km, %i.kb                 ; 2 uses
  %i.ko = fcmp oge float %i.ki, %i.kn
  %i.kp = select i1 %i.ko, float %i.ki, float %i.kn
  store float %i.kp, ptr %i.kh, align 8, !tbaa !392
  %i.kq = load float, ptr %i.bo, align 4, !tbaa !324 ; 2 uses
  %i.kr = fcmp olt float %i.kq, %i.kl
  %i.ks = select i1 %i.kr, float %i.kq, float %i.kl
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.kt = load float, ptr %i.bo, align 4, !tbaa !324
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bd
  %.sink = phi float [ %i.ks, %bb.bh ], [ %i.kt, %bb.bi ], [ %i.jz, %bb.bd ] ; 2 uses
  %i.ku = fcmp oge float %.sroa.0.0.copyload, %.sink
  %i.kv = select i1 %i.ku, float %.sroa.0.0.copyload, float %.sink
  store float %i.kv, ptr %i.iz, align 8, !tbaa !381
  %i.kw = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !393 ; 2 uses
  %i.ky = fcmp ugt float %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kz = and i32 %i.jv, 33554432
  %.not218 = icmp eq i32 %i.kz, 0
  br i1 %.not218, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.la = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.lb = load float, ptr %i.la, align 8, !tbaa !394
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.lc = phi float [ %i.lb, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.l, i64 252 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !395 ; 2 uses
  %i.lf = fadd float %i.bd, %i.lc
  %i.lg = fsub float %i.lf, %i.kx                 ; 2 uses
  %i.lh = fcmp oge float %i.le, %i.lg
  %i.li = select i1 %i.lh, float %i.le, float %i.lg
  store float %i.li, ptr %i.ld, align 4, !tbaa !395
  %i.lj = load float, ptr %i.bp, align 8, !tbaa !325 ; 2 uses
  %i.lk = fcmp olt float %i.lj, %i.bd
  %i.ll = select i1 %i.lk, float %i.lj, float %i.bd
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.lm = load float, ptr %i.bp, align 8, !tbaa !325
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sink256 = phi float [ %i.lm, %bb.bn ], [ %i.ll, %bb.bm ] ; 2 uses
  %i.ln = fcmp oge float %.sroa.6.0.copyload, %.sink256
  %i.lo = select i1 %i.ln, float %.sroa.6.0.copyload, float %.sink256
  store float %i.lo, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !377
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.lq = load i8, ptr %i.lp, align 8, !tbaa !220, !range !125, !noundef !126
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5ImGui17TableSaveSettingsEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ls = getelementptr inbounds nuw i8, ptr %i.c, i64 507
  store i8 0, ptr %i.ls, align 1, !tbaa !218
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 8232 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !144 ; 2 uses
  %i.lv = add nsw i32 %i.lu, -1                   ; 2 uses
  store i32 %i.lv, ptr %i.lt, align 8, !tbaa !144
  %i.lw = icmp sgt i32 %i.lu, 0
  br i1 %i.lw, label %bb.br, label %.thread232

bb.br:                                            ; preds = %bb.bq
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 8288
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !149 ; 2 uses
  %i.lz = zext nneg i32 %i.lv to i64
  %i.ma = getelementptr inbounds nuw [112 x i8], ptr %i.ly, i64 %i.lz ; 3 uses
  %.not219 = icmp eq ptr %i.ly, null
  br i1 %.not219, label %.thread232, label %bb.bs

.thread232:                                       ; preds = %bb.br, %bb.bq
  store ptr null, ptr %i.b, align 8, !tbaa !198
  br label %.thread236

bb.bs:                                            ; preds = %bb.br
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !155 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 8248
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !12 ; 2 uses
  %i.me = sext i32 %i.mb to i64
  %i.mf = getelementptr inbounds [520 x i8], ptr %i.md, i64 %i.me ; 3 uses
  store ptr %i.mf, ptr %i.b, align 8, !tbaa !198
  %.not220 = icmp eq ptr %i.md, null
  br i1 %.not220, label %.thread236, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store ptr %i.ma, ptr %i.mg, align 8, !tbaa !154
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 424
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !156
  br label %.thread236

.thread236:                                       ; preds = %bb.bs, %.thread232, %bb.bt
  %i.mj = phi i32 [ %i.mb, %bb.bt ], [ -1, %.thread232 ], [ -1, %bb.bs ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.l, i64 384
  store i32 %i.mj, ptr %i.mk, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui11TableEndRowEP10ImGuiTable(ptr nofree noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 8 uses
  %2 = alloca %struct.ImRect, align 8             ; 6 uses
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.e = load i32, ptr %i.d, align 4, !tbaa !185  ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 1
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.n = load i8, ptr %i.m, align 4, !tbaa !194, !range !125, !noundef !126
  %i.o = trunc nuw i8 %i.n to i1
  %.v.i = select i1 %i.o, i64 68, i64 64
  br label %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit

_ZN5ImGui12TableEndCellEP10ImGuiTable.exit:       ; preds = %bb.b, %bb.c
  %.v.sink.i = phi i64 [ %.v.i, %bb.c ], [ 72, %bb.b ]
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [104 x i8], ptr %i.g, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.v.sink.i ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !127 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.u = load float, ptr %i.t, align 8, !tbaa !381 ; 2 uses
  %i.v = fcmp oge float %i.s, %i.u
  %i.w = select i1 %i.v, float %i.s, float %i.u
  store float %i.w, ptr %i.r, align 4, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !191 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 244
  %i.aa = load float, ptr %i.z, align 4, !tbaa !377
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !183
  %i.ad = fadd float %i.aa, %i.ac                 ; 2 uses
  %i.ae = fcmp oge float %i.y, %i.ad
  %i.af = select i1 %i.ae, float %i.y, float %i.ad
  store float %i.af, ptr %i.x, align 8, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  store float %i.ah, ptr %i.ai, align 4, !tbaa !335
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !193 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 276
  %i.am = load float, ptr %i.al, align 4, !tbaa !396 ; 2 uses
  %i.an = fcmp oge float %i.ak, %i.am
  %i.ao = select i1 %i.an, float %i.ak, float %i.am
  store float %i.ao, ptr %i.aj, align 8, !tbaa !193
  br label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui12TableEndCellEP10ImGuiTable.exit, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 12524
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !397, !range !125, !noundef !126
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef null)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !191 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 220 ; 2 uses
  store float %i.at, ptr %i.au, align 4, !tbaa !398
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !192 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !186 ; 4 uses
  %i.az = add nsw i32 %i.ay, 1                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 498
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !331
  %i.bc = sext i8 %i.bb to i32
  %i.bd = icmp eq i32 %i.az, %i.bc                ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 497
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !399
  %i.bg = sext i8 %i.bf to i32
  %i.bh = icmp eq i32 %i.az, %i.bg
  %i.bi = icmp eq i32 %i.ay, 0
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = fsub float %i.at, %i.aw
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float %i.bj, ptr %i.bk, align 8, !tbaa !348
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !400
  %i.bn = fcmp ult float %i.at, %i.bm
  br i1 %i.bn, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !190
  %i.bq = fcmp ugt float %i.aw, %i.bp
  br i1 %i.bq, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !228 ; 2 uses
  %.not159 = icmp eq i32 %i.bs, 16777216
  br i1 %.not159, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !142
  %i.bv = and i32 %i.bu, 64
  %.not160 = icmp eq i32 %i.bv, 0
  br i1 %.not160, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !187
  %i.by = and i32 %i.bx, 1
  %i.bz = add nuw nsw i32 %i.by, 45
  %i.ca = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bz, float noundef 1.000000e+00)
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !186
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.cb = phi i32 [ %i.ay, %bb.k ], [ %.pre, %bb.l ], [ %i.ay, %bb.j ]
  %.0 = phi i32 [ 0, %bb.k ], [ %i.ca, %bb.l ], [ %i.bs, %bb.j ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !228 ; 2 uses
  %.not162 = icmp eq i32 %i.cd, 16777216
  %spec.select = select i1 %.not162, i32 0, i32 %i.cd ; 3 uses
  %i.ce = icmp sgt i32 %i.cb, 0
  br i1 %i.ce, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !163
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !164
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !142
  %i.cm = and i32 %i.cl, 128
  %.not163 = icmp eq i32 %i.cm, 0
  br i1 %.not163, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = and i32 %i.co, 65536
  %.not164 = icmp eq i32 %i.cp, 0
  %.in.v = select i1 %.not164, i64 172, i64 168
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.cq = load i32, ptr %.in, align 4, !tbaa !228
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.0152 = phi i32 [ %i.cq, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 501 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !401
  %i.ct = icmp sgt i8 %i.cs, -1                   ; 2 uses
  %i.cu = or i32 %spec.select, %.0                ; 2 uses
  %i.cv = or i32 %.0152, %i.cu
  %i.cw = icmp ne i32 %i.cv, 0
  %or.cond = select i1 %i.cw, i1 true, i1 %i.bd
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ct
  br i1 %or.cond3, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !142
  %i.cz = and i32 %i.cy, 1048576
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.dc = load <4 x float>, ptr %i.db, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.dc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = shufflevector <4 x float> %i.dc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !351 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.df, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !156
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !351
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef %i.dj, i32 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %.not166 = icmp eq i32 %spec.select, 0
  %or.cond5.not = icmp eq i32 %i.cu, 0
  br i1 %or.cond5.not, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not165 = icmp ne i32 %.0, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !329 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !285 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 308
  %.val5.i = load float, ptr %i.dr, align 4, !tbaa !168 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val6.i = load float, ptr %7, align 8, !tbaa !169 ; 2 uses
  %.inv.i.i = fcmp oge float %i.dl, %.val5.i
  %..i.i = select i1 %.inv.i.i, float %i.dl, float %.val5.i
  %.inv6.i.i = fcmp oge float %i.aw, %.val6.i
  %8 = select i1 %.inv6.i.i, float %i.aw, float %.val6.i ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %..i.i, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %8, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %1, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %.val9.i = load float, ptr %9, align 4, !tbaa !168 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val10.i = load float, ptr %i.ds, align 8, !tbaa !169 ; 2 uses
  %10 = fcmp olt float %i.dn, %.val9.i
  %..i11.i = select i1 %10, float %i.dn, float %.val9.i
  %11 = fcmp olt float %i.at, %.val10.i
  %12 = select i1 %11, float %i.at, float %.val10.i ; 2 uses
  %.sroa.0.0.vec.insert.i12.i = insertelement <2 x float> poison, float %..i11.i, i64 0
  %.sroa.0.4.vec.insert.i13.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i12.i, float %12, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i13.i, ptr %i.dp, align 8
  %13 = fcmp olt float %8, %12
  %or.cond215 = select i1 %.not165, i1 %13, i1 false
  br i1 %or.cond215, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !351
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.du, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.dp, i32 noundef %.0, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not166, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = load float, ptr %i.do, align 4, !tbaa !380
  %i.dw = load float, ptr %i.dq, align 4, !tbaa !402
  %i.dx = fcmp olt float %i.dv, %i.dw
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !351
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.dz, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.dp, i32 noundef %spec.select, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.aa
  br i1 %i.ct, label %bb.ac, label %.loopexit192

bb.ac:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eb = load i8, ptr %i.cr, align 1, !tbaa !401 ; 2 uses
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !215 ; 2 uses
  %i.ed = sext i8 %i.eb to i64
  %.idx = shl nsw i64 %i.ed, 3
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 %.idx
  %.not167193 = icmp slt i8 %i.eb, 0
  br i1 %.not167193, label %.loopexit192, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %_ZN5ImGui18TableGetCellBgRectEPK10ImGuiTablei.exit
  %.0153194 = phi ptr [ %i.ec, %.lr.ph ], [ %i.gc, %_ZN5ImGui18TableGetCellBgRectEPK10ImGuiTablei.exit ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0153194, i64 4
  %i.en = load i8, ptr %i.em, align 4, !tbaa !403
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !211
  %i.ep = sext i8 %i.en to i64
  %i.eq = getelementptr inbounds [104 x i8], ptr %i.eo, i64 %i.ep ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !284 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 12 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !334 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 84
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !292
  %i.ex = icmp eq i8 %i.ew, -1
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load float, ptr %i.eg, align 4, !tbaa !179
  %i.ez = fsub float %i.es, %i.ey
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.013.i = phi float [ %i.ez, %bb.ae ], [ %i.es, %bb.ad ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 85
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !289
  %i.fc = icmp eq i8 %i.fb, -1
  br i1 %i.fc, label %bb.ag, label %_ZN5ImGui18TableGetCellBgRectEPK10ImGuiTablei.exit

bb.ag:                                            ; preds = %bb.af
  %i.fd = load float, ptr %i.eh, align 8, !tbaa !180
  %i.fe = fadd float %i.eu, %i.fd
  br label %_ZN5ImGui18TableGetCellBgRectEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetCellBgRectEPK10ImGuiTablei.exit: ; preds = %bb.af, %bb.ag
  %.0.i = phi float [ %i.fe, %bb.ag ], [ %i.eu, %bb.af ]
  %i.ff = load float, ptr %i.av, align 4, !tbaa !192
  %i.fg = load float, ptr %i.as, align 8, !tbaa !191
  %i.fh = load <2 x float>, ptr %i.ej, align 4, !tbaa !127 ; 2 uses
  %i.fi = insertelement <2 x float> poison, float %.013.i, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.ff, i64 1 ; 2 uses
  %i.fk = fcmp oge <2 x float> %i.fj, %i.fh
  %i.fl = select <2 x i1> %i.fk, <2 x float> %i.fj, <2 x float> %i.fh ; 2 uses
  store <2 x float> %i.fl, ptr %2, align 8
  %i.fm = load <2 x float>, ptr %i.ek, align 4, !tbaa !127 ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.fg, i64 1 ; 2 uses
  %i.fp = fcmp olt <2 x float> %i.fo, %i.fm
  %i.fq = select <2 x i1> %i.fp, <2 x float> %i.fo, <2 x float> %i.fm ; 2 uses
  store <2 x float> %i.fq, ptr %i.ei, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !337 ; 2 uses
  %i.ft = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  %i.fu = fcmp oge float %i.ft, %i.fs
  %i.fv = select i1 %i.fu, float %i.ft, float %i.fs
  store float %i.fv, ptr %2, align 8, !tbaa !318
  %i.fw = load float, ptr %i.et, align 4, !tbaa !334 ; 2 uses
  %i.fx = extractelement <2 x float> %i.fq, i64 0 ; 2 uses
  %i.fy = fcmp olt float %i.fx, %i.fw
  %i.fz = select i1 %i.fy, float %i.fx, float %i.fw
  store float %i.fz, ptr %i.ei, align 8, !tbaa !317
  %i.ga = load ptr, ptr %i.el, align 8, !tbaa !351
  %i.gb = load i32, ptr %.0153194, align 4, !tbaa !405
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.ga, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.ei, i32 noundef %i.gb, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.gc = getelementptr inbounds nuw i8, ptr %.0153194, i64 8 ; 2 uses
  %.not167 = icmp ugt ptr %i.gc, %i.ee
  br i1 %.not167, label %.loopexit192, label %bb.ad, !llvm.loop !406

.loopexit192:                                     ; preds = %_ZN5ImGui18TableGetCellBgRectEPK10ImGuiTablei.exit, %bb.ac, %bb.ab
  %.not168 = icmp eq i32 %.0152, 0
  br i1 %.not168, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.loopexit192
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !407
  %i.gf = fcmp ult float %i.aw, %i.ge
  br i1 %i.gf, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !408
  %i.gi = fcmp olt float %i.aw, %i.gh
  br i1 %i.gi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !346
  store float %i.gm, ptr %3, align 4, !tbaa !168
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.aw, ptr %i.gn, align 4, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.gp = load float, ptr %i.go, align 4, !tbaa !347
  store float %i.gp, ptr %4, align 4, !tbaa !168
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.aw, ptr %i.gq, align 4, !tbaa !169
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.gk, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %.0152, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %.loopexit192
  br i1 %i.bd, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !407
  %i.gt = fcmp ult float %i.at, %i.gs
  br i1 %i.gt, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !408
  %i.gw = fcmp olt float %i.at, %i.gv
  br i1 %i.gw, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !346
  store float %i.ha, ptr %5, align 4, !tbaa !168
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.at, ptr %i.hb, align 4, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !347
  store float %i.hd, ptr %6, align 4, !tbaa !168
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.at, ptr %i.he, align 4, !tbaa !169
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !196
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.gy, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.hg, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.i
  br i1 %i.bh, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.critedge
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !165 ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph196, label %.loopexit
end_hunk_0
