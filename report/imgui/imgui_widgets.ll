Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_:bb.a
  %i.ed = or i32 %i.ec, 2
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !275
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 7892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !236
  %i.ef = and i32 %1, 1835008
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 3416
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !778
  %i.ej = or i32 %i.ei, %1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0273 = phi i32 [ %i.ej, %bb.ae ], [ %1, %bb.ad ] ; 17 uses
  %i.ek = and i32 %.0273, 1572864
  %.not295 = icmp eq i32 %i.ek, 0
  br i1 %.not295, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = load float, ptr %i.bz, align 4, !tbaa !195
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  %i.en = load float, ptr %i.em, align 4, !tbaa !199
  %i.eo = fcmp olt float %i.el, %i.en
  br i1 %i.eo, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 3420
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !471
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.es = phi i1 [ false, %bb.ag ], [ false, %bb.af ], [ %i.er, %bb.ah ] ; 6 uses
  %i.et = and i32 %.0273, 8
  %.not296 = icmp eq i32 %i.et, 0                 ; 3 uses
  br i1 %.not296, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.eu = and i32 %.0273, 131072
  %.not297 = icmp eq i32 %i.eu, 0
  br i1 %.not297, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 8219
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !472, !range !184, !noundef !185
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !473
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 8224
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !346
  %i.fd = icmp eq ptr %i.fc, %i.h
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fe = call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv()
  %spec.select = select i1 %i.fe, i1 true, i1 %i.es
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj, %bb.ak, %bb.am, %bb.al, %bb.ai
  %.0281.shrunk = phi i1 [ false, %bb.ai ], [ %i.es, %bb.ak ], [ %i.es, %bb.aj ], [ %spec.select, %bb.an ], [ %i.es, %bb.am ], [ %i.es, %bb.al ] ; 2 uses
  %i.ff = and i32 %.0273, 256
  %.not298 = icmp eq i32 %i.ff, 0                 ; 4 uses
  br i1 %.0282.in, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = and i32 %.0273, 1048576
  %.not299 = icmp eq i32 %i.fg, 0
  br i1 %.not299, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 424 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !474 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !475
  %i.fl = add nsw i32 %i.fk, -1
  %i.fm = shl nuw i32 1, %i.fl                    ; 2 uses
  %i.fn = and i32 %i.fm, %i.fi
  %.not300 = icmp eq i32 %i.fn, 0
  br i1 %.not300, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 8184
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 8192
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !476
  %i.fr = load i32, ptr %i.fo, align 8, !tbaa !477
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [40 x i8], ptr %i.fq, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8     ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !479 ; 2 uses
  %i.fw = load float, ptr %i.cc, align 4, !tbaa !187 ; 2 uses
  %i.fx = fcmp oge float %i.fv, %i.fw
  %i.fy = select i1 %i.fx, float %i.fv, float %i.fw
  store float %i.fy, ptr %i.fu, align 4, !tbaa !479
  %i.fz = load float, ptr %i.bz, align 4, !tbaa !195
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !199
  %i.gc = fcmp ult float %i.fz, %i.gb
  br i1 %i.gc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gd = xor i32 %i.fm, -1
  %i.ge = and i32 %i.fi, %i.gd
  store i32 %i.ge, ptr %i.fh, align 8, !tbaa !474
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq, %bb.ap
  %or.cond3 = select i1 %i.dq, i1 %.0281.shrunk, i1 false
  br i1 %or.cond3, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gf = fsub float %i.cx, %i.aa
  call fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %.0273, float noundef %i.gf)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %brmerge.not = and i1 %i.dq, %.not296
  br i1 %brmerge.not, label %bb.aw, label %bb.dl

bb.aw:                                            ; preds = %bb.av
  %i.gg = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 5312
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !158
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 416 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !475
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !475
  call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0)
  br label %bb.dl

