Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
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
  br label %bb.qo

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
  br i1 %i.cs, label %bb.v, label %bb.qo

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
  %spec.select1349 = or i32 %i.dj, %5             ; 7 uses
  %i.dk = and i32 %spec.select1349, 512
  %i.dl = icmp ne i32 %i.dk, 0                    ; 20 uses
  %i.dm = and i32 %5, 1024
  %i.dn = icmp eq i32 %i.dm, 0                    ; 7 uses
  %i.do = and i32 %5, 65536
  %i.dp = icmp eq i32 %i.do, 0                    ; 2 uses
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
  %i.ft = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40 ; 2 uses
  %i.fu = trunc i64 %i.ft to i32                  ; 5 uses
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
  %.046.lcssa.i = phi i32 [ 0, %bb.ap ], [ %i.gh, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.gb, %bb.aq ] ; 11 uses
  %i.gi = icmp eq i32 %.046.lcssa.i, %i.ga
  %i.gj = icmp eq i32 %.046.lcssa.i, %i.fu
  %or.cond51.i = and i1 %i.gi, %i.gj
  br i1 %or.cond51.i, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %.preheader52.preheader.i

.preheader52.preheader.i:                         ; preds = %._crit_edge.i
  %i.gk = sext i32 %i.ga to i64
  %i.gl = sext i32 %.046.lcssa.i to i64
  %i.gm = sub i32 %i.ga, %.046.lcssa.i            ; 2 uses
  %.044.i1854 = add nsw i32 %i.fu, -1             ; 2 uses
  %indvars.iv.next62.i1856 = add nsw i64 %i.gk, -1 ; 2 uses
  %i.gn = icmp sgt i32 %i.ga, %.046.lcssa.i
  %23 = icmp slt i32 %.046.lcssa.i, %i.fu
  %24 = and i1 %i.gn, %23
  br i1 %24, label %.lr.ph1860, label %.preheader52.i._crit_edge

.preheader52.i:                                   ; preds = %.lr.ph1860
  %indvars.iv.next72.i = add i32 %indvars.iv71.i1857, -1 ; 2 uses
  %.044.i = add nsw i32 %.044.i1857, -1           ; 2 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv.next62.i1859, -1 ; 2 uses
  %i.go = icmp sgt i64 %indvars.iv.next62.i1859, %i.gl
  %i.gp = icmp sgt i32 %.044.i1857, %.046.lcssa.i
  %i.gq = and i1 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph1860, label %.preheader52.i._crit_edge, !llvm.loop !8

.lr.ph1860:                                       ; preds = %.preheader52.preheader.i, %.preheader52.i
  %indvars.iv.next62.i1859 = phi i64 [ %indvars.iv.next62.i, %.preheader52.i ], [ %indvars.iv.next62.i1856, %.preheader52.preheader.i ] ; 4 uses
  %.044.i1857 = phi i32 [ %.044.i, %.preheader52.i ], [ %.044.i1854, %.preheader52.preheader.i ] ; 4 uses
  %indvars.iv71.i1857 = phi i32 [ %indvars.iv.next72.i, %.preheader52.i ], [ %i.gm, %.preheader52.preheader.i ] ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.fx, i64 %indvars.iv.next62.i1859
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !351
  %25 = sext i32 %.044.i1857 to i64
  %i.gt = getelementptr inbounds i8, ptr %2, i64 %25
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !351
  %.not48.i = icmp eq i8 %i.gs, %i.gu
  br i1 %.not48.i, label %.preheader52.i, label %._crit_edge1861, !llvm.loop !8

._crit_edge1861:                                  ; preds = %.lr.ph1860
  br label %.preheader52.i._crit_edge, !llvm.loop !8

.preheader52.i._crit_edge:                        ; preds = %.preheader52.i, %._crit_edge1861, %.preheader52.preheader.i
  %indvars.iv71.i.lcssa = phi i32 [ %indvars.iv71.i1857, %._crit_edge1861 ], [ %i.gm, %.preheader52.preheader.i ], [ %indvars.iv.next72.i, %.preheader52.i ] ; 3 uses
  %.044.i.lcssa = phi i32 [ %.044.i1857, %._crit_edge1861 ], [ %.044.i1854, %.preheader52.preheader.i ], [ %.044.i, %.preheader52.i ]
  %indvars.iv.next62.i.lcssa = phi i64 [ %indvars.iv.next62.i1859, %._crit_edge1861 ], [ %indvars.iv.next62.i1856, %.preheader52.preheader.i ], [ %indvars.iv.next62.i, %.preheader52.i ]
  %i.gv = trunc nsw i64 %indvars.iv.next62.i.lcssa to i32
  %i.gw = sub nsw i32 %.044.i.lcssa, %.046.lcssa.i ; 2 uses
  %i.gx = sub nsw i32 %i.gv, %.046.lcssa.i        ; 3 uses
  %i.gy = icmp sgt i32 %i.gw, -1
  %i.gz = icmp sgt i32 %i.gx, -1
  %or.cond.i = select i1 %i.gy, i1 true, i1 %i.gz
  br i1 %or.cond.i, label %bb.ar, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit

