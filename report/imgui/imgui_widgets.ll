Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aj = phi float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ak = fadd float %.sroa.01509.0.vec.extract1511, %i.aj
  %.sroa.01509.4.vec.extract1517 = extractelement <2 x float> %i.ae, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 2 uses
  %i.am = load <2 x float>, ptr %i.al, align 4, !tbaa !190 ; 6 uses
  %i.an = fadd <2 x float> %i.ae, %i.am
  store <2 x float> %i.am, ptr %11, align 8, !tbaa !190
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store <2 x float> %i.an, ptr %i.ao, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 4
  store <2 x float> %i.am, ptr %12, align 8, !tbaa !190
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = load float, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.as = insertelement <2 x float> %i.ae, float %i.ak, i64 0
  %i.at = fadd <2 x float> %i.as, %i.am           ; 2 uses
  store <2 x float> %i.at, ptr %i.aq, align 8, !tbaa !190
  %i.au = fsub <2 x float> %i.at, %i.am           ; 2 uses
  br i1 %i.r, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> %i.au, ptr %10, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 9568
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !364
  %i.ax = icmp eq i32 %i.aw, %i.s
  br i1 %i.ax, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 5428
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !218
  %i.ba = icmp eq i32 %i.az, %i.s
  br i1 %i.ba, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k, %bb.j
  %i.bb = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.s, ptr noundef nonnull %11, i32 noundef 1048576) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8244
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !224
  %i.be = icmp eq i32 %i.s, %i.bd                 ; 2 uses
  %i.bf = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.s, ptr noundef nonnull %11, i32 noundef 1048576)
  %or.cond = select i1 %i.bf, i1 true, i1 %i.be
  br i1 %or.cond, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.l
  call void @_ZN5ImGui8EndGroupEv()
  br label %bb.qq

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bg = phi i1 [ true, %.thread ], [ %i.be, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 7848
  %.sroa.51497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 7852 ; 2 uses
  %.sroa.51497.0.copyload = load i32, ptr %.sroa.51497.0..sroa_idx, align 4, !tbaa !208 ; 2 uses
  %.sroa.71499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 7856 ; 2 uses
  %.sroa.71499.0.copyload = load i32, ptr %.sroa.71499.0..sroa_idx, align 8, !tbaa !208 ; 2 uses
  store <2 x float> %i.am, ptr %i.al, align 8, !tbaa !190
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8244 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !224 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %i.s
  br i1 %i.bk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8256
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !229
  %i.bn = and i32 %i.bm, 40
  %or.cond1345 = icmp ne i32 %i.bn, 8
  %i.bo = and i32 %5, 32
  %.not1289 = icmp eq i32 %i.bo, 0
  %or.cond1346 = or i1 %.not1289, %or.cond1345
  br i1 %or.cond1346, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bi, align 4, !tbaa !224
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bp = phi i32 [ 0, %bb.o ], [ %i.s, %bb.n ], [ %i.bj, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 5428
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !218
  %i.bs = icmp eq i32 %i.br, %i.s
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bi, align 4, !tbaa !224
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 3644
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 3292
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !233
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 3296
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !307
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 8, float noundef %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !190
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.by = load <2 x float>, ptr %i.ao, align 8, !tbaa !190
  %i.bz = load <2 x float>, ptr %11, align 8, !tbaa !190
  %i.ca = fsub <2 x float> %i.by, %i.bz
  store <2 x float> %i.ca, ptr %14, align 8
  %i.cb = call noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef %0, i32 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef 1, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !224
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 3)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  %or.cond3 = select i1 %i.cb, i1 true, i1 %i.bg
  br i1 %or.cond3, label %.thread1521, label %bb.s

.thread1521:                                      ; preds = %bb.r
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !158 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 280 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 368
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !348
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 374 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !691
  %i.cj = trunc i32 %i.cg to i16
  %i.ck = or i16 %i.ci, %i.cj
  store i16 %i.ck, ptr %i.ch, align 2, !tbaa !691
  %i.cl = load <2 x float>, ptr %i.aa, align 4, !tbaa !190
  %i.cm = load <2 x float>, ptr %i.cd, align 8, !tbaa !190
  %i.cn = fadd <2 x float> %i.cl, %i.cm
  store <2 x float> %i.cn, ptr %i.cd, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 192
  %i.cp = load float, ptr %i.co, align 8, !tbaa !692
  %i.cq = fsub float %.sroa.01509.0.vec.extract1511, %i.cp
  store i32 %i.s, ptr %i.bh, align 8, !tbaa !207
  store i32 %.sroa.51497.0.copyload, ptr %.sroa.51497.0..sroa_idx, align 4, !tbaa !255
  store i32 %.sroa.71499.0.copyload, ptr %.sroa.71499.0..sroa_idx, align 8, !tbaa !275
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8EndGroupEv()
  br label %bb.qq

bb.t:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store <2 x float> %i.au, ptr %9, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.cr = and i32 %5, 134217728
  %.not1286 = icmp eq i32 %i.cr, 0
  br i1 %.not1286, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.s, ptr noundef nonnull %11, i32 noundef 1048576)
  br i1 %i.cs, label %bb.v, label %bb.qq