bb.ax:                                            ; preds = %bb.ao
  br i1 %or.cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5ImGui26TablePushBackgroundChannelEv()
  %i.gm = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.gn = or i32 %i.gm, 512
  store i32 %i.gn, ptr %i.eb, align 8, !tbaa !275
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !236
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.gq = and i32 %.0273, 4
  %.not301 = icmp eq i32 %i.gq, 0
  br i1 %.not301, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 7852
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !255
  %i.gt = and i32 %i.gs, 16384
  %.not302 = icmp eq i32 %i.gt, 0
  br i1 %.not302, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gu = phi i32 [ 4096, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.gv = or disjoint i32 %i.gu, 512
  %spec.select360 = select i1 %.not298, i32 %i.gv, i32 %i.gu
  %i.gw = fsub float %i.cx, %i.aa                 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 3324
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !779 ; 2 uses
  %i.gz = fsub float %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !480 ; 2 uses
  %i.hc = fcmp ult float %i.hb, %i.gz
  br i1 %i.hc, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load float, ptr %i.x, align 8, !tbaa !205
  %i.he = call float @llvm.fmuladd.f32(float %.sroa.0328.0, float 2.000000e+00, float %i.hd)
  %i.hf = fadd float %i.gw, %i.he
  %i.hg = fadd float %i.gy, %i.hf
  %i.hh = fcmp olt float %i.hb, %i.hg
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hi = phi i1 [ false, %bb.bc ], [ %i.hh, %bb.bd ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.f, i64 7852
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !255
  %i.hl = and i32 %i.hk, 4194304
  %i.hm = icmp ne i32 %i.hl, 0                    ; 5 uses
  %i.hn = and i32 %.0273, 192
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = select i1 %i.ho, i32 192, i32 128
  %i.hq = select i1 %i.hm, i32 %i.hp, i32 0
  %.1274 = or i32 %i.hq, %.0273                   ; 5 uses
  %11 = shl i32 %.1274, 2
  %12 = and i32 %11, 256
  %. = or disjoint i32 %12, 32
  %.sink361 = select i1 %i.hi, i32 16, i32 %.
  %i.hr = or disjoint i32 %spec.select360, %.sink361
  %i.hs = lshr i32 %.0273, 9
  %i.ht = and i32 %i.hs, 262144
  %spec.select363 = or disjoint i32 %i.hr, %i.ht  ; 3 uses
  store i32 %spec.select363, ptr %i.a, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.hu = trunc i32 %.0273 to i8
  %i.hv = and i8 %i.hu, 1
  store i8 %i.hv, ptr %i.b, align 1, !tbaa !231
  br i1 %i.hm, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5ImGui21MultiSelectItemHeaderEjPbPi(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !208 ; 2 uses
  br i1 %i.hi, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hw = and i32 %.pre, -49
  %i.hx = or disjoint i32 %i.hw, 16
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 5320
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !209
  %i.ia = icmp eq ptr %i.h, %i.hz
  %or.cond7 = and i1 %i.hi, %i.ia
  %i.ib = or i32 %spec.select363, 65536
  %spec.select362 = select i1 %or.cond7, i32 %spec.select363, i32 %i.ib
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bg
  %i.ic = phi i32 [ %i.hx, %bb.bg ], [ %spec.select362, %bb.bh ], [ %.pre, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.id = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.ic) ; 2 uses
  br i1 %.not298, label %bb.bj, label %bb.bx

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.id, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.ie = getelementptr inbounds nuw i8, ptr %i.f, i64 8920
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !214
  %.not305 = icmp eq i32 %i.if, %0
  br i1 %.not305, label %bb.bu, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ig = and i32 %.1274, 192
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ii = getelementptr inbounds nuw i8, ptr %i.f, i64 8244
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !224
  %i.ik = icmp ne i32 %i.ij, %0
  %or.cond9 = or i1 %i.hm, %i.ik
  br i1 %or.cond9, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0277 = phi i8 [ 1, %bb.bn ], [ 0, %bb.bm ]    ; 2 uses
  %i.il = and i32 %.1274, 128
  %.not306 = icmp eq i32 %i.il, 0
  br i1 %.not306, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 8217
  %i.in = load i8, ptr %i.im, align 1, !tbaa !223, !range !184, !noundef !185
  %i.io = xor i8 %i.in, 1
  %i.ip = zext nneg i8 %i.io to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.iq = phi i32 [ 0, %bb.bp ], [ %i.ip, %bb.bq ]
  %i.ir = zext nneg i8 %.0277 to i32
  %i.is = or i32 %i.iq, %i.ir
  %i.it = icmp ne i32 %i.is, 0
  %i.iu = zext i1 %i.it to i8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.1278 = phi i8 [ %i.iu, %bb.br ], [ %.0277, %bb.bo ] ; 2 uses
  %i.iv = and i32 %.1274, 64
  %.not307 = icmp eq i32 %i.iv, 0
  br i1 %.not307, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iw = getelementptr inbounds nuw i8, ptr %i.f, i64 2890
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !219
  %i.iy = icmp eq i16 %i.ix, 2
  %spec.select316 = select i1 %i.iy, i8 1, i8 %.1278
  br label %.critedge

bb.bu:                                            ; preds = %bb.bk
  %not. = xor i1 %i.dq, true                      ; 2 uses
  %.317 = zext i1 %not. to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.bt, %bb.bj, %bb.bu, %bb.bs
  %.0279 = phi i1 [ %not., %bb.bu ], [ false, %bb.bj ], [ true, %bb.bs ], [ true, %bb.bt ] ; 2 uses
  %.2 = phi i8 [ %.317, %bb.bu ], [ 0, %bb.bj ], [ %.1278, %bb.bs ], [ %spec.select316, %bb.bt ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 8220 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !222
  %i.jb = icmp eq i32 %i.ja, %0
  br i1 %i.jb, label %bb.bv, label %.thread356

bb.bv:                                            ; preds = %.critedge
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !473
  %i.je = icmp eq i32 %i.jd, 0
  %or.cond11 = and i1 %i.dq, %i.je
  br i1 %or.cond11, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0)
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  %.pre344 = load i32, ptr %i.iz, align 4, !tbaa !222
  %i.jf = icmp eq i32 %.pre344, %0
  br i1 %i.jf, label %.thread, label %.thread358

.thread:                                          ; preds = %bb.bv, %bb.bw
  %.3355 = phi i8 [ 1, %bb.bw ], [ %.2, %bb.bv ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !473
  %i.ji = icmp ne i32 %i.jh, 1
  %or.cond13 = or i1 %i.dq, %i.ji
  br i1 %or.cond13, label %.thread356, label %.thread340

.thread340:                                       ; preds = %.thread
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0)
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %.thread358

.thread356:                                       ; preds = %.critedge, %.thread
  %.3354 = phi i8 [ %.3355, %.thread ], [ %.2, %.critedge ]
  %i.jj = trunc nuw i8 %.3354 to i1
  br i1 %i.jj, label %.thread358, label %bb.bx

.thread358:                                       ; preds = %bb.bw, %.thread340, %.thread356
  %i.jk = xor i1 %i.dq, true                      ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !481
  %i.jn = zext i1 %i.jk to i32
  call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i32 noundef %i.dp, i32 noundef %i.jn)
  %i.jo = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.jp = or i32 %i.jo, 16
  store i32 %i.jp, ptr %i.eb, align 8, !tbaa !275
  br label %bb.bx

bb.bx:                                            ; preds = %.thread356, %.thread358, %bb.bi
  %.0283.in = phi i1 [ %i.dq, %bb.bi ], [ %i.jk, %.thread358 ], [ %i.dq, %.thread356 ] ; 5 uses
  %.1280 = phi i1 [ %i.id, %bb.bi ], [ %.0279, %.thread358 ], [ %.0279, %.thread356 ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.bi ], [ 0, %.thread358 ], [ 1, %.thread356 ]
  br i1 %i.hm, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.jq = select i1 %.1280, i8 %.5, i8 0
  store i8 %i.jq, ptr %i.e, align 1, !tbaa !231
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_i(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef 0)
  br i1 %.1280, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !348
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 7780
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !344
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %0, i32 noundef %i.js, i32 noundef %i.ju, ptr noundef nonnull align 4 dereferenceable(16) %8)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %i.jv = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.jw = zext nneg i8 %i.jv to i32
  %i.jx = and i32 %.0273, 1
  %.not308 = icmp eq i32 %i.jx, %i.jw
  br i1 %.not308, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jy = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.jz = or i32 %i.jy, 8
  store i32 %i.jz, ptr %i.eb, align 8, !tbaa !275
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ka = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) ; 4 uses
  %spec.select318 = select i1 %i.hm, i32 6, i32 2 ; 2 uses
  br i1 %.not288, label %bb.cp, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kb = load i8, ptr %i.d, align 1, !tbaa !231, !range !184, !noundef !185
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = load i8, ptr %i.c, align 1, !range !184
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = select i1 %i.kc, i32 27, i32 26
  %i.kg = select i1 %i.ke, i32 %i.kf, i32 25
  %i.kh = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.kg, float noundef 1.000000e+00)
  %.sroa.030.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !190
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.cg, align 8, !tbaa !190
  %i.ki = getelementptr inbounds nuw i8, ptr %i.f, i64 3292
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !233
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.030.0.copyload, <2 x float> %.sroa.029.0.copyload, i32 noundef %i.kh, i1 noundef zeroext true, float noundef %i.kj)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select318, float noundef -1.000000e+00)
  %.not = xor i1 %i.au, true
  %or.cond17 = select i1 %.not, i1 true, i1 %i.az
  br i1 %or.cond17, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.kk = and i32 %.0273, 512
  %.not311 = icmp eq i32 %i.kk, 0
  br i1 %.not311, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kl = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !202
  %i.kn = fneg float %i.aa
  %i.ko = load float, ptr %i.x, align 8, !tbaa !205
  %i.kp = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %i.ko, i64 1
  %i.kr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> <float 6.000000e-01, float 5.000000e-01>, <2 x float> %i.cw)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.km, <2 x float> %i.kr, i32 noundef %i.ka)
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  br i1 %.not298, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ks = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !202
  %i.ku = fadd float %.sroa.0328.0, %i.gw
  %i.kv = insertelement <2 x float> %i.cw, float %i.ku, i64 0
  %13 = lshr i32 %.0273, 29
  %14 = and i32 %13, 1
  %15 = xor i32 %14, 3
  %i.kw = select i1 %.0283.in, i32 %15, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.kt, <2 x float> %i.kv, i32 noundef %i.ka, i32 noundef %i.kw, float noundef 1.000000e+00)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.kx = fsub float %i.aa, %.sroa.0328.0
  %i.ky = fsub float %i.cx, %i.kx                 ; 2 uses
  store float %i.ky, ptr %6, align 8, !tbaa !194
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.ch
  %i.kz = phi float [ %i.cx, %bb.cj ], [ %i.ky, %bb.ck ], [ %i.cx, %bb.ch ] ; 2 uses
  %i.la = and i32 %.0273, 268435456
  %.not313 = icmp eq i32 %i.la, 0
  br i1 %.not313, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lb = load float, ptr %i.x, align 8, !tbaa !205
  %i.lc = load float, ptr %.sroa.0328.0.in, align 4, !tbaa !206
  %i.ld = fadd float %i.lb, %i.lc
  %i.le = load float, ptr %i.cg, align 8, !tbaa !238
  %i.lf = fsub float %i.le, %i.ld
  store float %i.lf, ptr %i.cg, align 8, !tbaa !238
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lg = getelementptr inbounds nuw i8, ptr %i.f, i64 10264
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !191, !range !184, !noundef !185
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.co, label %bb.cz