bb.ar:                                            ; preds = %.preheader52.i._crit_edge
  %i.ha = add nsw i32 %i.gx, 1
  %i.hb = add nsw i32 %i.gw, 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !378
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.he, i32 noundef %.046.lcssa.i, i32 noundef %i.ha, i32 noundef %i.hb) ; 9 uses
  %i.hg = ptrtoaddr ptr %i.hf to i64
  %.not49.i = icmp eq ptr %i.hf, null
  %.not5056.i = icmp slt i32 %i.gx, 0
  %or.cond59.i = select i1 %.not49.i, i1 true, i1 %.not5056.i
  br i1 %or.cond59.i, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %iter.check

iter.check:                                       ; preds = %bb.ar
  %i.hh = zext i32 %.046.lcssa.i to i64           ; 2 uses
  %wide.trip.count73.i = zext i32 %indvars.iv71.i.lcssa to i64 ; 8 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hh ; 7 uses
  %min.iters.check = icmp ult i32 %indvars.iv71.i.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph58.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hi = add i64 %i.fy, %i.hh
  %i.hj = sub i64 %i.hi, %i.hg
  %diff.check = icmp ugt i64 %i.hj, -32
  br i1 %diff.check, label %.lr.ph58.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1867 = icmp ult i32 %indvars.iv71.i.lcssa, 32
  br i1 %min.iters.check1867, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hk = and i64 %wide.trip.count73.i, 28
  %n.vec = and i64 %wide.trip.count73.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load = load <16 x i8>, ptr %i.hl, align 1, !tbaa !351
  %wide.load1868 = load <16 x i8>, ptr %i.hm, align 1, !tbaa !351
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <16 x i8> %wide.load, ptr %i.hn, align 1, !tbaa !351
  store <16 x i8> %wide.load1868, ptr %i.ho, align 1, !tbaa !351
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br i1 %cmp.n, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph58.i.preheader, label %vec.epilog.ph, !prof !381

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1869 = and i64 %wide.trip.count73.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1870 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1872, %vec.epilog.vector.body ] ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index1870
  %wide.load1871 = load <4 x i8>, ptr %i.hq, align 1, !tbaa !351
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 %index1870
  store <4 x i8> %wide.load1871, ptr %i.hr, align 1, !tbaa !351
  %index.next1872 = add nuw i64 %index1870, 4     ; 2 uses
  %i.hs = icmp eq i64 %index.next1872, %n.vec1869
  br i1 %i.hs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !680

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1873 = icmp eq i64 %n.vec1869, %wide.trip.count73.i
  br i1 %cmp.n1873, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %.lr.ph58.i.preheader

.lr.ph58.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv68.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1869, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count73.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.i.prol.loopexit, label %.lr.ph58.i.prol

.lr.ph58.i.prol:                                  ; preds = %.lr.ph58.i.preheader, %.lr.ph58.i.prol
  %indvars.iv68.i.prol = phi i64 [ %indvars.iv.next69.i.prol, %.lr.ph58.i.prol ], [ %indvars.iv68.i.ph, %.lr.ph58.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph58.i.prol ], [ 0, %.lr.ph58.i.preheader ]
  %gep.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv68.i.prol
  %i.ht = load i8, ptr %gep.i.prol, align 1, !tbaa !351
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv68.i.prol
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !351
  %indvars.iv.next69.i.prol = add nuw nsw i64 %indvars.iv68.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph58.i.prol.loopexit, label %.lr.ph58.i.prol, !llvm.loop !681