bb.v:                                             ; preds = %.thread1521, %bb.t, %bb.u
  %.sroa.71499.0 = phi i32 [ %.sroa.71499.0.copyload, %.thread1521 ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.sroa.51497.0 = phi i32 [ %.sroa.51497.0.copyload, %.thread1521 ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.21264 = phi ptr [ %i.cc, %.thread1521 ], [ %i.k, %bb.u ], [ %i.k, %bb.t ] ; 17 uses
  %.sroa.0780.2 = phi float [ %i.cq, %.thread1521 ], [ %.sroa.01509.0.vec.extract1511, %bb.u ], [ %.sroa.01509.0.vec.extract1511, %bb.t ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 7848 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 7852 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !255
  %i.cw = or i32 %i.cv, 32768
  %i.cx = call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.s, i32 noundef %i.cw)
  br i1 %i.cx, label %bb.w, label %.critedge1348

bb.w:                                             ; preds = %bb.v
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 1)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 8217
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !223, !range !184, !noundef !185
  %i.da = trunc nuw i8 %i.cz to i1
  %not. = xor i1 %i.da, true
  br label %.critedge1348

.critedge1348:                                    ; preds = %bb.w, %bb.v
  %.01261.shrunk = phi i1 [ false, %bb.v ], [ %not., %bb.w ] ; 3 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN5ImGui17GetInputTextStateEj.exit, label %bb.x

bb.x:                                             ; preds = %.critedge1348
  %i.db = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 9436
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !693
  %i.de = icmp eq i32 %i.dd, %i.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 9416
  %spec.select.i = select i1 %i.de, ptr %i.df, ptr null
  br label %_ZN5ImGui17GetInputTextStateEj.exit

_ZN5ImGui17GetInputTextStateEj.exit:              ; preds = %.critedge1348, %bb.x
  %i.dg = phi ptr [ null, %.critedge1348 ], [ %spec.select.i, %bb.x ] ; 16 uses
  %i.dh = load i32, ptr %i.cu, align 4, !tbaa !255
  %i.di = lshr i32 %i.dh, 2
  %i.dj = and i32 %i.di, 512
  %spec.select1349 = or i32 %i.dj, %5             ; 9 uses
  %i.dk = and i32 %spec.select1349, 512
  %i.dl = icmp ne i32 %i.dk, 0                    ; 19 uses
  %i.dm = and i32 %5, 1024
  %i.dn = icmp eq i32 %i.dm, 0                    ; 6 uses
  %i.do = and i32 %5, 65536
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = and i32 %5, 4194304
  %.not1291 = icmp eq i32 %i.dq, 0
  %i.dr = and i32 %5, 16777216
  %i.ds = icmp eq i32 %i.dr, 0                    ; 3 uses
  br i1 %i.ds, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZN5ImGui17GetInputTextStateEj.exit
  %i.dt = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0491.0.vec.extract = extractelement <2 x float> %i.dt, i64 0
  %i.du = getelementptr inbounds nuw i8, ptr %.21264, i64 201
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !694, !range !184, !noundef !185
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 3340
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !695
  %i.dz = fneg float %i.dy
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ea = phi float [ %i.dz, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.eb = fadd float %.sroa.0491.0.vec.extract, %i.ea ; 2 uses
  %i.ec = fcmp ole float %i.eb, 1.000000e+00
  %i.ed = select i1 %i.ec, float 1.000000e+00, float %i.eb
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN5ImGui17GetInputTextStateEj.exit
  %.01259 = phi float [ %i.ed, %bb.aa ], [ 0.000000e+00, %_ZN5ImGui17GetInputTextStateEj.exit ] ; 6 uses
  br i1 %.01261.shrunk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 2880
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !231, !range !184, !noundef !185
  %i.eg = trunc nuw i8 %i.ef to i1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eh = phi i1 [ false, %bb.ab ], [ %i.eg, %bb.ac ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 5428 ; 17 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !218 ; 4 uses
  %.not1292 = icmp eq i32 %i.ej, %i.s
  br i1 %.not1292, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 8244
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !224
  %i.em = icmp eq i32 %i.el, %i.s
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.en = phi i1 [ false, %bb.ad ], [ %i.em, %bb.ae ] ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 9700 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !696
  %i.eq = icmp eq i32 %i.ep, %i.s                 ; 2 uses
  br i1 %i.eh, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = icmp ne i32 %i.ej, 0
  %i.es = and i32 %5, 134217728
  %.not1293 = icmp eq i32 %i.es, 0
  %or.cond1350 = or i1 %.not1293, %i.er
  br i1 %or.cond1350, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 9568
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !364
  %i.ev = icmp ne i32 %i.eu, %i.s
  %i.ew = select i1 %i.ev, i1 true, i1 %i.en
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %or.cond11 = phi i1 [ true, %bb.af ], [ %i.ew, %bb.ah ], [ %i.en, %bb.ag ] ; 2 uses
  %i.ex = icmp ne ptr %i.dg, null                 ; 2 uses
  %or.cond5 = and i1 %i.r, %i.ex
  br i1 %or.cond5, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ey = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %.21264, ptr noundef nonnull @.str.5, ptr noundef null) ; 2 uses
  %i.ez = load i32, ptr %i.ei, align 4, !tbaa !218 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.ak, label %.thread1527

bb.ak:                                            ; preds = %bb.aj
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 5480
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !697
  %i.fd = icmp eq i32 %i.fc, %i.ey
  br label %.thread1527

.thread1527:                                      ; preds = %bb.aj, %bb.ak
  %.ph = phi i1 [ %i.fd, %bb.ak ], [ false, %bb.aj ]
  %i.fe = icmp eq i32 %i.ez, %i.ey
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  br i1 %i.r, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread1527, %bb.al
  %i.ff = phi i32 [ %i.ez, %.thread1527 ], [ %i.ej, %bb.al ]
  %i.fg = phi i1 [ %i.fe, %.thread1527 ], [ false, %bb.al ]
  %i.fh = phi i1 [ %.ph, %.thread1527 ], [ false, %bb.al ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.21264, i64 156
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !698
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.fk = phi i32 [ %i.ff, %bb.am ], [ %i.ej, %bb.al ] ; 3 uses
  %i.fl = phi i1 [ %i.fg, %bb.am ], [ false, %bb.al ]
  %i.fm = phi i1 [ %i.fh, %bb.am ], [ false, %bb.al ] ; 3 uses
  %i.fn = phi float [ %i.fj, %bb.am ], [ f0x7F7FFFFF, %bb.al ] ; 25 uses
  br i1 %i.ex, label %bb.ao, label %.thread1530

.thread1530:                                      ; preds = %bb.an
  %or.cond131531 = select i1 %or.cond11, i1 true, i1 %i.eq
  %i.fo = select i1 %or.cond131531, i1 true, i1 %i.fm
  br i1 %i.fo, label %bb.ax, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dg, i64 117 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !375, !range !184, !noundef !185
  %i.fr = trunc nuw i8 %i.fq to i1
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.eq
  %i.fs = select i1 %or.cond13, i1 true, i1 %i.fm ; 2 uses
  br i1 %i.fr, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.ft = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40 ; 3 uses
  %i.fu = trunc i64 %i.ft to i32                  ; 3 uses
  store i8 0, ptr %i.fp, align 1, !tbaa !375
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dg, i64 40 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 5 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !376 ; 4 uses
  %i.fy = ptrtoaddr ptr %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !377 ; 5 uses
  %i.gb = call noundef i32 @llvm.smin.i32(i32 %i.ga, i32 %i.fu) ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ap
  %wide.trip.count.i = zext nneg i32 %i.gb to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aq ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !351
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !351
  %.not.i1407 = icmp eq i8 %i.ge, %i.gg
  br i1 %.not.i1407, label %bb.aq, label %._crit_edge.loopexit.split.loop.exit.i

bb.aq:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.gh = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aq, %._crit_edge.loopexit.split.loop.exit.i, %bb.ap
  %.046.lcssa.i = phi i32 [ 0, %bb.ap ], [ %i.gh, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.gb, %bb.aq ] ; 9 uses
  %i.gi = icmp eq i32 %.046.lcssa.i, %i.ga
  %i.gj = icmp eq i32 %.046.lcssa.i, %i.fu
  %or.cond51.i = and i1 %i.gi, %i.gj
  br i1 %or.cond51.i, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %.preheader52.preheader.i

.preheader52.preheader.i:                         ; preds = %._crit_edge.i
  %i.gk = sext i32 %i.ga to i64
  %i.gl = sext i32 %.046.lcssa.i to i64           ; 3 uses
  %sext1633 = shl i64 %i.ft, 32
  %i.gm = ashr exact i64 %sext1633, 32            ; 2 uses
  %i.gn = sub i32 %i.ga, %.046.lcssa.i            ; 2 uses
  %indvars.iv.next64.i1855 = add nsw i64 %i.gm, -1 ; 2 uses
  %indvars.iv.next62.i1856 = add nsw i64 %i.gk, -1 ; 2 uses
  %i.go = icmp sgt i32 %i.ga, %.046.lcssa.i
  %i.gp = icmp sgt i64 %i.gm, %i.gl
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %.lr.ph1860, label %.preheader52.i._crit_edge

.preheader52.i:                                   ; preds = %.lr.ph1860
  %indvars.iv.next72.i = add i32 %indvars.iv71.i1857, -1 ; 2 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv.next64.i1858, -1 ; 2 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv.next62.i1859, -1 ; 2 uses
  %i.gr = icmp sgt i64 %indvars.iv.next62.i1859, %i.gl
  %i.gs = icmp sgt i64 %indvars.iv.next64.i1858, %i.gl
  %i.gt = and i1 %i.gr, %i.gs
  br i1 %i.gt, label %.lr.ph1860, label %.preheader52.i._crit_edge, !llvm.loop !8

.lr.ph1860:                                       ; preds = %.preheader52.preheader.i, %.preheader52.i
  %indvars.iv.next62.i1859 = phi i64 [ %indvars.iv.next62.i, %.preheader52.i ], [ %indvars.iv.next62.i1856, %.preheader52.preheader.i ] ; 4 uses
  %indvars.iv.next64.i1858 = phi i64 [ %indvars.iv.next64.i, %.preheader52.i ], [ %indvars.iv.next64.i1855, %.preheader52.preheader.i ] ; 4 uses
  %indvars.iv71.i1857 = phi i32 [ %indvars.iv.next72.i, %.preheader52.i ], [ %i.gn, %.preheader52.preheader.i ] ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.fx, i64 %indvars.iv.next62.i1859
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !351
  %i.gw = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next64.i1858
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !351
  %.not48.i = icmp eq i8 %i.gv, %i.gx
  br i1 %.not48.i, label %.preheader52.i, label %._crit_edge1861, !llvm.loop !8
end_hunk_0
begin_hunk_1_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.bw
  %.21253 = phi i1 [ false, %bb.bw ], [ %.11252, %bb.cb ], [ %spec.select1353, %bb.cc ] ; 4 uses
  %i.nv = and i32 %5, 2048
  %.not1301 = icmp eq i32 %i.nv, 0
  br i1 %.not1301, label %bb.ce, label %.split

.split:                                           ; preds = %bb.cd
  %i.nw = getelementptr inbounds nuw i8, ptr %i.i, i64 9424
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !378
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i8 1, ptr %i.ny, align 4, !tbaa !398
  %i.nz = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !699, !range !184, !noundef !185
  %i.ob = trunc nuw i8 %i.oa to i1                ; 2 uses
  br i1 %.not1629, label %bb.ci, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.oc = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.od = load i8, ptr %i.oc, align 8, !tbaa !699, !range !184, !noundef !185
  %i.oe = trunc nuw i8 %i.od to i1                ; 2 uses
  br i1 %.not1629, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %.split, %_ZN8ImVectorIcE6resizeEi.exit, %.thread1534, %bb.ce
  %i.of = phi i1 [ %i.ka, %.thread1534 ], [ %i.oe, %bb.ce ], [ %i.ji, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ob, %.split ] ; 3 uses
  %.312541548 = phi i1 [ false, %.thread1534 ], [ %.21253, %bb.ce ], [ false, %_ZN8ImVectorIcE6resizeEi.exit ], [ %.21253, %.split ] ; 3 uses
  %.012601538 = phi ptr [ %i.dg, %.thread1534 ], [ %i.ki, %bb.ce ], [ %i.dg, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ki, %.split ] ; 3 uses
  %i.og = load i32, ptr %i.ei, align 4, !tbaa !218
  %.not1303 = icmp eq i32 %i.og, %i.s
  br i1 %.not1303, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.s, ptr noundef nonnull %i.k)
  call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %i.s, ptr noundef nonnull %i.k)
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.k, i32 noundef 0)
  br i1 %i.en, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5ImGui28SetNavCursorVisibleAfterMoveEv()
  br label %bb.ci

