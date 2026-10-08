Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
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
  %23 = and i1 %i.gr, %i.gs
  br i1 %23, label %.lr.ph1860, label %.preheader52.i._crit_edge, !llvm.loop !8

.lr.ph1860:                                       ; preds = %.preheader52.preheader.i, %.preheader52.i
  %indvars.iv.next62.i1859 = phi i64 [ %indvars.iv.next62.i, %.preheader52.i ], [ %indvars.iv.next62.i1856, %.preheader52.preheader.i ] ; 4 uses
  %indvars.iv.next64.i1858 = phi i64 [ %indvars.iv.next64.i, %.preheader52.i ], [ %indvars.iv.next64.i1855, %.preheader52.preheader.i ] ; 4 uses
  %indvars.iv71.i1857 = phi i32 [ %indvars.iv.next72.i, %.preheader52.i ], [ %i.gn, %.preheader52.preheader.i ] ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.fx, i64 %indvars.iv.next62.i1859
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !351
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next64.i1858
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !351
  %.not48.i = icmp eq i8 %i.gu, %i.gw
  br i1 %.not48.i, label %.preheader52.i, label %._crit_edge1861, !llvm.loop !8

._crit_edge1861:                                  ; preds = %.lr.ph1860
  br label %.preheader52.i._crit_edge, !llvm.loop !8

.preheader52.i._crit_edge:                        ; preds = %.preheader52.i, %._crit_edge1861, %.preheader52.preheader.i
  %indvars.iv71.i.lcssa = phi i32 [ %indvars.iv71.i1857, %._crit_edge1861 ], [ %i.gn, %.preheader52.preheader.i ], [ %indvars.iv.next72.i, %.preheader52.i ] ; 3 uses
  %indvars.iv.next64.i.lcssa = phi i64 [ %indvars.iv.next64.i1858, %._crit_edge1861 ], [ %indvars.iv.next64.i1855, %.preheader52.preheader.i ], [ %indvars.iv.next64.i, %.preheader52.i ]
  %indvars.iv.next62.i.lcssa = phi i64 [ %indvars.iv.next62.i1859, %._crit_edge1861 ], [ %indvars.iv.next62.i1856, %.preheader52.preheader.i ], [ %indvars.iv.next62.i, %.preheader52.i ]
  %i.gx = trunc nsw i64 %indvars.iv.next62.i.lcssa to i32
  %i.gy = trunc nsw i64 %indvars.iv.next64.i.lcssa to i32
  %i.gz = sub nsw i32 %i.gy, %.046.lcssa.i        ; 2 uses
  %i.ha = sub nsw i32 %i.gx, %.046.lcssa.i        ; 3 uses
  %i.hb = icmp sgt i32 %i.gz, -1
  %i.hc = icmp sgt i32 %i.ha, -1
  %or.cond.i = select i1 %i.hb, i1 true, i1 %i.hc
  br i1 %or.cond.i, label %bb.ar, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit

bb.ar:                                            ; preds = %.preheader52.i._crit_edge
  %i.hd = add nsw i32 %i.ha, 1
  %i.he = add nsw i32 %i.gz, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !378
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.hh, i32 noundef %.046.lcssa.i, i32 noundef %i.hd, i32 noundef %i.he) ; 9 uses
  %i.hj = ptrtoaddr ptr %i.hi to i64
  %.not49.i = icmp eq ptr %i.hi, null
  %.not5056.i = icmp slt i32 %i.ha, 0
  %or.cond59.i = select i1 %.not49.i, i1 true, i1 %.not5056.i
  br i1 %or.cond59.i, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %iter.check

iter.check:                                       ; preds = %bb.ar
  %i.hk = zext i32 %.046.lcssa.i to i64           ; 2 uses
  %wide.trip.count73.i = zext i32 %indvars.iv71.i.lcssa to i64 ; 8 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hk ; 7 uses
  %min.iters.check = icmp ult i32 %indvars.iv71.i.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph58.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hl = add i64 %i.fy, %i.hk
  %i.hm = sub i64 %i.hl, %i.hj
  %diff.check = icmp ugt i64 %i.hm, -32
  br i1 %diff.check, label %.lr.ph58.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1867 = icmp ult i32 %indvars.iv71.i.lcssa, 32
  br i1 %min.iters.check1867, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hn = and i64 %wide.trip.count73.i, 28
  %n.vec = and i64 %wide.trip.count73.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %wide.load = load <16 x i8>, ptr %i.ho, align 1, !tbaa !351
  %wide.load1868 = load <16 x i8>, ptr %i.hp, align 1, !tbaa !351
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <16 x i8> %wide.load, ptr %i.hq, align 1, !tbaa !351
  store <16 x i8> %wide.load1868, ptr %i.hr, align 1, !tbaa !351
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br i1 %cmp.n, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph58.i.preheader, label %vec.epilog.ph, !prof !381

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1869 = and i64 %wide.trip.count73.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1870 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1872, %vec.epilog.vector.body ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index1870
  %wide.load1871 = load <4 x i8>, ptr %i.ht, align 1, !tbaa !351
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 %index1870
  store <4 x i8> %wide.load1871, ptr %i.hu, align 1, !tbaa !351
  %index.next1872 = add nuw i64 %index1870, 4     ; 2 uses
  %i.hv = icmp eq i64 %index.next1872, %n.vec1869
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !680

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
  %i.hw = load i8, ptr %gep.i.prol, align 1, !tbaa !351
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv68.i.prol
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !351
  %indvars.iv.next69.i.prol = add nuw nsw i64 %indvars.iv68.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph58.i.prol.loopexit, label %.lr.ph58.i.prol, !llvm.loop !681

.lr.ph58.i.prol.loopexit:                         ; preds = %.lr.ph58.i.prol, %.lr.ph58.i.preheader
  %indvars.iv68.i.unr = phi i64 [ %indvars.iv68.i.ph, %.lr.ph58.i.preheader ], [ %indvars.iv.next69.i.prol, %.lr.ph58.i.prol ]
  %i.hy = sub nsw i64 %indvars.iv68.i.ph, %wide.trip.count73.i
  %i.hz = icmp ugt i64 %i.hy, -4
  br i1 %i.hz, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i.3, %.lr.ph58.i ], [ %indvars.iv68.i.unr, %.lr.ph58.i.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv68.i
  %i.ia = load i8, ptr %gep.i, align 1, !tbaa !351
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv68.i
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !351
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next69.i
  %i.ic = load i8, ptr %gep.i.1, align 1, !tbaa !351
  %i.id = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv.next69.i
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !351
  %indvars.iv.next69.i.1 = add nuw nsw i64 %indvars.iv68.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next69.i.1
  %i.ie = load i8, ptr %gep.i.2, align 1, !tbaa !351
  %i.if = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv.next69.i.1
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !351
  %indvars.iv.next69.i.2 = add nuw nsw i64 %indvars.iv68.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next69.i.2
  %i.ig = load i8, ptr %gep.i.3, align 1, !tbaa !351
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv.next69.i.2
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !351
  %indvars.iv.next69.i.3 = add nuw nsw i64 %indvars.iv68.i, 4 ; 2 uses
  %exitcond74.not.i.3 = icmp eq i64 %indvars.iv.next69.i.3, %wide.trip.count73.i
  br i1 %exitcond74.not.i.3, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit, label %.lr.ph58.i, !llvm.loop !682

_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit: ; preds = %.lr.ph58.i.prol.loopexit, %.lr.ph58.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i, %.preheader52.i._crit_edge, %bb.ar
  %i.ii = add nsw i32 %3, 1                       ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dg, i64 44 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !382 ; 4 uses
  %.not1634 = icmp slt i32 %3, %i.ik
  br i1 %.not1634, label %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge, label %bb.as

_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge: ; preds = %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit
  %.pre1683 = load ptr, ptr %i.fw, align 8, !tbaa !376
  br label %_ZN8ImVectorIcE6resizeEi.exit

bb.as:                                            ; preds = %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit
  %.not.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.il = sdiv i32 %i.ik, 2
  %i.im = add nsw i32 %i.il, %i.ik
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i:        ; preds = %bb.at, %bb.as
  %i.in = phi i32 [ %i.im, %bb.at ], [ 8, %bb.as ]
  %i.io = call noundef i32 @llvm.smax.i32(i32 %i.in, i32 %i.ii) ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ip) ; 3 uses
  %i.ir = load ptr, ptr %i.fw, align 8, !tbaa !383 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ir, null
  br i1 %.not6.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  %i.is = load i32, ptr %i.fv, align 8, !tbaa !384
  %i.it = sext i32 %i.is to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iq, ptr nonnull align 1 %i.ir, i64 %i.it, i1 false)
  %i.iu = load ptr, ptr %i.fw, align 8, !tbaa !383
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.iu)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  store ptr %i.iq, ptr %i.fw, align 8, !tbaa !383
  store i32 %i.io, ptr %i.ij, align 4, !tbaa !382
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge, %bb.av
  %i.iv = phi ptr [ %.pre1683, %_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i.exit._ZN8ImVectorIcE6resizeEi.exit_crit_edge ], [ %i.iq, %bb.av ]
  store i32 %i.ii, ptr %i.fv, align 8, !tbaa !384
  store i32 %i.fu, ptr %i.fz, align 8, !tbaa !377
  %i.iw = shl i64 %i.ft, 32
  %sext1302 = add i64 %i.iw, 4294967296
  %i.ix = ashr exact i64 %sext1302, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iv, ptr nonnull align 1 %2, i64 %i.ix, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !378 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dg, i64 124