bb.co:                                            ; preds = %bb.cn
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.100)
  br label %bb.cz

bb.cp:                                            ; preds = %bb.cd
  %i.lj = load i8, ptr %i.c, align 1, !tbaa !231, !range !184, !noundef !185 ; 3 uses
  %i.lk = or i8 %i.lj, %i.jv
  %or.cond19.not = icmp eq i8 %i.lk, 0
  br i1 %or.cond19.not, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ll = trunc nuw i8 %i.lj to i1
  %i.lm = load i8, ptr %i.d, align 1, !tbaa !231, !range !184, !noundef !185
  %i.ln = and i8 %i.lm, %i.lj
  %or.cond21.not = icmp eq i8 %i.ln, 0
  %i.lo = select i1 %i.ll, i32 26, i32 25
  %i.lp = select i1 %or.cond21.not, i32 %i.lo, i32 27
  %i.lq = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.lp, float noundef 1.000000e+00)
  %.sroa.028.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !190
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.cg, align 8, !tbaa !190
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload, <2 x float> %.sroa.027.0.copyload, i32 noundef %i.lq, i1 noundef zeroext false, float noundef 0.000000e+00)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select318, float noundef 0.000000e+00)
  %.not22 = xor i1 %i.au, true
  %or.cond24 = select i1 %.not22, i1 true, i1 %i.az
  br i1 %or.cond24, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lr = and i32 %.0273, 512
  %.not309 = icmp eq i32 %i.lr, 0
  br i1 %.not309, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ls = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !202
  %i.lu = fneg float %i.aa
  %i.lv = load float, ptr %i.x, align 8, !tbaa !205
  %i.lw = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.lv, i64 1
  %i.ly = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cw)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.lt, <2 x float> %i.ly, i32 noundef %i.ka)
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  br i1 %.not298, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lz = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !202
  %i.mb = fadd float %.sroa.0328.0, %i.gw
  %i.mc = load float, ptr %i.x, align 8, !tbaa !205
  %i.md = extractelement <2 x float> %i.cw, i64 1
  %i.me = call float @llvm.fmuladd.f32(float %i.mc, float 1.500000e-01, float %i.md)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.mb, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.me, i64 1
  %16 = lshr i32 %.0273, 29
  %17 = and i32 %16, 1
  %18 = xor i32 %17, 3
  %i.mf = select i1 %.0283.in, i32 %18, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.ma, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.ka, i32 noundef %i.mf, float noundef f0x3F333333)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.cu
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 10264
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !191, !range !184, !noundef !185
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.101, ptr noundef null)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cn, %bb.co, %bb.cx, %bb.cy
  %i.mj = phi float [ %i.kz, %bb.cn ], [ %i.kz, %bb.co ], [ %i.cx, %bb.cx ], [ %i.cx, %bb.cy ]
  br i1 %i.es, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.mk = fsub float %i.mj, %i.aa
  %i.ml = fadd float %.sroa.0328.0, %i.mk
  %i.mm = load float, ptr %i.x, align 8, !tbaa !205
  %i.mn = extractelement <2 x float> %i.cw, i64 1
  %i.mo = call float @llvm.fmuladd.f32(float %i.mm, float 5.000000e-01, float %i.mn)
  store float %i.ml, ptr %9, align 4, !tbaa !194
  %i.mp = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.mo, ptr %i.mp, align 4, !tbaa !197
  call void @_ZN5ImGui27TreeNodeDrawLineToChildNodeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  br i1 %.not288, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.cg, ptr noundef %2, ptr noundef %.0275, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %.sroa.0.0.copyload = load <2 x float>, ptr %6, align 8, !tbaa !190
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.0.copyload, ptr noundef %2, ptr noundef %.0275, i1 noundef zeroext false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  br i1 %i.az, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %or.cond26 = select i1 %.0283.in, i1 %.0281.shrunk, i1 false
  br i1 %or.cond26, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.mq = load float, ptr %6, align 8, !tbaa !194
  %i.mr = fsub float %i.mq, %i.aa
  call fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %.1274, float noundef %i.mr)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %or.cond319 = and i1 %.not296, %.0283.in
  br i1 %or.cond319, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ms = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 5312
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !158
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 416 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !475
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mv, align 8, !tbaa !475
  call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.dl