bb.ci:                                            ; preds = %.split, %_ZN8ImVectorIcE6resizeEi.exit, %.thread1549, %bb.cg, %bb.ch, %bb.cf, %bb.ce
  %i.oh = phi i1 [ %i.of, %bb.cg ], [ %i.of, %bb.ch ], [ %i.of, %bb.cf ], [ %i.oe, %bb.ce ], [ %i.kf, %.thread1549 ], [ %i.ji, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ob, %.split ] ; 6 uses
  %.312541547 = phi i1 [ %.312541548, %bb.cg ], [ %.312541548, %bb.ch ], [ %.312541548, %bb.cf ], [ %.21253, %bb.ce ], [ false, %.thread1549 ], [ false, %_ZN8ImVectorIcE6resizeEi.exit ], [ %.21253, %.split ] ; 2 uses
  %.012601537 = phi ptr [ %.012601538, %bb.cg ], [ %.012601538, %bb.ch ], [ %.012601538, %bb.cf ], [ %i.ki, %bb.ce ], [ %i.dg, %.thread1549 ], [ %i.dg, %_ZN8ImVectorIcE6resizeEi.exit ], [ %i.ki, %.split ] ; 126 uses
  %.not1636 = phi i8 [ 0, %bb.cg ], [ 0, %bb.ch ], [ 0, %bb.cf ], [ 1, %bb.ce ], [ 1, %.thread1549 ], [ 1, %_ZN8ImVectorIcE6resizeEi.exit ], [ 1, %.split ]
  %i.oi = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.oj = icmp eq i32 %i.oi, %i.s
  br i1 %i.oj, label %.preheader1650.preheader, label %bb.cs

