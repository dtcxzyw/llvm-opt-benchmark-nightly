Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_:bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 7708
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !253
  %i.gh = and i32 %i.gg, 16384
  %.not299 = icmp eq i32 %i.gh, 0
  br i1 %.not299, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0346 = phi i32 [ 0, %bb.ax ], [ 4096, %bb.ay ] ; 2 uses
  %i.gi = or disjoint i32 %.0346, 512
  %spec.select353.a = select i1 %.not295, i32 %i.gi, i32 %.0346
  %i.gj = fsub float %i.cm, %i.z                  ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 3252
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !747 ; 2 uses
  %i.gm = fsub float %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.go = load float, ptr %i.gn, align 8, !tbaa !450 ; 2 uses
  %i.gp = fcmp ult float %i.go, %i.gm
  br i1 %i.gp, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = load float, ptr %i.w, align 8, !tbaa !208
  %i.gr = call float @llvm.fmuladd.f32(float %.sroa.0336.0, float 2.000000e+00, float %i.gq)
  %i.gs = fadd float %i.gj, %i.gr
  %i.gt = fadd float %i.gl, %i.gs
  %i.gu = fcmp olt float %i.go, %i.gt
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gv = phi i1 [ false, %bb.az ], [ %i.gu, %bb.ba ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 7708
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !253
  %i.gy = and i32 %i.gx, 4194304
  %i.gz = icmp ne i32 %i.gy, 0                    ; 5 uses
  %i.ha = and i32 %.0270, 192
  %i.hb = icmp eq i32 %i.ha, 0
  %i.hc = select i1 %i.hb, i32 192, i32 128
  %i.hd = select i1 %i.gz, i32 %i.hc, i32 0
  %.1271 = or i32 %i.hd, %.0270                   ; 5 uses
  %i.he = and i32 %.1271, 64
  %.not300 = icmp eq i32 %i.he, 0
  %. = select i1 %.not300, i32 32, i32 288
  %.sink = select i1 %i.gv, i32 16, i32 %.
  %i.hf = or disjoint i32 %spec.select353.a, %.sink
  %i.hg = lshr i32 %.0270, 9
  %i.hh = and i32 %i.hg, 262144
  %spec.select354.a = or disjoint i32 %i.hf, %i.hh ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.hi = trunc i32 %.0270 to i8
  %i.hj = and i8 %i.hi, 1                         ; 4 uses
  store i8 %i.hj, ptr %i.a, align 1, !tbaa !233
  br i1 %i.gz, label %bb.bc, label %bb.bt

bb.bc:                                            ; preds = %bb.bb
  %i.hk = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 9104
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !255 ; 9 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 90
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !260, !range !187, !noundef !188
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !261 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 7664
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !262 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !263 ; 2 uses
  %.not.i = icmp eq i8 %i.hv, -1
  %i.hw = icmp eq i8 %i.hv, 1
  %i.hx = zext i1 %i.hw to i8
  %.042.i = select i1 %.not.i, i8 %i.hj, i8 %i.hx ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 91
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !264, !range !187, !noundef !188
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 94 ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !265, !range !187, !noundef !188 ; 2 uses
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.bf, label %.critedge.i

bb.bf:                                            ; preds = %bb.be
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hk, i64 8524
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !266
  %i.ig = icmp eq i32 %i.if, %0
  br i1 %i.ig, label %bb.bg, label %.critedge.i

bb.bg:                                            ; preds = %bb.bf
  store i8 1, ptr %i.ib, align 2, !tbaa !265
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 24 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !268
  %i.ij = icmp eq i64 %i.ii, -1
  br i1 %i.ij, label %bb.bh, label %.critedge.thread.i

bb.bh:                                            ; preds = %bb.bg
  store i64 %i.ht, ptr %i.ih, align 8, !tbaa !268
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  store i8 %.042.i, ptr %i.ik, align 4, !tbaa !269
  br label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.bf, %bb.be
  %i.il = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !268
  %i.in = icmp eq i64 %i.im, %i.ht
  br i1 %i.in, label %.critedge.thread.i, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.hm, i64 93
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !270, !range !187, !noundef !188
  %.not45.i = icmp eq i8 %i.ip, %i.ic
  br i1 %.not45.i, label %bb.bj, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.bi, %.critedge.i, %bb.bh, %bb.bg
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !269
  %i.is = icmp ne i8 %i.ir, 0
  %i.it = zext i1 %i.is to i8
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hm, i64 84
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !271
  %i.iw = and i32 %i.iv, 4096
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 52
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !272
  %i.ja = and i32 %i.iz, 16
  %i.jb = icmp eq i32 %i.ja, 0
  %spec.select.i = select i1 %i.jb, i8 0, i8 %.042.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.critedge.thread.i, %bb.bd
  %.2.i = phi i8 [ %.042.i, %bb.bd ], [ %i.it, %.critedge.thread.i ], [ %.042.i, %bb.bj ], [ %spec.select.i, %bb.bk ] ; 2 uses
  store i8 %.2.i, ptr %i.a, align 1, !tbaa !233
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bc
  %.3.i = phi i8 [ %.2.i, %bb.bl ], [ %i.hj, %bb.bc ] ; 3 uses
  %i.jc = trunc nuw i8 %.3.i to i1
  br i1 %i.jc, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hk, i64 5300
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !220
  %i.jf = icmp eq i32 %i.je, %0
  br i1 %i.jf, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hk, i64 5315
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !234, !range !187, !noundef !188
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hm, i64 52
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !272
  %i.jl = and i32 %i.jk, 16384
  %.not47.i = icmp eq i32 %i.jl, 0
  br i1 %.not47.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jm = and i32 %spec.select354.a, -524337
  %i.jn = or disjoint i32 %i.jm, 524304
  br label %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.jo = or i32 %spec.select354.a, 524320
  br label %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit

_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit:      ; preds = %bb.bq, %bb.br
  %.0.i = phi i32 [ %i.jo, %bb.br ], [ %i.jn, %bb.bq ] ; 2 uses
  br i1 %i.gv, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit
  %i.jp = and i32 %.0.i, -49
  %i.jq = or disjoint i32 %i.jp, 16
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bb
  %i.jr = getelementptr inbounds nuw i8, ptr %i.e, i64 5192
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !212
  %i.jt = icmp eq ptr %i.g, %i.js
  %or.cond7 = and i1 %i.gv, %i.jt
  %i.ju = or i32 %spec.select354.a, 65536
  %spec.select355 = select i1 %or.cond7, i32 %spec.select354.a, i32 %i.ju
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit, %bb.bs
  %i.jv = phi i8 [ %.3.i, %bb.bs ], [ %.3.i, %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit ], [ %i.hj, %bb.bt ]
  %.4350 = phi i32 [ %i.jq, %bb.bs ], [ %.0.i, %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit ], [ %spec.select355, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.jw = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %.4350) ; 2 uses
  br i1 %.not295, label %bb.bv, label %bb.cj

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.jw, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %bb.bv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 8752
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !216
  %.not302 = icmp eq i32 %i.jy, %0
  br i1 %.not302, label %bb.cg, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jz = and i32 %.1271, 192
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kb = getelementptr inbounds nuw i8, ptr %i.e, i64 8096
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !226
  %i.kd = icmp ne i32 %i.kc, %0
  %or.cond9 = or i1 %i.gz, %i.kd
  br i1 %or.cond9, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0274 = phi i8 [ 1, %bb.bz ], [ 0, %bb.by ]    ; 2 uses
  %i.ke = and i32 %.1271, 128
  %.not303 = icmp eq i32 %i.ke, 0
  br i1 %.not303, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.gv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kf = getelementptr inbounds nuw i8, ptr %i.e, i64 8073
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !225, !range !187, !noundef !188
  %i.kh = xor i8 %i.kg, 1
  %i.ki = zext nneg i8 %i.kh to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.kj = phi i32 [ 0, %bb.cb ], [ %i.ki, %bb.cc ]
  %i.kk = zext nneg i8 %.0274 to i32
  %i.kl = or i32 %i.kj, %i.kk
  %i.km = icmp ne i32 %i.kl, 0
  %i.kn = zext i1 %i.km to i8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %.1275 = phi i8 [ %i.kn, %bb.cd ], [ %.0274, %bb.ca ] ; 2 uses
  %i.ko = and i32 %.1271, 64
  %.not304 = icmp eq i32 %i.ko, 0
  br i1 %.not304, label %.critedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kp = getelementptr inbounds nuw i8, ptr %i.e, i64 2842
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !221
  %i.kr = icmp eq i16 %i.kq, 2
  %spec.select314 = select i1 %i.kr, i8 1, i8 %.1275
  br label %.critedge

bb.cg:                                            ; preds = %bb.bw
  %not. = xor i1 %i.df, true                      ; 2 uses
  %.315 = zext i1 %not. to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.cf, %bb.bv, %bb.cg, %bb.ce
  %.0276 = phi i1 [ %not., %bb.cg ], [ false, %bb.bv ], [ true, %bb.ce ], [ true, %bb.cf ] ; 2 uses
  %.2 = phi i8 [ %.315, %bb.cg ], [ 0, %bb.bv ], [ %.1275, %bb.ce ], [ %spec.select314, %bb.cf ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 8076 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !224
  %i.ku = icmp eq i32 %i.kt, %0
  br i1 %i.ku, label %bb.ch, label %.thread370

bb.ch:                                            ; preds = %.critedge
  %i.kv = getelementptr inbounds nuw i8, ptr %i.e, i64 8240
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !443
  %i.kx = icmp eq i32 %i.kw, 0
  %or.cond11 = and i1 %i.df, %i.kx
  br i1 %or.cond11, label %bb.ci, label %.thread366

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0) #36
  call void @_ZN5ImGui20NavMoveRequestCancelEv() #36
  %.pre = load i32, ptr %i.ks, align 4, !tbaa !224
  %i.ky = icmp eq i32 %.pre, %0
  br i1 %i.ky, label %.thread366, label %.thread372

.thread366:                                       ; preds = %bb.ch, %bb.ci
  %.3369 = phi i8 [ 1, %bb.ci ], [ %.2, %bb.ch ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 8240
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !443
  %i.lb = icmp ne i32 %i.la, 1
  %or.cond13 = or i1 %i.df, %i.lb
  br i1 %or.cond13, label %.thread370, label %.thread

.thread:                                          ; preds = %.thread366
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0) #36
  call void @_ZN5ImGui20NavMoveRequestCancelEv() #36
  br label %.thread372

.thread370:                                       ; preds = %.critedge, %.thread366
  %.3368 = phi i8 [ %.3369, %.thread366 ], [ %.2, %.critedge ]
  %i.lc = trunc nuw i8 %.3368 to i1
  br i1 %i.lc, label %.thread372, label %bb.cj

.thread372:                                       ; preds = %bb.ci, %.thread, %.thread370
  %i.ld = xor i1 %i.df, true                      ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !451
  %i.lg = zext i1 %i.ld to i32
  call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.lf, i32 noundef %i.de, i32 noundef %i.lg) #36
  %i.lh = load i32, ptr %i.dp, align 8, !tbaa !273
  %i.li = or i32 %i.lh, 16
  store i32 %i.li, ptr %i.dp, align 8, !tbaa !273
  br label %bb.cj

