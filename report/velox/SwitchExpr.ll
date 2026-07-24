inline.NumInlined: 1674
inline.NumDeleted: 904
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox4exec10SwitchExpr15evalSpecialFormERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !39
  %.not269 = icmp eq i64 %i.cu, 0
  br i1 %.not269, label %._crit_edge, label %.lr.ph267

.lr.ph267:                                        ; preds = %.loopexit246
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph267, %bb.bf
  %indvars.iv285 = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next286, %bb.bf ] ; 2 uses
  %i.dc = load ptr, ptr %13, align 8, !tbaa !217
  %.not.i100 = icmp eq ptr %i.dc, null
  br i1 %.not.i100, label %_ZN8facebook5velox4exec7EvalCtx13releaseVectorERSt10shared_ptrINS0_10BaseVectorEE.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = load ptr, ptr %2, align 8, !tbaa !161
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !239 ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.df, null
  br i1 %.not.i.i101, label %_ZN8facebook5velox4exec7EvalCtx13releaseVectorERSt10shared_ptrINS0_10BaseVectorEE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = invoke noundef zeroext i1 @_ZN8facebook5velox10VectorPool7releaseERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(1856) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZN8facebook5velox4exec7EvalCtx13releaseVectorERSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.al ; 0 uses

_ZN8facebook5velox4exec7EvalCtx13releaseVectorERSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.aj, %bb.ai, %bb.ak
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !205 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !229
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !238
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.am, label %._crit_edge

bb.al:                                            ; preds = %bb.ak, %bb.ao, %bb.am
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.am:                                            ; preds = %_ZN8facebook5velox4exec7EvalCtx13releaseVectorERSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.do = shl nuw nsw i64 %indvars.iv285, 1       ; 3 uses
  %i.dp = load ptr, ptr %i.cv, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !115
  invoke void @_ZN8facebook5velox4exec4Expr4evalERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %i.dr, ptr noundef nonnull align 8 dereferenceable(38) %i.dh, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef null)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.ds = load ptr, ptr %i.cw, align 8, !tbaa !240
  %.not = icmp eq ptr %i.ds, null
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !205 ; 2 uses
  br i1 %.not, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNK8facebook5velox4exec7EvalCtx14deselectErrorsERNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(38) %.pre)
          to label %bb.ap unwind label %bb.al

bb.ap:                                            ; preds = %bb.ao
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !205 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !229
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !238
  %i.dy = icmp slt i32 %i.dv, %i.dx
  br i1 %i.dy, label %bb.aq, label %._crit_edge

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.dz = phi ptr [ %i.dt, %bb.ap ], [ %.pre, %bb.an ]
  %i.ea = load ptr, ptr %13, align 8, !tbaa !217
  %i.eb = invoke noundef i32 @_ZN8facebook5velox4exec11getFlatBoolEPNS0_10BaseVectorERKNS0_17SelectivityVectorERNS1_7EvalCtxEPN5boost13intrusive_ptrINS0_6BufferEEESD_bPPKmSG_(ptr noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(38) %i.dz, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %i.cx, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noundef null)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  switch i32 %i.eb, label %bb.ax [
    i32 0, label %bb.at
    i32 2, label %bb.bf
    i32 1, label %bb.bf
  ]

bb.as:                                            ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i, %bb.be, %bb.bd, %bb.ax, %bb.at, %bb.aq
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.at:                                            ; preds = %bb.ar
  %i.ed = load ptr, ptr %i.cv, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.do
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !115
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !205
  invoke void @_ZN8facebook5velox4exec4Expr4evalERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %i.eg, ptr noundef nonnull align 8 dereferenceable(38) %i.eh, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %bb.au unwind label %bb.as

bb.au:                                            ; preds = %bb.at
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !205 ; 4 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !241 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !242 ; 6 uses
  %.not.i.i.i104 = icmp sgt i32 %i.el, 0
  br i1 %.not.i.i.i104, label %bb.av, label %_ZN8facebook5velox17SelectivityVector8clearAllEv.exit