end_hunk_0
begin_hunk_1_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  store i32 %.01207, ptr %i.bdr, align 4, !tbaa !437
  br label %bb.of

bb.od:                                            ; preds = %_ZL23InputTextLineIndexBuildiP14ImGuiTextIndexPKcS2_fiPS2_.exit
  %i.bds = zext i1 %.01232.in15841591 to i32
  %i.bdt = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bds, float noundef 1.000000e+00) ; 3 uses
  %i.bdu = trunc nuw i8 %.112411796 to i1         ; 3 uses
  %or.cond175 = select i1 %i.bbr, i1 true, i1 %i.bdu
  br i1 %or.cond175, label %bb.oe, label %.loopexit

bb.oe:                                            ; preds = %bb.od
  %i.bdv = getelementptr inbounds nuw i8, ptr %.012601537, i64 100
  store i32 %.01207, ptr %i.bdv, align 4, !tbaa !437
  br i1 %i.bbr, label %bb.of, label %bb.os

bb.of:                                            ; preds = %.thread1609, %bb.oe
  %.sroa.01483.016051611 = phi <2 x float> [ %.sroa.0.4.vec.insert.i1440, %.thread1609 ], [ zeroinitializer, %bb.oe ] ; 4 uses
  %i.bdw = phi i32 [ %i.bdp, %.thread1609 ], [ %i.bdt, %bb.oe ] ; 2 uses
  %i.bdx = phi i1 [ %i.bdq, %.thread1609 ], [ %i.bdu, %bb.oe ] ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.012601537, i64 112 ; 2 uses
  %i.bdz = load i8, ptr %i.bdy, align 8, !tbaa !419, !range !184, !noundef !185
  %i.bea = trunc nuw i8 %i.bdz to i1
  br i1 %i.bea, label %bb.og, label %bb.os

bb.og:                                            ; preds = %bb.of
  %i.beb = and i32 %5, 32768
  %.not1339 = icmp eq i32 %i.beb, 0
  br i1 %.not1339, label %bb.oh, label %bb.ol

bb.oh:                                            ; preds = %bb.og
  %i.bec = fmul float %.sroa.0780.2, 2.500000e-01 ; 2 uses
  %.sroa.01483.0.vec.extract = extractelement <2 x float> %.sroa.01483.016051611, i64 0 ; 3 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %.012601537, i64 92 ; 3 uses
  %i.bee = load float, ptr %i.bed, align 4, !tbaa !701 ; 2 uses
  %i.bef = fcmp olt float %.sroa.01483.0.vec.extract, %i.bee
  br i1 %i.bef, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.beg = fsub float %.sroa.01483.0.vec.extract, %i.bec ; 2 uses
  %i.beh = fcmp ole float %i.beg, 0.000000e+00
  %i.bei = select i1 %i.beh, float 0.000000e+00, float %i.beg
  %i.bej = fptosi float %i.bei to i32
  %i.bek = sitofp i32 %i.bej to float
  store float %i.bek, ptr %i.bed, align 4, !tbaa !701
  br label %bb.om

bb.oj:                                            ; preds = %bb.oh
  %i.bel = load float, ptr %i.aa, align 4, !tbaa !206
  %i.bem = fsub float %.sroa.0780.2, %i.bel
  %i.ben = fsub float %.sroa.01483.0.vec.extract, %i.bem ; 2 uses
  %i.beo = fcmp ult float %i.ben, %i.bee
  br i1 %i.beo, label %bb.om, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bep = fadd float %i.bec, %i.ben
  %i.beq = fptosi float %i.bep to i32
  %i.ber = sitofp i32 %i.beq to float
  store float %i.ber, ptr %i.bed, align 4, !tbaa !701
  br label %bb.om

bb.ol:                                            ; preds = %bb.og
  %i.bes = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  store float 0.000000e+00, ptr %i.bes, align 4, !tbaa !701
  br label %bb.om

bb.om:                                            ; preds = %bb.oi, %bb.ok, %bb.oj, %bb.ol
  br i1 %i.r, label %bb.on, label %bb.or

bb.on:                                            ; preds = %bb.om
  %.sroa.01483.4.vec.extract = extractelement <2 x float> %.sroa.01483.016051611, i64 1 ; 3 uses
  %i.bet = load float, ptr %i.bbo, align 8, !tbaa !205
  %i.beu = fsub float %.sroa.01483.4.vec.extract, %i.bet ; 3 uses
  %i.bev = fcmp olt float %i.beu, %.112501790
  br i1 %i.bev, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on
  %i.bew = fcmp ole float %i.beu, 0.000000e+00
  %i.bex = select i1 %i.bew, float 0.000000e+00, float %i.beu
  br label %bb.or

bb.op:                                            ; preds = %bb.on
  %i.bey = load float, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.bez = fneg float %i.bey
  %i.bfa = call float @llvm.fmuladd.f32(float %i.bez, float 2.000000e+00, float %.sroa.01509.4.vec.extract1517)
  %i.bfb = fsub float %.sroa.01483.4.vec.extract, %i.bfa
  %i.bfc = fcmp ult float %i.bfb, %.112501790
  br i1 %i.bfc, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bfd = fsub float %.sroa.01483.4.vec.extract, %.sroa.01509.4.vec.extract1517
  %i.bfe = call float @llvm.fmuladd.f32(float %i.bey, float 2.000000e+00, float %i.bfd)
  br label %bb.or

bb.or:                                            ; preds = %bb.oo, %bb.oq, %bb.op, %bb.om
  %.01203 = phi float [ %i.bex, %bb.oo ], [ %i.bfe, %bb.oq ], [ %.112501790, %bb.op ], [ %.112501790, %bb.om ]
  store i8 0, ptr %i.bdy, align 8, !tbaa !419
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.of, %bb.oe
  %i.bff = phi i32 [ %i.bdw, %bb.or ], [ %i.bdw, %bb.of ], [ %i.bdt, %bb.oe ] ; 3 uses
  %i.bfg = phi i1 [ %i.bdx, %bb.or ], [ %i.bdx, %bb.of ], [ %i.bdu, %bb.oe ]
  %.sroa.01483.01606 = phi <2 x float> [ %.sroa.01483.016051611, %bb.or ], [ %.sroa.01483.016051611, %bb.of ], [ zeroinitializer, %bb.oe ] ; 4 uses
  %.11204 = phi float [ %.01203, %bb.or ], [ %.112501790, %bb.of ], [ %.112501790, %bb.oe ] ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %.012601537, i64 113 ; 2 uses
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !710, !range !184, !noundef !185
  %i.bfj = trunc nuw i8 %i.bfi to i1
  br i1 %i.bfj, label %bb.ot, label %bb.ow