.preheader1650.preheader:                         ; preds = %bb.ci
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 513, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 514, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 522, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 523, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 519, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 520, i32 noundef %i.s, i32 noundef 0)
  br i1 %i.eh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.preheader1650.preheader
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 656, i32 noundef %i.s, i32 noundef 0)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.preheader1650.preheader
  %i.ok = getelementptr inbounds nuw i8, ptr %i.i, i64 7768 ; 3 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !365 ; 2 uses
  %i.om = or i32 %i.ol, 3
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !365
  %i.on = and i32 %5, 67633152
  %or.cond1355.not.not = icmp eq i32 %i.on, 0
  br i1 %or.cond1355.not.not, label %.thread1552, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oo = or i32 %i.ol, 15
  store i32 %i.oo, ptr %i.ok, align 8, !tbaa !365
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 515, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 516, i32 noundef %i.s, i32 noundef 0)
  br i1 %i.r, label %bb.cm, label %.thread1552

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 517, i32 noundef %i.s, i32 noundef 0)
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 518, i32 noundef %i.s, i32 noundef 0)
  br label %.thread1552

.thread1552:                                      ; preds = %bb.ck, %bb.cm, %bb.cl
  br i1 %i.oh, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.thread1552
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 16384, i32 noundef %i.s, i32 noundef 0)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.thread1552
  %i.op = icmp ne ptr %.012601537, null           ; 3 uses
  %or.cond24 = and i1 %i.r, %i.op
  br i1 %or.cond24, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.oq = getelementptr inbounds nuw i8, ptr %.21264, i64 156
  %i.or = load float, ptr %i.oq, align 4, !tbaa !698
  %i.os = getelementptr inbounds nuw i8, ptr %.012601537, i64 96
  store float %i.or, ptr %i.os, align 4, !tbaa !709
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %or.cond27 = and i1 %i.dl, %i.op
  br i1 %or.cond27, label %.thread1553, label %bb.cr

.thread1553:                                      ; preds = %bb.cq
  %i.ot = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40
  %i.ou = trunc i64 %i.ot to i32                  ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  store i32 %i.ou, ptr %i.ov, align 8, !tbaa !377
  br label %.thread1554

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.op, label %..thread1554_crit_edge, label %.thread1555

..thread1554_crit_edge:                           ; preds = %bb.cr
  %.phi.trans.insert1685 = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %.pre1686 = load i32, ptr %.phi.trans.insert1685, align 8, !tbaa !377
  br label %.thread1554

.thread1554:                                      ; preds = %..thread1554_crit_edge, %.thread1553
  %i.ow = phi i32 [ %.pre1686, %..thread1554_crit_edge ], [ %i.ou, %.thread1553 ] ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !378 ; 4 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !388
  %i.pa = call noundef i32 @llvm.smin.i32(i32 %i.oz, i32 %i.ow)
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !388
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 4 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !394
  %i.pd = call noundef i32 @llvm.smin.i32(i32 %i.pc, i32 %i.ow)
  store i32 %i.pd, ptr %i.pb, align 4, !tbaa !394
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !395
  %i.pg = call noundef i32 @llvm.smin.i32(i32 %i.pf, i32 %i.ow)
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !395
  br label %bb.ct

bb.cs:                                            ; preds = %bb.ci
  %.not1635 = icmp eq ptr %.012601537, null
  br i1 %.not1635, label %.thread1555.thread, label %bb.ct

bb.ct:                                            ; preds = %.thread1554, %bb.cs
  br i1 %i.dl, label %.thread1556, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ph = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !376
  br label %.thread1556