.lr.ph58.i.prol.loopexit:                         ; preds = %.lr.ph58.i.prol, %.lr.ph58.i.preheader
  %indvars.iv68.i.unr = phi i64 [ %indvars.iv68.i.ph, %.lr.ph58.i.preheader ], [ %indvars.iv.next69.i.prol, %.lr.ph58.i.prol ]
  %i.hv = sub nsw i64 %indvars.iv68.i.ph, %wide.trip.count73.i
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i.3, %.lr.ph58.i ], [ %indvars.iv68.i.unr, %.lr.ph58.i.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv68.i
  %i.hx = load i8, ptr %gep.i, align 1, !tbaa !351
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv68.i
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !351
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next69.i
  %i.hz = load i8, ptr %gep.i.1, align 1, !tbaa !351
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv.next69.i
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !351
  %indvars.iv.next69.i.1 = add nuw nsw i64 %indvars.iv68.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next69.i.1
  %i.ib = load i8, ptr %gep.i.2, align 1, !tbaa !351
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv.next69.i.1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !351
  %indvars.iv.next69.i.2 = add nuw nsw i64 %indvars.iv68.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next69.i.2
  %i.id = load i8, ptr %gep.i.3, align 1, !tbaa !351
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv.next69.i.2
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !351
  %indvars.iv.next69.i.3 = add nuw nsw i64 %indvars.iv68.i, 4 ; 2 uses
  %exitcond74.not.i.3 = icmp eq i64 %indvars.iv.next69.i.3, %wide.trip.count73.i
  br i1 %exitcond74.not.i.3, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %.lr.ph58.i, !llvm.loop !682

_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit: ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i, %.preheader52.i._crit_edge, %bb.ar
  %i.if = add nsw i32 %3, 1                       ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dg, i64 44 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !382 ; 4 uses
  %.not1634.a = icmp slt i32 %3, %i.ih
  br i1 %.not1634.a, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge, label %bb.as

_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge: ; preds = %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit
  %.pre1683.a = load ptr, ptr %i.fw, align 8, !tbaa !376
  br label %_ZN8ImVectorIcE6resizeEi.exit

bb.as:                                            ; preds = %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit
  %.not.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ii = sdiv i32 %i.ih, 2
  %i.ij = add nsw i32 %i.ii, %i.ih
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i:        ; preds = %bb.at, %bb.as
  %i.ik = phi i32 [ %i.ij, %bb.at ], [ 8, %bb.as ]
  %i.il = call noundef i32 @llvm.smax.i32(i32 %i.ik, i32 %i.if) ; 2 uses
  %i.im = sext i32 %i.il to i64
  %i.in = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.im) ; 3 uses
  %i.io = load ptr, ptr %i.fw, align 8, !tbaa !383 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.io, null
  br i1 %.not6.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  %i.ip = load i32, ptr %i.fv, align 8, !tbaa !384
  %i.iq = sext i32 %i.ip to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.in, ptr nonnull align 1 %i.io, i64 %i.iq, i1 false)
  %i.ir = load ptr, ptr %i.fw, align 8, !tbaa !383
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ir)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  store ptr %i.in, ptr %i.fw, align 8, !tbaa !383
  store i32 %i.il, ptr %i.ig, align 4, !tbaa !382
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge, %bb.av
  %i.is = phi ptr [ %.pre1683.a, %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge ], [ %i.in, %bb.av ]
  store i32 %i.if, ptr %i.fv, align 8, !tbaa !384
  store i32 %i.fu, ptr %i.fz, align 8, !tbaa !377
  %i.it = shl i64 %i.ft, 32
  %sext1302 = add i64 %i.it, 4294967296
  %i.iu = ashr exact i64 %sext1302, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.is, ptr nonnull align 1 %2, i64 %i.iu, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !378 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dg, i64 124
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !385
  %i.jb = load <2 x i32>, ptr %i.iv, align 8, !tbaa !208
  store <2 x i32> %i.jb, ptr %i.iy, align 4, !tbaa !208
  store i32 %i.ja, ptr %i.ix, align 4, !tbaa !388
  %i.jc = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !699, !range !184, !noundef !185
  %i.je = trunc nuw i8 %i.jd to i1                ; 2 uses
  br i1 %i.fs, label %bb.cf, label %bb.ci