bb.cj:                                            ; preds = %.thread370, %.thread372, %bb.bu
  %.0280.in = phi i1 [ %i.df, %bb.bu ], [ %i.ld, %.thread372 ], [ %i.df, %.thread370 ] ; 5 uses
  %.1277 = phi i1 [ %i.jw, %bb.bu ], [ %.0276, %.thread372 ], [ %.0276, %.thread370 ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.bu ], [ 0, %.thread372 ], [ 1, %.thread370 ]
  br i1 %i.gz, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %11 = select i1 %.1277, i8 %.5, i8 0
  store i8 %11, ptr %i.d, align 1, !tbaa !233
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  br i1 %.1277, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lj = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !329
  %i.ll = getelementptr inbounds nuw i8, ptr %i.e, i64 7636
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !326
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %0, i32 noundef %i.lk, i32 noundef %i.lm, ptr noundef nonnull align 4 dereferenceable(16) %8) #36
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %.pre357 = load i8, ptr %i.a, align 1, !tbaa !233, !range !187
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %i.ln = phi i8 [ %.pre357, %bb.cm ], [ %i.jv, %bb.cj ] ; 2 uses
  %i.lo = zext nneg i8 %i.ln to i32
  %i.lp = and i32 %.0270, 1
  %.not305 = icmp eq i32 %i.lp, %i.lo
  br i1 %.not305, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lq = load i32, ptr %i.dp, align 8, !tbaa !273
  %i.lr = or i32 %i.lq, 8
  store i32 %i.lr, ptr %i.dp, align 8, !tbaa !273
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ls = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) #36 ; 4 uses
  %spec.select316 = select i1 %i.gz, i32 6, i32 2 ; 2 uses
  br i1 %.not284, label %bb.db, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lt = load i8, ptr %i.c, align 1, !tbaa !233, !range !187, !noundef !188
  %i.lu = trunc nuw i8 %i.lt to i1
  %i.lv = load i8, ptr %i.b, align 1, !range !187
  %i.lw = trunc nuw i8 %i.lv to i1
  %i.lx = select i1 %i.lu, i32 26, i32 25
  %i.ly = select i1 %i.lw, i32 %i.lx, i32 24
  %i.lz = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ly, float noundef 1.000000e+00) #36
  %.sroa.030.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !193
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.bw, align 8, !tbaa !193
  %i.ma = getelementptr inbounds nuw i8, ptr %i.e, i64 3220
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !235
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.030.0.copyload, <2 x float> %.sroa.029.0.copyload, i32 noundef %i.lz, i1 noundef zeroext true, float noundef %i.mb) #36
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select316) #36
  %.not = xor i1 %i.ba, true
  %or.cond17 = select i1 %.not, i1 true, i1 %i.bf
  br i1 %or.cond17, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN5ImGui25TablePopBackgroundChannelEv() #36
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.mc = and i32 %.0270, 512
  %.not308 = icmp eq i32 %i.mc, 0
  br i1 %.not308, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.md = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !205
  %i.mf = fneg float %i.z
  %i.mg = load float, ptr %i.w, align 8, !tbaa !208
  %i.mh = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %i.mg, i64 1
  %i.mj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> <float 6.000000e-01, float 5.000000e-01>, <2 x float> %i.cl)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.me, <2 x float> %i.mj, i32 noundef %i.ls) #36
  br label %bb.cx