bb.ot:                                            ; preds = %bb.os
  br i1 %i.r, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %.sroa.01483.4.vec.extract1488 = extractelement <2 x float> %.sroa.01483.01606, i64 1
  %i.bfk = load float, ptr %i.bbo, align 8, !tbaa !205
  %i.bfl = fsub float %.sroa.01483.4.vec.extract1488, %i.bfk
  %i.bfm = load float, ptr %i.ab, align 8, !tbaa !203
  %i.bfn = fneg float %i.bfm
  %i.bfo = call float @llvm.fmuladd.f32(float %.sroa.01509.4.vec.extract1517, float 5.000000e-01, float %i.bfn)
  %i.bfp = fsub float %i.bfl, %i.bfo
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %.21205 = phi float [ %i.bfp, %bb.ou ], [ %.11204, %bb.ot ]
  store i8 0, ptr %i.bfh, align 1, !tbaa !710
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.os
  %.31245 = phi i8 [ 0, %bb.ov ], [ %.212441793, %bb.os ] ; 4 uses
  %.31206 = phi float [ %.21205, %bb.ov ], [ %.11204, %bb.os ] ; 4 uses
  %i.bfq = fcmp une float %.31206, %.112501790
  br i1 %i.bfq, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.bfr = load float, ptr %i.ab, align 8, !tbaa !203
  %i.bfs = call float @llvm.fmuladd.f32(float %i.bfr, float 2.000000e+00, float %i.bbq)
  %i.bft = fsub float %i.bfs, %.sroa.01509.4.vec.extract1517 ; 2 uses
  %i.bfu = fcmp oge float %i.bft, 0.000000e+00
  %i.bfv = select i1 %i.bfu, float %i.bft, float 0.000000e+00 ; 2 uses
  %i.bfw = fcmp olt float %.31206, 0.000000e+00
  %i.bfx = fcmp ogt float %.31206, %i.bfv
  %i.bfy = select i1 %i.bfx, float %i.bfv, float %.31206
  %i.bfz = select i1 %i.bfw, float 0.000000e+00, float %i.bfy ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %.21264, i64 156 ; 2 uses
  %i.bgb = load float, ptr %i.bga, align 4, !tbaa !698
  %i.bgc = fsub float %i.bgb, %i.bfz
  %i.bgd = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.bge = load float, ptr %i.bgd, align 4, !tbaa !197
  %i.bgf = fadd float %i.bge, %i.bgc
  store float %i.bgf, ptr %i.bgd, align 4, !tbaa !197
  store float %i.bfz, ptr %i.bga, align 4, !tbaa !698
  %i.bgg = load float, ptr %i.bbo, align 8, !tbaa !205
  call void @_ZN5ImGui25CalcClipRectVisibleItemsYERK6ImRectRK6ImVec2fPiS6_(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(8) %18, float noundef %i.bgg, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %i.bgh = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bgi = call noundef i32 @llvm.smin.i32(i32 %i.bgh, i32 %.01207)
  store i32 %i.bgi, ptr %i.h, align 4, !tbaa !208
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %i.bgj = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  %i.bgk = load float, ptr %i.bgj, align 4, !tbaa !701 ; 4 uses
  br i1 %i.bfg, label %bb.oz, label %.loopexit

bb.oz:                                            ; preds = %bb.oy
  %i.bgl = trunc nuw i8 %.31245 to i1
  %i.bgm = select i1 %i.bgl, float 1.000000e+00, float 6.000000e-01
  %i.bgn = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 52, float noundef %i.bgm)
  %i.bgo = select i1 %i.r, float 0.000000e+00, float -1.000000e+00
  %i.bgp = select i1 %i.r, float 0.000000e+00, float 2.000000e+00
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.i, i64 4560
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !313
  %i.bgs = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.bgr, i16 noundef zeroext 32)
  %i.bgt = fmul float %i.bgs, 5.000000e-01
  %i.bgu = fptosi float %i.bgt to i32
  %i.bgv = sitofp i32 %i.bgu to float
  %i.bgw = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !378 ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 4
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !394 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgx, i64 8
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !395 ; 2 uses
  %i.bhc = call noundef i32 @llvm.smin.i32(i32 %i.bgz, i32 %i.bhb)
  %i.bhd = sext i32 %i.bhc to i64
  %i.bhe = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhd ; 3 uses
  %i.bhf = call noundef i32 @llvm.smax.i32(i32 %i.bgz, i32 %i.bhb)
  %i.bhg = sext i32 %i.bhf to i64
  %i.bhh = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhg ; 3 uses
  %i.bhi = load i32, ptr %i.g, align 4, !tbaa !208 ; 2 uses
  %i.bhj = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bhk = icmp slt i32 %i.bhi, %i.bhj
  br i1 %i.bhk, label %.lr.ph1663, label %.loopexit

.lr.ph1663:                                       ; preds = %bb.oz
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.i, i64 9552 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bhn = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bhp = sext i32 %i.bhi to i64
  br label %bb.pa

bb.pa:                                            ; preds = %.lr.ph1663, %bb.pi
  %indvars.iv1671 = phi i64 [ %i.bhp, %.lr.ph1663 ], [ %indvars.iv.next1672, %bb.pi ] ; 3 uses
  %i.bhq = load i32, ptr %i.aue, align 8, !tbaa !733 ; 2 uses
  %.not.i1442 = icmp eq i32 %i.bhq, 0
  br i1 %.not.i1442, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bhr = load ptr, ptr %i.bhl, align 8, !tbaa !730
  %i.bhs = getelementptr inbounds [4 x i8], ptr %i.bhr, i64 %indvars.iv1671
  %i.bht = load i32, ptr %i.bhs, align 4, !tbaa !208
  %i.bhu = sext i32 %i.bht to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit:    ; preds = %bb.pa, %bb.pb
  %i.bhv = phi i64 [ %i.bhu, %bb.pb ], [ 0, %bb.pa ]
  %i.bhw = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhv ; 3 uses
  %indvars.iv.next1672 = add nsw i64 %indvars.iv1671, 1 ; 4 uses
  %i.bhx = sext i32 %i.bhq to i64
  %i.bhy = icmp slt i64 %indvars.iv.next1672, %i.bhx
  br i1 %i.bhy, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bhz = load ptr, ptr %i.bhl, align 8, !tbaa !730
  %i.bia = getelementptr inbounds [4 x i8], ptr %i.bhz, i64 %indvars.iv.next1672
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !208
  %i.bic = add nsw i32 %i.bib, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

bb.pd:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bid = load i32, ptr %i.bbk, align 8, !tbaa !732
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

_ZN14ImGuiTextIndex12get_line_endEPKci.exit:      ; preds = %bb.pc, %bb.pd
  %i.bie = phi i32 [ %i.bic, %bb.pc ], [ %i.bid, %bb.pd ]
  %i.bif = sext i32 %i.bie to i64
  %i.big = getelementptr inbounds i8, ptr %.012081595, i64 %i.bif ; 4 uses
  %i.bih = icmp ult ptr %i.big, %.41679
  br i1 %i.bih, label %bb.pe, label %.thread1613

bb.pe:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bii = load i8, ptr %i.big, align 1, !tbaa !351
  %.fr = freeze i8 %i.bii
  %i.bij = icmp ne i8 %.fr, 10                    ; 2 uses
  %spec.select1619.idx = zext i1 %i.bij to i64
  %spec.select1619 = getelementptr inbounds nuw i8, ptr %i.big, i64 %spec.select1619.idx
  br label %.thread1613