.thread1556:                                      ; preds = %bb.cu, %bb.ct
  %i.pj = phi ptr [ %i.pi, %bb.cu ], [ %2, %bb.ct ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.012601537, i64 32
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !400
  br label %.thread1555.thread

.thread1555:                                      ; preds = %bb.cr
  %.pre1684 = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.pl = icmp eq i32 %.pre1684, %i.s
  br i1 %i.pl, label %bb.cv, label %.thread1555.thread

bb.cv:                                            ; preds = %.thread1555
  call void @_ZN5ImGui13ClearActiveIDEv()
  br label %.thread1555.thread

.thread1555.thread:                               ; preds = %bb.cs, %.thread1556, %bb.cv, %.thread1555
  %i.pm = phi i1 [ true, %.thread1556 ], [ false, %bb.cv ], [ false, %.thread1555 ], [ false, %bb.cs ] ; 8 uses
  %i.pn = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.po = icmp eq i32 %i.pn, %i.s                 ; 2 uses
  br i1 %i.po, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.thread1555.thread
  %i.pp = getelementptr inbounds nuw i8, ptr %i.i, i64 2880
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !231, !range !184, !noundef !185
  %or.cond34.not = and i8 %i.pq, %.not1636
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread1555.thread
  %.01255 = phi i8 [ %or.cond34.not, %bb.cw ], [ 0, %.thread1555.thread ] ; 26 uses
  %i.pr = and i1 %i.pm, %i.fl
  %i.ps = or i1 %i.po, %i.pr                      ; 6 uses
  br i1 %i.pm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.pt = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !378 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !394
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.py = load i32, ptr %i.px, align 4, !tbaa !395
  %i.pz = icmp ne i32 %i.pw, %i.py
  %or.cond37 = or i1 %.312541547, %i.pz
  %narrow = and i1 %or.cond37, %i.ps
  %spec.select1357 = zext i1 %narrow to i8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.qa = phi i8 [ %spec.select1357, %bb.cy ], [ 0, %bb.cx ] ; 24 uses
  %not.1637 = xor i1 %i.dl, true                  ; 2 uses
  %spec.select1617 = and i1 %i.pm, %not.1637
  %i.qb = select i1 %i.ps, i1 %spec.select1617, i1 false ; 2 uses
  %.not1306 = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not1306, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %i.qb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.qc = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !376
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.qe = phi ptr [ %i.qd, %bb.db ], [ %2, %bb.da ]
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !351
  %i.qg = icmp eq i8 %i.qf, 0
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cz
  %i.qh = phi i1 [ false, %bb.cz ], [ %i.qg, %bb.dc ] ; 4 uses
  %or.cond47 = select i1 %i.dn, i1 true, i1 %i.qh ; 2 uses
  br i1 %or.cond47, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qi = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 9 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 9592 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 4560 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !313
  %i.qm = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.ql, i16 noundef zeroext 42) ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 4552
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !401
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !405 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 9696
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !406
  %i.qs = load ptr, ptr %i.qk, align 8, !tbaa !313 ; 8 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 64 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !407
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qi, i64 9656
  store i32 %i.qu, ptr %i.qv, align 8, !tbaa !407
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 16 ; 2 uses
  %i.qx = load float, ptr %i.qw, align 8, !tbaa !408
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qi, i64 9608
  store float %i.qx, ptr %i.qy, align 8, !tbaa !408
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qi, i64 9624 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qs, i64 32 ; 2 uses
  %i.rb = load <2 x i32>, ptr %i.ra, align 8, !tbaa !208
  %i.rc = load <2 x i32>, ptr %i.qz, align 8, !tbaa !208
  store <2 x i32> %i.rc, ptr %i.ra, align 8, !tbaa !208
  store <2 x i32> %i.rb, ptr %i.qz, align 8, !tbaa !208
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qs, i64 40 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !409
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qi, i64 9632 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !409
  store ptr %i.rg, ptr %i.rd, align 8, !tbaa !409
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !409
  %i.rh = load <2 x i32>, ptr %i.qs, align 8, !tbaa !208
  %i.ri = load <2 x i32>, ptr %i.qj, align 8, !tbaa !208
  store <2 x i32> %i.ri, ptr %i.qs, align 8, !tbaa !208
  store <2 x i32> %i.rh, ptr %i.qj, align 8, !tbaa !208
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !410
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qi, i64 9600 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !410
  store ptr %i.rm, ptr %i.rj, align 8, !tbaa !410
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !410
  %i.rn = or i32 %i.qq, 4
  store i32 %i.rn, ptr %i.qp, align 8, !tbaa !405
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !411
  %i.rq = ptrtoint ptr %i.qm to i64
  %i.rr = ptrtoint ptr %i.rp to i64
  %i.rs = sub i64 %i.rq, %i.rr
  %i.rt = sdiv exact i64 %i.rs, 44
  %i.ru = trunc i64 %i.rt to i32
  store i32 %i.ru, ptr %i.qt, align 8, !tbaa !407
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !413
  store float %i.rw, ptr %i.qw, align 8, !tbaa !408
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  br i1 %i.pm, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  %i.rx = getelementptr inbounds nuw i8, ptr %.012601537, i64 20
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !392
  %i.rz = icmp eq i32 %i.ry, %i.s
  br i1 %i.rz, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.sa = getelementptr inbounds nuw i8, ptr %.012601537, i64 16
  store i32 %spec.select1349, ptr %i.sa, align 8, !tbaa !389
  br i1 %i.ds, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sb = getelementptr inbounds nuw i8, ptr %.012601537, i64 104 ; 2 uses
  %i.sc = load float, ptr %i.sb, align 8, !tbaa !414
  %i.sd = fcmp une float %i.sc, %.01259
  br i1 %i.sd, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.se = getelementptr inbounds nuw i8, ptr %.012601537, i64 113
  store i8 1, ptr %i.se, align 1, !tbaa !710
  store float %.01259, ptr %i.sb, align 8, !tbaa !414
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dg, %bb.df
  %.01242.shrunk = phi i1 [ true, %bb.dj ], [ %i.ps, %bb.di ], [ %i.ps, %bb.dh ], [ %i.ps, %bb.dg ], [ %i.ps, %bb.df ]
  %.01242 = zext i1 %.01242.shrunk to i8          ; 24 uses
  %i.sf = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.sg = icmp eq i32 %i.sf, %i.s
  br i1 %i.sg, label %bb.dl, label %bb.fk

bb.dl:                                            ; preds = %bb.dk
  %i.sh = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  store i8 0, ptr %i.sh, align 4, !tbaa !415
  %i.si = getelementptr inbounds nuw i8, ptr %.012601537, i64 88
  store i32 %3, ptr %i.si, align 8, !tbaa !416
  %i.sj = getelementptr inbounds nuw i8, ptr %.012601537, i64 104 ; 3 uses
  store float %.01259, ptr %i.sj, align 8, !tbaa !414
  %i.sk = getelementptr inbounds nuw i8, ptr %i.i, i64 280 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.sm = xor i8 %i.sl, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.i, i64 5443
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !417
  %i.so = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.sp = load float, ptr %i.so, align 8, !tbaa !711
  %i.sq = load float, ptr %11, align 8, !tbaa !237
  %i.sr = fsub float %i.sp, %i.sq
  %i.ss = load float, ptr %i.aa, align 4, !tbaa !206
  %i.st = fsub float %i.sr, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  %i.sv = load float, ptr %i.su, align 4, !tbaa !701
  %i.sw = fadd float %i.st, %i.sv                 ; 4 uses
  br i1 %i.r, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.sx = getelementptr inbounds nuw i8, ptr %i.i, i64 276
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !418
  %i.sz = getelementptr inbounds nuw i8, ptr %.21264, i64 284
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !187
  %i.tb = fsub float %i.sy, %i.ta
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.tc = getelementptr inbounds nuw i8, ptr %i.i, i64 4568
  %i.td = load float, ptr %i.tc, align 8, !tbaa !205
  %i.te = fmul float %i.td, 5.000000e-01
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.tf = phi float [ %i.tb, %bb.dm ], [ %i.te, %bb.dn ] ; 4 uses
  br i1 %.312541547, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.tg = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !378 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store i32 0, ptr %i.ti, align 4, !tbaa !394
  %i.tj = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !377 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !395
  store i32 %i.tk, ptr %i.th, align 4, !tbaa !388
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 22
  store i8 0, ptr %i.tm, align 2, !tbaa !396
  %i.tn = getelementptr inbounds nuw i8, ptr %.012601537, i64 114
  store i8 1, ptr %i.tn, align 2, !tbaa !712
  br label %bb.ep

bb.dq:                                            ; preds = %bb.do
  br i1 %.01261.shrunk, label %bb.dr, label %bb.ed

bb.dr:                                            ; preds = %bb.dq
  %i.to = getelementptr inbounds nuw i8, ptr %i.i, i64 2890 ; 2 uses
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !219
  %i.tq = icmp ugt i16 %i.tp, 1
  br i1 %i.tq, label %bb.ds, label %bb.ed