bb.av:                                            ; preds = %bb.au
  %i.em = and i32 %i.el, 2147483584               ; 2 uses
  %.not3347.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.av
  %i.en = add nsw i32 %i.el, -64
  %i.eo = lshr i32 %i.en, 3
  %i.ep = and i32 %i.eo, 536870904
  %narrow.i = add nuw nsw i32 %i.ep, 8
  %i.eq = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i8 0, i64 %i.eq, i1 false), !tbaa !243
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.preheader.i, %bb.av
  %.not34.i.i.i = icmp eq i32 %i.el, %i.em
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox17SelectivityVector8clearAllEv.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i.i
  %i.er = lshr i32 %i.el, 6
  %i.es = and i32 %i.el, 63
  %i.et = zext nneg i32 %i.es to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.et
  %i.eu = zext nneg i32 %i.er to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eu ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !243
  %i.ex = and i64 %i.ew, %notmask.i37.i.i.i
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !243
  br label %_ZN8facebook5velox17SelectivityVector8clearAllEv.exit

_ZN8facebook5velox17SelectivityVector8clearAllEv.exit: ; preds = %bb.au, %._crit_edge.i.i.i, %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  store i32 0, ptr %i.ey, align 4, !tbaa !229
  br label %.sink.split

bb.ax:                                            ; preds = %bb.ar
  %i.ez = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !238
  %i.fc = invoke noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getEib(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.fb, i1 noundef zeroext false)
          to label %bb.ay unwind label %bb.as     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.fd = load ptr, ptr %i.v, align 8, !tbaa !205 ; 6 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !241 ; 9 uses
  %i.ff = ptrtoaddr ptr %i.fe to i64              ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 28 ; 2 uses
  %i.fh = load ptr, ptr %i.d, align 8, !tbaa !205 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !241 ; 5 uses
  %i.fj = ptrtoaddr ptr %i.fi to i64
  %i.fk = load ptr, ptr %i.b, align 8, !tbaa !244 ; 5 uses
  %i.fl = ptrtoaddr ptr %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !238 ; 5 uses
  %.not.i.i.i107 = icmp sgt i32 %i.fn, 0
  br i1 %.not.i.i.i107, label %bb.az, label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit

bb.az:                                            ; preds = %bb.ay
  %i.fo = and i32 %i.fn, 2147483584               ; 3 uses
  %.not3337.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not3337.i.i.i, label %._crit_edge.i.i.i108, label %iter.check