.thread1613:                                      ; preds = %bb.pe, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bik = phi i1 [ false, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %i.bij, %bb.pe ]
  %i.bil = phi ptr [ %i.big, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %spec.select1619, %bb.pe ] ; 4 uses
  %i.bim = icmp ugt ptr %i.bhe, %i.bhw
  %i.bin = select i1 %i.bim, ptr %i.bhe, ptr %i.bhw ; 3 uses
  %i.bio = icmp ult ptr %i.bhh, %i.bil
  %i.bip = select i1 %i.bio, ptr %i.bhh, ptr %i.bil ; 2 uses
  %i.biq = icmp ult ptr %i.bin, %i.bip
  br i1 %i.biq, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %.thread1613
  %i.bir = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bin, ptr noundef nonnull %i.bip, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0217.0.vec.extract = extractelement <2 x float> %i.bir, i64 0
  %i.bis = fadd float %.sroa.0217.0.vec.extract, 0.000000e+00
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %.thread1613
  %.01199 = phi float [ %i.bis, %bb.pf ], [ 0.000000e+00, %.thread1613 ] ; 2 uses
  %.not1344 = icmp ugt ptr %i.bhe, %i.bil
  %i.bit = icmp ule ptr %i.bhh, %i.bil
  %or.cond178 = or i1 %i.bik, %i.bit
  %or.cond1393 = select i1 %.not1344, i1 true, i1 %or.cond178
  %i.biu = fadd float %.01199, %i.bgv
  %.11200 = select i1 %or.cond1393, float %.01199, float %i.biu ; 2 uses
  %i.biv = fcmp oeq float %.11200, 0.000000e+00
  br i1 %i.biv, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.biw = load float, ptr %18, align 8, !tbaa !194
  %i.bix = fsub float %i.biw, %i.bgk
  %i.biy = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bhw, ptr noundef %i.bin, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.biy, i64 0
  %i.biz = fadd float %i.bix, %.sroa.0216.0.vec.extract ; 2 uses
  %i.bja = load float, ptr %i.bhm, align 4, !tbaa !197
  %i.bjb = trunc nsw i64 %indvars.iv1671 to i32
  %i.bjc = sitofp i32 %i.bjb to float
  %i.bjd = load float, ptr %i.bbo, align 8, !tbaa !205 ; 2 uses
  %i.bje = call float @llvm.fmuladd.f32(float %i.bjc, float %i.bjd, float %i.bja) ; 2 uses
  %i.bjf = fadd float %.11200, %i.biz
  %i.bjg = fadd float %i.bgp, %i.bje
  %i.bjh = fadd float %i.bjd, %i.bjg
  %i.bji = fadd float %i.bgo, %i.bje
  %i.bjj = load <4 x float>, ptr %19, align 16, !tbaa !190 ; 3 uses
  %i.bjk = insertelement <4 x float> poison, float %i.biz, i64 0
  %i.bjl = insertelement <4 x float> %i.bjk, float %i.bji, i64 1
  %i.bjm = insertelement <4 x float> %i.bjl, float %i.bjf, i64 2
  %i.bjn = insertelement <4 x float> %i.bjm, float %i.bjh, i64 3 ; 3 uses
  %i.bjo = fcmp oge <4 x float> %i.bjn, %i.bjj
  %i.bjp = fcmp olt <4 x float> %i.bjn, %i.bjj
  %i.bjq = shufflevector <4 x i1> %i.bjo, <4 x i1> %i.bjp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bjr = select <4 x i1> %i.bjq, <4 x float> %i.bjn, <4 x float> %i.bjj ; 2 uses
  %i.bjs = shufflevector <4 x float> %i.bjr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bjs, ptr %20, align 8, !tbaa !190
  %i.bjt = shufflevector <4 x float> %i.bjr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.bjt, ptr %i.bhn, align 8, !tbaa !190
  %i.bju = load ptr, ptr %i.bho, align 8, !tbaa !202
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bju, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %i.bhn, i32 noundef %i.bgn, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph
  %i.bjv = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bjw = sext i32 %i.bjv to i64
  %i.bjx = icmp slt i64 %indvars.iv.next1672, %i.bjw
  br i1 %i.bjx, label %bb.pa, label %.loopexit, !llvm.loop !690

.loopexit:                                        ; preds = %bb.pi, %bb.oz, %bb.oy, %bb.od
  %i.bjy = phi i1 [ false, %bb.od ], [ false, %bb.oy ], [ true, %bb.oz ], [ true, %bb.pi ]
  %i.bjz = phi i32 [ %i.bdt, %bb.od ], [ %i.bff, %bb.oy ], [ %i.bff, %bb.oz ], [ %i.bff, %bb.pi ] ; 3 uses
  %.sroa.01483.01607 = phi <2 x float> [ zeroinitializer, %bb.od ], [ %.sroa.01483.01606, %bb.oy ], [ %.sroa.01483.01606, %bb.oz ], [ %.sroa.01483.01606, %bb.pi ] ; 2 uses
  %.sroa.01478.0 = phi float [ 0.000000e+00, %bb.od ], [ %i.bgk, %bb.oy ], [ %i.bgk, %bb.oz ], [ %i.bgk, %bb.pi ] ; 2 uses
  %.41246 = phi i8 [ 0, %bb.od ], [ %.31245, %bb.oy ], [ %.31245, %bb.oz ], [ %.31245, %bb.pi ] ; 2 uses
  %i.bka = load i32, ptr %i.ei, align 4, !tbaa !218
  %.not1340 = icmp eq i32 %i.bka, %i.s
  br i1 %.not1340, label %bb.pl, label %bb.pj

bb.pj:                                            ; preds = %.loopexit
  %i.bkb = and i32 %5, 131072
  %i.bkc = icmp eq i32 %i.bkb, 0
  %i.bkd = trunc nuw i8 %.41246 to i1
  %or.cond181 = select i1 %i.bkc, i1 true, i1 %i.bkd
  %or.cond184 = or i1 %i.bjy, %or.cond181
  br i1 %or.cond184, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bke = load float, ptr %18, align 8, !tbaa !194 ; 2 uses
  %i.bkf = load float, ptr %i.ao, align 8, !tbaa !238
  %i.bkg = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.012081595, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0215.0.vec.extract = extractelement <2 x float> %i.bkg, i64 0
  %i.bkh = fsub float %i.bkf, %.sroa.0215.0.vec.extract
  %i.bki = load float, ptr %i.aa, align 4, !tbaa !206
  %i.bkj = fsub float %i.bkh, %i.bki              ; 2 uses
  %i.bkk = fcmp olt float %i.bke, %i.bkj
  %i.bkl = select i1 %i.bkk, float %i.bke, float %i.bkj
  store float %i.bkl, ptr %18, align 8, !tbaa !194
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj, %.loopexit
  br i1 %i.r, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bkm = icmp sgt i64 %i.bbi, 2097151
  %.not1341 = icmp ult i32 %i.bjz, 16777216
  %or.cond1394 = or i1 %.not1341, %i.bkm
  br i1 %or.cond1394, label %bb.pt, label %bb.po

bb.pn:                                            ; preds = %bb.pl
  %.not1341.old = icmp ult i32 %i.bjz, 16777216
  br i1 %.not1341.old, label %bb.pt, label %bb.po

bb.po:                                            ; preds = %bb.pm, %bb.pn
  %i.bkn = load i32, ptr %i.g, align 4, !tbaa !208 ; 3 uses
  %i.bko = load i32, ptr %i.h, align 4, !tbaa !208 ; 3 uses
  %i.bkp = icmp slt i32 %i.bkn, %i.bko
  br i1 %i.bkp, label %bb.pp, label %bb.pt

bb.pp:                                            ; preds = %bb.po
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.i, i64 4552
  %i.bkr = load ptr, ptr %i.bkq, align 8, !tbaa !401
  %i.bks = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !202
  %i.bku = load float, ptr %i.bbo, align 8, !tbaa !205 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %i.bkv = sitofp i32 %i.bkn to float
  %i.bkw = load <2 x float>, ptr %18, align 8, !tbaa !190 ; 2 uses
  %i.bkx = extractelement <2 x float> %i.bkw, i64 0
  %i.bky = fsub float %i.bkx, %.sroa.01478.0
  %i.bkz = fmul float %i.bku, %i.bkv
  %i.bla = insertelement <2 x float> poison, float %i.bky, i64 0
  %i.blb = insertelement <2 x float> %i.bla, float %i.bkz, i64 1
  %i.blc = insertelement <2 x float> %i.bkw, float 0.000000e+00, i64 0
  %i.bld = fadd <2 x float> %i.blb, %i.blc
  store <2 x float> %i.bld, ptr %21, align 8
  %i.ble = load i32, ptr %i.aue, align 8, !tbaa !733 ; 2 uses
  %.not.i1455 = icmp eq i32 %i.ble, 0
  br i1 %.not.i1455, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.blf = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !730
  %i.blh = sext i32 %i.bkn to i64
  %i.bli = getelementptr inbounds [4 x i8], ptr %i.blg, i64 %i.blh
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !208
  %i.blk = sext i32 %i.blj to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456: ; preds = %bb.pp, %bb.pq
  %i.bll = phi i64 [ %i.blk, %bb.pq ], [ 0, %bb.pp ]
  %i.blm = getelementptr inbounds i8, ptr %.012081595, i64 %i.bll
  %i.bln = icmp slt i32 %i.bko, %i.ble
  br i1 %i.bln, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.blo = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !730
  %i.blq = sext i32 %i.bko to i64
  %i.blr = getelementptr inbounds [4 x i8], ptr %i.blp, i64 %i.blq
  %i.bls = load i32, ptr %i.blr, align 4, !tbaa !208
  %i.blt = add nsw i32 %i.bls, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