bb.dl:                                            ; preds = %bb.aw, %bb.av, %bb.dk
  %.0 = phi i1 [ %.0283.in, %bb.dk ], [ %i.dq, %bb.av ], [ true, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.dm

bb.dm:                                            ; preds = %bb.a, %bb.dl
  %.1 = phi i1 [ %.0, %bb.dl ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TreeNodeVEPKcS1_P13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TreeNodeVEPKvPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null)
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.h, i32 noundef %1, ptr noundef %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKciS1_z(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
end_hunk_0
begin_hunk_1_@_ZN5ImGui20BeginViewportSideBarEPKcP13ImGuiViewport8ImGuiDirfi:bb.a
  %i.w = icmp eq i32 %i.v, 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> %i.n, ptr %5, align 8, !tbaa !190
  switch i32 %2, label %._crit_edge [
    i32 3, label %bb.f
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %.sroa.6.4.vec.extract = extractelement <2 x float> %i.u, i64 1
  %.sroa.6.0.vec.extract = extractelement <2 x float> %i.u, i64 0
  %.sroa.speculated = select i1 %i.w, float %.sroa.6.4.vec.extract, float %.sroa.6.0.vec.extract
  %i.x = fsub float %.sroa.speculated, %3
  %.sroa.sel39.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.w, i64 4, i64 0
  %.sroa.sel39.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.sel39.idx.sroa.sel.idx.sroa.sel.idx
  store float %i.x, ptr %.sroa.sel39.idx.sroa.sel.idx.sroa.sel, align 4, !tbaa !190
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.y = fsub <2 x float> %i.u, %i.n
  store <2 x float> %i.y, ptr %6, align 8
  %i.z = zext i1 %i.w to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.w, i64 4, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  store float %3, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !190
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef 0)
  %i.aa = and i32 %2, -3
  %or.cond3 = icmp eq i32 %i.aa, 0
  br i1 %or.cond3, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  switch i32 %2, label %bb.h [
    i32 3, label %.sink.split
    i32 1, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.g, %bb.g, %._crit_edge
  %.sink54 = phi ptr [ %i.h, %._crit_edge ], [ %i.j, %bb.g ], [ %i.j, %bb.g ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sink54, i64 %i.z ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !190
  %i.ad = fadd float %3, %i.ac
  store float %i.ad, ptr %i.ab, align 4, !tbaa !190
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.ae = or i32 %4, 7
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 3, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !190
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.af = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef %0, ptr noundef null, i32 noundef %i.ae)
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  ret i1 %i.af
}

declare noundef ptr @_ZN5ImGui15GetMainViewportEv() local_unnamed_addr #3

declare void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui16BeginMainMenuBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 6 uses
  %i.b = tail call noundef ptr @_ZN5ImGui15GetMainViewportEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3508
  %i.d = load i32, ptr %i.c, align 4, !tbaa !853
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3512
  %i.f = load float, ptr %i.e, align 4, !tbaa !854
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.h = load float, ptr %i.g, align 4, !tbaa !234
  %i.i = fsub float %i.f, %i.h                    ; 2 uses
  %i.j = fcmp oge float %i.i, 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8036 ; 2 uses
  %i.l = bitcast float %i.i to i32
  %i.m = select i1 %i.j, i32 %i.l, i32 0
  store i32 %i.d, ptr %i.k, align 4, !tbaa !190
  %.sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8040 ; 2 uses
  store i32 %i.m, ptr %.sroa_idx13, align 4, !tbaa !190
  %i.n = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui20BeginViewportSideBarEPKcP13ImGuiViewport8ImGuiDirfi(ptr noundef nonnull @.str.127, ptr noundef %i.b, i32 noundef 2, float noundef %i.n, i32 noundef 1288) ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !190
  store i32 0, ptr %.sroa_idx13, align 4, !tbaa !190
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !245
  %i.t = and i32 %i.s, -257
  store i32 %i.t, ptr %i.r, align 4, !tbaa !245
  %i.u = tail call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv() ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %i.o
}

declare void @_ZN5ImGui3EndEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14EndMainMenuBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  %i.e = load i8, ptr %i.d, align 1, !tbaa !550, !range !184, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.128) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui10EndMenuBarEv()
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !245
  %i.k = or i32 %i.j, 256
  store i32 %i.k, ptr %i.i, align 4, !tbaa !245
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !346  ; 2 uses
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.p = load i32, ptr %i.o, align 4, !tbaa !347
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8321
  %i.s = load i8, ptr %i.r, align 1, !tbaa !495, !range !184, !noundef !185
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.v = load i32, ptr %i.u, align 4, !tbaa !218
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti(ptr noundef %i.m, ptr noundef null, ptr noundef null, i32 noundef 3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

declare void @_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11BeginMenuExEPKcS1_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 6 uses
  %9 = alloca %struct.ImGuiLastItemData, align 4  ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 42 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null) ; 12 uses
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.h, i32 noundef 0) ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !245
  %11 = lshr i32 %i.k, 4
  %12 = and i32 %11, 16777216
  %spec.select = or disjoint i32 %12, 268566853   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9888 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9896 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !459  ; 3 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !460  ; 6 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.s, %bb.d ] ; 3 uses
  %i.r = icmp ult ptr %.0.i, %i.q
  br i1 %i.r, label %bb.d, label %_ZNK8ImVectorIjE8containsERKj.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.t = load i32, ptr %.0.i, align 4, !tbaa !208
  %i.u = icmp eq i32 %i.t, %i.h
  br i1 %i.u, label %bb.e, label %bb.c, !llvm.loop !855

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef zeroext i1 @_ZN5ImGui16BeginPopupMenuExEjPKci(i32 noundef %i.h, ptr noundef %0, i32 noundef %spec.select)
  br label %bb.bz

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7928
  store i32 0, ptr %i.w, align 8, !tbaa !326
  br label %bb.bz

