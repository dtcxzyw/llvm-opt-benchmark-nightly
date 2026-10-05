Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !492 ; 2 uses
  %.not14.i = icmp eq ptr %i.cf, null
  br i1 %.not14.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5ImGui21SaveIniSettingsToDiskEPKc(ptr noundef nonnull %i.cf)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 180
  store i8 1, ptr %i.cg, align 4, !tbaa !1333
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store float 0.000000e+00, ptr %i.bx, align 4, !tbaa !577
  br label %_ZN5ImGuiL14UpdateSettingsEv.exit

_ZN5ImGuiL14UpdateSettingsEv.exit:                ; preds = %bb.u, %bb.v, %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 8 uses
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !750
  %i.cj = fpext float %i.ci to double
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 4992 ; 3 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !452
  %i.cm = fadd double %i.cl, %i.cj
  store double %i.cm, ptr %i.ck, align 8, !tbaa !452
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 5000 ; 4 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !246
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !246
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 9626
  store i16 0, ptr %i.cq, align 2, !tbaa !751
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 5168
  store i32 0, ptr %i.cr, align 8, !tbaa !546
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 9656
  call void @_ZN8ImVectorIjE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i32 noundef 0)
  %i.ct = load float, ptr %i.ch, align 8, !tbaa !750 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 10396
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 10636 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !1334 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cx ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !86
  %i.da = fsub float %i.ct, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 10644 ; 3 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !1335
  %i.dd = fadd float %i.dc, %i.da
  store float %i.dd, ptr %i.db, align 4, !tbaa !1335
  store float %i.ct, ptr %i.cy, align 4, !tbaa !86
  %i.de = add nsw i32 %i.cw, 1
  %i.df = srem i32 %i.de, 60
  store i32 %i.df, ptr %i.cv, align 4, !tbaa !1334
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 10640 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !1336
  %i.di = call i32 @llvm.smin.i32(i32 %i.dh, i32 59)
  %i.dj = add nsw i32 %i.di, 1                    ; 2 uses
  store i32 %i.dj, ptr %i.dg, align 8, !tbaa !1336
  %i.dk = load float, ptr %i.db, align 4, !tbaa !1335 ; 2 uses
  %i.dl = fcmp ogt float %i.dk, 0.000000e+00
  %i.dm = sitofp i32 %i.dj to float
  %i.dn = fdiv float %i.dk, %i.dm
  %i.do = fdiv float 1.000000e+00, %i.dn
  %i.dp = select i1 %i.dl, float %i.do, float f0x7F7FFFFF
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store float %i.dp, ptr %i.dq, align 8, !tbaa !1337
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 5064
  call void @_ZN8ImVectorI15ImGuiInputEventE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i32 noundef 0)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 90
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !1338, !range !120, !noundef !254
  %i.du = trunc nuw i8 %i.dt to i1
  call void @_ZN5ImGui17UpdateInputEventsEb(i1 noundef zeroext %i.du)
  %i.dv = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 10 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8056
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8064
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !415 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !416 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 5, ptr %i.ea, align 4, !tbaa !752
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 0, ptr %i.eb, align 8, !tbaa !86
  %.sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %.sroa_idx23.i, align 4, !tbaa !86
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !86
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !86
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !86
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !86
  %i.ei = load i32, ptr %i.dw, align 8, !tbaa !446 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %.idx.i266 = shl nsw i64 %i.ej, 3
  %i.ek = getelementptr inbounds i8, ptr %i.dy, i64 %.idx.i266
  %.not26.i = icmp eq i32 %i.ei, 0
  br i1 %.not26.i, label %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %_ZN5ImGuiL14UpdateSettingsEv.exit, %.lr.ph.i267
  %.027.i = phi ptr [ %i.ff, %.lr.ph.i267 ], [ %i.dy, %_ZN5ImGuiL14UpdateSettingsEv.exit ] ; 2 uses
  %i.el = load ptr, ptr %.027.i, align 8, !tbaa !416 ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 208 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 192
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !86 ; 2 uses
  store i64 %i.eo, ptr %i.en, align 8, !tbaa !86
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 216
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 200
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !86 ; 2 uses
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !86
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  %i.et = load <2 x float>, ptr %i.es, align 8, !tbaa !86
  %i.eu = bitcast i64 %i.eo to <2 x float>        ; 2 uses
  %i.ev = fadd <2 x float> %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store <2 x float> %i.ev, ptr %i.ew, align 8, !tbaa !86
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ey = load <2 x float>, ptr %i.ex, align 8, !tbaa !86
  %i.ez = fsub <2 x float> %i.ey, %i.eu
  %i.fa = bitcast i64 %i.er to <2 x float>
  %i.fb = fsub <2 x float> %i.ez, %i.fa           ; 2 uses
  %i.fc = fcmp ole <2 x float> %i.fb, zeroinitializer
  %i.fd = select <2 x i1> %i.fc, <2 x float> zeroinitializer, <2 x float> %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store <2 x float> %i.fd, ptr %i.fe, align 8, !tbaa !86
  %i.ff = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  %.not.i268 = icmp eq ptr %i.ff, %i.ek
  br i1 %.not.i268, label %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit, label %.lr.ph.i267

_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit:       ; preds = %.lr.ph.i267, %_ZN5ImGuiL14UpdateSettingsEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !753
  %i.fi = and i32 %i.fh, 16
  %i.fj = icmp ne i32 %i.fi, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 4368
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 4376
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !484 ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 8, !tbaa !485 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %.idx.i269 = shl nsw i64 %i.fo, 3
  %i.fp = getelementptr inbounds i8, ptr %i.fm, i64 %.idx.i269
  %.not13.i = icmp eq i32 %i.fn, 0
  br i1 %.not13.i, label %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit, label %.lr.ph.i270

.lr.ph.i270:                                      ; preds = %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 5000
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i270
  %.014.i = phi ptr [ %i.fm, %.lr.ph.i270 ], [ %i.fw, %bb.ac ] ; 2 uses
  %i.fr = load ptr, ptr %.014.i, align 8, !tbaa !470 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 728
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !489
  %i.fu = icmp eq ptr %i.ft, %i.dv
  br i1 %i.fu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fv = load i32, ptr %i.fq, align 8, !tbaa !246
  call void @_Z25ImFontAtlasUpdateNewFrameP11ImFontAtlasib(ptr noundef nonnull %i.fr, i32 noundef %i.fv, i1 noundef zeroext %i.fj) #35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fw = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %.not.i271 = icmp eq ptr %i.fw, %i.fp
  br i1 %.not.i271, label %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit.loopexit, label %bb.aa

_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit.loopexit: ; preds = %bb.ac
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit

_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit:        ; preds = %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit.loopexit, %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit
  %i.fx = phi ptr [ %.pre, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit.loopexit ], [ %i.dv, %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit ] ; 15 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8056
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8064
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !415 ; 2 uses
  %i.gb = load i32, ptr %i.fy, align 8, !tbaa !446 ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %.idx.i272 = shl nsw i64 %i.gc, 3
  %i.gd = getelementptr inbounds i8, ptr %i.ga, i64 %.idx.i272
  %.not45.i = icmp eq i32 %i.gb, 0
  br i1 %.not45.i, label %._crit_edge.i, label %_ZN6ImRect3AddERKS_.exit.i