bb.ps:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.blu = load i32, ptr %i.bbk, align 8, !tbaa !732
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457:  ; preds = %bb.pr, %bb.ps
  %i.blv = phi i32 [ %i.blt, %bb.pr ], [ %i.blu, %bb.ps ]
  %i.blw = sext i32 %i.blv to i64
  %i.blx = getelementptr inbounds i8, ptr %.012081595, i64 %i.blw
  call void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi(ptr noundef nonnull align 8 dereferenceable(76) %i.bkr, ptr noundef %i.bkt, float noundef %i.bku, ptr noundef nonnull align 4 dereferenceable(8) %21, i32 noundef %i.bjz, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef %i.blm, ptr noundef %i.blx, float noundef %.01259, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.pt

bb.pt:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457, %bb.po, %bb.pn, %bb.pm
  %i.bly = trunc nuw i8 %.41246 to i1
  br i1 %i.bly, label %bb.pu, label %bb.qa
end_hunk_1
begin_hunk_2_@_ZN5ImGui15PopPasswordFontEv:bb.a
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
  %.046.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.split.loop.exit ], [ %i.b, %bb.b ] ; 10 uses
  %i.i = icmp eq i32 %.046.lcssa, %2
  %i.j = icmp eq i32 %.046.lcssa, %4
  %or.cond51 = and i1 %i.i, %i.j
  br i1 %or.cond51, label %.loopexit, label %.preheader52.preheader

.preheader52.preheader:                           ; preds = %._crit_edge
  %i.k = sext i32 %2 to i64
  %i.l = sext i32 %.046.lcssa to i64              ; 2 uses
  %i.m = sext i32 %4 to i64
  %i.n = sub i32 %2, %.046.lcssa                  ; 2 uses
  %indvars.iv.next6480 = add nsw i64 %i.m, -1     ; 2 uses
  %indvars.iv.next6281 = add nsw i64 %i.k, -1     ; 2 uses
  %i.o = icmp sgt i32 %2, %.046.lcssa
  %i.p = icmp sgt i32 %4, %.046.lcssa
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %.lr.ph85, label %.preheader52._crit_edge

.preheader52:                                     ; preds = %.lr.ph85
  %indvars.iv.next72 = add i32 %indvars.iv7182, -1 ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv.next6483, -1 ; 2 uses
  %indvars.iv.next62 = add nsw i64 %indvars.iv.next6284, -1 ; 2 uses
  %i.r = icmp sgt i64 %indvars.iv.next6284, %i.l
  %i.s = icmp sgt i64 %indvars.iv.next6483, %i.l
  %5 = and i1 %i.r, %i.s
  br i1 %5, label %.lr.ph85, label %.preheader52._crit_edge, !llvm.loop !8