_ZNK8ImVectorIjE8containsERKj.exit:               ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 9892 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !856
  %i.z = icmp eq i32 %i.o, %i.y
  br i1 %i.z, label %bb.h, label %_ZN8ImVectorIjE9push_backERKj.exit

bb.h:                                             ; preds = %_ZNK8ImVectorIjE8containsERKj.exit
  %i.aa = add nsw i32 %i.o, 1
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = sdiv i32 %i.o, 2
  %i.ac = add nsw i32 %i.ab, %i.o
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i:        ; preds = %bb.i, %bb.h
  %i.ad = phi i32 [ %i.ac, %bb.i ], [ 8, %bb.h ]
  %i.ae = tail call noundef i32 @llvm.smax.i32(i32 %i.ad, i32 %i.aa) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ag) ; 3 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !459 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !460
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr nonnull align 4 %i.ai, i64 %i.al, i1 false)
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !459
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.am)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !459
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !856
  %.pre3.i = load i32, ptr %i.l, align 8, !tbaa !460
  %.pre = sext i32 %.pre3.i to i64
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %_ZNK8ImVectorIjE8containsERKj.exit, %bb.k
  %.pre-phi = phi i64 [ %i.p, %_ZNK8ImVectorIjE8containsERKj.exit ], [ %.pre, %bb.k ]
  %i.an = phi ptr [ %i.n, %_ZNK8ImVectorIjE8containsERKj.exit ], [ %i.ah, %bb.k ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %.pre-phi
  store i32 %i.h, ptr %i.ao, align 4
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !460
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !460
  %i.ar = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.as = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.ar, i1 noundef zeroext false, float noundef -1.000000e+00) ; 3 uses
  store <2 x float> %i.as, ptr %3, align 8
  %i.at = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 5312
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !158 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8152
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !552
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8168
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !553 ; 2 uses
  %.not.i = icmp sgt i32 %i.ax, %i.az
  %i.ba = extractelement <2 x float> %i.as, i64 1
  br i1 %.not.i, label %bb.l, label %_ZL19IsRootOfOpenMenuSetv.exit.thread