bb.aw:                                            ; preds = %bb.ao
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !389
  %i.jh = xor i32 %i.jg, %spec.select1349
  %i.ji = and i32 %i.jh, 512
  %i.jj = icmp ne i32 %i.ji, 0                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui15PopPasswordFontEv:bb.a
  %i.n = load float, ptr %i.m, align 8, !tbaa !408
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store float %i.n, ptr %i.o, align 8, !tbaa !408
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9624 ; 2 uses
  %i.r = load <2 x i32>, ptr %i.q, align 8, !tbaa !208
  %i.s = load <2 x i32>, ptr %i.p, align 8, !tbaa !208
  store <2 x i32> %i.s, ptr %i.q, align 8, !tbaa !208
  store <2 x i32> %i.r, ptr %i.p, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 9632 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !409
  store ptr %i.w, ptr %i.t, align 8, !tbaa !409
  store ptr %i.u, ptr %i.v, align 8, !tbaa !409
  %i.x = load <2 x i32>, ptr %i.b, align 8, !tbaa !208
  %i.y = load <2 x i32>, ptr %i.k, align 8, !tbaa !208
  store <2 x i32> %i.y, ptr %i.b, align 8, !tbaa !208
  store <2 x i32> %i.x, ptr %i.k, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9600 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !410
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !410
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !410
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !410
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23InputTextDeactivateHookEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 15 uses
  %i.b = icmp eq i32 %0, 0
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9436
  %i.d = load i32, ptr %i.c, align 4, !tbaa !392
  %.not = icmp eq i32 %i.d, %0
  br i1 %.not, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.f = load i32, ptr %i.e, align 4, !tbaa !218
  %.not18 = icmp eq i32 %i.f, %0
  br i1 %.not18, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9531 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !393, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.g, align 1, !tbaa !393
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 9568
  store i32 %0, ptr %i.j, align 8, !tbaa !364
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !455
  %i.m = add nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9572
  store i32 %i.m, ptr %i.n, align 4, !tbaa !753
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 9432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !389
  %i.q = and i32 %i.p, 512
  %.not19 = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9576 ; 4 uses
  br i1 %.not19, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9580 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !382
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %_ZN8ImVectorIcE6resizeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.v = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 9584 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !383  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.r, align 8, !tbaa !384
  %i.z = sext i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.x, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !383
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aa)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.v, ptr %i.w, align 8, !tbaa !383
  store i32 0, ptr %i.s, align 4, !tbaa !382
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %bb.f, %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !384
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 9440 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !377 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 9580 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !382 ; 4 uses
  %.not22 = icmp slt i32 %i.ac, %i.af
  br i1 %.not22, label %._ZN8ImVectorIcE6resizeEi.exit21_crit_edge, label %bb.k

._ZN8ImVectorIcE6resizeEi.exit21_crit_edge:       ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 9584
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !435
  br label %_ZN8ImVectorIcE6resizeEi.exit21

bb.k:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = sdiv i32 %i.af, 2
  %i.ah = add nsw i32 %i.ag, %i.af
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i:        ; preds = %bb.l, %bb.k
  %i.ai = phi i32 [ %i.ah, %bb.l ], [ 8, %bb.k ]
  %i.aj = tail call noundef i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ad) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ak) ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9584 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !383 ; 2 uses
  %.not6.i.i20 = icmp eq ptr %i.an, null
  br i1 %.not6.i.i20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  %i.ao = load i32, ptr %i.r, align 8, !tbaa !384
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.an, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !383
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aq)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !383
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !382
  %.pre23 = load i32, ptr %i.ab, align 8, !tbaa !377
  %.pre24 = add nsw i32 %.pre23, 1
  br label %_ZN8ImVectorIcE6resizeEi.exit21

_ZN8ImVectorIcE6resizeEi.exit21:                  ; preds = %._ZN8ImVectorIcE6resizeEi.exit21_crit_edge, %bb.n
  %.pre-phi = phi i32 [ %i.ad, %._ZN8ImVectorIcE6resizeEi.exit21_crit_edge ], [ %.pre24, %bb.n ]
  %i.ar = phi ptr [ %.pre, %._ZN8ImVectorIcE6resizeEi.exit21_crit_edge ], [ %i.al, %bb.n ]
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !384
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 9464
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !376
  %i.au = sext i32 %.pre-phi to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.at, i64 %i.au, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %_ZN8ImVectorIcE6resizeEi.exit, %_ZN8ImVectorIcE6resizeEi.exit21, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui8EndChildEv() local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #27 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = tail call noundef i32 @llvm.smin.i32(i32 %2, i32 %4) ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !351
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !351
  %.not = icmp eq i8 %i.e, %i.g
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit.split.loop.exit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.046.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.split.loop.exit ], [ %i.b, %bb.b ] ; 11 uses
  %i.i = icmp eq i32 %.046.lcssa, %2
  %i.j = icmp eq i32 %.046.lcssa, %4
  %or.cond51 = and i1 %i.i, %i.j
  br i1 %or.cond51, label %.loopexit, label %.preheader52.preheader