.lr.ph85:                                         ; preds = %.preheader52.preheader, %.preheader52
  %indvars.iv.next6284 = phi i64 [ %indvars.iv.next62, %.preheader52 ], [ %indvars.iv.next6281, %.preheader52.preheader ] ; 4 uses
  %indvars.iv.next6483 = phi i64 [ %indvars.iv.next64, %.preheader52 ], [ %indvars.iv.next6480, %.preheader52.preheader ] ; 4 uses
  %indvars.iv7182 = phi i32 [ %indvars.iv.next72, %.preheader52 ], [ %i.n, %.preheader52.preheader ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next6284
  %i.u = load i8, ptr %i.t, align 1, !tbaa !351
  %i.v = getelementptr inbounds i8, ptr %3, i64 %indvars.iv.next6483
  %i.w = load i8, ptr %i.v, align 1, !tbaa !351
  %.not48 = icmp eq i8 %i.u, %i.w
  br i1 %.not48, label %.preheader52, label %._crit_edge86, !llvm.loop !8

._crit_edge86:                                    ; preds = %.lr.ph85
  br label %.preheader52._crit_edge, !llvm.loop !8

.preheader52._crit_edge:                          ; preds = %.preheader52, %._crit_edge86, %.preheader52.preheader
  %indvars.iv71.lcssa = phi i32 [ %indvars.iv7182, %._crit_edge86 ], [ %i.n, %.preheader52.preheader ], [ %indvars.iv.next72, %.preheader52 ] ; 3 uses
  %indvars.iv.next64.lcssa = phi i64 [ %indvars.iv.next6483, %._crit_edge86 ], [ %indvars.iv.next6480, %.preheader52.preheader ], [ %indvars.iv.next64, %.preheader52 ]
  %indvars.iv.next62.lcssa = phi i64 [ %indvars.iv.next6284, %._crit_edge86 ], [ %indvars.iv.next6281, %.preheader52.preheader ], [ %indvars.iv.next62, %.preheader52 ]
  %i.x = trunc nsw i64 %indvars.iv.next62.lcssa to i32
  %i.y = trunc nsw i64 %indvars.iv.next64.lcssa to i32
  %i.z = sub nsw i32 %i.y, %.046.lcssa            ; 2 uses
  %i.aa = sub nsw i32 %i.x, %.046.lcssa           ; 3 uses
  %i.ab = icmp sgt i32 %i.z, -1
  %i.ac = icmp sgt i32 %i.aa, -1
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader52._crit_edge
  %i.ad = add nsw i32 %i.aa, 1
  %i.ae = add nsw i32 %i.z, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !378
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.ah, i32 noundef %.046.lcssa, i32 noundef %i.ad, i32 noundef %i.ae) ; 9 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %.not49 = icmp eq ptr %i.ai, null
  %.not5056 = icmp slt i32 %i.aa, 0
  %or.cond59 = select i1 %.not49, i1 true, i1 %.not5056
  br i1 %or.cond59, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.ak = zext i32 %.046.lcssa to i64             ; 2 uses
  %wide.trip.count73 = zext i32 %indvars.iv71.lcssa to i64 ; 8 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 7 uses
  %min.iters.check = icmp ult i32 %indvars.iv71.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %i.a, %i.ak
  %i.am = sub i64 %i.al, %i.aj
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph58.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check92 = icmp ult i32 %indvars.iv71.lcssa, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %wide.trip.count73, 28
  %n.vec = and i64 %wide.trip.count73, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <16 x i8>, ptr %i.ao, align 1, !tbaa !351
  %wide.load93 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !351
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !351
  store <16 x i8> %wide.load93, ptr %i.ar, align 1, !tbaa !351
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph58.preheader, label %vec.epilog.ph, !prof !381

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec94 = and i64 %wide.trip.count73, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index95
  %wide.load96 = load <4 x i8>, ptr %i.at, align 1, !tbaa !351
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index95
  store <4 x i8> %wide.load96, ptr %i.au, align 1, !tbaa !351
  %index.next97 = add nuw i64 %index95, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next97, %n.vec94
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !755

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
  %i.aw = load i8, ptr %gep.prol, align 1, !tbaa !351
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv68.prol
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !351
  %indvars.iv.next69.prol = add nuw nsw i64 %indvars.iv68.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol, !llvm.loop !756

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv68.unr = phi i64 [ %indvars.iv68.ph, %.lr.ph58.preheader ], [ %indvars.iv.next69.prol, %.lr.ph58.prol ]
  %i.ay = sub nsw i64 %indvars.iv68.ph, %wide.trip.count73
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv68 = phi i64 [ %indvars.iv.next69.3, %.lr.ph58 ], [ %indvars.iv68.unr, %.lr.ph58.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv68
  %i.ba = load i8, ptr %gep, align 1, !tbaa !351
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv68
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !351
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next69
  %i.bc = load i8, ptr %gep.1, align 1, !tbaa !351
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next69
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !351
  %indvars.iv.next69.1 = add nuw nsw i64 %indvars.iv68, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next69.1
  %i.be = load i8, ptr %gep.2, align 1, !tbaa !351
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next69.1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !351
  %indvars.iv.next69.2 = add nuw nsw i64 %indvars.iv68, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next69.2
  %i.bg = load i8, ptr %gep.3, align 1, !tbaa !351
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next69.2
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !351
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
end_hunk_2
begin_hunk_3_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
  store float %i.rk, ptr %i.l, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ri, float noundef %i.rj, float noundef %i.rk, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516:       ; preds = %bb.df, %bb.de, %.critedge.i511, %bb.cz, %bb.dh, %bb.dg, %.thread598
  %i.rl = getelementptr inbounds nuw i8, ptr %i.w, i64 3220 ; 4 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !771 ; 4 uses
  %i.rn = fcmp olt float %i.rm, 0.000000e+00
  %i.ro = fcmp ogt float %i.rm, 1.000000e+00
  %i.rp = select i1 %i.ro, float 1.000000e+00, float %i.rm
  %i.rq = call float @llvm.fmuladd.f32(float %i.rp, float 2.550000e+02, float 5.000000e-01)
  %i.rr = select i1 %i.rn, float 5.000000e-01, float %i.rq
  %i.rs = fptosi float %i.rr to i32
  %i.rt = shl i32 %i.rs, 24                       ; 11 uses
  %i.ru = or disjoint i32 %i.rt, 16711680         ; 5 uses
  %i.rv = or disjoint i32 %i.rt, 16776960         ; 5 uses
  %i.rw = or disjoint i32 %i.rt, 16777215         ; 6 uses
  %i.rx = or disjoint i32 %i.rt, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #41
  %i.ry = or disjoint i32 %i.rt, 255              ; 7 uses
  store i32 %i.ry, ptr %i.v, align 16, !tbaa !208
  %i.rz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.sa = or disjoint i32 %i.rt, 65280            ; 5 uses
  %i.sb = or disjoint i32 %i.rt, 65535            ; 5 uses
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !208
  %i.sc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.sa, ptr %i.sc, align 8, !tbaa !208
  %i.sd = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.rv, ptr %i.sd, align 4, !tbaa !208
  %i.se = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.ru, ptr %i.se, align 16, !tbaa !208
  %i.sf = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.sg = or disjoint i32 %i.rt, 16711935         ; 5 uses
  store i32 %i.sg, ptr %i.sf, align 4, !tbaa !208
  %i.sh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ry, ptr %i.sh, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %i.si = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !190
  %i.sj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.sj, align 8, !tbaa !312
  %i.sk = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.rm, ptr %i.sk, align 4, !tbaa !254
  %i.sl = load float, ptr %i.j, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.sl, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.si, ptr noundef nonnull align 4 dereferenceable(4) %i.sj)
  %i.sm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.sn = load float, ptr %i.m, align 4, !tbaa !190
  %i.so = load float, ptr %i.n, align 4, !tbaa !190
  %i.sp = load float, ptr %i.o, align 4, !tbaa !190
  %i.sq = load float, ptr %i.rl, align 4, !tbaa !771
  store float %i.sn, ptr %30, align 4, !tbaa !310
  %i.sr = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.so, ptr %i.sr, align 4, !tbaa !311
  %i.ss = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.sp, ptr %i.ss, align 4, !tbaa !312
  %i.st = getelementptr inbounds nuw i8, ptr %30, i64 12
  store float %i.sq, ptr %i.st, align 4, !tbaa !254
  %i.su = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %30) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #41
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !190
  br i1 %.not453, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.sv = fdiv float 5.000000e-01, %i.cj          ; 2 uses
  %i.sw = fptosi float %i.cj to i32
  %i.sx = sdiv i32 %i.sw, 12
  %i.sy = call noundef i32 @llvm.smax.i32(i32 %i.sx, i32 4)
  %i.sz = fneg float %i.sv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.tb = fadd float %i.cj, %i.ck                 ; 2 uses
  %i.tc = fmul float %i.tb, 5.000000e-01
  %i.td = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.tf = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.th = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.ti = insertelement <2 x float> %i.th, float %i.sv, i64 1
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dk
  %i.tj = load float, ptr %i.j, align 4, !tbaa !190
  %i.tk = fmul float %i.tj, 2.000000e+00
  %i.tl = fmul float %i.tk, f0x40490FDB           ; 2 uses
  %i.tm = call float @cosf(float noundef %i.tl) #41
  %i.tn = call float @sinf(float noundef %i.tl) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #41
  %i.to = load <2 x float>, ptr %16, align 8, !tbaa !190
  %i.tp = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.ts = insertelement <2 x float> %i.tr, float %i.tn, i64 1 ; 2 uses
  %i.tt = fmul <2 x float> %i.tq, %i.ts
  %i.tu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tt, <2 x float> splat (float 5.000000e-01), <2 x float> %i.to)
  store <2 x float> %i.tu, ptr %32, align 8, !tbaa !190
  %.v = select i1 %i.nn, float 6.500000e-01, float 5.500000e-01
  %i.tv = fmul float %i.ci, %.v                   ; 4 uses
  %i.tw = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.tv) ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tv, i32 noundef %i.sm, i32 noundef %i.tw)
  %i.tx = fadd float %i.tv, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tx, i32 noundef %i.rx, i32 noundef %i.tw, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tv, i32 noundef %i.rw, i32 noundef %i.tw, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #41
  %i.ty = insertelement <2 x i1> poison, i1 %i.cz, i64 0
  %i.tz = shufflevector <2 x i1> %i.ty, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ua = select <2 x i1> %i.tz, <2 x float> %i.ts, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 5 uses
  %i.ub = load <2 x float>, ptr %17, align 8, !tbaa !190 ; 2 uses
  %i.uc = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ud = fneg <2 x float> %i.ua
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> %i.ua, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.uf = fmul <2 x float> %i.uc, %i.ue
  %i.ug = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ug, <2 x float> %i.ua, <2 x float> %i.uf)
  %i.ui = load <2 x float>, ptr %16, align 8, !tbaa !190 ; 3 uses
  %i.uj = fadd <2 x float> %i.ui, %i.uh           ; 2 uses
  store <2 x float> %i.uj, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #41
  %i.uk = load <2 x float>, ptr %18, align 8, !tbaa !190 ; 2 uses
  %i.ul = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.um = fmul <2 x float> %i.ul, %i.ue
  %i.un = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.un, <2 x float> %i.ua, <2 x float> %i.um)
  %i.up = fadd <2 x float> %i.ui, %i.uo           ; 2 uses
  store <2 x float> %i.up, ptr %34, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #41
  %i.uq = load <2 x float>, ptr %19, align 8, !tbaa !190 ; 2 uses
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.us = fmul <2 x float> %i.ur, %i.ue
  %i.ut = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ut, <2 x float> %i.ua, <2 x float> %i.us)
  %i.uv = fadd <2 x float> %i.ui, %i.uu           ; 2 uses
  store <2 x float> %i.uv, ptr %35, align 8
  %i.uw = call <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() ; 3 uses
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i32 noundef 3, i32 noundef 3)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !772 ; 3 uses
  %i.uz = trunc i32 %i.uy to i16
  %i.va = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !773 ; 3 uses
  store i16 %i.uz, ptr %i.vb, align 2, !tbaa !219
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 2
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !774 ; 10 uses
  store <2 x float> %i.uj, ptr %i.ve, align 4, !tbaa !190
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store <2 x float> %i.uw, ptr %i.vf, align 4, !tbaa !190
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  store i32 %i.sm, ptr %i.vg, align 4, !tbaa !776
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 20
  store <2 x float> %i.up, ptr %i.vh, align 4, !tbaa !190
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 28
  store <2 x float> %i.uw, ptr %i.vi, align 4, !tbaa !190
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 36
  store i32 %i.rt, ptr %i.vj, align 4, !tbaa !776
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  %i.vl = trunc i32 %i.uy to i16
  %i.vm = insertelement <2 x i16> poison, i16 %i.vl, i64 0
  %i.vn = shufflevector <2 x i16> %i.vm, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.vo = add <2 x i16> %i.vn, <i16 1, i16 2>
  store <2 x i16> %i.vo, ptr %i.vc, align 2, !tbaa !219
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vb, i64 6
  store ptr %i.vp, ptr %i.va, align 8, !tbaa !773
  store <2 x float> %i.uv, ptr %i.vk, align 4, !tbaa !190
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  store <2 x float> %i.uw, ptr %i.vq, align 4, !tbaa !190
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ve, i64 56
  store i32 %i.rw, ptr %i.vr, align 4, !tbaa !776
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ve, i64 60
  store ptr %i.vs, ptr %i.vd, align 8, !tbaa !774
  %i.vt = add i32 %i.uy, 3
  store i32 %i.vt, ptr %i.ux, align 4, !tbaa !772
  call void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef %i.rx, float noundef 1.500000e+00)
  %i.vu = load float, ptr %i.k, align 4, !tbaa !190
  %i.vv = load float, ptr %i.l, align 4, !tbaa !190
  %i.vw = fsub float 1.000000e+00, %i.vv
  %i.vx = load <2 x float>, ptr %35, align 8, !tbaa !190 ; 2 uses
  %i.vy = load <2 x float>, ptr %33, align 8, !tbaa !190
  %i.vz = fsub <2 x float> %i.vy, %i.vx
  %i.wa = insertelement <2 x float> poison, float %i.vu, i64 0
  %i.wb = insertelement <2 x float> %i.wa, float %i.vw, i64 1 ; 3 uses
  %i.wc = fcmp olt <2 x float> %i.wb, zeroinitializer
  %i.wd = fcmp ogt <2 x float> %i.wb, splat (float 1.000000e+00)
  %i.we = select <2 x i1> %i.wd, <2 x float> splat (float 1.000000e+00), <2 x float> %i.wb
  %i.wf = select <2 x i1> %i.wc, <2 x float> zeroinitializer, <2 x float> %i.we ; 2 uses
  %i.wg = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vz, <2 x float> %i.wg, <2 x float> %i.vx) ; 2 uses
  %i.wi = load <2 x float>, ptr %34, align 8, !tbaa !190
  %i.wj = fsub <2 x float> %i.wi, %i.wh
  %i.wk = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wj, <2 x float> %i.wk, <2 x float> %i.wh)
  store <2 x float> %i.wl, ptr %31, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #41
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di, %bb.dk
  %i.wm = phi i32 [ %i.ry, %bb.di ], [ %i.xn, %bb.dk ]
  %indvars.iv = phi i64 [ 0, %bb.di ], [ %indvars.iv.next, %bb.dk ] ; 2 uses
  %i.wn = trunc nuw nsw i64 %indvars.iv to i32
  %i.wo = uitofp nneg i32 %i.wn to float
  %i.wp = insertelement <2 x float> poison, float %i.wo, i64 0
  %i.wq = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = fadd nnan <2 x float> %i.wq, <float -0.000000e+00, float 1.000000e+00>
  %i.ws = fdiv nnan <2 x float> %i.wr, splat (float 6.000000e+00)
  %i.wt = fmul nnan <2 x float> %i.ws, splat (float 2.000000e+00)
  %i.wu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> splat (float f0x40490FDB), <2 x float> %i.ti) ; 2 uses
  %i.wv = load i32, ptr %i.ta, align 8, !tbaa !777
  %i.ww = extractelement <2 x float> %i.wu, i64 0 ; 3 uses
  %i.wx = extractelement <2 x float> %i.wu, i64 1 ; 3 uses
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %i.tc, float noundef %i.ww, float noundef %i.wx, i32 noundef %i.sy)
  %i.wy = load ptr, ptr %i.te, align 8, !tbaa !467
  %i.wz = load i32, ptr %i.td, align 8, !tbaa !468
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef %i.wy, i32 noundef %i.wz, i32 noundef %i.rw, float noundef %i.ci, i32 noundef 0)
  store i32 0, ptr %i.td, align 8, !tbaa !468
  %i.xa = load i32, ptr %i.ta, align 8, !tbaa !777
  %i.xb = call float @cosf(float noundef %i.ww) #41
  %i.xc = call float @sinf(float noundef %i.ww) #41
  %i.xd = call float @cosf(float noundef %i.wx) #41
  %i.xe = call float @sinf(float noundef %i.wx) #41
  %i.xf = load <2 x float>, ptr %16, align 8, !tbaa !190 ; 2 uses
  %i.xg = insertelement <2 x float> poison, float %i.xb, i64 0
  %i.xh = insertelement <2 x float> %i.xg, float %i.xc, i64 1
  %i.xi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xh, <2 x float> %i.tg, <2 x float> %i.xf)
  %i.xj = insertelement <2 x float> poison, float %i.xd, i64 0
  %i.xk = insertelement <2 x float> %i.xj, float %i.xe, i64 1
  %i.xl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> %i.tg, <2 x float> %i.xf)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !208 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.wv, i32 noundef %i.xa, <2 x float> %i.xi, <2 x float> %i.xl, i32 noundef %i.wm, i32 noundef %i.xn)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.dj, label %bb.dk, !llvm.loop !770