iter.check:                                       ; preds = %bb.az
  %i.fp = zext nneg i32 %i.fo to i64              ; 2 uses
  %i.fq = add nsw i64 %i.fp, -64                  ; 3 uses
  %i.fr = lshr exact i64 %i.fq, 6
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fq, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ft = sub i64 %i.fj, %i.ff
  %diff.check = icmp ugt i64 %i.ft, -128
  %i.fu = sub i64 %i.fl, %i.ff
  %diff.check379 = icmp ugt i64 %i.fu, -128
  %conflict.rdx = or i1 %diff.check, %diff.check379
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check380 = icmp ult i64 %i.fq, 960
  br i1 %min.iters.check380, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.fs, 12
  %n.vec = and i64 %i.fs, 576460752303423472      ; 4 uses
  %i.fv = shl i64 %n.vec, 6                       ; 2 uses
  %i.fw = or disjoint i64 %i.fv, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %16 = and i64 %index, 288230376151711728        ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %16 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 96
  %wide.load = load <4 x i64>, ptr %i.fx, align 8, !tbaa !243
  %wide.load381 = load <4 x i64>, ptr %i.fy, align 8, !tbaa !243
  %wide.load382 = load <4 x i64>, ptr %i.fz, align 8, !tbaa !243
  %wide.load383 = load <4 x i64>, ptr %i.ga, align 8, !tbaa !243
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %16 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 96
  %wide.load384 = load <4 x i64>, ptr %i.gb, align 8, !tbaa !243
  %wide.load385 = load <4 x i64>, ptr %i.gc, align 8, !tbaa !243
  %wide.load386 = load <4 x i64>, ptr %i.gd, align 8, !tbaa !243
  %wide.load387 = load <4 x i64>, ptr %i.ge, align 8, !tbaa !243
  %i.gf = and <4 x i64> %wide.load384, %wide.load
  %i.gg = and <4 x i64> %wide.load385, %wide.load381
  %i.gh = and <4 x i64> %wide.load386, %wide.load382
  %i.gi = and <4 x i64> %wide.load387, %wide.load383
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %16 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store <4 x i64> %i.gf, ptr %i.gj, align 8, !tbaa !243
  store <4 x i64> %i.gg, ptr %i.gk, align 8, !tbaa !243
  store <4 x i64> %i.gh, ptr %i.gl, align 8, !tbaa !243
  store <4 x i64> %i.gi, ptr %i.gm, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i108, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !248

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec390 = and i64 %i.fs, 576460752303423484   ; 3 uses
  %i.go = shl i64 %n.vec390, 6                    ; 2 uses
  %i.gp = or disjoint i64 %i.go, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index391 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next394, %vec.epilog.vector.body ] ; 2 uses
  %17 = and i64 %index391, 288230376151711740     ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %17
  %wide.load392 = load <4 x i64>, ptr %i.gq, align 8, !tbaa !243
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %17
  %wide.load393 = load <4 x i64>, ptr %i.gr, align 8, !tbaa !243
  %i.gs = and <4 x i64> %wide.load393, %wide.load392
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %17
  store <4 x i64> %i.gs, ptr %i.gt, align 8, !tbaa !243
  %index.next394 = add nuw i64 %index391, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next394, %n.vec390
  br i1 %i.gu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n395 = icmp eq i64 %i.fs, %n.vec390
  br i1 %cmp.n395, label %._crit_edge.i.i.i108, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv280.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.fv, %vec.epilog.iter.check ], [ %i.go, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.fw, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i108:                             ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.az
  %.not34.i.i.i109 = icmp eq i32 %i.fn, %i.fo
  br i1 %.not34.i.i.i109, label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, label %bb.ba

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.lr.ph.i.i.i ], [ %indvars.iv280.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.gv = lshr exact i64 %indvars.iv280, 6        ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !243
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gv
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !243
  %i.ha = and i64 %i.gz, %i.gx
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.gv
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !243
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.fp
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i108, !llvm.loop !250

bb.ba:                                            ; preds = %._crit_edge.i.i.i108
  %i.hc = lshr i32 %i.fn, 6
  %i.hd = and i32 %i.fn, 63
  %i.he = zext nneg i32 %i.hd to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.he      ; 2 uses
  %i.hf = xor i64 %notmask.i36.i.i.i, -1
  %i.hg = zext nneg i32 %i.hc to i64              ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !243
  %i.hj = and i64 %i.hi, %notmask.i36.i.i.i
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.hg
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !243
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.hg
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !243
  %i.ho = and i64 %i.hl, %i.hf
  %i.hp = and i64 %i.ho, %i.hn
  %i.hq = or disjoint i64 %i.hp, %i.hj
  store i64 %i.hq, ptr %i.hh, align 8, !tbaa !243
  br label %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit

_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit:  ; preds = %bb.ba, %._crit_edge.i.i.i108, %bb.ay
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !242 ; 6 uses
  %.not.i.i.i110 = icmp sgt i32 %i.hs, 0
  br i1 %.not.i.i.i110, label %bb.bb, label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit.thread

bb.bb:                                            ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit
  %i.ht = and i32 %i.hs, 2147483584               ; 4 uses
  %i.hu = zext nneg i32 %i.ht to i64
  %.not37.i.i.not.i371.not = icmp eq i32 %i.ht, 0
  br i1 %.not37.i.i.not.i371.not, label %.critedge.i.i.i, label %.lr.ph374

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph374
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i372, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.hu
  br i1 %.not37.i.i.not.i, label %.lr.ph374, label %.critedge.i.i.i, !llvm.loop !251

.lr.ph374:                                        ; preds = %bb.bb, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i372 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.bb ] ; 3 uses
  %i.hv = lshr exact i64 %indvars.iv.i372, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !243 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.hx, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !251

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.bb
  %.not38.i.i.i = icmp eq i32 %i.hs, %i.ht
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i.i
  %i.hy = lshr i32 %i.hs, 6
  %i.hz = and i32 %i.hs, 63
  %i.ia = zext nneg i32 %i.hz to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.ia
  %i.ib = xor i64 %notmask.i43.i.i.i, -1
  %i.ic = zext nneg i32 %i.hy to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !243
  %i.if = and i64 %i.ie, %i.ib                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.if, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit.thread, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit.thread: ; preds = %_ZN8facebook5velox4bits7andBitsEPmPKmS4_ii.exit, %.critedge.i.i.i, %bb.bc
  store i32 0, ptr %i.fg, align 4, !tbaa !229
  br label %.sink.split

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph374
  %i.ig = trunc nuw nsw i64 %indvars.iv.i372 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.bc
  %.sink67.i.i.i = phi i64 [ %i.if, %bb.bc ], [ %i.hx, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.ht, %bb.bc ], [ %i.ig, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.ih = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = or disjoint i32 %.sink65.i.i.i, %i.ii   ; 2 uses
  store i32 %i.ij, ptr %i.fg, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %i.fe, ptr %5, align 8, !tbaa !252
  store ptr %i.a, ptr %i.cy, align 8, !tbaa !255
  store i8 1, ptr %i.cz, align 8, !tbaa !256
  store ptr %i.fe, ptr %6, align 8, !tbaa !257
  store ptr %i.a, ptr %i.da, align 8, !tbaa !255
  store i8 1, ptr %i.db, align 8, !tbaa !259
  %i.ik = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ij, i32 noundef %i.hs, ptr noundef nonnull byval(%class.anon.157) align 8 %5, ptr noundef nonnull byval(%class.anon.159) align 8 %6)
          to label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit unwind label %bb.as ; 0 uses

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.il = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.im = add nsw i32 %i.il, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store i32 %i.im, ptr %i.in, align 8, !tbaa !238
  %i.io = getelementptr inbounds nuw i8, ptr %i.fd, i64 37
  store i8 0, ptr %i.io, align 1, !tbaa !200
  %.pre288 = load ptr, ptr %i.v, align 8, !tbaa !205 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre288, i64 28
  %.pre289 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !229
  %.phi.trans.insert290 = getelementptr inbounds nuw i8, ptr %.pre288, i64 32
  %.pre291 = load i32, ptr %.phi.trans.insert290, align 8, !tbaa !238
  %i.ip = icmp slt i32 %.pre289, %.pre291
  br i1 %i.ip, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.iq = load ptr, ptr %i.cv, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.do
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !115
  invoke void @_ZN8facebook5velox4exec4Expr4evalERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %i.it, ptr noundef nonnull align 8 dereferenceable(38) %.pre288, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %bb.be unwind label %bb.as