._crit_edge.i:                                    ; preds = %_ZN6ImRect3AddERKS_.exit.i, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit
  %.sroa.031.0.lcssa.i = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit ], [ %.sroa.031.4.i, %_ZN6ImRect3AddERKS_.exit.i ] ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 4424
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 4480
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.gf, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 4488
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !86
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 3404
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !1339
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 4464
  store float %i.gh, ptr %i.gi, align 8, !tbaa !1340
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 3408
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !1341
  call void @_ZN20ImDrawListSharedData29SetCircleTessellationMaxErrorEf(ptr noundef nonnull align 8 dereferenceable(564) %i.ge, float noundef %i.gk) #35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 4476 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fx, i64 3400
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !1342, !range !120, !noundef !254
  %spec.store.select.i = zext nneg i8 %i.gn to i32 ; 4 uses
  store i32 %spec.store.select.i, ptr %i.gl, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.fx, i64 3401
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !1343, !range !120, !noundef !254
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ad, label %bb.af

_ZN6ImRect3AddERKS_.exit.i:                       ; preds = %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit, %_ZN6ImRect3AddERKS_.exit.i
  %.047.i = phi ptr [ %i.hg, %_ZN6ImRect3AddERKS_.exit.i ], [ %i.ga, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit ] ; 2 uses
  %.sroa.031.046.i = phi <4 x float> [ %.sroa.031.4.i, %_ZN6ImRect3AddERKS_.exit.i ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit ] ; 3 uses
  %i.gr = load ptr, ptr %.047.i, align 8, !tbaa !416 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !448 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !1344 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !754
  %i.gy = fadd float %i.gt, %i.gx                 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 20
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !449
  %i.hb = fadd float %i.gv, %i.ha                 ; 2 uses
  %.sroa.031.0.vec.extract.i = extractelement <4 x float> %.sroa.031.046.i, i64 0
  %i.hc = fcmp ogt float %.sroa.031.0.vec.extract.i, %i.gt
  %.sroa.031.0.vec.insert35.i = insertelement <4 x float> %.sroa.031.046.i, float %i.gt, i64 0
  %.sroa.031.1.i = select i1 %i.hc, <4 x float> %.sroa.031.0.vec.insert35.i, <4 x float> %.sroa.031.046.i ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <4 x float> %.sroa.031.1.i, i64 1
  %i.hd = fcmp ogt float %.sroa.031.4.vec.extract.i, %i.gv
  %.sroa.031.4.vec.insert38.i = insertelement <4 x float> %.sroa.031.1.i, float %i.gv, i64 1
  %.sroa.031.2.i = select i1 %i.hd, <4 x float> %.sroa.031.4.vec.insert38.i, <4 x float> %.sroa.031.1.i ; 3 uses
  %.sroa.031.8.vec.extract.i = extractelement <4 x float> %.sroa.031.2.i, i64 2
  %i.he = fcmp olt float %.sroa.031.8.vec.extract.i, %i.gy
  %.sroa.031.8.vec.insert41.i = insertelement <4 x float> %.sroa.031.2.i, float %i.gy, i64 2
  %.sroa.031.3.i = select i1 %i.he, <4 x float> %.sroa.031.8.vec.insert41.i, <4 x float> %.sroa.031.2.i ; 3 uses
  %.sroa.031.12.vec.extract.i = extractelement <4 x float> %.sroa.031.3.i, i64 3
  %i.hf = fcmp olt float %.sroa.031.12.vec.extract.i, %i.hb
  %.sroa.031.12.vec.insert44.i = insertelement <4 x float> %.sroa.031.3.i, float %i.hb, i64 3
  %.sroa.031.4.i = select i1 %i.hf, <4 x float> %.sroa.031.12.vec.insert44.i, <4 x float> %.sroa.031.3.i ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.047.i, i64 8 ; 2 uses
  %.not.i273 = icmp eq ptr %i.hg, %i.gd
  br i1 %.not.i273, label %._crit_edge.i, label %_ZN6ImRect3AddERKS_.exit.i