bb.dl:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.xo = and i32 %.3, 33554432
  %.not467 = icmp eq i32 %i.xo, 0
  br i1 %.not467, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #41
  %i.xp = extractelement <2 x float> %i.cp, i64 1
  %i.xq = fadd float %i.cd, %i.xp
  %.sroa.0.0.vec.insert.i533 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0.4.vec.insert.i534 = insertelement <2 x float> %.sroa.0.0.vec.insert.i533, float %i.xq, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i534, ptr %36, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %36, i32 noundef %i.rw, i32 noundef %i.sm, i32 noundef %i.sm, i32 noundef %i.rw)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #41
  %i.xr = load <2 x float>, ptr %15, align 8, !tbaa !190
  %i.xs = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.xt = shufflevector <2 x float> %i.xs, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xu = fadd <2 x float> %i.xt, %i.xr
  store <2 x float> %i.xu, ptr %37, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 0, i32 noundef 0, i32 noundef %i.rt, i32 noundef %i.rt)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #41
  %.sroa.032.0.copyload = load <2 x float>, ptr %15, align 8 ; 2 uses
  %i.xv = fadd <2 x float> %i.xt, %.sroa.032.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.032.0.copyload, <2 x float> %i.xv, float noundef 0.000000e+00)
  %i.xw = load float, ptr %i.k, align 4, !tbaa !190
  %i.xx = load float, ptr %i.l, align 4, !tbaa !190
  %i.xy = fsub float 1.000000e+00, %i.xx
  %i.xz = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.ya = load <2 x float>, ptr %15, align 8, !tbaa !190 ; 3 uses
  %i.yb = insertelement <2 x float> poison, float %i.xw, i64 0
  %i.yc = insertelement <2 x float> %i.yb, float %i.xy, i64 1 ; 3 uses
  %i.yd = fcmp olt <2 x float> %i.yc, zeroinitializer
  %i.ye = fcmp ogt <2 x float> %i.yc, splat (float 1.000000e+00)
  %i.yf = select <2 x i1> %i.ye, <2 x float> splat (float 1.000000e+00), <2 x float> %i.yc
  %i.yg = select <2 x i1> %i.yd, <2 x float> zeroinitializer, <2 x float> %i.yf
  %i.yh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yg, <2 x float> %i.xt, <2 x float> %i.ya)
  %i.yi = fadd <2 x float> %i.yh, splat (float 5.000000e-01)
  %i.yj = fptosi <2 x float> %i.yi to <2 x i32>
  %i.yk = sitofp <2 x i32> %i.yj to <2 x float>   ; 3 uses
  %i.yl = fadd <2 x float> %i.ya, splat (float 2.000000e+00) ; 2 uses
  %i.ym = fadd <2 x float> %i.xt, %i.ya
  %i.yn = fadd <2 x float> %i.ym, splat (float -2.000000e+00) ; 2 uses
  %i.yo = fcmp ogt <2 x float> %i.yl, %i.yk
  %i.yp = fcmp olt <2 x float> %i.yn, %i.yk
  %i.yq = select <2 x i1> %i.yp, <2 x float> %i.yn, <2 x float> %i.yk
  %i.yr = select <2 x i1> %i.yo, <2 x float> %i.yl, <2 x float> %i.yq
  store <2 x float> %i.yr, ptr %31, align 8, !tbaa !190
  %i.ys = fdiv float %i.cd, 6.000000e+00          ; 12 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 6 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yv = call float @llvm.fmuladd.f32(float %i.ys, float 0.000000e+00, float %i.xz)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yv, ptr %i.yt, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yw = fadd float %i.ys, %i.xz
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.yw, ptr %i.yu, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ry, i32 noundef %i.ry, i32 noundef %i.sb, i32 noundef %i.sb)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yx = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yy = fadd float %i.ys, %i.yx
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yy, ptr %i.yt, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yz = call float @llvm.fmuladd.f32(float %i.ys, float 2.000000e+00, float %i.yx)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.yz, ptr %i.yu, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sb, i32 noundef %i.sb, i32 noundef %i.sa, i32 noundef %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.za = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zb = call float @llvm.fmuladd.f32(float %i.ys, float 2.000000e+00, float %i.za)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zb, ptr %i.yt, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zc = call float @llvm.fmuladd.f32(float %i.ys, float 3.000000e+00, float %i.za)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zc, ptr %i.yu, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sa, i32 noundef %i.sa, i32 noundef %i.rv, i32 noundef %i.rv)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zd = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.ze = call float @llvm.fmuladd.f32(float %i.ys, float 3.000000e+00, float %i.zd)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.ze, ptr %i.yt, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zf = call float @llvm.fmuladd.f32(float %i.ys, float 4.000000e+00, float %i.zd)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zf, ptr %i.yu, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rv, i32 noundef %i.rv, i32 noundef %i.ru, i32 noundef %i.ru)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zg = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zh = call float @llvm.fmuladd.f32(float %i.ys, float 4.000000e+00, float %i.zg)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zh, ptr %i.yt, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zi = call float @llvm.fmuladd.f32(float %i.ys, float 5.000000e+00, float %i.zg)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zi, ptr %i.yu, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ru, i32 noundef %i.ru, i32 noundef %i.sg, i32 noundef %i.sg)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zj = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zk = call float @llvm.fmuladd.f32(float %i.ys, float 5.000000e+00, float %i.zj)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zk, ptr %i.yt, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zl = call float @llvm.fmuladd.f32(float %i.ys, float 6.000000e+00, float %i.zj)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zl, ptr %i.yu, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sg, i32 noundef %i.sg, i32 noundef %i.ry, i32 noundef %i.ry)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  %i.zm = load float, ptr %i.cm, align 4, !tbaa !197 ; 3 uses
  %i.zn = load float, ptr %i.j, align 4, !tbaa !190
  %i.zo = call float @llvm.fmuladd.f32(float %i.zn, float %i.cd, float %i.zm)
  %i.zp = fadd float %i.zo, 5.000000e-01
  %i.zq = fptosi float %i.zp to i32
  %i.zr = sitofp i32 %i.zq to float
  %.sroa.0560.0.vec.insert = insertelement <2 x float> poison, float %i.cs, i64 0
  %.sroa.0560.4.vec.insert = insertelement <2 x float> %.sroa.0560.0.vec.insert, float %i.zm, i64 1
  %i.zs = fadd float %i.cd, %i.zm
  %.sroa.0558.0.vec.insert = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.0558.4.vec.insert = insertelement <2 x float> %.sroa.0558.0.vec.insert, float %i.zs, i64 1
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.0560.4.vec.insert, <2 x float> %.sroa.0558.4.vec.insert, float noundef 0.000000e+00)
  %i.zt = fadd float %i.cs, -1.000000e+00         ; 3 uses
  %.sroa.0556.0.vec.insert = insertelement <2 x float> poison, float %i.zt, i64 0
  %.sroa.0556.4.vec.insert = insertelement <2 x float> %.sroa.0556.0.vec.insert, float %i.zr, i64 1 ; 4 uses
  %i.zu = fadd float %i.cg, 1.000000e+00          ; 5 uses
  %.sroa.0554.0.vec.insert = insertelement <2 x float> poison, float %i.zu, i64 0
  %.sroa.0554.4.vec.insert = insertelement <2 x float> %.sroa.0554.0.vec.insert, float %i.cg, i64 1 ; 2 uses
  %i.zv = fadd float %i.bw, 2.000000e+00
  %i.zw = load float, ptr %i.rl, align 4, !tbaa !771 ; 3 uses
  %i.zx = fcmp olt float %i.zw, 0.000000e+00
  %i.zy = fcmp ogt float %i.zw, 1.000000e+00
  %i.zz = select i1 %i.zy, float 1.000000e+00, float %i.zw
  %i.aaa = call float @llvm.fmuladd.f32(float %i.zz, float 2.550000e+02, float 5.000000e-01)
  %i.aab = select i1 %i.zx, float 5.000000e-01, float %i.aaa
  %i.aac = fptosi float %i.aab to i32
  %i.aad = fadd float %i.zu, %i.zt                ; 2 uses
  %i.aae = fadd float %i.aad, 1.000000e+00
  %.sroa.048.4.vec.insert.i = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aae, i64 0
  %i.aaf = fadd float %i.zu, 2.000000e+00
  %.sroa.046.0.vec.insert.i = insertelement <2 x float> poison, float %i.aaf, i64 0
  %.sroa.046.4.vec.insert.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i, float %i.zu, i64 1 ; 2 uses
  %i.aag = shl i32 %i.aac, 24                     ; 3 uses
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.048.4.vec.insert.i, <2 x float> %.sroa.046.4.vec.insert.i, i32 noundef 1, i32 noundef %i.aag)
  %.sroa.044.4.vec.insert.i = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aad, i64 0
  %i.aah = or disjoint i32 %i.aag, 16777215       ; 2 uses
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.044.4.vec.insert.i, <2 x float> %.sroa.0554.4.vec.insert, i32 noundef 1, i32 noundef %i.aah)
  %i.aai = fadd float %i.zv, %i.zt
  %i.aaj = fsub float %i.aai, %i.zu               ; 2 uses
  %i.aak = fadd float %i.aaj, -1.000000e+00
  %.sroa.042.4.vec.insert.i = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aak, i64 0
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.042.4.vec.insert.i, <2 x float> %.sroa.046.4.vec.insert.i, i32 noundef 0, i32 noundef %i.aag)
  %.sroa.0.4.vec.insert.i539 = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aaj, i64 0
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.0.4.vec.insert.i539, <2 x float> %.sroa.0554.4.vec.insert, i32 noundef 0, i32 noundef %i.aah)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm, %bb.dj
  %.v469 = select i1 %i.no, float 5.500000e-01, float 4.000000e-01
  %i.aal = fmul float %i.ci, %.v469               ; 4 uses
  %i.aam = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.aal) ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %31, float noundef %i.aal, i32 noundef %i.su, i32 noundef %i.aam)
  %i.aan = fadd float %i.aal, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %31, float noundef %i.aan, i32 noundef %i.rx, i32 noundef %i.aam, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %31, float noundef %i.aal, i32 noundef %i.rw, i32 noundef %i.aam, float noundef 1.000000e+00)
  br i1 %spec.select473, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !190 ; 3 uses
  %i.aaq = fcmp ogt float %i.aap, 1.000000e+00
  %i.aar = select i1 %i.aaq, float 1.000000e+00, float %i.aap
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #41
  %i.aas = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.aat = fadd float %i.bw, %i.cu                ; 2 uses
  %i.aau = fadd float %i.cd, %i.aas
  store float %i.cu, ptr %40, align 8, !tbaa !194
  %i.aav = getelementptr inbounds nuw i8, ptr %40, i64 4
  store float %i.aas, ptr %i.aav, align 4, !tbaa !197
  %i.aaw = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  store float %i.aat, ptr %i.aaw, align 8, !tbaa !194
  %i.aax = getelementptr inbounds nuw i8, ptr %40, i64 12
  store float %i.aau, ptr %i.aax, align 4, !tbaa !197
  %.sroa.014.0.copyload = load <2 x float>, ptr %40, align 8 ; 2 uses
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.aaw, align 8, !tbaa !190
end_hunk_3