bb.ds:                                            ; preds = %bb.dr
  %i.tr = getelementptr inbounds nuw i8, ptr %i.i, i64 301
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !713, !range !184, !noundef !185
  %i.tt = trunc nuw i8 %i.ts to i1
  br i1 %i.tt, label %bb.ed, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tu = getelementptr inbounds nuw i8, ptr %.012601537, i64 8 ; 5 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !378
  call fastcc void @_ZN5ImStbL18stb_textedit_clickEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr noundef nonnull %.012601537, ptr noundef %i.tv, float noundef %i.sw, float noundef %i.tf)
  %i.tw = load i16, ptr %i.to, align 2, !tbaa !219
  %i.tx = and i16 %i.tw, 1
  %i.ty = icmp eq i16 %i.tx, 0
  %i.tz = load ptr, ptr %i.tu, align 8, !tbaa !378 ; 4 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !388 ; 4 uses
  br i1 %i.ty, label %bb.du, label %bb.dz

bb.du:                                            ; preds = %bb.dt
  %i.ub = icmp eq i32 %i.ua, 0
end_hunk_1
begin_hunk_2_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a

bb.eq:                                            ; preds = %bb.ep
  %i.wl = load i8, ptr %i.sk, align 8, !tbaa !231, !range !184, !noundef !185
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store i8 0, ptr %i.wi, align 2, !tbaa !712
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep
  %i.wn = and i32 %spec.select1349, 544
  %or.cond57.not = icmp eq i32 %i.wn, 32
  br i1 %or.cond57.not, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.wo = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.wo, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i32 9, ptr %i.a, align 4, !tbaa !208
  %i.wp = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.i, ptr noundef nonnull %.012601537, ptr noundef %i.a, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.wp, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.wq = load i32, ptr %i.a, align 4, !tbaa !208
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.wq)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ex

bb.ex:                                            ; preds = %bb.et, %bb.ew, %bb.es
  %i.wr = getelementptr inbounds nuw i8, ptr %i.i, i64 300
  %i.ws = load i8, ptr %i.wr, align 4, !tbaa !708, !range !184, !noundef !185
  %i.wt = trunc nuw i8 %i.ws to i1                ; 2 uses
  br i1 %i.wt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.wu = getelementptr inbounds nuw i8, ptr %i.i, i64 302
  %i.wv = load i8, ptr %i.wu, align 2, !tbaa !716, !range !184, !noundef !185
  %i.ww = trunc nuw i8 %i.wv to i1                ; 2 uses
  %.not1358 = xor i1 %i.ww, true
  %i.wx = select i1 %i.ww, i1 %i.oh, i1 false
  %.mux = select i1 %.not1358, i1 true, i1 %i.dl
  br i1 %i.wx, label %bb.fa, label %bb.fb

bb.ez:                                            ; preds = %bb.ex
  br i1 %i.oh, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %i.wy = or i1 %i.dl, %i.wt
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.wz = phi i1 [ %i.oh, %bb.ey ], [ false, %bb.ez ], [ %i.oh, %bb.fa ] ; 2 uses
  %or.cond60 = phi i1 [ %.mux, %bb.ey ], [ %i.dl, %bb.ez ], [ %i.wy, %bb.fa ]
  %i.xa = getelementptr inbounds nuw i8, ptr %i.i, i64 3040 ; 4 uses
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !717
  %i.xc = icmp sgt i32 %i.xb, 0
  br i1 %i.xc, label %bb.fc, label %bb.fk

bb.fc:                                            ; preds = %bb.fb
  %or.cond63 = select i1 %or.cond60, i1 true, i1 %i.en
  br i1 %or.cond63, label %.loopexit1649, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fc
  %i.xd = getelementptr inbounds nuw i8, ptr %i.i, i64 3048
  br label %bb.fd

bb.fd:                                            ; preds = %.lr.ph, %bb.fg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !409
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xe, i64 %indvars.iv
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !219 ; 2 uses
  %i.xh = zext i16 %i.xg to i32
  store i32 %i.xh, ptr %i.b, align 4, !tbaa !208
  %i.xi = icmp eq i16 %i.xg, 9
  br i1 %i.xi, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.xj = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef nonnull %i.i, ptr noundef %.012601537, ptr noundef %i.b, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false)
  br i1 %i.xj, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.xk = load i32, ptr %i.b, align 4, !tbaa !208
  call void @_ZN19ImGuiInputTextState13OnCharPressedEj(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.xk)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xl = load i32, ptr %i.xa, align 8, !tbaa !717
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next, %i.xm
  br i1 %i.xn, label %bb.fd, label %.loopexit1649, !llvm.loop !683

.loopexit1649:                                    ; preds = %bb.fg, %bb.fc
  %i.xo = getelementptr inbounds nuw i8, ptr %i.i, i64 3044 ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !420
  %i.xq = icmp slt i32 %i.xp, 0
  br i1 %i.xq, label %bb.fh, label %_ZN8ImVectorItE6resizeEi.exit

bb.fh:                                            ; preds = %.loopexit1649
  %i.xr = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.i, i64 3048 ; 3 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !409 ; 2 uses
  %.not6.i.i1418 = icmp eq ptr %i.xt, null
  br i1 %.not6.i.i1418, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.xu = load i32, ptr %i.xa, align 8, !tbaa !421
  %i.xv = sext i32 %i.xu to i64
  %i.xw = shl nsw i64 %i.xv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.xr, ptr nonnull align 2 %i.xt, i64 %i.xw, i1 false)
  %i.xx = load ptr, ptr %i.xs, align 8, !tbaa !409
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.xx)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  store ptr %i.xr, ptr %i.xs, align 8, !tbaa !409
  store i32 0, ptr %i.xo, align 4, !tbaa !420
  br label %_ZN8ImVectorItE6resizeEi.exit

_ZN8ImVectorItE6resizeEi.exit:                    ; preds = %.loopexit1649, %bb.fj
  store i32 0, ptr %i.xa, align 8, !tbaa !421
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fb, %_ZN8ImVectorItE6resizeEi.exit, %bb.dk
  %i.xy = phi i1 [ %i.wz, %bb.fb ], [ %i.wz, %_ZN8ImVectorItE6resizeEi.exit ], [ %i.oh, %bb.dk ] ; 3 uses
  %i.xz = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.ya = icmp eq i32 %i.xz, %i.s
  br i1 %i.ya, label %bb.fl, label %.thread1572

bb.fl:                                            ; preds = %bb.fk
  %i.yb = getelementptr inbounds nuw i8, ptr %i.i, i64 5440
  %i.yc = load i8, ptr %i.yb, align 8, !tbaa !230, !range !184, !noundef !185
  %i.yd = or i8 %i.yc, %.01255
  %or.cond66.not = icmp eq i8 %i.yd, 0
  br i1 %or.cond66.not, label %bb.fm, label %.thread1808