bb.ad:                                            ; preds = %._crit_edge.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !469
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !1345
  %i.hk = and i32 %i.hj, 4
  %.not24.i = icmp eq i32 %i.hk, 0
  br i1 %.not24.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hl = or disjoint i32 %spec.store.select.i, 2 ; 2 uses
  store i32 %i.hl, ptr %i.gl, align 4, !tbaa !1346
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i
  %i.hm = phi i32 [ %i.hl, %bb.ae ], [ %spec.store.select.i, %bb.ad ], [ %spec.store.select.i, %._crit_edge.i ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fx, i64 3402
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !1347, !range !120, !noundef !254
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hq = or i32 %i.hm, 4                         ; 2 uses
  store i32 %i.hq, ptr %i.gl, align 4, !tbaa !1346
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hr = phi i32 [ %i.hq, %bb.ag ], [ %i.hm, %bb.af ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !753
  %i.hu = and i32 %i.ht, 8
  %.not25.i = icmp eq i32 %i.hu, 0
  br i1 %.not25.i, label %_ZL23SetupDrawListSharedDatav.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hv = or i32 %i.hr, 8
  store i32 %i.hv, ptr %i.gl, align 4, !tbaa !1346
  br label %_ZL23SetupDrawListSharedDatav.exit

_ZL23SetupDrawListSharedDatav.exit:               ; preds = %bb.ah, %bb.ai
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fx, i64 4472
  store float 1.000000e+00, ptr %i.hw, align 8, !tbaa !1348
  %i.hx = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 11 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !753
  %i.ia = and i32 %i.hz, 16
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %_ZL23SetupDrawListSharedDatav.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 4368
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 4376
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !484 ; 3 uses
  %i.if = load i32, ptr %i.ic, align 8, !tbaa !485 ; 2 uses
  %i.ig = sext i32 %i.if to i64
  %.idx.i275 = shl nsw i64 %i.ig, 3               ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ie, i64 %.idx.i275
  %.not29.i = icmp eq i32 %i.if, 0
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i276.preheader

.lr.ph.i276.preheader:                            ; preds = %bb.aj
  %i.ii = add nsw i64 %.idx.i275, -8              ; 2 uses
  %i.ij = lshr exact i64 %i.ii, 3
  %i.ik = add nuw nsw i64 %i.ij, 1
  %xtraiter = and i64 %i.ik, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i276.prol.loopexit, label %.lr.ph.i276.prol

.lr.ph.i276.prol:                                 ; preds = %.lr.ph.i276.preheader, %.lr.ph.i276.prol
  %.030.i.prol = phi ptr [ %i.in, %.lr.ph.i276.prol ], [ %i.ie, %.lr.ph.i276.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i276.prol ], [ 0, %.lr.ph.i276.preheader ]
  %i.il = load ptr, ptr %.030.i.prol, align 8, !tbaa !470
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  store i8 1, ptr %i.im, align 8, !tbaa !490
  %i.in = getelementptr inbounds nuw i8, ptr %.030.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i276.prol.loopexit, label %.lr.ph.i276.prol, !llvm.loop !1314

.lr.ph.i276.prol.loopexit:                        ; preds = %.lr.ph.i276.prol, %.lr.ph.i276.preheader
  %.030.i.unr = phi ptr [ %i.ie, %.lr.ph.i276.preheader ], [ %i.in, %.lr.ph.i276.prol ]
  %i.io = icmp ult i64 %i.ii, 56
  br i1 %i.io, label %.loopexit.i, label %.lr.ph.i276

.lr.ph.i276:                                      ; preds = %.lr.ph.i276.prol.loopexit, %.lr.ph.i276
  %.030.i = phi ptr [ %i.jm, %.lr.ph.i276 ], [ %.030.i.unr, %.lr.ph.i276.prol.loopexit ] ; 9 uses
  %i.ip = load ptr, ptr %.030.i, align 8, !tbaa !470
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  store i8 1, ptr %i.iq, align 8, !tbaa !490
  %i.ir = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !470
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store i8 1, ptr %i.it, align 8, !tbaa !490
  %i.iu = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !470
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  store i8 1, ptr %i.iw, align 8, !tbaa !490
  %i.ix = getelementptr inbounds nuw i8, ptr %.030.i, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !470
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 80
  store i8 1, ptr %i.iz, align 8, !tbaa !490
  %i.ja = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !470
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 80
  store i8 1, ptr %i.jc, align 8, !tbaa !490
  %i.jd = getelementptr inbounds nuw i8, ptr %.030.i, i64 40
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !470
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  store i8 1, ptr %i.jf, align 8, !tbaa !490
  %i.jg = getelementptr inbounds nuw i8, ptr %.030.i, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !470
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 80
  store i8 1, ptr %i.ji, align 8, !tbaa !490
  %i.jj = getelementptr inbounds nuw i8, ptr %.030.i, i64 56
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !470
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 80
  store i8 1, ptr %i.jl, align 8, !tbaa !490
  %i.jm = getelementptr inbounds nuw i8, ptr %.030.i, i64 64 ; 2 uses
  %.not.i277.7 = icmp eq ptr %i.jm, %i.ih
  br i1 %.not.i277.7, label %.loopexit.i, label %.lr.ph.i276

.loopexit.i:                                      ; preds = %.lr.ph.i276.prol.loopexit, %.lr.ph.i276, %bb.aj, %_ZL23SetupDrawListSharedDatav.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hx, i64 3136 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hx, i64 4364 ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !1349 ; 2 uses
  %i.jq = fcmp une float %i.jp, 0.000000e+00
  br i1 %i.jq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit.i
  store float %i.jp, ptr %i.jn, align 8, !tbaa !755
  store float 0.000000e+00, ptr %i.jo, align 4, !tbaa !1349
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.loopexit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !469 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 688
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !756
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 104
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !757
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef nonnull %i.js) #35
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !758 ; 2 uses
  %.not.i.i274 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i274, label %bb.ap, label %_ZN5ImGui14GetDefaultFontEv.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 112
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !759
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !760
  br label %_ZN5ImGui14GetDefaultFontEv.exit.i

_ZN5ImGui14GetDefaultFontEv.exit.i:               ; preds = %bb.ap, %bb.ao
  %i.ke = phi ptr [ %i.kd, %bb.ap ], [ %i.ka, %bb.ao ] ; 7 uses
  %i.kf = load float, ptr %i.jn, align 8, !tbaa !755 ; 2 uses
  %i.kg = fcmp ugt float %i.kf, 0.000000e+00
  br i1 %i.kg, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN5ImGui14GetDefaultFontEv.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 28
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !1350 ; 2 uses
  %i.kj = fcmp ogt float %i.ki, 0.000000e+00
  %i.kk = select i1 %i.kj, float %i.ki, float 2.000000e+01 ; 2 uses
  store float %i.kk, ptr %i.jn, align 8, !tbaa !755
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN5ImGui14GetDefaultFontEv.exit.i
  %i.kl = phi float [ %i.kk, %bb.aq ], [ %i.kf, %_ZN5ImGui14GetDefaultFontEv.exit.i ] ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.hx, i64 4384
  store ptr %i.ke, ptr %i.km, align 8, !tbaa !425
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hx, i64 4404
  store float %i.kl, ptr %i.kn, align 4, !tbaa !761
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hx, i64 4400
  store float 0.000000e+00, ptr %i.ko, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %i.ke, ptr %1, align 8, !tbaa !763
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.kl, ptr %i.kp, align 8, !tbaa !764
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.kl, ptr %i.kq, align 4, !tbaa !765
  %i.kr = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4384
  store ptr %i.ke, ptr %i.ks, align 8, !tbaa !425
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 4404
  store float %i.kl, ptr %i.kt, align 4, !tbaa !761
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  %.not.i28.i = icmp eq ptr %i.ke, null
  br i1 %.not.i28.i, label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !766 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 4440
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !445
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 4448
  store ptr %i.ke, ptr %i.kx, align 8, !tbaa !767
  call void @_Z36ImFontAtlasUpdateDrawListsSharedDataP11ImFontAtlas(ptr noundef %i.kv) #35
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 5184
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !309 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.kz, null
  br i1 %.not16.i.i, label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 712
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !424
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.lc, align 8, !tbaa !450
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !451
  call void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.lb, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #35
  br label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit

_ZN5ImGuiL19UpdateFontsNewFrameEv.exit:           ; preds = %bb.ar, %bb.as, %bb.at
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hx, i64 7944
  call void @_ZN8ImVectorI15ImFontStackDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 5016
  store i8 1, ptr %i.le, align 8, !tbaa !411
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 8056
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 8064
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !415 ; 3 uses
  %i.li = load i32, ptr %i.lf, align 8, !tbaa !446 ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %.idx = shl nsw i64 %i.lj, 3                    ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.lh, i64 %.idx
  %.not403 = icmp eq i32 %i.li, 0
end_hunk_0
begin_hunk_1_@_ZN5ImGui25NavInitRequestApplyResultEv:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !388 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1008
  %i.ap = zext i32 %i.ag to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %i.ae, ptr %i.aq, align 4, !tbaa !255
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1016
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !402
  %i.at = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8080
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !388
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 984
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !389
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1048
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8092
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !724
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bc, align 4, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8075
  store i8 1, ptr %i.bd, align 1, !tbaa !726
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8216
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !537 ; 2 uses
  %.not29 = icmp eq i64 %i.bf, -1
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !557
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8163
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !801, !range !120, !noundef !254
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 86
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !713, !range !120, !noundef !254
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.j, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 8072
  store i8 1, ptr %i.bn, align 8, !tbaa !440
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %bb.i, %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 8074
  store i8 1, ptr %i.bo, align 2, !tbaa !723
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 8073
  store i8 1, ptr %i.bp, align 1, !tbaa !685
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui25NavMoveRequestApplyResultEv() local_unnamed_addr #11 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 48 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8304
  %i.c = load i32, ptr %i.b, align 8, !tbaa !962
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8296
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8228 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !390
  br label %.thread140

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8416
  %i.h = load i32, ptr %i.g, align 8, !tbaa !963
  %.not109 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8228 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !390  ; 5 uses
  %i.k = and i32 %i.j, 1024
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  %or.cond = select i1 %i.l, i1 %.not109, i1 false
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8292
  %i.n = load i32, ptr %i.m, align 4, !tbaa !562
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8288
  %i.q = load i32, ptr %i.p, align 8, !tbaa !391
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.thread143

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8472
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1006
  %.not110 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8464
  br i1 %.not110, label %.thread143, label %.thread140

.thread143:                                       ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8240
  %i.w = load i32, ptr %i.v, align 8, !tbaa !825
  %i.x = and i32 %i.w, -2
  %narrow147 = icmp eq i32 %i.x, 2
  %i.y = zext i1 %narrow147 to i32
  br label %bb.h

.thread140:                                       ; preds = %bb.e, %.thread
  %.ph138 = phi i32 [ %i.f, %.thread ], [ %i.j, %bb.e ]
  %.ph139 = phi ptr [ %i.e, %.thread ], [ %i.i, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %.thread ], [ %i.u, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8240 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !825
  %i.ab = and i32 %i.aa, -2
  %narrow146 = icmp eq i32 %i.ab, 2
  %i.ac = zext i1 %narrow146 to i32
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8408
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8240 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !825
  %i.ag = and i32 %i.af, -2
  %narrow = icmp eq i32 %i.ag, 2
  %i.ah = zext i1 %narrow to i32                  ; 3 uses
  br i1 %.not109, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread143, %bb.g
  %i.ai = phi i32 [ %i.y, %.thread143 ], [ %i.ah, %bb.g ]
  %i.aj = or i32 %i.j, 16384                      ; 2 uses
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !390
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ %i.j, %bb.g ]
  %i.al = phi i32 [ %i.ai, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.an = load i32, ptr %i.am, align 4, !tbaa !394
  %.not128 = icmp ne i32 %i.an, 0
  %i.ao = and i32 %i.ak, 16384
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond168 = and i1 %.not128, %i.ap
  br i1 %or.cond168, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 86
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !713, !range !120, !noundef !254
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8072
  store i8 1, ptr %i.at, align 8, !tbaa !440
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %bb.j, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8074
  store i8 1, ptr %i.au, align 2, !tbaa !723
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8073
  store i8 1, ptr %i.av, align 1, !tbaa !685
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !388
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 984
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !389
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1048
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8092
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !724
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = zext nneg i32 %i.al to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store float f0x7F7FFFFF, ptr %i.bg, align 4, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !266
  %i.bj = and i32 %i.bi, 16
  %.not129 = icmp eq i32 %i.bj, 0
  br i1 %.not129, label %bb.az, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.175)
  br label %bb.az

bb.n:                                             ; preds = %.thread140, %bb.f
  %i.bk = phi i32 [ %i.ac, %.thread140 ], [ %i.ah, %bb.f ]
  %i.bl = phi ptr [ %i.z, %.thread140 ], [ %i.ae, %bb.f ]
  %.0142 = phi ptr [ %.0.ph, %.thread140 ], [ %i.ad, %bb.f ] ; 3 uses
  %i.bm = phi ptr [ %.ph139, %.thread140 ], [ %i.i, %bb.f ] ; 7 uses
  %i.bn = phi i32 [ %.ph138, %.thread140 ], [ %i.j, %bb.f ]
  %i.bo = and i32 %i.bn, 32
  %.not111 = icmp eq i32 %i.bo, 0
  br i1 %.not111, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8360
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1533 ; 2 uses
  %.not112 = icmp eq i32 %i.bq, 0
  br i1 %.not112, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8352
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !394
  %.not113 = icmp eq i32 %i.bq, %i.bt
  %spec.select130 = select i1 %.not113, ptr %.0142, ptr %i.br
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1 = phi ptr [ %.0142, %bb.n ], [ %spec.select130, %bb.p ], [ %.0142, %bb.o ] ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8408 ; 3 uses
  %.not114 = icmp eq ptr %.1, %i.bu
  br i1 %.not114, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8416
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !963
  %.not115 = icmp eq i32 %i.bw, 0
  br i1 %.not115, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !1534
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 944
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !802
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !388
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8444
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !1535 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 36
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !1047 ; 2 uses
  %i.ch = fcmp olt float %i.ce, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = fcmp oeq float %i.ce, %i.cg
  br i1 %i.ci, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8448
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !1536
  %i.cl = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !1048
  %i.cn = fcmp olt float %i.ck, %i.cm
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.t
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.s, %bb.r, %bb.q
  %.2 = phi ptr [ %i.bu, %bb.w ], [ %.1, %bb.v ], [ %.1, %bb.u ], [ %.1, %bb.s ], [ %.1, %bb.r ], [ %.1, %bb.q ] ; 15 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8092 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !724
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #35
  %i.cr = load ptr, ptr %.2, align 8, !tbaa !1002
  %i.cs = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 296
  %i.cu = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.cv = load <2 x float>, ptr %i.ct, align 8, !tbaa !86 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cs, align 8, !tbaa !86
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %i.cy = load <2 x float>, ptr %i.cu, align 8, !tbaa !86
  %i.cz = fadd <2 x float> %i.cv, %i.cy
  store <2 x float> %i.cx, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cz, ptr %i.da, align 8
  %i.db = load ptr, ptr %.2, align 8, !tbaa !1002
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !826
  %i.de = call <2 x float> @_ZN5ImGui14ScrollToRectExEP11ImGuiWindowRK6ImRecti(ptr noundef %i.db, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.dd) ; 0 uses
  %i.df = load i32, ptr %i.bm, align 4, !tbaa !390
  %i.dg = and i32 %i.df, 64
  %.not116 = icmp eq i32 %i.dg, 0
  br i1 %.not116, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = load i32, ptr %i.bl, align 8, !tbaa !825
  %i.di = icmp eq i32 %i.dh, 2
  %.pre = load ptr, ptr %.2, align 8, !tbaa !1002 ; 4 uses
  br i1 %i.di, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre, i64 164
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !832
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dl = phi float [ %i.dk, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre, i64 172
  store float %i.dl, ptr %i.dm, align 4, !tbaa !829
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 180
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !830
  %i.do = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  store float 0.000000e+00, ptr %i.do, align 4, !tbaa !831
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #35
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 8080 ; 5 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !388
  %i.dr = load ptr, ptr %.2, align 8, !tbaa !1002 ; 3 uses
  %.not117 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not117, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !266
  %i.du = and i32 %i.dt, 4
  %.not118 = icmp eq i32 %i.du, 0
  br i1 %.not118, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !333
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.176, ptr noundef %i.dw)
  %.pre149 = load ptr, ptr %.2, align 8, !tbaa !1002
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dx = phi ptr [ %.pre149, %bb.af ], [ %i.dr, %bb.ae ]
  store ptr %i.dx, ptr %i.dp, align 8, !tbaa !388
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  store i64 -1, ptr %i.dy, align 8, !tbaa !557
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !665 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !1003 ; 2 uses
  %.not119 = icmp eq i32 %i.ea, %i.ec
  %.pre151.pre158 = load i32, ptr %i.bm, align 4, !tbaa !390 ; 3 uses
  br i1 %.not119, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = and i32 %.pre151.pre158, 32768
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  %.pre150 = load i32, ptr %i.eb, align 8, !tbaa !1003
  %.pre151.pre = load i32, ptr %i.bm, align 4, !tbaa !390
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre151 = phi i32 [ %.pre151.pre, %bb.aj ], [ %.pre151.pre158, %bb.ai ], [ %.pre151.pre158, %bb.ah ] ; 3 uses
  %i.ef = phi i32 [ %.pre150, %bb.aj ], [ %i.ec, %bb.ai ], [ %i.ea, %bb.ah ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !394
  %.not120 = icmp ne i32 %i.eh, %i.ef
  %i.ei = and i32 %.pre151, 2048
  %.not121 = icmp ne i32 %i.ei, 0
  %or.cond169.not172 = select i1 %.not120, i1 true, i1 %.not121
  %i.ej = and i32 %.pre151, 8192
  %i.ek = icmp eq i32 %i.ej, 0
  %or.cond171 = select i1 %or.cond169.not172, i1 %i.ek, i1 false
  br i1 %or.cond171, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8088
  %i.em = load i32, ptr %i.el, align 8, !tbaa !725
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8520
  store i32 %i.em, ptr %i.en, align 8, !tbaa !798
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8524
  store i32 %i.ef, ptr %i.eo, align 4, !tbaa !676
  %i.ep = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !1004
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8528
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !799
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.et = load i32, ptr %i.es, align 4, !tbaa !834
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8532
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !1044
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 8536
  %i.ew = lshr i32 %.pre151, 10
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = and i8 %i.ex, 1
  store i8 %i.ey, ptr %i.ev, align 8, !tbaa !1045
  %i.ez = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !835
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8537
  %i.fc = lshr i32 %i.fa, 21
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = and i8 %i.fd, 1
  store i8 %i.fe, ptr %i.fb, align 1, !tbaa !1046
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !266
  %i.fh = and i32 %i.fg, 16
  %.not122 = icmp eq i32 %i.fh, 0
  %.pre153 = load ptr, ptr %i.dp, align 8, !tbaa !388 ; 2 uses
  %.pre155 = load i32, ptr %i.co, align 4, !tbaa !724 ; 2 uses
  br i1 %.not122, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre153, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !333
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.177, i32 noundef %i.ef, i32 noundef %.pre155, ptr noundef %i.fj)
  %.pre152 = load ptr, ptr %i.dp, align 8, !tbaa !388
  %.pre154 = load i32, ptr %i.co, align 4, !tbaa !724
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fk = phi i32 [ %.pre154, %bb.an ], [ %.pre155, %bb.am ] ; 2 uses
  %i.fl = phi ptr [ %.pre152, %bb.an ], [ %.pre153, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 984
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !389
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1048
  %i.fp = zext i32 %i.fk to i64                   ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !86
  store i64 %i.fr, ptr %1, align 8, !tbaa !86
  %i.fs = load i32, ptr %i.eb, align 8, !tbaa !1003 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !1004
  %i.fv = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.fw = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8076
  store i32 %i.fs, ptr %i.fx, align 4, !tbaa !394
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8092
  store i32 %i.fk, ptr %i.fy, align 4, !tbaa !724
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.fu)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8080
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !388 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1008
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fp
  store i32 %i.fs, ptr %i.gc, align 4, !tbaa !255
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 1016
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.fp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !402
  %i.gf = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8080
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !388
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 984
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !389
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1048
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 8092
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !724
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gn
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.go, align 4, !tbaa !86
  %i.gp = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !537 ; 2 uses
  %.not123 = icmp eq i64 %i.gq, -1
  br i1 %.not123, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !557
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gs = load i32, ptr %i.bm, align 4, !tbaa !390 ; 3 uses
  %i.gt = and i32 %i.gs, 1024
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %.thread145, label %bb.ar

.thread145:                                       ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.gv = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.gw = load <2 x float>, ptr %i.fv, align 8, !tbaa !86
  %i.gx = load <2 x float>, ptr %i.gv, align 8, !tbaa !86
  %i.gy = fadd <2 x float> %i.gw, %i.gx
  %i.gz = fmul <2 x float> %i.gy, splat (float 5.000000e-01)
  store <2 x float> %i.gz, ptr %2, align 8
  %i.ha = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !86
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ha
  store float %i.hc, ptr %i.hd, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.he = load ptr, ptr %i.dp, align 8, !tbaa !388
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 984
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !389
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1048
  %i.hi = load i32, ptr %i.co, align 4, !tbaa !724
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hj
  %i.hl = load i64, ptr %1, align 8, !tbaa !86
  store i64 %i.hl, ptr %i.hk, align 8, !tbaa !86
  %.pre156 = load i32, ptr %i.bm, align 4, !tbaa !390
  br label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !835
  %i.ho = and i32 %i.hn, 1048576
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hq = and i32 %i.gs, -4097                    ; 2 uses
  store i32 %i.hq, ptr %i.bm, align 4, !tbaa !390
  br label %bb.at

bb.at:                                            ; preds = %.thread145, %bb.as, %bb.ar
  %i.hr = phi i32 [ %.pre156, %.thread145 ], [ %i.hq, %bb.as ], [ %i.gs, %bb.ar ] ; 3 uses
  %i.hs = and i32 %i.hr, 4096
  %.not125 = icmp eq i32 %i.hs, 0
  br i1 %.not125, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ht = load i32, ptr %i.eb, align 8, !tbaa !1003
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 8136
  store i32 %i.ht, ptr %i.hu, align 8, !tbaa !823
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 8140
  %i.hw = and i32 %i.hr, 1024
  %.not126 = icmp eq i32 %i.hw, 0
  %spec.store.select = select i1 %.not126, i32 0, i32 13
  store i32 %spec.store.select, ptr %i.hv, align 4
  %.pre157 = load i32, ptr %i.bm, align 4, !tbaa !390
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %3 = phi i32 [ %.pre157, %bb.au ], [ %i.hr, %bb.at ]
  %i.hx = and i32 %3, 16384
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gf, i64 86
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !713, !range !120, !noundef !254
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.ax, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133

bb.ax:                                            ; preds = %bb.aw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gf, i64 8072
  store i8 1, ptr %i.ic, align 8, !tbaa !440
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133: ; preds = %bb.aw, %bb.ax
  %i.id = getelementptr inbounds nuw i8, ptr %i.gf, i64 8074
  store i8 1, ptr %i.id, align 2, !tbaa !723
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gf, i64 8073
  store i8 1, ptr %i.ie, align 1, !tbaa !685
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %bb.az

bb.az:                                            ; preds = %bb.l, %bb.m, %bb.ay
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.b = load i8, ptr %i.a, align 1, !tbaa !414, !range !120, !noundef !254
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !683
  %i.f = icmp eq ptr %0, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !608
  %i.i = and i32 %i.h, 131072
  %.not = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16IsDragDropActiveEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8616
  %i.c = load i8, ptr %i.b, align 8, !tbaa !696, !range !120, !noundef !254
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui18BeginTooltipHiddenEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.179, ptr noundef null, i32 noundef 33751879)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 209
  store i8 1, ptr %i.e, align 1, !tbaa !920
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 212
  store i8 1, ptr %i.f, align 4, !tbaa !742
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  store i8 1, ptr %i.g, align 4, !tbaa !915
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309  ; 8 uses
  %i.d = and i32 %0, 16
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %_Z9ImHashStrPKcmj.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7704 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !441  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.i = load i32, ptr %i.h, align 4, !tbaa !665
  %.not80 = icmp eq i32 %i.i, %i.g
  br i1 %.not80, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5319
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not81 = icmp eq i8 %i.k, -1
  %narrow = select i1 %.not81, i8 0, i8 %i.k      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.m = sext i8 %narrow to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !261, !range !120, !noundef !254
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = sext i8 %narrow to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.r = load i8, ptr %i.q, align 1, !tbaa !920, !range !120, !noundef !254
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.aj, label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.u = load i8, ptr %i.t, align 8, !tbaa !261, !range !120, !noundef !254
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.aj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.x = load i8, ptr %i.w, align 1, !tbaa !920, !range !120, !noundef !254
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7712
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !682
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !665 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.aj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 5328
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !506
  %.not78 = icmp ne ptr %i.ah, %i.c
  %i.ai = and i32 %0, 8
  %.not79 = icmp eq i32 %i.ai, 0
  %or.cond90 = or i1 %.not79, %.not78
  br i1 %or.cond90, label %bb.aj, label %bb.l