bb.cu:                                            ; preds = %bb.cs
  br i1 %.not295, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mk = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !205
  %i.mm = fadd float %.sroa.0336.0, %i.gj
  %i.mn = insertelement <2 x float> %i.cl, float %i.mm, i64 0
  %i.mo = and i32 %.0270, 536870912
  %.not309 = icmp eq i32 %i.mo, 0
  %i.mp = select i1 %.not309, i32 3, i32 2
  %i.mq = select i1 %.0280.in, i32 %i.mp, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.ml, <2 x float> %i.mn, i32 noundef %i.ls, i32 noundef %i.mq, float noundef 1.000000e+00) #36
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.mr = fsub float %i.z, %.sroa.0336.0
  %i.ms = fsub float %i.cm, %i.mr                 ; 2 uses
  store float %i.ms, ptr %6, align 8, !tbaa !197
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.ct
  %i.mt = phi float [ %i.cm, %bb.cv ], [ %i.ms, %bb.cw ], [ %i.cm, %bb.ct ] ; 2 uses
  %i.mu = and i32 %.0270, 268435456
  %.not310 = icmp eq i32 %i.mu, 0
  br i1 %.not310, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mv = load float, ptr %i.w, align 8, !tbaa !208
  %i.mw = load float, ptr %.sroa.0336.0.in, align 4, !tbaa !209
  %i.mx = fadd float %i.mv, %i.mw
  %i.my = load float, ptr %i.bw, align 8, !tbaa !240
  %i.mz = fsub float %i.my, %i.mx
  store float %i.mz, ptr %i.bw, align 8, !tbaa !240
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.na = getelementptr inbounds nuw i8, ptr %i.e, i64 10008
  %i.nb = load i8, ptr %i.na, align 8, !tbaa !194, !range !187, !noundef !188
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.da, label %bb.dl