bb.fm:                                            ; preds = %bb.fl
  %i.ye = load float, ptr %i.ab, align 8, !tbaa !203
  %i.yf = fsub float %.sroa.01509.4.vec.extract1517, %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.i, i64 4568 ; 5 uses
  %i.yh = load float, ptr %i.yg, align 8, !tbaa !205
  %i.yi = fdiv float %i.yf, %i.yh
  %i.yj = fptosi float %i.yi to i32
  %i.yk = call noundef i32 @llvm.smax.i32(i32 %i.yj, i32 1) ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.012601537, i64 8 ; 12 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !378
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  store i32 %i.yk, ptr %i.yn, align 4, !tbaa !399
  %i.yo = getelementptr inbounds nuw i8, ptr %i.i, i64 301
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !713, !range !184, !noundef !185
  %i.yq = zext nneg i8 %i.yp to i32
  %i.yr = shl nuw nsw i32 %i.yq, 22               ; 10 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.i, i64 302 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.i, i64 300 ; 7 uses
  %.in.in = select i1 %i.xy, ptr %i.ys, ptr %i.yt
  %.in = load i8, ptr %.in.in, align 2, !tbaa !231, !range !184, !noundef !185
  %i.yu = trunc nuw i8 %.in to i1                 ; 4 uses
  br i1 %i.xy, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  %i.yv = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.yw = trunc nuw i8 %i.yv to i1
  br i1 %i.yw, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.yx = getelementptr inbounds nuw i8, ptr %i.i, i64 303
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !718, !range !184, !noundef !185
  %i.yz = trunc nuw i8 %i.yy to i1
  br i1 %i.yz, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.za = load i8, ptr %i.ys, align 2, !tbaa !716, !range !184, !noundef !185
  %i.zb = trunc nuw i8 %i.za to i1
  %i.zc = xor i1 %i.zb, true
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fm
  %i.zd = phi i1 [ false, %bb.fo ], [ false, %bb.fn ], [ false, %bb.fm ], [ %i.zc, %bb.fp ] ; 4 uses
  %i.ze = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4665, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.ze, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.zf = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8714, i32 noundef 1, i32 noundef %i.s)
  %i.zg = and i1 %i.dn, %i.zf
  %i.zh = xor i1 %i.zg, true
  %brmerge1362 = or i1 %i.dl, %i.zh               ; 2 uses
  %.not1368 = xor i1 %i.r, true
  %brmerge1369 = or i1 %brmerge1362, %.not1368
  %not.brmerge1362 = xor i1 %brmerge1362, true
  br i1 %brmerge1369, label %bb.fu, label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  %23 = and i32 %spec.select1349, 1536
  %brmerge1364 = icmp eq i32 %23, 0               ; 2 uses
  %brmerge1366.not = and i1 %i.r, %brmerge1364
  br i1 %brmerge1366.not, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %i.zi = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 4
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !394
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !395
  %i.zn = icmp ne i32 %i.zk, %i.zm
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fr, %bb.fs, %bb.ft
  %i.zo = phi i1 [ %i.zn, %bb.ft ], [ %brmerge1364, %bb.fs ], [ %not.brmerge1362, %bb.fr ] ; 5 uses
  %i.zp = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4644, i32 noundef 0, i32 noundef %i.s)
  br i1 %i.zp, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.zq = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4617, i32 noundef 0, i32 noundef %i.s)
  %or.cond74.not = and i1 %i.dn, %i.zq            ; 2 uses
  %brmerge1372.not = and i1 %i.r, %or.cond74.not
  %.mux1373 = select i1 %or.cond74.not, i1 true, i1 %i.zo
  br i1 %brmerge1372.not, label %bb.fx, label %bb.fy

bb.fw:                                            ; preds = %bb.fu
  %i.zr = and i32 %5, 67109888
  %brmerge1376.not = icmp eq i32 %i.zr, 67108864
  %.mux1377 = select i1 %i.dn, i1 true, i1 %i.zo
  br i1 %brmerge1376.not, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.zs = load ptr, ptr %i.yl, align 8, !tbaa !378 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !394
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !395
  %i.zx = icmp ne i32 %i.zu, %i.zw
  %i.zy = or i1 %i.zo, %i.zx
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fv, %bb.fx
  %or.cond138 = phi i1 [ %.mux1377, %bb.fw ], [ %.mux1373, %bb.fv ], [ %i.zy, %bb.fx ]
  %i.zz = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4663, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.zz, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aaa = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8713, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aaa, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aab = phi i1 [ false, %bb.fz ], [ %not.1637, %bb.ga ]
  %i.aac = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4667, i32 noundef 1, i32 noundef %i.s)
  %24 = and i32 %spec.select1349, 66048
  %25 = icmp eq i32 %24, 0
  %i.aad = and i1 %25, %i.aac                     ; 4 uses
  %i.aae = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4666, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aae, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aaf = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 12859, i32 noundef 1, i32 noundef %i.s)
  %.not79 = xor i1 %i.aaf, true
  %or.cond82 = or i1 %i.dl, %.not79
  br i1 %or.cond82, label %bb.gf, label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  br i1 %i.dl, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  %26 = or i1 %i.dp, %i.aad
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %bb.gc
  %or.cond135 = phi i1 [ %i.aad, %bb.gd ], [ %i.aad, %bb.gc ], [ %26, %bb.ge ]
  %i.aag = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4642, i32 noundef 0, i32 noundef %i.s)
  %i.aah = load i32, ptr %i.p, align 8, !tbaa !719
  %i.aai = and i32 %i.aah, 2
  %.not1310 = icmp eq i32 %i.aai, 0
  br i1 %.not1310, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !720
  %i.aal = trunc i32 %i.aak to i1
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.aam = phi i1 [ false, %bb.gf ], [ %i.aal, %bb.gg ]
  %i.aan = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 525, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aan, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aao = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 627, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.aap = phi i1 [ true, %bb.gh ], [ %i.aao, %bb.gi ] ; 2 uses
  %i.aaq = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4621, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aaq, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aar = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4723, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.aas = phi i1 [ true, %bb.gj ], [ %i.aar, %bb.gk ] ; 3 uses
  %i.aat = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8717, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.aat, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aau = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 8819, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.aav = phi i1 [ true, %bb.gl ], [ %i.aau, %bb.gm ] ; 3 uses
  br i1 %i.aam, label %bb.go, label %.sink.split