bb.k:                                             ; preds = %bb.h
  %.old = and i32 %0, 8
  %.not79.old = icmp eq i32 %.old, 0
  br i1 %.not79.old, label %bb.aj, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !665
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.aj = phi i32 [ %.pre, %._crit_edge ], [ %i.ae, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7716 ; 2 uses
  %i.al = tail call noundef i32 @_ZN11ImGuiWindow18GetIDFromRectangleERK6ImRect(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.ak) ; 7 uses
  store i32 %i.al, ptr %i.f, align 8, !tbaa !441
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.an = icmp eq i32 %i.aj, %i.al
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 5304
  store i32 %i.aj, ptr %i.ao, align 8, !tbaa !667
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 5344
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !680
  %i.ar = icmp eq i32 %i.aq, %i.al
  br i1 %i.ar, label %bb.o, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 5353
  store i8 1, ptr %i.as, align 1, !tbaa !730
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.n, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 7708
  %i.au = load i32, ptr %i.at, align 4, !tbaa !442
  %i.av = tail call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i32 noundef %i.al, i32 noundef %i.au) ; 2 uses
  %i.aw = zext i1 %i.av to i8
  br i1 %i.av, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2832
end_hunk_1
begin_hunk_2_@llvm.fabs.v2f32
!1143 = distinct !{!1143, !119}
!1144 = distinct !{!1144, !119}
!1145 = distinct !{!1145, !119}
!1146 = distinct !{!1146, !119}
!1147 = distinct !{!1147, !119}
!1148 = distinct !{!1148, !119}
!1149 = distinct !{!1149, !119}
!1150 = distinct !{!1150, !119}
!1151 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1152 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1153 = distinct !{!1153, !119}
!1154 = distinct !{!1154, !119}
!1155 = distinct !{!1155, !119}
!1156 = !{!291, !82, i64 256}
!1157 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1158 = !{!238, !82, i64 8800}
!1159 = !{!332, !85, i64 364}
!1160 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1161 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1162 = distinct !{!1162, !119}
!1163 = distinct !{!1163, !119}
!1164 = distinct !{!1164, !119}
!1165 = distinct !{!1165, !119}
!1166 = distinct !{!1166, !119}
!1167 = !{!363, !89, i64 579}
!1168 = !{!"_ZTS21ImGuiListClipperRange", !82, i64 0, !82, i64 4, !89, i64 8, !81, i64 9, !81, i64 10}
!1169 = !{!1168, !82, i64 0}
!1170 = !{!1168, !82, i64 4}
!1171 = !{!238, !85, i64 8256}
!1172 = !{!238, !85, i64 8264}
!1173 = !{!238, !85, i64 8272}
!1174 = !{!238, !85, i64 8280}
!1175 = !{!204, !151, i64 40}
!1176 = !{!204, !89, i64 48}
!1177 = !{!204, !85, i64 56}
!1178 = !{!204, !85, i64 64}
!1179 = !{i64 0, i64 4, !255, i64 4, i64 4, !255, i64 8, i64 1, !261, i64 9, i64 1, !93, i64 10, i64 1, !93}
!1180 = !{!1168, !89, i64 8}
!1181 = !{!1168, !81, i64 9}
!1182 = !{!1168, !81, i64 10}
!1183 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1184 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1185 = !{!238, !89, i64 126}
!1186 = !{!238, !89, i64 127}
!1187 = !{!238, !95, i64 10088}
!1188 = !{!238, !95, i64 10096}
!1189 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1190 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1191 = !{!135, !85, i64 8}
!1192 = distinct !{!1192, !119}
!1193 = !{!331, !323, i64 56}
!1194 = !{!140, !98, i64 24}
!1195 = !{!140, !85, i64 32}
!1196 = !{!140, !85, i64 36}
!1197 = distinct !{!1197, !468}
!1198 = distinct !{!1198, !119}
!1199 = !{!238, !99, i64 4528}
!1200 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1201 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1202 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1203 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1204 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1205 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1206 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1207 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1208 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1209 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1210 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1211 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1212 = distinct !{null, null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1213 = distinct !{!1213, !119}
!1214 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1215 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1216 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1217 = !{!238, !95, i64 152}
!1218 = !{!238, !95, i64 160}
!1219 = !{!178, !82, i64 4}
!1220 = !{!178, !82, i64 0}
!1221 = !{!201, !82, i64 4}
!1222 = !{!201, !82, i64 0}
!1223 = !{!203, !82, i64 4}
!1224 = !{!203, !82, i64 0}
!1225 = !{!196, !82, i64 4}
!1226 = !{!196, !82, i64 0}
!1227 = !{!213, !82, i64 0}
!1228 = !{!159, !158, i64 16}
!1229 = !{!238, !99, i64 216}
!1230 = !{!238, !99, i64 9216}
!1231 = !{!238, !82, i64 8828}
!1232 = !{!238, !82, i64 9488}
!1233 = distinct !{!1233, !468}
!1234 = distinct !{!1234, !468}
!1235 = distinct !{!1235, !119}
!1236 = !{!"_ZTS11ImGuiLocKey", !81, i64 0}
!1237 = !{!"_ZTS13ImGuiLocEntry", !1236, i64 0, !96, i64 8}
!1238 = !{!1237, !96, i64 8}
!1239 = !{!1237, !1236, i64 0}
!1240 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1241 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1242 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1243 = distinct !{!1243, !119}
!1244 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1245 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1246 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1247 = distinct !{!1247, !119}
!1248 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1249 = distinct !{null, null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1250 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1251 = distinct !{!1251, !119}
!1252 = !{!198, !82, i64 4}
!1253 = !{!198, !82, i64 0}
!1254 = !{!199, !82, i64 32}
!1255 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1256 = distinct !{!1256, !119}
!1257 = !{!191, !82, i64 4}
!1258 = !{!191, !82, i64 0}
!1259 = !{!192, !82, i64 32}
!1260 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1261 = distinct !{null, null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1262 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1263 = distinct !{!1263, !119}
!1264 = !{!190, !82, i64 4}
!1265 = !{!632, !631, i64 8}
!1266 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1267 = !{!208, !82, i64 4}
!1268 = !{!208, !82, i64 0}
!1269 = !{!209, !82, i64 32}
!1270 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1271 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1272 = !{!228, !82, i64 4}
!1273 = distinct !{!1273, !468}
!1274 = !{ptr @_Z8ImStrdupPKc, ptr @_ZN5ImGui8MemAllocEm}
!1275 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1276 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1277 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1278 = distinct !{null, null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1279 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1280 = distinct !{!1280, !119}
!1281 = !{!317, !82, i64 4}
!1282 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1283 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1284 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1285 = !{!331, !82, i64 20}
!1286 = !{!331, !82, i64 36}
!1287 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1288 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1289 = !{!322, !82, i64 4}
!1290 = !{!322, !321, i64 8}
!1291 = !{!322, !82, i64 0}
!1292 = !{!152, !82, i64 0}
!1293 = !{!152, !82, i64 4}
!1294 = !{!152, !89, i64 8}
!1295 = !{!152, !89, i64 9}
!1296 = !{!238, !82, i64 9236}
!1297 = !{!238, !89, i64 5315}
!1298 = !{!238, !82, i64 5364}
!1299 = !{!238, !82, i64 4356}
!1300 = !{!238, !85, i64 4348}
!1301 = !{!238, !85, i64 4344}
!1302 = distinct !{!1302, !119}
!1303 = !{!238, !85, i64 3252}
!1304 = !{!238, !85, i64 3256}
!1305 = !{!238, !151, i64 5208}
!1306 = !{!104, !89, i64 2732}
!1307 = !{!104, !89, i64 168}
!1308 = !{!104, !89, i64 169}
!1309 = !{!104, !89, i64 170}
!1310 = distinct !{!1310, !119}
!1311 = !{!332, !101, i64 644}
!1312 = !{!332, !101, i64 646}
!1313 = distinct !{null, ptr @_ZN5ImGui23LoadIniSettingsFromDiskEPKc, ptr @_ZN5ImGui7MemFreeEPv}
!1314 = distinct !{!1314, !468}
!1315 = distinct !{!1315, !468}
!1316 = distinct !{!1316, !119}
!1317 = distinct !{!1317, !119}
!1318 = distinct !{!1318, !468}
!1319 = distinct !{null, null, ptr @_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_, null, ptr @_ZN5ImGui8MemAllocEm}
!1320 = distinct !{null, null, ptr @_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_, null, ptr @_ZN5ImGui7MemFreeEPv}
!1321 = distinct !{!1321, !119}
!1322 = distinct !{!1322, !119}
!1323 = distinct !{!1323, !119}
!1324 = distinct !{!1324, !119}
!1325 = distinct !{!1325, !119}
!1326 = distinct !{!1326, !119}
!1327 = distinct !{!1327, !119}
!1328 = distinct !{!1328, !119}
!1329 = distinct !{!1329, !119}
!1330 = distinct !{!1330, !119}
!1331 = !{!238, !82, i64 9904}
!1332 = !{!238, !89, i64 83}
!1333 = !{!238, !89, i64 180}
!1334 = !{!238, !82, i64 10636}
!1335 = !{!238, !85, i64 10644}
!1336 = !{!238, !82, i64 10640}
!1337 = !{!238, !85, i64 184}
!1338 = !{!238, !89, i64 90}
!1339 = !{!238, !85, i64 3404}
!1340 = !{!238, !85, i64 4464}
!1341 = !{!238, !85, i64 3408}
!1342 = !{!238, !89, i64 3400}
!1343 = !{!238, !89, i64 3401}
!1344 = !{!447, !85, i64 12}
!1345 = !{!481, !82, i64 0}
!1346 = !{!238, !82, i64 4476}
!1347 = !{!238, !89, i64 3402}
!1348 = !{!238, !85, i64 4472}
!1349 = !{!238, !85, i64 4364}
!1350 = !{!437, !85, i64 28}
!1351 = !{!238, !89, i64 129}
!1352 = !{!238, !85, i64 5292}
!1353 = !{!238, !82, i64 9468}
!1354 = !{!238, !85, i64 4340}
!1355 = !{!238, !85, i64 9188}
!1356 = !{!104, !82, i64 248}
!1357 = !{!104, !85, i64 24}
!1358 = !{!157, !82, i64 328}
!1359 = !{!104, !89, i64 171}
!1360 = !{!238, !81, i64 8160}
!1361 = !{!238, !123, i64 8584}
!1362 = !{!104, !85, i64 16}
!1363 = !{!104, !85, i64 20}
!1364 = !{!104, !89, i64 174}
!1365 = !{!238, !89, i64 81}
!1366 = !{!238, !89, i64 84}
!1367 = !{!238, !89, i64 85}
!1368 = !{!238, !89, i64 254}
!1369 = !{!104, !89, i64 2914}
!1370 = !{!104, !85, i64 96}
!1371 = !{!104, !85, i64 100}
!1372 = !{!238, !85, i64 100}
!1373 = !{!332, !101, i64 220}
!1374 = !{i64 0, i64 1, !261, i64 1, i64 1, !261, i64 4, i64 4, !86, i64 8, i64 4, !86, i64 12, i64 4, !86, i64 16, i64 4, !255}
!1375 = !{!238, !89, i64 9777}
!1376 = !{!238, !89, i64 9776}
!1377 = !{!238, !85, i64 244}
!1378 = !{!238, !85, i64 240}
!1379 = !{!238, !89, i64 80}
!1380 = !{!238, !89, i64 2922}
!1381 = !{!238, !82, i64 8888}
!1382 = !{!"_ZTS18ImGuiTableTempData", !82, i64 0, !85, i64 4, !85, i64 8, !632, i64 16, !87, i64 32, !327, i64 40, !160, i64 64, !160, i64 80, !87, i64 96, !87, i64 104, !87, i64 112, !311, i64 120, !85, i64 124, !82, i64 128}
!1383 = !{!1382, !85, i64 4}
!1384 = !{!642, !81, i64 4}
!1385 = distinct !{!1385, !119}
!1386 = distinct !{!1386, !119}
!1387 = distinct !{!1387, !119}
!1388 = !{!104, !89, i64 2980}
!1389 = !{!238, !142, i64 5056}
!1390 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1391 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1392 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1393 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1394 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1395 = distinct !{!1395, !468}
!1396 = distinct !{!1396, !119}
!1397 = distinct !{null}
!1398 = distinct !{!1398, !119}
!1399 = distinct !{ptr @_ZN5ImGui5PopIDEv, null}
!1400 = distinct !{!1400, !119}
!1401 = !{!332, !89, i64 214}
!1402 = !{!332, !85, i64 700}
!1403 = !{!238, !85, i64 7832}
!1404 = !{!238, !85, i64 7836}
!1405 = !{!332, !89, i64 215}
!1406 = !{!332, !81, i64 238}
!1407 = !{!332, !85, i64 100}
!1408 = !{!90, !85, i64 64}
!1409 = !{!90, !85, i64 24}
!1410 = !{!90, !85, i64 92}
!1411 = !{!238, !85, i64 7892}
!1412 = !{!332, !85, i64 380}
!1413 = !{!238, !85, i64 7896}
!1414 = !{!332, !85, i64 384}
!1415 = !{!332, !85, i64 244}
!1416 = !{!238, !89, i64 94}
!1417 = !{!238, !85, i64 28}
!1418 = !{!332, !81, i64 216}
!1419 = !{!332, !81, i64 217}
!1420 = !{!332, !81, i64 203}
!1421 = !{!332, !89, i64 202}
!1422 = !{!90, !85, i64 88}
!1423 = !{!"_ZTS20ImGuiResizeBorderDef", !87, i64 0, !87, i64 8, !87, i64 16, !85, i64 24}
!1424 = !{!1423, !85, i64 24}
!1425 = !{!332, !85, i64 544}
!1426 = !{!332, !85, i64 548}
!1427 = !{!332, !85, i64 576}
!1428 = !{!332, !85, i64 580}
!1429 = !{!332, !85, i64 588}
!1430 = !{!332, !85, i64 624}
!1431 = !{!332, !85, i64 628}
!1432 = !{!332, !85, i64 632}
!1433 = !{!332, !85, i64 636}
!1434 = !{!332, !82, i64 424}
!1435 = !{!332, !82, i64 420}
!1436 = !{!332, !82, i64 472}
!1437 = !{!238, !89, i64 96}
!1438 = !{!90, !85, i64 76}
!1439 = !{!90, !85, i64 80}
!1440 = !{!90, !85, i64 48}
!1441 = !{!332, !82, i64 480}
!1442 = !{!332, !85, i64 528}
!1443 = !{!332, !85, i64 536}
!1444 = !{!332, !85, i64 532}
!1445 = !{!332, !85, i64 540}
!1446 = !{!332, !81, i64 239}
!1447 = !{!238, !89, i64 131}
!1448 = distinct !{!1448, !119}
!1449 = distinct !{null, ptr @_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_, null, ptr @_ZN5ImGui8MemAllocEm}
!1450 = distinct !{null, ptr @_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_, null, ptr @_ZN5ImGui7MemFreeEPv}
!1451 = distinct !{!1451, !468}
!1452 = !{!221, !89, i64 0}
!1453 = !{!221, !89, i64 1}
!1454 = !{!238, !82, i64 200}
!1455 = !{!972, !101, i64 84}
!1456 = distinct !{!1456, !119}
!1457 = !{!238, !89, i64 130}
!1458 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1459 = distinct !{!1459, !119}
!1460 = !{!332, !144, i64 440}
!1461 = !{!708, !89, i64 0}
!1462 = !{!708, !82, i64 4}
!1463 = !{!708, !82, i64 8}
!1464 = !{!708, !82, i64 12}
!1465 = !{!708, !706, i64 56}
!1466 = !{!708, !707, i64 64}
!1467 = !{!238, !89, i64 88}
!1468 = !{!238, !82, i64 192}
!1469 = !{!238, !82, i64 188}
!1470 = !{!238, !85, i64 3200}
!1471 = !{!332, !82, i64 484}
!1472 = !{!332, !85, i64 324}
!1473 = !{!332, !85, i64 608}
!1474 = !{!332, !85, i64 616}
!1475 = !{!238, !85, i64 7732}
!1476 = !{!238, !85, i64 7740}
!1477 = !{!"_ZTS21ImGuiSizeCallbackData", !95, i64 0, !87, i64 8, !87, i64 16, !87, i64 24}
!1478 = !{!1477, !95, i64 0}
!1479 = !{!332, !85, i64 192}
!1480 = distinct !{!1480, !119}
!1481 = distinct !{!1481, !119}
!1482 = distinct !{!1482, !119}
!1483 = distinct !{!1483, !119}
!1484 = distinct !{!1484, !119}
!1485 = distinct !{!1485, !119}
!1486 = distinct !{!1486, !119}
!1487 = distinct !{!1487, !119}
!1488 = distinct !{!1488, !119}
!1489 = distinct !{!1489, !119}
!1490 = distinct !{!1490, !119}
!1491 = distinct !{!1491, !119}
!1492 = !{!1020, !151, i64 0}
!1493 = !{!"_ZTS18ImGuiMultiSelectIO", !522, i64 0, !158, i64 16, !158, i64 24, !89, i64 32, !89, i64 33, !82, i64 36}
!1494 = !{!"_ZTS24ImGuiMultiSelectTempData", !1493, i64 0, !207, i64 40, !82, i64 48, !82, i64 52, !87, i64 56, !87, i64 64, !158, i64 72, !82, i64 80, !82, i64 84, !81, i64 88, !89, i64 89, !89, i64 90, !89, i64 91, !89, i64 92, !89, i64 93, !89, i64 94}
!1495 = !{!1494, !207, i64 40}
!1496 = !{!"_ZTS21ImGuiMultiSelectState", !151, i64 0, !82, i64 8, !82, i64 12, !82, i64 16, !81, i64 20, !81, i64 21, !158, i64 24, !158, i64 32}
!1497 = !{!1496, !151, i64 0}
!1498 = !{!363, !82, i64 116}
!1499 = !{!238, !85, i64 3140}
!1500 = !{!238, !85, i64 3144}
!1501 = !{!238, !85, i64 3008}
!1502 = !{!437, !85, i64 72}
!1503 = !{!437, !85, i64 20}
!1504 = !{!238, !85, i64 4408}
!1505 = !{!238, !85, i64 4456}
!1506 = !{!238, !85, i64 4460}
!1507 = distinct !{!1507, !119}
!1508 = distinct !{!1508, !119}
!1509 = !{!238, !169, i64 7968}
!1510 = distinct !{!1510, !119}
!1511 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1512 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1513 = !{!132, !82, i64 4}
!1514 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1515 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1516 = distinct !{!1516, !119}
!1517 = !{!238, !89, i64 178}
!1518 = !{!238, !169, i64 8120}
!1519 = distinct !{!1519, !119}
!1520 = !{!332, !82, i64 496}
!1521 = !{!1032, !82, i64 0}
!1522 = !{!238, !85, i64 7716}
!1523 = !{!238, !85, i64 7724}
!1524 = !{!717, !82, i64 28}
!1525 = !{!717, !82, i64 32}
!1526 = distinct !{!1526, !119}
!1527 = distinct !{!1527, !119}
!1528 = !{!88, !88, i64 0}
!1529 = distinct !{!1529, !119}
!1530 = !{!"_ZTS22ImGuiTreeNodeStackData", !82, i64 0, !82, i64 4, !82, i64 8, !160, i64 12, !85, i64 28, !85, i64 32, !101, i64 36}
!1531 = !{!1530, !82, i64 0}
!1532 = !{!1530, !82, i64 8}
!1533 = !{!238, !82, i64 8360}
!1534 = !{!238, !151, i64 8408}
!1535 = !{!238, !85, i64 8444}
!1536 = !{!238, !85, i64 8448}
!1537 = !{!184, !82, i64 12}
!1538 = !{!184, !82, i64 16}
!1539 = !{!238, !96, i64 8768}
!1540 = !{!184, !95, i64 0}
!1541 = !{!184, !82, i64 8}
!1542 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1543 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1544 = distinct !{!1544, !119}
!1545 = distinct !{!1545, !119}
!1546 = distinct !{!1546, !119}
end_hunk_2