bb.be:                                            ; preds = %bb.bd
  %i.iu = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.iv = load ptr, ptr %i.v, align 8, !tbaa !205
  invoke void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.iu, ptr noundef nonnull align 8 dereferenceable(38) %i.iv)
          to label %bb.bf unwind label %bb.as

.sink.split:                                      ; preds = %_ZN8facebook5velox17SelectivityVector8clearAllEv.exit, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit.thread
  %.sink363 = phi ptr [ %i.fd, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit.thread ], [ %i.ei, %_ZN8facebook5velox17SelectivityVector8clearAllEv.exit ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sink363, i64 32
  store i32 0, ptr %i.iw, align 8, !tbaa !238
  %i.ix = getelementptr inbounds nuw i8, ptr %.sink363, i64 36
  store i16 256, ptr %i.ix, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.be, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit, %bb.ar, %bb.ar
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.iy = load i64, ptr %i.ct, align 8, !tbaa !39
  %i.iz = icmp ugt i64 %i.iy, %indvars.iv.next286
  br i1 %i.iz, label %bb.ai, label %._crit_edge, !llvm.loop !260

._crit_edge:                                      ; preds = %bb.bf, %_ZN8facebook5velox4exec7EvalCtx13releaseVectorERSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.ap, %.loopexit246
  %i.ja = load ptr, ptr %i.d, align 8, !tbaa !205 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !229
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !238
  %i.jf = icmp slt i32 %i.jc, %i.je
  br i1 %i.jf, label %bb.bg, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec10SwitchExpr15evalSpecialFormERKS1_RNS3_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvT_.exit"

bb.bg:                                            ; preds = %._crit_edge
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.jh = load i8, ptr %i.jg, align 8, !tbaa !108, !range !197, !noundef !198
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !129
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !115
  invoke void @_ZN8facebook5velox4exec4Expr4evalERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEPKNS1_7ExprSetE(ptr noundef nonnull align 8 dereferenceable(482) %i.jm, ptr noundef nonnull align 8 dereferenceable(38) %i.ja, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
          to label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec10SwitchExpr15evalSpecialFormERKS1_RNS3_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvT_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i.i.i.i.i
  %lpad.loopexit230 = landingpad { ptr, i32 }
end_hunk_0