bb.l:                                             ; preds = %_ZN8ImVectorIjE9push_backERKj.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !245
  %i.bd = and i32 %i.bc, 268435456
  %.not15.i = icmp eq i32 %i.bd, 0
  br i1 %.not15.i, label %bb.m, label %_ZL19IsRootOfOpenMenuSetv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8160
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !554
  %i.bg = sext i32 %i.az to i64
  %i.bh = getelementptr inbounds [56 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 368
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !348
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !556
  %.not16.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not16.i, label %bb.n, label %_ZL19IsRootOfOpenMenuSetv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !557 ; 3 uses
  %.not17.i = icmp eq ptr %i.bn, null
  br i1 %.not17.i, label %_ZL19IsRootOfOpenMenuSetv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !245
  %i.bq = and i32 %i.bp, 268435456
  %.not18.i = icmp eq i32 %i.bq, 0
  br i1 %.not18.i, label %_ZL19IsRootOfOpenMenuSetv.exit.thread, label %_ZL19IsRootOfOpenMenuSetv.exit

_ZL19IsRootOfOpenMenuSetv.exit:                   ; preds = %bb.o
  %i.br = tail call noundef zeroext i1 @_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.av, i1 noundef zeroext true)
  br i1 %i.br, label %bb.p, label %_ZL19IsRootOfOpenMenuSetv.exit.thread