bb.go:                                            ; preds = %bb.gn
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.i, i64 113 ; 2 uses
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !226, !range !184, !noundef !185
  %i.aay = trunc nuw i8 %i.aax to i1
  %i.aaz = select i1 %i.aay, i32 635, i32 637
  %i.aba = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef %i.aaz, i1 noundef zeroext false) ; 2 uses
  %i.abb = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 526, i32 noundef 1, i32 noundef %i.s)
  br i1 %i.abb, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.abc = load i8, ptr %i.aaw, align 1, !tbaa !226, !range !184, !noundef !185
  %i.abd = trunc nuw i8 %i.abc to i1
  %i.abe = select i1 %i.abd, i32 637, i32 635
  br label %.sink.split

.sink.split:                                      ; preds = %bb.gn, %bb.gp
  %.sink = phi i32 [ %i.abe, %bb.gp ], [ 526, %bb.gn ]
  %.ph1846 = phi i1 [ %i.aba, %bb.gp ], [ false, %bb.gn ]
  %i.abf = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef %.sink, i32 noundef 1, i32 noundef %i.s)
  br label %bb.gq

bb.gq:                                            ; preds = %.sink.split, %bb.go
  %i.abg = phi i1 [ %i.aba, %bb.go ], [ %.ph1846, %.sink.split ] ; 2 uses
  %i.abh = phi i1 [ true, %bb.go ], [ %i.abf, %.sink.split ]
  %i.abi = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 513, i1 noundef zeroext true)
  br i1 %i.abi, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.abj = select i1 %i.yu, i32 2097164, i32 2097152
  %i.abk = select i1 %i.zd, i32 2097156, i32 %i.abj
  %i.abl = or disjoint i32 %i.abk, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.abl)
  br label %bb.js

bb.gs:                                            ; preds = %bb.gq
  %i.abm = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 514, i1 noundef zeroext true)
  br i1 %i.abm, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.abn = select i1 %i.yu, i32 2097165, i32 2097153
  %i.abo = select i1 %i.zd, i32 2097157, i32 %i.abn
  %i.abp = or disjoint i32 %i.abo, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.abp)
  br label %bb.js

bb.gu:                                            ; preds = %bb.gs
  %i.abq = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 515, i1 noundef zeroext true)
  %or.cond85 = and i1 %i.r, %i.abq
  br i1 %or.cond85, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  %i.abr = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.abs = trunc nuw i8 %i.abr to i1
  br i1 %i.abs, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.abt = getelementptr inbounds nuw i8, ptr %.21264, i64 156
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !698
  %i.abv = load float, ptr %i.yg, align 8, !tbaa !205
  %i.abw = fsub float %i.abu, %i.abv              ; 2 uses
  %i.abx = fcmp oge float %i.abw, 0.000000e+00
  %i.aby = select i1 %i.abx, float %i.abw, float 0.000000e+00
  call void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef %.21264, float noundef %i.aby)
  br label %bb.js

bb.gx:                                            ; preds = %bb.gv
  %i.abz = select i1 %i.zd, i32 2097158, i32 2097154
  %i.aca = or disjoint i32 %i.abz, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.aca)
  br label %bb.js

bb.gy:                                            ; preds = %bb.gu
  %i.acb = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 516, i1 noundef zeroext true)
  %or.cond88 = and i1 %i.r, %i.acb
  br i1 %or.cond88, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  %i.acc = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.acd = trunc nuw i8 %i.acc to i1
  br i1 %i.acd, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.ace = getelementptr inbounds nuw i8, ptr %.21264, i64 156
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !698
  %i.acg = load float, ptr %i.yg, align 8, !tbaa !205
  %i.ach = fadd float %i.acf, %i.acg              ; 2 uses
  %i.aci = call noundef float @_ZN5ImGui13GetScrollMaxYEv() ; 2 uses
  %i.acj = fcmp olt float %i.ach, %i.aci
  %i.ack = select i1 %i.acj, float %i.ach, float %i.aci
  call void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef %.21264, float noundef %i.ack)
  br label %bb.js

bb.hb:                                            ; preds = %bb.gz
  %i.acl = select i1 %i.zd, i32 2097159, i32 2097155
  %i.acm = or disjoint i32 %i.acl, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.acm)
  br label %bb.js

bb.hc:                                            ; preds = %bb.gy
  %i.acn = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 517, i1 noundef zeroext true)
  %or.cond91 = and i1 %i.r, %i.acn
  br i1 %or.cond91, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.aco = or disjoint i32 %i.yr, 2097166
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.aco)
  %i.acp = uitofp nneg i32 %i.yk to float
  %i.acq = load float, ptr %i.yg, align 8, !tbaa !205
  %i.acr = fneg float %i.acp
  %i.acs = call float @llvm.fmuladd.f32(float %i.acr, float %i.acq, float %i.fn)
  br label %bb.js

bb.he:                                            ; preds = %bb.hc
  %i.act = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 518, i1 noundef zeroext true)
  %or.cond94 = and i1 %i.r, %i.act
  br i1 %or.cond94, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.acu = or disjoint i32 %i.yr, 2097167
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.acu)
  %i.acv = uitofp nneg i32 %i.yk to float
  %i.acw = load float, ptr %i.yg, align 8, !tbaa !205
  %i.acx = call float @llvm.fmuladd.f32(float %i.acv, float %i.acw, float %i.fn)
  br label %bb.js

bb.hg:                                            ; preds = %bb.he
  %i.acy = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 519, i1 noundef zeroext true)
  br i1 %i.acy, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.acz = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.ada = trunc nuw i8 %i.acz to i1
  %.v1321 = select i1 %i.ada, i32 2097158, i32 2097156
  %i.adb = or disjoint i32 %.v1321, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.adb)
  br label %bb.js

bb.hi:                                            ; preds = %bb.hg
  %i.adc = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 520, i1 noundef zeroext true)
  br i1 %i.adc, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.add = load i8, ptr %i.yt, align 4, !tbaa !708, !range !184, !noundef !185
  %i.ade = trunc nuw i8 %i.add to i1
  %.v = select i1 %i.ade, i32 2097159, i32 2097157
  %i.adf = or disjoint i32 %.v, %i.yr
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(128) %.012601537, i32 noundef %i.adf)
  br label %bb.js

bb.hk:                                            ; preds = %bb.hi
  %i.adg = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 522, i1 noundef zeroext true)
  %.not95 = xor i1 %i.adg, true
  %or.cond98 = or i1 %i.dl, %.not95
  %or.cond101 = or i1 %i.zo, %or.cond98
  br i1 %or.cond101, label %bb.ho, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
end_hunk_2