bb.da:                                            ; preds = %bb.cz
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.97) #36
  br label %bb.dl

bb.db:                                            ; preds = %bb.cp
  %i.nd = load i8, ptr %i.b, align 1, !tbaa !233, !range !187, !noundef !188 ; 3 uses
  %i.ne = or i8 %i.nd, %i.ln
  %or.cond19.not = icmp eq i8 %i.ne, 0
  br i1 %or.cond19.not, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nf = trunc nuw i8 %i.nd to i1
  %i.ng = load i8, ptr %i.c, align 1, !tbaa !233, !range !187, !noundef !188
  %i.nh = and i8 %i.ng, %i.nd
  %or.cond21.not = icmp eq i8 %i.nh, 0
  %i.ni = select i1 %i.nf, i32 25, i32 24
  %i.nj = select i1 %or.cond21.not, i32 %i.ni, i32 26
  %i.nk = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.nj, float noundef 1.000000e+00) #36
  %.sroa.028.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !193
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.bw, align 8, !tbaa !193
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload, <2 x float> %.sroa.027.0.copyload, i32 noundef %i.nk, i1 noundef zeroext false, float noundef 0.000000e+00) #36
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select316) #36
  %.not22 = xor i1 %i.ba, true
  %or.cond24 = select i1 %.not22, i1 true, i1 %i.bf
  br i1 %or.cond24, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN5ImGui25TablePopBackgroundChannelEv() #36
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.nl = and i32 %.0270, 512
  %.not306 = icmp eq i32 %i.nl, 0
  br i1 %.not306, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nm = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !205
  %i.no = fneg float %i.z
  %i.np = load float, ptr %i.w, align 8, !tbaa !208
  %i.nq = insertelement <2 x float> poison, float %i.no, i64 0
  %i.nr = insertelement <2 x float> %i.nq, float %i.np, i64 1
  %i.ns = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nr, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cl)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.nn, <2 x float> %i.ns, i32 noundef %i.ls) #36
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  br i1 %.not295, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.nt = getelementptr inbounds nuw i8, ptr %i.g, i64 712
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !205
  %i.nv = fadd float %.sroa.0336.0, %i.gj
  %i.nw = load float, ptr %i.w, align 8, !tbaa !208
  %i.nx = extractelement <2 x float> %i.cl, i64 1
  %i.ny = call float @llvm.fmuladd.f32(float %i.nw, float 1.500000e-01, float %i.nx)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.nv, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ny, i64 1
  %i.nz = and i32 %.0270, 536870912
  %.not307 = icmp eq i32 %i.nz, 0
  %i.oa = select i1 %.not307, i32 3, i32 2
  %i.ob = select i1 %.0280.in, i32 %i.oa, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.nu, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.ls, i32 noundef %i.ob, float noundef f0x3F333333) #36
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di, %bb.dg
  %i.oc = getelementptr inbounds nuw i8, ptr %i.e, i64 10008
  %i.od = load i8, ptr %i.oc, align 8, !tbaa !194, !range !187, !noundef !188
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.98, ptr noundef null) #36
  br label %bb.dl

bb.dl:                                            ; preds = %bb.cz, %bb.da, %bb.dj, %bb.dk
  %i.of = phi float [ %i.mt, %bb.cz ], [ %i.mt, %bb.da ], [ %i.cm, %bb.dj ], [ %i.cm, %bb.dk ]
  br i1 %i.eg, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.og = fsub float %i.of, %i.z
  %i.oh = fadd float %.sroa.0336.0, %i.og
end_hunk_0