bb.p:                                             ; preds = %_ZL19IsRootOfOpenMenuSetv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 7796 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !306
  %i.bu = or i32 %i.bt, 8192
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !306
  br label %_ZL19IsRootOfOpenMenuSetv.exit.thread

_ZL19IsRootOfOpenMenuSetv.exit.thread:            ; preds = %bb.n, %bb.o, %bb.m, %bb.l, %_ZN8ImVectorIjE9push_backERKj.exit, %bb.p, %_ZL19IsRootOfOpenMenuSetv.exit
  %.1.i274 = phi i1 [ false, %_ZL19IsRootOfOpenMenuSetv.exit ], [ true, %bb.p ], [ false, %_ZN8ImVectorIjE9push_backERKj.exit ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 7 uses
  %.sroa.081.0.copyload = load float, ptr %i.bw, align 8, !tbaa !190 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !190 ; 2 uses
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  br i1 %2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZL19IsRootOfOpenMenuSetv.exit.thread
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZL19IsRootOfOpenMenuSetv.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 3432 ; 3 uses
  %i.by = load float, ptr %i.bx, align 8, !tbaa !350
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 3428
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !558
  store float %i.ca, ptr %i.bx, align 8, !tbaa !350
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !315
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 3300 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !308 ; 2 uses
  %i.ch = fmul float %i.cg, 5.000000e-01
  %i.ci = fptosi float %i.ch to i32
  %i.cj = sitofp i32 %i.ci to float
  %i.ck = load float, ptr %i.bw, align 8, !tbaa !186
  %i.cl = fadd float %i.ck, %i.cj
  store float %i.cl, ptr %i.bw, align 8, !tbaa !186
  %i.cm = fmul float %i.cg, 2.000000e+00
  tail call void @_ZN5ImGui13PushStyleVarXEif(i32 noundef 14, float noundef %i.cm)
  %i.cn = load float, ptr %i.bw, align 8, !tbaa !186
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !543
  %i.cq = uitofp i16 %i.cp to float
  %i.cr = fadd float %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !188
  %i.cu = fadd float %.sroa.5.0.copyload, %i.ct   ; 2 uses
  %.sroa.0261.0.vec.insert = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0261.4.vec.insert = insertelement <2 x float> %.sroa.0261.0.vec.insert, float %i.cu, i64 1
  %i.cv = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str, i1 noundef zeroext %i.i, i32 noundef 4194305, ptr noundef nonnull align 4 dereferenceable(8) %3)
  tail call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  tail call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0261.4.vec.insert, ptr noundef %0, ptr noundef %i.ar, i1 noundef zeroext false)
  tail call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  %i.cw = load float, ptr %i.cf, align 4, !tbaa !308 ; 2 uses
  %i.cx = fmul float %i.cw, -5.000000e-01
  %i.cy = fptosi float %i.cx to i32
  %i.cz = sitofp i32 %i.cy to float
  %i.da = load float, ptr %i.bw, align 8, !tbaa !186
  %i.db = fadd float %i.da, %i.cz
  store float %i.db, ptr %i.bw, align 8, !tbaa !186
  %i.dc = fadd float %.sroa.081.0.copyload, -1.000000e+00
  %i.dd = fmul float %i.cw, 5.000000e-01
end_hunk_1