.preheader52.preheader:                           ; preds = %._crit_edge
  %i.k = sext i32 %2 to i64
  %i.l = sext i32 %.046.lcssa to i64
  %i.m = sub i32 %2, %.046.lcssa                  ; 2 uses
  %.04475 = add nsw i32 %4, -1                    ; 2 uses
  %indvars.iv.next6281 = add nsw i64 %i.k, -1     ; 2 uses
  %i.n = icmp sgt i32 %2, %.046.lcssa
  %i.o = icmp sgt i32 %4, %.046.lcssa
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %.lr.ph85, label %.preheader52._crit_edge

.preheader52:                                     ; preds = %.lr.ph85
  %indvars.iv.next72 = add i32 %indvars.iv7182, -1 ; 2 uses
  %.044 = add nsw i32 %.04478, -1                 ; 2 uses
  %indvars.iv.next62 = add nsw i64 %indvars.iv.next6284, -1 ; 2 uses
  %i.q = icmp sgt i64 %indvars.iv.next6284, %i.l
  %i.r = icmp sgt i32 %.04478, %.046.lcssa
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %.lr.ph85, label %.preheader52._crit_edge, !llvm.loop !8

.lr.ph85:                                         ; preds = %.preheader52.preheader, %.preheader52
  %indvars.iv.next6284 = phi i64 [ %indvars.iv.next62, %.preheader52 ], [ %indvars.iv.next6281, %.preheader52.preheader ] ; 4 uses
  %.04478 = phi i32 [ %.044, %.preheader52 ], [ %.04475, %.preheader52.preheader ] ; 4 uses
  %indvars.iv7182 = phi i32 [ %indvars.iv.next72, %.preheader52 ], [ %i.m, %.preheader52.preheader ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next6284
  %i.u = load i8, ptr %i.t, align 1, !tbaa !351
  %5 = sext i32 %.04478 to i64
  %i.v = getelementptr inbounds i8, ptr %3, i64 %5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !351
  %.not48 = icmp eq i8 %i.u, %i.w
  br i1 %.not48, label %.preheader52, label %._crit_edge86, !llvm.loop !8

._crit_edge86:                                    ; preds = %.lr.ph85
  br label %.preheader52._crit_edge, !llvm.loop !8

.preheader52._crit_edge:                          ; preds = %.preheader52, %._crit_edge86, %.preheader52.preheader
  %indvars.iv71.lcssa = phi i32 [ %indvars.iv7182, %._crit_edge86 ], [ %i.m, %.preheader52.preheader ], [ %indvars.iv.next72, %.preheader52 ] ; 3 uses
  %.044.lcssa = phi i32 [ %.04478, %._crit_edge86 ], [ %.04475, %.preheader52.preheader ], [ %.044, %.preheader52 ]
  %indvars.iv.next62.lcssa = phi i64 [ %indvars.iv.next6284, %._crit_edge86 ], [ %indvars.iv.next6281, %.preheader52.preheader ], [ %indvars.iv.next62, %.preheader52 ]
  %i.x = trunc nsw i64 %indvars.iv.next62.lcssa to i32
  %i.y = sub nsw i32 %.044.lcssa, %.046.lcssa     ; 2 uses
  %i.z = sub nsw i32 %i.x, %.046.lcssa            ; 3 uses
  %i.aa = icmp sgt i32 %i.y, -1
  %i.ab = icmp sgt i32 %i.z, -1
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader52._crit_edge
  %i.ac = add nsw i32 %i.z, 1
  %i.ad = add nsw i32 %i.y, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !378
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.ag, i32 noundef %.046.lcssa, i32 noundef %i.ac, i32 noundef %i.ad) ; 9 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %.not49 = icmp eq ptr %i.ah, null
  %.not5056 = icmp slt i32 %i.z, 0
  %or.cond59 = select i1 %.not49, i1 true, i1 %.not5056
  br i1 %or.cond59, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.aj = zext i32 %.046.lcssa to i64             ; 2 uses
  %wide.trip.count73 = zext i32 %indvars.iv71.lcssa to i64 ; 8 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 7 uses
  %min.iters.check = icmp ult i32 %indvars.iv71.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ak = add i64 %i.a, %i.aj
  %i.al = sub i64 %i.ak, %i.ai
  %diff.check = icmp ugt i64 %i.al, -32
  br i1 %diff.check, label %.lr.ph58.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check92 = icmp ult i32 %indvars.iv71.lcssa, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %wide.trip.count73, 28
  %n.vec = and i64 %wide.trip.count73, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !351
  %wide.load93 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !351
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !351
  store <16 x i8> %wide.load93, ptr %i.aq, align 1, !tbaa !351
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph58.preheader, label %vec.epilog.ph, !prof !381

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec94 = and i64 %wide.trip.count73, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index95
  %wide.load96 = load <4 x i8>, ptr %i.as, align 1, !tbaa !351
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index95
  store <4 x i8> %wide.load96, ptr %i.at, align 1, !tbaa !351
  %index.next97 = add nuw i64 %index95, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next97, %n.vec94
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !755

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %n.vec94, %wide.trip.count73
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv68.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec94, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count73, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader, %.lr.ph58.prol
  %indvars.iv68.prol = phi i64 [ %indvars.iv.next69.prol, %.lr.ph58.prol ], [ %indvars.iv68.ph, %.lr.ph58.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph58.prol ], [ 0, %.lr.ph58.preheader ]
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv68.prol
  %i.av = load i8, ptr %gep.prol, align 1, !tbaa !351
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv68.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !351
  %indvars.iv.next69.prol = add nuw nsw i64 %indvars.iv68.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol, !llvm.loop !756

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv68.unr = phi i64 [ %indvars.iv68.ph, %.lr.ph58.preheader ], [ %indvars.iv.next69.prol, %.lr.ph58.prol ]
  %i.ax = sub nsw i64 %indvars.iv68.ph, %wide.trip.count73
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv68 = phi i64 [ %indvars.iv.next69.3, %.lr.ph58 ], [ %indvars.iv68.unr, %.lr.ph58.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv68
  %i.az = load i8, ptr %gep, align 1, !tbaa !351
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv68
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !351
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next69
  %i.bb = load i8, ptr %gep.1, align 1, !tbaa !351
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next69
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !351
  %indvars.iv.next69.1 = add nuw nsw i64 %indvars.iv68, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next69.1
  %i.bd = load i8, ptr %gep.2, align 1, !tbaa !351
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next69.1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !351
  %indvars.iv.next69.2 = add nuw nsw i64 %indvars.iv68, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next69.2
  %i.bf = load i8, ptr %gep.3, align 1, !tbaa !351
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next69.2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !351
  %indvars.iv.next69.3 = add nuw nsw i64 %indvars.iv68, 4 ; 2 uses
  %exitcond74.not.3 = icmp eq i64 %indvars.iv.next69.3, %wide.trip.count73
  br i1 %exitcond74.not.3, label %.loopexit, label %.lr.ph58, !llvm.loop !757

.loopexit:                                        ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %middle.block, %vec.epilog.middle.block, %.preheader52._crit_edge, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui28SetNavCursorVisibleAfterMoveEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImStbL18stb_textedit_clickEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((0, 12), (22, 23)) %1, float noundef %2, float noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.d = load i8, ptr %i.c, align 1, !tbaa !390
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !400  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store ptr null, ptr %i.a, align 8, !tbaa !198
  %i.g = load ptr, ptr %0, align 8, !tbaa !450    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !377
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4552
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !401
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4568
  %i.o = load float, ptr %i.n, align 8, !tbaa !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 9520
  %i.q = load float, ptr %i.p, align 8, !tbaa !414
  %i.r = call <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef %i.m, float noundef %i.o, float noundef f0x7F7FFFFF, float noundef %i.q, ptr noundef %i.f, ptr noundef %i.k, ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ 0.000000e+00, %bb.b ], [ %3, %bb.a ]
  %i.s = call fastcc noundef i32 @_ZN5ImStbL21stb_text_locate_coordEP19ImGuiInputTextStateffPi(ptr noundef %0, float noundef %2, float noundef %.0, ptr noundef %i.b) ; 3 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !388
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !394
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.s, ptr %i.u, align 4, !tbaa !395
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.v, align 2, !tbaa !396
  %i.w = load i32, ptr %i.b, align 4, !tbaa !208
  %.not12 = icmp ne i32 %i.w, 0
  %i.x = zext i1 %.not12 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 118
  store i8 %i.x, ptr %i.y, align 2, !tbaa !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_MACEP19ImGuiInputTextStatei(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !377  ; 6 uses
  %.not.i = icmp slt i32 %1, %i.f
  br i1 %.not.i, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread
end_hunk_1
